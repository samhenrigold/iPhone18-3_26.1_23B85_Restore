void sub_22FBE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22FD34(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "context is null");
  }

  if (sub_44FE3C(a2, 1935831628, &v18, a3) || sub_44FE3C(a2, 1935832908, &v17, a3))
  {
    __cxa_allocate_exception(0x10uLL);
    operator new();
  }

  v5 = v18.i32[1];
  v6 = v17.i32[1];
  if (!v18.i32[1] || v18.i32[1] != v17.i32[1])
  {
    v9 = sub_5544(26);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 136316162;
      *&v12[1] = "L71Device.cpp";
      *(&v12[3] + 2) = 51;
      HIWORD(v12[4]) = 2080;
      LOWORD(v12[3]) = 1024;
      *&v12[5] = "GetBufferSize";
      v13 = 1024;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s ERROR: Audio driver returned invalid buffer lengths (read=%u, write=%u)", v12, 0x28u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "Audio driver returned invalid buffer lengths");
  }

  return v18.u32[1];
}

uint64_t sub_230040(int a1, uint64_t a2, NSObject **a3, uint64_t a4, int a5, int a6, size_t size, void *buffer, uint64_t a9)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = -1;
  if (!a9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "context is null");
  }

  if (a6)
  {
    v9 = a4;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_2301D0;
    v14[3] = &unk_6BA0F8;
    v15 = size;
    v16 = a5;
    v14[6] = a2;
    v14[7] = a9;
    v17 = a6;
    v18 = a4;
    v14[4] = &v19;
    v14[5] = dispatch_data_create(buffer, size, 0, 0);
    v11 = *a3;
    if (v9)
    {
      dispatch_sync(v11, v14);
      v9 = *(v20 + 6);
    }

    else
    {
      dispatch_async(v11, v14);
      *(v20 + 6) = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v19, 8);
  return v9;
}

void sub_2301A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2301D0(uint64_t a1)
{
  v12 = 0;
  buffer_ptr = 0;
  v2 = dispatch_data_create_map(*(a1 + 40), &buffer_ptr, &v12);
  if (v12 >= *(a1 + 64))
  {
    v7 = sub_44F7FC(*(a1 + 48), 0x73627761u, 0, 0, 4, (a1 + 68), *(a1 + 56));
    if (!v7)
    {
      v7 = sub_44F7FC(*(a1 + 48), 0x7362776Cu, 0, 0, 4, (a1 + 72), *(a1 + 56));
      if (!v7)
      {
        *buf = 0;
        v7 = sub_44F7FC(*(a1 + 48), 0x63616E63u, 4, buf, *(a1 + 64), buffer_ptr, *(a1 + 56));
      }
    }

    v6 = v7;
  }

  else
  {
    v3 = sub_5544(26);
    v4 = *v3;
    if (*v3 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 64);
      *buf = 136316162;
      v15 = "L71Device.cpp";
      v16 = 1024;
      v17 = 75;
      v18 = 2080;
      v19 = "SetRegister_block_invoke";
      v20 = 2048;
      *v21 = v12;
      *&v21[8] = 1024;
      v22[0] = v5;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s Invalid data buffer size (%lu != %u)", buf, 0x2Cu);
    }

    v6 = -2;
  }

  dispatch_release(v2);
  dispatch_release(*(a1 + 40));
  if (v6)
  {
    v8 = sub_5544(26);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *(a1 + 68);
        v11 = *(a1 + 72);
        *buf = 136316418;
        v15 = "L71Device.cpp";
        v16 = 1024;
        v17 = 89;
        v18 = 2080;
        v19 = "SetRegister_block_invoke";
        v20 = 1024;
        *v21 = v10;
        *&v21[4] = 1024;
        *&v21[6] = v11;
        LOWORD(v22[0]) = 1024;
        *(v22 + 2) = v6;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s failed, addr=0x%x, length=0x%x, status = 0x%x", buf, 0x2Eu);
      }
    }
  }

  if (*(a1 + 76) == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = v6;
  }
}

uint64_t sub_230434(uint64_t a1, uint64_t a2, NSObject **a3, int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = -1;
  if (!a8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "context is null");
  }

  v8 = a5;
  if (a5)
  {
    v10 = *a3;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_23064C;
    v16[3] = &unk_6BA148;
    v16[4] = &v20;
    v16[5] = a2;
    v17 = a4;
    v18 = a5;
    v19 = a6;
    v16[6] = a8;
    v16[7] = a7;
    dispatch_sync(v10, v16);
    if (*(v21 + 6))
    {
      v11 = sub_5544(26);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
        {
          v13 = *(v21 + 6);
          *buf = 136316418;
          v25 = "L71Device.cpp";
          v26 = 1024;
          v27 = 128;
          v28 = 2080;
          v29 = "GetRegister";
          v30 = 1024;
          v31 = a4;
          v32 = 1024;
          v33 = v8;
          v34 = 1024;
          v35 = v13;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d L71Device::%s failed, addr=0x%x, length=0x%x, status = 0x%x", buf, 0x2Eu);
        }
      }
    }

    v8 = *(v21 + 6);
  }

  _Block_object_dispose(&v20, 8);
  return v8;
}

void sub_230620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_23064C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_2306D8;
  v3[3] = &unk_6BA120;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v1 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = v1;
  return sub_138DB0(v3);
}

uint64_t sub_2306D8(uint64_t a1)
{
  result = sub_44F7FC(*(a1 + 40), 0x73627261u, 0, 0, 4, (a1 + 64), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!result)
  {
    result = sub_44F7FC(*(a1 + 40), 0x7362726Cu, 0, 0, 4, (a1 + 68), *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (!result)
    {
      v3 = *(a1 + 72);
      v4 = 0;
      result = sub_44FB2C(*(a1 + 40), 0x63616E63u, 4, &v4, &v3, *(a1 + 56), *(a1 + 48));
      *(*(*(a1 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

void sub_2307C8(uint64_t a1)
{
  sub_1D8A20(a1);

  operator delete();
}

void sub_230804(void *a1)
{
  *a1 = off_6BA328;
  sub_230874(a1[6]);
  sub_4E0BC(a1 + 1);

  operator delete();
}

void sub_230874(void *a1)
{
  if (a1)
  {
    sub_230874(*a1);
    sub_230874(a1[1]);
    sub_2308C8((a1 + 4));

    operator delete(a1);
  }
}

void sub_2308C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_23093C(uint64_t a1)
{
  *a1 = off_6BA328;
  sub_230874(*(a1 + 48));
  sub_4E0BC((a1 + 8));
  return a1;
}

uint64_t sub_23098C(uint64_t a1, void *a2)
{
  sub_27A4();
  v4 = atomic_load(&qword_6E9558);
  if (v4 != pthread_self())
  {
    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11)
    {
      if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
      {
        *v16 = 136315394;
        *&v16[4] = "VirtualAudio_PortManager.cpp";
        *&v16[12] = 1024;
        *&v16[14] = 216;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: routing mutex not held", v16, 0x12u);
      }
    }
  }

  if ((*(*a2 + 152))(a2))
  {
    memset(v16, 0, sizeof(v16));
    strcpy(v17, "cwdv");
    v17[8] = 0;
    v18 = 3;
    v20[0] = 0;
    v20[1] = 0;
    v19 = v20;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v21 = 44739240;
    if (sub_9DE4C(a1, a2, v16))
    {
      v13 = sub_5544(14);
      v14 = *v13;
      if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v26 = "VirtualAudio_PortManager.cpp";
        v27 = 1024;
        v28 = 228;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Precondition failure.");
    }

    if (!AudioObjectCreate())
    {
      v9 = a2[11];
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    v5 = sub_5544(14);
    v6 = *v5;
    if (*v5 && os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "VirtualAudio_PortManager.cpp";
      v27 = 1024;
      v28 = 237;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theResult): error creating virtual audio port object", buf, 0x12u);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v22);
    }

    sub_477A0(v20[0]);
    if (*v16)
    {
      *&v16[8] = *v16;
      operator delete(*v16);
    }
  }

  else
  {
    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7 && os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "VirtualAudio_PortManager.cpp";
      *&v16[12] = 1024;
      *&v16[14] = 220;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: specified port is not connected", v16, 0x12u);
    }
  }

  return 0;
}

void sub_2316A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  sub_46934(&a15);
  _Unwind_Resume(a1);
}

void sub_231844(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_869CC(a1, a2);
  if (a1 + 1 != v3)
  {
    v4 = v3;
    v5 = v3[1];
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
      v7 = v3;
      do
      {
        v6 = v7[2];
        v8 = *v6 == v7;
        v7 = v6;
      }

      while (!v8);
    }

    if (*a1 == v3)
    {
      *a1 = v6;
    }

    v9 = a1[1];
    a1[2] = (a1[2] - 1);
    sub_75234(v9, v4);
    sub_2308C8((v4 + 4));

    operator delete(v4);
  }
}

void sub_231984(void *a1, uint64_t **a2)
{
  if (!a1[2])
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13)
    {
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 381;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: handed empty port list", buf, 0x12u);
      }
    }
  }

  if (!a2)
  {
    v15 = sub_5544(14);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 382;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: handed NULL client data", buf, 0x12u);
      }
    }
  }

  v18 = 0uLL;
  v19 = 0;
  sub_27A4();
  v17 = (*(qword_6E94F8 + 16))();
  v4 = a1[1];
  if (v4 != a1)
  {
    v5 = 0;
    while (1)
    {
      v6 = v4[3];
      if (!v6)
      {
        break;
      }

      v7 = std::__shared_weak_count::lock(v6);
      if (!v7)
      {
        goto LABEL_12;
      }

      v8 = v4[2];
      if (!v8)
      {
        goto LABEL_12;
      }

      if ((*(*v8 + 152))(v4[2]))
      {
        memset(buf, 0, sizeof(buf));
        strcpy(v21, "cwdv");
        v21[8] = 0;
        v22 = 3;
        v24[0] = 0;
        v24[1] = 0;
        v23 = v24;
        v27 = 0;
        v28 = 0;
        __p = 0;
        v25 = 44739240;
        if (sub_9DE4C(a2, v8, buf))
        {
          v9 = 0;
        }

        else
        {
          v9 = sub_23098C(a2, v8);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        sub_477A0(v24[0]);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else
      {
        v9 = sub_231DE8(a2, v8, &v18);
      }

      v5 |= v9 != 0;
LABEL_24:
      sub_1A8C0(v7);
LABEL_25:
      v4 = v4[1];
      if (v4 == a1)
      {
        goto LABEL_28;
      }
    }

    v7 = 0;
LABEL_12:
    v10 = sub_5544(3);
    v11 = *v10;
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_PortManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 404;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Expired port in port update list.", buf, 0x12u);
    }

    if (!v7)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v5 = 0;
LABEL_28:
  sub_218AD4(&v18);
  sub_210C50(&v17);
  *buf = &v18;
  sub_218D2C(buf);
  if (v5)
  {
    sub_49C48(&v18);
    strcpy(buf, "strpbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    (*(*a2[4] + 88))(a2[4], 1, buf, 1);
    v12 = v18.n128_u64[0];
    v18.n128_u64[0] = 0;
    if (v12)
    {
      sub_1DB63C(v12);
      operator delete();
    }
  }
}

void sub_231D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1DB848(va, 0);
  _Unwind_Resume(a1);
}

NSObject *sub_231DE8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  sub_27A4();
  v6 = atomic_load(&qword_6E9558);
  if (v6 != pthread_self())
  {
    v46 = sub_5544(14);
    v47 = *v46;
    if (*v46)
    {
      if (os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 289;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: routing mutex not held", buf, 0x12u);
      }
    }
  }

  v54 = 0;
  v55 = 0;
  v7 = *(a2 + 88);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    v9 = v8;
    if (v8)
    {
      v10 = *(a2 + 80);
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v54 = v10;
      v55 = v8;
      sub_1A8C0(v8);
    }

    else
    {
      v54 = 0;
      v55 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_869CC((a1 + 5), &v54);
  if (a1 + 6 == v11)
  {
    v15 = sub_5544(3);
    v16 = *v15;
    if (*v15)
    {
      if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 298;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d could not find virtual audio port for specified port", buf, 0x12u);
      }

      v16 = 0;
    }
  }

  else
  {
    v12 = v11[6];
    v11[6] = 0;
    v53 = *(v12 + 2);
    sub_231844(a1 + 5, &v54);
    if (sub_7E96C())
    {
      v13 = (a1 + 1);
      v14 = a1[2];
      if (v14 != (a1 + 1))
      {
        while (*(v14 + 4) != v53)
        {
          v14 = v14[1];
          if (v14 == v13)
          {
            goto LABEL_19;
          }
        }
      }

      if (v14 != v13)
      {
        v18 = *v14;
        v17 = v14[1];
        *(v18 + 8) = v17;
        *v17 = v18;
        a1[3] = (a1[3] - 1);
        operator delete(v14);
      }
    }

LABEL_19:
    (*(*v12 + 120))(v12);
    sub_49C48(buf);
    v19 = AudioObjectsPublishedAndDied();
    v20 = *buf;
    *buf = 0;
    if (v20)
    {
      sub_1DB63C(v20);
      operator delete();
    }

    if (v19)
    {
      v21 = sub_5544(14);
      v22 = *v21;
      if (*v21)
      {
        if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_PortManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 332;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE (theResult): got an error telling the HAL that a port went away", buf, 0x12u);
        }
      }
    }

    (*(*v12 + 112))(v51, v12);
    v23 = sub_5544(3);
    v24 = sub_5544(16);
    v25 = 0;
    *buf = 0x100000002;
    v26 = *(v23 + 8);
    while (1)
    {
      v27 = *&buf[v25];
      if (((v26 & v27) != 0) != ((*(v24 + 8) & v27) != 0))
      {
        break;
      }

      v25 += 4;
      if (v25 == 8)
      {
        if ((v26 & 1) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_33;
      }
    }

    if ((v26 & v27) == 0)
    {
      v23 = v24;
    }

    if (*(v23 + 8))
    {
LABEL_33:
      v28 = *v23;
      if (*v23 && os_log_type_enabled(*v23, OS_LOG_TYPE_DEBUG))
      {
        v29 = v12[12];
        v48[0] = v12[11];
        v48[1] = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_11AB44(__p, v48);
        if (v50 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        *buf = 136315906;
        *&buf[4] = "VirtualAudio_PortManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 338;
        *&buf[18] = 2048;
        *&buf[20] = v12;
        *&buf[28] = 2080;
        *&buf[30] = v30;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d Queueing VirtualAudio_Port %p (%s) for deletion.", buf, 0x26u);
        if (v50 < 0)
        {
          operator delete(__p[0]);
        }

        if (v29)
        {
          std::__shared_weak_count::__release_weak(v29);
        }
      }
    }

LABEL_44:
    v32 = *(a3 + 8);
    v31 = *(a3 + 16);
    if (v32 >= v31)
    {
      v34 = *a3;
      v35 = v32 - *a3;
      v36 = v35 >> 3;
      v37 = (v35 >> 3) + 1;
      if (v37 >> 61)
      {
        sub_189A00();
      }

      v38 = v31 - v34;
      if (v38 >> 2 > v37)
      {
        v37 = v38 >> 2;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v37;
      }

      *&buf[32] = a3;
      if (v39)
      {
        sub_1DC9A4(v39);
      }

      *(8 * v36) = v12;
      v33 = 8 * v36 + 8;
      memcpy(0, v34, v35);
      v40 = *a3;
      *a3 = 0;
      *(a3 + 8) = v33;
      v41 = *(a3 + 16);
      *(a3 + 16) = 0;
      *&buf[16] = v40;
      *&buf[24] = v41;
      *buf = v40;
      *&buf[8] = v40;
      sub_218DD4(buf);
    }

    else
    {
      *v32 = v12;
      v33 = (v32 + 1);
    }

    *(a3 + 8) = v33;
    if (v19)
    {
      v16 = 0;
    }

    else
    {
      v16 = v53;
    }

    v42 = sub_5544(3);
    v43 = *v42;
    if (*v42 && os_log_type_enabled(*v42, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v51;
      if (v52 < 0)
      {
        v44 = v51[0];
      }

      *buf = 136315650;
      *&buf[4] = "VirtualAudio_PortManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 349;
      *&buf[18] = 2080;
      *&buf[20] = v44;
      _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Queued for deletion and unpublished port: %s.", buf, 0x1Cu);
    }

    if (v52 < 0)
    {
      operator delete(v51[0]);
    }

    v9 = v55;
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  return v16;
}

void sub_2323F0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24)
{
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    (*(*v24 + 8))(v24, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2324D4(uint64_t a1, uint64_t a2)
{
  sub_27A4();
  v14 = (*(qword_6E94F8 + 16))();
  v4 = *(a1 + 40);
  v5 = (a1 + 48);
  if (v4 == (a1 + 48))
  {
    v6 = 0;
  }

  else
  {
    LODWORD(v6) = 0;
    do
    {
      sub_88A00(&v25, v4 + 4, "", 141);
      v7 = v25;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      sub_46980(&v15, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
      v18 = *(a2 + 24);
      v19 = *(a2 + 32);
      v20 = *(a2 + 40);
      sub_44E44(v21, (a2 + 48));
      v8 = *(a2 + 72);
      v22 = v8;
      if (*(a2 + 103) < 0)
      {
        sub_54A0(&__p, *(a2 + 80), *(a2 + 88));
        v8 = v22;
      }

      else
      {
        __p = *(a2 + 80);
        v24 = *(a2 + 96);
      }

      v22 = v8 & 0xFFFFFFFC;
      v9 = sub_46398(v7, &v15);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p);
      }

      sub_477A0(v21[1]);
      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      if (v26)
      {
        sub_1A8C0(v26);
      }

      v10 = v4[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v4[2];
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v6 = (v6 + v9);
      v4 = v11;
    }

    while (v11 != v5);
  }

  sub_210C50(&v14);
  return v6;
}

void sub_232694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_477A0(a20);
  if (__p)
  {
    a14 = __p;
    operator delete(__p);
  }

  v22 = *(v20 - 72);
  if (v22)
  {
    sub_1A8C0(v22);
  }

  sub_210C50(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_2326F4(uint64_t a1)
{
  sub_27A4();
  v4 = (*(qword_6E94F8 + 16))();
  if (*(a1 + 24))
  {
    v2 = *(*(a1 + 8) + 16);
  }

  else
  {
    v2 = 0;
  }

  sub_210C50(&v4);
  return v2;
}

_BYTE *sub_232774(void *a1, uint64_t a2, int a3)
{
  sub_27A4();
  v9 = (*(qword_6E94F8 + 16))();
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  for (i = *(a2 + 16); i != a2 + 8; i = *(i + 8))
  {
    if (a3 == 1735159650 || *(i + 20) == a3)
    {
      sub_1D7C28(1uLL);
    }
  }

  return sub_210C50(&v9);
}

void sub_2328EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (v14)
  {
    *(v13 + 8) = v14;
    operator delete(v14);
  }

  sub_210C50(&a13);
  _Unwind_Resume(a1);
}

void sub_232914(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v26 = sub_5544(14);
    if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
    {
      v73.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v73.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p, &v73);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v28 = sub_5544(14);
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      v73.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v73.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p, &v73);
    }

    v29 = __cxa_allocate_exception(0x10uLL);
    *v29 = &off_6DDDD0;
    v29[2] = 561211770;
  }

  if (!a6)
  {
    v30 = sub_5544(14);
    if (*v30 && os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      v73.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v73.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p, &v73);
    }

    v31 = __cxa_allocate_exception(0x10uLL);
    *v31 = &off_6DDDD0;
    v31[2] = 561211770;
  }

  if (((*(*a1 + 56))(a1, a2) & 1) == 0)
  {
    v32 = sub_5544(14);
    if (*v32 && os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
    {
      v73.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v73.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p, &v73);
    }

    v33 = __cxa_allocate_exception(0x10uLL);
    *v33 = &off_6DDDD0;
    v33[2] = 1852797029;
  }

  if (*a2 == 1936024431)
  {
    sub_10FD4(&cf, *a6);
    v12 = sub_5544(35);
    v13 = *v12;
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_AudioSession.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 187;
      v71 = 2112;
      v72 = cf;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Setting session configuration: %@.", buf, 0x1Cu);
    }

    v14 = cf;
    if (cf)
    {
      CFRetain(cf);
      *buf = v14;
      sub_A3D70(__p, buf);
      CFRelease(v14);
    }

    else
    {
      v66 = 0u;
      v67 = 0u;
      *&v65[8] = 0u;
      v63 = 1065353216;
      v60 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      *__p = 0u;
      v40 = 0u;
      DWORD2(v60) = 1065353216;
      v61 = 0u;
      v62 = 0u;
      v64 = 0u;
      *v65 = 0u;
      *&v65[16] = 1065353216;
    }

    if (!sub_2335B8(a1 + 88, __p))
    {
      sub_233C40(a1 + 88, __p);
      sub_A4E68(buf, a1 + 88);
      v69[0] = v69;
      v69[1] = v69;
      v69[2] = 0;
      sub_A4DBC(0, buf);
    }

    v15 = sub_5544(35);
    v16 = *v15;
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "VirtualAudio_AudioSession.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 195;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Redundant session configuration update", buf, 0x12u);
    }

    sub_3B49C4(v69, *(a1 + 16));
    if (_os_feature_enabled_impl())
    {
      sub_2337D8(&v38, *(a1 + 80), v69);
    }

    else
    {
      sub_233BF4(&v73, v69);
      *buf = &v73;
      *&buf[8] = 1;
      v38 = sub_69CE8(buf);
      if (v73.__r_.__value_.__l.__size_)
      {
        CFRelease(v73.__r_.__value_.__l.__size_);
      }

      if (v73.__r_.__value_.__r.__words[0])
      {
        CFRelease(v73.__r_.__value_.__l.__data_);
      }
    }

    if (v69[0])
    {
      CFRelease(v69[0]);
    }

    v17 = v38;
    if (!v38)
    {
      v34 = sub_5544(14);
      v35 = *v34;
      if (*v34 && os_log_type_enabled(*v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_AudioSession.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 211;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION FAILURE (std::logic_error).", buf, 0x12u);
      }

      v36 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v36, "Postcondition failure.");
    }

    v18 = sub_5544(35);
    v19 = *v18;
    if (*v18 && os_log_type_enabled(*v18, OS_LOG_TYPE_INFO))
    {
      sub_B1190(&v73, v17);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v73;
      }

      else
      {
        v20 = v73.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "VirtualAudio_AudioSession.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 213;
      v71 = 2080;
      v72 = v20;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%25s:%-5d Full session route description dictionary: %s.", buf, 0x1Cu);
      if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v73.__r_.__value_.__l.__data_);
      }

      v17 = v38;
      if (!v38)
      {
        v37 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v37, "Could not construct");
      }
    }

    sub_480F4(buf, v17, "active devices");
    if (buf[8] == 1)
    {
      v21 = *buf;
      if (*buf)
      {
        CFRetain(*buf);
        v73.__r_.__value_.__r.__words[0] = v21;
        CFRelease(v21);
        goto LABEL_42;
      }
    }

    else
    {
      v21 = 0;
    }

    v73.__r_.__value_.__r.__words[0] = 0;
LABEL_42:
    sub_2337D8(v69, *(a1 + 80), &v73);
    v22 = sub_5544(35);
    v23 = *v22;
    if (*v22 && os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_AudioSession.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 220;
      v71 = 2112;
      v72 = v69[0];
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Completed session configuration: %@.", buf, 0x1Cu);
    }

    *(a6 + 24) = 8;
    if (_os_feature_enabled_impl())
    {
      **(a6 + 16) = v69[0];
    }

    else
    {
      v24 = v38;
      v38 = 0;
      v25 = v69[0];
      **(a6 + 16) = v24;
      if (v25)
      {
        CFRelease(v25);
      }
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    sub_A5114(__p);
    if (cf)
    {
      CFRelease(cf);
    }

    return;
  }

  sub_20BAC(a1, a2, a3, a4, a5, a6);
}

void sub_233498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_4BA7C(&a10);
  sub_A5114(&a11);
  sub_4BA7C(&a65);
  _Unwind_Resume(a1);
}

BOOL sub_2335B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  v4 = *(a1 + 119);
  if (v4 >= 0)
  {
    v5 = *(a1 + 119);
  }

  else
  {
    v5 = *(a1 + 104);
  }

  v6 = *(a2 + 119);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 104);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 96) : *(a1 + 96);
  v9 = v7 >= 0 ? (a2 + 96) : *(a2 + 96);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 143);
  if (v10 >= 0)
  {
    v11 = *(a1 + 143);
  }

  else
  {
    v11 = *(a1 + 128);
  }

  v12 = *(a2 + 143);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 128);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? (a1 + 120) : *(a1 + 120);
  v15 = v13 >= 0 ? (a2 + 120) : *(a2 + 120);
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = *(a1 + 167);
  if (v16 >= 0)
  {
    v17 = *(a1 + 167);
  }

  else
  {
    v17 = *(a1 + 152);
  }

  v18 = *(a2 + 167);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 152);
  }

  if (v17 != v18)
  {
    return 0;
  }

  v20 = v16 >= 0 ? (a1 + 144) : *(a1 + 144);
  v21 = v19 >= 0 ? (a2 + 144) : *(a2 + 144);
  if (memcmp(v20, v21, v17))
  {
    return 0;
  }

  v22 = *(a1 + 168);
  v23 = *(a1 + 176) - v22;
  v24 = *(a2 + 168);
  if (v23 != *(a2 + 176) - v24)
  {
    return 0;
  }

  if (memcmp(v22, v24, v23))
  {
    return 0;
  }

  v25 = *(a1 + 192);
  v26 = *(a1 + 200) - v25;
  v27 = *(a2 + 192);
  if (v26 != *(a2 + 200) - v27 || memcmp(v25, v27, v26) || *(a1 + 216) != *(a2 + 216) || *(a1 + 217) != *(a2 + 217))
  {
    return 0;
  }

  v28 = *(a1 + 252);
  v29 = *(a2 + 252);
  if (v28 == v29 && *(a1 + 252))
  {
    v28 = *(a1 + 248);
    v29 = *(a2 + 248);
  }

  if (v28 != v29 || *(a1 + 256) != *(a2 + 256))
  {
    return 0;
  }

  result = sub_233F50(a1 + 264, a2 + 264);
  if (result)
  {
    v31 = *(a2 + 456);
    v32 = *(a1 + 456);
    result = v32 == v31;
    if (v32 == v31)
    {
      if (*(a1 + 456))
      {

        return sub_1DC61C((a1 + 432), (a2 + 432));
      }
    }
  }

  return result;
}

void sub_2337D8(CFDictionaryRef *a1, int a2, CFArrayRef *a3)
{
  memset(v25, 0, sizeof(v25));
  v3 = *a3;
  if (*a3)
  {
    Count = CFArrayGetCount(*a3);
    v7 = Count;
    v8 = *a3;
    if (*a3)
    {
      v23 = CFArrayGetCount(*a3);
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v23 = 0;
      if (!Count)
      {
        goto LABEL_23;
      }
    }

    v9 = 0;
    do
    {
      if (v3 == v8 && v9 == v23)
      {
        break;
      }

      sub_233E00(&cf, v3, v9);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (sub_47EF0(cf, "audio session ids"))
      {
        if (!cf)
        {
          v20 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v20, "Could not construct");
        }

        v10 = sub_1129C(cf, "audio session ids");
        if (!v10)
        {
          v19 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v19, "Could not find item");
        }

        v11 = v10;
        CFRetain(v10);
        theArray[0] = v11;
        v12 = CFGetTypeID(v11);
        if (v12 != CFArrayGetTypeID())
        {
          v21 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v21, "Could not construct");
        }

        v13 = CFArrayGetCount(theArray[0]);
        v14 = CFArrayGetCount(theArray[0]);
        v15 = 0;
        while (v13 != v15 && v14 != v15)
        {
          v16 = sub_233EB4(theArray[0], v15++);
          if (v16 == a2)
          {
            sub_98AA0(v25, &cf);
            break;
          }
        }

        CFRelease(theArray[0]);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      ++v9;
    }

    while (v9 != v7);
  }

LABEL_23:
  v17 = sub_76110(v25);
  sub_88CE8(&cf, "active devices");
  CFRetain(v17);
  v27 = v17;
  theArray[0] = &cf;
  theArray[1] = (&dword_0 + 1);
  *a1 = sub_69CE8(theArray);
  if (v27)
  {
    CFRelease(v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v17);
  theArray[0] = v25;
  sub_761AC(theArray);
}

void sub_233B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_233BF4(uint64_t a1, const void **a2)
{
  sub_88CE8(a1, "active devices");
  v4 = *a2;
  if (v4)
  {
    CFRetain(v4);
  }

  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_233C40(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_D03B8((a1 + 8), *(a2 + 8), *(a2 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    sub_D03B8((a1 + 32), *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    sub_48C94((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  }

  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 84) = v4;
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  std::string::operator=((a1 + 144), (a2 + 144));
  if (a1 == a2)
  {
    *(a1 + 216) = *(a2 + 216);
    v6 = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 248) = v6;
  }

  else
  {
    sub_16B928((a1 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 2);
    sub_16B928((a1 + 192), *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 2);
    *(a1 + 216) = *(a2 + 216);
    sub_48C94((a1 + 224), *(a2 + 224), *(a2 + 232), (*(a2 + 232) - *(a2 + 224)) >> 3);
    v5 = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 248) = v5;
    sub_D03B8((a1 + 264), *(a2 + 264), *(a2 + 272), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 272) - *(a2 + 264)) >> 3));
    sub_D03B8((a1 + 288), *(a2 + 288), *(a2 + 296), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 296) - *(a2 + 288)) >> 3));
    *(a1 + 344) = *(a2 + 344);
    sub_D055C((a1 + 312), *(a2 + 328));
    *(a1 + 384) = *(a2 + 384);
    sub_D055C((a1 + 352), *(a2 + 368));
    *(a1 + 424) = *(a2 + 424);
    sub_D055C((a1 + 392), *(a2 + 408));
  }

  sub_1789EC((a1 + 432), (a2 + 432));
  return a1;
}

void *sub_233E00(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  return sub_10FD4(a1, ValueAtIndex);
}

uint64_t sub_233EB4(const __CFArray *a1, unint64_t a2)
{
  if (CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DC894(exception);
  }

  return sub_4A8F8(ValueAtIndex);
}

BOOL sub_233F50(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if ((v3 - *a1) != (*(a2 + 8) - *a2))
  {
    return 0;
  }

  while (v2 != v3)
  {
    result = sub_1DC61C(v2, v4);
    if (!result)
    {
      return result;
    }

    v2 += 3;
    v4 += 3;
  }

  v10 = a1 + 24;
  v8 = *(a1 + 24);
  v9 = *(v10 + 8);
  v12 = a2 + 24;
  v11 = *(a2 + 24);
  if (v9 - v8 != *(v12 + 8) - v11)
  {
    return 0;
  }

  if (v8 == v9)
  {
    return 1;
  }

  do
  {
    result = sub_1DC61C(v8, v11);
    if (!result)
    {
      break;
    }

    v8 += 24;
    v11 += 3;
  }

  while (v8 != v9);
  return result;
}

void sub_234010(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int *a5, CFDictionaryRef *a6)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v31 = sub_5544(14);
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      valuePtr = *a2;
      LODWORD(v43) = a2[2];
      sub_22CE0(&v47, &valuePtr);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v33 = sub_5544(14);
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      valuePtr = *a2;
      LODWORD(v43) = a2[2];
      sub_22CE0(&v47, &valuePtr);
    }

    v34 = __cxa_allocate_exception(0x10uLL);
    *v34 = &off_6DDDD0;
    v34[2] = 561211770;
  }

  if (!a6)
  {
    v35 = sub_5544(14);
    if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
    {
      valuePtr = *a2;
      LODWORD(v43) = a2[2];
      sub_22CE0(&v47, &valuePtr);
    }

    v36 = __cxa_allocate_exception(0x10uLL);
    *v36 = &off_6DDDD0;
    v36[2] = 561211770;
  }

  v12 = *a2;
  if (*a2 == 1936024431)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    sub_88CE8(v44, "session id");
    LODWORD(valuePtr) = *(a1 + 80);
    *&v44[8] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!*&v44[8])
    {
      v39 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v39, "Could not construct");
    }

    sub_88E68(&v47, v44);
    if (*&v44[8])
    {
      CFRelease(*&v44[8]);
    }

    if (*v44)
    {
      CFRelease(*v44);
    }

    sub_A4E28(v44, a1 + 88);
    if (SBYTE3(v46) >= 0)
    {
      v14 = v44;
    }

    else
    {
      v14 = *v44;
    }

    if (v14)
    {
      if (SBYTE3(v46) >= 0)
      {
        v15 = BYTE3(v46);
      }

      else
      {
        v15 = *&v44[8];
      }

      v41 = CFStringCreateWithBytes(0, v14, v15, 0x8000100u, 0);
      if (!v41)
      {
        v16 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v16, "Could not construct");
      }
    }

    else
    {
      v41 = 0;
    }

    sub_88CE8(&valuePtr, "bundle id");
    if (v41)
    {
      CFRetain(v41);
    }

    v43 = v41;
    sub_88E68(&v47, &valuePtr);
    if (v43)
    {
      CFRelease(v43);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (SBYTE3(v46) < 0)
    {
      operator delete(*v44);
    }

    sub_AEE74(v44, a1 + 88);
    if (SBYTE3(v46) >= 0)
    {
      v21 = v44;
    }

    else
    {
      v21 = *v44;
    }

    if (v21)
    {
      if (SBYTE3(v46) >= 0)
      {
        v22 = BYTE3(v46);
      }

      else
      {
        v22 = *&v44[8];
      }

      v41 = CFStringCreateWithBytes(0, v21, v22, 0x8000100u, 0);
      if (!v41)
      {
        v23 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v23, "Could not construct");
      }
    }

    else
    {
      v41 = 0;
    }

    sub_88CE8(&valuePtr, "category");
    if (v41)
    {
      CFRetain(v41);
    }

    v43 = v41;
    sub_88E68(&v47, &valuePtr);
    if (v43)
    {
      CFRelease(v43);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (SBYTE3(v46) < 0)
    {
      operator delete(*v44);
    }

    sub_A5750(v44, a1 + 88);
    if (SBYTE3(v46) >= 0)
    {
      v24 = v44;
    }

    else
    {
      v24 = *v44;
    }

    if (v24)
    {
      if (SBYTE3(v46) >= 0)
      {
        v25 = BYTE3(v46);
      }

      else
      {
        v25 = *&v44[8];
      }

      v41 = CFStringCreateWithBytes(0, v24, v25, 0x8000100u, 0);
      if (!v41)
      {
        v26 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v26, "Could not construct");
      }
    }

    else
    {
      v41 = 0;
    }

    sub_88CE8(&valuePtr, "mode");
    if (v41)
    {
      CFRetain(v41);
    }

    v43 = v41;
    sub_88E68(&v47, &valuePtr);
    if (v43)
    {
      CFRelease(v43);
    }

    if (valuePtr)
    {
      CFRelease(valuePtr);
    }

    if (v41)
    {
      CFRelease(v41);
    }

    if (SBYTE3(v46) < 0)
    {
      operator delete(*v44);
    }

    v27 = *(a1 + 336);
    if ((v27 & 0x100000000) != 0)
    {
      sub_88CE8(v44, "isolated use case ID");
      LODWORD(valuePtr) = v27;
      *&v44[8] = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      if (!*&v44[8])
      {
        v40 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v40, "Could not construct");
      }

      sub_88E68(&v47, v44);
      if (*&v44[8])
      {
        CFRelease(*&v44[8]);
      }

      if (*v44)
      {
        CFRelease(*v44);
      }
    }

    v28 = sub_65448(&v47);
    valuePtr = v28;
    v29 = sub_5544(35);
    v30 = *v29;
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_INFO))
    {
      *v44 = 136315650;
      *&v44[4] = "VirtualAudio_AudioSession.cpp";
      *&v44[12] = 1024;
      *&v44[14] = 143;
      v45 = 2112;
      v46 = v28;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%25s:%-5d Returning session information dictionary: %@.", v44, 0x1Cu);
    }

    *a6 = v28;
    *v44 = &v47;
    sub_65830(v44);
  }

  else if (v12 == 1936028271)
  {
    sub_3B49C4(&valuePtr, *(a1 + 16));
    if (_os_feature_enabled_impl())
    {
      sub_2337D8(&v41, *(a1 + 80), &valuePtr);
    }

    else
    {
      sub_233BF4(&v47, &valuePtr);
      *v44 = &v47;
      *&v44[8] = 1;
      v41 = sub_69CE8(v44);
      if (v48)
      {
        CFRelease(v48);
      }

      if (v47)
      {
        CFRelease(v47);
      }
    }

    v17 = sub_5544(35);
    v18 = *v17;
    if (*v17)
    {
      v19 = os_log_type_enabled(*v17, OS_LOG_TYPE_INFO);
      v20 = v41;
      if (v19)
      {
        *v44 = 136315650;
        *&v44[4] = "VirtualAudio_AudioSession.cpp";
        *&v44[12] = 1024;
        *&v44[14] = 158;
        v45 = 2112;
        v46 = v41;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_INFO, "%25s:%-5d Route description dictionary: %@.", v44, 0x1Cu);
      }
    }

    else
    {
      v20 = v41;
    }

    *a6 = v20;
    if (valuePtr)
    {
      CFRelease(valuePtr);
    }
  }

  else if (v12 == 1936025956)
  {
    v13 = *a5;
    if (v13 != (*(*a1 + 64))(a1, a2, a3, a4))
    {
      v37 = sub_5544(14);
      if (*v37)
      {
        if (os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
        {
          valuePtr = *a2;
          LODWORD(v43) = a2[2];
          sub_22CE0(&v47, &valuePtr);
        }
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      *v38 = &off_6DDDD0;
      v38[2] = 561211770;
    }

    *a6 = *(a1 + 80);
  }

  else
  {

    sub_A654C(a1, a2, a3, a4, a5, a6);
  }
}

void sub_234C00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_234DAC(uint64_t a1, _DWORD *a2, int a3, uint64_t a4)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v10 = sub_5544(14);
    if (*v10 && os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v14 = *a2;
      v15 = a2[2];
      sub_22CE0(__p, &v14);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 2003332927;
LABEL_19:
    exception[2] = v12;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v13 = sub_5544(14);
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *a2;
      v15 = a2[2];
      sub_22CE0(__p, &v14);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v12 = 561211770;
    goto LABEL_19;
  }

  v8 = *a2;
  if (*a2 == 1936028271)
  {
    return 8;
  }

  if (v8 == 1936025956)
  {
    return 4;
  }

  if (v8 == 1936024431)
  {
    return 8;
  }

  return sub_E1CEC(a1, a2);
}

uint64_t sub_2350E0(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 == 1936028271 || v2 == 1936025956)
  {
    return 0;
  }

  if (v2 == 1936024431)
  {
    return 1;
  }

  return sub_201D4(a1, a2);
}

BOOL sub_235124(uint64_t a1, int *a2)
{
  v3 = *a2;
  result = 1;
  if (*a2 <= 1936024430)
  {
    v5 = v3 == 1818850145;
    v6 = 1818850162;
  }

  else
  {
    v5 = v3 == 1936024431 || v3 == 1936025956;
    v6 = 1936028271;
  }

  if (!v5 && v3 != v6)
  {
    return sub_1537C(a1, a2) != 0;
  }

  return result;
}

void sub_2351C0(void *a1)
{
  *a1 = off_6BA390;
  sub_A5114((a1 + 11));
  sub_13E5EC(a1);

  operator delete();
}

uint64_t sub_235228(void *a1)
{
  *a1 = off_6BA390;
  sub_A5114((a1 + 11));

  return sub_13E5EC(a1);
}

double sub_23527C(double a1, double a2)
{
  v2 = 44100.0;
  if (a1 > 44100.0 || a2 < 44100.0)
  {
    v2 = 48000.0;
    if (a1 > 48000.0 || a2 < 48000.0)
    {
      v2 = 96000.0;
      if (a1 > 96000.0 || a2 < 96000.0)
      {
        v2 = 88200.0;
        if (a1 > 88200.0 || a2 < 88200.0)
        {
          v2 = 64000.0;
          if (a1 > 64000.0 || a2 < 64000.0)
          {
            v2 = 32000.0;
            if (a1 > 32000.0 || a2 < 32000.0)
            {
              v2 = 24000.0;
              if (a1 > 24000.0 || a2 < 24000.0)
              {
                v2 = 22050.0;
                if (a1 > 22050.0 || a2 < 22050.0)
                {
                  v2 = 16000.0;
                  if (a1 > 16000.0 || a2 < 16000.0)
                  {
                    v2 = 12000.0;
                    if (a1 > 12000.0 || a2 < 12000.0)
                    {
                      v2 = 11025.0;
                      if (a1 > 11025.0 || a2 < 11025.0)
                      {
                        v2 = 8000.0;
                        if (a2 < 8000.0 || a1 > 8000.0)
                        {
                          return a2;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_2353CC(const void **a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 7;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      a1[1] = &v4[128 * a2];
    }
  }

  else
  {
    v6 = a1[2];
    if (a2 - v5 > (v6 - v3) >> 7)
    {
      if (!(a2 >> 57))
      {
        v7 = v6 - v4;
        v8 = (v6 - v4) >> 6;
        if (v8 <= a2)
        {
          v8 = a2;
        }

        if (v7 >= 0x7FFFFFFFFFFFFF80)
        {
          v9 = 0x1FFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (!(v9 >> 57))
        {
          operator new();
        }

        sub_6ACD8();
      }

      sub_189A00();
    }

    v10 = &v3[128 * (a2 - v5)];
    v11 = (a2 << 7) - (v5 << 7);
    do
    {
      sub_1D1C88(v3);
      v3 += 128;
      v11 -= 128;
    }

    while (v11);
    a1[1] = v10;
  }
}

void sub_235534(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = *(a2 + 4);
  v5 = *a2;
  v6 = *(a2 + 6);
  *(a1 + 72) = *(a2 + 2);
  *(a1 + 56) = v5;
  *(a1 + 80) = v6;
  *(a1 + 84) = 1;
  *(a1 + 88) = v4;
  v7 = *a3;
  v8 = a3[1];
  *(a1 + 128) = *(a3 + 4);
  *(a1 + 96) = v7;
  *(a1 + 112) = v8;
  if (*(a1 + 48))
  {
    sub_2353CC(a1, 1uLL);
    v9 = *a1;
    v10 = *(a1 + 8);
    if (*a1 != v10)
    {
      v11 = *(a1 + 56);
      v12 = v11 * 2.5;
      if (v11 * 2.5 < 2.22507386e-308)
      {
        v12 = 2.22507386e-308;
      }

      v13 = -6.90775528 / v12;
      v14 = exp(-6.90775528 / v12);
      if (v13 >= -708.4)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      v16 = v11 * 1.24;
      if (v11 * 1.24 < 2.22507386e-308)
      {
        v16 = 2.22507386e-308;
      }

      v17 = -6.90775528 / v16;
      v18 = exp(-6.90775528 / v16);
      if (v17 < -708.4)
      {
        v18 = 0.0;
      }

      do
      {
        v9[1] = v11;
        v9[2] = v15;
        v9[4] = v18;
        v9 += 16;
      }

      while (v9 != v10);
    }
  }

  if (*(a1 + 52))
  {
    sub_2353CC((a1 + 24), *(a1 + 124));
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);
    if (v19 != v20)
    {
      v21 = *(a1 + 96);
      v22 = v21 * 2.5;
      if (v21 * 2.5 < 2.22507386e-308)
      {
        v22 = 2.22507386e-308;
      }

      v23 = -6.90775528 / v22;
      v24 = exp(-6.90775528 / v22);
      if (v23 >= -708.4)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0.0;
      }

      v26 = v21 * 1.24;
      if (v21 * 1.24 < 2.22507386e-308)
      {
        v26 = 2.22507386e-308;
      }

      v27 = -6.90775528 / v26;
      v28 = exp(-6.90775528 / v26);
      if (v27 < -708.4)
      {
        v28 = 0.0;
      }

      do
      {
        v19[1] = v21;
        v19[2] = v25;
        v19[4] = v28;
        v19 += 16;
      }

      while (v19 != v20);
    }
  }
}

void sub_2356F0(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  operator delete();
}

uint64_t *sub_235734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 == 1886216809)
  {
    v3 = *(*(a1 + 544) + 32);
    if (!v3)
    {
      v11 = *sub_5544(14);
      if (v11)
      {
        v12 = v11;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v14 = 136315394;
          v15 = "Device_DigitalMic_Aspen.cpp";
          v16 = 1024;
          v17 = 218;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error) [mTransducerDatabase.mBuiltInMicDefaultSubPort is NULL]: No default sub-port specified for built-in mic.", &v14, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "No default sub-port specified for built-in mic.");
    }

    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    if ((v5 - v4) >= 0x41 && v4 != v5)
    {
      v10 = v4;
      while (v10[8] != 1869442665)
      {
        v10 += 16;
        if (v10 == v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v10;
    }

LABEL_8:
    v14 = *v4;
    return sub_1E54B0(a3, &v14, 1);
  }

  else
  {
    v8 = a2;
    v9 = *(a1 + 536);

    return sub_40AC30(a3, v9, v8);
  }
}

uint64_t sub_235900(uint64_t a1, unsigned int a2)
{
  if (a2 != 1886216809 && a2 != 1752197486)
  {
    v4 = sub_5544(18);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_22170(__p, a2);
      v6 = v12 >= 0 ? __p : __p[0];
      *buf = 136315650;
      v14 = "Device_DigitalMic_Aspen.cpp";
      v15 = 1024;
      v16 = 201;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot locate AudioObjectPropertyElement for the given VirtualAudioPortType (%s).", buf, 0x1Cu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = sub_5544(14);
    v8 = *v7;
    if (*v7)
    {
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "Device_DigitalMic_Aspen.cpp";
        v15 = 1024;
        v16 = 202;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error): Unsupported VirtualAudioPortType.", buf, 0x12u);
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Unsupported VirtualAudioPortType.");
  }

  return 0;
}

void sub_235AE0(uint64_t a1)
{
  v2 = sub_5544(18);
  v3 = *v2;
  if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "Device_DigitalMic_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 154;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d initializing Device_HAL_Common", buf, 0x12u);
  }

  sub_4ADCC0(a1);
  v4 = sub_5544(18);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "Device_DigitalMic_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 158;
    v11 = 1024;
    LODWORD(v12) = 1;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d initialized Device_HAL_Common: %u", buf, 0x18u);
  }

  v6 = sub_5544(18);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "Device_DigitalMic_Aspen.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 162;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d creating controls and ports", buf, 0x12u);
  }

  v8 = *(a1 + 88);
  v9[0] = *(a1 + 80);
  v9[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_235FA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_236054(void *a1, __n128 *a2)
{
  v3 = *a2;
  v4 = *a2;
  *a2 = 0uLL;
  sub_318678(a1, &v4);
  if (v4.n128_u64[1])
  {
    sub_1A8C0(v4.n128_u64[1]);
  }

  return v3.n128_u64[0];
}

void sub_2360A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_1A8C0(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_236944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  __cxa_free_exception(v30);
  *(v31 - 128) = v29;
  sub_72C14((v31 - 128));
  sub_24EBDC(a13);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v28);
  operator delete(v33);
  _Unwind_Resume(a1);
}

void sub_236A3C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6C1FA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_236AD8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_6DD418;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_236B4C(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4, UInt32 *a5, float *a6)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v17 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v17);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 2003332927;
LABEL_22:
    exception[2] = v14;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v15 = sub_5544(14);
    if (*v15 && os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      v17 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v17);
    }

    goto LABEL_21;
  }

  if (!a6)
  {
    v16 = sub_5544(14);
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v17);
    }

LABEL_21:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v14 = 561211770;
    goto LABEL_22;
  }

  if (a2->mSelector == 1668049764)
  {

    sub_168034(a1, a5, a6);
  }

  else
  {

    sub_5C0D8(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t sub_236F48(uint64_t a1, const AudioObjectPropertyAddress *a2, UInt32 a3, const void *a4)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    v9 = sub_5544(14);
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v13 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v13);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 2003332927;
LABEL_16:
    exception[2] = v11;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v12 = sub_5544(14);
    if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *&a2->mSelector;
      mElement = a2->mElement;
      sub_22CE0(__p, &v13);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    v11 = 561211770;
    goto LABEL_16;
  }

  if (a2->mSelector == 1668049764)
  {
    return 4;
  }

  return sub_5BD20(a1, a2, a3, a4);
}

BOOL sub_237274(uint64_t a1, const AudioObjectPropertyAddress *a2)
{
  if (a2->mSelector == 1668049764)
  {
    return 1;
  }

  sub_4DFC0(a1);
  return AudioObjectHasProperty(*(a1 + 268), a2) != 0;
}

void sub_2372D0(void *a1)
{
  sub_237308(a1);

  operator delete();
}

uint64_t sub_237308(void *a1)
{
  *a1 = off_6BA418;
  v2 = a1[67];
  a1[67] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_4B2820(a1);
}

void sub_23738C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *sub_4B1A68(a1, a2, a3, a3, 0) = off_6BA418;
  v3 = v4;
  v4[0] = 0;
  v5[0] = 0;
  v5[1] = 0;
  v4[1] = 0;
  v4[2] = v5;
  sub_407194(&v3, 1886216809, 1768778083);
  sub_407194(&v3, 1886216809, 1768778033);
  sub_40736C(&v3, 0x696D6963u, 1886216809);
  sub_40736C(&v3, 0x696D6931u, 1886216809);
  sub_40736C(&v3, 0x736D6963u, 1886216809);
  sub_40736C(&v3, 0x696D6932u, 1886216809);
  sub_40736C(&v3, 0x6C6D6963u, 1886216809);
  sub_40736C(&v3, 0x666D6963u, 1886216809);
  sub_40736C(&v3, 0x6265616Du, 1886216809);
  operator new();
}

void sub_2375B8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 536);
  *(v1 + 536) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_4B2820(v1);
  _Unwind_Resume(a1);
}

std::string *sub_23763C(std::string *a1, uint64_t a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "[ ", 2uLL);
  std::string::append(a1, "Volume Properties: ", 0x13uLL);
  sub_15D0C0(&__p, a2 + 8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_2376F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_237728@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "[ ", 2uLL);
  sub_23763C(&__p, a1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "; DSP ChainConfig: ", 0x13uLL);
  if (*(a1 + 96) == 1)
  {
    sub_3F9E24(&__p, (a1 + 72));
  }

  else
  {
    sub_53E8(&__p, "no value assigned");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a2, " ]", 2uLL);
}

void sub_237840(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_237880(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 72);
    if (v2)
    {
      *(a1 + 80) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t *sub_2378C0(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = (v3 == 0);
    if (!v3)
    {
      break;
    }

    v5 = *(v3 + 4);
    result = sub_130F70(a2, v5);
    if (!result)
    {
      break;
    }

    if (v5 != *(result + 4) || v3[3] != result[3])
    {
      return 0;
    }
  }

  return result;
}

std::string *sub_237948@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a2, "[ ", 2uLL);
  sub_23763C(&__p, a1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "; ", 2uLL);
  if (*(a1 + 96) == 1)
  {
    sub_3F9E24(&__p, (a1 + 72));
  }

  else
  {
    sub_53E8(&__p, "no value assigned");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &__p;
  }

  else
  {
    v6 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v7 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v6, v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a2, "; ", 2uLL);
  return std::string::append(a2, " ]", 2uLL);
}

void sub_237A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void *sub_237AB8(void *a1)
{
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *sub_237B28(void *a1)
{
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_237B98(char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[11];
    __p[11] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = __p[8];
    if (v4)
    {
      __p[9] = v4;
      operator delete(v4);
    }

    v5 = __p[6];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

std::string *sub_237C30(std::string *a1, unsigned __int8 *a2)
{
  sub_53E8(a1, "[ Connection Snapshot:");
  memset(&v43, 0, sizeof(v43));
  std::string::append(&v43, "{ ", 2uLL);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v43.__r_.__value_.__l.__size_;
  }

  v4 = *(a2 + 1);
  v5 = a2 + 16;
  if (v4 != a2 + 16)
  {
    do
    {
      v6 = *(v4 + 8);
      v7 = size;
      if (v6)
      {
        v7 = SHIBYTE(v43.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v43.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v7 = v43.__r_.__value_.__l.__size_;
        }
      }

      v8 = *(v4 + 1);
      v9 = v4;
      if (v8)
      {
        do
        {
          v10 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v10 = *(v9 + 2);
          v11 = *v10 == v9;
          v9 = v10;
        }

        while (!v11);
      }

      v12 = "????";
      if (v6 <= 2)
      {
        v12 = off_6BA658[v6];
      }

      sub_53E8(&v45, v12);
      v13 = std::string::insert(&v45, 0, "[ Port Type: ", 0xDuLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v46.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v46.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v46, "; ", 2uLL);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v47.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      memset(&v44, 0, sizeof(v44));
      std::string::append(&v44, "[ Port: ", 8uLL);
      sub_88A00(&v51, v4 + 5, "", 339);
      sub_23148(&v53, v51 + 2);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v53;
      }

      else
      {
        v17 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v18 = v53.__r_.__value_.__l.__size_;
      }

      std::string::append(&v44, v17, v18);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      if (v52)
      {
        sub_1A8C0(v52);
      }

      std::string::append(&v44, "; SubPorts: ", 0xCuLL);
      sub_379AB0(&v53, v4 + 8);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v53;
      }

      else
      {
        v19 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = v53.__r_.__value_.__l.__size_;
      }

      std::string::append(&v44, v19, v20);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      std::string::append(&v44, "; Properties: ", 0xEuLL);
      (*(**(v4 + 11) + 16))(&v53);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v53;
      }

      else
      {
        v21 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = v53.__r_.__value_.__l.__size_;
      }

      std::string::append(&v44, v21, v22);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      std::string::append(&v44, "; Enable reason: ", 0x11uLL);
      sub_22170(&v53, *(v4 + 24));
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = &v53;
      }

      else
      {
        v23 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v24 = v53.__r_.__value_.__l.__size_;
      }

      std::string::append(&v44, v23, v24);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
      }

      std::string::append(&v44, "; BuiltInMicThroughAOP: ", 0x18uLL);
      if (v4[100])
      {
        v25 = "yes";
      }

      else
      {
        v25 = "no";
      }

      if (v4[100])
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      std::string::append(&v44, v25, v26);
      std::string::append(&v44, " ]", 2uLL);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = &v44;
      }

      else
      {
        v27 = v44.__r_.__value_.__r.__words[0];
      }

      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = HIBYTE(v44.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v28 = v44.__r_.__value_.__l.__size_;
      }

      v29 = std::string::append(&v47, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if (v10 == v5)
      {
        v31 = " ]";
      }

      else
      {
        v31 = " ]; ";
      }

      if (v10 == v5)
      {
        v32 = 2;
      }

      else
      {
        v32 = 4;
      }

      v33 = std::string::append(&v48, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v50 = v33->__r_.__value_.__r.__words[2];
      v49 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v44.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v47.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (v50 >= 0)
      {
        v35 = &v49;
      }

      else
      {
        v35 = v49;
      }

      if (v50 >= 0)
      {
        v36 = HIBYTE(v50);
      }

      else
      {
        v36 = *(&v49 + 1);
      }

      std::string::insert(&v43, v7, v35, v36);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  std::string::append(&v43, " }", 2uLL);
  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v43;
  }

  else
  {
    v37 = v43.__r_.__value_.__r.__words[0];
  }

  if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v43.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v37, v38);
  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Optional: ", 0xCuLL);
  std::to_string(&v53, *a2);
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v53;
  }

  else
  {
    v39 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = v53.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v39, v40);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_238140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v49 - 97) < 0)
  {
    operator delete(*(v49 - 120));
  }

  if (*(a11 + 23) < 0)
  {
    operator delete(*a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_238290(uint64_t a1)
{
  sub_4B0F4(*(a1 + 32));
  sub_4B0F4(*(a1 + 8));
  return a1;
}

std::string *sub_2382C4(std::string *a1, void *a2, void *a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      v7 = a2[5];
      if (v7)
      {
        v8 = std::__shared_weak_count::lock(v7);
        if (v8)
        {
          v9 = v8;
          v10 = a2[4];
          if (v10)
          {
            sub_23148(__p, v10 + 2);
            sub_1A8C0(v9);
            goto LABEL_9;
          }

          sub_1A8C0(v8);
        }
      }

      sub_53E8(__p, "expired");
LABEL_9:
      if ((v17 & 0x80u) == 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v12 = v17;
      }

      else
      {
        v12 = __p[1];
      }

      std::string::append(a1, v11, v12);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v13 = a2[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = a2[2];
          v15 = *v14 == a2;
          a2 = v14;
        }

        while (!v15);
      }

      if (v14 == a3)
      {
        return std::string::append(a1, " }", 2uLL);
      }

      std::string::append(a1, ", ", 2uLL);
      a2 = v14;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_238418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_238464(std::string *a1, uint64_t a2)
{
  sub_53E8(a1, "[ ");
  sub_68108(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, ";", 1uLL);
  v6 = (a2 + 8);
  memset(&v23, 0, sizeof(v23));
  v7 = a2 + 8;
  while (1)
  {
    v7 = *(v7 + 8);
    if (v7 == v6)
    {
      break;
    }

    std::string::append(&v23, "{ ", 2uLL);
    sub_237C30(&__p, (v7 + 16));
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v9 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&v23, v8, v9);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v7 == *v6)
    {
      v10 = " }";
    }

    else
    {
      v10 = " },";
    }

    if (v7 == *v6)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    std::string::append(&v23, v10, v11);
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v23;
  }

  else
  {
    v12 = v23.__r_.__value_.__r.__words[0];
  }

  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v13 = v23.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v12, v13);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Source Physical Devices: ", 0x1BuLL);
  sub_2382C4(&__p, *(a2 + 32), (a2 + 40));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &__p;
  }

  else
  {
    v14 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v14, v15);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Destination Physical Devices: ", 0x20uLL);
  sub_2382C4(&__p, *(a2 + 56), (a2 + 64));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v16, v17);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a2 + 112) == 1)
  {
    std::operator+<char>();
  }

  else
  {
    sub_53E8(&__p, "");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &__p;
  }

  else
  {
    v18 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v18, v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::string::append(a1, "; Mode: ", 8uLL);
  sub_22170(&__p, *(a2 + 120));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &__p;
  }

  else
  {
    v20 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v20, v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return std::string::append(a1, " ]", 2uLL);
}

void sub_238768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2387F4(uint64_t a1)
{
  sub_C31F4(*(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_C31F4(v2);
  }

  return a1;
}

std::string *sub_238844(std::string *a1, unsigned int *a2, unsigned int *a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_68108(&__p, a2 + 7);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a1, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v9 = *(a2 + 1);
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
        do
        {
          v10 = *(a2 + 2);
          v11 = *v10 == a2;
          a2 = v10;
        }

        while (!v11);
      }

      if (v10 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
      a2 = v10;
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_23894C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_238970(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x238958);
}

std::string *sub_238988(std::string *a1, uint64_t a2)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  for (i = *(a2 + 8); i != a2; i = v5)
  {
    v5 = *(i + 8);
    std::string::append(a1, "[ ", 2uLL);
    sub_238464(&__p, i + 16);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a1, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v5 == a2)
    {
      v8 = " ]";
    }

    else
    {
      v8 = " ],";
    }

    if (v5 == a2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    std::string::append(a1, v8, v9);
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_238A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_238AD8(void *a1, uint64_t a2, std::__shared_weak_count *this)
{
  v5 = a1[1];
  if (this)
  {
    atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5 != a1)
  {
    while (1)
    {
      v6 = v5[4];
      if (this)
      {
        atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (v6 != v5 + 3)
      {
        break;
      }

      v12 = 0;
LABEL_36:
      if (this)
      {
        std::__shared_weak_count::__release_weak(this);
      }

      if (!v12)
      {
        v5 = v5[1];
        if (v5 != a1)
        {
          continue;
        }
      }

      if (this)
      {
        goto LABEL_41;
      }

      return v12;
    }

    while (1)
    {
      v7 = v6[3];
      if (this)
      {
        atomic_fetch_add_explicit(&this->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (v7 != v6 + 4)
      {
        break;
      }

      v12 = 0;
      if (this)
      {
LABEL_29:
        std::__shared_weak_count::__release_weak(this);
      }

LABEL_30:
      if (!v12)
      {
        v6 = v6[1];
        if (v6 != v5 + 3)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    while (1)
    {
      if (this)
      {
        v8 = std::__shared_weak_count::lock(this);
        v9 = v8 ? a2 : 0;
      }

      else
      {
        v9 = 0;
        v8 = 0;
      }

      v10 = v7[6];
      if (!v10)
      {
        break;
      }

      v11 = std::__shared_weak_count::lock(v10);
      if (!v11)
      {
        break;
      }

      v12 = v9 == v7[5];
      sub_1A8C0(v11);
      if (v8)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (!v12)
      {
        v13 = v7[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v7[2];
            v15 = *v14 == v7;
            v7 = v14;
          }

          while (!v15);
        }

        v7 = v14;
        if (v14 != v6 + 4)
        {
          continue;
        }
      }

      if (this)
      {
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    v12 = v9 == 0;
    if (!v8)
    {
      goto LABEL_21;
    }

LABEL_20:
    sub_1A8C0(v8);
    goto LABEL_21;
  }

  v12 = 0;
  if (this)
  {
LABEL_41:
    std::__shared_weak_count::__release_weak(this);
  }

  return v12;
}

void sub_238C8C(uint64_t a1, double *a2)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    v4 = *(a1 + 112);
    v5 = (*(*v2 + 120))(*(a1 + 120), buf);
    if (!v5)
    {
      if (!*(v4 + 432) || *buf == *a2)
      {
        (*(**(v4 + 872) + 552))(*(v4 + 872), a2, v2);
        sub_222268(v4, a2, v2);
      }

      v12 = sub_5544(14);
      v13 = *v12;
      if (*v12)
      {
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          v15 = 136315394;
          v16 = "VirtualAudio_Device.cpp";
          v17 = 1024;
          v18 = 1567;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareIllegalOperationError): Sample rate changes are currently blocked by policy.", &v15, 0x12u);
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = 1852797029;
    }

    v9 = sub_5544(14);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "VirtualAudio_Device.cpp";
      v17 = 1024;
      v18 = 1562;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: Error getting the current hardware stream format", &v15, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    *v11 = &off_6DDDD0;
    v11[2] = v5;
  }

  v6 = sub_5544(14);
  v7 = *v6;
  if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "VirtualAudio_Stream.cpp";
    v20 = 1024;
    v21 = 388;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadStreamError) [mStream is NULL]: the underlying stream is NULL", buf, 0x12u);
  }

  v8 = __cxa_allocate_exception(0x10uLL);
  *v8 = &off_6DDDD0;
  v8[2] = 561214578;
}

void sub_238FEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v9 = sub_5544(1);
    v10 = *v9;
    if (*v9)
    {
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        LODWORD(a9) = 136315394;
        *(&a9 + 4) = "VirtualAudio_Device.cpp";
        WORD6(a9) = 1024;
        *(&a9 + 14) = 1585;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error re-setting the current stream format", &a9, 0x12u);
      }
    }

    __cxa_end_catch();
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_2390A4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    v27 = sub_5544(14);
    if (*v27 && os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      v55.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v55.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p, &v55);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = 2003332927;
  }

  if ((a3 == 0) == (a4 != 0))
  {
    v29 = sub_5544(14);
    if (*v29 && os_log_type_enabled(*v29, OS_LOG_TYPE_ERROR))
    {
      v55.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v55.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p, &v55);
    }

    v30 = __cxa_allocate_exception(0x10uLL);
    *v30 = &off_6DDDD0;
    v30[2] = 561211770;
  }

  if (!a6)
  {
    v31 = sub_5544(14);
    if (*v31 && os_log_type_enabled(*v31, OS_LOG_TYPE_ERROR))
    {
      v55.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v55.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p, &v55);
    }

    v32 = __cxa_allocate_exception(0x10uLL);
    *v32 = &off_6DDDD0;
    v32[2] = 561211770;
  }

  if (((*(*a1 + 56))(a1, a2) & 1) == 0)
  {
    v33 = sub_5544(14);
    if (*v33 && os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      v55.__r_.__value_.__r.__words[0] = *a2;
      LODWORD(v55.__r_.__value_.__r.__words[1]) = a2[2];
      sub_22CE0(__p, &v55);
    }

    v34 = __cxa_allocate_exception(0x10uLL);
    *v34 = &off_6DDDD0;
    v34[2] = 1852797029;
  }

  v12 = *a2;
  if (*a2 == 1936092532 || v12 == 1885762592)
  {
    v13 = sub_5544(4);
    v14 = sub_5544(36);
    v15 = 0;
    *buf = 0x100000002;
    v16 = *(v13 + 8);
    while (1)
    {
      v17 = *&buf[v15];
      if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
      {
        break;
      }

      v15 += 4;
      if (v15 == 8)
      {
        goto LABEL_13;
      }
    }

    if ((v16 & v17) == 0)
    {
      v13 = v14;
    }

LABEL_13:
    v18 = *v13;
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      sub_618A4(__p, a6);
    }

    v12 = *a2;
  }

  if (v12 > 1936092514)
  {
    if (v12 == 1936092515)
    {
      if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
      {
        v41 = sub_5544(14);
        if (*v41 && os_log_type_enabled(*v41, OS_LOG_TYPE_ERROR))
        {
          v55.__r_.__value_.__r.__words[0] = *a2;
          LODWORD(v55.__r_.__value_.__r.__words[1]) = a2[2];
          sub_22CE0(__p, &v55);
        }

        v42 = __cxa_allocate_exception(0x10uLL);
        *v42 = &off_6DDDD0;
        v42[2] = 561211770;
      }

      (*(**(a1 + 120) + 48))(*(a1 + 120), a2, a3, a4, a5, a6);
      sub_221A90(*(a1 + 112));
    }

    else
    {
      if (v12 != 1936092532)
      {
        goto LABEL_37;
      }

      if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
      {
        v37 = sub_5544(14);
        if (*v37 && os_log_type_enabled(*v37, OS_LOG_TYPE_ERROR))
        {
          v55.__r_.__value_.__r.__words[0] = *a2;
          LODWORD(v55.__r_.__value_.__r.__words[1]) = a2[2];
          sub_22CE0(__p, &v55);
        }

        v38 = __cxa_allocate_exception(0x10uLL);
        *v38 = &off_6DDDD0;
        v38[2] = 561211770;
      }

      v23 = *(a6 + 16);
      *__p = *a6;
      *&__p[16] = v23;
      v57 = *(a6 + 32);
      if (*(a1 + 129) == 1 && !sub_23A4B0(*(a1 + 120), __p))
      {
        v50 = sub_5544(14);
        v51 = *v50;
        if (*v50 && os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "VirtualAudio_Stream.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 251;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): Sample rate changes are not allowed currently.", buf, 0x12u);
        }

        v52 = __cxa_allocate_exception(0x10uLL);
        *v52 = &off_6DDDD0;
        v52[2] = 560226676;
      }

      if ((sub_2F6EBC(*(a1 + 104), __p) & 1) == 0)
      {
        v45 = sub_5544(4);
        if (*v45 && os_log_type_enabled(*v45, OS_LOG_TYPE_DEBUG))
        {
          sub_618A4(&v55, __p);
        }

        v46 = __cxa_allocate_exception(0x10uLL);
        *v46 = &off_6DDDD0;
        v46[2] = 560226676;
      }

      v24 = *(a1 + 104);
      v25 = *(v24 + 32);
      *buf = *(v24 + 16);
      *&buf[16] = v25;
      v59 = *(v24 + 48);
      sub_2F6FB8((v24 + 80), buf, __p);
      v54 = 40;
      (*(*a1 + 72))(a1, a2, 0, 0, &v54, buf);
      if (sub_136868(buf, __p, 0))
      {
        v26 = sub_5544(4);
        if ((*(v26 + 8) & 1) != 0 && *v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_DEBUG))
        {
          sub_618A4(&v53, __p);
        }
      }

      else
      {
        sub_2F70DC(*(a1 + 104), __p);
      }
    }
  }

  else
  {
    if (v12 != 1718641517)
    {
      if (v12 == 1885762592)
      {
        if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
        {
          v35 = sub_5544(14);
          if (*v35 && os_log_type_enabled(*v35, OS_LOG_TYPE_ERROR))
          {
            v55.__r_.__value_.__r.__words[0] = *a2;
            LODWORD(v55.__r_.__value_.__r.__words[1]) = a2[2];
            sub_22CE0(__p, &v55);
          }

          v36 = __cxa_allocate_exception(0x10uLL);
          *v36 = &off_6DDDD0;
          v36[2] = 561211770;
        }

        v19 = *(a6 + 16);
        *buf = *a6;
        *&buf[16] = v19;
        v59 = *(a6 + 32);
        if (*(a1 + 129) == 1 && !sub_23A4B0(*(a1 + 120), buf))
        {
          v47 = sub_5544(14);
          v48 = *v47;
          if (*v47 && os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "VirtualAudio_Stream.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 291;
            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioDeviceUnsupportedFormatError): Sample rate changes are not allowed currently.", __p, 0x12u);
          }

          v49 = __cxa_allocate_exception(0x10uLL);
          *v49 = &off_6DDDD0;
          v49[2] = 560226676;
        }

        if ((sub_2F6EBC(*(a1 + 104), buf) & 1) == 0)
        {
          v43 = sub_5544(4);
          if (*v43 && os_log_type_enabled(*v43, OS_LOG_TYPE_DEBUG))
          {
            sub_618A4(&v55, buf);
          }

          v44 = __cxa_allocate_exception(0x10uLL);
          *v44 = &off_6DDDD0;
          v44[2] = 560226676;
        }

        sub_2F6FB8((*(a1 + 104) + 56), (*(a1 + 104) + 16), buf);
        v20 = *(a1 + 104);
        if ((*(**(v20 + 8) + 192))(*(v20 + 8), buf))
        {
          v21 = v59;
          v22 = *&buf[16];
          *(v20 + 16) = *buf;
          *(v20 + 32) = v22;
          *(v20 + 48) = v21;
        }

        return;
      }

LABEL_37:
      sub_20BAC(a1, a2, a3, a4, a5, a6);
      return;
    }

    if ((*(*a1 + 64))(a1, a2, a3, a4) != a5)
    {
      v39 = sub_5544(14);
      if (*v39 && os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
      {
        v55.__r_.__value_.__r.__words[0] = *a2;
        LODWORD(v55.__r_.__value_.__r.__words[1]) = a2[2];
        sub_22CE0(__p, &v55);
      }

      v40 = __cxa_allocate_exception(0x10uLL);
      *v40 = &off_6DDDD0;
      v40[2] = 561211770;
    }

    (*(**(a1 + 120) + 48))(*(a1 + 120), a2, a3, a4, a5, a6);
  }
}

void sub_23A46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_23A4B0(uint64_t a1, double *a2)
{
  v3 = (*(*a1 + 120))(a1, v9);
  if (v3)
  {
    v5 = v3;
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "VirtualAudio_Stream.cpp";
      v12 = 1024;
      v13 = 635;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (status) [error status is an error]: mStream->GetCurrentFormat returned an error", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &off_6DDDD0;
    exception[2] = v5;
  }

  return v9[0] == *a2;
}

uint64_t sub_23A5F4(uint64_t a1, int *a2)
{
  v2 = 0;
  v3 = *a2;
  if (*a2 > 1936092514)
  {
    if (v3 <= 1936482675)
    {
      if (v3 == 1936092515)
      {
        return 1;
      }

      if (v3 != 1936222577)
      {
        return sub_28C200(a1, a2);
      }
    }

    else if (v3 != 1936482676 && v3 != 1936487523)
    {
      if (v3 == 1952542835)
      {
        return (*(**(a1 + 120) + 24))();
      }

      return sub_28C200(a1, a2);
    }
  }

  else
  {
    if (v3 <= 1751938146)
    {
      if (v3 == 1684829283 || v3 == 1685025633)
      {
        return v2;
      }

      if (v3 != 1718641517)
      {
        return sub_28C200(a1, a2);
      }

      return 1;
    }

    if ((v3 - 1935765619) >= 2 && v3 != 1751938147)
    {
      return sub_28C200(a1, a2);
    }
  }

  return v2;
}

void sub_23A708(uint64_t a1, unint64_t *a2)
{
  *v9 = 0u;
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  v4 = sub_177D74(a1, v9, __p);
  v5 = __p[0];
  if (v4)
  {
    sub_163678(a2, *(a1 + 8), -1431655765 * ((__p[1] - __p[0]) >> 2), __p[0]);
    sub_163678(a2, *(*(a1 + 112) + 8), -1431655765 * ((v9[1] - v9[0]) >> 2), v9[0]);
  }

  if (v5)
  {
    operator delete(v5);
  }

  v6 = v9[0];
  if (v9[0])
  {

    operator delete(v6);
  }
}

void sub_23A7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_23A800(uint64_t a1)
{
  sub_2820();
  v13 = *(a1 + 8);
  v14 = &unk_6FCDC8;
  v15 = 1;
  sub_26C0(&unk_6FCDC8);
  v2 = sub_23B090(&xmmword_6FCEE8, v13);
  if (v2)
  {
    v3 = atomic_load((v2[3] + 312));
    if (v3)
    {
      v5 = v2[3];
      v4 = v2[4];
      v11 = v5;
      v12 = v4;
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      v11 = 0;
      v12 = 0;
    }

    if (v15 == 1)
    {
      sub_3174(v14);
    }

    if (v5)
    {
      sub_26C0(v5 + 24);
      operator new();
    }

    v6 = sub_5544(5);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v17 = "HP_ObjectManager.h";
      v18 = 1024;
      v19 = 66;
      v20 = 2048;
      v21 = v13;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d HP_Object at ID %lu is invalid.", buf, 0x1Cu);
    }

    if (v4)
    {
      sub_1A8C0(v4);
    }

    operator delete();
  }

  v8 = sub_5544(14);
  v9 = *v8;
  if (*v8 && os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v17 = "HP_ObjectManager.h";
    v18 = 1024;
    v19 = 56;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadObjectError): ExecuteSynchronized: no object with given ID", buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &off_6DDDD0;
  exception[2] = 560947818;
}

void sub_23AACC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, void **__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, __int128 buf, __int128 a21, int a22, __int16 a23, __int16 a24, int a25)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a10)
  {
    sub_1A8C0(a10);
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
      if (a19 >= 0)
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
      a25 = 375;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a19 < 0)
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
        goto LABEL_21;
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
      a25 = 375;
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
        goto LABEL_21;
      }

      LODWORD(buf) = 136315906;
      *(&buf + 4) = "StandardUtilities.h";
      WORD6(buf) = 1024;
      *(&buf + 14) = 670;
      WORD1(a21) = 2080;
      *(&a21 + 4) = "";
      WORD6(a21) = 1024;
      *(&a21 + 14) = 375;
      v37 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
      v38 = v41;
      v39 = 34;
    }

    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, v37, &buf, v39);
  }

LABEL_21:
  __cxa_end_catch();
  if (!v25)
  {
    JUMPOUT(0x23A960);
  }

  JUMPOUT(0x23A948);
}

void sub_23ADB0(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, __int128 buf, __int128 a21, int a22, __int16 a23, __int16 a24, int a25)
{
  if (!a2)
  {
    JUMPOUT(0x23AAD8);
  }

  __cxa_end_catch();
  if (a2 == 3)
  {
    v27 = __cxa_begin_catch(a1);
    v28 = sub_5544(14);
    v29 = *v28;
    if (*v28 && os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v27[2]);
      p_p = __p;
      if (a19 >= 0)
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
      a25 = 98;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a19 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x23ADA8);
  }

  v31 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v32 = v31;
    v33 = sub_5544(14);
    v34 = *v33;
    if (!*v33 || !os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v35 = (*(*v32 + 16))(v32);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a21) = 2080;
    *(&a21 + 4) = v35;
    WORD6(a21) = 2080;
    *(&a21 + 14) = "";
    a24 = 1024;
    a25 = 98;
    v36 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v37 = v34;
    v38 = 44;
  }

  else
  {
    v39 = sub_5544(14);
    v40 = *v39;
    if (!*v39 || !os_log_type_enabled(*v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    LODWORD(buf) = 136315906;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 670;
    WORD1(a21) = 2080;
    *(&a21 + 4) = "";
    WORD6(a21) = 1024;
    *(&a21 + 14) = 98;
    v36 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v37 = v40;
    v38 = 34;
  }

  _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, v36, &buf, v38);
  goto LABEL_17;
}

void sub_23B040()
{
  if (v0)
  {
    operator delete();
  }

  JUMPOUT(0x23AAD8);
}

uint64_t *sub_23B090(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 4) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_23B144(uint64_t a1)
{
  v2 = *(a1 + 8);
  sub_26C0(v2);
  if (sub_23B090((v2 + 288), **(a1 + 16)))
  {
    sub_3174(**(a1 + 24) + 24);
  }

  sub_3174(v2);
}

__n128 sub_23B1D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_6BA758;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_23B27C(uint64_t a1, unsigned int a2, int *a3, unint64_t *a4)
{
  if (a2)
  {
    v6 = a2;
    do
    {
      v7 = *a3;
      a3 += 3;
      if (v7 == 1885762657)
      {
        v8 = sub_5544(4);
        v9 = *v8;
        if (*v8)
        {
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v11 = "VirtualAudio_Stream.cpp";
            v12 = 1024;
            v13 = 414;
            _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Physical formats changed! Firing the surround sound pref thingy on the VAD", buf, 0x12u);
          }
        }

        sub_221A90(a4);
      }

      --v6;
    }

    while (v6);
  }
}

void sub_23B39C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, int a5)
{
  if (!a2)
  {
    v13 = sub_5544(14);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      v19[0] = 136315394;
      *&v19[1] = "VirtualAudio_Stream.cpp";
      v20 = 1024;
      v21 = 453;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inNewDevice is NULL]: inNewDevice is NULL.", v19, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "inNewDevice is NULL.");
  }

  v8 = (*(*a2 + 96))(a2, (*(a1 + 88) & 1) == 0, a3);
  *(a1 + 120) = v8;
  if (!v8)
  {
    v16 = sub_5544(14);
    v17 = *v16;
    if (*v16 && os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v19[0] = 136315394;
      *&v19[1] = "VirtualAudio_Stream.cpp";
      v20 = 1024;
      v21 = 457;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (kAudioHardwareBadStreamError) [mStream is NULL]: stream is active but underlying stream is NULL", v19, 0x12u);
    }

    v18 = __cxa_allocate_exception(0x10uLL);
    *v18 = &off_6DDDD0;
    v18[2] = 561214578;
  }

  if (a5)
  {
    (*(*v8 + 176))(v8);
    v8 = *(a1 + 120);
  }

  if (sub_123DE4(v8))
  {
    v9 = *(a1 + 120);
    v10 = *(v9 + 88);
    if (v10)
    {
      v11 = *(v9 + 80);
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v12 = std::__shared_weak_count::lock(v10);
      std::__shared_weak_count::__release_weak(v10);
      if (v12)
      {
        if (v11)
        {
          strcpy(v19, "atfpbolg");
          BYTE1(v19[2]) = 0;
          HIWORD(v19[2]) = 0;
          sub_17A154(v11, v19, sub_23B27C, *(a1 + 112));
        }

        sub_1A8C0(v12);
      }
    }
  }

  sub_172728(a1, a4);
}

void sub_23B68C(uint64_t a1, unint64_t *a2)
{
  if (!*(a1 + 120))
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "VirtualAudio_Stream.cpp";
        v8 = 1024;
        v9 = 478;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: underlying stream is NULL", &v6, 0x12u);
      }
    }
  }

  (*(**(a1 + 120) + 176))(*(a1 + 120));
  sub_172728(a1, a2);
}

uint64_t *sub_23B798(uint64_t a1, unsigned int a2, _DWORD **a3)
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

uint64_t sub_23B8EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_12790(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_12790(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v4 = *(a1 + 56);
  if (v4)
  {
    *(a1 + 64) = v4;
    operator delete(v4);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 80) = v5;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v7;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v8 = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 144) = v8;
  *(a2 + 167) = 0;
  *(a2 + 144) = 0;
  v9 = *(a1 + 168);
  if (v9)
  {
    *(a1 + 176) = v9;
    operator delete(v9);
    *(a1 + 168) = 0;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
  }

  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v10 = *(a1 + 192);
  if (v10)
  {
    *(a1 + 200) = v10;
    operator delete(v10);
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 208) = 0;
  }

  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  v11 = *(a1 + 224);
  *(a1 + 216) = *(a2 + 216);
  if (v11)
  {
    *(a1 + 232) = v11;
    operator delete(v11);
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
  }

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  v12 = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 248) = v12;
  sub_12790(a1 + 264);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 264) = 0;
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  sub_12790(a1 + 288);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = *(a2 + 304);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a2 + 304) = 0;
  sub_23BD00(a1 + 312, (a2 + 312));
  sub_23BD00(a1 + 352, (a2 + 352));
  sub_23BD00(a1 + 392, (a2 + 392));
  sub_23BDD8(a1 + 432, (a2 + 432));
  return a1;
}

void sub_23BB40(void *a1)
{
  if (a1)
  {
    sub_23BB40(*a1);
    sub_23BB40(a1[1]);
    sub_A5114((a1 + 5));

    operator delete(a1);
  }
}

std::string *sub_23BB94(std::string *a1, uint64_t a2, uint64_t a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      sub_1F1F00(&__p, a2 + 16);
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::string::append(a1, v7, v8);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      a2 = *(a2 + 8);
      if (a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_23BC70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_23BC94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x23BC7CLL);
}

uint64_t *sub_23BCAC(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return sub_75234(v6, a2);
}

void sub_23BD00(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    sub_4B0A0(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

__n128 sub_23BDD8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    *(a2 + 8) = 0uLL;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_23BE78(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_A5114(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_23BEC4(uint64_t **a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_75234(v7, a2);
  v8 = a2[5];
  a2[5] = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  operator delete(a2);
}

void sub_23BF80(uint64_t a1, unsigned int a2)
{
  __src = 0uLL;
  v30 = 0;
  v3 = *(a1 + 24);
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = (a1 + 16);
  v5 = a1 + 24;
  do
  {
    v6 = *(v3 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * v8);
  }

  while (v3);
  if (v5 != a1 + 24 && *(v5 + 32) <= a2)
  {
    v11 = *(v5 + 40);
    *(v5 + 40) = 0;
    v12 = *(v11 + 8);
    LODWORD(v31) = v12;
    v13 = sub_5544(3);
    v14 = *v13;
    if (*v13 && os_log_type_enabled(*v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "VirtualAudio_SessionManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 136;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = v12;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Destroying and unpublishing session object: session id = %u, audio object id = %u", buf, 0x1Eu);
    }

    v15 = __src.n128_u64[1];
    if (__src.n128_u64[1] >= v30)
    {
      v17 = __src.n128_u64[0];
      v18 = __src.n128_u64[1] - __src.n128_u64[0];
      v19 = (__src.n128_u64[1] - __src.n128_u64[0]) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        sub_189A00();
      }

      v21 = v30 - __src.n128_u64[0];
      if ((v30 - __src.n128_u64[0]) >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      p_src = &__src;
      if (v22)
      {
        sub_1DC9A4(v22);
      }

      *(8 * v19) = v11;
      v16 = 8 * v19 + 8;
      memcpy(0, v17, v18);
      v23 = __src.n128_u64[0];
      v24 = v30;
      __src.n128_u64[0] = 0;
      __src.n128_u64[1] = v16;
      v30 = 0;
      *&buf[16] = v23;
      v33 = v24;
      *buf = v23;
      *&buf[8] = v23;
      sub_218DD4(buf);
    }

    else
    {
      *__src.n128_u64[1] = v11;
      v16 = v15 + 8;
    }

    __src.n128_u64[1] = v16;
    sub_23BEC4(v4, v5);
    v25 = AudioObjectsPublishedAndDied();
    if (v25)
    {
      v26 = sub_5544(14);
      v27 = *v26;
      if (*v26 && os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "VirtualAudio_SessionManager.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 142;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (theError) [error theError is an error]: couldn't tell the HAL about the session", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &off_6DDDD0;
      exception[2] = v25;
    }

    sub_218AD4(&__src);
  }

  else
  {
LABEL_9:
    v9 = sub_5544(3);
    v10 = *v9;
    if (*v9 && os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "VirtualAudio_SessionManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 127;
      *&buf[18] = 1024;
      *&buf[20] = a2;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d No session object found: session id = %u", buf, 0x18u);
    }
  }

  v31 = &__src;
  sub_218D2C(&v31);
}

void sub_23C2F8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, __int128 buf, __int16 a14, __int16 a15, int a16)
{
  if (a2)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
    __cxa_begin_catch(exception_object);
    v19 = sub_5544(3);
    v20 = *v19;
    if (*v19 && os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315650;
      *(&buf + 4) = "VirtualAudio_SessionManager.cpp";
      WORD6(buf) = 1024;
      *(&buf + 14) = 147;
      a15 = 1024;
      a16 = v16;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to destroy session object: session id = %u", &buf, 0x18u);
    }

    __cxa_end_catch();
    JUMPOUT(0x23C1ECLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C400(void *a1, uint64_t a2)
{
  v4 = sub_5544(2);
  v5 = sub_5544(35);
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
      goto LABEL_7;
    }
  }

  if ((v7 & v8) == 0)
  {
    v4 = v5;
  }

LABEL_7:
  v9 = *v4;
  if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "VirtualAudio_SessionManager.cpp";
    v53 = 1024;
    v54 = 155;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Updating Audio Session information", buf, 0x12u);
  }

  v10 = *(a2 + 8);
  if (v10 != a2)
  {
    v11 = a1 + 3;
    while (1)
    {
      v12 = *(v10 + 96);
      v13 = *v11;
      if (*v11)
      {
        v14 = a1 + 3;
        v15 = *v11;
        do
        {
          v16 = *(v15 + 32);
          v17 = v16 >= v12;
          v18 = v16 < v12;
          if (v17)
          {
            v14 = v15;
          }

          v15 = *(v15 + 8 * v18);
        }

        while (v15);
        if (v14 != v11 && v12 >= *(v14 + 8))
        {
          goto LABEL_26;
        }
      }

      if (!_os_feature_enabled_impl())
      {
        break;
      }

      v19 = sub_5544(2);
      v20 = sub_5544(35);
      v21 = 0;
      *buf = 0x100000002;
      v22 = *(v19 + 8);
      while (1)
      {
        v23 = *&buf[v21];
        if (((v22 & v23) != 0) != ((*(v20 + 8) & v23) != 0))
        {
          break;
        }

        v21 += 4;
        if (v21 == 8)
        {
          goto LABEL_40;
        }
      }

      if ((v22 & v23) == 0)
      {
        v19 = v20;
      }

LABEL_40:
      v26 = *v19;
      if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        std::to_string(v51, v12);
        v27 = v51;
        if (v51[23] < 0)
        {
          v27 = *v51;
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_SessionManager.cpp";
        v53 = 1024;
        v54 = 166;
        v55 = 2080;
        v56 = v27;
        _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session %s is not found", buf, 0x1Cu);
        if ((v51[23] & 0x80000000) != 0)
        {
          operator delete(*v51);
        }
      }

LABEL_46:
      v10 = *(v10 + 8);
      if (v10 == a2)
      {
        goto LABEL_47;
      }
    }

    sub_48FAC(a1, v12);
    v13 = a1[3];
LABEL_26:
    if (!v13)
    {
LABEL_92:
      sub_DE7DC("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v24 = *(v13 + 8);
        if (v12 >= v24)
        {
          break;
        }

        v13 = *v13;
        if (!v13)
        {
          goto LABEL_92;
        }
      }

      if (v24 >= v12)
      {
        break;
      }

      v13 = v13[1];
      if (!v13)
      {
        goto LABEL_92;
      }
    }

    sub_A4E68(buf, v13[5] + 88);
    if (BYTE4(v57) == 1)
    {
      v25 = v57;
      if ((v57 & 0x100000000) == 0)
      {
        sub_1EC054();
      }
    }

    else
    {
      v25 = sub_1F2C48(*(v10 + 264));
    }

    *(v10 + 100) = v25;
    *(v10 + 104) = 1;
    sub_233C40(v13[5] + 88, v10 + 16);
    sub_A5114(buf);
    goto LABEL_46;
  }

LABEL_47:
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v28 = a1[2];
    if (v28 != a1 + 3)
    {
      do
      {
        v29 = *(a2 + 8);
        if (v29 == a2)
        {
LABEL_52:
          if (!sub_1F3F0C(v28[5] + 88))
          {
            sub_1D7C28(1uLL);
          }

          *(v28[5] + 305) = 0;
        }

        else
        {
          while (*(v29 + 96) != *(v28 + 8))
          {
            v29 = *(v29 + 8);
            if (v29 == a2)
            {
              goto LABEL_52;
            }
          }
        }

        v30 = v28[1];
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
            v31 = v28[2];
            v32 = *v31 == v28;
            v28 = v31;
          }

          while (!v32);
        }

        v28 = v31;
      }

      while (v31 != a1 + 3);
    }
  }

  v33 = sub_5544(2);
  v34 = sub_5544(35);
  v35 = 0;
  *buf = 0x100000002;
  v36 = *(v33 + 8);
  while (1)
  {
    v37 = *&buf[v35];
    if (((v36 & v37) != 0) != ((*(v34 + 8) & v37) != 0))
    {
      break;
    }

    v35 += 4;
    if (v35 == 8)
    {
      goto LABEL_67;
    }
  }

  if ((v36 & v37) == 0)
  {
    v33 = v34;
  }

LABEL_67:
  v38 = *v33;
  if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = a1[4];
    *buf = 136315650;
    *&buf[4] = "VirtualAudio_SessionManager.cpp";
    v53 = 1024;
    v54 = 208;
    v55 = 2048;
    v56 = v39;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Audio Sessions: %zu", buf, 0x1Cu);
  }

  v40 = a1[2];
  if (v40 != a1 + 3)
  {
    do
    {
      if (*(v40[5] + 305) == 1)
      {
        v41 = sub_5544(2);
        v42 = sub_5544(35);
        v43 = 0;
        *buf = 0x100000002;
        v44 = *(v41 + 8);
        while (1)
        {
          v45 = *&buf[v43];
          if (((v44 & v45) != 0) != ((*(v42 + 8) & v45) != 0))
          {
            break;
          }

          v43 += 4;
          if (v43 == 8)
          {
            goto LABEL_78;
          }
        }

        if ((v44 & v45) == 0)
        {
          v41 = v42;
        }

LABEL_78:
        v46 = *v41;
        if (v46 && os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          sub_A4E68(buf, v40[5] + 88);
          sub_1F1F00(&__p, buf);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *v51 = 136315650;
          *&v51[4] = "VirtualAudio_SessionManager.cpp";
          *&v51[12] = 1024;
          *&v51[14] = 212;
          *&v51[18] = 2080;
          *&v51[20] = p_p;
          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Active Session: %s", v51, 0x1Cu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_A5114(buf);
        }
      }

      v48 = v40[1];
      if (v48)
      {
        do
        {
          v49 = v48;
          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        do
        {
          v49 = v40[2];
          v32 = *v49 == v40;
          v40 = v49;
        }

        while (!v32);
      }

      v40 = v49;
    }

    while (v49 != a1 + 3);
  }
}

void sub_23CB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (v19)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void *sub_23CB80(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_23CBC4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
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

void sub_23CC08(uint64_t a1)
{
  *a1 = &off_6BA7D0;
  sub_477A0(*(a1 + 40));
  v2 = (a1 + 8);
  sub_1884C0(&v2);

  operator delete();
}

uint64_t sub_23CC88(uint64_t a1)
{
  *a1 = &off_6BA7D0;
  sub_477A0(*(a1 + 40));
  v3 = (a1 + 8);
  sub_1884C0(&v3);
  return a1;
}

const __CFNumber *sub_23CD78(const __CFDictionary *a1)
{
  if (!a1)
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "VirtualAudio_Utilities.cpp";
      v9 = 1024;
      v10 = 542;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION FAILURE (std::logic_error).", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Precondition failure.");
  }

  result = sub_11094(a1, "activation call type");
  if (result)
  {
    v2 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v2))
    {
      v7 = 0;
      if (CFNumberGetValue(v2, kCFNumberIntType, &v7))
      {
        return v7;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_23CEF8(uint64_t a1, unsigned int a2)
{
  result = (*(**(a1 + 872) + 368))(*(a1 + 872), 1650814258, 2, 4);
  if (result)
  {
    v6 = *(**(a1 + 872) + 384);

    v5.n128_f32[0] = a2;
    return v6(v5);
  }

  return result;
}

uint64_t sub_23CFBC(uint64_t a1, unsigned int a2)
{
  result = (*(**(a1 + 872) + 368))(*(a1 + 872), 1685287015, 1651797616, 0);
  if (result)
  {
    v6 = *(**(a1 + 872) + 384);

    v5.n128_f32[0] = a2;
    return v6(v5);
  }

  return result;
}

unint64_t sub_23D088(_DWORD *a1, int a2, float a3)
{
  v11 = a3;
  v9 = 0x696E70746467706DLL;
  v10 = 0;
  v8 = a2;
  v12[0] = a1[2];
  *&v13.mSelector = 0x696E70746467686DLL;
  v13.mElement = 0;
  result = sub_542F0(v12, &v13, 4, &v8);
  *(&v7 + 1) = v5;
  *&v7 = result;
  v6 = v7 >> 32;
  if ((v6 & 0x100000000) != 0)
  {
    if (v6)
    {
      return (*(*a1 + 80))(a1, &v9, 4, &v8, 4, &v11, 0);
    }
  }

  return result;
}

void sub_23D178(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 buf, __int128 a19, int a20, __int16 a21, __int16 a22, int a23)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  if (a2 == 3)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = sub_5544(14);
    v26 = *v25;
    if (*v25 && os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      sub_22170(&__p, v24[2]);
      p_p = __p;
      if (a17 >= 0)
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
      a23 = 727;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d CAException caught by ExceptionBarrier: '%s' (%s:%d).", &buf, 0x2Cu);
      if (a17 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_17:
    __cxa_end_catch();
    JUMPOUT(0x23D148);
  }

  v28 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v29 = v28;
    v30 = sub_5544(14);
    v31 = *v30;
    if (!*v30 || !os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v32 = (*(*v29 + 16))(v29);
    LODWORD(buf) = 136316162;
    *(&buf + 4) = "StandardUtilities.h";
    WORD6(buf) = 1024;
    *(&buf + 14) = 665;
    WORD1(a19) = 2080;
    *(&a19 + 4) = v32;
    WORD6(a19) = 2080;
    *(&a19 + 14) = "";
    a22 = 1024;
    a23 = 727;
    v33 = "%25s:%-5d Standard Library exception caught by ExceptionBarrier: %s (%s:%d).";
    v34 = v31;
    v35 = 44;
  }

  else
  {
    v36 = sub_5544(14);
    v37 = *v36;
    if (!*v36 || !os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
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
    *(&a19 + 14) = 727;
    v33 = "%25s:%-5d Unknown exception caught by ExceptionBarrier (%s:%d).";
    v34 = v37;
    v35 = 34;
  }

  _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, v33, &buf, v35);
  goto LABEL_17;
}

uint64_t sub_23D404(uint64_t a1)
{
  result = sub_DD8CC(*(a1 + 872), 0);
  if (!result)
  {
    return result;
  }

  v3 = sub_8703C();
  v4 = (*(*v3 + 376))(v3);
  (*(**(a1 + 872) + 424))(*(a1 + 872));
  if (!v4 && (*sub_C2C1C() & 1) == 0)
  {
    if (sub_2204C4(a1) && (v5 = *(a1 + 872)) != 0 && ((*(*v5 + 440))(buf), (v29 & 1) != 0))
    {
      if (v28)
      {
        sub_20B4EC();
      }

      v6 = BYTE4(v23);
      sub_DD7C4(&v23 + 4);
      v7 = v6 ^ 1;
      if (v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 1;
    }

    *buf = v7 & 1;
    (*(**(a1 + 872) + 416))(*(a1 + 872), 1685287015, 1652124782, buf, 4, 1, 0);
  }

  if (v4)
  {
    v8 = sub_5544(2);
    v9 = *v8;
    if (*v8)
    {
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v23 = "VirtualAudio_Utilities.cpp";
        v24 = 1024;
        v25 = 778;
        v26 = 2048;
        *&v27 = v4;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [VolumeLimit] SPLTarget update %lu", buf, 0x1Cu);
      }
    }
  }

LABEL_17:
  v10 = (*(**(a1 + 872) + 376))(*(a1 + 872), 1685287015, 1936749423, 0);
  (*(**(a1 + 872) + 376))(*(a1 + 872), 1685287015, 1819176045, 0);
  v12 = 1819160624;
  if (v4)
  {
    v13 = v11;
    v14 = sub_5544(2);
    v15 = (v4 - (v10 + 13.0)) - v13;
    v16 = *v14;
    if (*v14 && os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v23 = "VirtualAudio_Utilities.cpp";
      v24 = 1024;
      v25 = 786;
      v26 = 2048;
      v27 = v15;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [VolumeLimit] Updating kGraphParameter_VolumeLimit_TargetLoudnessLKFS to %f", buf, 0x1Cu);
    }

    (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1818977907, 0, v15);
    if (v4 >= 0x50)
    {
      if (v4 >= 0x55)
      {
        v17.n128_u32[0] = -1.5;
        if (v4 < 0x5A)
        {
          v17.n128_f32[0] = -6.5;
        }

        (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1751934580, 0, v17);
        v18 = 1819162677;
        v19 = 1819162928;
        v21 = 1819162933;
        if (v4 >= 0x60)
        {
          v21 = 1819160624;
        }

        if (v4 >= 0x5B)
        {
          v19 = v21;
        }

        v20 = v4 == 85;
      }

      else
      {
        (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1751934580, 0, -11.5);
        v18 = 1819162672;
        v19 = 1819162677;
        v20 = v4 == 80;
      }

      if (v20)
      {
        v12 = v18;
      }

      else
      {
        v12 = v19;
      }
    }

    else
    {
      (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1751934580, 0, -16.5);
      if (v4 >= 0x4C)
      {
        v12 = 1819162672;
      }

      else
      {
        v12 = 1819162421;
      }
    }
  }

  else
  {
    (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1818977907, 0, 0.0);
    (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1751934580, 0, -1.5);
  }

  (*(**(a1 + 872) + 376))(*(a1 + 872), 1685287015, v12, 0);
  return (*(**(a1 + 872) + 384))(*(a1 + 872), 1685287015, 1819176295, 0);
}

void sub_23DAA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a23 == 1)
  {
    sub_DD7C4(&a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_23DACC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    v7 = 0;
    v4 = qword_6EB2D0;
    if (qword_6EB2D0 != &qword_6EB2B8)
    {
      v3 = 0;
LABEL_9:
      v7 = v4;
      qword_6EB2D0 = v3;
      return sub_23DDE8(v6);
    }

LABEL_10:
    (*(qword_6EB2B8 + 24))();
    (*(*qword_6EB2D0 + 32))(qword_6EB2D0);
    qword_6EB2D0 = v7;
    v7 = v6;
    return sub_23DDE8(v6);
  }

  if (v2 == a1)
  {
    v7 = v6;
    (*(*v2 + 24))(v2, v6);
    v3 = v7;
  }

  else
  {
    v3 = (*(*v2 + 16))(v2);
    v7 = v3;
  }

  v4 = qword_6EB2D0;
  if (v3 != v6)
  {
    if (qword_6EB2D0 != &qword_6EB2B8)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (qword_6EB2D0 == &qword_6EB2B8)
  {
    (*(*v3 + 24))(v3, v8);
    (*(*v7 + 32))(v7);
    v7 = 0;
    (*(*qword_6EB2D0 + 24))(qword_6EB2D0, v6);
    (*(*qword_6EB2D0 + 32))(qword_6EB2D0);
    qword_6EB2D0 = 0;
    v7 = v6;
    (*(v8[0] + 24))(v8, &qword_6EB2B8);
    (*(v8[0] + 32))(v8);
  }

  else
  {
    (*(*v3 + 24))(v3, &qword_6EB2B8);
    (*(*v7 + 32))(v7);
    v7 = qword_6EB2D0;
  }

  qword_6EB2D0 = &qword_6EB2B8;
  return sub_23DDE8(v6);
}

void sub_23DDDC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

uint64_t sub_23DDE8(uint64_t a1)
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

void sub_23DE68(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = sub_5544(14);
  if (*(v3 + 8))
  {
    v4 = *v3;
    if (*v3)
    {
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        if (v2)
        {
          memset(&v16, 0, sizeof(v16));
          if (v2)
          {
            std::string::append(&v16, "Open", 4uLL);
          }

          if ((v2 & 2) != 0)
          {
            std::string::append(&v16, " | Flap1", 8uLL);
          }

          if ((v2 & 4) != 0)
          {
            std::string::append(&v16, " | Flap2", 8uLL);
          }

          if ((v2 & 8) != 0)
          {
            std::string::append(&v16, " | Flap3", 8uLL);
          }

          if ((v2 & 0x10) != 0)
          {
            std::string::append(&v16, " | Attach", 9uLL);
          }

          if ((v2 & 0x20) != 0)
          {
            std::string::append(&v16, " | StateUnknown", 0xFuLL);
          }
        }

        else
        {
          sub_53E8(&v16, "None");
        }

        v5 = &v16;
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v5 = v16.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = "VirtualAudio_Utilities.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 832;
        v20 = 2080;
        v21 = v5;
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d HallEffectSensorListener state = %s", buf, 0x1Cu);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v6 = v2 & 3;
  if (dword_6E7188 != (v6 == 3))
  {
    if (v6 == 3)
    {
      v7 = "Closed";
    }

    else
    {
      v7 = "Open";
    }

    sub_53E8(&v16, v7);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v16;
    }

    else
    {
      v8 = v16.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v16.__r_.__value_.__l.__size_;
      }

      cf = CFStringCreateWithBytes(0, v8, size, 0x8000100u, 0);
      if (!cf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }
    }

    else
    {
      cf = 0;
    }

    sub_88CE8(&v17, "SmartCoverState");
    if (cf)
    {
      CFRetain(cf);
    }

    v18 = cf;
    *buf = &v17;
    *&buf[8] = 1;
    v15 = sub_69CE8(buf);
    sub_23E2D8(v15, 1, 5);
    CFRelease(v15);
    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v11 = sub_5544(14);
    v12 = *v11;
    if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = &v16;
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = v16.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = "VirtualAudio_Utilities.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 844;
      v20 = 2080;
      v21 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d SmartCoverState::%s", buf, 0x1Cu);
    }

    if (qword_6FCB80 != -1)
    {
      dispatch_once(&qword_6FCB80, &stru_6BA8D0);
    }

    if (off_6FCBE8)
    {
      off_6FCBE8(v6 == 3);
    }

    dword_6E7188 = v6 == 3;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23E238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  sub_1DB0E0(&a10);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_23E2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_6E7110 != -1)
  {
    dispatch_once(&qword_6E7110, &stru_6BA800);
  }

  if (off_6E7170)
  {
    v6 = off_6E7170;

    v6(a1, a2, a3);
  }
}

void sub_23E36C(id a1)
{
  v1 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v1 || (v1 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v2 = v1;
    off_6FCB88 = dlsym(v1, "AudioIssueDetectorCreate");
    off_6FCB90 = dlsym(v2, "AudioIssueDetectorInitialize");
    off_6FCB98 = dlsym(v2, "AudioIssueDetectorDispose");
    qword_6FCBA0 = dlsym(v2, "AudioIssueDetectorSetNodeFormat");
    off_6FCBA8 = dlsym(v2, "AudioIssueDetectorSetNodeFormatWithDirection");
    qword_6FCBB0 = dlsym(v2, "AudioIssueDetectorReset");
    off_6FCBB8 = dlsym(v2, "AudioIssueDetectorAnalyzeBuffer");
    off_6FCBC0 = dlsym(v2, "AudioIssueDetectorUpdateReportingSessions");
    qword_6FCBC8 = dlsym(v2, "AudioIssueDetectorRemoveNode");
    qword_6FCBD0 = dlsym(v2, "AudioIssueDetectorSetUplinkMute");
    qword_6FCBD8 = dlsym(v2, "AudioIssueDetectorSetDownlinkVolume");
    qword_6FCBE0 = dlsym(v2, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    off_6FCBE8 = dlsym(v2, "AudioIssueDetectorSetSmartCaseMicMute");
    qword_6FCBF0 = dlsym(v2, "AudioIssueDetectorFlush");
  }

  v3 = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (v3)
  {
    v4 = dlsym(v3, "RegisterAudioUnits_Analyzer");
    if (v4)
    {

      v4();
    }
  }
}

void sub_23E540(id a1)
{
  v1 = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (v1)
  {
    v2 = v1;
    qword_6E7118 = dlsym(v1, "CreateSharedCAReportingClient");
    qword_6E7120 = dlsym(v2, "CAReportingClientCreateReporterID");
    qword_6E7128 = dlsym(v2, "CAReportingClientCreateReporterIDFromSessionID");
    qword_6E7130 = dlsym(v2, "CAReportingClientCreatePerformanceReporterID");
    qword_6E7138 = dlsym(v2, "CAReportingClientStartReporter");
    qword_6E7140 = dlsym(v2, "CAReportingClientStopReporter");
    qword_6E7148 = dlsym(v2, "CAReportingClientSetAudioServiceType");
    qword_6E7150 = dlsym(v2, "CAReportingClientGetAudioServiceType");
    qword_6E7158 = dlsym(v2, "CAReportingClientSetConfiguration");
    qword_6E7160 = dlsym(v2, "CAReportingClientCopyConfiguration");
    off_6E7168 = dlsym(v2, "CAReportingClientSendMessage");
    off_6E7170 = dlsym(v2, "CAReportingClientSendSingleMessage");
    qword_6E7178 = dlsym(v2, "CAReportingClientDestroyReporterID");
    qword_6E7180 = dlsym(v2, "CAReportingClientRequestMessage");
  }
}

std::string *sub_23E748(std::string *a1, uint64_t a2, uint64_t a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      v7 = *(a2 + 23);
      v8 = v7 >= 0 ? a2 : *a2;
      v9 = v7 >= 0 ? *(a2 + 23) : *(a2 + 8);
      std::string::append(a1, v8, v9);
      a2 += 24;
      if (a2 == a3)
      {
        break;
      }

      std::string::append(a1, ", ", 2uLL);
    }
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_23E7F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef sub_23E814(__int128 **a1)
{
  v1 = *a1;
  v2 = a1[1];
  memset(v6, 0, sizeof(v6));
  if (v2 != v1)
  {
    v3 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v1) >> 3);
    if (!(v3 >> 61))
    {
      v7[4] = v6;
      sub_1DB8DC(v3);
    }

    sub_189A00();
  }

  v4 = sub_69BCC(v6);
  v7[0] = v6;
  sub_69C68(v7);
  return v4;
}

void sub_23E9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  __p = &a16;
  sub_69C68(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_23EA34(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  return a1;
}

void *sub_23EA78(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

__CFString *sub_23EABC(__CFString *result, const UInt8 *a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2[23];
  if ((v4 & 0x80u) != 0)
  {
    a2 = *a2;
  }

  if (a2)
  {
    v5 = *(v2 + 1);
    if ((v4 & 0x80u) == 0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v5;
    }

    result = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
    v3->isa = result;
    if (!result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    result->isa = 0;
  }

  return result;
}

void sub_23EB90(uint64_t result, void *a2)
{
  v4 = *result;
  v5 = *(result + 8);
  v6 = a2[1] + *result - v5;
  if (v5 != *result)
  {
    v7 = *result;
    v8 = (a2[1] + *result - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      sub_23EC90(v9);
    }

    while (v4 != v5);
    v4 = *result;
  }

  a2[1] = v6;
  *result = v6;
  *(result + 8) = v4;
  a2[1] = v4;
  v10 = *(result + 8);
  *(result + 8) = a2[2];
  a2[2] = v10;
  v11 = *(result + 16);
  *(result + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t sub_23EC40(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    sub_23EC90(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_23EC90(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void sub_23ECB0(uint64_t a1, const __CFDictionary **a2)
{
  if (!*a2)
  {
    *(a1 + 96) = 0u;
    *(a1 + 112) = 0u;
    *(a1 + 160) = 0;
    *(a1 + 128) = 0u;
    *(a1 + 144) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 80) = 1065353216;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 1065353216;
    *(a1 + 160) = 1065353216;
    return;
  }

  v4 = sub_43354(*a2, "input port UIDs");
  if (v4)
  {
    v5 = v4;
    CFRetain(v4);
    v6 = CFGetTypeID(v5);
    if (v6 == CFArrayGetTypeID())
    {
      CFRetain(v5);
      v25 = v5;
      CFRelease(v5);
      v7 = sub_5544(2);
      v8 = sub_5544(35);
      v9 = 0;
      cf[0] = 0x100000002;
      v10 = *(v7 + 8);
      while (1)
      {
        v11 = *(cf + v9);
        if (((v10 & v11) != 0) != ((*(v8 + 8) & v11) != 0))
        {
          break;
        }

        v9 += 4;
        if (v9 == 8)
        {
          goto LABEL_26;
        }
      }

      if ((v10 & v11) == 0)
      {
        v7 = v8;
      }

LABEL_26:
      v18 = *v7;
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_B13D8(&__p, v5);
        v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
        LODWORD(cf[0]) = 136315650;
        *(cf + 4) = "VirtualAudio_Utilities.cpp";
        WORD2(cf[1]) = 1024;
        *(&cf[1] + 6) = 1028;
        WORD1(cf[2]) = 2080;
        *(&cf[2] + 4) = v19;
        _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Persistent input port UIDs: %s.", cf, 0x1Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_11;
    }

    CFRelease(v5);
  }

  v25 = 0;
LABEL_11:
  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  sub_4A1E0(cf, *a2, "output port UIDs");
  if (LOBYTE(cf[1]) == 1 && (v12 = cf[0]) != 0)
  {
    CFRetain(cf[0]);
    v23 = v12;
    CFRelease(v12);
    v13 = sub_5544(2);
    v14 = sub_5544(35);
    v15 = 0;
    cf[0] = 0x100000002;
    v16 = *(v13 + 8);
    while (1)
    {
      v17 = *(cf + v15);
      if (((v16 & v17) != 0) != ((*(v14 + 8) & v17) != 0))
      {
        break;
      }

      v15 += 4;
      if (v15 == 8)
      {
        goto LABEL_35;
      }
    }

    if ((v16 & v17) == 0)
    {
      v13 = v14;
    }

LABEL_35:
    v20 = *v13;
    if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_B13D8(&__p, v12);
      v21 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(cf[0]) = 136315650;
      *(cf + 4) = "VirtualAudio_Utilities.cpp";
      WORD2(cf[1]) = 1024;
      *(&cf[1] + 6) = 1033;
      WORD1(cf[2]) = 2080;
      *(&cf[2] + 4) = v21;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d - Persistent output port UIDs: %s.", cf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v23 = 0;
  }

  memset(cf, 0, 24);
  memset(&__p, 0, sizeof(__p));
  sub_23F1B4(cf, &v25);
  sub_23F1B4(&__p, &v23);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_4817C(a1, cf[0], cf[1], 0xAAAAAAAAAAAAAAABLL * ((cf[1] - cf[0]) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_4817C((a1 + 24), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__r.__words[1], 0xAAAAAAAAAAAAAAABLL * ((__p.__r_.__value_.__l.__size_ - __p.__r_.__value_.__r.__words[0]) >> 3));
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1065353216;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 1065353216;
  p_p = &__p;
  sub_11C50(&p_p);
  __p.__r_.__value_.__r.__words[0] = cf;
  sub_11C50(&__p);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v25)
  {
    CFRelease(v25);
  }
}

void sub_23F104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13)
{
  sub_46228(&a9);
  sub_46228(&a13);
  _Unwind_Resume(a1);
}

void sub_23F1B4(uint64_t a1, CFArrayRef *a2)
{
  v2 = *a2;
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
    v6 = Count;
    v7 = *a2;
    if (v7)
    {
      v8 = CFArrayGetCount(v7);
      if (!v6)
      {
        return;
      }
    }

    else
    {
      v8 = 0;
      if (!Count)
      {
        return;
      }
    }

    v9 = 0;
    do
    {
      if (v2 == v7 && v8 == v9)
      {
        break;
      }

      sub_A3B9C(&cf, v2, v9);
      v10 = cf;
      if (cf)
      {
        v11 = CFGetTypeID(cf);
        if (v11 == CFStringGetTypeID())
        {
          sub_23F428(&v27, &cf);
          sub_F76D4(__p, v27);
          v12 = *(a1 + 8);
          v13 = *(a1 + 16);
          if (v12 >= v13)
          {
            v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a1) >> 3);
            v16 = v15 + 1;
            if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_189A00();
            }

            v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a1) >> 3);
            if (2 * v17 > v16)
            {
              v16 = 2 * v17;
            }

            if (v17 >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v16;
            }

            v31[4] = a1;
            if (v18)
            {
              sub_1D8BB8(v18);
            }

            v19 = 24 * v15;
            v20 = *__p;
            *(v19 + 16) = v29;
            *v19 = v20;
            __p[1] = 0;
            v29 = 0;
            __p[0] = 0;
            v21 = 24 * v15 + 24;
            v22 = *(a1 + 8) - *a1;
            v23 = 24 * v15 - v22;
            memcpy((v19 - v22), *a1, v22);
            v24 = *a1;
            *a1 = v23;
            *(a1 + 8) = v21;
            v25 = *(a1 + 16);
            *(a1 + 16) = 0;
            v31[2] = v24;
            v31[3] = v25;
            v31[0] = v24;
            v31[1] = v24;
            sub_12574(v31);
            v26 = SHIBYTE(v29);
            *(a1 + 8) = v21;
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v14 = *__p;
            *(v12 + 16) = v29;
            *v12 = v14;
            __p[1] = 0;
            v29 = 0;
            __p[0] = 0;
            *(a1 + 8) = v12 + 24;
          }

          if (v27)
          {
            CFRelease(v27);
          }
        }

        CFRelease(v10);
      }

      ++v9;
    }

    while (v6 != v9);
  }
}

void sub_23F3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_452F0(&a9);
  sub_1DC860(&a16);
  _Unwind_Resume(a1);
}

const void *sub_23F428(void *a1, const void **a2)
{
  result = *a2;
  if (!*a2)
  {
    goto LABEL_6;
  }

  v5 = CFGetTypeID(result);
  result = CFStringGetTypeID();
  if (v5 != result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1DB154(exception);
  }

  v6 = *a2;
  if (v6)
  {
    CFRetain(v6);
    *a1 = v6;
    v7 = CFGetTypeID(v6);
    result = CFStringGetTypeID();
    if (v7 != result)
    {
      v8 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v8, "Could not construct");
    }
  }

  else
  {
LABEL_6:
    *a1 = 0;
  }

  return result;
}

void sub_23F50C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1DB0E0(v1);
  _Unwind_Resume(a1);
}

void *sub_23F54C(uint64_t **a1, uint64_t a2, void ***a3, uint64_t a4)
{
  v8 = a1 + 1;
  if (a1 + 1 != a2 && (sub_6F834(a3, (a2 + 32)) & 0x80) == 0)
  {
    if ((sub_6F834((a2 + 32), a3) & 0x80) == 0)
    {
      v20[3] = a2;
      v21 = a2;
      v9 = a2;
      if (!a2)
      {
        goto LABEL_25;
      }

      return v9;
    }

    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v19 = a2;
      do
      {
        v15 = *(v19 + 16);
        v17 = *v15 == v19;
        v19 = v15;
      }

      while (!v17);
    }

    if (v15 == v8 || (sub_6F834(a3, v15 + 4) & 0x80) != 0)
    {
      if (v13)
      {
        v21 = v15;
      }

      else
      {
        v21 = a2;
        v15 = (a2 + 8);
      }

      goto LABEL_22;
    }

LABEL_19:
    v15 = sub_6F86C(a1, &v21, a3);
    goto LABEL_22;
  }

  v10 = *a2;
  if (*a1 == a2)
  {
    v12 = a2;
  }

  else
  {
    if (v10)
    {
      v11 = *a2;
      do
      {
        v12 = v11;
        v11 = v11[1];
      }

      while (v11);
    }

    else
    {
      v16 = a2;
      do
      {
        v12 = *(v16 + 16);
        v17 = *v12 == v16;
        v16 = v12;
      }

      while (v17);
    }

    if ((sub_6F834(v12 + 4, a3) & 0x80) == 0)
    {
      goto LABEL_19;
    }
  }

  if (!v10)
  {
    v21 = a2;
    goto LABEL_25;
  }

  v21 = v12;
  v15 = (v12 + 1);
LABEL_22:
  v9 = *v15;
  if (!*v15)
  {
LABEL_25:
    sub_23F700(v20, a1, a4);
  }

  return v9;
}

void sub_23F784(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1F0870(0, v2);
  _Unwind_Resume(a1);
}

void sub_23F7A0(void *a1, int a2, uint64_t *a3)
{
  v5 = a1[1];
  if (a1[2] != v5)
  {
    v6 = a1[4];
    v7 = (v5 + 8 * (v6 >> 7));
    v8 = *v7;
    v9 = &(*v7)[32 * (v6 & 0x7F)];
    v10 = *(v5 + (((a1[5] + v6) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v6) & 0x7F);
    while (v9 != v10)
    {
      if (!*v9)
      {
        v12 = sub_5544(7);
        v13 = *v12;
        if (*v12 && os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "DeviceManager.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 270;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d invalid AudioObjectID", buf, 0x12u);
        }

        break;
      }

      v9 += 32;
      if (v9 - v8 == 4096)
      {
        v11 = v7[1];
        ++v7;
        v8 = v11;
        v9 = v11;
      }
    }
  }

  v14 = a1[1];
  if (a1[2] != v14)
  {
    v15 = a1[4];
    v16 = (v14 + 8 * (v15 >> 7));
    v17 = *v16;
    v18 = *v16 + 32 * (v15 & 0x7F);
    v19 = *(v14 + (((a1[5] + v15) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v15) & 0x7F);
    while (v18 != v19)
    {
      v20 = *(v18 + 31);
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(v18 + 16);
      }

      if (!v20)
      {
        if (!a2)
        {
          v94 = sub_5544(7);
          v95 = *v94;
          if (*v94)
          {
            if (os_log_type_enabled(*v94, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 277;
              _os_log_impl(&dword_0, v95, OS_LOG_TYPE_ERROR, "%25s:%-5d uid is NULL for a new PhysicalDevice", buf, 0x12u);
            }
          }
        }

        break;
      }

      v18 += 32;
      if (v18 - v17 == 4096)
      {
        v21 = v16[1];
        ++v16;
        v17 = v21;
        v18 = v21;
      }
    }
  }

  if (a3)
  {
    v105 = a3;
    v106 = 1;
    sub_47BD8(a3);
    v22 = (a3 + 37);
    *buf = buf;
    *&buf[8] = buf;
    *&buf[16] = 0;
    v23 = a3[38];
    if (v23 != a3 + 37)
    {
      sub_12A818(buf, v23 + 2);
    }

    v102 = std::uncaught_exceptions();
    v103[0] = v103;
    v103[1] = v103;
    v104 = 0;
    v24 = *&buf[16];
    if (*&buf[16])
    {
      v26 = *buf;
      v25 = *&buf[8];
      v27 = *(*buf + 8);
      v28 = **&buf[8];
      *(v28 + 8) = v27;
      *v27 = v28;
      v29 = v103[0];
      *(v103[0] + 8) = v25;
      *v25 = v29;
      v103[0] = v26;
      *(v26 + 8) = v103;
      v104 = v24;
      *&buf[16] = 0;
    }

    sub_87980(buf);
    memset(v101, 0, sizeof(v101));
    if (a2)
    {
      memset(buf, 0, 48);
      v107 = &v107;
      v108 = &v107;
      v109 = 0;
      LOBYTE(__p[0]) = 0;
      __p[1] = 0;
      atomic_fetch_add((sub_809C0() + 656), 1u);
      v30 = a1[1];
      if (a1[2] != v30)
      {
        v31 = a1[4];
        v32 = a1[5];
        v33 = (v30 + 8 * (v31 >> 7));
        v34 = *v33 + 32 * (v31 & 0x7F);
        v35 = *(v30 + (((v32 + v31) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v32 + v31) & 0x7F);
        while (v34 != v35)
        {
          v36 = sub_5544(7);
          v37 = *v36;
          if (*v36 && os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
          {
            v38 = (v34 + 8);
            if (*(v34 + 31) < 0)
            {
              v38 = *v38;
            }

            v39 = *v34;
            *v113 = 136316162;
            *&v113[4] = "DeviceManager.cpp";
            *&v113[12] = 1024;
            *&v113[14] = 421;
            *&v113[18] = 2080;
            *&v113[20] = "Removed";
            *&v113[28] = 1024;
            *&v113[30] = v39;
            *&v113[34] = 2080;
            *&v113[36] = v38;
            _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Handling device state [%s] for Device ID: %u for UID: %s", v113, 0x2Cu);
          }

          v40 = sub_5544(7);
          v41 = *v40;
          if (*v40 && os_log_type_enabled(*v40, OS_LOG_TYPE_INFO))
          {
            v42 = *v34;
            if (*(v34 + 31) >= 0)
            {
              v43 = v34 + 8;
            }

            else
            {
              v43 = *(v34 + 8);
            }

            *v113 = 136315906;
            *&v113[4] = "DeviceManager.cpp";
            *&v113[12] = 1024;
            *&v113[14] = 465;
            *&v113[18] = 1024;
            *&v113[20] = v42;
            *&v113[24] = 2080;
            *&v113[26] = v43;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_INFO, "%25s:%-5d Deleting Device ID: %u with UID: %s", v113, 0x22u);
          }

          v44 = a3[38];
          if (v44 != v22)
          {
            v45 = *v34;
            while ((*(**(v44 + 16) + 120))(*(v44 + 16)) != v45)
            {
              v44 = *(v44 + 8);
              if (v44 == v22)
              {
                goto LABEL_48;
              }
            }
          }

          if (v44 == v22)
          {
LABEL_48:
            v47 = 0;
          }

          else
          {
            v46 = *(v44 + 16);
            v47 = *(v44 + 24);
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v46)
            {
              sub_241E28(v22, v44);
              (*(*v46 + 80))(v46);
              operator new();
            }
          }

          v48 = sub_5544(7);
          v49 = *v48;
          if (*v48 && os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
          {
            *v113 = 136315394;
            *&v113[4] = "DeviceManager.cpp";
            *&v113[12] = 1024;
            *&v113[14] = 473;
            _os_log_impl(&dword_0, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d PhysicalDevice to remove does not exist in the DeviceManager database", v113, 0x12u);
          }

          if (v47)
          {
            sub_1A8C0(v47);
          }

          v34 += 32;
          if (v34 - *v33 == 4096)
          {
            v50 = v33[1];
            ++v33;
            v34 = v50;
          }
        }
      }

      sub_240CCC(__p);
      if (v109)
      {
        v51 = sub_8703C();
        v52 = (*(*v51 + 336))(v51);
        v53 = v108;
        if (v52)
        {
          if (v108 != &v107)
          {
            do
            {
              v54 = sub_5544(7);
              v55 = sub_5544(16);
              v56 = 0;
              *v113 = 0x100000002;
              v57 = *(v54 + 8);
              while (1)
              {
                v58 = *&v113[v56];
                if (((v57 & v58) != 0) != ((*(v55 + 8) & v58) != 0))
                {
                  break;
                }

                v56 += 4;
                if (v56 == 8)
                {
                  if ((v57 & 1) == 0)
                  {
                    goto LABEL_75;
                  }

                  goto LABEL_68;
                }
              }

              if ((v57 & v58) == 0)
              {
                v54 = v55;
              }

              if (*(v54 + 8))
              {
LABEL_68:
                v59 = *v54;
                if (v59 && os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
                {
                  v60 = v53[2];
                  sub_23148(__p, v60 + 2);
                  v61 = v111 >= 0 ? __p : __p[0];
                  *v113 = 136315906;
                  *&v113[4] = "DeviceManager.cpp";
                  *&v113[12] = 1024;
                  *&v113[14] = 49;
                  *&v113[18] = 2048;
                  *&v113[20] = v60;
                  *&v113[28] = 2080;
                  *&v113[30] = v61;
                  _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEBUG, "%25s:%-5d Queueing device %p (%s) for deletion.", v113, 0x26u);
                  if (v111 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

LABEL_75:
              v53 = v53[1];
            }

            while (v53 != &v107);
          }

          v62 = 1;
        }

        else
        {
          if (v108 != &v107)
          {
            do
            {
              v84 = sub_5544(7);
              v85 = sub_5544(16);
              v86 = 0;
              *v113 = 0x100000002;
              v87 = *(v84 + 8);
              while (1)
              {
                v88 = *&v113[v86];
                if (((v87 & v88) != 0) != ((*(v85 + 8) & v88) != 0))
                {
                  break;
                }

                v86 += 4;
                if (v86 == 8)
                {
                  if ((v87 & 1) == 0)
                  {
                    goto LABEL_130;
                  }

                  goto LABEL_123;
                }
              }

              if ((v87 & v88) == 0)
              {
                v84 = v85;
              }

              if (*(v84 + 8))
              {
LABEL_123:
                v89 = *v84;
                if (v89 && os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
                {
                  v90 = v53[2];
                  sub_23148(__p, v90 + 2);
                  v91 = v111 >= 0 ? __p : __p[0];
                  *v113 = 136315906;
                  *&v113[4] = "DeviceManager.cpp";
                  *&v113[12] = 1024;
                  *&v113[14] = 63;
                  *&v113[18] = 2048;
                  *&v113[20] = v90;
                  *&v113[28] = 2080;
                  *&v113[30] = v91;
                  _os_log_impl(&dword_0, v89, OS_LOG_TYPE_DEBUG, "%25s:%-5d Immediately deleting device %p (%s).", v113, 0x26u);
                  if (v111 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

LABEL_130:
              v53 = v53[1];
            }

            while (v53 != &v107);
          }

          v92 = sub_5544(7);
          v93 = *v92;
          if (*v92 && os_log_type_enabled(*v92, OS_LOG_TYPE_ERROR))
          {
            *v113 = 136315394;
            *&v113[4] = "DeviceManager.cpp";
            *&v113[12] = 1024;
            *&v113[14] = 69;
            _os_log_impl(&dword_0, v93, OS_LOG_TYPE_ERROR, "%25s:%-5d Unable to locate a valid serialization context. Deleting the device synchronously. This may lead to a crash if someone tries to access it or its controls subsequently.", v113, 0x12u);
          }

          v62 = 0;
        }

        sub_240DF0(qword_70A338, &v107, v62);
      }

      if (*&buf[40])
      {
        exception = __cxa_allocate_exception(0x58uLL);
        sub_24125C(v113, buf);
        sub_2414F0(exception, v113);
      }

      sub_87980(&v107);
      v83 = buf;
    }

    else
    {
      memset(v113, 0, 48);
      LOBYTE(v107) = 1;
      v108 = a3;
      if (!sub_52604(a3))
      {
        v96 = sub_5544(14);
        v97 = *v96;
        if (*v96)
        {
          if (os_log_type_enabled(*v96, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "PortManager.h";
            *&buf[12] = 1024;
            *&buf[14] = 245;
            _os_log_impl(&dword_0, v97, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Client mutex is not owned by the current thread", buf, 0x12u);
          }
        }
      }

      atomic_fetch_add((sub_809C0() + 656), 1u);
      v65 = a1[1];
      if (a1[2] != v65)
      {
        v66 = a1[4];
        v67 = (v65 + 8 * (v66 >> 7));
        v68 = *v67 + 32 * (v66 & 0x7F);
        v69 = *(v65 + (((a1[5] + v66) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v66) & 0x7F);
        if (v68 != v69)
        {
          v70 = &unk_6F6000;
          do
          {
            v71 = sub_5544(7);
            v72 = *v71;
            if (*v71 && os_log_type_enabled(*v71, OS_LOG_TYPE_DEFAULT))
            {
              v73 = (v68 + 8);
              if (*(v68 + 31) < 0)
              {
                v73 = *v73;
              }

              v74 = *v68;
              *buf = 136316162;
              *&buf[4] = "DeviceManager.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 359;
              *&buf[18] = 2080;
              *&buf[20] = "Added";
              *&buf[28] = 1024;
              *&buf[30] = v74;
              *&buf[34] = 2080;
              *&buf[36] = v73;
              _os_log_impl(&dword_0, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Handling device state [%s] for Device ID: %u for UID: %s", buf, 0x2Cu);
            }

            if ((sub_231C4() & 1) != 0 || sub_23238("VA_HandleDeviceArrival", 0x16uLL) != &qword_709F00)
            {
              if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
              {
                *(v70 + 265) = os_log_create("com.apple.coreaudio", "VirtualAudio");
                __cxa_guard_release(&qword_6F6850);
              }

              v75 = os_signpost_id_generate(*(v70 + 265));
              if ((atomic_load_explicit(&qword_6F6850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_6F6850))
              {
                *(v70 + 265) = os_log_create("com.apple.coreaudio", "VirtualAudio");
                __cxa_guard_release(&qword_6F6850);
              }

              if ((v75 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v76 = v70;
                v77 = *(v70 + 265);
                if (os_signpost_enabled(v77))
                {
                  v78 = (v68 + 8);
                  if (*(v68 + 31) < 0)
                  {
                    v78 = *v78;
                  }

                  v79 = *v68;
                  *buf = 67109378;
                  *&buf[4] = v79;
                  *&buf[8] = 2080;
                  *&buf[10] = v78;
                  _os_signpost_emit_with_name_impl(&dword_0, v77, OS_SIGNPOST_INTERVAL_BEGIN, v75, "VA_HandleDeviceArrival", "Adding device, ID: %u for UID: %s", buf, 0x12u);
                }

                v70 = v76;
              }
            }

            else
            {
              v75 = 0;
            }

            __p[0] = v75;
            v80 = sub_5544(43);
            if (*(v80 + 8))
            {
              v81 = *v80;
              if (*v80)
              {
                if (os_log_type_enabled(*v80, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  *&buf[4] = "SignpostUtilities.h";
                  *&buf[12] = 1024;
                  *&buf[14] = 105;
                  *&buf[18] = 2080;
                  *&buf[20] = "kHandleDeviceArrival";
                  _os_log_impl(&dword_0, v81, OS_LOG_TYPE_DEBUG, "%25s:%-5d Starting measurement for signpost %s", buf, 0x1Cu);
                }
              }
            }

            sub_242AA8(a3, v68);
            sub_244F40(__p);
            v68 += 32;
            if (v68 - *v67 == 4096)
            {
              v82 = v67[1];
              ++v67;
              v68 = v82;
            }
          }

          while (v68 != v69);
        }
      }

      if (*&v113[40])
      {
        v99 = __cxa_allocate_exception(0x58uLL);
        sub_24125C(buf, v113);
        sub_2414F0(v99, buf);
      }

      sub_240CCC(&v107);
      v83 = v113;
    }

    sub_240A84(v83);
    sub_240A84(v101);
    sub_240B30(&v102);
    sub_47C90(a3);
  }

  else
  {
    v63 = sub_5544(7);
    v64 = *v63;
    if (*v63 && os_log_type_enabled(*v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "DeviceManager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 278;
      _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "%25s:%-5d clientData is NULL", buf, 0x12u);
    }
  }
}

void sub_24096C()
{
  __cxa_end_catch();
  sub_240CCC(&v0);
  JUMPOUT(0x240A18);
}

void sub_240980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  sub_240CCC(&a34);
  sub_87980(&a31);
  JUMPOUT(0x240A50);
}

void sub_2409A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_240A84(va);
  sub_240CCC(&v36);
  JUMPOUT(0x240A18);
}

void sub_2409B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_240A84(va);
  __cxa_free_exception(v36);
  JUMPOUT(0x2409F4);
}

void sub_240A20(void *a1, int a2)
{
  if (a2)
  {
    sub_1CC130(a1);
  }

  JUMPOUT(0x240A7CLL);
}

uint64_t sub_240A84(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return sub_241B84(a1);
}

uint64_t sub_240B30(uint64_t a1)
{
  if (std::uncaught_exceptions() > *a1)
  {
    v2 = sub_5544(7);
    v3 = *v2;
    if (*v2 && os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "DeviceManager.cpp";
      v11 = 1024;
      v12 = 493;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Error Occured handling a Device Update", buf, 0x12u);
    }

    v4 = sub_5544(7);
    v5 = *v4;
    if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
    {
      sub_2422E0(&__p, *(a1 + 16), (a1 + 8));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v10 = "DeviceManager.cpp";
      v11 = 1024;
      v12 = 494;
      v13 = 2080;
      v14 = p_p;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Cached Device List: %s", buf, 0x1Cu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_87980((a1 + 8));
  return a1;
}

void sub_240CC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1CC130(a1);
}

unsigned __int8 *sub_240CCC(unsigned __int8 *a1)
{
  if (*(a1 + 1))
  {
    operator new();
  }

  v4 = 0;
  v2 = sub_809C0();
  sub_2551D4(v2, *a1);
  sub_242A48(&v4);
  return a1;
}

void sub_240DF0(unint64_t *a1, void *a2, int a3)
{
  if (a2[2])
  {
    if (a3)
    {
      sub_68E60();
      *buf = buf;
      *&buf[8] = buf;
      *&buf[16] = 0;
      v4 = a2[2];
      if (v4)
      {
        v6 = *a2;
        v5 = a2[1];
        v7 = *(*a2 + 8);
        v8 = *v5;
        *(v8 + 8) = v7;
        *v7 = v8;
        v9 = *buf;
        *(*buf + 8) = v5;
        *v5 = v9;
        *(v6 + 8) = buf;
        *buf = v6;
        *&buf[16] = v4;
        a2[2] = 0;
      }

      operator new();
    }

    v10 = atomic_load(a1);
    if (v10 != pthread_self())
    {
      v11 = sub_5544(14);
      v12 = *v11;
      if (*v11)
      {
        if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = "ObjectDestructionManager.h";
          *&buf[12] = 1024;
          *&buf[14] = 72;
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Synchronously deleting objects from outside of a managed ObjectDestruction event", buf, 0x12u);
        }
      }
    }

    while (a2[2])
    {
      v13 = a2[1];
      *buf = *(v13 + 16);
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      sub_241E80(buf);
      if (*&buf[8])
      {
        sub_1A8C0(*&buf[8]);
      }

      sub_241E28(a2, v13);
    }
  }
}

void sub_241088(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v4 - v5) << 7) - 1;
  }

  v9 = a1[4];
  v8 = a1[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x400)
    {
      v11 = a1[3];
      v12 = v11 - *a1;
      if (v6 < v12)
      {
        if (v11 != v4)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      v15 = a1;
      sub_241DE0(v13);
    }

    a1[4] = v9 - 1024;
    *&v14 = *v5;
    a1[1] = (v5 + 8);
    sub_241BD4(a1, &v14);
    v5 = a1[1];
    v8 = a1[5];
    v10 = a1[4] + v8;
  }

  *(*&v5[(v10 >> 7) & 0x1FFFFFFFFFFFFF8] + 4 * (v10 & 0x3FF)) = *a2;
  a1[5] = v8 + 1;
}

void sub_241230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

_OWORD *sub_24125C(_OWORD *a1, void *a2)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  v2 = a2[1];
  if (a2[2] != v2)
  {
    v3 = a2[4];
    v4 = (v3 >> 7) & 0x1FFFFFFFFFFFFF8;
    v5 = v3 & 0x3FF;
    v6 = a2[5] + v3;
    v7 = (v6 >> 7) & 0x1FFFFFFFFFFFFF8;
    if (*(v2 + v7) + 4 * (v6 & 0x3FF) != *(v2 + v4) + 4 * (a2[4] & 0x3FFLL))
    {
      v8 = v6 & 0x3FF | ((v7 - v4) << 7);
      v9 = v8 - v5;
      if (v8 != v5)
      {
        if (((v9 + 1) & 0x3FF) != 0)
        {
          v10 = ((v9 + 1) >> 10) + 1;
        }

        else
        {
          v10 = (v9 + 1) >> 10;
        }

        sub_241DE0(v10);
      }
    }
  }

  return a1;
}

uint64_t sub_2414F0(uint64_t a1, void *a2)
{
  v4 = std::runtime_error::runtime_error(a1, "DeviceUpdate failed");
  v4->__vftable = off_6BA900;
  v5 = v4 + 1;
  sub_53E8(&v4[1].__vftable, "DeviceUpdate failed");
  sub_24125C((a1 + 40), a2);
  sub_63250(&v26);
  v6 = a2[4];
  v7 = v6 >> 10;
  v8 = a2[1];
  v9 = (v8 + 8 * (v6 >> 10));
  if (a2[2] == v8)
  {
    v15 = a2[5] + v6;
    if (v7 == v15 >> 10)
    {
      goto LABEL_18;
    }

    v11 = 0;
    v14 = 0;
    v13 = (v8 + 8 * (v15 >> 10));
    v16 = *v9 + 4096;
    do
    {
LABEL_11:
      sub_22564(&v26, " ", 1);
      std::ostream::operator<<();
      v11 += 4;
    }

    while (v11 != v16);
    goto LABEL_12;
  }

  v10 = *(v8 + 8 * v7);
  v11 = v10 + 4 * (a2[4] & 0x3FFLL);
  v12 = a2[5] + v6;
  v13 = (v8 + 8 * (v12 >> 10));
  v14 = *v13 + 4 * (v12 & 0x3FF);
  if (v7 == v12 >> 10)
  {
    for (; v11 != v14; v11 += 4)
    {
      sub_22564(&v26, " ", 1);
      std::ostream::operator<<();
    }

    goto LABEL_18;
  }

  v16 = v10 + 4096;
  if (v10 + 4096 != v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  for (i = v9 + 1; i != v13; ++i)
  {
    for (j = 0; j != 4096; j += 4)
    {
      sub_22564(&v26, " ", 1);
      std::ostream::operator<<();
    }
  }

  for (k = *v13; k != v14; k += 4)
  {
    sub_22564(&v26, " ", 1);
    std::ostream::operator<<();
  }

LABEL_18:
  if ((v33 & 0x10) != 0)
  {
    v21 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v21 = v29;
    }

    locale = v28[4].__locale_;
  }

  else
  {
    if ((v33 & 8) == 0)
    {
      v20 = 0;
      HIBYTE(v25) = 0;
      goto LABEL_31;
    }

    locale = v28[1].__locale_;
    v21 = v28[3].__locale_;
  }

  v20 = v21 - locale;
  if ((v21 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_755AC();
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v25) = v21 - locale;
  if (v20)
  {
    memmove(&__dst, locale, v20);
  }

LABEL_31:
  *(&__dst.__vftable + v20) = 0;
  if (*(a1 + 39) < 0)
  {
    operator delete(v5->__vftable);
  }

  *v5 = __dst;
  v5[1].__vftable = v25;
  if (v31 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v28);
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_241904(_Unwind_Exception *a1)
{
  sub_240A84((v1 + 40));
  if (*(v1 + 39) < 0)
  {
    operator delete(*v2);
  }

  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_24196C(uint64_t a1)
{
  *a1 = off_6BA900;
  sub_240A84((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_2419D0(uint64_t a1)
{
  result = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    return *result;
  }

  return result;
}

void sub_2419EC(uint64_t a1)
{
  *a1 = off_6BA900;
  sub_240A84((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_241A64(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t sub_241B84(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_241BD4(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_241DE0(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_241CD8(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_241DE0(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_241DE0(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_6ACD8();
}

void sub_241E28(uint64_t a1, uint64_t *__p)
{
  v4 = *__p;
  v3 = __p[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  --*(a1 + 16);
  v5 = __p[3];
  if (v5)
  {
    sub_1A8C0(v5);
  }

  operator delete(__p);
}

void sub_241E80(void *a1)
{
  if (!*a1)
  {
    v6 = sub_5544(14);
    v7 = *v6;
    if (*v6 && os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "ObjectDestructionManager.h";
      v11 = 1024;
      v12 = 156;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inObject.get() is NULL]: Null object", &v9, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Null object");
  }

  v2 = a1[1];
  if (!v2 || *(v2 + 8))
  {
    v4 = sub_5544(14);
    v5 = *v4;
    if (*v4)
    {
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "ObjectDestructionManager.h";
        v11 = 1024;
        v12 = 157;
        _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: Shared object has other references!", &v9, 0x12u);
      }
    }
  }

  v3 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  if (v3)
  {
    sub_1A8C0(v3);
  }
}

uint64_t **sub_242030(uint64_t **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_87980(v1);
    operator delete();
  }

  return a1;
}

void sub_242080(uint64_t *a1)
{
  v1 = a1;
  sub_8703C();
  operator new();
}

void sub_2421FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10)
{
  sub_87980(&a10);
  sub_242030(&a9);
  _Unwind_Resume(a1);
}

void sub_242248(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_2422E0(&v4, *(a1 + 24), (a1 + 16));
  v3 = std::string::insert(&v4, 0, "Destroying core object(s): ", 0x1BuLL);
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_2422C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_2422E0(std::string *a1, void *a2, void *a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a1, "{ ", 2uLL);
  if (a2 != a3)
  {
    while (1)
    {
      v7 = a2[2];
      v8 = a2[3];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_23148(__p, v7 + 2);
      v9 = (v12 & 0x80u) == 0 ? __p : __p[0];
      v10 = (v12 & 0x80u) == 0 ? v12 : __p[1];
      std::string::append(a1, v9, v10);
      if ((v12 & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p[0]);
      if (v8)
      {
        goto LABEL_13;
      }

LABEL_14:
      a2 = a2[1];
      if (a2 == a3)
      {
        return std::string::append(a1, " }", 2uLL);
      }

      std::string::append(a1, ", ", 2uLL);
    }

    if (!v8)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1A8C0(v8);
    goto LABEL_14;
  }

  return std::string::append(a1, " }", 2uLL);
}

void sub_2423EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_242438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = qword_70A338;
  if (atomic_load(qword_70A338))
  {
    v6 = atomic_load(qword_70A338);
    if (v6 != pthread_self())
    {
      v15 = sub_5544(14);
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "ObjectDestructionManager.h";
          v19 = 1024;
          v20 = 124;
          _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d ASSERTION FAILURE: mExecutionThread has been set outside of this command's execution", buf, 0x12u);
        }
      }
    }
  }

  v7 = atomic_load(v4);
  if (v7 == pthread_self())
  {
    v8 = sub_5544(14);
    v9 = sub_5544(16);
    v10 = 0;
    *buf = 0x100000002;
    v11 = *(v8 + 8);
    while (1)
    {
      v12 = *&buf[v10];
      if (((v11 & v12) != 0) != ((*(v9 + 8) & v12) != 0))
      {
        break;
      }

      v10 += 4;
      if (v10 == 8)
      {
        goto LABEL_10;
      }
    }

    if ((v11 & v12) == 0)
    {
      v8 = v9;
    }

LABEL_10:
    v13 = *v8;
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "ObjectDestructionManager.h";
      v19 = 1024;
      v20 = 127;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Called recursively", buf, 0x12u);
    }
  }

  v17[0] = off_6C0778;
  v17[1] = v4;
  v17[3] = v17;
  sub_51FD0(buf, 0, v17);
  sub_4C70(v17);
  atomic_store(pthread_self(), v4);
  sub_240DF0(v4, (a1 + 16), 0);
  sub_21991C(a2, 1920099684);
  return sub_53BA4(buf);
}

void sub_24266C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_1CC130(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2426C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_6C0778;
  a2[1] = v2;
  return result;
}

void sub_242758(uint64_t *a1)
{
  sub_242790(a1);

  operator delete();
}

uint64_t *sub_242790(uint64_t *a1)
{
  v2 = a1 + 2;
  if (a1[4])
  {
    v3 = sub_5544(14);
    v4 = sub_5544(16);
    v5 = 0;
    *__p = 0x100000002;
    v6 = *(v3 + 8);
    while (1)
    {
      v7 = *&__p[v5];
      if (((v6 & v7) != 0) != ((*(v4 + 8) & v7) != 0))
      {
        break;
      }

      v5 += 4;
      if (v5 == 8)
      {
        goto LABEL_8;
      }
    }

    if ((v6 & v7) == 0)
    {
      v3 = v4;
    }

LABEL_8:
    v8 = *v3;
    if (v8)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = a1[3];
        memset(&v16, 0, sizeof(v16));
        std::string::append(&v16, "{ ", 2uLL);
        if (v9 != v2)
        {
          while (1)
          {
            v10 = v9[2];
            v11 = v9[3];
            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_23148(__p, v10 + 2);
            v12 = SBYTE3(v19) >= 0 ? __p : *__p;
            v13 = SBYTE3(v19) >= 0 ? BYTE3(v19) : *&__p[8];
            std::string::append(&v16, v12, v13);
            if ((SBYTE3(v19) & 0x80000000) == 0)
            {
              break;
            }

            operator delete(*__p);
            if (v11)
            {
              goto LABEL_21;
            }

LABEL_22:
            v9 = v9[1];
            if (v9 == v2)
            {
              goto LABEL_26;
            }

            std::string::append(&v16, ", ", 2uLL);
          }

          if (!v11)
          {
            goto LABEL_22;
          }

LABEL_21:
          sub_1A8C0(v11);
          goto LABEL_22;
        }

LABEL_26:
        std::string::append(&v16, " }", 2uLL);
        if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = &v16;
        }

        else
        {
          v14 = v16.__r_.__value_.__r.__words[0];
        }

        *__p = 136315650;
        *&__p[4] = "ObjectDestructionManager.h";
        *&__p[12] = 1024;
        *&__p[14] = 115;
        v18 = 2080;
        v19 = v14;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Destructor called without an intervening call to Execute. Contained objects (%s) will be leaked!.", __p, 0x1Cu);
        if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v16.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  sub_87980(v2);
  return a1;
}

void sub_2429D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1CC130(exception_object);
}

uint64_t *sub_242A48(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 8) == 1)
    {
      sub_47BD8(*v1);
    }

    operator delete();
  }

  return a1;
}

void sub_242AA8(uint64_t a1, unsigned int *a2)
{
  v4 = sub_5544(7);
  v5 = *v4;
  if (*v4 && os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
  {
    v6 = *a2;
    v7 = a2 + 2;
    if (*(a2 + 31) < 0)
    {
      v7 = *(a2 + 1);
    }

    *buf = 136315906;
    *&buf[4] = "DeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 293;
    v80 = 1024;
    *v81 = v6;
    *&v81[4] = 2080;
    *&v81[6] = v7;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Creating Device ID: %u with UID: %s", buf, 0x22u);
  }

  v8 = a1 + 296;
  v9 = *(a1 + 304);
  if (v9 == a1 + 296)
  {
    goto LABEL_15;
  }

  v10 = *a2;
  while ((*(**(v9 + 16) + 120))(*(v9 + 16)) != v10)
  {
    v9 = *(v9 + 8);
    if (v9 == v8)
    {
      goto LABEL_15;
    }
  }

  if (v9 == v8)
  {
LABEL_15:
    v13 = *a2;
    v14 = a2 + 2;
    v73 = 0uLL;
    v15 = *(a2 + 31);
    if ((v15 & 0x80) == 0)
    {
      if (*(a2 + 31) > 9u)
      {
        if (*(a2 + 31) > 0xBu)
        {
          if (v15 != 12)
          {
            if (v15 != 14)
            {
              if (v15 != 16)
              {
                goto LABEL_190;
              }

              if (*v14 != 0x6964754120425355 || *(a2 + 2) != 0x74757074754F206FLL)
              {
                if (*v14 != 0x6E6F53656C707041 || *(a2 + 2) != 0x5053446472696267)
                {
                  goto LABEL_190;
                }

LABEL_87:
                operator new();
              }

LABEL_182:
              operator new();
            }

            if (*v14 != 0x646E616265736142 || *(a2 + 14) != 0x6563696F5620646ELL)
            {
LABEL_190:
              if (sub_29C7A0(a2 + 1, "Penrose"))
              {
                goto LABEL_191;
              }

              if (sub_29C7A0(a2 + 1, "Halogen"))
              {
                operator new();
              }

              v62 = sub_29C7A0(a2 + 1, "MaggieDebug");
              if (v62 || (v62 = sub_29C7A0(a2 + 1, "AudioDebug")) || (v62 = sub_29C7A0(a2 + 1, "AudioDebug2")))
              {
                kind = caulk::build::detail::get_kind(v62);
                if ((kind & 1) != 0 || (caulk::build::detail::get_kind(kind) & 2) != 0)
                {
                  operator new();
                }
              }

              if (sub_29C7A0(a2 + 1, "DSP Debug1") || sub_29C7A0(a2 + 1, "DSP Debug2"))
              {
                operator new();
              }

              v64 = sub_29C7A0(a2 + 1, "Haptic Debug");
              if (v64)
              {
                v65 = caulk::build::detail::get_kind(v64);
                if ((v65 & 1) != 0 || (caulk::build::detail::get_kind(v65) & 2) != 0)
                {
                  operator new();
                }
              }

              if (sub_29C7A0(a2 + 1, "Virtual eARC"))
              {
                operator new();
              }

              if (sub_29C7A0(a2 + 1, "Squid Audio"))
              {
                operator new();
              }

              if (sub_29C7A0(a2 + 1, "HPMic"))
              {
                operator new();
              }

              if (sub_29C7A0(a2 + 1, "Receiver"))
              {
                operator new();
              }

              if (sub_29C7A0(a2 + 1, "LPMicInjection"))
              {
                operator new();
              }

              *&inAddress.mSelector = 0x676C6F627472616ELL;
              inAddress.mElement = 0;
              ioDataSize = 4;
              outData = 0;
              PropertyData = AudioObjectGetPropertyData(v13, &inAddress, 0, 0, &ioDataSize, &outData);
              if (PropertyData)
              {
                v67 = *sub_5544(7);
                v72 = 0u;
                if (v67 && os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
                {
                  sub_22170(__p, PropertyData);
                  v68 = v75 >= 0 ? __p : __p[0];
                  v69 = *(a2 + 31) >= 0 ? a2 + 2 : *(a2 + 1);
                  *buf = 136316418;
                  *&buf[4] = "DeviceFactory_Aspen.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 210;
                  v80 = 1024;
                  *v81 = PropertyData;
                  *&v81[4] = 2080;
                  *&v81[6] = v68;
                  v82 = 1024;
                  v83 = v13;
                  v84 = 2080;
                  v85 = v69;
                  _os_log_impl(&dword_0, v67, OS_LOG_TYPE_ERROR, "%25s:%-5d Error %d ('%s') getting transport type for PhysicalDevice with AudioObjectID %u and UID %s", buf, 0x32u);
                  if (v75 < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

              else
              {
                v72 = 0u;
                if (outData <= 1835169138)
                {
                  if (outData <= 1667463019)
                  {
                    if (outData == 1634300528)
                    {
                      operator new();
                    }

                    if (outData == 1651275109)
                    {
                      v71 = sub_2F1794(v13, a2 + 1);
                      sub_29CF54(__p, v71);
                    }

                    if (outData != 1667463012)
                    {
                      goto LABEL_279;
                    }
                  }

                  else
                  {
                    if (outData > 1685090931)
                    {
                      if (outData == 1685090932 || outData == 1751412073)
                      {
                        operator new();
                      }

                      goto LABEL_279;
                    }

                    if (outData != 1667463020)
                    {
                      if (outData == 1668506482 && sub_311548())
                      {
                        operator new();
                      }

                      goto LABEL_279;
                    }
                  }

                  operator new();
                }

                if (outData <= 1937011306)
                {
                  if (outData == 1835169139)
                  {
                    operator new();
                  }

                  if (outData == 1853189228)
                  {
                    operator new();
                  }

                  v70 = 1885563168;
                }

                else
                {
                  if (outData > 1970496031)
                  {
                    if (outData == 1970496032)
                    {
                      operator new();
                    }

                    if (outData == 1986818665)
                    {
                      operator new();
                    }

                    goto LABEL_279;
                  }

                  if (outData == 1937011307)
                  {
                    operator new();
                  }

                  v70 = 1953002862;
                }

                if (outData == v70)
                {
                  operator new();
                }
              }

LABEL_279:
              v73 = v72;
              if (!v72)
              {
                v55 = sub_5544(7);
                v56 = *v55;
                if (*v55)
                {
                  if (os_log_type_enabled(*v55, OS_LOG_TYPE_INFO))
                  {
                    if (*(a2 + 31) >= 0)
                    {
                      v57 = a2 + 2;
                    }

                    else
                    {
                      v57 = *(a2 + 1);
                    }

                    *buf = 136315906;
                    *&buf[4] = "DeviceFactory_Aspen.cpp";
                    *&buf[12] = 1024;
                    *&buf[14] = 303;
                    v80 = 2080;
                    *v81 = v57;
                    *&v81[8] = 1024;
                    *&v81[10] = v13;
                    _os_log_impl(&dword_0, v56, OS_LOG_TYPE_INFO, "%25s:%-5d Could not create PhysicalDevice from UID: %s, AudioObjectID: %u", buf, 0x22u);
                  }
                }
              }

              if (v73)
              {
                sub_12A818((a1 + 296), &v73);
              }

              v58 = sub_5544(7);
              v59 = *v58;
              if (*v58 && os_log_type_enabled(*v58, OS_LOG_TYPE_INFO))
              {
                v60 = *a2;
                if (*(a2 + 31) >= 0)
                {
                  v61 = a2 + 2;
                }

                else
                {
                  v61 = *(a2 + 1);
                }

                *buf = 136315906;
                *&buf[4] = "DeviceManager.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 339;
                v80 = 1024;
                *v81 = v60;
                *&v81[4] = 2080;
                *&v81[6] = v61;
                _os_log_impl(&dword_0, v59, OS_LOG_TYPE_INFO, "%25s:%-5d PhysicalDevice to add could not be created. Skipping. ID: %u; UID: %s.", buf, 0x22u);
              }

              if (*(&v73 + 1))
              {
                sub_1A8C0(*(&v73 + 1));
              }

              return;
            }

LABEL_183:
            operator new();
          }

          if (*v14 != 0x754F6E6966667550 || a2[4] != 1953853556)
          {
            goto LABEL_190;
          }

LABEL_103:
          operator new();
        }

        if (v15 != 10)
        {
          if (*v14 != 0x6E496E6966667550 || *(a2 + 11) != 0x7475706E496E6966)
          {
            if (*v14 != 0x6964754120504F41 || *(a2 + 11) != 0x312D6F6964754120)
            {
              if (*v14 != 0x206C617469676944 || *(a2 + 11) != 0x63694D206C617469)
              {
                goto LABEL_190;
              }

              goto LABEL_178;
            }

LABEL_179:
            operator new();
          }

LABEL_180:
          operator new();
        }

        v24 = *(a2 + 8);
        v25 = *v14 == 0x4D6C617469676944;
        v26 = 25449;
LABEL_173:
        if (!v25 || v24 != v26)
        {
          goto LABEL_190;
        }

LABEL_178:
        operator new();
      }

      if (*(a2 + 31) <= 6u)
      {
        if (v15 != 3)
        {
          if (v15 != 5)
          {
            goto LABEL_190;
          }

          if (*v14 != 1701080899 || *(a2 + 12) != 99)
          {
            goto LABEL_190;
          }

LABEL_115:
          operator new();
        }

LABEL_172:
        v24 = *(a2 + 10);
        v25 = *v14 == 26957;
        v26 = 99;
        goto LABEL_173;
      }

      if (v15 != 7)
      {
        if (v15 != 8)
        {
          goto LABEL_190;
        }

        if (*v14 != 0x726F746175746341)
        {
          if (*v14 != 0x4D41444920425355)
          {
            goto LABEL_190;
          }

LABEL_60:
          operator new();
        }

        goto LABEL_221;
      }

      if (*v14 != 1634037843 || *(a2 + 11) != 1919249249)
      {
        if (*v14 == 909201480 && *(a2 + 11) == 1667845430)
        {
          goto LABEL_179;
        }

        goto LABEL_166;
      }

LABEL_181:
      operator new();
    }

    v18 = *(a2 + 2);
    if (v18 <= 10)
    {
      switch(v18)
      {
        case 5:
          if (**v14 == 1701080899 && *(*v14 + 4) == 99)
          {
            goto LABEL_115;
          }

          break;
        case 7:
          v45 = *v14;
          if (**v14 == 1634037843 && *(*v14 + 3) == 1919249249)
          {
            goto LABEL_181;
          }

          v47 = *v45;
          v48 = *(v45 + 3);
          if (v47 == 909201480 && v48 == 1667845430)
          {
            goto LABEL_179;
          }

          if ((v15 & 0x80) == 0)
          {
LABEL_164:
            if (v15 == 3)
            {
              goto LABEL_172;
            }

            if (v15 != 7)
            {
              goto LABEL_190;
            }

LABEL_166:
            v50 = *v14 == 1802985800 && *(a2 + 11) == 1735289195;
            v44 = a2 + 2;
            if (v50)
            {
              goto LABEL_191;
            }

            goto LABEL_186;
          }

          break;
        case 8:
          if (**v14 == 0x4D41444920425355)
          {
            goto LABEL_60;
          }

          if (**v14 == 0x726F746175746341)
          {
LABEL_221:
            operator new();
          }

          break;
      }
    }

    else if (v18 > 13)
    {
      if (v18 == 14)
      {
        if (**v14 == 0x646E616265736142 && *(*v14 + 6) == 0x6563696F5620646ELL)
        {
          goto LABEL_183;
        }
      }

      else if (v18 == 16)
      {
        v27 = *v14;
        if (**v14 == 0x6964754120425355 && *(*v14 + 8) == 0x74757074754F206FLL)
        {
          goto LABEL_182;
        }

        v30 = *v27;
        v29 = v27[1];
        if (v30 == 0x6E6F53656C707041 && v29 == 0x5053446472696267)
        {
          goto LABEL_87;
        }
      }
    }

    else if (v18 == 11)
    {
      if (**v14 == 0x6E496E6966667550 && *(*v14 + 3) == 0x7475706E496E6966)
      {
        goto LABEL_180;
      }

      if (**v14 == 0x6964754120504F41 && *(*v14 + 3) == 0x312D6F6964754120)
      {
        goto LABEL_179;
      }
    }

    else if (v18 == 12 && **v14 == 0x754F6E6966667550 && *(*v14 + 8) == 1953853556)
    {
      goto LABEL_103;
    }

    if (*(a2 + 2) == 11 && **v14 == 0x206C617469676944 && *(*v14 + 3) == 0x63694D206C617469)
    {
      goto LABEL_178;
    }

    if (*(a2 + 2) != 10)
    {
      goto LABEL_141;
    }

    if (**v14 == 0x4D6C617469676944 && *(*v14 + 8) == 25449)
    {
      goto LABEL_178;
    }

    if ((v15 & 0x80) != 0)
    {
LABEL_141:
      if (*(a2 + 2) == 3)
      {
        if (**v14 == 26957 && *(*v14 + 2) == 99)
        {
          goto LABEL_178;
        }

        if ((v15 & 0x80) == 0)
        {
          goto LABEL_190;
        }
      }

      if (*(a2 + 2) != 7)
      {
        goto LABEL_184;
      }

      if (**v14 == 1802985800 && *(*v14 + 3) == 1735289195)
      {
        goto LABEL_191;
      }

      if ((v15 & 0x80) != 0)
      {
LABEL_184:
        if (*(a2 + 2) != 7)
        {
          goto LABEL_190;
        }

        v44 = *v14;
      }

      else
      {
        v44 = a2 + 2;
        if (v15 != 7)
        {
          goto LABEL_190;
        }
      }

LABEL_186:
      v52 = *v44;
      v53 = *(v44 + 3);
      if (v52 != 1667853382 || v53 != 1919249251)
      {
        goto LABEL_190;
      }

LABEL_191:
      operator new();
    }

    goto LABEL_164;
  }

  v11 = sub_5544(7);
  v12 = *v11;
  if (*v11 && os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "DeviceManager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 301;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d PhysicalDevice to add already exists in the DeviceManager database", buf, 0x12u);
  }
}