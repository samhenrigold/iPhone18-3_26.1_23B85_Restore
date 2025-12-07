void sub_100344B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  if (*(v34 + 23) < 0)
  {
    operator delete(*v34);
  }

  if (*(v35 - 105) < 0)
  {
    operator delete(*(v35 - 128));
  }

  std::ios::~ios();
  if (SHIBYTE(a19) < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

void *sub_100344C70(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  sub_10000501C(&v16, "--");
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::string::append(&v16, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  sub_100917DBC(v4, __p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1002049A4(*a1, "Content-Type", (a2 + 40));
  v11 = *a1;
  sub_100917F28((a2 + 80), &v16);
  TMKXPCServer.shutdown()();
  sub_100917DBC(v11, v12);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return sub_100917DBC(*a1, a2);
}

void sub_100344D74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::random_device *sub_100344DA8(std::random_device *a1)
{
  sub_10000501C(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_100344E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100344E1C(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return sub_100344ED8(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 31;
      if (((v6 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_100344ED8(a2) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

uint64_t sub_100344ED8(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x270uLL;
  v3 = *(a1 + 4 * v2);
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ *(a1 + 4 * ((v1 + 397) % 0x270uLL)) ^ ((v3 & 0x7FFFFFFE | *(a1 + 4 * v1) & 0x80000000) >> 1);
  *(a1 + 4 * v1) = v5;
  *(a1 + 2496) = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void sub_100344F78(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[10] = 0;
  a1[11] = 0;
  operator new();
}

void sub_100345104(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _Unwind_Exception *exception_object)
{
  v19 = a2;
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_10176BF64((v18 + 8), (v17 + 8), (v16 + 96), a1, v19, &exception_object);
  v21 = exception_object;
  v22 = *(v16 + 88);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  _Unwind_Resume(v21);
}

const char *sub_100345184(int a1)
{
  v1 = "lazuli.ims.del.?";
  if (a1 == 2)
  {
    v1 = "lazuli.ims.del.2";
  }

  if (a1 == 1)
  {
    return "lazuli.ims.del.1";
  }

  else
  {
    return v1;
  }
}

void sub_1003451B0(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  a1[10] = 0;
  a1[11] = 0;
  operator new();
}

void sub_10034530C(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, _Unwind_Exception *exception_object)
{
  v16 = a2;
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10176BFF4((v15 + 8), (v14 + 96), a1, v16, &exception_object);
  v18 = exception_object;
  v19 = *(v14 + 88);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  _Unwind_Resume(v18);
}

void sub_100345388(void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  sub_100347938();
}

void sub_1003453C4(void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  sub_100347BBC();
}

void sub_1003453FC(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleIncomingChat] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10067AF74(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100345644(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleSessionReady] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10067E184(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10034588C(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleMessageReceived] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10067E654(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100345AD4(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleMessageSend] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_100683DA8(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100345D1C(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleSessionEvent] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_1006852FC(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100345F64(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleSessionTerminated] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_1006843A0(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1003461AC(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v21 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v23 = v13;
          v24 = 2081;
          v25 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleParticipantChange] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v17 = *a2;
        v18 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v17);
        object = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_1006863A4(v9);
        xpc_release(object);
        if (v20)
        {
          sub_100004A34(v20);
        }

        if (v18)
        {
          sub_100004A34(v18);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1003463F4(uint64_t a1, xpc::object *a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = SlotIdFromPersonalityId();
        v9 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          xpc::object::to_string(__p, a2);
          v10 = v14 >= 0 ? __p : __p[0];
          *buf = 136380675;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleCapabilitiesReceived] %{private}s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v11 = *a2;
        object = v11;
        if (v11)
        {
          xpc_retain(v11);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10068B2D0(v7, &object);
        xpc_release(object);
        object = 0;
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1003465A8(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleGroupChatUpdate] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_100688458(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_1003467F0(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleGroupChatCreated] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10068728C(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100346A38(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleParticipantAdded] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_100689C34(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100346C80(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleParticipantRemoved] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10068A45C(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100346EC8(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 64);
      if (v9)
      {
        v10 = SlotIdFromPersonalityId();
        v11 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *a2;
          xpc::object::to_string(&__p, a3);
          v13 = "OK";
          if (!v12)
          {
            v13 = "(null)";
          }

          if (v22 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136315395;
          v24 = v13;
          v25 = 2081;
          v26 = p_p;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleLeaveGroupChat] -> chat:%s, info: %{private}s", buf, 0x16u);
          if (v22 < 0)
          {
            operator delete(__p);
          }
        }

        v15 = a2[1];
        v18 = *a2;
        v19 = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1000CE134(&__p, &v18);
        v16 = *a3;
        object = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10068AC84(v9, &__p, &object);
        xpc_release(object);
        object = 0;
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (v19)
        {
          sub_100004A34(v19);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100347110(uint64_t a1, void **a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = SlotIdFromPersonalityId();
        v9 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleSpamReportResponse]", buf, 2u);
        }

        v10 = *a2;
        object = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10069E2B0(v7, &object);
        xpc_release(object);
        object = 0;
      }

      sub_100004A34(v6);
    }
  }
}

void sub_100347214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100347244(uint64_t a1, void **a2)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 64);
      if (v7)
      {
        v8 = SlotIdFromPersonalityId();
        v9 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [handleMlsGroupInfoReceived]", buf, 2u);
        }

        v10 = *a2;
        object = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          object = xpc_null_create();
        }

        sub_10069E720(v7, &object);
        xpc_release(object);
        object = 0;
      }

      sub_100004A34(v6);
    }
  }
}

void sub_100347348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_100347378(uint64_t a1, uint64_t *a2, xpc::object *a3)
{
  v6 = SlotIdFromPersonalityId();
  v7 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *a2 ? "OK" : "(null)";
    xpc::object::to_string(__p, a3);
    v9 = v14 >= 0 ? __p : __p[0];
    *buf = 136315395;
    v16 = v8;
    v17 = 2081;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [sendMessage] -> chat:%s, info: %{private}s", buf, 0x16u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v10 = *a2;
  v11 = *a3;
  object = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v10 + 32))(v10, &object);
  xpc_release(object);
}

void sub_100347548(uint64_t a1@<X0>, uint64_t *a2@<X1>, xpc::object *a3@<X2>, void *a4@<X8>)
{
  v8 = SlotIdFromPersonalityId();
  v9 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a2 ? "OK" : "(null)";
    xpc::object::to_string(__p, a3);
    v11 = v18 >= 0 ? __p : __p[0];
    *buf = 136315395;
    v20 = v10;
    v21 = 2081;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [startChat] -> chat:%s, info: %{private}s", buf, 0x16u);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = a2[1];
  v14 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  object = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    object = xpc_null_create();
  }

  ims::lazuli::Chat::startChat();
  sub_1000CE134(a4, &v15);
  if (v16)
  {
    sub_100004A34(v16);
  }

  xpc_release(object);
  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_100347760(uint64_t a1)
{
  v2 = SlotIdFromPersonalityId();
  v3 = *(*(**(a1 + 96) + 16))(*(a1 + 96), v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [CT] <<== laz <<== [IPT] [getChatServices]", buf, 2u);
  }

  v4 = *(a1 + 56);
  v5 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ims::lazuli::ChatServices::create();
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_100347838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count **sub_100347850(std::__shared_weak_count **a1)
{
  sub_1000CE6E4(a1);
  v3 = *(v2 + 96);
  a1[12] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_1003478B4(std::__shared_weak_count **a1)
{
  sub_1000CE6E4(a1);
  v3 = *(v2 + 96);
  a1[12] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete();
}

void sub_1003479DC(void *a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E43B60;
  sub_100347AD4(a1 + 3, a2, a3, a4, a5);
}

void sub_100347A58(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E43B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100347AD4(void *a1, unsigned int *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = a3[1];
  v11[0] = *a3;
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a4[1];
  v10[0] = *a4;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a5[1];
  v9[0] = *a5;
  v9[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  sub_100344F78(a1, v5, v11, v10, v9);
}

void sub_100347B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100347C58(void *a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E43B60;
  sub_100347CB4(a1 + 3, a2, a3, a4);
}

void sub_100347CB4(void *a1, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = a3[1];
  v8[0] = *a3;
  v8[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a4[1];
  v7[0] = *a4;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003451B0(a1, v4, v8, v7);
}

void sub_100347D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100347D60(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 2;
  }

  else
  {
    return dword_1017F5DE4[a1 - 1];
  }
}

uint64_t sub_100347D84(int a1)
{
  if ((a1 - 1) > 5)
  {
    return 2;
  }

  else
  {
    return dword_1017F5DFC[a1 - 1];
  }
}

uint64_t sub_100347DA8(uint64_t a1, void *a2, NSObject **a3, ctu::OsLogLogger *a4)
{
  v7 = ctu::OsLogLogger::OsLogLogger(a1, a4);
  v8 = a2[1];
  *(v7 + 8) = *a2;
  *(v7 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v9 = *a3;
  *(a1 + 40) = *a3;
  if (v9)
  {
    dispatch_retain(v9);
  }

  *(a1 + 48) = 0x500000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

void sub_100347E28(ctu::OsLogLogger *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    sub_100004A34(v6);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

BOOL sub_100347EC0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 1;
  }

  if (v1 == 1 && !*(a1 + 56))
  {
    return *(a1 + 52) != 0;
  }

  return 0;
}

void sub_100347EF8(uint64_t a1, int a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "";
    if (a2)
    {
      v5 = "permanent ";
    }

    v7 = 136315650;
    v8 = off_101FB1C60;
    v9 = 2080;
    v10 = ", ";
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sgot %sfailure report", &v7, 0x20u);
  }

  if (a2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  *(a1 + 48) = v6;
  if ((a2 & 1) == 0)
  {
    sub_100347FF8(a1);
  }
}

void sub_100347FF8(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v2 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315394;
    *&buf[4] = off_101FB1C60;
    *&buf[12] = 2080;
    *&buf[14] = ", ";
    v3 = "#I %s%sAlready waiting on timer";
    goto LABEL_4;
  }

  v6 = *(a1 + 52);
  if (v6)
  {
    *(a1 + 52) = v6 - 1;
    Registry::getTimerService(buf, *(a1 + 8));
    v7 = *buf;
    sub_10000501C(__p, "PSThrottlingEntitlements retry");
    v8 = *(a1 + 40);
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100348490;
    aBlock[3] = &unk_101E43BC0;
    aBlock[4] = a1;
    v15 = _Block_copy(aBlock);
    sub_100D23364(v7, __p, 1, 60000000, &object, &v15);
    v9 = v19;
    v19 = 0;
    v10 = *(a1 + 56);
    *(a1 + 56) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
      v11 = v19;
      v19 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    if (v15)
    {
      _Block_release(v15);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v12 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 52);
      *buf = 136315906;
      *&buf[4] = off_101FB1C60;
      *&buf[12] = 2080;
      *&buf[14] = ", ";
      v21 = 1024;
      v22 = 60;
      v23 = 1024;
      v24 = v13;
      v3 = "#I %s%sTriggering retry in %d seconds. %d retries left";
      v4 = v12;
      v5 = 34;
      goto LABEL_21;
    }
  }

  else
  {
    v2 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = off_101FB1C60;
      *&buf[12] = 2080;
      *&buf[14] = ", ";
      v3 = "#I %s%sNo more retries allowed";
LABEL_4:
      v4 = v2;
      v5 = 22;
LABEL_21:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v3, buf, v5);
    }
  }
}

void sub_1003482E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100348350(uint64_t a1)
{
  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = off_101FB1C60;
    v8 = 2080;
    v9 = ", ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sreset", &v6, 0x16u);
  }

  *(a1 + 48) = 0x500000000;
  v3 = *(a1 + 56);
  if (v3)
  {
    (*(*v3 + 16))(v3);
    v4 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  *(a1 + 64) = 0;
  v5 = *(a1 + 72);
  *(a1 + 72) = 0;
  if (v5)
  {
    _Block_release(v5);
  }
}

void sub_100348484(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100348490(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + 24);
      if (!v5)
      {
LABEL_22:
        sub_100004A34(v4);
        return;
      }

      v6 = *v1;
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136315394;
        v14 = off_101FB1C60;
        v15 = 2080;
        v16 = ", ";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%scallback", &v13, 0x16u);
      }

      v7 = *(v1 + 56);
      *(v1 + 56) = 0;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }

      v8 = *(v1 + 72);
      if (v8)
      {
        v9 = _Block_copy(v8);
        v10 = *(v1 + 72);
        *(v1 + 72) = 0;
        if (v10)
        {
          _Block_release(v10);
        }

        v11 = *(v1 + 64);
        *(v1 + 64) = 0;
        if (*(v1 + 48) != 1)
        {
          goto LABEL_20;
        }

        if (v9)
        {
          v9[2](v9);
        }

        if (!v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v12 = *(v1 + 64);
        *(v1 + 64) = 0;
        if (*(v1 + 48) != 1 || (v12 & 1) == 0)
        {
          goto LABEL_22;
        }

        v9 = 0;
      }

      (*(*v5 + 344))(v5, 0, 0);
LABEL_20:
      if (v9)
      {
        _Block_release(v9);
      }

      goto LABEL_22;
    }
  }
}

void sub_10034865C(_Unwind_Exception *a1)
{
  _Block_release(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_1003486B0(void (***a1)(), NSObject **a2, uint64_t a3, char *a4)
{
  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, a4);
  sub_100348BE0(a1 + 1, a2 + 2, &buf);
  ctu::OsLogContext::~OsLogContext(&buf);
  v6 = off_101E43BF0;
  *a1 = off_101E43BF0;
  a1[6] = *a2;
  v7 = a2[1];
  a1[7] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7[1], 1uLL, memory_order_relaxed);
    v6 = *a1;
  }

  v8 = (v6[25])(a1);
  sub_10000501C(&__p, v8);
  v9 = a1[3];
  v10 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::RestModule::RestModule();
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  sub_1003508A4();
}

void sub_100348A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_100DB14E0(v18 + 840);
  v24 = *(v18 + 832);
  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_10013DF64(v18 + 800, *(v18 + 808));
  v25 = *(v18 + 792);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v18 + 776);
  if (v26)
  {
    sub_100004A34(v26);
  }

  if (*(v18 + 767) < 0)
  {
    operator delete(*v21);
  }

  sub_10006DCAC(v18 + 712, *(v18 + 720));
  std::mutex::~mutex((v18 + 648));
  sub_10006DCAC(v18 + 624, *(v18 + 632));
  sub_10006DCAC(v18 + 600, *(v18 + 608));
  sub_10006EC28(v18 + 576, *(v18 + 584));
  if (*(v18 + 568) == 1 && *(v18 + 567) < 0)
  {
    operator delete(*(v18 + 544));
  }

  sub_1003509AC(v18 + 512, *(v18 + 520));
  std::mutex::~mutex((v18 + 448));
  v27 = *(v18 + 440);
  *(v18 + 440) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  sub_100347E28((v19 + 264));
  if (*(v18 + 344) == 1)
  {
    sub_1002B74B0(v20);
  }

  if (*(v18 + 143) < 0)
  {
    operator delete(*v22);
  }

  sub_10006EC28(v19, *(v18 + 104));
  v28 = *(v18 + 88);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v18 + 72);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v18 + 56);
  if (v30)
  {
    sub_100004A34(v30);
  }

  PhoneServicesControl::~PhoneServicesControl(v18);
  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544((v18 + 8));
  _Unwind_Resume(a1);
}

void *sub_100348BE0(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_100348C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_100348C6C(uint64_t a1)
{
  *a1 = off_101E43BF0;
  sub_100DB14E0(a1 + 840);
  v2 = *(a1 + 832);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10013DF64(a1 + 800, *(a1 + 808));
  v3 = *(a1 + 792);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 776);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 767) < 0)
  {
    operator delete(*(a1 + 744));
  }

  sub_10006DCAC(a1 + 712, *(a1 + 720));
  std::mutex::~mutex((a1 + 648));
  sub_10006DCAC(a1 + 624, *(a1 + 632));
  sub_10006DCAC(a1 + 600, *(a1 + 608));
  sub_10006EC28(a1 + 576, *(a1 + 584));
  if (*(a1 + 568) == 1 && *(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  sub_1003509AC(a1 + 512, *(a1 + 520));
  std::mutex::~mutex((a1 + 448));
  v5 = *(a1 + 440);
  *(a1 + 440) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  sub_100347E28((a1 + 360));
  if (*(a1 + 344) == 1)
  {
    sub_1002B74B0(a1 + 144);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  sub_10006EC28(a1 + 96, *(a1 + 104));
  v6 = *(a1 + 88);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 72);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    sub_100004A34(v8);
  }

  PhoneServicesControl::~PhoneServicesControl(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

const void **sub_100348E08(uint64_t a1)
{
  if (*(**(a1 + 80) + 49) == 1)
  {
    v2 = @"onfile.status.icloud";
  }

  else
  {
    v2 = @"onfile.status.sim";
  }

  v40 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v4 = ServiceMap;
  v6 = v5;
  if (v5 < 0)
  {
    v7 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
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
  v37 = v6;
  v10 = sub_100009510(&v4[1].__m_.__sig, &v37);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v4);
  v11 = 0;
  v13 = 1;
LABEL_12:
  v14 = kPhoneServicesWalletDomain;
  (*(*v12 + 24))(&v41, v12, **(a1 + 80) + 24, @"onfile.status", kPhoneServicesWalletDomain, 0, 1);
  sub_100010180(&v40, &v41);
  sub_10000A1EC(&v41);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v40)
  {
    goto LABEL_21;
  }

  sub_1006160F0(&v37);
  v39 = sub_1006160B8(v37, v2);
  v41 = 0;
  sub_100138C38(&v41, &v39);
  v15 = v40;
  v40 = v41;
  v41 = v15;
  sub_10001021C(&v41);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (v40)
  {
    goto LABEL_21;
  }

  sub_1006160F0(&v37);
  v39 = sub_1006160B8(v37, @"onfile.status");
  v41 = 0;
  sub_100138C38(&v41, &v39);
  v16 = v40;
  v40 = v41;
  v41 = v16;
  sub_10001021C(&v41);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (v40)
  {
LABEL_21:
    v17 = Registry::getServiceMap(*(a1 + 48));
    v18 = v17;
    v19 = v5;
    if (v5 < 0)
    {
      v20 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(v17);
    v37 = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, &v37);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v18);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v26 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
LABEL_29:
    (*(*v25 + 16))(v25, **(a1 + 80) + 24, @"onfile.status", v40, v14, 0, 4, 0);
    if ((v26 & 1) == 0)
    {
      sub_100004A34(v24);
    }

    v27 = Registry::getServiceMap(*(a1 + 48));
    v28 = v27;
    if (v5 < 0)
    {
      v29 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v5 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v27);
    v37 = v5;
    v32 = sub_100009510(&v28[1].__m_.__sig, &v37);
    if (v32)
    {
      v34 = v32[3];
      v33 = v32[4];
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v33);
        v35 = 0;
LABEL_39:
        (*(*v34 + 32))(v34, **(a1 + 80) + 24, @"onfile.status", v14, 0, 1);
        if ((v35 & 1) == 0)
        {
          sub_100004A34(v33);
        }

        sub_1006160F0(&v37);
        sub_100616054(v37, v2, 0);
        if (v38)
        {
          sub_100004A34(v38);
        }

        sub_1006160F0(&v37);
        sub_100616054(v37, @"onfile.status", 0);
        if (v38)
        {
          sub_100004A34(v38);
        }

        return sub_10001021C(&v40);
      }
    }

    else
    {
      v34 = 0;
    }

    std::mutex::unlock(v28);
    v33 = 0;
    v35 = 1;
    goto LABEL_39;
  }

  return sub_10001021C(&v40);
}

void sub_100349250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1003492DC(uint64_t a1)
{
  v2 = **(a1 + 80);
  v3 = *(v2 + 47);
  v4 = *(v2 + 32);
  if ((v3 & 0x80u) == 0)
  {
    v4 = v3;
  }

  if (v4)
  {
    sub_100348E08(a1);
    Registry::createRestModuleOneTimeUseConnection(&v15, *(a1 + 48));
    ctu::RestModule::connect();
    if (v16)
    {
      sub_100004A34(v16);
    }

    sub_100004AA0(buf, (a1 + 8));
    v6 = *buf;
    v5 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v5);
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 392);
    *(a1 + 384) = v6;
    *(a1 + 392) = v5;
    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    sub_100004AA0(buf, (a1 + 8));
    v8 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
    }

    sub_10000501C(v18, "/cc/props/carrier_entitlements_info");
    operator new();
  }

  std::mutex::lock((a1 + 448));
  v10 = 0;
  v11 = (a1 + 104);
  LODWORD(v17) = 0;
  do
  {
    v12 = *v11;
    if (!*v11)
    {
      goto LABEL_23;
    }

    v13 = a1 + 104;
    do
    {
      if (*(v12 + 32) >= v10)
      {
        v13 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 32) < v10));
    }

    while (v12);
    if (v13 == v11 || v10 < *(v13 + 32))
    {
LABEL_23:
      v18[0] = 0;
      v18[1] = 0;
      sub_10034A388(v9, v10);
    }

    LODWORD(v17) = v10 + 1;
  }

  while (v10++ < 5);
  std::mutex::unlock((a1 + 448));
}

void sub_10034A028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (a2)
  {
    sub_100352130(&a35);
    sub_100222BDC(&a31);
    sub_100222BDC(&a27);
    sub_100352130((v43 + 24));
    a35 = v44 - 160;
    sub_1001018AC(&a35);
    sub_100222BDC(&a23);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034A2A8(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/remote_paired_device_list");
  v5[0] = off_101E44410;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10034A35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10034A388(void x0_0, unsigned int a1)
{
  if (a1 < 4)
  {
    operator new();
  }

  if (a1 != 4)
  {
    operator new();
  }

  operator new();
}

void sub_10034A4A8(uint64_t result)
{
  v1 = **(result + 80);
  v2 = *(v1 + 47);
  v3 = *(v1 + 32);
  if ((v2 & 0x80u) == 0)
  {
    v3 = v2;
  }

  if (v3)
  {
    ServiceMap = Registry::getServiceMap(*(result + 48));
    v6 = ServiceMap;
    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    v22 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
LABEL_12:
        v15 = (*(*v13 + 208))(&v20, v13);
        v16 = (result + 744);
        if (*(result + 767) < 0)
        {
          operator delete(*v16);
        }

        *v16 = v20;
        *(result + 760) = v21;
        HIBYTE(v21) = 0;
        LOBYTE(v20) = 0;
        if ((v14 & 1) == 0)
        {
          sub_100004A34(v12);
        }

        if (capabilities::ct::supportsThumperSourcing(v15))
        {
          sub_100004AA0(&v20, (result + 8));
          v17 = v20;
          if (*(&v20 + 1))
          {
            atomic_fetch_add_explicit((*(&v20 + 1) + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(*(&v17 + 1));
          }

          v18[0] = _NSConcreteStackBlock;
          v18[1] = 1174405120;
          v18[2] = sub_10034A710;
          v18[3] = &unk_101E43DD8;
          v18[4] = result;
          v19 = v17;
          if (*(&v17 + 1))
          {
            atomic_fetch_add_explicit((*(&v17 + 1) + 16), 1uLL, memory_order_relaxed);
          }

          sub_10079D8A0(524532, v18);
          if (*(&v19 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v19 + 1));
          }

          if (*(&v17 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v17 + 1));
          }
        }

        if (*(result + 344) == 1)
        {
          sub_10034A87C(result, result + 192);
        }

        sub_10034AAA4(result, 0);
        return;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_12;
  }
}

void sub_10034A6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034A710(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        v5 = a1[6];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        v6[0] = 0;
        v6[1] = 0;
        sub_100004AA0(v6, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10034A850(uint64_t result, uint64_t a2)
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

void sub_10034A86C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10034A87C(uint64_t a1, uint64_t a2)
{
  __dst[0] = 0;
  __dst[1] = 0;
  v17 = 0;
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 111) < 0)
    {
      sub_100005F2C(__dst, *(a2 + 88), *(a2 + 96));
    }

    else
    {
      *__dst = *(a2 + 88);
      v17 = *(a2 + 104);
    }
  }

  else
  {
    sub_10000501C(__dst, "");
  }

  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  if (*(a2 + 144) == 1)
  {
    if (*(a2 + 143) < 0)
    {
      sub_100005F2C(__p, *(a2 + 120), *(a2 + 128));
    }

    else
    {
      *__p = *(a2 + 120);
      v15 = *(a2 + 136);
    }
  }

  else
  {
    sub_10000501C(__p, "");
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v18 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v18);
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
      goto LABEL_19;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_19:
  (*(*v12 + 72))(v12, **(a1 + 80) + 24, __dst, __p);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10034AA58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034AAA4(uint64_t a1, int a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v22 = 0;
  v4 = (a1 + 120);
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(__p, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *__p = *v4;
    v22 = *(a1 + 136);
  }

  v20 = 0;
  *buf = MGCopyAnswer();
  sub_100222990(&v20, buf);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v5 = *buf;
  v25[0] = *&buf[8];
  *(v25 + 7) = *&buf[15];
  v6 = buf[23];
  if (*(a1 + 143) < 0)
  {
    operator delete(*v4);
  }

  v7 = v25[0];
  *(a1 + 120) = v5;
  *(a1 + 128) = v7;
  *(a1 + 135) = *(v25 + 7);
  *(a1 + 143) = v6;
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = **(a1 + 80);
    if (v9)
    {
      v10 = PersonalityInfo::logPrefix(v9);
      v6 = *(a1 + 143);
    }

    else
    {
      v10 = "-1";
    }

    v11 = v4;
    if ((v6 & 0x80) != 0)
    {
      v11 = *v4;
    }

    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sdisplayName: %s", buf, 0x20u);
  }

  if (a2)
  {
    if (v22 >= 0)
    {
      v12 = HIBYTE(v22);
    }

    else
    {
      v12 = __p[1];
    }

    v13 = *(a1 + 143);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a1 + 128);
    }

    if (v12 != v13 || (v22 >= 0 ? (v15 = __p) : (v15 = __p[0]), v14 >= 0 ? (v16 = v4) : (v16 = *v4), memcmp(v15, v16, v12)))
    {
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = **(a1 + 80);
        if (v18)
        {
          v19 = PersonalityInfo::logPrefix(v18);
        }

        else
        {
          v19 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v19;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sNeed to re-issue getPhoneServicesAccountStatus", buf, 0x16u);
      }

      (*(*a1 + 384))(a1, 0);
    }
  }

  sub_100005978(&v20);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10034AD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10034ADC0(uint64_t a1, void *a2)
{
  result = sub_10112CDBC(a2, (**(a1 + 80) + 24));
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = **(a1 + 80);
      if (v5)
      {
        v6 = PersonalityInfo::logPrefix(v5);
      }

      else
      {
        v6 = "-1";
      }

      v12 = 136315394;
      v13 = v6;
      v14 = 2080;
      v15 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%srefresh PhoneServices account status", &v12, 0x16u);
    }

    *(a1 + 736) = 0;
    sub_100348350(a1 + 360);
    *(a1 + 352) = 0;
    result = (*(*a1 + 456))(a1, 1);
    v7 = *(a1 + 96);
    v8 = (a1 + 104);
    if (v7 != v8)
    {
      do
      {
        result = (*(*v7[5] + 160))(v7[5]);
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
            v11 = *v10 == v7;
            v7 = v10;
          }

          while (!v11);
        }

        v7 = v10;
      }

      while (v10 != v8);
    }
  }

  return result;
}

uint64_t sub_10034AF5C(uint64_t a1)
{
  if (sub_10034AFC4(a1))
  {
    return 1;
  }

  if (*(a1 + 344) == 1 && *(a1 + 260) == 1)
  {
    v3 = *(a1 + 256);
    if (v3 <= 2)
    {
      return dword_1017F5E14[v3];
    }
  }

  return 0;
}

uint64_t sub_10034AFC4(uint64_t a1)
{
  if (*(a1 + 840) != 2)
  {
    goto LABEL_14;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v31 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v31);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
LABEL_10:
  isWatch = GestaltUtilityInterface::isWatch(v10);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (isWatch)
  {
    v12 = @"EnableWiFiCallingWithoutEntitlementInStandaloneMode";
    goto LABEL_15;
  }

LABEL_14:
  v12 = @"EnableWiFiCallingWithoutEntitlement";
LABEL_15:
  v13 = Registry::getServiceMap(*(a1 + 48));
  v14 = v13;
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v13);
  v31 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &v31);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
LABEL_23:
  isIPhone = GestaltUtilityInterface::isIPhone(v21);
  v24 = &kCFBooleanTrue;
  if (!isIPhone)
  {
    v24 = &kCFBooleanFalse;
  }

  (*(*a1 + 472))(&cf, a1, v12, *v24);
  v25 = cf;
  LOBYTE(v31) = 0;
  if (cf)
  {
    v26 = CFGetTypeID(cf);
    if (v26 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v31, v25, v27);
      LOBYTE(v25) = v31;
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  sub_10000A1EC(&cf);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v28 = sub_1001E8470(a1 + 800, (**(a1 + 80) + 24), 7u);
  return (v28 != 1) & (v28 >> 8);
}

void sub_10034B248(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10034B28C(uint64_t a1)
{
  if (sub_10034AFC4(a1))
  {
    return 1;
  }

  if (*(a1 + 344) == 1 && *(a1 + 268) == 1)
  {
    v3 = *(a1 + 264);
    if (v3 <= 2)
    {
      return dword_1017F5E14[v3];
    }
  }

  return 0;
}

uint64_t sub_10034B2F4(uint64_t a1)
{
  if (sub_10034AFC4(a1))
  {
    return 1;
  }

  if (*(a1 + 344) == 1 && *(a1 + 276) == 1)
  {
    v3 = *(a1 + 272);
    if (v3 <= 4)
    {
      return dword_1017F5E20[v3];
    }
  }

  return 0;
}

BOOL sub_10034B35C(uint64_t a1, int a2)
{
  if (a2 == 5)
  {
    return 1;
  }

  if (*(a1 + 344) != 1)
  {
    return 0;
  }

  if (*(a1 + 276) == 1 && *(a1 + 272) == 3 || *(a1 + 268) == 1 && *(a1 + 264) == 3)
  {
    return 1;
  }

  return *(a1 + 260) == 1 && *(a1 + 256) == 3;
}

BOOL sub_10034B3CC(uint64_t a1)
{
  if (*(a1 + 344) != 1 || *(a1 + 216) != 1)
  {
    return 0;
  }

  v1 = *(a1 + 215);
  if (v1 < 0)
  {
    v1 = *(a1 + 200);
  }

  return v1 != 0;
}

uint64_t sub_10034B404(uint64_t a1)
{
  v2 = sub_10034AF5C(a1);
  v3 = sub_10034B28C(a1);
  LODWORD(result) = sub_10034B2F4(a1);
  if (v3 >= v2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (result >= v5)
  {
    return v5;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10034B458(uint64_t a1, int a2, unsigned int a3)
{
  if (*(**(a1 + 80) + 48) != 1)
  {
    return 0;
  }

  if (a2 && sub_10034B404(a1) != 1 || *(a1 + 344) != 1 || !sub_10034B74C(a1 + 144) || *(a1 + 352) != 1)
  {
    if (*(a1 + 344) == 1 && (sub_10034B74C(a1 + 144) & 1) != 0)
    {
      v7 = *(a1 + 352);
      v8 = *(a1 + 40);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          v10 = **(a1 + 80);
          if (v10)
          {
            v11 = PersonalityInfo::logPrefix(v10);
          }

          else
          {
            v11 = "-1";
          }

          v19 = sub_10034AF5C(a1);
          v20 = sub_10060FFE4(v19);
          v21 = sub_10034B28C(a1);
          v22 = sub_10060FFE4(v21);
          v23 = sub_10034B2F4(a1);
          v24 = 136316162;
          v25 = v11;
          v26 = 2080;
          v27 = " ";
          v28 = 2080;
          v29 = v20;
          v30 = 2080;
          v31 = v22;
          v32 = 2080;
          v33 = sub_10060FFE4(v23);
          v14 = "#I %s%saccount status re-requested because: is911AddrStatusOK:%s, isTcStatusOK:%s, isAccountProvisioned:%s";
          v15 = v8;
          v16 = 52;
          goto LABEL_21;
        }

LABEL_22:
        (*(*a1 + 384))(a1, a2 | a3);
        goto LABEL_23;
      }

      if (!v9)
      {
        goto LABEL_22;
      }

      v17 = **(a1 + 80);
      if (v17)
      {
        v18 = PersonalityInfo::logPrefix(v17);
      }

      else
      {
        v18 = "-1";
      }

      v24 = 136315394;
      v25 = v18;
      v26 = 2080;
      v27 = " ";
      v14 = "#I %s%saccount status need to be refreshed, it's time to";
    }

    else
    {
      v8 = *(a1 + 40);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v12 = **(a1 + 80);
      if (v12)
      {
        v13 = PersonalityInfo::logPrefix(v12);
      }

      else
      {
        v13 = "-1";
      }

      v24 = 136315394;
      v25 = v13;
      v26 = 2080;
      v27 = " ";
      v14 = "#I %s%saccount status is not present";
    }

    v15 = v8;
    v16 = 22;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v24, v16);
    goto LABEL_22;
  }

LABEL_23:
  (*(*a1 + 456))(a1, 0);
  return sub_10034B404(a1);
}

uint64_t sub_10034B74C(uint64_t a1)
{
  v13 = 0;
  *__p = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  *v6 = 0u;
  *v4 = 0u;
  sub_1003507D4(v4, a1 + 48);
  v1 = BYTE4(v8);
  v2 = BYTE12(v8);
  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(__p[1]);
  }

  if (LOBYTE(__p[0]) == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(v9[1]);
  }

  if (BYTE8(v7) == 1 && SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }

  if (BYTE8(v5) == 1 && SBYTE7(v5) < 0)
  {
    operator delete(v4[0]);
  }

  return (v1 | v2) & 1;
}

uint64_t sub_10034B824(uint64_t a1)
{
  *(a1 + 353) = 0;
  *(a1 + 736) = 0;
  return (*(*a1 + 304))();
}

void sub_10034B858(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(a1 + 80);
    if (v3)
    {
      v4 = PersonalityInfo::logPrefix(v3);
    }

    else
    {
      v4 = "-1";
    }

    *v15 = 136315394;
    *&v15[4] = v4;
    v16 = 2080;
    v17 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%saccount status dropped", v15, 0x16u);
  }

  if (*(a1 + 344) == 1)
  {
    sub_1002B74B0(a1 + 144);
    *(a1 + 344) = 0;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *v15 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v15);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_16:
  (*(*v13 + 32))(v13, **(a1 + 80) + 24, @"onfile.status", kPhoneServicesWalletDomain, 0, 4);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10034BA40(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034BA70(uint64_t a1)
{
  if (*(a1 + 344) != 1)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v6 = ServiceMap;
    if (v7 < 0)
    {
      v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
      v9 = 5381;
      do
      {
        v7 = v9;
        v10 = *v8++;
        v9 = (33 * v9) ^ v10;
      }

      while (v10);
    }

    std::mutex::lock(ServiceMap);
    *v25 = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, v25);
    if (v11)
    {
      v13 = v11[3];
      v12 = v11[4];
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
        v14 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
    }

    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
LABEL_13:
    (*(*v13 + 32))(v13, **(a1 + 80) + 24, @"onfile.status", kPhoneServicesWalletDomain, 0, 4);
    if (v14)
    {
      return;
    }

    goto LABEL_14;
  }

  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(a1 + 80);
    if (v3)
    {
      v4 = PersonalityInfo::logPrefix(v3);
    }

    else
    {
      v4 = "-1";
    }

    *v25 = 136315394;
    *&v25[4] = v4;
    v26 = 2080;
    v27 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%saccount status result reset", v25, 0x16u);
  }

  sub_10034BDA8(a1 + 144);
  v15 = Registry::getServiceMap(*(a1 + 48));
  v16 = v15;
  if (v17 < 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
  *v25 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, v25);
  if (v21)
  {
    v22 = v21[3];
    v12 = v21[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v23 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v16);
  v12 = 0;
  v23 = 1;
LABEL_26:
  v24 = **(a1 + 80);
  sub_1006152B0(a1 + 144, v25);
  (*(*v22 + 16))(v22, v24 + 24, @"onfile.status", *v25, kPhoneServicesWalletDomain, 0, 4, 0);
  sub_10001021C(v25);
  if (v23)
  {
    return;
  }

LABEL_14:
  sub_100004A34(v12);
}

void sub_10034BD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10001021C(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10034BDA8(uint64_t a1)
{
  memset(__str, 0, sizeof(__str));
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__str, *a1, *(a1 + 8));
  }

  else
  {
    __str[0] = *a1;
  }

  if (*(a1 + 47) < 0)
  {
    sub_100005F2C(&__str[1], *(a1 + 24), *(a1 + 32));
  }

  else
  {
    __str[1] = *(a1 + 24);
  }

  v11 = 0;
  *__p = 0u;
  v10 = 0u;
  v8 = 0u;
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  v4 = 0u;
  *v5 = 0u;
  *v3 = 0u;
  memset(v2, 0, sizeof(v2));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = 0u;
  *(a1 + 16) = v2[0];
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  *(a1 + 24) = *&v2[1];
  *(a1 + 40) = 0;
  sub_10016A270(a1 + 48, v3);
  sub_10016A270(a1 + 80, v5);
  *(a1 + 112) = v7[0];
  *(a1 + 125) = *(v7 + 13);
  sub_10016A270(a1 + 136, (&v7[1] + 8));
  sub_10016A270(a1 + 168, &__p[1]);
  if (v11 == 1 && SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  if (LOBYTE(__p[0]) == 1 && SHIBYTE(v8) < 0)
  {
    operator delete(*(&v7[1] + 1));
  }

  if (BYTE8(v6) == 1 && SBYTE7(v6) < 0)
  {
    operator delete(v5[0]);
  }

  if (BYTE8(v4) == 1 && SBYTE7(v4) < 0)
  {
    operator delete(v3[0]);
  }

  std::string::operator=(a1, __str);
  std::string::operator=((a1 + 24), &__str[1]);
  if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str[0].__r_.__value_.__l.__data_);
  }
}

void sub_10034BFB8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 57) < 0)
  {
    operator delete(*(v1 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10034BFF4(uint64_t a1, int a2, int **a3)
{
  switch(a2)
  {
    case 1:
      sub_100347EF8(a1 + 360, 0);
      break;
    case 2:
      v8 = 0;
LABEL_26:
      v9 = 0;
      return v8 | (v9 << 8);
    case 3:
      v5 = *(a1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = **(a1 + 80);
        if (v6)
        {
          v7 = PersonalityInfo::logPrefix(v6);
        }

        else
        {
          v7 = "-1";
        }

        v10 = sub_100531604(**a3);
        v17 = 136315650;
        v18 = v7;
        v19 = 2080;
        v20 = " ";
        v21 = 2080;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sentitlement response code %s", &v17, 0x20u);
      }

      v11 = **a3;
      v8 = 1;
      if ((v11 - 6000) <= 0x14)
      {
        if (((1 << (v11 - 112)) & 0x103F3E) != 0)
        {
          goto LABEL_21;
        }

        if (v11 == 6000)
        {
          sub_100348350(a1 + 360);
          v9 = 1;
          return v8 | (v9 << 8);
        }
      }

      if ((v11 - 6300) >= 3 && v11 != 6201)
      {
        goto LABEL_26;
      }

LABEL_21:
      sub_100347EF8(a1 + 360, 0);
      *(a1 + 424) = 1;
      sub_100347FF8(a1 + 360);
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = **(a1 + 80);
        if (v14)
        {
          v15 = PersonalityInfo::logPrefix(v14);
        }

        else
        {
          v15 = "-1";
        }

        v17 = 136315394;
        v18 = v15;
        v19 = 2080;
        v20 = " ";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrier reported temporary failure, need to retry", &v17, 0x16u);
      }

      goto LABEL_26;
  }

  v9 = 0;
  v8 = 1;
  return v8 | (v9 << 8);
}

void sub_10034C210(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = **(a1 + 80);
      if (v8)
      {
        v9 = PersonalityInfo::logPrefix(v8);
      }

      else
      {
        v9 = "-1";
      }

      *buf = 136315650;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v48 = 2080;
      v49 = sub_100A38E30(v5);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluate Phone Services Account Status Update ==(cause:%s)==============================", buf, 0x20u);
    }

    v10 = a4[1];
    v46[0] = *a4;
    v46[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = sub_10034BFF4(a1, v5, v46);
    if (v10)
    {
      sub_100004A34(v10);
    }

    if (v11)
    {
      *(a1 + 353) = 0;
      if ((v11 & 0x100) == 0 || *(a1 + 344) != 1)
      {
LABEL_30:
        if (*(a1 + 344) == 1 && (*(a1 + 276) == 1 && *(a1 + 272) == 3 || *(a1 + 268) == 1 && *(a1 + 264) == 3 || *(a1 + 260) == 1 && *(a1 + 256) == 3))
        {
          if (!*(a1 + 440))
          {
            v27 = *(a1 + 736);
            if (v27)
            {
              v28 = v27 - 1;
            }

            else
            {
              v28 = 3;
            }

            *(a1 + 736) = v28;
          }
        }

        else
        {
          *(a1 + 736) = 0;
          v29 = *(a1 + 440);
          if (v29)
          {
            (*(*v29 + 16))(v29);
            v30 = *(a1 + 440);
            *(a1 + 440) = 0;
            if (v30)
            {
              (*(*v30 + 8))(v30);
            }
          }
        }

        (*(*a1 + 344))(a1, 0, 0);
        if ((*(a1 + 353) & 1) == 0 && *(a1 + 736) && !*(a1 + 440))
        {
          sub_100004AA0(buf, (a1 + 8));
          v32 = *buf;
          v31 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v31);
          }

          v33 = *(a1 + 736);
          Registry::getTimerService(buf, *(a1 + 48));
          v34 = *buf;
          sub_10000501C(__p, "RegisteredProvisioningStatus::kInProgress retry");
          v35 = *(a1 + 24);
          object = v35;
          if (v35)
          {
            dispatch_retain(v35);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_10034C950;
          aBlock[3] = &unk_101E43E08;
          aBlock[4] = a1;
          aBlock[5] = v32;
          v40 = v31;
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v41 = _Block_copy(aBlock);
          sub_100D23364(v34, __p, 1, 60000000 * (4 - v33), &object, &v41);
          v36 = v45;
          v45 = 0;
          v37 = *(a1 + 440);
          *(a1 + 440) = v36;
          if (v37)
          {
            (*(*v37 + 8))(v37);
            v38 = v45;
            v45 = 0;
            if (v38)
            {
              (*(*v38 + 8))(v38);
            }
          }

          if (v41)
          {
            _Block_release(v41);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v44 < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          if (v40)
          {
            std::__shared_weak_count::__release_weak(v40);
          }

          if (v31)
          {
            std::__shared_weak_count::__release_weak(v31);
          }
        }

        return;
      }

      *(a1 + 352) = 1;
      v12 = *(*a4 + 24);
      sub_10012BF3C((a1 + 192), v12);
      sub_10012BF3C((a1 + 224), (v12 + 32));
      v13 = *(v12 + 64);
      *(a1 + 269) = *(v12 + 77);
      *(a1 + 256) = v13;
      sub_10012BF3C((a1 + 280), (v12 + 88));
      sub_10012BF3C((a1 + 312), (v12 + 120));
      v45 = 0;
      sub_1006152B0(a1 + 144, &v45);
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = **(a1 + 80);
        if (v15)
        {
          v16 = PersonalityInfo::logPrefix(v15);
        }

        else
        {
          v16 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sPSAS:", buf, 0x16u);
      }

      *buf = off_101E44490;
      *&buf[8] = a1;
      v49 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      ServiceMap = Registry::getServiceMap(*(a1 + 48));
      v18 = ServiceMap;
      if (v19 < 0)
      {
        v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
        v21 = 5381;
        do
        {
          v19 = v21;
          v22 = *v20++;
          v21 = (33 * v21) ^ v22;
        }

        while (v22);
      }

      std::mutex::lock(ServiceMap);
      *buf = v19;
      v23 = sub_100009510(&v18[1].__m_.__sig, buf);
      if (v23)
      {
        v25 = v23[3];
        v24 = v23[4];
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v18);
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v24);
          v26 = 0;
LABEL_27:
          (*(*v25 + 16))(v25, **(a1 + 80) + 24, @"onfile.status", v45, kPhoneServicesWalletDomain, 0, 4, 0);
          if ((v26 & 1) == 0)
          {
            sub_100004A34(v24);
          }

          sub_10034A87C(a1, *(*a4 + 24));
          sub_10001021C(&v45);
          goto LABEL_30;
        }
      }

      else
      {
        v25 = 0;
      }

      std::mutex::unlock(v18);
      v24 = 0;
      v26 = 1;
      goto LABEL_27;
    }
  }
}

void sub_10034C874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034C950(void *a1)
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
        v6 = *(v3 + 440);
        *(v3 + 440) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        (*(*v3 + 384))(v3, *(v3 + 736) != 0);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10034CA3C(uint64_t *a1, uint64_t a2, int a3)
{
  v4 = a2;
  v13 = a2;
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a1[10];
    if (v7)
    {
      v8 = PersonalityInfo::logPrefix(v7);
    }

    else
    {
      v8 = "-1";
    }

    v9 = asString();
    v10 = "";
    *buf = 136315906;
    v15 = v8;
    v17 = " ";
    v16 = 2080;
    if (a3)
    {
      v10 = " with notify";
    }

    v18 = 2080;
    v19 = v9;
    v20 = 2080;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sforceUpdateAccountStatus for %s%s", buf, 0x2Au);
  }

  if (a3)
  {
    sub_1000C4284((a1 + 78), &v13, &v13);
    v4 = v13;
  }

  v11 = (*(*a1 + 440))(a1, v4);
  v12 = (*(*a1 + 384))(a1, 1);
  (*(*a1 + 456))(a1, 1);
  if ((v11 & 1) == 0 && (v12 & 1) == 0)
  {
    if (a3)
    {
      sub_10034CC54(a1, v13);
      sub_10034CD9C(a1, v13, 0);
    }
  }
}

uint64_t *sub_10034CC54(uint64_t *result, uint64_t a2)
{
  v8 = a2;
  v2 = result[79];
  if (v2)
  {
    v3 = result;
    v4 = result + 79;
    do
    {
      if (*(v2 + 28) >= a2)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < a2));
    }

    while (v2);
    if (v4 != result + 79 && *(v4 + 7) <= a2)
    {
      v5 = result[5];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *v3[10];
        if (v6)
        {
          v7 = PersonalityInfo::logPrefix(v6);
        }

        else
        {
          v7 = "-1";
        }

        *buf = 136315650;
        v10 = v7;
        v11 = 2080;
        v12 = " ";
        v13 = 2080;
        v14 = asString();
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%s, request found, notification forced", buf, 0x20u);
      }

      sub_10012B6B8((v3 + 78), &v8);
      return sub_1000C4284((v3 + 75), &v8, &v8);
    }
  }

  return result;
}

void sub_10034CD9C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v81 = a2;
  v6 = **(a1 + 80);
  if (*(v6 + 48))
  {
    goto LABEL_2;
  }

  v28 = *(a1 + 40);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v29)
    {
      v30 = PersonalityInfo::logPrefix(v6);
      v31 = asString();
      v32 = **(a1 + 80);
      v35 = *(v32 + 24);
      v33 = (v32 + 24);
      v34 = v35;
      v36 = *(v33 + 23);
      v37 = v36;
      if ((v36 & 0x80u) != 0)
      {
        v36 = *(v33 + 1);
      }

      if (v37 < 0)
      {
        v33 = v34;
      }

      if (!v36)
      {
        v33 = "<invalid>";
      }

      LODWORD(keys[0]) = 136315906;
      *(keys + 4) = v30;
      WORD2(keys[1]) = 2080;
      *(&keys[1] + 6) = " ";
      HIWORD(keys[2]) = 2080;
      v83 = v31;
      v84 = 2080;
      v85 = v33;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s%s capability notification and update forced for inactive personality %s", keys, 0x2Au);
      v4 = v81;
    }

LABEL_2:
    v79 = 0;
    theDict = 0;
    (*(*a1 + 360))(&v79, a1, v4);
    v77 = 0;
    v78 = 0;
    (*(*a1 + 352))(&v77, a1, v81);
    v76 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v8 = v76;
      v76 = Mutable;
      keys[0] = v8;
      sub_1000296E0(keys);
    }

    if (theDict)
    {
      Count = CFDictionaryGetCount(theDict);
      if (Count)
      {
        memset(keys, 0, sizeof(keys));
        sub_100222418(keys, Count);
        values = 0;
        v74 = 0;
        v75 = 0;
        sub_10007D780(&values, Count);
        CFDictionaryGetKeysAndValues(theDict, keys[0], values);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            CFDictionaryAddValue(v76, keys[0][i], values[i]);
          }
        }

        if (values)
        {
          v74 = values;
          operator delete(values);
        }

        if (keys[0])
        {
          keys[1] = keys[0];
          operator delete(keys[0]);
        }
      }
    }

    if (v78)
    {
      v11 = CFDictionaryGetCount(v78);
      if (v11)
      {
        memset(keys, 0, sizeof(keys));
        sub_100222418(keys, v11);
        values = 0;
        v74 = 0;
        v75 = 0;
        sub_10007D780(&values, v11);
        CFDictionaryGetKeysAndValues(v78, keys[0], values);
        if (v11 >= 1)
        {
          for (j = 0; j != v11; ++j)
          {
            CFDictionaryAddValue(v76, keys[0][j], values[j]);
          }
        }

        if (values)
        {
          v74 = values;
          operator delete(values);
        }

        if (keys[0])
        {
          keys[1] = keys[0];
          operator delete(keys[0]);
        }
      }
    }

    if (v79)
    {
      v13 = kCFBooleanTrue;
    }

    else
    {
      v13 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v76, kCTCapabilityCanSet, v13);
    if (v77)
    {
      v14 = kCFBooleanTrue;
    }

    else
    {
      v14 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v76, kCTCapabilityStatus, v14);
    values = 0;
    (*(*a1 + 432))(&values, a1, v81);
    if (values)
    {
      CFDictionaryAddValue(v76, kPSAccountDetails, values);
    }

    v72 = 0;
    v15 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v15)
    {
      v16 = v72;
      v72 = v15;
      keys[0] = v16;
      v15 = sub_1000296E0(keys);
    }

    v17 = sub_10034DF18(v15, v81);
    CFDictionarySetValue(v72, v17, v76);
    std::mutex::lock((a1 + 448));
    v19 = *(a1 + 520);
    v20 = v81;
    if (!v19)
    {
      goto LABEL_39;
    }

    v21 = a1 + 520;
    do
    {
      if (*(v19 + 32) >= v81)
      {
        v21 = v19;
      }

      v19 = *(v19 + 8 * (*(v19 + 32) < v81));
    }

    while (v19);
    if (v21 != a1 + 520 && v81 >= *(v21 + 32))
    {
      v18 = CFEqual(*(v21 + 40), v72);
      if (v18)
      {
        v46 = *(a1 + 40);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          v47 = **(a1 + 80);
          if (v47)
          {
            v48 = PersonalityInfo::logPrefix(v47);
          }

          else
          {
            v48 = "-1";
          }

          v70 = asString();
          LODWORD(keys[0]) = 136315650;
          *(keys + 4) = v48;
          WORD2(keys[1]) = 2080;
          *(&keys[1] + 6) = " ";
          HIWORD(keys[2]) = 2080;
          v83 = v70;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s%skCTEventCallCapabilitiesChanged.%s - no changes", keys, 0x20u);
        }

        std::mutex::unlock((a1 + 448));
        v50 = 0;
LABEL_73:
        v51 = *(a1 + 608);
        if (v51)
        {
          v52 = a1 + 608;
          do
          {
            if (*(v51 + 28) >= v81)
            {
              v52 = v51;
            }

            v51 = *(v51 + 8 * (*(v51 + 28) < v81));
          }

          while (v51);
          if (v52 != a1 + 608 && *(v52 + 28) <= v81)
          {
            goto LABEL_88;
          }
        }

        if ((v50 | a3) != 1)
        {
          goto LABEL_114;
        }

        v53 = *(a1 + 632);
        if (!v53)
        {
          goto LABEL_88;
        }

        v54 = a1 + 632;
        do
        {
          if (*(v53 + 28) >= v81)
          {
            v54 = v53;
          }

          v53 = *(v53 + 8 * (*(v53 + 28) < v81));
        }

        while (v53);
        if (v54 == a1 + 632 || *(v54 + 28) > v81)
        {
LABEL_88:
          sub_10012B6B8(a1 + 600, &v81);
          v56 = **(a1 + 80);
          if (*(v56 + 13) != 2)
          {
            ctu::cf_to_xpc(v72, v55);
            object = xpc_null_create();
            sub_10002A37C(75, keys, &object);
            xpc_release(object);
            xpc_release(keys[0]);
            v56 = **(a1 + 80);
          }

          v57 = *(a1 + 768);
          PersonalityInfo::uuid(keys, v56);
          (*(*v57 + 16))(v57, keys[0], v72);
          sub_1000475BC(keys);
          v58 = *(a1 + 40);
          if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_107;
          }

          v59 = **(a1 + 80);
          if (v59)
          {
            v60 = PersonalityInfo::logPrefix(v59);
          }

          else
          {
            v60 = "-1";
          }

          v64 = asString();
          v65 = "requested";
          LODWORD(keys[0]) = 136315906;
          *(keys + 4) = v60;
          if (a3)
          {
            v65 = "forced";
          }

          WORD2(keys[1]) = 2080;
          *(&keys[1] + 6) = " ";
          HIWORD(keys[2]) = 2080;
          v83 = v64;
          if (v50)
          {
            v65 = "update";
          }

          v84 = 2080;
          v85 = v65;
          v66 = "#I %s%skCTEventCallCapabilitiesChanged.%s notification sent, reason: %s";
          v67 = v58;
          v68 = 42;
        }

        else
        {
LABEL_114:
          if (!v50)
          {
            goto LABEL_107;
          }

          v61 = *(a1 + 40);
          if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_107;
          }

          v62 = **(a1 + 80);
          if (v62)
          {
            v63 = PersonalityInfo::logPrefix(v62);
          }

          else
          {
            v63 = "-1";
          }

          v69 = asString();
          LODWORD(keys[0]) = 136315650;
          *(keys + 4) = v63;
          WORD2(keys[1]) = 2080;
          *(&keys[1] + 6) = " ";
          HIWORD(keys[2]) = 2080;
          v83 = v69;
          v66 = "#I %s%skCTEventCallCapabilitiesChanged.%s notification suppressed";
          v67 = v61;
          v68 = 32;
        }

        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, v66, keys, v68);
LABEL_107:
        sub_1000296E0(&v72);
        sub_10001021C(&values);
        sub_1000296E0(&v76);
        sub_10001021C(&v78);
        sub_10001021C(&theDict);
        return;
      }

      v22 = *(v21 + 40);
      v20 = v81;
    }

    else
    {
LABEL_39:
      v22 = 0;
    }

    v23 = sub_10034DF9C(v18, v20, v22, v72);
    sub_100354D58(a1 + 512, &v81);
    LODWORD(keys[0]) = v81;
    sub_100010180(&keys[1], &v72);
    sub_100354DE4(a1 + 512, keys, keys);
    v24 = sub_10001021C(&keys[1]);
    if (v81 == 1 && capabilities::ct::supportsThumperSourcing(v24))
    {
      sub_10034E0D4(a1);
    }

    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = **(a1 + 80);
      if (v26)
      {
        v27 = PersonalityInfo::logPrefix(v26);
      }

      else
      {
        v27 = "-1";
      }

      v49 = asString();
      LODWORD(keys[0]) = 136315650;
      *(keys + 4) = v27;
      WORD2(keys[1]) = 2080;
      *(&keys[1] + 6) = " ";
      HIWORD(keys[2]) = 2080;
      v83 = v49;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%skCTEventCallCapabilitiesChanged.%s changed", keys, 0x20u);
      std::mutex::unlock((a1 + 448));
      if (!v23)
      {
        goto LABEL_72;
      }
    }

    else
    {
      std::mutex::unlock((a1 + 448));
      if (!v23)
      {
        goto LABEL_72;
      }
    }

    sub_10034E370(a1 + 64, **(a1 + 80) + 24);
LABEL_72:
    v50 = 1;
    goto LABEL_73;
  }

  if (v29)
  {
    v38 = PersonalityInfo::logPrefix(v6);
    v39 = asString();
    v40 = **(a1 + 80);
    v43 = *(v40 + 24);
    v41 = (v40 + 24);
    v42 = v43;
    v44 = *(v41 + 23);
    v45 = v44;
    if ((v44 & 0x80u) != 0)
    {
      v44 = *(v41 + 1);
    }

    if (v45 < 0)
    {
      v41 = v42;
    }

    if (!v44)
    {
      v41 = "<invalid>";
    }

    LODWORD(keys[0]) = 136315906;
    *(keys + 4) = v38;
    WORD2(keys[1]) = 2080;
    *(&keys[1] + 6) = " ";
    HIWORD(keys[2]) = 2080;
    v83 = v39;
    v84 = 2080;
    v85 = v41;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%s%s capability notification and update are suppressed because personality %s is inactive", keys, 0x2Au);
  }
}

void sub_10034D750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, const void *a11, void *__p, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, uint64_t a22)
{
  std::mutex::unlock(v22 + 7);
  sub_1000296E0(&a11);
  sub_10001021C(&__p);
  sub_1000296E0(&a15);
  sub_10001021C((v24 + 8));
  sub_10001021C((v23 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_10034D890(uint64_t a1, void *a2)
{
  result = sub_10112CDBC(a2, (**(a1 + 80) + 24));
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = **(a1 + 80);
      if (v5)
      {
        v6 = PersonalityInfo::logPrefix(v5);
      }

      else
      {
        v6 = "-1";
      }

      v7 = 136315394;
      v8 = v6;
      v9 = 2080;
      v10 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shandlePSASChangedNotification", &v7, 0x16u);
    }

    return (*(*a1 + 384))(a1, 0);
  }

  return result;
}

uint64_t sub_10034D9AC(uint64_t a1)
{
  (*(*a1 + 472))(&cf);
  v1 = cf;
  v6 = 0;
  if (cf)
  {
    v2 = CFGetTypeID(cf);
    if (v2 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v6, v1, v3);
      LOBYTE(v1) = v6;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v1 & 1;
}

uint64_t sub_10034DA68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  result = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = result;
  if (result)
  {
    *a2 = result;
    *&v24 = 0;
    result = sub_1000296E0(&v24);
  }

  if (*(a1 + 344) == 1)
  {
    result = sub_10034AFC4(a1);
    if ((result & 1) == 0)
    {
      if (sub_10034B404(a1) != 1 || (sub_10034D9AC(a1) & 1) != 0 || (result = sub_10034AFC4(a1), (result & 1) == 0) && (*(a1 + 344) != 1 || *(a1 + 260) != 1 || *(a1 + 256) != 2))
      {
        theDict = 0;
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v7 = theDict;
          theDict = Mutable;
          *&v24 = v7;
          sub_1000296E0(&v24);
        }

        if (*(a1 + 216) == 1)
        {
          v8 = theDict;
          if (*(a1 + 215) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 192), *(a1 + 200));
          }

          else
          {
            *__dst = *(a1 + 192);
            v18 = *(a1 + 208);
          }

          if (SHIBYTE(v18) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v23 = v18;
          }

          v21 = 0;
          if (SHIBYTE(v23) < 0)
          {
            sub_100005F2C(&v24, __p[0], __p[1]);
          }

          else
          {
            v24 = *__p;
            v25 = v23;
          }

          v26 = 0;
          if (ctu::cf::convert_copy())
          {
            v9 = v21;
            v21 = v26;
            v27 = v9;
            sub_100005978(&v27);
          }

          v10 = kCTWebSheetURL;
          if (SHIBYTE(v25) < 0)
          {
            operator delete(v24);
          }

          value = v21;
          v21 = 0;
          sub_100005978(&v21);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }

          CFDictionarySetValue(v8, v10, value);
          sub_100005978(&value);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(__dst[0]);
          }

          if (*(a1 + 248) == 1)
          {
            if (*(a1 + 247) < 0)
            {
              sub_100005F2C(v14, *(a1 + 224), *(a1 + 232));
            }

            else
            {
              *v14 = *(a1 + 224);
              v15 = *(a1 + 240);
            }

            if (SHIBYTE(v15) < 0)
            {
              sub_100005F2C(__p, v14[0], v14[1]);
            }

            else
            {
              *__p = *v14;
              v23 = v15;
            }

            v21 = 0;
            if (SHIBYTE(v23) < 0)
            {
              sub_100005F2C(&v24, __p[0], __p[1]);
            }

            else
            {
              v24 = *__p;
              v25 = v23;
            }

            v26 = 0;
            if (ctu::cf::convert_copy())
            {
              v11 = v21;
              v21 = v26;
              v27 = v11;
              sub_100005978(&v27);
            }

            if (SHIBYTE(v25) < 0)
            {
              operator delete(v24);
            }

            v12 = v21;
            v16 = v21;
            v21 = 0;
            sub_100005978(&v21);
            if (SHIBYTE(v23) < 0)
            {
              operator delete(__p[0]);
            }

            ExternalRepresentation = CFStringCreateExternalRepresentation(0, v12, 0x600u, 0);
            value = ExternalRepresentation;
            sub_100005978(&v16);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(v14[0]);
            }

            CFDictionarySetValue(theDict, kCTWebSheetPostData, ExternalRepresentation);
            sub_10002D760(&value);
          }

          CFDictionarySetValue(v5, kCTProvisioningURL, theDict);
        }

        return sub_1000296E0(&theDict);
      }
    }
  }

  return result;
}

void sub_10034DE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, const void *a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a24);
  sub_1000296E0(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_10034DF18(uint64_t a1, int a2)
{
  result = 0;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v3 = &kCTCapabilityAgent3;
        break;
      case 4:
        v3 = &kCTCapabilityNetworkSlicing;
        break;
      case 5:
        v3 = &kCTCapabilitySatellite;
        break;
      default:
        return result;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = &kCTCapabilityPhoneServices;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      v3 = &kCTCapabilityAgent;
    }
  }

  else
  {
    v3 = &kCTCapabilityAgent2;
  }

  return *v3;
}

BOOL sub_10034DF9C(int a1, int a2, CFDictionaryRef theDict, const __CFDictionary *a4)
{
  if (a2)
  {
    return 0;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, kCTCapabilityAgent2);
    v7 = Value;
    if (!Value)
    {
      goto LABEL_11;
    }

    v8 = CFGetTypeID(Value);
    if (v8 == CFDictionaryGetTypeID())
    {
      v9 = CFDictionaryGetValue(v7, kCTProvisioningURL);
      v7 = v9;
      if (v9)
      {
        v10 = CFGetTypeID(v9);
        if (v10 != CFDictionaryGetTypeID())
        {
          v7 = 0;
        }
      }

      goto LABEL_11;
    }
  }

  v7 = 0;
LABEL_11:
  if (a4 && (v11 = CFDictionaryGetValue(a4, kCTCapabilityAgent2)) != 0 && (v12 = v11, v13 = CFGetTypeID(v11), v13 == CFDictionaryGetTypeID()) && (v14 = CFDictionaryGetValue(v12, kCTProvisioningURL)) != 0)
  {
    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 == CFDictionaryGetTypeID())
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v7 != v17 && (!v7 || !v17 || !CFEqual(v7, v17));
}

void sub_10034E0D4(uint64_t a1)
{
  __str = 0;
  v2 = 0;
  operator new();
}

void sub_10034E33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034E370(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/ps_account_provisioning_url_changed");
  object = v5;
  v5 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_10034E404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

BOOL sub_10034E448(uint64_t a1, int a2)
{
  v2 = a1 + 608;
  v3 = *(a1 + 608);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = a1 + 608;
  do
  {
    if (*(v3 + 28) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < a2));
  }

  while (v3);
  if (v4 == v2 || *(v4 + 28) > a2)
  {
LABEL_8:
    v4 = a1 + 608;
  }

  return v4 != v2;
}

void sub_10034E494(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 448));
  theDict = 0;
  v6 = *(a1 + 520);
  if (v6)
  {
    v7 = a1 + 520;
    do
    {
      if (*(v6 + 32) >= a2)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a2));
    }

    while (v6);
    if (v7 != a1 + 520 && *(v7 + 32) <= a2)
    {
      v18 = 0;
      v10 = sub_100010024(&v18, (v7 + 40));
      v11 = v18;
      if (v18)
      {
        v12 = sub_10034DF18(v10, a2);
        Value = CFDictionaryGetValue(v11, v12);
        v20 = 0;
        sub_100010180(&v20, &Value);
        v13 = theDict;
        theDict = v20;
        v20 = v13;
        sub_10001021C(&v20);
        if (theDict)
        {
          v14 = CFDictionaryGetValue(theDict, kCTCapabilityStatus);
          v9 = v14;
          LOBYTE(v20) = 0;
          if (!v14)
          {
LABEL_16:
            sub_10001021C(&v18);
            v8 = 1;
            goto LABEL_9;
          }

          v15 = CFGetTypeID(v14);
          if (v15 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(&v20, v9, v16);
            LOBYTE(v9) = v20;
            goto LABEL_16;
          }
        }
      }

      LOBYTE(v9) = 0;
      goto LABEL_16;
    }
  }

  v8 = 0;
  LOBYTE(v9) = 0;
LABEL_9:
  *a3 = v9;
  sub_100010024((a3 + 8), &theDict);
  *(a3 + 16) = v8;
  sub_10001021C(&theDict);
  std::mutex::unlock((a1 + 448));
}

void sub_10034E5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10001021C(va1);
  std::mutex::unlock(v3 + 7);
  _Unwind_Resume(a1);
}

void sub_10034E61C(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  std::mutex::lock((a1 + 448));
  theDict = 0;
  v6 = *(a1 + 520);
  if (v6)
  {
    v7 = a1 + 520;
    do
    {
      if (*(v6 + 32) >= a2)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a2));
    }

    while (v6);
    if (v7 != a1 + 520 && *(v7 + 32) <= a2)
    {
      v18 = 0;
      v10 = sub_100010024(&v18, (v7 + 40));
      v11 = v18;
      if (v18)
      {
        v12 = sub_10034DF18(v10, a2);
        Value = CFDictionaryGetValue(v11, v12);
        v20 = 0;
        sub_100010180(&v20, &Value);
        v13 = theDict;
        theDict = v20;
        v20 = v13;
        sub_10001021C(&v20);
        if (theDict)
        {
          v14 = CFDictionaryGetValue(theDict, kCTCapabilityCanSet);
          v9 = v14;
          LOBYTE(v20) = 0;
          if (!v14)
          {
LABEL_16:
            sub_10001021C(&v18);
            v8 = 1;
            goto LABEL_9;
          }

          v15 = CFGetTypeID(v14);
          if (v15 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(&v20, v9, v16);
            LOBYTE(v9) = v20;
            goto LABEL_16;
          }
        }
      }

      LOBYTE(v9) = 0;
      goto LABEL_16;
    }
  }

  v8 = 0;
  LOBYTE(v9) = 0;
LABEL_9:
  *a3 = v9;
  sub_100010024((a3 + 8), &theDict);
  *(a3 + 16) = v8;
  sub_10001021C(&theDict);
  std::mutex::unlock((a1 + 448));
}

void sub_10034E77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_10001021C(va1);
  std::mutex::unlock(v3 + 7);
  _Unwind_Resume(a1);
}

void sub_10034E7A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(a1 + 80);
    if (v3)
    {
      v4 = PersonalityInfo::logPrefix(v3);
    }

    else
    {
      v4 = "-1";
    }

    if (*(a1 + 767) < 0)
    {
      sub_100005F2C(__p, *(a1 + 744), *(a1 + 752));
    }

    else
    {
      *__p = *(a1 + 744);
      v22 = *(a1 + 760);
    }

    v5 = __p[0];
    if (v22 >= 0)
    {
      v5 = __p;
    }

    v6 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v6 = *v6;
    }

    *buf = 136315906;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = v5;
    v26 = 2080;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fHardware: '%s', fDisplayName: '%s'", buf, 0x2Au);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = **(a1 + 80);
    if (v7)
    {
      v8 = PersonalityInfo::logPrefix(v7);
    }

    else
    {
      v8 = "-1";
    }

    sub_1006152B0(a1 + 144, __p);
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2112;
    v25 = __p[0];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fAddr911Status: '%@'", buf, 0x20u);
    sub_10001021C(__p);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = **(a1 + 80);
    if (v9)
    {
      v10 = PersonalityInfo::logPrefix(v9);
    }

    else
    {
      v10 = "-1";
    }

    v11 = asStringBool(*(a1 + 352));
    v12 = asStringBool(*(a1 + 353));
    *buf = 136315906;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = v11;
    v26 = 2080;
    v27 = v12;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fAddr911RefreshedOnBoot: %s, fAwaitingGetPSAS: %s", buf, 0x2Au);
  }

  std::mutex::lock((a1 + 448));
  v13 = *(a1 + 512);
  if (v13 != (a1 + 520))
  {
    do
    {
      __p[0] = 0;
      __p[1] = 0;
      LODWORD(__p[0]) = *(v13 + 8);
      sub_100010024(&__p[1], v13 + 5);
      v14 = *(a1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = **(a1 + 80);
        if (v15)
        {
          v16 = PersonalityInfo::logPrefix(v15);
        }

        else
        {
          v16 = "-1";
        }

        v17 = asString();
        *buf = 136315650;
        *&buf[4] = v16;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v24 = 2080;
        v25 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s| %s:", buf, 0x20u);
      }

      *buf = off_101E44510;
      *&buf[8] = a1;
      v25 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      sub_10001021C(&__p[1]);
      v18 = v13[1];
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
          v19 = v13[2];
          v20 = *v19 == v13;
          v13 = v19;
        }

        while (!v20);
      }

      v13 = v19;
    }

    while (v19 != (a1 + 520));
  }

  std::mutex::unlock((a1 + 448));
}

char *sub_10034EBC8@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[767] < 0)
  {
    return sub_100005F2C(a2, *(result + 93), *(result + 94));
  }

  *a2 = *(result + 744);
  *(a2 + 16) = *(result + 95);
  return result;
}

uint64_t sub_10034EBF8(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 648));
  v4 = *(a1 + 720);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = a1 + 720;
  do
  {
    if (*(v4 + 28) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < a2));
  }

  while (v4);
  if (v5 != a1 + 720 && *(v5 + 28) <= a2)
  {
    v6 = (*(v5 + 32) != 0) | ((*(v5 + 32) == 2) << 8) | (*(v5 + 36) << 16);
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

  std::mutex::unlock((a1 + 648));
  return v6;
}

void sub_10034EC94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  std::mutex::lock((a1 + 448));
  *a2 = *(a1 + 536);
  *(a2 + 4) = *(a1 + 540);
  sub_10006F264((a2 + 8), (a1 + 544));

  std::mutex::unlock((a1 + 448));
}

void sub_10034ED04(uint64_t a1@<X0>, signed int a2@<W1>, uint64_t *a3@<X8>)
{
  std::mutex::lock((a1 + 448));
  v7 = *(a1 + 584);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = a1 + 584;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v8 == a1 + 584 || *(v8 + 32) > a2)
  {
LABEL_8:
    sub_10034A388(v6, a2);
  }

  v10 = *(v8 + 40);
  v9 = *(v8 + 48);
  *a3 = v10;
  a3[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 448));
}

void sub_10034EDC8(uint64_t a1, int a2, uint64_t *a3)
{
  v23 = a2;
  v5 = *(a1 + 104);
  if (v5)
  {
    v6 = a1 + 104;
    do
    {
      if (*(v5 + 32) >= a2)
      {
        v6 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < a2));
    }

    while (v5);
    if (v6 != a1 + 104 && *(v6 + 32) <= a2)
    {
      v7 = (*(**(v6 + 40) + 88))(*(v6 + 40));
      std::mutex::lock((a1 + 648));
      v24 = &v23;
      v8 = sub_1002BBF6C(a1 + 712, &v23, &unk_101802C98, &v24);
      *(v8 + 8) = v7;
      *(v8 + 36) = BYTE4(v7);
      std::mutex::unlock((a1 + 648));
    }
  }

  std::mutex::lock((a1 + 448));
  v24 = &v23;
  v9 = sub_100354A14(a1 + 576, &v23, &unk_101802C98, &v24);
  v11 = *a3;
  v10 = a3[1];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v9[6];
  v9[5] = v11;
  v9[6] = v10;
  if (v12)
  {
    sub_100004A34(v12);
  }

  std::mutex::unlock((a1 + 448));
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v14 = ServiceMap;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  v24 = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &v24);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
LABEL_21:
  (*(*v21 + 32))(v21);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }
}

uint64_t sub_10034F010@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 104);
  result = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

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
    v8 = *(v6 + 40);
    v7 = *(v6 + 48);
    *a3 = v8;
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

const __CFDictionary *sub_10034F0C4@<X0>(const __CFDictionary *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 65);
  if (!v3)
  {
    goto LABEL_34;
  }

  v4 = result + 520;
  do
  {
    if (v3[8] >= 1)
    {
      v4 = v3;
    }

    v3 = *&v3[2 * (v3[8] < 1)];
  }

  while (v3);
  if (v4 != result + 520 && *(v4 + 8) <= 1 && (result = CFDictionaryGetValue(*(v4 + 5), kCTCapabilityPhoneServices)) != 0 && (v5 = result, v6 = CFGetTypeID(result), result = CFDictionaryGetTypeID(), v6 == result) && (result = CFDictionaryGetValue(v5, kPSAccountDetails)) != 0 && (v7 = result, v8 = CFGetTypeID(result), result = CFDictionaryGetTypeID(), v8 == result) && (result = CFDictionaryGetValue(v7, kPSDeviceList)) != 0 && (v9 = result, v10 = CFGetTypeID(result), result = CFArrayGetTypeID(), v10 == result))
  {
    v11 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v12 = kPSStatus;
    v13 = kPSDeviceHardware;
    while (1)
    {
      result = CFArrayGetCount(v9);
      if (v11 >= result)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v9, v11);
      v15 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
        if (v16 == CFDictionaryGetTypeID() && CFDictionaryGetValue(v15, v12) == kCFBooleanTrue)
        {
          Value = CFDictionaryGetValue(v15, v13);
          if (Value)
          {
            v18 = CFGetTypeID(Value);
            if (v18 == CFStringGetTypeID())
            {
              v32 = 0;
              v33 = 0uLL;
              ctu::cf::assign();
              v36[0] = v33;
              *(v36 + 7) = *(&v33 + 7);
              v19 = HIBYTE(v33);
              v20 = *(a2 + 8);
              v21 = *(a2 + 16);
              if (v20 >= v21)
              {
                v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - *a2) >> 3);
                v24 = v23 + 1;
                if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  sub_1000CE3D4();
                }

                v25 = 0xAAAAAAAAAAAAAAABLL * ((v21 - *a2) >> 3);
                if (2 * v25 > v24)
                {
                  v24 = 2 * v25;
                }

                if (v25 >= 0x555555555555555)
                {
                  v26 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v26 = v24;
                }

                v35 = a2;
                if (v26)
                {
                  sub_100005348(a2, v26);
                }

                v27 = 24 * v23;
                *v27 = v32;
                *(v27 + 8) = v36[0];
                *(v27 + 15) = *(v36 + 7);
                *(v27 + 23) = v19;
                v22 = 24 * v23 + 24;
                v28 = *(a2 + 8) - *a2;
                v29 = (24 * v23 - v28);
                memcpy(v29, *a2, v28);
                v30 = *a2;
                *a2 = v29;
                *(a2 + 8) = v22;
                v31 = *(a2 + 16);
                *(a2 + 16) = 0;
                *(&v33 + 1) = v30;
                v34 = v31;
                v32 = v30;
                *&v33 = v30;
                sub_1000054E0(&v32);
              }

              else
              {
                *v20 = v32;
                *(v20 + 8) = v36[0];
                *(v20 + 15) = *(v36 + 7);
                *(v20 + 23) = v19;
                v22 = v20 + 24;
              }

              *(a2 + 8) = v22;
            }
          }
        }
      }

      ++v11;
    }
  }

  else
  {
LABEL_34:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_10034F3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v18 < 0)
  {
    operator delete(v17);
  }

  sub_1000087B4(&a17);
  _Unwind_Resume(a1);
}

BOOL sub_10034F440(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (!memcmp(a1, a2, v3))
  {
    v10 = v7 + 3;
    v9 = v7[3];
    v8 = v10[1];
    v12 = v6 + 3;
    v11 = v6[3];
    if (v8 - v9 == v12[1] - v11)
    {
      if (v8 == v9)
      {
        return 1;
      }

      v13 = 0;
      v14 = 0;
      v15 = (v8 - v9) >> 3;
      v16 = 0xAAAAAAAAAAAAAAABLL * v15;
      if (0xAAAAAAAAAAAAAAABLL * v15 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = 0xAAAAAAAAAAAAAAABLL * v15;
      }

      while (1)
      {
        v18 = v11 + v13;
        v19 = *(v9 + v13 + 23);
        if (v19 >= 0)
        {
          v20 = *(v9 + v13 + 23);
        }

        else
        {
          v20 = *(v9 + v13 + 8);
        }

        v21 = *(v18 + 23);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v18 + 8);
        }

        if (v20 != v21)
        {
          break;
        }

        v23 = v19 >= 0 ? (v9 + v13) : *(v9 + v13);
        v24 = v22 >= 0 ? (v11 + v13) : *v18;
        if (memcmp(v23, v24, v20))
        {
          break;
        }

        ++v14;
        v13 += 24;
        if (v17 == v14)
        {
          return v14 >= v16;
        }
      }
    }
  }

  return 0;
}

BOOL sub_10034F590(uint64_t a1, uint64_t a2)
{
  cf = 0;
  (*(*a1 + 472))(&cf);
  v3 = cf;
  if (cf)
  {
    v24 = 0uLL;
    v25 = 0;
    v4 = CFGetTypeID(cf);
    if (v4 == CFArrayGetTypeID())
    {
      memset(buf, 0, 24);
      context = buf;
      v37.length = CFArrayGetCount(v3);
      v37.location = 0;
      CFArrayApplyFunction(v3, v37, sub_10035565C, &context);
      v5 = v24;
      v24 = *buf;
      *buf = v5;
      v6 = v25;
      v25 = *&buf[16];
      *&buf[16] = v6;
      context = buf;
      sub_1000087B4(&context);
    }

    v7 = v24;
    CSIPhoneNumber::CSIPhoneNumber();
    if (v24 != *(&v24 + 1))
    {
      while (1)
      {
        *__p = 0u;
        v36 = 0u;
        *v33 = 0u;
        v34 = 0u;
        *v31 = 0u;
        v32 = 0u;
        *v29 = 0u;
        v30 = 0u;
        memset(buf, 0, sizeof(buf));
        CSIPhoneNumber::CSIPhoneNumber();
        v8 = CSIPhoneNumber::operator==();
        if (SBYTE7(v36) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(v33[1]);
        }

        if (SBYTE7(v32) < 0)
        {
          operator delete(v31[0]);
        }

        if (SBYTE7(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (buf[31] < 0)
        {
          operator delete(*&buf[8]);
        }

        if (v8)
        {
          break;
        }

        v7 += 24;
        if (v7 == *(&v24 + 1))
        {
          v7 = *(&v24 + 1);
          break;
        }
      }
    }

    v9 = v7 != *(&v24 + 1);
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

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v7 != *(&v24 + 1))
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = **(a1 + 80);
        if (v11)
        {
          v12 = PersonalityInfo::logPrefix(v11);
        }

        else
        {
          v12 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sEmergency number over Wi-Fi-only found", buf, 0x16u);
      }
    }

    *buf = &v24;
    sub_1000087B4(buf);
  }

  else
  {
    v9 = 0;
  }

  sub_10000A1EC(&cf);
  return v9;
}

void sub_10034F880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, void **a34)
{
  a34 = &a29;
  sub_1000087B4(&a34);
  sub_10000A1EC(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_10034F8E8(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
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

BOOL sub_10034F95C(uint64_t a1, uint64_t a2)
{
  cf = 0;
  (*(*a1 + 472))(&cf);
  v3 = cf;
  if (cf)
  {
    v24 = 0uLL;
    v25 = 0;
    v4 = CFGetTypeID(cf);
    if (v4 == CFArrayGetTypeID())
    {
      memset(buf, 0, 24);
      context = buf;
      v37.length = CFArrayGetCount(v3);
      v37.location = 0;
      CFArrayApplyFunction(v3, v37, sub_10035565C, &context);
      v5 = v24;
      v24 = *buf;
      *buf = v5;
      v6 = v25;
      v25 = *&buf[16];
      *&buf[16] = v6;
      context = buf;
      sub_1000087B4(&context);
    }

    v7 = v24;
    CSIPhoneNumber::CSIPhoneNumber();
    if (v24 != *(&v24 + 1))
    {
      while (1)
      {
        *__p = 0u;
        v36 = 0u;
        *v33 = 0u;
        v34 = 0u;
        *v31 = 0u;
        v32 = 0u;
        *v29 = 0u;
        v30 = 0u;
        memset(buf, 0, sizeof(buf));
        CSIPhoneNumber::CSIPhoneNumber();
        v8 = CSIPhoneNumber::operator==();
        if (SBYTE7(v36) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(v33[1]);
        }

        if (SBYTE7(v32) < 0)
        {
          operator delete(v31[0]);
        }

        if (SBYTE7(v30) < 0)
        {
          operator delete(v29[0]);
        }

        if (buf[31] < 0)
        {
          operator delete(*&buf[8]);
        }

        if (v8)
        {
          break;
        }

        v7 += 24;
        if (v7 == *(&v24 + 1))
        {
          v7 = *(&v24 + 1);
          break;
        }
      }
    }

    v9 = v7 != *(&v24 + 1);
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

    if (v15 < 0)
    {
      operator delete(v14);
    }

    if (v7 != *(&v24 + 1))
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = **(a1 + 80);
        if (v11)
        {
          v12 = PersonalityInfo::logPrefix(v11);
        }

        else
        {
          v12 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v12;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sShortcode number found", buf, 0x16u);
      }
    }

    *buf = &v24;
    sub_1000087B4(buf);
  }

  else
  {
    v9 = 0;
  }

  sub_10000A1EC(&cf);
  return v9;
}

void sub_10034FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, void **a34)
{
  a34 = &a29;
  sub_1000087B4(&a34);
  sub_10000A1EC(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_10034FCB4(uint64_t a1, void **a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
  v14 = (*(*v12 + 48))(v12);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if ((v14 & 1) == 0)
  {
    if (sub_10034F590(a1, a2))
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = **(a1 + 80);
        if (v17)
        {
          v18 = PersonalityInfo::logPrefix(v17);
        }

        else
        {
          v18 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v18;
        v26 = 2080;
        v27 = " ";
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sDialed number matches Emergency number over Wi-Fi-only. LocationService off is ignored", buf, 0x16u);
      }
    }

    else if (sub_10034F95C(a1, a2))
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = **(a1 + 80);
        if (v20)
        {
          v21 = PersonalityInfo::logPrefix(v20);
        }

        else
        {
          v21 = "-1";
        }

        if (*(a2 + 23) >= 0)
        {
          v22 = a2;
        }

        else
        {
          v22 = *a2;
        }

        *buf = 136315650;
        *&buf[4] = v21;
        v26 = 2080;
        v27 = " ";
        v28 = 2080;
        v29 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%s### CallDeny: Can't dial shortcode number %s with LocationService disabled", buf, 0x20u);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__p, *a2, a2[1]);
      }

      else
      {
        *__p = *a2;
        v24 = a2[2];
      }

      sub_10034FFC0(a1, __p);
    }
  }

  return 1;
}

void sub_10034FF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10034FFC0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  sub_100004AA0(&v7, (a1 + 8));
  v3 = v8;
  v6[0] = v7;
  v6[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }

  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  operator new();
}

void sub_10035013C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035015C(uint64_t a1@<X0>, const __CFData **a2@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v32 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v33 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v33);
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
  (*(*v12 + 160))(&v30, v12, *(**(a1 + 80) + 52));
  v14 = std::string::append(&v30, "/", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v34, "CarrierCA.crt", 0xDuLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v32 = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v13)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  operator delete(v30.__r_.__value_.__l.__data_);
  if ((v13 & 1) == 0)
  {
LABEL_13:
    sub_100004A34(v11);
  }

LABEL_14:
  v30.__r_.__value_.__r.__words[0] = &off_101EA1020;
  *a2 = 0;
  sub_1009C8EFC(&v30, __p);
  v18 = *a2;
  v19 = *(a1 + 40);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    if (!v20)
    {
      goto LABEL_30;
    }

    v21 = **(a1 + 80);
    if (v21)
    {
      v22 = PersonalityInfo::logPrefix(v21);
      v18 = *a2;
    }

    else
    {
      v22 = "-1";
    }

    Length = CFDataGetLength(v18);
    LODWORD(v34.__r_.__value_.__l.__data_) = 136315650;
    *(v34.__r_.__value_.__r.__words + 4) = v22;
    WORD2(v34.__r_.__value_.__r.__words[1]) = 2080;
    *(&v34.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(v34.__r_.__value_.__r.__words[2]) = 1024;
    LODWORD(v35) = Length;
    v26 = "#I %s%sePDG CA certificate file of size %d loaded";
    v27 = v19;
    v28 = 28;
  }

  else
  {
    if (!v20)
    {
      goto LABEL_30;
    }

    v23 = **(a1 + 80);
    if (v23)
    {
      v24 = PersonalityInfo::logPrefix(v23);
    }

    else
    {
      v24 = "-1";
    }

    v29 = __p;
    if (v32 < 0)
    {
      v29 = __p[0];
    }

    LODWORD(v34.__r_.__value_.__l.__data_) = 136315650;
    *(v34.__r_.__value_.__r.__words + 4) = v24;
    WORD2(v34.__r_.__value_.__r.__words[1]) = 2080;
    *(&v34.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(v34.__r_.__value_.__r.__words[2]) = 2080;
    v35 = v29;
    v26 = "#I %s%sUnable to open '%s' for reading";
    v27 = v19;
    v28 = 32;
  }

  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, &v34, v28);
LABEL_30:
  FileSystemInterface::~FileSystemInterface(&v30);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10035049C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10002D760(v28);
  FileSystemInterface::~FileSystemInterface(&a10);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10035052C(uint64_t a1, int a2)
{
  v4 = *(a1 + 104);
  result = a1 + 104;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2)
    {
      return (*(**(v5 + 40) + 96))();
    }
  }

  return result;
}

void sub_100350590(uint64_t a1)
{
  if (*(a1 + 354) == 1)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = **(a1 + 80);
      if (v3)
      {
        v4 = PersonalityInfo::logPrefix(v3);
      }

      else
      {
        v4 = "-1";
      }

      *v17 = 136315394;
      *&v17[4] = v4;
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPSControl is shutting down. Ignoring WiFiLocation evaluation", v17, 0x16u);
    }

    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *v17 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v17);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
LABEL_11:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v15 = **(a1 + 80);
      if (v15)
      {
        v16 = PersonalityInfo::logPrefix(v15);
      }

      else
      {
        v16 = "-1";
      }

      sub_10176C06C(v16, v17);
    }

    goto LABEL_21;
  }

LABEL_16:
  (*(*v13 + 40))(v13);
LABEL_21:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10035078C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003507D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, (a2 + 32));
  v5 = *(a2 + 64);
  *(a1 + 77) = *(a2 + 77);
  *(a1 + 64) = v5;
  sub_10006F264((a1 + 88), (a2 + 88));
  sub_10006F264((a1 + 120), (a2 + 120));
  return a1;
}

void sub_100350834(_Unwind_Exception *exception_object)
{
  if (*(v1 + 112) == 1 && *(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100350944(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E43FD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100350998(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1003509AC(uint64_t a1, const void **a2)
{
  if (a2)
  {
    sub_1003509AC(a1, *a2);
    sub_1003509AC(a1, a2[1]);
    sub_10001021C(a2 + 5);

    operator delete(a2);
  }
}

void *sub_100350A08(void *a1)
{
  *a1 = off_101E44028;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100350A54(void *a1)
{
  *a1 = off_101E44028;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100350B34(uint64_t result, uint64_t a2)
{
  *a2 = off_101E44028;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100350B74(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100350B84(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100350BC4(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        v7 = sub_100007A6C((v4 + 100), (*v4[10] + 24));
        if (v4 + 101 != v7)
        {
          ((*v4)[37])(v4, *v4[10] + 24, v7 + 56, v7 + 64, v7 + 88);
        }
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_100350CB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100350D00(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100350E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void **sub_100350EA0(void **a1)
{
  sub_100352130(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100350EE0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100350F24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_10035101C(a1, v5);
}

void sub_100350FEC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035101C(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_100351118(a1, x1_0);
}

void sub_100351100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003511B0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1003511F4(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1003514D4(a1, a2, 1, 2);
}

void sub_100351318(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_10035156C(&v2, a2);
}

uint64_t sub_100351378(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t *sub_1003513BC(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1003511B0(a1);
  result = sub_10022BA14(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_10022AF48(v10 + 2);
        sub_10022B384(v15, a2);
        v10 = v22;
      }

      if (*(sub_10022AF48(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1003511B0(a1);
        v18 = sub_10022BA14(v17);
        v19 = sub_10022AF48(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_1003511B0(a1);
      result = sub_10022BA14(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t *sub_1003514D4(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_1003511B0(a1);
  v10 = sub_10022BA14(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1003511B0(a1);
    v11 = *(sub_10022BA14(v12) + 8);
  }

  v14 = v11;
  return sub_1003513BC(a1, a2, a3, &v14, a4);
}

void sub_10035156C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1003515D8(&v2, a2);
}

void sub_100351648(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100351688(uint64_t result)
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

uint64_t sub_1003517A4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1003517E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100351854(&v2, a2);
}

void sub_1003518C4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1003518EC(v1);
  __cxa_rethrow();
}

uint64_t sub_1003518EC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100352130((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100351960(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100352130((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

void (***sub_1003519D0(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100352078(v4, result);
    sub_100352078(v3, a2);
    sub_100352078(a2, v4);
    return sub_100352130(v4);
  }

  return result;
}

uint64_t sub_100351A4C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_100351B48(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 16);
  }

  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = v5;
    v11 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v10 = v5;
    v11 = 0;
  }

  v9[0] = off_101E44168;
  v9[1] = v4;
  sub_100351C78(v3, v9, __p);
}

void sub_100351C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void (**a16)(void, void, uint64_t))
{
  sub_100352130(&a16);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void (***sub_100351DD8(uint64_t a1))(void, void, uint64_t)
{
  sub_100351E6C(*(a1 + 32));
  result = *(a1 + 32);
  if (result)
  {
    sub_100352130(result);
    operator delete();
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100351E6C(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_100351F04(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN13PSControlBase10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN13PSControlBase10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_100351FE8(uint64_t *a1, void *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        sub_10034ADC0(v5, a2);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_100352078(uint64_t result, uint64_t a2)
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

void sub_10035210C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_100352130(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void sub_100352180(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1003522C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void **sub_100352320(void **a1)
{
  sub_1003542B8(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100352360(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1003523A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_10035249C(a1, v5);
}

void sub_10035246C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035249C(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_100352598(a1, x1_0);
}

void sub_100352580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100352630(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_100352674(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1003526B8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100352998(a1, a2, 1, 2);
}

void sub_1003527DC(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100352A30(&v2, a2);
}

uint64_t sub_10035283C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t *sub_100352880(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100352630(a1);
  result = sub_10035391C(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_100352674(v10 + 2);
        sub_100353060(v15, a2);
        v10 = v22;
      }

      if (*(sub_100352674(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100352630(a1);
        v18 = sub_10035391C(v17);
        v19 = sub_100352674(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_100352630(a1);
      result = sub_10035391C(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t *sub_100352998(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100352630(a1);
  v10 = sub_10035391C(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100352630(a1);
    v11 = *(sub_10035391C(v12) + 8);
  }

  v14 = v11;
  return sub_100352880(a1, a2, a3, &v14, a4);
}

void sub_100352A30(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100352A9C(&v2, a2);
}

void sub_100352B0C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100352B4C(uint64_t result)
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

uint64_t sub_100352C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100352DF0(a1, a2);
  sub_100352E5C((v4 + 3), a2 + 24);
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

uint64_t *sub_100352DF0(uint64_t *a1, uint64_t a2)
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

uint64_t sub_100352E5C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100352EC4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100352F30(&v2, a2);
}

void sub_100352FA0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100352FE0(uint64_t result)
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

uint64_t *sub_100353060(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1003530CC(result);
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

uint64_t sub_1003530CC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100353110(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E44258;
  operator new();
}

void sub_100353220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_100353288(uint64_t a1)
{
  sub_100353634(a1);

  operator delete();
}

uint64_t sub_1003532C0(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1003536AC(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_10035336C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10035339C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_1003533C8(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_1003533F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_10035344C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1003534B8(&v2, a2);
}

void sub_100353528(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100353550(v1);
  __cxa_rethrow();
}

uint64_t sub_100353550(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1003542B8((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1003535C4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1003542B8((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100353634(uint64_t a1)
{
  *a1 = off_101E44258;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1003536AC(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1003530CC(result + 4); ; i += 6)
    {
      result = sub_1003530CC(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_100353794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1003537B4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100353820(&v2, a2);
}

void sub_100353890(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1003538D4(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10035391C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_100353960(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100354200(v4, result);
    sub_100354200(v3, a2);
    sub_100354200(a2, v4);
    return sub_1003542B8(v4);
  }

  return result;
}

uint64_t sub_1003539DC(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_100353AD8(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  v8 = *a4;
  v7 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v11;
    v18 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = 0;
  }

  v16[0] = off_101E443A0;
  v16[1] = v10;
  v15[0] = v8;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100353C74(v9, v16, __p, v5, v15);
}

void sub_100353C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_1003542B8(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100353E3C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = *a1[6];
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100353F50(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = a1[4];
  if (v7)
  {
    sub_1003542B8(v7);
    operator delete();
  }

  v8 = a1[5];
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = a1[6];
  if (result)
  {
    operator delete();
  }

  v10 = a1[7];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_100353F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100353F50(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0uLL;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_100353FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10035400C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN13PSControlBase10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN13PSControlBase10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_1003540F0(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10034C210(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_1003541D0(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100354200(uint64_t result, uint64_t a2)
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

void sub_100354294(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_1003542B8(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100354308(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_3EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN13PSControlBase10initializeEvE3$_3EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_100354404(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 16);
  }

  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = v5;
    v11 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v10 = v5;
    v11 = 0;
  }

  v9[0] = off_101E443E0;
  v9[1] = v4;
  sub_100351C78(v3, v9, __p);
}

void sub_100354504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void (**a16)(void, void, uint64_t))
{
  sub_100352130(&a16);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100354534(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN13PSControlBase10initializeEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN13PSControlBase10initializeEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_100354618(uint64_t *a1, void *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        sub_10034D890(v5, a2);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_100354718(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E44410;
  a2[1] = v2;
  return result;
}

uint64_t sub_10035474C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100354798(uint64_t *a1, rest::PairedDeviceInfoList *a2, const xpc::object *a3)
{
  v3 = *a1;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  rest::read_rest_value(&v5, a2, a3);
  memset(v4, 0, sizeof(v4));
  sub_10035485C(v4, v5, v6, 0x84BDA12F684BDA13 * ((v6 - v5) >> 3));
  sub_101058BEC(v3, v4);
  v8 = v4;
  sub_10032DC68(&v8);
  v8 = &v5;
  sub_10032DC68(&v8);
}

void sub_10035482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  sub_10032DC68((v14 - 24));
  *(v14 - 24) = &a13;
  sub_10032DC68((v14 - 24));
  _Unwind_Resume(a1);
}

uint64_t *sub_10035485C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1003548E4(result, a4);
  }

  return result;
}

void sub_1003548C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10032DC68(&a9);
  _Unwind_Resume(a1);
}

void sub_1003548E4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    sub_100354934(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100354934(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100354990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100DB112C(a4, v6);
      v6 += 216;
      a4 += 216;
      v7 -= 216;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1003549F0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 216;
    do
    {
      v4 = sub_100DB14E0(v4) - 216;
      v2 += 216;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100354A14(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t *sub_100354AE8(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(v1 + 8))
      {
        sub_10034F06C(v3);
      }

      sub_100004A34(v4);
    }
  }

  sub_10007060C(&v7);
  return sub_1000049E0(&v6);
}

void sub_100354B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100354BF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E44490;
  a2[1] = v2;
  return result;
}

void sub_100354C1C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(v3 + 80);
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(v5);
    }

    else
    {
      v6 = "-1";
    }

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136315650;
    v9 = v6;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v8, 0x20u);
  }
}

uint64_t sub_100354D0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100354D58(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_1000194D8(a1, v4);
  sub_10001021C((v4 + 40));
  operator delete(v4);
  return 1;
}

uint64_t *sub_100354DE4(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
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
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_100354ED8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10001021C(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100354F94(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E44510;
  a2[1] = v2;
  return result;
}

void sub_100354FC0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(v3 + 80);
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(v5);
    }

    else
    {
      v6 = "-1";
    }

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = 136315650;
    v9 = v6;
    v10 = 2080;
    v11 = " ";
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v8, 0x20u);
  }
}

uint64_t sub_1003550B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10035511C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E44590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100355198(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E445E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10035526C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_100355310(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100355290(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003552D0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100355310(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = (a2 + 24);
    sub_1000087B4(&v3);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

awd::metrics::CommCenterThumperAccount **sub_100355378(awd::metrics::CommCenterThumperAccount **a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = a2;
  if (sub_10079D818(a2))
  {
    operator new();
  }

  return a1;
}

unsigned int *sub_100355460(unsigned int *a1)
{
  sub_1003554BC(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

unsigned int *sub_1003554BC(unsigned int *result)
{
  if (*result)
  {
    v1 = result;
    sub_100355534(result, result[2]);
    result = *v1;
    *v1 = 0;
    if (result)
    {
      v2 = *(*result + 8);

      return v2();
    }
  }

  return result;
}

void sub_100355534(uint64_t *a1, unsigned int a2)
{
  v10 = 0;
  v11 = 0;
  v4 = sub_10001C610(&v10);
  if (v10)
  {
    SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(v4);
    v6 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, a2);
    v7 = v6;
    if (v6)
    {
      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        if (*(v8 + 56))
        {
          WISTimestamp = *(v8 + 8);
        }

        else
        {
          WISTimestamp = wis::getWISTimestamp(v6);
          *(v8 + 56) |= 1u;
          *(v8 + 8) = WISTimestamp;
        }

        wis::MetricContainer::storeMetric(v7, WISTimestamp, *v7, v8);
        (*(*v8 + 8))(v8);
      }

      wis::WISServerConnection::SubmitMetric(v10, v7);
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_100355614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 8))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10035565C(uint64_t a1, uint64_t *a2)
{
  __p = 0uLL;
  v4 = 0;
  ctu::cf::assign();
  sub_100005308(*a2, &__p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p);
  }
}

void sub_1003556B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1003556D4(uint64_t *a1)
{
  v1 = *a1;
  v69 = a1;
  v70 = v1;
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 32))
      {
LABEL_109:
        sub_100004A34(v5);
        goto LABEL_110;
      }

      v6 = *(v3 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = **(v3 + 80);
        if (v7)
        {
          v8 = PersonalityInfo::logPrefix(v7);
        }

        else
        {
          v8 = "-1";
        }

        v9 = (v1 + 8);
        if (*(v1 + 31) < 0)
        {
          if (*(v1 + 16))
          {
            v9 = *v9;
          }

          else
          {
            v9 = "<none>";
          }
        }

        else if (!*(v1 + 31))
        {
          v9 = "<none>";
        }

        *buf = 136315650;
        *&buf[4] = v8;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v84 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sShow location service off alert. number: '%s'", buf, 0x20u);
      }

      v76 = 0;
      v77 = 0;
      format = 0;
      alertMessage = 0;
      v73 = 0;
      if (*(v1 + 31) < 0)
      {
        v11 = *(v1 + 16);
        if (v11)
        {
          sub_100005F2C(__dst, *(v1 + 8), v11);
          goto LABEL_21;
        }
      }

      else if (*(v1 + 31))
      {
        v10 = *(v1 + 8);
        v72 = *(v1 + 24);
        *__dst = v10;
LABEL_21:
        if (SHIBYTE(v72) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v80 = v72;
        }

        v78 = 0;
        if (SHIBYTE(v80) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v80;
        }

        v81 = 0;
        if (ctu::cf::convert_copy())
        {
          v12 = v78;
          v78 = v81;
          v82 = v12;
          sub_100005978(&v82);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v73 = v78;
        v78 = 0;
        sub_100005978(&v78);
        if (SHIBYTE(v80) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v72) < 0)
        {
          operator delete(__dst[0]);
        }

LABEL_36:
        ServiceMap = Registry::getServiceMap(*(v3 + 48));
        v14 = ServiceMap;
        if (v15 < 0)
        {
          v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
          v17 = 5381;
          do
          {
            v15 = v17;
            v18 = *v16++;
            v17 = (33 * v17) ^ v18;
          }

          while (v18);
        }

        std::mutex::lock(ServiceMap);
        *buf = v15;
        v19 = sub_100009510(&v14[1].__m_.__sig, buf);
        if (v19)
        {
          v21 = v19[3];
          v20 = v19[4];
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v14);
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v20);
            v22 = 0;
            goto LABEL_44;
          }
        }

        else
        {
          v21 = 0;
        }

        std::mutex::unlock(v14);
        v20 = 0;
        v22 = 1;
LABEL_44:
        if (!v73)
        {
          if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
          {
            v33 = **(v3 + 80);
            if (v33)
            {
              v34 = PersonalityInfo::logPrefix(v33);
            }

            else
            {
              v34 = "-1";
            }

            sub_10176C0F4(v34, buf);
          }

          goto LABEL_106;
        }

        v23 = Registry::getServiceMap(*(v3 + 48));
        v24 = v23;
        if (v25 < 0)
        {
          v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
          v27 = 5381;
          do
          {
            v25 = v27;
            v28 = *v26++;
            v27 = (33 * v27) ^ v28;
          }

          while (v28);
        }

        std::mutex::lock(v23);
        *buf = v25;
        v29 = sub_100009510(&v24[1].__m_.__sig, buf);
        v68 = v22;
        if (v29)
        {
          v31 = v29[3];
          v30 = v29[4];
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v24);
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v30);
            v32 = 0;
            goto LABEL_56;
          }
        }

        else
        {
          v31 = 0;
        }

        std::mutex::unlock(v24);
        v30 = 0;
        v32 = 1;
LABEL_56:
        v35 = (*(*v31 + 72))(v31);
        if ((v32 & 1) == 0)
        {
          sub_100004A34(v30);
        }

        if (v35)
        {
          v36 = kAlertDialogLocalizationTable;
          (*(*v21 + 40))(__p, v21, kAlertDialogLocalizationTable, @"SHORT_CODE_CALLING_WITHOUT_LOCATION_WLAN", 0);
        }

        else
        {
          v36 = kAlertDialogLocalizationTable;
          (*(*v21 + 40))(__p, v21, kAlertDialogLocalizationTable, @"SHORT_CODE_CALLING_WITHOUT_LOCATION", 0);
        }

        *buf = format;
        format = __p[0];
        __p[0] = 0;
        sub_100005978(buf);
        sub_100005978(__p);
        if (!format)
        {
          if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
          {
            v50 = **(v3 + 80);
            if (v50)
            {
              v51 = PersonalityInfo::logPrefix(v50);
            }

            else
            {
              v51 = "-1";
            }

            sub_10176C0B0(v51, buf);
          }

          goto LABEL_106;
        }

        v37 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, format, v73);
        v38 = format;
        format = v37;
        *buf = v38;
        sub_100005978(buf);
        v39 = Registry::getServiceMap(*(v3 + 48));
        v40 = v39;
        v42 = v41;
        if (v41 < 0)
        {
          v43 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
          v44 = 5381;
          do
          {
            v42 = v44;
            v45 = *v43++;
            v44 = (33 * v44) ^ v45;
          }

          while (v45);
        }

        std::mutex::lock(v39);
        *buf = v42;
        v46 = sub_100009510(&v40[1].__m_.__sig, buf);
        if (v46)
        {
          v48 = v46[3];
          v47 = v46[4];
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v40);
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v47);
            v49 = 0;
            goto LABEL_73;
          }
        }

        else
        {
          v48 = 0;
        }

        std::mutex::unlock(v40);
        v47 = 0;
        v49 = 1;
LABEL_73:
        v52 = (*(*v48 + 56))(v48);
        if ((v49 & 1) == 0)
        {
          sub_100004A34(v47);
        }

        sub_100222570(&alertMessage, &format);
        __p[0] = 0;
        (*(*v21 + 40))(__p, v21, v36, @"CANCEL", @"Cancel");
        v82 = 0;
        if (v52)
        {
          v53 = @"TURN_ON";
        }

        else
        {
          v53 = @"SETTINGS";
        }

        if (v52)
        {
          v54 = @"Turn On";
        }

        else
        {
          v54 = @"Settings";
        }

        v22 = v68;
        (*(*v21 + 40))(&v82, v21, v36, v53, v54);
        v81 = 0;
        CFUserNotificationDisplayAlert(0.0, 0, v77, 0, 0, v76, alertMessage, __p[0], v82, 0, &v81);
        if (v81 != 1)
        {
          goto LABEL_105;
        }

        v55 = *(v3 + 40);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = **(v3 + 80);
          if (v56)
          {
            v57 = PersonalityInfo::logPrefix(v56);
          }

          else
          {
            v57 = "-1";
          }

          *buf = 136315394;
          *&buf[4] = v57;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%sLaunch Settings for Location", buf, 0x16u);
        }

        if (!v52)
        {
          *buf = 0;
          v78 = @"prefs:root=Privacy&path=LOCATION";
          sub_10021D11C(buf, &v78);
          v78 = *buf;
          if (*buf)
          {
            CFRetain(*buf);
          }

          sub_1003A5C7C(&v78);
          sub_100005978(&v78);
          sub_100005978(buf);
          goto LABEL_105;
        }

        v58 = Registry::getServiceMap(*(v3 + 48));
        v59 = v58;
        if (v41 < 0)
        {
          v60 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
          v61 = 5381;
          do
          {
            v41 = v61;
            v62 = *v60++;
            v61 = (33 * v61) ^ v62;
          }

          while (v62);
        }

        std::mutex::lock(v58);
        *buf = v41;
        v63 = sub_100009510(&v59[1].__m_.__sig, buf);
        if (v63)
        {
          v65 = v63[3];
          v64 = v63[4];
          if (v64)
          {
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v59);
            atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v64);
            v66 = 0;
            goto LABEL_103;
          }
        }

        else
        {
          v65 = 0;
        }

        std::mutex::unlock(v59);
        v64 = 0;
        v66 = 1;
LABEL_103:
        (*(*v65 + 80))(v65, 1);
        if ((v66 & 1) == 0)
        {
          sub_100004A34(v64);
        }

LABEL_105:
        sub_100005978(&v82);
        sub_100005978(__p);
LABEL_106:
        if ((v22 & 1) == 0)
        {
          sub_100004A34(v20);
        }

        sub_100005978(&v73);
        sub_100005978(&format);
        sub_100005978(&alertMessage);
        sub_100005978(&v76);
        sub_1002030AC(&v77);
        goto LABEL_109;
      }

      v73 = 0;
      goto LABEL_36;
    }
  }

LABEL_110:
  sub_100356178(&v70);
  return sub_1000049E0(&v69);
}