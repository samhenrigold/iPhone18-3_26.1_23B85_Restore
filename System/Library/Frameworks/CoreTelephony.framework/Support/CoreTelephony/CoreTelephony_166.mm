void sub_10140F3D8(AudioCommandDriverDelegateInterface *this)
{
  *this = off_101F384A0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioCommandDriverDelegateInterface::~AudioCommandDriverDelegateInterface(this);
}

void sub_10140F434(AudioCommandDriverDelegateInterface *this)
{
  *this = off_101F384A0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioCommandDriverDelegateInterface::~AudioCommandDriverDelegateInterface(this);

  operator delete();
}

uint64_t sub_10140F4A4(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

xpc_object_t *sub_10140F508(xpc_object_t *a1)
{
  xpc_release(a1[1]);
  a1[1] = 0;
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_10140F54C(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 136) + 24))(*(**a1 + 136));
  operator delete();
}

void sub_10140F5F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v56 = 1;
  v55 = 0;
  v3 = sub_10140C0EC(v2, &v55, &v56);
  v4 = v56;
  v5 = (*(**(v2 + 48) + 16))(*(v2 + 48), v56);
  v54 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v54 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v54 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  v54 = v8;
LABEL_9:
  xpc_release(v7);
  if (v55 == 1)
  {
    v9 = *v5;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Getting vocoderInfo for an active call on AP media stack", buf, 2u);
    }

    v10 = *(v2 + 368);
    if (v10)
    {
      v11 = v2 + 368;
      do
      {
        if (*(v10 + 28) >= v4)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 28) < v4));
      }

      while (v10);
      if (v11 != v2 + 368 && v4 >= *(v11 + 28))
      {
        sub_10095B818(*(v11 + 36));
        memset(buf, 0, sizeof(buf));
        v58 = 0;
        ctu::cf::assign();
        *v50 = *buf;
        v51 = v58;
        if (v58 >= 0)
        {
          v12 = v50;
        }

        else
        {
          v12 = v50[0];
        }

        v52 = xpc_string_create(v12);
        if (!v52)
        {
          v52 = xpc_null_create();
        }

        memset(buf, 0, sizeof(buf));
        v58 = 0;
        ctu::cf::assign();
        *__p = *buf;
        v47 = v58;
        v13 = *buf;
        if (v58 >= 0)
        {
          v13 = __p;
        }

        v48 = &v54;
        v49 = v13;
        sub_10000F688(&v48, &v52, &v53);
        xpc_release(v53);
        v53 = 0;
        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p[0]);
        }

        xpc_release(v52);
        v52 = 0;
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        v44 = xpc_int64_create(*(v11 + 48));
        if (!v44)
        {
          v44 = xpc_null_create();
        }

        memset(buf, 0, sizeof(buf));
        v58 = 0;
        ctu::cf::assign();
        *v50 = *buf;
        v51 = v58;
        v14 = *buf;
        if (v58 >= 0)
        {
          v14 = v50;
        }

        __p[0] = &v54;
        __p[1] = v14;
        sub_10000F688(__p, &v44, &object);
        xpc_release(object);
        object = 0;
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        xpc_release(v44);
        v44 = 0;
        v42 = xpc_int64_create(*(v2 + 176));
        if (!v42)
        {
          v42 = xpc_null_create();
        }

        memset(buf, 0, sizeof(buf));
        v58 = 0;
        ctu::cf::assign();
        *v50 = *buf;
        v51 = v58;
        v15 = *buf;
        if (v58 >= 0)
        {
          v15 = v50;
        }

        __p[0] = &v54;
        __p[1] = v15;
        sub_10000F688(__p, &v42, &v43);
        xpc_release(v43);
        v43 = 0;
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        xpc_release(v42);
        v42 = 0;
        if (*(v11 + 36) > 1u)
        {
          AudioCodecInfo::getEvsBitrate(v50, (v11 + 32));
          if (v51 >= 0)
          {
            v22 = v50;
          }

          else
          {
            v22 = v50[0];
          }

          v40 = xpc_string_create(v22);
          if (!v40)
          {
            v40 = xpc_null_create();
          }

          memset(buf, 0, sizeof(buf));
          v58 = 0;
          ctu::cf::assign();
          *__p = *buf;
          v47 = v58;
          v23 = *buf;
          if (v58 >= 0)
          {
            v23 = __p;
          }

          v48 = &v54;
          v49 = v23;
          sub_10000F688(&v48, &v40, &v41);
          xpc_release(v41);
          v41 = 0;
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }

          xpc_release(v40);
          v40 = 0;
          if (SHIBYTE(v51) < 0)
          {
            operator delete(v50[0]);
          }

          AudioCodecInfo::getEvsBandwidth(v50, (v11 + 32));
          if (v51 >= 0)
          {
            v24 = v50;
          }

          else
          {
            v24 = v50[0];
          }

          v38 = xpc_string_create(v24);
          if (!v38)
          {
            v38 = xpc_null_create();
          }

          memset(buf, 0, sizeof(buf));
          v58 = 0;
          ctu::cf::assign();
          *__p = *buf;
          v47 = v58;
          v25 = *buf;
          if (v58 >= 0)
          {
            v25 = __p;
          }

          v48 = &v54;
          v49 = v25;
          sub_10000F688(&v48, &v38, &v39);
          xpc_release(v39);
          v39 = 0;
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }

          xpc_release(v38);
          v38 = 0;
          if (SHIBYTE(v51) < 0)
          {
            operator delete(v50[0]);
          }
        }

        else
        {
          v41 = xpc_int64_create(*(v11 + 40));
          if (!v41)
          {
            v41 = xpc_null_create();
          }

          memset(buf, 0, sizeof(buf));
          v58 = 0;
          ctu::cf::assign();
          *v50 = *buf;
          v51 = v58;
          v16 = *buf;
          if (v58 >= 0)
          {
            v16 = v50;
          }

          __p[0] = &v54;
          __p[1] = v16;
          sub_10000F688(__p, &v41, &v48);
          xpc_release(v48);
          v48 = 0;
          if (SHIBYTE(v51) < 0)
          {
            operator delete(v50[0]);
          }

          xpc_release(v41);
          v41 = 0;
        }
      }
    }

    v36 = xpc_BOOL_create(1);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    memset(buf, 0, sizeof(buf));
    v58 = 0;
    ctu::cf::assign();
    *v50 = *buf;
    v51 = v58;
    v26 = *buf;
    if (v58 >= 0)
    {
      v26 = v50;
    }

    __p[0] = &v54;
    __p[1] = v26;
    sub_10000F688(__p, &v36, &v37);
    xpc_release(v37);
    v37 = 0;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }

    xpc_release(v36);
    v36 = 0;
  }

  else
  {
    if (sub_10095B708(*(v2 + 168)))
    {
      memset(buf, 0, sizeof(buf));
      v58 = 0;
      ctu::cf::assign();
      *v50 = *buf;
      v51 = v58;
      if (v58 >= 0)
      {
        v17 = v50;
      }

      else
      {
        v17 = v50[0];
      }

      v52 = xpc_string_create(v17);
      if (!v52)
      {
        v52 = xpc_null_create();
      }

      memset(buf, 0, sizeof(buf));
      v58 = 0;
      ctu::cf::assign();
      *__p = *buf;
      v47 = v58;
      v18 = *buf;
      if (v58 >= 0)
      {
        v18 = __p;
      }

      v48 = &v54;
      v49 = v18;
      sub_10000F688(&v48, &v52, &v53);
      xpc_release(v53);
      v53 = 0;
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v52);
      v52 = 0;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[0]);
      }

      object = xpc_int64_create(*(v2 + 172));
      if (!object)
      {
        object = xpc_null_create();
      }

      memset(buf, 0, sizeof(buf));
      v58 = 0;
      ctu::cf::assign();
      *v50 = *buf;
      v51 = v58;
      v19 = *buf;
      if (v58 >= 0)
      {
        v19 = v50;
      }

      __p[0] = &v54;
      __p[1] = v19;
      sub_10000F688(__p, &object, &v48);
      xpc_release(v48);
      v48 = 0;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[0]);
      }

      xpc_release(object);
      object = 0;
      v43 = xpc_int64_create(*(v2 + 176));
      if (!v43)
      {
        v43 = xpc_null_create();
      }

      memset(buf, 0, sizeof(buf));
      v58 = 0;
      ctu::cf::assign();
      *v50 = *buf;
      v51 = v58;
      v20 = *buf;
      if (v58 >= 0)
      {
        v20 = v50;
      }

      __p[0] = &v54;
      __p[1] = v20;
      sub_10000F688(__p, &v43, &v44);
      xpc_release(v44);
      v44 = 0;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[0]);
      }

      xpc_release(v43);
      v43 = 0;
    }

    v41 = xpc_BOOL_create(1);
    if (!v41)
    {
      v41 = xpc_null_create();
    }

    memset(buf, 0, sizeof(buf));
    v58 = 0;
    ctu::cf::assign();
    *v50 = *buf;
    v51 = v58;
    v21 = *buf;
    if (v58 >= 0)
    {
      v21 = v50;
    }

    __p[0] = &v54;
    __p[1] = v21;
    sub_10000F688(__p, &v41, &v42);
    xpc_release(v42);
    v42 = 0;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }

    xpc_release(v41);
    v41 = 0;
  }

  if (*(v2 + 280) == 1)
  {
    (*(**(v2 + 136) + 40))(*(v2 + 136));
  }

  if (v3)
  {
    v27 = v55 == 0;
    if (v55)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    *(v2 + 188) = v28;
    if (v27)
    {
      v29 = "BB vocoder";
    }

    else
    {
      v29 = "AP vocoder";
    }

    v34 = xpc_string_create(v29);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    memset(buf, 0, sizeof(buf));
    v58 = 0;
    ctu::cf::assign();
    *v50 = *buf;
    v51 = v58;
    v30 = v50;
    if (v58 < 0)
    {
      v30 = v50[0];
    }

    __p[0] = &v54;
    __p[1] = v30;
    sub_10000F688(__p, &v34, &v35);
    xpc_release(v35);
    v35 = 0;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }
  }

  else
  {
    v31 = *(v2 + 188);
    switch(v31)
    {
      case 0:
        goto LABEL_140;
      case 2:
        v32 = "AP vocoder";
        break;
      case 1:
        v32 = "BB vocoder";
        break;
      default:
        v32 = "AudioStackType Undefined";
        break;
    }

    v34 = xpc_string_create(v32);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    memset(buf, 0, sizeof(buf));
    v58 = 0;
    ctu::cf::assign();
    *v50 = *buf;
    v51 = v58;
    v33 = v50;
    if (v58 < 0)
    {
      v33 = v50[0];
    }

    __p[0] = &v54;
    __p[1] = v33;
    sub_10000F688(__p, &v34, &v35);
    xpc_release(v35);
    v35 = 0;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }
  }

  xpc_release(v34);
  v34 = 0;
LABEL_140:
  __p[0] = v54;
  if (v54)
  {
    xpc_retain(v54);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  *buf = v1[1];
  *&buf[8] = "kAudioVocoderInfo";
  sub_100DAE90C(buf, __p, v50);
  xpc_release(v50[0]);
  v50[0] = 0;
  xpc_release(__p[0]);
  __p[0] = 0;
  xpc_release(v54);
}

void sub_10141015C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, xpc_object_t a15, xpc_object_t a16, xpc_object_t a17, xpc_object_t a18, xpc_object_t a19, xpc_object_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 73) < 0)
  {
    operator delete(*(v32 - 96));
  }

  xpc_release(object);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v32 - 112));
  _Unwind_Resume(a1);
}

void sub_10141049C(uint64_t a1)
{
  v10 = a1;
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (**a1 == 18)
  {
    *v1 = *(v2 + 168);
  }

  if (!v1[1])
  {
    v3 = *(v2 + 172);
    v1[1] = v3;
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I audioRateSwitchComplete: But user did not give SampleRate, using cache value of %d", buf, 8u);
    }
  }

  if (!v1[2])
  {
    v5 = *(v2 + 176);
    v1[2] = v5;
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I audioRateSwitchComplete: But user did not give I2SClockRate, using cache value of %d", buf, 8u);
    }
  }

  v7 = *(v2 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Acking audio rate switch complete", buf, 2u);
  }

  v8 = v1[2];
  v9 = *(v2 + 136);
  *buf = *v1;
  v12 = v8;
  v13 = vdup_n_s32(0x1F40u);
  (*(*v9 + 48))(v9, buf);
  operator delete();
}

__n128 sub_101410708(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F38518;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101410740(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_101410788(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101410850(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F38598;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101410888(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v13 = v3[2];
  if (v13)
  {
    *(v5 + 16) = &v12;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v11 = &v12;
  }

  sub_100901888(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9 = v11;
  v10[0] = v12;
  v10[1] = v13;
  if (v13)
  {
    *(v12 + 2) = v10;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v9 = v10;
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10[0]);
  sub_100009970(&v11, v12);
}

void sub_101410984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_100009970(&a9, a10);
  sub_100009970(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1014109B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101410A6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F38618;
  a2[1] = v2;
  return result;
}

uint64_t sub_101410A98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101410B54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F38698;
  a2[1] = v2;
  return result;
}

void sub_101410B80(uint64_t a1, xpc_object_t *a2)
{
  v2 = *(a1 + 8);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_1001A9998(&v26, a2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_1000B2D2C(&v23, v26, v27, (v27 - v26) >> 3);
  v3 = v23;
  for (i = v24; v3 != i; ++v3)
  {
    v5 = *v3;
    if (*v3)
    {
      xpc_retain(*v3);
      v2[1] = *v2;
      v33 = v5;
    }

    else
    {
      v5 = xpc_null_create();
      v2[1] = *v2;
      v33 = v5;
      if (!v5)
      {
        v5 = 0;
        v33 = xpc_null_create();
        goto LABEL_6;
      }
    }

    xpc_retain(v5);
LABEL_6:
    v29 = &v33;
    v30 = "kCallStatus";
    sub_100006354(&v29, &object);
    v7 = xpc::dyn_cast_or_default(&object, 0, v6);
    xpc_release(object);
    v32 = v7;
    if (isCallStateActive())
    {
      v29 = &v33;
      v30 = "kCallSubType";
      sub_100006354(&v29, &object);
      v9 = xpc::dyn_cast_or_default(&object, 1, v8);
      xpc_release(object);
      v29 = &v33;
      v30 = "kCallSimSlot";
      sub_100006354(&v29, &object);
      v11 = xpc::dyn_cast_or_default(&object, 1, v10);
      xpc_release(object);
      v12 = v32;
      v13 = v2[1];
      v14 = v2[2];
      if (v13 >= v14)
      {
        v16 = *v2;
        v17 = v13 - *v2;
        v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 2) + 1;
        if (v18 > 0x1555555555555555)
        {
          sub_1000CE3D4();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v16) >> 2);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0xAAAAAAAAAAAAAAALL)
        {
          v20 = 0x1555555555555555;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (v20 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_100013D10();
        }

        v21 = 4 * (v17 >> 2);
        *v21 = v9;
        *(v21 + 1) = 0;
        *(v21 + 3) = 0;
        *(v21 + 4) = v11;
        *(v21 + 8) = v12;
        v15 = v21 + 12;
        v22 = v21 - v17;
        memcpy((v21 - v17), v16, v17);
        *v2 = v22;
        v2[1] = v15;
        v2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v13 = v9;
        *(v13 + 1) = 0;
        *(v13 + 3) = 0;
        v15 = v13 + 12;
        *(v13 + 4) = v11;
        *(v13 + 8) = v12;
      }

      v2[1] = v15;
    }

    xpc_release(v33);
    xpc_release(v5);
  }

  v29 = &v23;
  sub_1000B2DB4(&v29);
  v29 = &v26;
  sub_1000B2DB4(&v29);
}

void sub_101410E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, xpc_object_t a18, uint64_t a19, xpc_object_t object)
{
  a16 = &a13;
  sub_1000B2DB4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_101410F14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101410F60(uint64_t a1)
{
  sub_10004B38C((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_101410FA0(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      __assert_rtn("reset", "shared_ptr.hpp", 734, "p == 0 || p != px");
    }
  }

  sub_101411060(&v2, a2);
}

uint64_t sub_10141101C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_101411060(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1014110CC(&v2, a2);
}

void sub_10141113C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_10141117C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_101411298(uint64_t a1, uint64_t a2)
{
  v4 = sub_101411420(a1, a2);
  sub_10141148C((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_101411420(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_1000FB140(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_10141148C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1014114F4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_101411560(&v2, a2);
}

void sub_1014115D0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_101411610(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_101411690(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_10004AC60(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

void sub_101411700(uint64_t a1)
{
  sub_1014119F0(a1);

  operator delete();
}

uint64_t sub_101411738(uint64_t a1)
{
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v6, v2);
  if (*(a1 + 32))
  {
    for (i = *sub_10004AC60((a1 + 32)); i != *(sub_10004AC60((a1 + 32)) + 8); i += 6)
    {
      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          sub_100100F00(a1, v6);
        }

        sub_10004B040(v8);
        break;
      }

      sub_10004B040(v8);
    }
  }

  v4 = *(a1 + 24);
  sub_10004A704(*(&v7 + 1));
  sub_10004A6B0(v6);
  return v4;
}

void sub_101411870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(v5 - 80);
  sub_1000FFEDC(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1014118B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

uint64_t sub_10141190C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10004B38C((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_101411980(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004B38C((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1014119F0(uint64_t a1)
{
  *a1 = off_101F387D8;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

uint64_t sub_101411A80(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101411AC8(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v6 = *a1;
    *a2 = *a1;
    a2[1] = *(a1 + 8);
    dispatch_retain(v6);
    if (a3 != 1)
    {
      return;
    }

    v7 = *a1;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return;
    }

    v7 = *a2;
LABEL_10:

    dispatch_release(v7);
    return;
  }

  v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
  if (v8 == ("N3ctu12DispatchSlotIZN15AudioController16setupEvents_syncEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N3ctu12DispatchSlotIZN15AudioController16setupEvents_syncEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    *a2 = a1;
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t sub_101411BA8(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        a2[4] = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("ZN15AudioController16setupEvents_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("ZN15AudioController16setupEvents_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_101411C40(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_101411CD4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void *sub_101411CF8(void *a1)
{
  *a1 = off_101F38950;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101411D44(void *a1)
{
  *a1 = off_101F38950;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_101411E1C(void *a1)
{
  *a1 = off_101F389A0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

__n128 sub_101411EE4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F389E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101411F1C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_100109E38(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_101411FF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101412040(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (sub_10140C020(v2, *(*a1 + 8)))
  {
    v3 = *(v1 + 8);
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = CSIBOOLAsString(v3);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Persisting audio logging setting value: %s", buf, 0xCu);
    }

    v5 = &kCFBooleanTrue;
    if (!v3)
    {
      v5 = &kCFBooleanFalse;
    }

    (*(**(v2 + 120) + 16))(*(v2 + 120), @"AudioLoggingEnabled", *v5, @"com.apple.commcenter.audio", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v6 = (*(**(v2 + 120) + 48))(*(v2 + 120), @"com.apple.commcenter.audio", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v7 = *(v2 + 40);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      *buf = 0;
      v9 = "#I Successfully persisted the AudioLoggingEnabled key";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      *buf = 0;
      v9 = "#N Failed to persist the AudioLoggingEnabled key";
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
  }

LABEL_12:
  operator delete();
}

uint64_t *sub_101412260(uint64_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if ((*(**(*v1 + 152) + 32))(*(*v1 + 152)))
  {
    v3 = sub_10140BEB4(v2);
    object = xpc_BOOL_create(v3);
    if (!object)
    {
      object = xpc_null_create();
    }
  }

  else
  {
    object = xpc_BOOL_create(0);
    if (!object)
    {
      object = xpc_null_create();
    }
  }

  v7[0] = v1[1];
  v7[1] = "kAudioLoggingEnabled";
  sub_10000F688(v7, &object, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(object);
  sub_100E0B28C(&v6);
  return sub_1000049E0(&v5);
}

void sub_101412388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100E0B28C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1014123A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 368);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *(v1 + 2);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 7);
      if (v6 <= v4)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v7 = *(v1 + 12);
  v5[6] = *(v1 + 28);
  *(v5 + 2) = v7;
  v8 = *(v2 + 96);
  v12[0] = *(v2 + 88);
  v12[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = sub_10140C530(v12, *(v1 + 2));
  if (v9)
  {
    v10 = capabilities::ct::supportsSetVoLTEAudioCodec(v9);
    if (v8)
    {
      sub_100004A34(v8);
    }

    if ((v10 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v8)
  {
    sub_100004A34(v8);
  }

  return 0;
}

void sub_101412560(SystemConfigurationFactoryInterface *a1)
{
  SystemConfigurationFactoryInterface::~SystemConfigurationFactoryInterface(a1);

  operator delete();
}

void sub_10141259C(RegistrationInterface *a1)
{
  RegistrationInterface::~RegistrationInterface(a1);

  operator delete();
}

uint64_t sub_1014125EC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_101412678(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1014126F0(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_101412750(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_10141275C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1014127D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014127EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101412860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101412888(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1014128DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101412950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10141296C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MCC::MCC(&v5);
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_1014129E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101412A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MNC::MNC(&v5);
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_101412A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101412AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MCC::MCC(&v5);
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_101412B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101412B50(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_101412BB0(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_101412C10(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_101412C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NetworkListOperator::NetworkListOperator(&v4);
  sub_101412CFC(a3, 0, 2);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

void sub_101412CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100F4B3AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101412CFC(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_101412D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NetworkListOperator::NetworkListOperator(v5);
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, v5);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_101412E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100F4B3AC(va);
  _Unwind_Resume(a1);
}

void sub_101412E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v4, 0, sizeof(v4));
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, v4);
  v5 = v4;
  sub_100F4B580(&v5);
}

void sub_101412ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100F4B580(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_101412EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = std::generic_category();

  return sub_101412F38(a3, 0, 45, v4);
}

uint64_t sub_101412F38(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v6[0] = a3;
  v6[1] = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, &v7, v6);
}

void sub_101413088(uint64_t a1, int a2)
{
  v9 = a2;
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v3 != a1 + 8 && *(v3 + 32) <= a2)
  {
    v4 = *(v3 + 44);
    if (v4 <= 4)
    {
      *(v3 + 44) = dword_101967960[v4];
    }
  }

  else
  {
LABEL_8:
    v8 = 0;
    *__p = 0u;
    v6 = 0u;
    v7 = 0;
    sub_10141409C(a1, &v9, &v9, __p);
    if (__p[1])
    {
      *&v6 = __p[1];
      operator delete(__p[1]);
    }
  }
}

void sub_10141313C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101413158(uint64_t a1, os_log_t *a2)
{
  *(a1 + 24) = 0;
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "kNone";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sim file manager: new read stage = %s", &v5, 0xCu);
  }

  sub_101413218(a1, a2);
}

void sub_101413218(uint64_t a1, os_log_t *a2)
{
  v3 = *(a1 + 24);
  if (v3 == 1)
  {
    v12 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Sim file manager: reset files that can't be read in locked state", v19, 2u);
    }

    v15 = *a1;
    v13 = (a1 + 8);
    v14 = v15;
    if (v15 != v13)
    {
      do
      {
        if (*(v14 + 8))
        {
          v16 = v14[6];
          v14[5] = 0;
          if (v16)
          {
            v14[7] = v16;
            operator delete(v16);
          }

          v14[6] = 0;
          v14[7] = 0;
          *(v14 + 72) = 0;
          v14[8] = 0;
          *(v14 + 78) = 0;
        }

        v17 = v14[1];
        if (v17)
        {
          do
          {
            v18 = v17;
            v17 = *v17;
          }

          while (v17);
        }

        else
        {
          do
          {
            v18 = v14[2];
            v11 = *v18 == v14;
            v14 = v18;
          }

          while (!v11);
        }

        v14 = v18;
      }

      while (v18 != v13);
    }
  }

  else if (!v3)
  {
    v4 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sim file manager: reset all files data", buf, 2u);
    }

    v7 = *a1;
    v5 = (a1 + 8);
    v6 = v7;
    if (v7 != v5)
    {
      do
      {
        v8 = v6[6];
        v6[5] = 0;
        if (v8)
        {
          v6[7] = v8;
          operator delete(v8);
        }

        v6[6] = 0;
        v6[7] = 0;
        *(v6 + 72) = 0;
        v6[8] = 0;
        *(v6 + 78) = 0;
        v9 = v6[1];
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
            v10 = v6[2];
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v5);
    }
  }
}

void sub_1014133B4(void *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v7 = *(a2 + 24);
      v25 = *(v4 + 8);
      if (!v7)
      {
        sub_100022DB4();
      }

      if ((*(*v7 + 48))(v7, &v25))
      {
        v8 = *(v4 + 11);
        v9 = v8 > 4;
        v10 = (1 << v8) & 0x13;
        v11 = v9 || v10 == 0;
        if (!v11)
        {
          v13 = a3[1];
          v12 = a3[2];
          if (v13 >= v12)
          {
            v15 = *a3;
            v16 = v13 - *a3;
            v17 = v16 >> 2;
            v18 = (v16 >> 2) + 1;
            if (v18 >> 62)
            {
              sub_1000CE3D4();
            }

            v19 = v12 - v15;
            if (v19 >> 1 > v18)
            {
              v18 = v19 >> 1;
            }

            v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
            v21 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v20)
            {
              v21 = v18;
            }

            if (v21)
            {
              sub_100016740(a3, v21);
            }

            *(4 * v17) = *(v4 + 8);
            v14 = (4 * v17 + 4);
            memcpy(0, v15, v16);
            v22 = *a3;
            *a3 = 0;
            a3[1] = v14;
            a3[2] = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v13 = *(v4 + 8);
            v14 = v13 + 4;
          }

          a3[1] = v14;
          *(v4 + 11) = 2;
        }
      }

      v23 = v4[1];
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
          v24 = v4[2];
          v11 = *v24 == v4;
          v4 = v24;
        }

        while (!v11);
      }

      v4 = v24;
    }

    while (v24 != v3);
  }
}

void sub_101413574(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101413598@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v5 = result;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *(result + 24);
  if (v7 == 2)
  {
    v13 = sub_100065150(result, a3);
    v14 = 256;
    if (!a3)
    {
      v14 = 0;
    }

    v15 = 0x10000;
    if (!a4)
    {
      v15 = 0;
    }

    v19[0] = off_101F38E08;
    v19[1] = a2;
    *v20 = v15 | v14 | v13;
    v22 = v19;
    *&v20[3] = 0;
    v21 = 0;
    sub_1014133B4(v5, v19, &v17);
    v16 = v18;
    *a5 = v17;
    a5[2] = v16;
    v18 = 0;
    v17 = 0uLL;
    v9 = v19;
  }

  else
  {
    if (v7 != 1)
    {
      return result;
    }

    v23[0] = off_101F38D78;
    v23[3] = v23;
    sub_1014133B4(result, v23, &v17);
    v8 = v18;
    *a5 = v17;
    a5[2] = v8;
    v18 = 0;
    v17 = 0uLL;
    v9 = v23;
  }

  return sub_101414270(v9);
}

void sub_101413708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_101414270(va);
  _Unwind_Resume(a1);
}

void sub_101413728(uint64_t a1, os_log_t *a2, uint64_t a3)
{
  if (subscriber::isSimReady())
  {
    v5 = 2;
  }

  else if (subscriber::isSimLocked() & 1) != 0 || (subscriber::isSimPermanentlyBlocked())
  {
    v5 = 1;
  }

  else
  {
    if (!subscriber::isSimSettled())
    {
      return;
    }

    v5 = 0;
  }

  v6 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = off_101F38E78[v5];
    v8 = *(a1 + 24);
    if (v8 > 2)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_101F38E78[v8];
    }

    v10 = 136315394;
    v11 = v7;
    v12 = 2080;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sim file manager: read stage = %s (was %s)", &v10, 0x16u);
  }

  if (v5 != *(a1 + 24))
  {
    *(a1 + 24) = v5;
    sub_101413218(a1, a2);
  }
}

uint64_t sub_101413868(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    v8 = *(v5 + 44);
    if (v8 > 4)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = 4u >> v8;
    }
  }

  else
  {
LABEL_8:
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t sub_1014138CC(uint64_t a1, int a2)
{
  v7 = a2;
  if (sub_101413868(a1, a2))
  {
    v8 = &v7;
    v3 = sub_101414468(a1, &v7, &unk_101802C98, &v8);
    v4 = *(v3 + 10) != 2;
    v3[7] = v3[6];
    v3[5] = 0x300000002;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v5 | (v4 << 8);
}

uint64_t sub_101413958(uint64_t a1, int a2, uint64_t a3)
{
  v12 = a2;
  if (sub_101413868(a1, a2))
  {
    v13 = &v12;
    v5 = sub_101414468(a1, &v12, &unk_101802C98, &v13);
    v6 = v5;
    v9 = *(v5 + 10) != 1 || (v7 = v5[6], v8 = v6[7] - v7, v8 != *(a3 + 8) - *a3) || memcmp(v7, *a3, v8) != 0;
    sub_100015184((v6 + 6), a3);
    v6[5] = 0x300000001;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return v10 | (v9 << 8);
}

uint64_t sub_101413A24(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = a1 + 8;
  v4 = v5;
  if (v5)
  {
    v6 = result;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result && *(v6 + 32) <= a2)
    {
      v7 = *(v6 + 78);
      v8 = *(a3 + 4);
      *(v6 + 72) = *a3;
      *(v6 + 76) = v8;
      if ((v7 & 1) == 0)
      {
        *(v6 + 78) = 1;
      }
    }
  }

  return result;
}

unint64_t sub_101413A80(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != v2 && *(v5 + 32) <= a2)
    {
      v7 = *(v5 + 72);
      v3 = v7 & 0xFF00000000000000;
      v6 = v7 & 0xFF000000000000;
      v8 = v7 & 0xFFFFFFFFFF00;
      v7 = v7;
      return v7 | v6 | v3 | v8;
    }

    v6 = 0;
    v7 = 0;
    v3 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = 0;
  return v7 | v6 | v3 | v8;
}

uint64_t *sub_101413AFC@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v6)
  {
    v7 = result;
    do
    {
      if (*(v5 + 32) >= a2)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < a2));
    }

    while (v5);
    if (v7 != result && *(v7 + 8) <= a2)
    {
      if ((a2 - 1) < 2)
      {
        return ctu::hex(v7[6], (v7[7] - v7[6]), a3);
      }

      else if (a2)
      {
        if (a2 == 3)
        {
          return subscriber::sDecodeImsi(v7[6], (v7[7] - v7[6]), a3);
        }
      }

      else
      {
        return subscriber::sDecodeIccid(v7[6], (v7[7] - v7[6]), a3);
      }
    }
  }

  return result;
}

uint64_t sub_101413B7C(uint64_t a1, NSObject **a2)
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *__p = 0u;
  v28 = 0u;
  v25 = 0u;
  *__src = 0u;
  v23 = 0u;
  v24 = 0u;
  sub_10000D518(&v23);
  v4 = (a1 + 8);
  v5 = *a1;
  memset(&v41, 0, sizeof(v41));
  if (v5 != (a1 + 8))
  {
    sub_101414548(&__s, v5 + 8);
    if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v41.__r_.__value_.__l.__data_);
    }

    v41 = __s;
    v6 = *(v5 + 1);
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = *(v5 + 2);
        v8 = *v7 == v5;
        v5 = v7;
      }

      while (!v8);
    }

    if (v7 != v4)
    {
      do
      {
        *(&__s.__r_.__value_.__s + 23) = 2;
        strcpy(&__s, ", ");
        std::string::append(&v41, &__s, 2uLL);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        sub_101414548(&__s, v7 + 8);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&v41, p_s, size);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        v11 = *(v7 + 1);
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = *(v7 + 2);
            v8 = *v12 == v7;
            v7 = v12;
          }

          while (!v8);
        }

        v7 = v12;
      }

      while (v12 != v4);
    }
  }

  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v41;
  }

  else
  {
    v13 = v41.__r_.__value_.__r.__words[0];
  }

  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v41.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v41.__r_.__value_.__l.__size_;
  }

  sub_10000C030(&v23, v13, v14);
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  v15 = *a2;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 24);
    if (v16 > 2)
    {
      v17 = "?";
    }

    else
    {
      v17 = off_101F38E78[v16];
    }

    if ((BYTE8(v29) & 0x10) != 0)
    {
      v19 = v29;
      if (v29 < __src[1])
      {
        *&v29 = __src[1];
        v19 = __src[1];
      }

      v20 = __src[0];
    }

    else
    {
      if ((BYTE8(v29) & 8) == 0)
      {
        v18 = 0;
        *(&__s.__r_.__value_.__s + 23) = 0;
LABEL_51:
        __s.__r_.__value_.__s.__data_[v18] = 0;
        v21 = &__s;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = __s.__r_.__value_.__r.__words[0];
        }

        LODWORD(v41.__r_.__value_.__l.__data_) = 136315394;
        *(v41.__r_.__value_.__r.__words + 4) = v17;
        WORD2(v41.__r_.__value_.__r.__words[1]) = 2082;
        *(&v41.__r_.__value_.__r.__words[1] + 6) = v21;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I fReadStage= %s ; files=[%{public}s]", &v41, 0x16u);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        goto LABEL_55;
      }

      v20 = *(&v24 + 1);
      v19 = *(&v25 + 1);
    }

    v18 = v19 - v20;
    if ((v19 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&__s.__r_.__value_.__s + 23) = v19 - v20;
    if (v18)
    {
      memmove(&__s, v20, v18);
    }

    goto LABEL_51;
  }

LABEL_55:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v24);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_101413FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t *sub_101414040@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = result;
  do
  {
    if (*(v4 + 8) >= a2)
    {
      v6 = v4;
    }

    v4 = v4[*(v4 + 8) < a2];
  }

  while (v4);
  if (v6 != result && *(v6 + 8) <= a2)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return sub_100034C50(a3, v6[6], v6[7], v6[7] - v6[6]);
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t *sub_10141409C(uint64_t a1, int *a2, _DWORD *a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_101414224(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101414270(uint64_t a1)
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

__n128 sub_10141436C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F38E08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 23) = 0;
  *(a2 + 19) = 0;
  return result;
}

uint64_t sub_1014143A4(_BYTE *a1, unsigned int *a2)
{
  if (subscriber::getSimCardForSimFilePath() == 2 && (a1[17] & 1) != 0)
  {
    v3 = 0;
    return v3 & 1;
  }

  if (a1[16])
  {
    v3 = a1[18] ^ 1;
    return v3 & 1;
  }

  return subscriber::isSimFileEssential();
}

uint64_t sub_10141441C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101414468(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

double sub_101414548(std::string *a1, unsigned int *a2)
{
  v4 = subscriber::asString();
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v6 = v5;
  memset(&__dst, 0, sizeof(__dst));
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  if (a2[10])
  {
    v7 = "[w]";
  }

  else
  {
    v7 = "[-]";
  }

  if (*(a2 + 46))
  {
    v8 = v7;
  }

  else
  {
    v8 = "[?]";
  }

  std::string::append(&__dst, v8, 3uLL);
  v9 = a2[3];
  if (v9 <= 4 && ((0x17u >> v9) & 1) != 0)
  {
    std::string::append(&__dst, off_101F38E90[v9], qword_101967978[v9]);
  }

  v10 = a2[2];
  if (v10 == 1)
  {
    std::to_string(&v18, *(a2 + 3) - *(a2 + 2));
    v11 = std::string::insert(&v18, 0, ":", 1uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v19.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v19.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v19, "B", 1uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (v21 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v21 >= 0)
    {
      v16 = HIBYTE(v21);
    }

    else
    {
      v16 = __p[1];
    }

    std::string::append(&__dst, v15, v16);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else if (v10 == 2)
  {
    std::string::append(&__dst, ":none", 5uLL);
  }

  result = *&__dst.__r_.__value_.__l.__data_;
  *a1 = __dst;
  return result;
}

void sub_101414784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

double sub_1014148E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    v2 = *(a2 + 32);
    if (v2)
    {
      v2 = *(v2 + 24);
    }
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 24) = v2;
  *a1 = off_101F38EC8;
  result = 0.0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1065353216;
  *(a1 + 32) = &off_101F1AE50;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_101414A78(uint64_t a1, char *__s)
{
  v2 = __s;
  memset(&__dst, 0, sizeof(__dst));
  __p = 0;
  v12 = 0;
  v13 = 0;
  v4 = strchr(__s, 59);
  if (v4)
  {
    v5 = v4;
    sub_1000167D4(&__dst, v2, (v4 - v2));
    v2 = v5 + 1;
    p_p = &__p;
  }

  else
  {
    p_p = &__dst;
  }

  sub_100016890(p_p, v2);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  v8 = sub_100E648E0(a1, p_dst);
  if (v8)
  {
    if (SHIBYTE(v13) < 0)
    {
      if (!v12)
      {
        goto LABEL_14;
      }

      v9 = __p;
    }

    else
    {
      if (!HIBYTE(v13))
      {
        goto LABEL_14;
      }

      v9 = &__p;
    }

    sub_1011F2FF8((a1 + 32), v9);
  }

LABEL_14:
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_101414B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101414B98(uint64_t a1, std::string *a2)
{
  v4 = sub_100E64A1C(a1, a2);
  if (v4)
  {
    sub_1011F2C0C(a1 + 32, a2);
  }

  return v4;
}

uint64_t sub_101414BE0(_BYTE *a1, uint64_t a2)
{
  v20 = 0;
  if (a1[104])
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v18 = 0;
    sub_1015664B4(a2, __p, 0xFFFFFFFF);
    if ((SBYTE7(v18) & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = (*(*a1 + 16))(a1, v4);
    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (!sub_101566604(a2, &v20))
    {
      return 0;
    }

    v6 = v20;
    v8 = *(a2 + 16);
    v7 = *(a2 + 20);
    v9 = v8 >= v7;
    v10 = v8 - v7;
    if (v10 == 0 || !v9 || v20 > v10)
    {
      return 0;
    }

    else
    {
      v12 = *(a2 + 8);
      *(a2 + 20) = v7 + 1;
      a1[17] = *(v12 + v7);
      v19 = 0;
      *__p = 0u;
      v18 = 0u;
      sub_101566340(__p, a2, v6 - 1);
      v13 = sub_1015674B8(__p, a1 + 4);
      v5 = v13;
      if (v13)
      {
        v14 = DWORD1(v18);
        v15 = *(a2 + 20);
        if ((*(a2 + 16) - v15) < DWORD1(v18))
        {
          v14 = *(a2 + 16) - v15;
        }

        *(a2 + 20) = v14 + v15;
      }

      ctu::OsLogLogger::~OsLogLogger(__p);
    }
  }

  return v5;
}

BOOL sub_101414D50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::string::push_back((a2 + 8), byte_101FB97D8 | 0x80);
  }

  return v2 != 0;
}

BOOL sub_101414D90(uint64_t a1, uint64_t a2)
{
  *__p = 0u;
  v10 = 0u;
  LODWORD(__p[0]) = *a2;
  v11 = 0;
  __p[1] = 0;
  v10 = 0uLL;
  std::string::push_back(&__p[1], *(a1 + 17));
  v4 = sub_1011360D0(__p, a1 + 32);
  if (v4)
  {
    if (v10 >= 0)
    {
      v5 = HIBYTE(v10);
    }

    else
    {
      v5 = v10;
    }

    sub_101135DF8(a2, v5);
    if (v10 >= 0)
    {
      v6 = &__p[1];
    }

    else
    {
      v6 = __p[1];
    }

    if (v10 >= 0)
    {
      v7 = HIBYTE(v10);
    }

    else
    {
      v7 = v10;
    }

    std::string::append((a2 + 8), v6, v7);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  return v4;
}

void sub_101414E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101414E84(void *a1)
{
  *a1 = off_101F38EC8;
  sub_1013D7954((a1 + 4));

  return sub_100E64740(a1);
}

void sub_101414ED8(void *a1)
{
  *a1 = off_101F38EC8;
  sub_1013D7954((a1 + 4));
  sub_100E64740(a1);

  operator delete();
}

void sub_101414F40(Registry **a1@<X0>, uint64_t *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  __p = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &__p);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  isWatch = GestaltUtilityInterface::isWatch(v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  *a3 = 0;
  a3[1] = 0;
  if ((isWatch & 1) == 0)
  {
    operator new();
  }
}

void sub_10141545C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, std::__shared_weak_count *a13, int a14, __int16 a15, char a16, char a17)
{
  if (a11)
  {
    (*(a11->isa + 1))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_10141569C(uint64_t a1)
{
  *a1 = off_101F38F58;
  v2 = *(a1 + 432);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10006DCAC(a1 + 392, *(a1 + 400));
  sub_100034450(*(a1 + 368));
  sub_101419968(*(a1 + 344));
  sub_100034450(*(a1 + 320));
  sub_1002FED80(a1 + 272);
  sub_100077CD4(a1 + 248, *(a1 + 256));
  if (*(a1 + 240) == 1 && *(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v9 = (a1 + 192);
  sub_100112048(&v9);
  sub_100359978(a1 + 152, *(a1 + 160));
  sub_100359978(a1 + 128, *(a1 + 136));
  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 104);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 80);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  SubscriberUserAlertManagerInterface::~SubscriberUserAlertManagerInterface(a1);
}

void sub_101415814(uint64_t a1)
{
  sub_10141569C(a1);

  operator delete();
}

void sub_10141584C(void *a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10141594C(uint64_t a1, void *a2)
{
  if (!sub_101418678(a2, (a1 + 128)))
  {
    return;
  }

  if (sub_101417C84(a1 + 56, (a1 + 128)))
  {
    for (i = *(a1 + 192); i != *(a1 + 200); i += 88)
    {
      v4 = *(i + 80) != 1 || *(i + 56) == *(i + 64);
      if (!v4)
      {
        goto LABEL_23;
      }
    }

    v7 = *(a1 + 128);
    v8 = (a1 + 136);
    if (v7 == (a1 + 136))
    {
LABEL_23:
      sub_101417DDC(a1, 1u);
      sub_101417EB0(a1, 1);
      sub_10141BD94((a1 + 312), 1);
      sub_10141CB24(a1 + 336, 1);
      goto LABEL_24;
    }

    while (subscriber::isEsimCapable())
    {
      v9 = v7[1];
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
          v10 = v7[2];
          v4 = *v10 == v7;
          v7 = v10;
        }

        while (!v4);
      }

      v7 = v10;
      if (v10 == v8)
      {
        goto LABEL_23;
      }
    }

    v11 = *(a1 + 128);
    if (v11 != v8)
    {
      while (subscriber::isSimAbsent() && (subscriber::isPhySimDisabled() & 1) == 0)
      {
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11[2];
            v4 = *v13 == v11;
            v11 = v13;
          }

          while (!v4);
        }

        v11 = v13;
        if (v13 == v8)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_23;
    }

LABEL_36:
    if (*(a1 + 384))
    {
      v14 = *(a1 + 385);
      v15 = *(a1 + 40);
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v14 == 1)
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I NO SIM alert is suppressed by user", buf, 2u);
        }

        *(a1 + 384) = 0;
      }

      else
      {
        if (v16)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I enqueue NO SIM alert", buf, 2u);
        }

        sub_100034450(*(a1 + 320));
        *(a1 + 320) = 0;
        *(a1 + 328) = 0;
        *(a1 + 312) = a1 + 320;
        v17 = 1;
        *buf = &v17;
        sub_100EB3B10(a1 + 312, 1, buf);
        sub_100078B14(a1);
      }

      goto LABEL_24;
    }

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#I No SIM alert not allowed";
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "#I SIMs not settled, wait to evaluate No SIM state";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

LABEL_24:

  sub_101417FF4(a1);
}

void **sub_101415C04(uint64_t a1, void *a2)
{
  result = sub_101418678(a2, (a1 + 152));
  if (!result)
  {
    return result;
  }

  v54 = _os_activity_create(&_mh_execute_header, "sim state changed", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v54, &state);
  os_activity_scope_leave(&state);
  v4 = *(a1 + 152);
  v5 = (a1 + 160);
  if (v4 == (a1 + 160))
  {
LABEL_37:
    sub_10006DCAC(a1 + 392, *(a1 + 400));
    *(a1 + 400) = 0;
    *(a1 + 408) = 0;
    *(a1 + 392) = a1 + 400;
    sub_101417EB0(a1, 2);
    sub_10141BD94((a1 + 312), 2);
    sub_10141CB24(a1 + 336, 2);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = (a1 + 400);
    v9 = (a1 + 320);
    while (subscriber::isSimSettled())
    {
      v10 = *v8;
      if (!*v8)
      {
        goto LABEL_12;
      }

      v11 = *(v4 + 8);
      v12 = a1 + 400;
      do
      {
        if (*(v10 + 28) >= v11)
        {
          v12 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 28) < v11));
      }

      while (v10);
      if (v12 == v8 || v11 < *(v12 + 28))
      {
LABEL_12:
        v12 = a1 + 400;
      }

      isSimPermanentlyBlocked = subscriber::isSimPermanentlyBlocked();
      if (v12 == v8)
      {
        v14 = isSimPermanentlyBlocked;
      }

      else
      {
        v14 = 0;
      }

      if (v14 == 1)
      {
        v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 8));
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(state.opaque[0]) = 0;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I enqueue Permanently Blocked SIM alert", &state, 2u);
        }

        v16 = *v9;
        if (!*v9)
        {
LABEL_25:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v17 = v16;
            v18 = *(v16 + 28);
            if (v18 < 3)
            {
              break;
            }

            v16 = *v17;
            if (!*v17)
            {
              goto LABEL_25;
            }
          }

          if (v18 == 2)
          {
            break;
          }

          v16 = v17[1];
          if (!v16)
          {
            goto LABEL_25;
          }
        }

        v7 = 1;
        v6 = 1;
      }

      else
      {
        v6 |= isSimPermanentlyBlocked;
      }

      v19 = v4[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v4[2];
          v21 = *v20 == v4;
          v4 = v20;
        }

        while (!v21);
      }

      v4 = v20;
      if (v20 == v5)
      {
        if (v7)
        {
          sub_100078B14(a1);
        }

        if (v6)
        {
          break;
        }

        goto LABEL_37;
      }
    }
  }

  state = 0;
  v57 = 0u;
  v58 = 1065353216;
  v22 = *(a1 + 152);
  if (v22 == v5)
  {
    goto LABEL_85;
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = (a1 + 368);
  do
  {
    isEsimCapable = subscriber::isEsimCapable();
    if (subscriber::isSimSettled())
    {
      isSimDead = subscriber::isSimDead();
      v29 = isSimDead;
      v24 |= isSimDead;
      v30 = *v26;
      if (!*v26)
      {
        goto LABEL_49;
      }

      v31 = *(v22 + 11);
      v32 = a1 + 368;
      do
      {
        if (*(v30 + 28) >= v31)
        {
          v32 = v30;
        }

        v30 = *(v30 + 8 * (*(v30 + 28) < v31));
      }

      while (v30);
      if (v32 == v26 || v31 < *(v32 + 28) || *(v32 + 32) != *(v22 + 12))
      {
LABEL_49:
        if (isSimDead)
        {
          if (subscriber::isSimReady())
          {
            v33 = *(a1 + 40);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
            {
              v42 = subscriber::asString();
              *buf = 136315138;
              *&buf[4] = v42;
              _os_log_fault_impl(&_mh_execute_header, v33, OS_LOG_TYPE_FAULT, "Ready to Dead SIM on (%s)", buf, 0xCu);
            }
          }
        }

        v23 |= v29;
        if (*(v22 + 12) == 11 && (subscriber::isEsimCapable() & 1) == 0)
        {
          v34 = *(v22 + 11);
          if (!state.opaque[1])
          {
            goto LABEL_72;
          }

          v35 = vcnt_s8(state.opaque[1]);
          v35.i16[0] = vaddlv_u8(v35);
          if (v35.u32[0] > 1uLL)
          {
            v36 = *(v22 + 11);
            if (state.opaque[1] <= v34)
            {
              v36 = v34 % state.opaque[1];
            }
          }

          else
          {
            v36 = (state.opaque[1] - 1) & v34;
          }

          v37 = *(state.opaque[0] + 8 * v36);
          if (!v37 || (v38 = *v37) == 0)
          {
LABEL_72:
            operator new();
          }

          while (1)
          {
            v39 = v38[1];
            if (v39 == v34)
            {
              if (*(v38 + 4) == v34)
              {
                v24 = 1;
                v23 = 1;
                break;
              }
            }

            else
            {
              if (v35.u32[0] > 1uLL)
              {
                if (v39 >= state.opaque[1])
                {
                  v39 %= state.opaque[1];
                }
              }

              else
              {
                v39 &= state.opaque[1] - 1;
              }

              if (v39 != v36)
              {
                goto LABEL_72;
              }
            }

            v38 = *v38;
            if (!v38)
            {
              goto LABEL_72;
            }
          }
        }
      }
    }

    v40 = v22[1];
    if (v40)
    {
      do
      {
        v41 = v40;
        v40 = *v40;
      }

      while (v40);
    }

    else
    {
      do
      {
        v41 = v22[2];
        v21 = *v41 == v22;
        v22 = v41;
      }

      while (!v21);
    }

    v25 |= isEsimCapable;
    v22 = v41;
  }

  while (v41 != v5);
  if (v23)
  {
    if (*(&v57 + 1))
    {
      if (sub_10141CBAC(state.opaque[0], state.opaque[1], 1))
      {
        if (v25)
        {
          v55 = 7;
          *buf = &v55;
          sub_100EB3B10(a1 + 312, 7, buf);
        }

        else
        {
          if (*(a1 + 168) == 1)
          {
            v45 = 6;
          }

          else
          {
            v45 = 8;
          }

          v55 = v45;
          *buf = &v55;
          sub_100EB3B10(a1 + 312, v45, buf);
        }
      }

      if (sub_10141CBAC(state.opaque[0], state.opaque[1], 2))
      {
        v55 = 9;
        *buf = &v55;
        sub_100EB3B10(a1 + 312, 9, buf);
      }
    }

    else
    {
      v55 = 3;
      *buf = &v55;
      sub_100EB3B10(a1 + 312, 3, buf);
    }

    sub_100078B14(a1);
    goto LABEL_96;
  }

  if ((v24 & 1) == 0)
  {
LABEL_85:
    for (i = 0; i != 5; ++i)
    {
      v44 = dword_1019679C0[i];
      sub_101417EB0(a1, v44);
      sub_10141BD94((a1 + 312), v44);
      sub_10141CB24(a1 + 336, v44);
    }
  }

LABEL_96:
  sub_10063098C(&state);
  if (sub_101417C84(a1 + 56, (a1 + 152)))
  {
    if (sub_1014187B8((a1 + 152)))
    {
      sub_100078B14(a1);
    }

    else
    {
      sub_101417EB0(a1, 5);
      sub_10141BD94((a1 + 312), 5);
      sub_10141CB24(a1 + 336, 5);
    }
  }

  v46 = *(a1 + 152);
  if (v46 != v5)
  {
    v47 = (a1 + 368);
    do
    {
      if (subscriber::isSimSettled())
      {
        v48 = *v47;
        if (!*v47)
        {
LABEL_111:
          operator new();
        }

        v49 = *(v46 + 11);
        while (1)
        {
          while (1)
          {
            v50 = v48;
            v51 = *(v48 + 7);
            if (v51 <= v49)
            {
              break;
            }

            v48 = *v50;
            if (!*v50)
            {
              goto LABEL_111;
            }
          }

          if (v51 >= v49)
          {
            break;
          }

          v48 = v50[1];
          if (!v48)
          {
            goto LABEL_111;
          }
        }

        *(v50 + 8) = *(v46 + 12);
      }

      v52 = v46[1];
      if (v52)
      {
        do
        {
          v53 = v52;
          v52 = *v52;
        }

        while (v52);
      }

      else
      {
        do
        {
          v53 = v46[2];
          v21 = *v53 == v46;
          v46 = v53;
        }

        while (!v21);
      }

      v46 = v53;
    }

    while (v53 != v5);
  }

  return sub_1000C0590(&v54);
}

void sub_10141668C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void *);
  v12 = va_arg(va1, void);
  sub_10063098C(va1);
  sub_1000C0590(va);
  _Unwind_Resume(a1);
}

void sub_1014166F0(uint64_t a1, int a2)
{
  v2 = *(a1 + 176);
  if (v2 != a2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = CSIBOOLAsString(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SpringBoardFinishedStartup state : %s", &v5, 0xCu);
    }

    sub_100078B14(a1);
  }
}

void sub_1014167B0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = asString();
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I buddy state changed : %s, previous : %s", buf, 0x16u);
  }

  if (*(a1 + 184) == 1)
  {
    v18[0] = off_101F397B0;
    v18[1] = a1;
    v18[3] = v18;
    sub_1014183F4(a1, v18);
    sub_10141B488(v18);
  }

  else
  {
    sub_100078B14(a1);
  }

  if (v2 == 1 && *(a1 + 184) != 1)
  {
    v5 = *(a1 + 16);
    if (!v5 || (v6 = *(a1 + 8), (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      sub_100013CC4();
    }

    v8 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I schedule timer for RUIM alert", buf, 2u);
    }

    Registry::getTimerService(buf, *(a1 + 56));
    v10 = *buf;
    sub_10000501C(__p, "RUIM alert");
    v11 = *(a1 + 24);
    object = v11;
    if (v11)
    {
      dispatch_retain(v11);
    }

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1174405120;
    v12[2] = sub_101418838;
    v12[3] = &unk_101F38FB8;
    v12[4] = a1;
    v12[5] = v6;
    v13 = v8;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    aBlock = _Block_copy(v12);
    sub_100E34D88(v10, __p, 0, 5000000, &object, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_101416A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101416AE4(uint64_t result, int a2)
{
  v2 = *(result + 188);
  if (v2 != a2 && (v2 & 1) == 0)
  {
    v3[0] = off_101F39830;
    v3[1] = result;
    v3[3] = v3;
    sub_1014183F4(result, v3);
    return sub_10141B488(v3);
  }

  return result;
}

void sub_101416B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10141B488(va);
  _Unwind_Resume(a1);
}

void sub_101416B8C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 176));
    *buf = 136315138;
    v28 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SpringBoardFinishedStartup state : %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 178));
    v5 = CSIBOOLAsString(*(a1 + 177));
    v6 = CSIBOOLAsString(*(a1 + 179));
    *buf = 136315650;
    v28 = v4;
    v29 = 2080;
    v30 = v5;
    v31 = 2080;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I display status : locked %s, on %s, coversheet active %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    *buf = 136315138;
    v28 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I buddy state : %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CSIBOOLAsString(*(a1 + 384));
    v9 = CSIBOOLAsString(*(a1 + 385));
    *buf = 136315394;
    v28 = v8;
    v29 = 2080;
    v30 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I no sim alert allowed : %s, suppressed : %s", buf, 0x16u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CSIBOOLAsString(*(a1 + 416));
    *buf = 136315138;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I RUIM alert shown: %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CSIBOOLAsString(*(a1 + 417));
    *buf = 136315138;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I sim unlock in progress : %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = CSIBOOLAsString(*(a1 + 418));
    *buf = 136315138;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I sim unlock allowed during buddy : %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = CSIBOOLAsString(*(a1 + 424) != 0);
    *buf = 136315138;
    v28 = v13;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Prevent baseband reset assertion held: %s", buf, 0xCu);
  }

  v14 = *(a1 + 152);
  if (v14 != (a1 + 160))
  {
    do
    {
      v15 = sub_101419228(a1, *(v14 + 8));
      v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v14 + 8));
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = CSIBOOLAsString(v15);
        *buf = 136315138;
        v28 = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I sim unlock alert allowed : %s", buf, 0xCu);
      }

      v18 = v14[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v14[2];
          v20 = *v19 == v14;
          v14 = v19;
        }

        while (!v20);
      }

      v14 = v19;
    }

    while (v19 != (a1 + 160));
  }

  v21 = *(a1 + 312);
  if (v21 != (a1 + 320))
  {
    do
    {
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = sub_101418F80(*(v21 + 7));
        v24 = subscriber::asString();
        *buf = 136315394;
        v28 = v23;
        v29 = 2080;
        v30 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I pending alert : %s (%s)", buf, 0x16u);
      }

      v25 = v21[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v21[2];
          v20 = *v26 == v21;
          v21 = v26;
        }

        while (!v20);
      }

      v21 = v26;
    }

    while (v26 != (a1 + 320));
  }
}

void sub_101417070(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101417160(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101417250(void *a1, char a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101417340(void *a1, char a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101417430(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101417520(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101417600(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014176E0(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014177C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v29 = 0u;
  memset(&v30, 0, sizeof(v30));
  v27 = 0u;
  v28 = 0u;
  memset(v26, 0, sizeof(v26));
  LOBYTE(v26[0]) = 1;
  v4 = *(a1 + 248);
  v5 = (a1 + 256);
  if (v4 != (a1 + 256))
  {
    do
    {
      v6 = *(v4 + 8);
      v7 = (&v28 + 8);
      if (v6 == 2 || (v7 = &v27, v6 == 1))
      {
        std::string::operator=(v7, (v4 + 5));
      }

      else
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E Invalid slot in IMEIs", buf, 2u);
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
        do
        {
          v10 = v4[2];
          v11 = *v10 == v4;
          v4 = v10;
        }

        while (!v11);
      }

      v4 = v10;
    }

    while (v10 != v5);
  }

  if (*(a1 + 178))
  {
    goto LABEL_27;
  }

  if (*(a1 + 240) == 1)
  {
    if ((*(a1 + 239) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 224))
      {
        goto LABEL_20;
      }
    }

    else if (!*(a1 + 239))
    {
      goto LABEL_20;
    }

    std::string::operator=(&v30, (a1 + 216));
  }

LABEL_20:
  v13 = *(a1 + 192);
  v12 = *(a1 + 200);
  if (v13 != v12)
  {
    while (!*v13)
    {
      v13 += 22;
      if (v13 == v12)
      {
        goto LABEL_27;
      }
    }

    ctu::hex((v13 + 4), 0x10, a3);
    if (SHIBYTE(v26[3]) < 0)
    {
      operator delete(v26[1]);
    }

    *&v26[1] = *buf;
    v26[3] = v25;
  }

LABEL_27:
  v14 = *(a1 + 96);
  sub_1014193C8(v15, v26);
  (*(*v14 + 72))(v14, v15);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*(&v28 + 1));
  }

  if (SBYTE7(v28) < 0)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v26[3]) < 0)
  {
    operator delete(v26[1]);
  }
}

void sub_101417A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_101417A60(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101417A60(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_101417AC4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101417BA4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101417C84(uint64_t a1, void *a2)
{
  v19 = 0;
  v20 = 0uLL;
  subscriber::makeSimSlotRange();
  __p = 0;
  v17 = 0;
  v18 = 0;
  v14 = 0;
  v15 = vextq_s8(0, 0, 8uLL);
  v12 = 0uLL;
  v13 = 0;
  sub_10052B060(&__p, &v14, &v12);
  v3 = __p;
  if (a2[2] < ((v17 - __p) >> 2))
  {
    isSimSettled = 0;
    if (!__p)
    {
      return isSimSettled;
    }

    goto LABEL_13;
  }

  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 == v5)
  {
    isSimSettled = 1;
    if (!__p)
    {
      return isSimSettled;
    }

    goto LABEL_13;
  }

  do
  {
    isSimSettled = subscriber::isSimSettled();
    if (!isSimSettled)
    {
      break;
    }

    v8 = v6[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v6[2];
        v10 = *v9 == v6;
        v6 = v9;
      }

      while (!v10);
    }

    v6 = v9;
  }

  while (v9 != v5);
  v3 = __p;
  if (__p)
  {
LABEL_13:
    v17 = v3;
    operator delete(v3);
  }

  return isSimSettled;
}

void sub_101417DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101417DDC(uint64_t a1, unsigned __int8 a2)
{
  v8 = a2;
  *(a1 + 384) = a2;
  v3 = sub_10005D028();
  sub_10000501C(&__p, "kNoSimAlertPreferenceKey");
  v4 = sub_1006197F4(v3, &__p, &v8);
  v5 = v4;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v5)
    {
      return;
    }
  }

  else if (v4)
  {
    return;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "failed to persist no sim alert preference", &__p, 2u);
  }
}

void sub_101417E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101417EB0(const void **result, uint64_t a2)
{
  v2 = result[43];
  if (v2)
  {
    v3 = a2;
    v4 = result;
    v5 = result + 43;
    do
    {
      if (*(v2 + 8) >= a2)
      {
        v5 = v2;
      }

      v2 = v2[*(v2 + 8) < a2];
    }

    while (v2);
    if (v5 != result + 43 && *(v5 + 8) <= a2)
    {
      v6 = result[5];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v10 = sub_101418F80(v3);
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I canceling alert:%s", buf, 0xCu);
      }

      v7 = v4[12];
      sub_10073A5C0(&v8, v5 + 5);
      (*(*v7 + 56))(v7, &v8);
      return sub_1001DCA14(&v8);
    }
  }

  return result;
}

void sub_101417FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001DCA14(va);
  _Unwind_Resume(a1);
}

void sub_101417FF4(uint64_t a1)
{
  if (!capabilities::ct::getRUIMDeprecationStrategy(a1))
  {
    return;
  }

  if ((atomic_load_explicit(&qword_101FCAA30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAA30))
  {
    __cxa_atexit(&std::string::~string, a898603, &_mh_execute_header);
    __cxa_guard_release(&qword_101FCAA30);
  }

  v2 = *(a1 + 128);
  if (v2 == (a1 + 136))
  {
LABEL_45:
    if (sub_101417C84(a1 + 56, (a1 + 128)) && *(a1 + 416) == 1)
    {
      v27 = *(a1 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Reset Ruim alert already shown status", buf, 2u);
      }

      *(a1 + 416) = 0;
    }

    return;
  }

  while (1)
  {
    v3 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v2 + 8));
    v4 = v3;
    v5 = v2[7];
    v6 = v2[8];
    if (v5 != v6)
    {
      while (*v5 != 4)
      {
        if (++v5 == v6)
        {
          goto LABEL_26;
        }
      }
    }

    if (v5 == v6)
    {
      goto LABEL_26;
    }

    RUIMDeprecationStrategy = capabilities::ct::getRUIMDeprecationStrategy(v3);
    if (RUIMDeprecationStrategy == 2)
    {
      break;
    }

    v8 = *(v2 + 135);
    v9 = v8 >= 0 ? (v2 + 14) : v2[14];
    v10 = v8 >= 0 ? *(v2 + 135) : v2[15];
    v11 = byte_101FB97F7 >= 0 ? a898603 : *a898603;
    v12 = byte_101FB97F7 >= 0 ? byte_101FB97F7 : unk_101FB97E8;
    if (!v12)
    {
      break;
    }

    if (v10 >= v12)
    {
      v17 = (v9 + v10);
      v18 = *v11;
      v19 = v9;
      do
      {
        v20 = v10 - v12;
        if (v20 == -1)
        {
          break;
        }

        v21 = memchr(v19, v18, v20 + 1);
        if (!v21)
        {
          break;
        }

        v22 = v21;
        RUIMDeprecationStrategy = memcmp(v21, v11, v12);
        if (!RUIMDeprecationStrategy)
        {
          if (v22 == v17 || v22 != v9)
          {
            break;
          }

          goto LABEL_41;
        }

        v19 = v22 + 1;
        v10 = v17 - (v22 + 1);
      }

      while (v10 >= v12);
    }

    v13 = *v4;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I ICCID '%s' does not match prefix", buf, 0xCu);
    }

LABEL_26:
    v14 = v2[1];
    if (v14)
    {
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v15 = v2[2];
        v16 = *v15 == v2;
        v2 = v15;
      }

      while (!v16);
    }

    v2 = v15;
    if (v15 == (a1 + 136))
    {
      goto LABEL_45;
    }
  }

LABEL_41:
  if (*(a1 + 416) == 1)
  {
    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v24 = "#I We've already shown the RUIM deprecated popup this power cycle";
      v25 = v23;
      v26 = 2;
      goto LABEL_44;
    }
  }

  else if (capabilities::ct::getRUIMDeprecationStrategy(RUIMDeprecationStrategy) == 1 && *(a1 + 184) == 1)
  {
    v28 = *(a1 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = asString();
      *buf = 136315138;
      *&buf[4] = v29;
      v24 = "#I Not showing RUIM deprecated alert due to buddy state (%s)";
      v25 = v28;
      v26 = 12;
LABEL_44:
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
    }
  }

  else
  {
    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I enqueue RUIM support alert", buf, 2u);
    }

    v31 = 4;
    *buf = &v31;
    sub_100EB3B10(a1 + 312, 4, buf);
    sub_100078B14(a1);
  }
}

void sub_1014183F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 417) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I SIM unlock in progress", &v18, 2u);
    }

    return;
  }

  if (!a2)
  {
    sub_100022DB4();
  }

  v4 = (*(*a2 + 48))(a2);
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315138;
      v19 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I enqueue SIM unlock alert (%s)", &v18, 0xCu);
    }

    v7 = (a1 + 320);
    v8 = *(a1 + 320);
    if (v8)
    {
      v9 = (a1 + 320);
      v10 = *(a1 + 320);
      do
      {
        if (v10[7] >= 5)
        {
          v9 = v10;
        }

        v10 = *&v10[2 * (v10[7] < 5)];
      }

      while (v10);
      if (v9 != v7 && *(v9 + 7) <= 5)
      {
        *(v9 + 8) = v5;
        goto LABEL_40;
      }

      v11 = *v9;
      if (*(a1 + 312) != v9)
      {
        if (v11)
        {
          v12 = *v9;
          do
          {
            v13 = v12;
            v12 = v12[1];
          }

          while (v12);
          goto LABEL_24;
        }

LABEL_21:
        v13 = v9;
        do
        {
          v14 = v13;
          v13 = v13[2];
        }

        while (*v13 == v14);
        v11 = 0;
LABEL_24:
        if (*(v13 + 7) >= 5)
        {
          for (; v8; v8 = v15[1])
          {
            while (1)
            {
              v15 = v8;
              v16 = *(v8 + 28);
              if (v16 < 6)
              {
                break;
              }

              v8 = *v15;
              if (!*v15)
              {
                goto LABEL_39;
              }
            }

            if (v16 == 5)
            {
              goto LABEL_40;
            }
          }

LABEL_39:
          operator new();
        }

        goto LABEL_35;
      }

      v13 = v9;
    }

    else
    {
      v9 = (a1 + 320);
      if (*(a1 + 312) != v7)
      {
        goto LABEL_21;
      }

      v11 = 0;
      v9 = (a1 + 320);
      v13 = (a1 + 320);
    }

LABEL_35:
    if (v11)
    {
      v17 = v13 + 1;
    }

    else
    {
      v17 = v9;
    }

    if (!*v17)
    {
      goto LABEL_39;
    }

LABEL_40:
    sub_100078B14(a1);
  }
}

BOOL sub_101418678(void *a1, void *a2)
{
  v4 = *a1;
  v2 = a1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
LABEL_15:
    v13 = *a2;
    v11 = a2 + 1;
    v12 = v13;
    if (v13 == v11)
    {
      return 0;
    }

    else
    {
      do
      {
        if (!*v2)
        {
          goto LABEL_23;
        }

        v14 = *(v12 + 8);
        v15 = v2;
        v16 = *v2;
        do
        {
          if (*(v16 + 32) >= v14)
          {
            v15 = v16;
          }

          v16 = *(v16 + 8 * (*(v16 + 32) < v14));
        }

        while (v16);
        if (v15 != v2 && v14 >= *(v15 + 8))
        {
          v17 = *(v15 + 12);
        }

        else
        {
LABEL_23:
          v17 = 0;
        }

        v18 = *(v12 + 12);
        v10 = v18 == v17;
        v19 = v18 != v17;
        if (!v10)
        {
          break;
        }

        v20 = v12[1];
        if (v20)
        {
          do
          {
            v21 = v20;
            v20 = *v20;
          }

          while (v20);
        }

        else
        {
          do
          {
            v21 = v12[2];
            v10 = *v21 == v12;
            v12 = v21;
          }

          while (!v10);
        }

        v12 = v21;
      }

      while (v21 != v11);
    }
  }

  else
  {
    if (a2[1])
    {
      while (1)
      {
        v5 = *(v3 + 8);
        v6 = a2 + 1;
        v7 = a2[1];
        do
        {
          if (*(v7 + 32) >= v5)
          {
            v6 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v5));
        }

        while (v7);
        if (v6 == a2 + 1 || v5 < *(v6 + 8))
        {
          break;
        }

        v8 = v3[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v3[2];
            v10 = *v9 == v3;
            v3 = v9;
          }

          while (!v10);
        }

        v3 = v9;
        if (v9 == v2)
        {
          goto LABEL_15;
        }
      }
    }

    return 1;
  }

  return v19;
}

uint64_t sub_1014187B8(void *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  if (*a1 == a1 + 1)
  {
    return 0;
  }

  while (1)
  {
    result = subscriber::isSimLocked();
    if (result)
    {
      break;
    }

    v4 = v2[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v2[2];
        v6 = *v5 == v2;
        v2 = v5;
      }

      while (!v6);
    }

    v2 = v5;
    if (v5 == v1)
    {
      return result;
    }
  }

  return 1;
}

void sub_101418838(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        sub_101417FF4(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1014188C0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014188DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014188EC(uint64_t a1)
{
  if (*(a1 + 177))
  {
    if (!*(a1 + 178))
    {
      if (*(a1 + 179))
      {
        goto LABEL_7;
      }

      v28 = *(a1 + 320);
      if (!v28)
      {
        return;
      }

      v29 = a1 + 320;
      do
      {
        if (*(v28 + 28) >= 5)
        {
          v29 = v28;
        }

        v28 = *(v28 + 8 * (*(v28 + 28) < 5));
      }

      while (v28);
      if (v29 == a1 + 320 || *(v29 + 28) > 5)
      {
        return;
      }

      v30 = *(v29 + 32);
      v31 = *(a1 + 40);
      if (!v30)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "unknown slot for SIM unlock alert", buf, 2u);
        }

        sub_10141BD94((a1 + 312), 5);
        return;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I launching SIM unlock alert", buf, 2u);
      }

      (*(**(a1 + 96) + 64))(*(a1 + 96), v30, *(a1 + 184) == 1);
      *(a1 + 417) = 1;
      sub_10000501C(buf, "/cc/assertions/prevent_baseband_reset");
      ctu::rest::AssertionHandle::create();
      if (SBYTE7(v37) < 0)
      {
        operator delete(*buf);
      }

      v32 = v41;
      v41 = 0uLL;
      v33 = *(a1 + 432);
      *(a1 + 424) = v32;
      if (!v33)
      {
        return;
      }

      sub_100004A34(v33);
      v27 = *(&v41 + 1);
      if (!*(&v41 + 1))
      {
        return;
      }

LABEL_51:
      sub_100004A34(v27);
      return;
    }
  }

  else if (*(a1 + 178) & 1) == 0 && (*(a1 + 179))
  {
LABEL_7:
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "#I screen is not locked but coversheet is active, don't display any alert";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
      return;
    }

    return;
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I showing SIM unlock alert on lock screen", buf, 2u);
  }

  v5 = *(a1 + 344);
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = a1 + 344;
  do
  {
    if (*(v5 + 32) >= 5)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < 5));
  }

  while (v5);
  if (v6 == a1 + 344 || *(v6 + 32) > 5 || (v7 = *(a1 + 96), sub_10073A5C0(&v40, (v6 + 40)), LODWORD(v7) = (*(*v7 + 48))(v7, &v40), sub_1001DCA14(&v40), !v7))
  {
LABEL_22:
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    *buf = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        if (!v16)
        {
          goto LABEL_28;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
LABEL_28:
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Missing LocalizationInterface!", buf, 2u);
      }

LABEL_49:
      if (v17)
      {
        return;
      }

      v27 = v15;
      goto LABEL_51;
    }

LABEL_32:
    v19 = *(a1 + 152);
    if (v19 == (a1 + 160))
    {
      *__p = 0u;
      v39 = 0u;
      *buf = 0u;
      v37 = 0u;
    }

    else
    {
      v20 = 0;
      do
      {
        isSimLocked = subscriber::isSimLocked();
        v22 = v19[1];
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
            v23 = v19[2];
            v24 = *v23 == v19;
            v19 = v23;
          }

          while (!v24);
        }

        v20 += isSimLocked;
        v19 = v23;
      }

      while (v23 != (a1 + 160));
      *__p = 0u;
      v39 = 0u;
      *buf = 0u;
      v37 = 0u;
      if (v20 == 1)
      {
        (*(*v16 + 40))(&v35, v16, kCBMessageLocalizationTable, @"SIM_CARD_LOCKED", @"SIM_CARD_LOCKED");
LABEL_44:
        v25 = v35;
        *&v41 = *buf;
        v35 = 0;
        *buf = v25;
        sub_100005978(&v41);
        sub_100005978(&v35);
        BYTE8(v39) = 1;
        (*(**(a1 + 96) + 40))(&v35);
        v34 = 5;
        *&v41 = &v34;
        v26 = (sub_10141CF14(a1 + 336, 5, &v41) + 5);
        if (v26 != &v35)
        {
          *&v41 = *v26;
          *v26 = v35;
          v35 = 0;
          sub_1001DCA14(&v41);
        }

        sub_1001DCA14(&v35);
        if (SBYTE7(v39) < 0)
        {
          operator delete(__p[0]);
        }

        sub_100005978(&v37 + 1);
        sub_100005978(&v37);
        sub_100005978(&buf[8]);
        sub_100005978(buf);
        goto LABEL_49;
      }
    }

    (*(*v16 + 40))(&v35, v16, kCBMessageLocalizationTable, @"MULTIPLE_SIM_CARDS_LOCKED", @"MULTIPLE_SIM_CARDS_LOCKED");
    goto LABEL_44;
  }

  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v3 = "#I SIM unlock alert is already active";
    goto LABEL_21;
  }
}

void sub_101418EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101418F24(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_100005978((a1 + 24));
  sub_100005978((a1 + 16));
  sub_100005978((a1 + 8));

  return sub_100005978(a1);
}

const char *sub_101418F80(int a1)
{
  if ((a1 - 1) > 8)
  {
    return "kNone";
  }

  else
  {
    return off_101F398A0[a1 - 1];
  }
}

void sub_101418FA8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = a3;
  memset(&v10, 0, sizeof(v10));
  sub_10000501C(__p, "kSimUnlockAlertPreferenceKey");
  sub_1014190D8(&v10, __p, a2);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_10005D028();
  if ((sub_1006197F4(v5, &v10, &v11) & 1) == 0)
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "failed to persist lock preference", v7, 2u);
    }
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1014190A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014190D8(std::string *a1, uint64_t a2, uint64_t a3)
{
  sub_10000501C(&v16, "_");
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::string::insert(&v16, 0, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = subscriber::asString();
  sub_10000501C(__p, v10);
  if ((v15 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v15 & 0x80u) == 0)
  {
    v12 = v15;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v17, v11, v12);
  *a1 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1014191DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101419228(uint64_t a1, uint64_t a2)
{
  memset(&v13, 0, sizeof(v13));
  sub_10000501C(__p, "kSimUnlockAlertPreferenceKey");
  sub_1014190D8(&v13, __p, a2);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  v10 = 0;
  v4 = sub_10005D028();
  if (sub_10005D0D8(v4, &v13, &v10))
  {
    v5 = v10;
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "unlocked";
      if (v5)
      {
        v7 = "locked";
      }

      *buf = 136315138;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I last sim lock status : %s", buf, 0xCu);
    }

    v8 = !v5;
  }

  else
  {
    v8 = 1;
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_101419388(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014193C8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  return a1;
}

void sub_1014194A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014194F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101419548(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101419588(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1014195B4(ServiceManager::Service *this)
{
  *this = off_101F39120;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101419610(ServiceManager::Service *this)
{
  *this = off_101F39120;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_101419690@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1014196D4(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10141584C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10141584C(v4, 0);
}

void sub_101419774(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101419854(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101419968(const void **a1)
{
  if (a1)
  {
    sub_101419968(*a1);
    sub_101419968(a1[1]);
    sub_1001DCA14(a1 + 5);

    operator delete(a1);
  }
}

uint64_t *sub_1014199BC(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 72));
  (*(**(v2 + 96) + 32))(*(v2 + 96));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_101419A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101419A84(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  Registry::getMobileHelper(buf, *(v1 + 56));
  v3 = *buf;
  memset(buf, 0, sizeof(buf));
  v4 = *(v1 + 120);
  *(v1 + 112) = v3;
  if (v4)
  {
    sub_100004A34(v4);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  Registry::createRestModuleOneTimeUseConnection(&v5, *(v1 + 56));
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10000501C(&__p, "/cc/props/sims_on_device");
  operator new();
}

void sub_10141A0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, std::__shared_weak_count *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a21)
  {
    std::__shared_weak_count::__release_weak(a21);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10141A194(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  (*(**(v1 + 96) + 24))(*(v1 + 96));
  cf = 0;
  (*(**(v1 + 112) + 16))(&cf);
  v3 = cf;
  if (cf)
  {
    __p[0] = cf;
    CFRetain(cf);
    ctu::cf::assign((v1 + 385), v3, v4);
    v5 = *(v1 + 385);
    if (*(v1 + 304) != v5)
    {
      *(v1 + 304) = v5;
      v6 = *(v1 + 296);
      if (v6)
      {
        (*(*v6 + 48))(v6, v1 + 304);
      }
    }

    v7 = *(v1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = CSIBOOLAsString(*(v1 + 385));
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fNoSimAlertSuppressed = %s", buf, 0xCu);
    }

    sub_100045C8C(__p);
  }

  else
  {
    v9 = *(v1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      memset(buf, 0, sizeof(buf));
      v17 = 0;
      ctu::cf::assign();
      *__p = *buf;
      v12 = v17;
      v10 = __p;
      if (v17 < 0)
      {
        v10 = *buf;
      }

      *v14 = 136315138;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s key not found", v14, 0xCu);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_10000A1EC(&cf);
  operator delete();
}

void sub_10141A418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, const void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_10000A1EC(&a16);
  operator delete();
}

__n128 sub_10141A504(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F391A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141A53C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v23 = 0uLL;
  v24 = 0;
  sub_10010A62C(&v23, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v20 = v3->__r_.__value_.__r.__words[0];
  v21 = size;
  v22 = v3->__r_.__value_.__r.__words[2];
  if (v22)
  {
    *(size + 16) = &v21;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v20 = &v21;
  }

  v18 = v23;
  v19 = v24;
  v24 = 0;
  v23 = 0uLL;
  sub_100D21B04(v3, &v18);
  v16 = &v18;
  sub_1000B2AF8(&v16);
  if (v22 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v20;
    if (v20 == &v21)
    {
      goto LABEL_27;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v21)
      {
        goto LABEL_27;
      }
    }
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = (a1[2] + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v16 = v20;
  v17[0] = v21;
  v17[1] = v22;
  if (v22)
  {
    *(v21 + 2) = v17;
    v20 = &v21;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v16 = v17;
  }

  v13(v15, &v16);
  sub_100359978(&v16, v17[0]);
LABEL_27:
  sub_100359978(&v20, v21);
  v20 = &v23;
  sub_1000B2AF8(&v20);
}

void sub_10141A73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, char *a17)
{
  sub_100359978(&a10, a11);
  sub_100359978(&a16, a17);
  a16 = (v17 - 64);
  sub_1000B2AF8(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10141A794(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141A85C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39220;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141A894(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v23 = 0uLL;
  v24 = 0;
  sub_10010A62C(&v23, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v20 = v3->__r_.__value_.__r.__words[0];
  v21 = size;
  v22 = v3->__r_.__value_.__r.__words[2];
  if (v22)
  {
    *(size + 16) = &v21;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v20 = &v21;
  }

  v18 = v23;
  v19 = v24;
  v24 = 0;
  v23 = 0uLL;
  sub_100D21B04(v3, &v18);
  v16 = &v18;
  sub_1000B2AF8(&v16);
  if (v22 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v20;
    if (v20 == &v21)
    {
      goto LABEL_27;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v21)
      {
        goto LABEL_27;
      }
    }
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = (a1[2] + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v16 = v20;
  v17[0] = v21;
  v17[1] = v22;
  if (v22)
  {
    *(v21 + 2) = v17;
    v20 = &v21;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v16 = v17;
  }

  v13(v15, &v16);
  sub_100359978(&v16, v17[0]);
LABEL_27:
  sub_100359978(&v20, v21);
  v20 = &v23;
  sub_1000B2AF8(&v20);
}

void sub_10141AA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **a16, char *a17)
{
  sub_100359978(&a10, a11);
  sub_100359978(&a16, a17);
  a16 = (v17 - 64);
  sub_1000B2AF8(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10141AAEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141ABB4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F392A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141ABEC(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_10141AC84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141AD4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39320;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141AD84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141AE4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F393A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141AE84(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_10141AF7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141B044(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39420;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141B07C(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_10141B114(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141B1D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F394A0;
  a2[1] = v2;
  return result;
}

void sub_10141B1FC(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/suppress_sim_alerts");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_10141B2AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10141B2F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141B3BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39520;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141B3F4(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_10141B43C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141B488(uint64_t a1)
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

void sub_10141B508(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v1 + 2);
  v5[0] = off_101F395A0;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v5;
  sub_1014183F4(v2, v5);
  sub_10141B488(v5);
  operator delete();
}

void sub_10141B5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10141B488(va);
  operator delete();
}

__n128 sub_10141B66C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F395A0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10141B6A0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (sub_101419228(v2, *(a1 + 16)))
  {
    return 3;
  }

  v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 16));
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v5)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I user prefers not to unlock SIM", v6, 2u);
    return 0;
  }

  return result;
}

uint64_t sub_10141B758(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10141B7A4(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v1 + 2);
  v5[0] = off_101F39630;
  v5[1] = v2;
  v5[2] = v3;
  v5[3] = v5;
  sub_1014183F4(v2, v5);
  sub_10141B488(v5);
  operator delete();
}

void sub_10141B868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10141B488(va);
  operator delete();
}

__n128 sub_10141B908(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39630;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10141B93C(uint64_t a1)
{
  if (sub_10141B9C4(*(a1 + 16), (*(a1 + 8) + 152)))
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141B978(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10141B9C4(int a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    while (*(v3 + 8) != a1 || (subscriber::isSimLocked() & 1) == 0)
    {
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
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
      if (v6 == v2)
      {
        v3 = v2;
        return v3 != v2;
      }
    }
  }

  return v3 != v2;
}

void sub_10141BA58(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(v1 + 8));
    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I setSimUnlockAllowedDuringBuddy %s", buf, 0xCu);
  }

  v5 = *(v1 + 8);
  *(v2 + 418) = v5;
  if (*(v2 + 184) == 1)
  {
    if (v5)
    {
      sub_100078B14(v2);
    }

    else
    {
      (*(**(v2 + 96) + 80))(*(v2 + 96));
    }
  }

  operator delete();
}

void sub_10141BB9C(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(v1 + 8));
    *buf = 136315138;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I saveNoSimAlertPreference %s", buf, 0xCu);
  }

  sub_101417DDC(v2, *(v1 + 8));
  operator delete();
}

void sub_10141BCA0(uint64_t **a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I clear sim lock status", buf, 2u);
  }

  sub_101418FA8(v2, *(v1 + 2), 0);
  operator delete();
}

void sub_10141BD94(uint64_t **a1, int a2)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      if (*(v6 + 7) >= a2)
      {
        v5 = v6;
      }

      v6 = v6[*(v6 + 7) < a2];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 7) <= a2)
    {
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v9 = v5;
        do
        {
          v8 = v9[2];
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (*a1 == v5)
      {
        *a1 = v8;
      }

      a1[2] = (a1[2] - 1);
      sub_100018288(v3, v5);

      operator delete(v5);
    }
  }
}

void sub_10141BE68(uint64_t **a1)
{
  v12 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(v1 + 417));
    *buf = 136315138;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SIM unlock flow finished, was in progress : %s", buf, 0xCu);
  }

  if (*(v1 + 417) == 1)
  {
    *(v1 + 417) = 0;
    v4 = *(v1 + 432);
    *(v1 + 424) = 0;
    *(v1 + 432) = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }

    sub_10141BD94((v1 + 312), 5);
    v5 = *(v1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I persist current sim lock preference", buf, 2u);
    }

    v6 = *(v1 + 152);
    if (v6 != (v1 + 160))
    {
      do
      {
        if (subscriber::isSimSettled())
        {
          v7 = *(v6 + 8);
          isSimLocked = subscriber::isSimLocked();
          sub_101418FA8(v1, v7, isSimLocked);
        }

        v9 = v6[1];
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
            v10 = v6[2];
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != (v1 + 160));
    }
  }

  operator delete();
}

void sub_10141C044(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(v1 + 417));
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SIM unlock flow deactivated, was in progress : %s", &buf, 0xCu);
  }

  if (*(v1 + 417) == 1)
  {
    *(v1 + 417) = 0;
    v4 = *(v1 + 432);
    *(v1 + 424) = 0;
    *(v1 + 432) = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }

    *&buf = off_101F396B0;
    *(&buf + 1) = v1;
    p_buf = &buf;
    sub_1014183F4(v1, &buf);
    sub_10141B488(&buf);
  }

  operator delete();
}

void sub_10141C174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10141B488(va);
  operator delete();
}

uint64_t sub_10141C214(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F396B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10141C240(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 320);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 320;
  do
  {
    if (*(v2 + 28) >= 5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < 5));
  }

  while (v2);
  if (v3 == v1 + 320 || *(v3 + 28) > 5)
  {
    return 0;
  }

  v5 = *(v3 + 32);
  if (v5 == 3)
  {
    if (sub_1014187B8((v1 + 152)))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else if (sub_10141B9C4(0, (v1 + 152)))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141C2DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10141C328(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(v1 + 417));
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SIM unlock flow invalidated, was in progress : %s", &buf, 0xCu);
  }

  if (*(v1 + 417) == 1)
  {
    *(v1 + 417) = 0;
    v4 = *(v1 + 432);
    *(v1 + 424) = 0;
    *(v1 + 432) = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }

    *&buf = off_101F39730;
    *(&buf + 1) = v1;
    p_buf = &buf;
    sub_1014183F4(v1, &buf);
    sub_10141B488(&buf);
  }

  operator delete();
}

void sub_10141C458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10141B488(va);
  operator delete();
}

uint64_t sub_10141C4F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F39730;
  a2[1] = v2;
  return result;
}

uint64_t sub_10141C524(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 320);
  if (!v2)
  {
    return 0;
  }

  v3 = v1 + 320;
  do
  {
    if (*(v2 + 28) >= 5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 28) < 5));
  }

  while (v2);
  if (v3 == v1 + 320 || *(v3 + 28) > 5)
  {
    return 0;
  }

  v5 = *(v3 + 32);
  if (v5 == 3)
  {
    if (sub_1014187B8((v1 + 152)))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else if (sub_10141B9C4(0, (v1 + 152)))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141C5C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10141C60C(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Device info page requested...", buf, 2u);
  }

  if (*(v1 + 178) != 1)
  {
    sub_1014177C0(v1, v3, v4);
    goto LABEL_36;
  }

  cf = 0;
  ServiceMap = Registry::getServiceMap(*(v1 + 56));
  v6 = ServiceMap;
  v8 = v7;
  if (v7 < 0)
  {
    v9 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  *buf = v8;
  v12 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v6);
  v13 = 0;
  v15 = 1;
LABEL_13:
  (*(*v14 + 96))(&cf, v14, 1, 2, @"ShowIMEIsInLockScreen", kCFBooleanFalse, 0);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v33 = 0;
  v16 = Registry::getServiceMap(*(v1 + 56));
  v17 = v16;
  if (v7 < 0)
  {
    v18 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v7 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v16);
  *buf = v7;
  v21 = sub_100009510(&v17[1].__m_.__sig, buf);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
LABEL_23:
      (*(*v23 + 96))(&v33, v23, 2, 2, @"ShowIMEIsInLockScreen", kCFBooleanFalse, 0);
      if ((v24 & 1) == 0)
      {
        sub_100004A34(v22);
      }

      v27 = cf;
      buf[0] = 0;
      if (cf && (v28 = CFGetTypeID(cf), v28 == CFBooleanGetTypeID()))
      {
        ctu::cf::assign(buf, v27, v26);
        v29 = buf[0];
      }

      else
      {
        v29 = 0;
      }

      v30 = v33;
      buf[0] = 0;
      if (v33 && (v31 = CFGetTypeID(v33), v31 == CFBooleanGetTypeID()))
      {
        ctu::cf::assign(buf, v30, v26);
        v32 = buf[0];
      }

      else
      {
        v32 = 0;
      }

      if ((v29 | v32))
      {
        sub_1014177C0(v1, v25, v26);
      }

      sub_10000A1EC(&v33);
      sub_10000A1EC(&cf);
LABEL_36:
      operator delete();
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v17);
  v22 = 0;
  v24 = 1;
  goto LABEL_23;
}

void sub_10141C93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v6);
  }

  sub_10000A1EC(va);
  operator delete();
}

void sub_10141C9BC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Show IDS transferring view ...", buf, 2u);
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *buf = 0u;
  v14 = 0u;
  buf[0] = 1;
  v3 = *(v1 + 96);
  sub_1014193C8(v4, buf);
  (*(*v3 + 88))(v3, v4);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  operator delete();
}

void sub_10141CAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_101417A60(&a10);
  sub_101417A60(va);
  operator delete();
}

void sub_10141CB24(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = a1 + 8;
    do
    {
      if (*(v2 + 32) >= a2)
      {
        v3 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 32) < a2));
    }

    while (v2);
    if (v3 != a1 + 8 && *(v3 + 32) <= a2)
    {
      sub_1000194D8(a1, v3);
      sub_1001DCA14((v3 + 40));

      operator delete(v3);
    }
  }
}

uint64_t *sub_10141CBAC(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10141CCC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F397B0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10141CCF4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 152);
  v3 = (v1 + 160);
  if (v2 == (v1 + 160))
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    result = subscriber::isSimSettled();
    if (!result)
    {
      break;
    }

    if (subscriber::isSimReady())
    {
      return 0;
    }

    if ((subscriber::isSimAbsent() & 1) == 0)
    {
      result = subscriber::isSimLocked();
      if (!result)
      {
        return result;
      }

      v4 = 1;
    }

    v6 = v2[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = v2[2];
        v8 = *v7 == v2;
        v2 = v7;
      }

      while (!v8);
    }

    v2 = v7;
    if (v7 == v3)
    {
      if (v4)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10141CDB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141CE70(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F39830;
  a2[1] = v2;
  return result;
}

uint64_t sub_10141CE9C(uint64_t a1)
{
  if (sub_1014187B8((*(a1 + 8) + 152)))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141CEC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10141CF14(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
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
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10141CFF0(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001DCA14(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

void DataUsageController::bootstrap_sync(id *this, group_session a2)
{
  DataUsageController::initialize_sync(this);
  (*(*this[64] + 16))(this[64]);
  v4 = this[66];
  v5 = *a2.var0.fObj;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 24))(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  (*(*this[70] + 16))(&v9);
  v6 = v9;
  v9 = 0uLL;
  v7 = this[69];
  *(this + 34) = v6;
  if (v7)
  {
    sub_100004A34(v7);
    if (*(&v9 + 1))
    {
      sub_100004A34(*(&v9 + 1));
    }
  }

  DataUsageController::subscriberInitialize_sync(this);
}

void sub_10141DCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DataUsageController::setUpTriggerForCollapsingAfter_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Will start collapsing records after: %llu", &buf, 0xCu);
  }

  Registry::getTimerService(&buf, *(a1 + 120));
  v5 = buf;
  sub_10000501C(__p, "DataUsageController");
  v6 = *(a1 + 24);
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3221225472;
  aBlock[2] = sub_10141E010;
  aBlock[3] = &unk_101E26008;
  aBlock[4] = a1;
  v11 = _Block_copy(aBlock);
  sub_100D23364(v5, __p, 1, 1000000 * a2, &object, &v11);
  v7 = v15;
  v15 = 0;
  v8 = *(a1 + 160);
  *(a1 + 160) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v15;
    v15 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }
}

void sub_10141DFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DataUsageController::resetIdleDataTimer_sync(DataUsageController *this)
{
  sub_100004AA0(&v17, this + 1);
  v3 = v17;
  v2 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  Registry::getTimerService(&v17, *(this + 15));
  v4 = v17;
  sub_10000501C(__p, "DataUsageController");
  v5 = *(this + 41);
  v6 = *(this + 3);
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3321888768;
  aBlock[2] = sub_10141E264;
  aBlock[3] = &unk_101F39A28;
  aBlock[4] = this;
  aBlock[5] = v3;
  v11 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = _Block_copy(aBlock);
  sub_100D23364(v4, __p, 1, 1000000 * v5, &object, &v12);
  v7 = v16;
  v16 = 0;
  v8 = *(this + 42);
  *(this + 42) = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v16;
    v16 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10141E1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v25 - 56);
  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void sub_10141E264(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        DataUsageController::handleIdleDataTimer_sync(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10141E2EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10141E308(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 sub_10141E394(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39A68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141E3CC(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  sub_10066EACC(&v8, a2);
  v4 = *v3;
  sub_100EE1F10(v3, &v8);
  if (v4 != *v3)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = (a1[2] + (v6 >> 1));
    if (v6)
    {
      v5 = *(*v7 + v5);
    }

    v5(v7, v4);
  }

  sub_100009970(&v8, v9[0]);
}

uint64_t sub_10141E4A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141E570(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39AE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141E5A8(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_10141E68C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141E754(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39B68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141E78C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1004F86DC(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_1004EDBF8(&v9, v10);
}

uint64_t sub_10141E864(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141E92C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39BE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141E964(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_10141E9AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141EA68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F39C68;
  a2[1] = v2;
  return result;
}

void sub_10141EA94(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v8 = 0;
  v3 = asString();
  ctu::rest::detail::write_enum_string_value(v2, v3, v4);
  sub_10000501C(&__p, "/cc/props/data_usage_status");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_10141EB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10141EB8C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141EBD8(uint64_t a1)
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

__n128 sub_10141ECD4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39CF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141ED0C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_10141ED54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141EE1C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39D78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141EE54(uint64_t *a1, xpc_object_t *a2)
{
  sub_1000745FC(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_10141EED0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141EF98(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39DF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141EFD0(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10011E228(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10141F0A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141F164(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F39E78;
  a2[1] = v2;
  return result;
}

void sub_10141F190(uint64_t a1, int *a2, const char *a3)
{
  v3 = *a2;
  if (v3 > 2)
  {
    v4 = "???";
  }

  else
  {
    v4 = off_101F3A2F8[v3];
  }

  v8 = 0;
  ctu::rest::detail::write_enum_string_value(v3, v4, a3);
  sub_10000501C(&__p, "/cc/props/database_integrity_check_result");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_10141F254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10141F298(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10141F2E4(uint64_t a1)
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

__n128 sub_10141F3E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39F08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141F418(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_10141F510(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141F5D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F39F88;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141F610(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_10141F708(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141F7D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A008;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141F808(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141F8D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A088;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10141F908(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_100109E38(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_10141F9E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141FAA8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A108;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141FAE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141FBA8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A188;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141FBE0(void *a1, const xpc::object *a2)
{
  v3 = a1[1];
  v4 = *v3;
  v5 = v3[1];
  v11 = *(v3 + 4);
  v10[0] = v4;
  v10[1] = v5;
  read_rest_value(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v10);
}

uint64_t sub_10141FC6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141FD34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A208;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141FD6C(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v13 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v6);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, &v13);
}

uint64_t sub_10141FE68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10141FF30(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3A288;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10141FF68(void *a1, xpc_object_t *a2)
{
  v7 = 0;
  sub_100F5355C(&v7, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, &v7);
}

uint64_t sub_10141FFE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014200D8(BlastDoorClientInterface *this)
{
  v2 = *(this + 1);
  *this = &off_101F3A320;
  *(this + 1) = 0;
  if (v2)
  {
    ctb::Client::~Client(v2);
    operator delete();
  }

  BlastDoorClientInterface::~BlastDoorClientInterface(this);
}

void sub_10142014C(BlastDoorClientInterface *a1)
{
  sub_1014200D8(a1);

  operator delete();
}

void NetworkUsageStrategy::create(uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_101420500(uint64_t a1)
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_101420718;
    block[3] = &unk_101E26008;
    block[4] = a1;
    dispatch_async(*(a1 + 24), block);
  }
}

void sub_101420578(std::__shared_weak_count *this)
{
  this->__vftable = off_101F3A3D8;
  shared_owners = this[1].__shared_owners_;
  if (shared_owners)
  {
    dispatch_release(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);
}

void sub_1014205D4(std::__shared_weak_count *this)
{
  this->__vftable = off_101F3A3D8;
  shared_owners = this[1].__shared_owners_;
  if (shared_owners)
  {
    dispatch_release(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(this);

  operator delete();
}

void sub_101420644(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_101420718;
    block[3] = &unk_101E26008;
    block[4] = v2;
    dispatch_async(*(v2 + 24), block);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_release(v3);
  }
}

uint64_t sub_1014206D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101420718(uint64_t a1)
{
  (*(**(a1 + 32) + 32))(*(a1 + 32));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void *sub_1014207A4(void *a1, NSObject **a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v16, kCtLoggingSystemName, "lazuli.reg.ctr");
  a1[1] = 0;
  a1[2] = 0;
  v6 = *a2;
  a1[3] = *a2;
  if (v6)
  {
    dispatch_retain(v6);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger(v14, &v16);
  ctu::OsLogLogger::OsLogLogger((a1 + 5), v14);
  ctu::OsLogLogger::~OsLogLogger(v14);
  ctu::OsLogContext::~OsLogContext(&v16);
  v15[0] = off_101E2B528;
  v15[1] = sub_101420BA0;
  v15[3] = v15;
  a1[6] = 0;
  if ((capabilities::ct::supportsGemini(v7) & 1) == 0)
  {
    operator new();
  }

  if (!a1[6])
  {
    operator new();
  }

  sub_1000A8744(v15);
  *a1 = off_101F3A438;
  sub_10000501C(&__p, "lazuli.reg.ctr");
  v11 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  a1[9] = *a3;
  v8 = a3[1];
  a1[10] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  DefaultLazuliRegistrationInitializerMap = GetDefaultLazuliRegistrationInitializerMap();
  sub_100DE3C84(a1 + 11, DefaultLazuliRegistrationInitializerMap);
  a1[19] = 0;
  a1[17] = 0;
  a1[18] = a1 + 19;
  a1[22] = 0;
  a1[23] = 0;
  a1[20] = 0;
  a1[21] = a1 + 22;
  return a1;
}