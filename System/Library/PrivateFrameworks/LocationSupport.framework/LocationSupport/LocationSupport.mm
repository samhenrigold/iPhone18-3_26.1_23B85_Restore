double sub_1DF7FF29C(unint64_t a1)
{
  v2 = *&qword_1ED5FAD78;
  if (*&qword_1ED5FAD78 == 0.0)
  {
    info = 0;
    mach_timebase_info(&info);
    numer = info.numer;
    if (info.denom)
    {
      denom = info.denom;
      v5 = info.numer;
      do
      {
        numer = denom;
        denom = v5 % denom;
        v5 = numer;
      }

      while (denom);
    }

    v6 = info.numer / numer;
    v7 = 1000000000;
    v8 = v6;
    do
    {
      v9 = v8;
      v8 = v7;
      v7 = v9 % v7;
    }

    while (v7);
    v2 = (v6 / v8) / (0x3B9ACA00 / v8 * (info.denom / numer));
    *&qword_1ED5FAD78 = v2;
  }

  return v2 * a1;
}

void CLProfilingIdentifySiloInvocation(uint64_t a1, void *a2)
{
  if (qword_1ED5FAE50 != -1)
  {
    dispatch_once(&qword_1ED5FAE50, &unk_1F5AC6400);
  }

  if (byte_1ED5FAE38 == 1)
  {
    v4 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_msgSend_selector(a2, v5, v6);
    v8 = NSStringFromSelector(v7);
    v13 = objc_msgSend_initWithFormat_(v4, v9, @"[%@ %@]", a1, v8);
    v12 = objc_msgSend_UTF8String(v13, v10, v11);
    off_1EED20BE8(v12);
  }
}

void sub_1DF7FF4D8(void *a1)
{
  v1 = a1;
  if ((atomic_load_explicit(&qword_1ED5FAE30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5FAE30))
  {
    operator new();
  }

  os_unfair_lock_lock(&unk_1ED5FAE00);
  v1[2](v1, qword_1ED5FAE28);
  os_unfair_lock_unlock(&unk_1ED5FAE00);
}

void sub_1DF7FF5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_guard_abort(&qword_1ED5FAE30);

  _Unwind_Resume(a1);
}

void *sub_1DF7FF5D0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(a2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= a2)
    {
      v7 = v5 % a2;
    }
  }

  else
  {
    v7 = v5 & (a2 - 1);
  }

  v8 = *(a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == a3)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= a2)
        {
          v10 %= a2;
        }
      }

      else
      {
        v10 &= a2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

__CFString *sub_1DF7FF70C(void *a1, int a2, void *a3)
{
  v5 = a3;
  v7 = objc_msgSend_objectForKey_(a1, v6, v5);
  if (!v7)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = @"_CLUnSupportedService";
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = v5;
    }
  }

  return v7;
}

void CLProfilingIdentify(uint64_t a1)
{
  if (qword_1ED5FAE50 != -1)
  {
    dispatch_once(&qword_1ED5FAE50, &unk_1F5AC6400);
  }

  if (byte_1ED5FAE38 == 1)
  {
    v2 = off_1EED20BE8;

    v2(a1);
  }
}

void sub_1DF7FFDAC(const void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _Block_copy(a1);
  v3[2]();

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1DF7FFEB4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF7FFED0(std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_1DF7FFFD4(uint64_t a1, const char *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1DF800130;
  v4[3] = &unk_1E86C83E0;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return objc_msgSend_async_(v2, a2, v4);
}

void sub_1DF800048(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

void sub_1DF800058(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DF7FFFD4;
  v9[3] = &unk_1E86C85E8;
  v5 = v3;
  v10 = v5;
  v11 = v2;
  objc_msgSend_async_(v4, v6, v9);
  v7 = *(a1 + 24);
  *(a1 + 24) = 0;

  v8 = *(a1 + 32);
  *(a1 + 32) = 0;
}

uint64_t CLConnection::getRemotePid(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[1]);
  v2 = *this;

  return xpc_connection_get_pid(v2);
}

void CLConnection::getName(CLConnection *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 119);
  if (v4 < 0)
  {
    v5 = *(this + 13);
  }

  else
  {
    v5 = *(this + 119);
  }

  v6 = (this + 96);
  if (!v5)
  {
    dispatch_assert_queue_V2(*(this + 1));
    xpc_connection_get_audit_token();
    sub_1DF806E1C(&v10);
    if (*(this + 119) < 0)
    {
      operator delete(*v6);
    }

    *v6 = *&v10.__r_.__value_.__l.__data_;
    *(this + 14) = *(&v10.__r_.__value_.__l + 2);
    v4 = *(this + 119);
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (*(this + 119))
      {
        goto LABEL_9;
      }

LABEL_12:
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v7 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_DEFAULT, "#Warning The client name could not be determined.", v9, 2u);
      }

      if (*(this + 119) < 0)
      {
        *(this + 13) = 15;
        v8 = *(this + 12);
      }

      else
      {
        *(this + 119) = 15;
        v8 = this + 96;
      }

      strcpy(v8, "<Indeterminate>");
      if ((*(this + 119) & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }

    if (!*(this + 13))
    {
      goto LABEL_12;
    }
  }

LABEL_9:
  if ((v4 & 0x80) == 0)
  {
LABEL_10:
    *a2 = *v6;
    a2[2] = *(this + 14);
    return;
  }

LABEL_20:
  sub_1DF802ED0(a2, *(this + 12), *(this + 13));
}

void sub_1DF800460(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (*(*(a1[7] + 8) + 24) != 1)
  {
    goto LABEL_23;
  }

  v5 = MEMORY[0x1E12E05B0](a2);
  if (v5 != MEMORY[0x1E69E9E98])
  {
    if (v5 == MEMORY[0x1E69E9E80])
    {
      operator new();
    }

    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v6 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_FAULT, "Got unexpected location event", buf, 2u);
    }

    goto LABEL_23;
  }

  if (a2 != MEMORY[0x1E69E9E18])
  {
    if (a2 != MEMORY[0x1E69E9E20])
    {
      goto LABEL_23;
    }

    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v7 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_DEFAULT, "#Warning Location connection invalid!", buf, 2u);
    }

    v8 = a1[5];
    if (!v8)
    {
      goto LABEL_23;
    }

LABEL_22:
    (*(v8 + 16))();
    goto LABEL_23;
  }

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v9 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Connection interrupted!", buf, 2u);
  }

  v8 = a1[4];
  if (v8)
  {
    goto LABEL_22;
  }

LABEL_23:
  objc_autoreleasePoolPop(v4);
}

void sub_1DF800714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  sub_1DF7FFED0(v10);
  _Unwind_Resume(a1);
}

uint64_t CLConnectionMessage::CLConnectionMessage(uint64_t a1, xpc_object_t xdict, void *a3)
{
  *(a1 + 40) = 0u;
  v5 = (a1 + 40);
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 56) = 0u;
  v6 = a3[1];
  *(a1 + 72) = *a3;
  *(a1 + 80) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  string = xpc_dictionary_get_string(xdict, "kCLConnectionMessageNameKey");
  if (string)
  {
    sub_1DF800930(a1, string);
  }

  int64 = xpc_dictionary_get_int64(xdict, "kCLConnectionMessageReplyHandlerIdentifierKey");
  if (int64)
  {
    *(a1 + 24) = int64;
  }

  *(a1 + 32) = xpc_dictionary_get_BOOL(xdict, "kCLConnectionMessageIsReplyingKey");
  value = xpc_dictionary_get_value(xdict, "kCLConnectionMessageInfoKey");
  *(a1 + 56) = value;
  v10 = value;
  *(a1 + 64) = xpc_dictionary_get_value(xdict, "kCLConnectionMessageFileDescriptorKey");
  remote_connection = xpc_dictionary_get_remote_connection(xdict);
  reply = xpc_dictionary_create_reply(xdict);
  *(a1 + 48) = reply;
  if (reply || *(a1 + 24) && (*(a1 + 32) & 1) == 0)
  {
    *v5 = xpc_retain(remote_connection);
  }

  if (remote_connection && !*(a1 + 72))
  {
    xpc_connection_get_audit_token();
    operator new();
  }

  return a1;
}

void sub_1DF8008F8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1DF800930(std::string *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1DF800978(a1, __s, v4);
}

std::string *sub_1DF800978(std::string *__dst, const std::string::value_type *__src, size_t __len)
{
  size = SHIBYTE(__dst->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = __dst->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __len)
    {
      size = __dst->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = __dst->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = __dst;
    if (__len > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(__dst, v8, __len - v8, size, 0, size, __len, __src);
      return __dst;
    }
  }

  if (__len)
  {
    memmove(v7, __src, __len);
    LOBYTE(size) = *(&__dst->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    __dst->__r_.__value_.__l.__size_ = __len;
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __len & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__len] = 0;
  return __dst;
}

void sub_1DF800A34(uint64_t a1, const char **a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  CLConnection::handleMessage(v2, v4);
  if (v3)
  {

    sub_1DF7FFED0(v3);
  }
}

void sub_1DF800AA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void CLConnection::handleMessage(uint64_t a1, const char **a2)
{
  v48 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 8));
  v5 = *a2;
  if ((*a2)[32] == 1 && *(v5 + 24))
  {
    v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v4, *(v5 + 24));
    v8 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 24), v7, v6);
    if (v8)
    {
      v9 = v8;
      v10 = _os_activity_create(&dword_1DF7FE000, "CL: Invoking reply-handler", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v10, &state);

      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v11 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
      {
        v14 = *a2;
        if ((*a2)[23] < 0)
        {
          v14 = *v14;
        }

        v15 = objc_msgSend_intValue(v6, v12, v13);
        *buf = 68289794;
        *v41 = 0;
        *&v41[4] = 2082;
        *&v41[6] = &unk_1DF8255EF;
        v42 = 2082;
        v43 = "activity";
        v44 = 2082;
        v45 = v14;
        v46 = 1026;
        v47 = v15;
        _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Invoking reply-handler, event:%{public, location:escape_only}s, MessageName:%{public, location:escape_only}s, ReplyHandlerIdentifier:%{public}u}", buf, 0x2Cu);
      }

      v16 = a2[1];
      v37 = *a2;
      v38 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(v9 + 16))(v9, &v37);
      if (v38)
      {
        sub_1DF7FFED0(v38);
      }

      objc_msgSend_removeObjectForKey_(*(a1 + 24), v17, v6);
      os_activity_scope_leave(&state);
    }

    else
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v26 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        v29 = *a2;
        if ((*a2)[23] < 0)
        {
          v29 = *v29;
        }

        *buf = 68289538;
        *v41 = 0;
        *&v41[4] = 2082;
        *&v41[6] = &unk_1DF8255EF;
        v42 = 2082;
        v43 = v29;
        v44 = 1026;
        LODWORD(v45) = objc_msgSend_intValue(v6, v27, v28);
        _os_log_impl(&dword_1DF7FE000, v26, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No ReplyHandler found, Message Name:%{public, location:escape_only}s, ReplyHandlerIdentifier:%{public}u}", buf, 0x22u);
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
        }
      }

      v30 = qword_1ED5FAD60;
      if (os_signpost_enabled(qword_1ED5FAD60))
      {
        v33 = *a2;
        if (*(v33 + 23) < 0)
        {
          v33 = *v33;
        }

        v34 = objc_msgSend_intValue(v6, v31, v32);
        *buf = 68289538;
        *v41 = 0;
        *&v41[4] = 2082;
        *&v41[6] = &unk_1DF8255EF;
        v42 = 2082;
        v43 = v33;
        v44 = 1026;
        LODWORD(v45) = v34;
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No ReplyHandler found", "{msg%{public}.0s:No ReplyHandler found, Message Name:%{public, location:escape_only}s, ReplyHandlerIdentifier:%{public}u}", buf, 0x22u);
      }
    }
  }

  else
  {
    v18 = *(a1 + 56);
    v19 = *(a1 + 16);
    if (*(v5 + 23) < 0)
    {
      v5 = *v5;
    }

    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, v5);
    v22 = objc_msgSend_objectForKeyedSubscript_(v19, v21, v20);
    if (!v22)
    {
      v22 = v18;
    }

    if (v22)
    {
      v23 = a2[1];
      v35 = *a2;
      v36 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(v22 + 16))(v22, &v35);
      if (v36)
      {
        sub_1DF7FFED0(v36);
      }
    }

    else
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v24 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *a2;
        if ((*a2)[23] < 0)
        {
          v25 = *v25;
        }

        *buf = 136315138;
        *v41 = v25;
        _os_log_impl(&dword_1DF7FE000, v24, OS_LOG_TYPE_DEFAULT, "#Warning Unhandled message %s", buf, 0xCu);
      }
    }
  }
}

void sub_1DF800F60(uint64_t a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v6 = sub_1DF80102C;
  v7 = &unk_1F5AC6660;
  v3 = *a2;
  v2 = a2[1];
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (v10)
  {
    sub_1DF7FFED0(v10);
  }
}

void sub_1DF801014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF80102C(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = a1[6];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v5);
  if (v6)
  {
    sub_1DF7FFED0(v6);
  }
}

void sub_1DF80108C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLConnectionMessage::getDictionaryOfClasses(CLConnectionMessage *this, NSSet *a2)
{
  if (qword_1ED5FAE78 != -1)
  {
    dispatch_once(&qword_1ED5FAE78, &unk_1F5AC6548);
  }

  v4 = objc_msgSend_setByAddingObjectsFromSet_(qword_1ED5FAE70, a2, a2);

  return CLConnectionMessage::getObjectOfClasses(this, v4);
}

uint64_t CLConnectionMessage::getObjectOfClasses(CLConnectionMessage *this, NSSet *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(this + 7);
  if (!v3)
  {
    return 0;
  }

  bytes_ptr = xpc_data_get_bytes_ptr(v3);
  length = xpc_data_get_length(*(this + 7));
  if (bytes_ptr)
  {
    bytes_ptr = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, bytes_ptr, length);
  }

  v8 = objc_alloc(MEMORY[0x1E696ACD0]);
  v10 = objc_msgSend_initForReadingFromData_error_(v8, v9, bytes_ptr, 0);
  v15 = 0;
  v12 = objc_msgSend_decodeTopLevelObjectOfClasses_forKey_error_(v10, v11, a2, *MEMORY[0x1E696A508], &v15);

  if (v15)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v13 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 138477827;
      v17 = v15;
      _os_log_impl(&dword_1DF7FE000, v13, OS_LOG_TYPE_FAULT, "The received data object is invalid: %{private}@", buf, 0xCu);
    }
  }

  return v12;
}

void sub_1DF801280(char *a1)
{
  if (a1)
  {
    sub_1DF801280(*a1);
    sub_1DF801280(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

BOOL CLConnection::sendMessage(uint64_t a1, const char **a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 8));
  if (a3)
  {
    v8 = *(a1 + 32) + 1;
    *(a1 + 32) = v8;
    v9 = objc_msgSend_copy(a3, v6, v7);
    v10 = *(a1 + 24);
    v12 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v11, v8);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v13, v9, v12);
    v14 = _os_activity_create(&dword_1DF7FE000, "CL: ReplyHandler cached", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v14, &state);

    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v15 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
    {
      v16 = *a2;
      if ((*a2)[23] < 0)
      {
        v16 = *v16;
      }

      *buf = 68289794;
      v35 = 0;
      v36 = 2082;
      v37 = &unk_1DF8255EF;
      v38 = 2082;
      v39 = "activity";
      v40 = 2082;
      v41 = v16;
      v42 = 1026;
      v43 = v8;
      _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ReplyHandler cached, event:%{public, location:escape_only}s, MessageName:%{public, location:escape_only}s, ReplyHandlerIdentifier:%{public}u}", buf, 0x2Cu);
    }

    os_activity_scope_leave(&state);
  }

  else
  {
    v8 = 0;
  }

  v17 = *a2;
  if ((*a2)[23] < 0)
  {
    sub_1DF802ED0(__p, *v17, *(v17 + 1));
    v17 = *a2;
  }

  else
  {
    v18 = *v17;
    v32 = *(v17 + 2);
    *__p = v18;
  }

  v19 = sub_1DF80191C(__p, *(v17 + 7), *(v17 + 8), v8, 0);
  v20 = v19;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[0]);
    if (v20)
    {
      goto LABEL_15;
    }
  }

  else if (v19)
  {
LABEL_15:
    if (*(a1 + 73) == 1)
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v21 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
      {
        v22 = *a2;
        if ((*a2)[23] < 0)
        {
          v22 = *v22;
        }

        *buf = 68289282;
        v35 = 0;
        v36 = 2082;
        v37 = &unk_1DF8255EF;
        v38 = 2082;
        v39 = v22;
        _os_log_impl(&dword_1DF7FE000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLConnection::sendMessage, name:%{public, location:escape_only}s}", buf, 0x1Cu);
      }

      xpc_connection_send_notification();
    }

    else
    {
      v27 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnection::sendMessage", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v27, &state);

      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v28 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
      {
        v29 = *a2;
        if ((*a2)[23] < 0)
        {
          v29 = *v29;
        }

        *buf = 68289538;
        v35 = 0;
        v36 = 2082;
        v37 = &unk_1DF8255EF;
        v38 = 2082;
        v39 = "activity";
        v40 = 2082;
        v41 = v29;
        _os_log_impl(&dword_1DF7FE000, v28, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLConnection::sendMessage, event:%{public, location:escape_only}s, name:%{public, location:escape_only}s}", buf, 0x26u);
      }

      xpc_connection_send_message(*a1, v20);
      os_activity_scope_leave(&state);
    }

    xpc_release(v20);
    return v20 != 0;
  }

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v23 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
  {
    v24 = *a2;
    if ((*a2)[23] < 0)
    {
      v24 = *v24;
    }

    *buf = 68289282;
    v35 = 0;
    v36 = 2082;
    v37 = &unk_1DF8255EF;
    v38 = 2082;
    v39 = v24;
    _os_log_impl(&dword_1DF7FE000, v23, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't create XPC message, name:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }
  }

  v25 = qword_1ED5FAD60;
  if (os_signpost_enabled(qword_1ED5FAD60))
  {
    v26 = *a2;
    if ((*a2)[23] < 0)
    {
      v26 = *v26;
    }

    *buf = 68289282;
    v35 = 0;
    v36 = 2082;
    v37 = &unk_1DF8255EF;
    v38 = 2082;
    v39 = v26;
    _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't create XPC message", "{msg%{public}.0s:Couldn't create XPC message, name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  return v20 != 0;
}

void CLConnectionMessage::~CLConnectionMessage(CLConnectionMessage *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    xpc_release(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    xpc_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    sub_1DF7FFED0(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL CLConnection::sendMessage(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v5[0] = *a2;
  v5[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = CLConnection::sendMessage(a1, v5, 0);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  return v3;
}

void sub_1DF801904(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DF80191C(const char *a1, void *a2, void *a3, int64_t a4, BOOL a5)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v9 = xpc_string_create(a1);
  *keys = xmmword_1E86C8470;
  v13[0] = v9;
  v13[1] = a2;
  v10 = xpc_dictionary_create(keys, v13, 2uLL);
  v11 = v10;
  if (a3)
  {
    xpc_dictionary_set_value(v10, "kCLConnectionMessageFileDescriptorKey", a3);
  }

  if (a4)
  {
    xpc_dictionary_set_int64(v11, "kCLConnectionMessageReplyHandlerIdentifierKey", a4);
  }

  xpc_dictionary_set_BOOL(v11, "kCLConnectionMessageIsReplyingKey", a5);
  if (v9)
  {
    xpc_release(v9);
  }

  return v11;
}

uint64_t sub_1DF801A20(uint64_t result, uint64_t a2)
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

void CLConnectionClient::setHandlerForMessage(uint64_t a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2[23] >= 0)
  {
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);
  }

  else
  {
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, *a2);
  }

  v6 = v5;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v9);
  }

  if (a3)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v11 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v25 = objc_msgSend_UTF8String(v6, v12, v13);
      _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_DEBUG, "Setting handler for message %s", buf, 0xCu);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3321888768;
    v20[2] = sub_1DF8075E0;
    v20[3] = &unk_1F5AC6698;
    v22 = v10;
    v23 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v21 = a3;
      std::__shared_weak_count::__release_weak(v9);
    }

    else
    {
      v21 = a3;
    }

    v14 = v20;
  }

  else
  {
    v14 = 0;
  }

  v15 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_1DF80354C;
  block[3] = &unk_1F5AC6708;
  block[6] = v10;
  v17 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v8;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  block[5] = v14;
  dispatch_async(v15, block);
  if (v19)
  {
    sub_1DF7FFED0(v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF801CAC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1)
  {
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionClient::setInterruptionHandler(NSObject **a1, uint64_t a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v4);
  }

  v6 = a1[4];
  v7 = a1[5];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a1;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = sub_1DF80A2DC;
  v14[3] = &unk_1F5AC6708;
  v14[6] = v5;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14[4] = v8;
  v16 = v6;
  v17 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14[5] = a2;
  v9 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_1DF803820;
  block[3] = &unk_1F5AC6778;
  block[5] = v5;
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v6;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v14;
  dispatch_async(v9, block);
  if (v13)
  {
    sub_1DF7FFED0(v13);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v17)
  {
    sub_1DF7FFED0(v17);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void *sub_1DF801E7C(void *result, void *a2)
{
  v2 = a2[7];
  result[6] = a2[6];
  result[7] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_1DF801EB0(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void CLConnectionClient::start(CLConnectionClient *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v4);
  }

  v6 = *this;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = sub_1DF803A00;
  v7[3] = &unk_1F5AC6628;
  v7[4] = v5;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v7);
  if (v10)
  {
    sub_1DF7FFED0(v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v2)
  {
    sub_1DF7FFED0(v2);
  }
}

void sub_1DF801FFC(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF8022F4;
  v5 = &unk_1F5AC65F8;
  v1 = a1[7];
  v6 = a1[6];
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[5];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF8020A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1DF7FFED0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF8020C0(os_unfair_lock_s *a1)
{
  if (!*&a1->_os_unfair_lock_opaque)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v2 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_DEBUG, "Creating connection", buf, 2u);
    }

    os_unfair_lock_lock(a1 + 25);
    operator new();
  }
}

void CLConnection::initializeConnection_nl(dispatch_queue_t *this)
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  v2 = this[1];
  if (v2)
  {
    dispatch_retain(v2);
    xpc_connection_set_context(*this, this);
    xpc_connection_set_finalizer_f(*this, CLConnection::connectionFinalizer);
    v10[4] = this;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1DF800A34;
    v11[3] = &unk_1E86C8428;
    v11[4] = this;
    v9[4] = this;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1DF80A26C;
    v10[3] = &unk_1E86C83E0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1DF8051A4;
    v9[3] = &unk_1E86C83E0;
    v3 = *this;
    v4 = this[10];
    v5 = this[11];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v14 = 1;
    handler = MEMORY[0x1E69E9820];
    *handler_8 = 3321888768;
    *&handler_8[8] = sub_1DF800460;
    *&handler_8[16] = &unk_1F5AC64C8;
    *&handler_8[24] = v10;
    v17 = v9;
    v19 = v13;
    v20 = v4;
    v21 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = v11;
    xpc_connection_set_event_handler(v3, &handler);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1DF813B94;
    aBlock[3] = &unk_1E86C8450;
    aBlock[4] = v13;
    this[8] = _Block_copy(aBlock);
    if (v21)
    {
      sub_1DF7FFED0(v21);
    }

    _Block_object_dispose(v13, 8);
    if (v5)
    {
      sub_1DF7FFED0(v5);
    }

    dispatch_assert_queue_V2(this[1]);
    xpc_connection_get_audit_token();
    operator new();
  }

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v6 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
  {
    handler = 68289539;
    *handler_8 = 2082;
    *&handler_8[2] = &unk_1DF8255EF;
    *&handler_8[10] = 2082;
    *&handler_8[12] = "assert";
    *&handler_8[20] = 2081;
    *&handler_8[22] = "fEventQueue";
    _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:CLConnections must always have event queues, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &handler, 0x26u);
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }
  }

  v7 = qword_1ED5FAD60;
  if (os_signpost_enabled(qword_1ED5FAD60))
  {
    handler = 68289539;
    *handler_8 = 2082;
    *&handler_8[2] = &unk_1DF8255EF;
    *&handler_8[10] = 2082;
    *&handler_8[12] = "assert";
    *&handler_8[20] = 2081;
    *&handler_8[22] = "fEventQueue";
    _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CLConnections must always have event queues", "{msg%{public}.0s:CLConnections must always have event queues, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &handler, 0x26u);
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }
  }

  v8 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
  {
    handler = 68289539;
    *handler_8 = 2082;
    *&handler_8[2] = &unk_1DF8255EF;
    *&handler_8[10] = 2082;
    *&handler_8[12] = "assert";
    *&handler_8[20] = 2081;
    *&handler_8[22] = "fEventQueue";
    _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:CLConnections must always have event queues, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &handler, 0x26u);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/IPC/CLConnection.mm", 358, "initializeConnection_nl");
  __break(1u);
}

void sub_1DF8027FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  v35 = *(v33 - 120);
  if (v35)
  {
    sub_1DF7FFED0(v35);
  }

  _Block_object_dispose(va, 8);
  if (v32)
  {
    sub_1DF7FFED0(v32);
  }

  _Unwind_Resume(a1);
}

void CLConnection::CLConnection(uint64_t a1, const char *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(a1 + 24) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  *a1 = xpc_connection_create_mach_service(a2, *(a1 + 8), 0);
  CLConnection::initializeConnection_nl(a1);
}

void sub_1DF8028CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  v3 = *(v1 + 88);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DF8028F4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 72);
  *(result + 64) = *(a2 + 64);
  *(result + 72) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF802910(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1DF7FE000, "CL: Sending cached messages to daemon", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &state);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
  }

  v3 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289282;
    *v16 = 2082;
    *&v16[2] = &unk_1DF8255EF;
    *&v16[10] = 2082;
    *&v16[12] = "activity";
    _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Sending cached messages to daemon, event:%{public, location:escape_only}s}", &buf, 0x1Cu);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = *(a1 + 48);
  for (i = *(a1 + 56); v4 != i; v4 += 24)
  {
    sub_1DF80A3B0(&buf, v4);
    sub_1DF80A3B0(&v9, &buf);
    dispatch_assert_queue_V2(*(a1 + 8));
    v6 = *a1;
    if (*a1)
    {
      v7 = v11;
      if (v11)
      {
        v13 = v9;
        v14 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          v7 = v11;
        }

        CLConnection::sendMessage(v6, &v13, v7);
        v8 = v14;
      }

      else
      {
        v8 = v10;
        v13 = v9;
        v14 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        CLConnection::sendMessage(v6, &v13);
      }

      if (v8)
      {
        sub_1DF7FFED0(v8);
      }
    }

    if (v10)
    {
      sub_1DF7FFED0(v10);
    }

    if (*v16)
    {
      sub_1DF7FFED0(*v16);
    }
  }

  os_activity_scope_leave(&state);
}

void CLConnectionClient::CLConnectionClient(void *a1, void **a2, NSObject *a3)
{
  *a1 = a3;
  a1[1] = &unk_1F5AC62A8;
  operator new();
}

void sub_1DF802E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  sub_1DF807D4C(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v17);
  sub_1DF807A90(v15);
}

void *sub_1DF802ED0(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_1DF80C81C();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

void CLConnectionClient::createConnection(CLConnectionClient *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v4);
  }

  v6 = *this;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = sub_1DF801FFC;
  v7[3] = &unk_1F5AC6628;
  v7[4] = v5;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v7);
  if (v10)
  {
    sub_1DF7FFED0(v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v2)
  {
    sub_1DF7FFED0(v2);
  }
}

void *sub_1DF803090(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

char *CLConnectionMessage::CLConnectionMessage(char *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1DF802ED0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 3) = 0;
  __dst[32] = 0;
  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 7) = CLConnectionMessage::createXPCObject(a3);
  return __dst;
}

void sub_1DF80313C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t CLConnectionMessage::createXPCObject(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v4 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v3, v1, 1, 0);
    v1 = v4;
    if (v4)
    {
      v7 = objc_msgSend_bytes(v4, v5, v6);
      v10 = objc_msgSend_length(v1, v8, v9);
      v1 = xpc_data_create(v7, v10);
    }

    objc_autoreleasePoolPop(v2);
  }

  return v1;
}

void CLConnectionClient::setDefaultMessageHandler(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v6);
  }

  if (a2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3321888768;
    v14[2] = sub_1DF800F60;
    v14[3] = &unk_1F5AC6698;
    v16 = v7;
    v17 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v15 = a2;
      std::__shared_weak_count::__release_weak(v6);
    }

    else
    {
      v15 = a2;
    }

    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = sub_1DF80365C;
  v10[3] = &unk_1F5AC6778;
  v10[5] = v7;
  v11 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v5;
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10[4] = v8;
  dispatch_async(v9, v10);
  if (v13)
  {
    sub_1DF7FFED0(v13);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v4)
  {
    sub_1DF7FFED0(v4);
  }
}

os_log_t sub_1DF80341C()
{
  result = os_log_create("com.apple.LocationSupport", "Connection");
  qword_1ED5FAD60 = result;
  return result;
}

os_log_t sub_1DF80344C()
{
  result = os_log_create("com.apple.LocationSupport", "Connection");
  qword_1ED5FAD60 = result;
  return result;
}

os_log_t sub_1DF80347C()
{
  result = os_log_create("com.apple.LocationSupport", "Connection");
  qword_1ED5FAD60 = result;
  return result;
}

void sub_1DF8034AC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1DF8034FC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1DF80354C(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF80395C;
  v5 = &unk_1F5AC66D0;
  v1 = *(a1 + 72);
  v7 = *(a1 + 64);
  v8 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  v2 = *(a1 + 56);
  if (v2 && *(v2 + 8) != -1)
  {
    (v4)(v3);
  }

  if (v8)
  {
    sub_1DF7FFED0(v8);
  }
}

void sub_1DF803600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void *CLConnection::setDefaultMessageHandler(uint64_t a1, const void *a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = *(a1 + 56);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(a2);
  *(a1 + 56) = result;
  return result;
}

void sub_1DF80365C(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF803728;
  v5 = &unk_1F5AC6740;
  v1 = a1[8];
  v7 = a1[7];
  v8 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[4];
  v2 = a1[6];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v8)
  {
    sub_1DF7FFED0(v8);
  }
}

void sub_1DF803710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF803728(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2[3];
  v2[3] = _Block_copy(v1);
  if (*v2)
  {
    CLConnection::setDefaultMessageHandler(*v2, v1);
  }

  if (v3)
  {

    _Block_release(v3);
  }
}

void *CLConnection::setInterruptionHandler(uint64_t a1, const void *a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = *(a1 + 48);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(a2);
  *(a1 + 48) = result;
  return result;
}

void *CLConnection::setDisconnectionHandler(uint64_t a1, const void *a2)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = *(a1 + 40);
  if (v4)
  {
    _Block_release(v4);
  }

  result = _Block_copy(a2);
  *(a1 + 40) = result;
  return result;
}

void sub_1DF803820(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF8038EC;
  v5 = &unk_1F5AC6740;
  v1 = a1[8];
  v7 = a1[7];
  v8 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[4];
  v2 = a1[6];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v8)
  {
    sub_1DF7FFED0(v8);
  }
}

void sub_1DF8038D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DF8038EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  *(v2 + 32) = _Block_copy(v1);
  if (v3)
  {
    _Block_release(v3);
  }

  result = *v2;
  if (*v2)
  {

    return CLConnection::setInterruptionHandler(result, v1);
  }

  return result;
}

void *sub_1DF80395C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  if (v3)
  {
    v6 = objc_msgSend_copy(*(a1 + 40), a2, a3);
    objc_msgSend_setObject_forKeyedSubscript_(v4[2], v7, v6, v5);
    result = *v4;
    if (*v4)
    {

      return CLConnection::setHandlerForMessage(result, v5, v3);
    }
  }

  else
  {
    v9 = v4[2];

    return objc_msgSend_removeObjectForKey_(v9, a2, v5);
  }

  return result;
}

void sub_1DF803A00(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF803E10;
  v5 = &unk_1F5AC65F8;
  v1 = a1[7];
  v6 = a1[6];
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[5];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF803AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1DF7FFED0(a14);
  }

  _Unwind_Resume(exception_object);
}

void *CLConnection::setHandlerForMessage(uint64_t a1, uint64_t a2, void *a3)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  result = objc_msgSend_removeObjectForKey_(*(a1 + 16), v6, a2);
  if (a3)
  {
    v11 = objc_msgSend_copy(a3, v8, v9);
    v12 = *(a1 + 16);

    return objc_msgSend_setObject_forKeyedSubscript_(v12, v10, v11, a2);
  }

  return result;
}

void sub_1DF803B44(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void CLConnection::start(dispatch_queue_t *this)
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  if ((this[9] & 1) == 0)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v2 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call start() on an unpaused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v3 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "fPaused";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call start() on an unpaused CLConnection.", "{msg%{public}.0s:Cannot call start() on an unpaused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v4 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call start() on an unpaused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/IPC/CLConnection.mm", 653, "start");
  }

  xpc_connection_resume(*this);
  *(this + 72) = 0;
}

void sub_1DF803E10(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 8));
  if ((*(v1 + 97) & 1) == 0)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v3 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call start() on an unpaused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
      }
    }

    v4 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "fPaused";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call start() on an unpaused CLConnectionClient", "{msg%{public}.0s:Cannot call start() on an unpaused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
      }
    }

    v5 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call start() on an unpaused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/IPC/CLConnectionClient.mm", 84, "start");
  }

  *(v1 + 97) = 0;
  v2 = *v1;
  if (*v1)
  {

    CLConnection::start(v2);
  }
}

void sub_1DF8040D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a1 + 64);
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v4 = *(a1 + 64);
  }

  v8[0] = v3;
  v8[1] = &v2->__vftable;
  sub_1DF80443C(v1, v8, v4 & 1, 0);
  if (v2)
  {
    sub_1DF7FFED0(v2);
    v5 = *v1;
    if (!*v1)
    {
      goto LABEL_11;
    }

    v6 = v3;
    v7 = v2;
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = *v1;
    if (!*v1)
    {
      return;
    }

    v6 = v3;
    v7 = 0;
  }

  CLConnection::sendMessage(v5, &v6);
  if (!v2)
  {
    return;
  }

  sub_1DF7FFED0(v2);
LABEL_11:

  sub_1DF7FFED0(v2);
}

void sub_1DF8041AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionClient::sendMessage(uint64_t a1, uint64_t *a2, char a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnectionClient::sendMessage(cache)", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
  }

  v7 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v20 = 0;
    v21 = 2082;
    v22 = &unk_1DF8255EF;
    v23 = 2082;
    v24 = "activity";
    _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLConnectionClient::sendMessage(cache), event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v10);
  }

  v11 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_1DF8040D0;
  block[3] = &unk_1F5AC67A8;
  block[4] = v9;
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a2[1];
  v15 = *a2;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a3;
  dispatch_async(v11, block);
  if (v16)
  {
    sub_1DF7FFED0(v16);
  }

  if (v14)
  {
    sub_1DF7FFED0(v14);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v8)
  {
    sub_1DF7FFED0(v8);
  }

  os_activity_scope_leave(&state);
}

void *sub_1DF804408(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF80443C(uint64_t a1, void **a2, int a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(*(a1 + 8));
  if (*a1)
  {
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    if (v11 == v10)
    {
LABEL_17:
      if (!a3)
      {
        return;
      }

      goto LABEL_34;
    }

    v12 = *a2;
    v13 = *(*a2 + 23);
    if (v13 >= 0)
    {
      v14 = *(*a2 + 23);
    }

    else
    {
      v14 = (*a2)[1];
    }

    while (1)
    {
      v15 = *(*v11 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(*v11 + 8);
      }

      if (v15 == v14)
      {
        v17 = v16 >= 0 ? *v11 : **v11;
        v18 = v13 >= 0 ? v12 : *v12;
        if (!memcmp(v17, v18, v14))
        {
          break;
        }
      }

      v11 += 24;
      if (v11 == v10)
      {
        goto LABEL_17;
      }
    }

    v24 = (v11 + 24);
    if (v11 + 24 != v10)
    {
      do
      {
        v25 = *v24;
        *v24 = 0;
        *(v24 + 1) = 0;
        v26 = *(v24 - 2);
        *(v24 - 24) = v25;
        if (v26)
        {
          sub_1DF7FFED0(v26);
        }

        v27 = *(v24 - 1);
        *(v24 - 1) = *(v24 + 2);
        *(v24 + 2) = 0;

        v24 = (v24 + 24);
      }

      while (v24 != v10);
      v10 = *(a1 + 56);
      v11 = v24 - 24;
    }

    while (v10 != v11)
    {
      v10 -= 24;
      sub_1DF804D4C(v10);
    }

    *(a1 + 56) = v11;
    if (a3)
    {
LABEL_34:
      v28 = *a2;
      if ((*a2)[6])
      {
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
        }

        v29 = qword_1ED5FAD60;
        if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
        {
          v30 = *a2;
          if (*(*a2 + 23) < 0)
          {
            v30 = **a2;
          }

          *v39 = 68289282;
          *&v39[8] = 2082;
          *&v39[10] = &unk_1DF8255EF;
          *&v39[18] = 2082;
          *&v39[20] = v30;
          _os_log_impl(&dword_1DF7FE000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Trying to cache a reply message, messageName:%{public, location:escape_only}s}", v39, 0x1Cu);
          if (qword_1ED5FAD68 != -1)
          {
            dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
          }
        }

        v31 = qword_1ED5FAD60;
        if (os_signpost_enabled(qword_1ED5FAD60))
        {
          v32 = *a2;
          if (*(*a2 + 23) < 0)
          {
            v32 = **a2;
          }

          *v39 = 68289282;
          *&v39[8] = 2082;
          *&v39[10] = &unk_1DF8255EF;
          *&v39[18] = 2082;
          *&v39[20] = v32;
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Trying to cache a reply message", "{msg%{public}.0s:Trying to cache a reply message, messageName:%{public, location:escape_only}s}", v39, 0x1Cu);
        }
      }

      else if (a4)
      {
        v33 = objc_msgSend_copy(a4, v8, v9);
        v34 = v33;
        v35 = a2[1];
        *v39 = *a2;
        *&v39[8] = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(v35 + 1, 1uLL, memory_order_relaxed);
        }

        *&v39[16] = v33;
        sub_1DF804950((a1 + 48), v39);

        if (*&v39[8])
        {
          sub_1DF7FFED0(*&v39[8]);
        }
      }

      else
      {
        v38 = a2[1];
        if (v38)
        {
          atomic_fetch_add_explicit(v38 + 1, 1uLL, memory_order_relaxed);
        }

        *v39 = v28;
        *&v39[8] = v38;
        *&v39[16] = 0;
        sub_1DF804950((a1 + 48), v39);

        if (*&v39[8])
        {
          sub_1DF7FFED0(*&v39[8]);
        }
      }

      return;
    }

    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v36 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *a2;
      if (*(*a2 + 23) < 0)
      {
        v37 = **a2;
      }

      *v39 = 136446210;
      *&v39[4] = v37;
      v21 = "#Warning Sending an un-cached message '%{public}s' without first clearing the previously cached value";
      v22 = v36;
      v23 = 12;
LABEL_25:
      _os_log_impl(&dword_1DF7FE000, v22, OS_LOG_TYPE_DEFAULT, v21, v39, v23);
    }
  }

  else
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v19 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *a2;
      if (*(*a2 + 23) < 0)
      {
        v20 = **a2;
      }

      *v39 = 68289282;
      *&v39[8] = 2082;
      *&v39[10] = &unk_1DF8255EF;
      *&v39[18] = 2082;
      *&v39[20] = v20;
      v21 = "{msg%{public}.0s:No connection fConnection, messageName:%{public, location:escape_only}s}";
      v22 = v19;
      v23 = 28;
      goto LABEL_25;
    }
  }
}

void sub_1DF8048D4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_1DF80AEC0(exception_object);
}

uint64_t *sub_1DF804950(uint64_t *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1DF817524();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v27 = result;
    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1DF80C8C4();
    }

    v10 = *a2;
    v11 = 24 * v6;
    *a2 = 0uLL;
    v12 = *result;
    v13 = result[1];
    v14 = v13 - *result;
    v23 = 0;
    v24 = v11;
    v15 = 0;
    *v11 = v10;
    *(v11 + 16) = *(a2 + 2);
    *(a2 + 2) = 0;
    v5 = 24 * v6 + 24;
    v25 = v5;
    v26 = 0;
    if (v13 != v12)
    {
      v16 = 0;
      v22 = v14;
      v17 = 24 * v6 - 8 * ((v13 - v12) >> 3);
      do
      {
        v18 = v12 + v16;
        v19 = (v17 + v16);
        v20 = *(v12 + v16 + 8);
        *v19 = *(v12 + v16);
        v19[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
        }

        v19[2] = 0;
        v19[2] = *(v18 + 16);
        v16 += 24;
      }

      while (v18 + 24 != v13);
      do
      {
        sub_1DF804D4C(v12);
        v12 += 24;
      }

      while (v12 != v13);
      v12 = *v2;
      v5 = v25;
      v15 = v26;
      v14 = v22;
    }

    *v2 = v11 - v14;
    v2[1] = v5;
    v21 = v2[2];
    v2[2] = v15;
    v25 = v12;
    v26 = v21;
    v23 = v12;
    v24 = v12;
    result = sub_1DF804BA4(&v23);
  }

  else
  {
    *v3 = *a2;
    *a2 = 0uLL;
    *(v3 + 16) = 0;
    *(v3 + 16) = *(a2 + 2);
    *(a2 + 2) = 0;
    v5 = v3 + 24;
  }

  v2[1] = v5;
  return result;
}

uint64_t sub_1DF804BA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_1DF804D4C(i - 24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1DF804D4C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_1DF7FFED0(v2);
  }
}

void sub_1DF804DC4()
{
  v0 = dispatch_queue_create("CLServiceVendorQueue", MEMORY[0x1E69E96A8]);
  v1 = qword_1ED5FADA0;
  qword_1ED5FADA0 = v0;

  v4 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3);
  v5 = qword_1ED5FADA8;
  qword_1ED5FADA8 = v4;

  v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED5FADA0);
  v7 = qword_1ED5FADB0;
  qword_1ED5FADB0 = v6;

  dispatch_source_set_timer(qword_1ED5FADB0, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_source_set_event_handler(qword_1ED5FADB0, &unk_1F5AC6B28);
  if (*&qword_1ED5FAD58 > 0.0)
  {
    dispatch_resume(qword_1ED5FADB0);
  }

  v8 = objc_opt_class();

  sub_1DF804EAC(v8, @"_CLMainService");
}

void sub_1DF804EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1ED5FADA0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1DF8072CC;
  v6[3] = &unk_1E86C8610;
  v7 = v3;
  v8 = a1;
  v5 = v3;
  dispatch_barrier_async(v4, v6);
}

uint64_t sub_1DF804F48()
{
  qword_1ED5FADC8 = objc_alloc_init(CLServiceVendor);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF804F84(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    sub_1DF7FFED0(v3);
  }
}

uint64_t CLConnection::resetAllHandlers(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[1]);
  v4 = this[5];
  if (v4)
  {
    _Block_release(v4);
    this[5] = 0;
  }

  v5 = this[6];
  if (v5)
  {
    _Block_release(v5);
    this[6] = 0;
  }

  v6 = this[7];
  if (v6)
  {
    _Block_release(v6);
    this[7] = 0;
  }

  v7 = this[2];

  return objc_msgSend_removeAllObjects(v7, v2, v3);
}

void CLConnection::handleDisconnection(dispatch_queue_t *this)
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  v2 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnection::handleDisconnection", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v6);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v3 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = &unk_1DF8255EF;
    v11 = 2082;
    v12 = "activity";
    _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLConnection::handleDisconnection, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  CLConnection::resetReplyHandlers(this, v4);
  v5 = this[5];
  if (v5)
  {
    (v5[2].isa)();
  }

  os_activity_scope_leave(&v6);
}

uint64_t CLConnection::resetReplyHandlers(CLConnection *this, const char *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *(this + 3);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v13, v17, 16);
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = objc_msgSend_objectForKeyedSubscript_(*(this + 3), v4, *(*(&v13 + 1) + 8 * i));
        v11 = 0;
        v12 = 0;
        (*(v9 + 16))(v9, &v11);
        if (v12)
        {
          sub_1DF7FFED0(v12);
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v13, v17, 16);
    }

    while (v6);
  }

  return objc_msgSend_removeAllObjects(*(this + 3), v4, v5);
}

void sub_1DF8052C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF8052E0(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  if (*a1)
  {
    os_unfair_lock_lock((a1 + 100));
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v2 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_DEBUG, "Invalidating connection", v4, 2u);
    }

    v3 = *a1;
    *a1 = 0;
    os_unfair_lock_unlock((a1 + 100));
    CLConnection::deferredDelete(v3);
  }
}

void CLConnection::deferredDelete(CLConnection *this)
{
  dispatch_assert_queue_V2(*(this + 1));
  if (*(this + 72) == 1)
  {
    CLConnection::start(this);
  }

  CLConnection::resetAllHandlers(this);
  v2 = *(this + 8);
  if (v2)
  {
    (*(v2 + 16))();
    _Block_release(*(this + 8));
    *(this + 8) = 0;
  }

  v3 = *this;
  if (*this)
  {
    barrier[0] = MEMORY[0x1E69E9820];
    barrier[1] = 3221225472;
    barrier[2] = sub_1DF80547C;
    barrier[3] = &unk_1E86C83E0;
    barrier[4] = this;
    xpc_connection_send_barrier(v3, barrier);
  }
}

void sub_1DF80546C(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

void sub_1DF80547C(uint64_t a1)
{
  v1 = *(a1 + 32);
  xpc_connection_cancel(*v1);
  xpc_release(*v1);
  *v1 = 0;
}

void CLConnection::~CLConnection(CLConnection *this)
{
  v20 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v4 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fConnection";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:deferredDelete() should have nulled out connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v5 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fConnection";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "deferredDelete() should have nulled out connection", "{msg%{public}.0s:deferredDelete() should have nulled out connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v6 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fConnection";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:deferredDelete() should have nulled out connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v7 = 335;
LABEL_30:
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/IPC/CLConnection.mm", v7, "~CLConnection");
    __break(1u);
  }

  if (*(this + 8))
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v8 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fDestructionHandler";
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:deferredDelete() should have nulled out handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v9 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fDestructionHandler";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "deferredDelete() should have nulled out handler", "{msg%{public}.0s:deferredDelete() should have nulled out handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v10 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v13 = 0;
      v14 = 2082;
      v15 = &unk_1DF8255EF;
      v16 = 2082;
      v17 = "assert";
      v18 = 2081;
      v19 = "__null == fDestructionHandler";
      _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:deferredDelete() should have nulled out handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v7 = 336;
    goto LABEL_30;
  }

  v2 = *(this + 1);
  *(this + 1) = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF805A08;
  block[3] = &unk_1E86C8408;
  block[4] = v2;
  dispatch_async(v2, block);

  *(this + 3) = 0;
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v3 = *(this + 11);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }
}

void sub_1DF8059BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1DF80AEC0(a1);
}

CLConnection *CLConnection::connectionFinalizer(CLConnection *this, void *a2)
{
  if (this)
  {
    CLConnection::~CLConnection(this);

    JUMPOUT(0x1E12DFAD0);
  }

  return this;
}

void sub_1DF805A10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = objc_autoreleasePoolPush();
  if (a2 != MEMORY[0x1E69E9E20])
  {
    CLConnectionServer::handleEvent(v3, a2);
  }

  objc_autoreleasePoolPop(v4);
}

void CLConnectionServer::handleEvent(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E12E05B0](a2);
  if (v4 == MEMORY[0x1E69E9E68])
  {

    CLConnectionServer::handleConnection(a1, a2);
  }

  v5 = v4;
  if (v4 == MEMORY[0x1E69E9E98])
  {
    string = xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC6320);
    }

    v9 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      v12 = 136446210;
      v13 = string;
      v10 = "Got error: %{public}s";
      v11 = v9;
LABEL_41:
      _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_FAULT, v10, &v12, 0xCu);
    }
  }

  else
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC6320);
    }

    v6 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      if (v5 == MEMORY[0x1E69E9ED0])
      {
        v7 = "XPC_TYPE_NULL";
      }

      else if (v5 == MEMORY[0x1E69E9E58])
      {
        v7 = "XPC_TYPE_BOOL";
      }

      else if (v5 == MEMORY[0x1E69E9EB0])
      {
        v7 = "XPC_TYPE_INT64";
      }

      else if (v5 == MEMORY[0x1E69E9F18])
      {
        v7 = "XPC_TYPE_UINT64";
      }

      else if (v5 == MEMORY[0x1E69E9E88])
      {
        v7 = "XPC_TYPE_DOUBLE";
      }

      else if (v5 == MEMORY[0x1E69E9E78])
      {
        v7 = "XPC_TYPE_DATE";
      }

      else if (v5 == MEMORY[0x1E69E9E70])
      {
        v7 = "XPC_TYPE_DATA";
      }

      else if (v5 == MEMORY[0x1E69E9F10])
      {
        v7 = "XPC_TYPE_STRING";
      }

      else if (v5 == MEMORY[0x1E69E9F20])
      {
        v7 = "XPC_TYPE_UUID";
      }

      else if (v5 == MEMORY[0x1E69E9EA0])
      {
        v7 = "XPC_TYPE_FD";
      }

      else if (v5 == MEMORY[0x1E69E9F08])
      {
        v7 = "XPC_TYPE_SHMEM";
      }

      else if (v5 == MEMORY[0x1E69E9E50])
      {
        v7 = "XPC_TYPE_ARRAY";
      }

      else if (v5 == MEMORY[0x1E69E9E80])
      {
        v7 = "XPC_TYPE_DICTIONARY";
      }

      else
      {
        v7 = "Unknown type";
      }

      v12 = 136446210;
      v13 = v7;
      v10 = "Unexpected event type %{public}s";
      v11 = v6;
      goto LABEL_41;
    }
  }
}

void sub_1DF805F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  _Unwind_Resume(exception_object);
}

void CLConnection::CLConnection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(a1 + 24) = objc_alloc_init(MEMORY[0x1E695DF90]);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 72) = 257;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  xpc_retain(*a1);
  xpc_connection_set_target_queue(*a1, *(a1 + 8));
  CLConnection::initializeConnection_nl(a1);
}

void sub_1DF805FC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  v3 = *(v1 + 88);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DF805FEC()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  result = objc_msgSend_initWithObjects_(v0, v7, v1, v2, v3, v4, v5, v6, 0);
  qword_1ED5FAE70 = result;
  return result;
}

void sub_1DF8060AC(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v7 = sub_1DF80617C;
  v8 = &unk_1F5AC6238;
  v3 = a1[7];
  v9 = v2;
  v10 = v3;
  v4 = a2[1];
  v11 = *a2;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a1[6];
  if (v5 && *(v5 + 8) != -1)
  {
    v7(v6);
  }

  if (v12)
  {
    sub_1DF7FFED0(v12);
  }
}

void sub_1DF806164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF80617C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5[0] = a1[6];
  v5[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLConnectionServer::handleMessage(v2, v3, v5);
  if (v4)
  {

    sub_1DF7FFED0(v4);
  }
}

void sub_1DF8061F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionServer::handleMessage(uint64_t a1, dispatch_queue_t *this, uint64_t *a3)
{
  if (this)
  {
    CLConnection::pause(this);
    CLConnection::resetAllHandlers(this);
    v6 = *(a1 + 16);
    v7 = a3[1];
    v9 = *a3;
    v10 = v7;
    v11 = this;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(v6 + 16))(v6, &v11, &v9);
    if (v10)
    {
      sub_1DF7FFED0(v10);
    }

    v8 = v11;
    v11 = 0;
    if (v8)
    {
      CLConnection::deferredDelete(v8);
    }
  }
}

void sub_1DF8062AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_1DF7FFED0(a7);
  }

  sub_1DF80AFD0(va);
  _Unwind_Resume(a1);
}

uint64_t CLConnectionMessage::getDictionary(CLConnectionMessage *this)
{
  if (qword_1ED5FAE78 != -1)
  {
    dispatch_once(&qword_1ED5FAE78, &unk_1F5AC6548);
  }

  v2 = qword_1ED5FAE70;

  return CLConnectionMessage::getObjectOfClasses(this, v2);
}

void CLConnection::pause(dispatch_queue_t *this)
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  if (*(this + 72) == 1)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v2 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "!fPaused";
      _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call pause() on a paused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v3 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "!fPaused";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call pause() on a paused CLConnection.", "{msg%{public}.0s:Cannot call pause() on a paused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v4 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v6 = 0;
      v7 = 2082;
      v8 = &unk_1DF8255EF;
      v9 = 2082;
      v10 = "assert";
      v11 = 2081;
      v12 = "!fPaused";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call pause() on a paused CLConnection., event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/IPC/CLConnection.mm", 660, "pause");
  }

  xpc_connection_suspend(*this);
  *(this + 72) = 1;
}

void sub_1DF8065B4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t CLConnection::getAuditToken(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[1]);

  return xpc_connection_get_audit_token();
}

uint64_t CLConnectionEntitlementCache::isEntitled(uint64_t **a1, void **a2)
{
  v38 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a1 + 14);
  v6 = a1 + 1;
  v5 = a1[1];
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = a1 + 1;
  do
  {
    v8 = sub_1DF806D9C(v5 + 4, a2);
    if ((v8 & 0x80u) == 0)
    {
      v7 = v5;
    }

    v5 = *(v5 + ((v8 >> 4) & 8));
  }

  while (v5);
  if (v7 == v6 || (sub_1DF806D9C(a2, v7 + 4) & 0x80) != 0)
  {
LABEL_9:
    if (*(a2 + 23) >= 0)
    {
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, a2);
    }

    else
    {
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, *a2);
    }

    v11 = v10;
    if (v10)
    {
      error = 0;
      v12 = *MEMORY[0x1E695E480];
      v13 = *(a1 + 5);
      *token.val = *(a1 + 3);
      *&token.val[4] = v13;
      v14 = SecTaskCreateWithAuditToken(v12, &token);
      v15 = v14;
      if (v14)
      {
        v16 = SecTaskCopyValueForEntitlement(v14, v11, &error);
        v17 = error;
        if (error)
        {
          if (qword_1ED5FAD68 != -1)
          {
            dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
          }

          v18 = qword_1ED5FAD60;
          if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
          {
            sub_1DF81265C(&__p, (a1 + 3));
            v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            Domain = CFErrorGetDomain(error);
            Code = CFErrorGetCode(error);
            token.val[0] = 136315650;
            *&token.val[1] = v19;
            LOWORD(token.val[3]) = 2112;
            *(&token.val[3] + 2) = Domain;
            HIWORD(token.val[5]) = 2048;
            *&token.val[6] = Code;
            _os_log_impl(&dword_1DF7FE000, v18, OS_LOG_TYPE_DEFAULT, "#Warning SecTaskCopyValueForEntitlement failed for token '%s' with error '%@' (%ld)", &token, 0x20u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          CFRelease(error);
        }

        if (v16)
        {
          v22 = CFGetTypeID(v16);
          v9 = v22 == CFBooleanGetTypeID() && CFBooleanGetValue(v16) != 0;
          CFRelease(v16);
        }

        else
        {
          v9 = 0;
        }

        if (v17)
        {
          if (qword_1ED5FAD68 != -1)
          {
            dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
          }

          v26 = qword_1ED5FAD60;
          if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a2 + 23);
            v28 = *a2;
            v29 = *(a1 + 11);
            sub_1DF806E1C(&__p);
            if (v27 >= 0)
            {
              v30 = a2;
            }

            else
            {
              v30 = v28;
            }

            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            token.val[0] = 136315650;
            *&token.val[1] = v30;
            LOWORD(token.val[3]) = 1024;
            *(&token.val[3] + 2) = v29;
            HIWORD(token.val[4]) = 2080;
            *&token.val[5] = p_p;
            _os_log_impl(&dword_1DF7FE000, v26, OS_LOG_TYPE_DEFAULT, "#Warning Issue retrieving entitlement, '%s', pid, %d, executable or bundle, '%s'", &token, 0x1Cu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }

        CFRelease(v15);
      }

      else
      {
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
        }

        v24 = qword_1ED5FAD60;
        v9 = 0;
        if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
        {
          sub_1DF81265C(&token, (a1 + 3));
          if ((token.val[5] & 0x80000000) == 0)
          {
            p_token = &token;
          }

          else
          {
            p_token = *token.val;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
          *(__p.__r_.__value_.__r.__words + 4) = p_token;
          _os_log_impl(&dword_1DF7FE000, v24, OS_LOG_TYPE_DEFAULT, "#Warning SecTaskCreateWithAuditToken failed for token '%s'", &__p, 0xCu);
          if (SHIBYTE(token.val[5]) < 0)
          {
            operator delete(*token.val);
          }

          v9 = 0;
        }
      }

      v32 = *v6;
      if (!*v6)
      {
LABEL_65:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v33 = v32;
          if ((sub_1DF806D9C(a2, v32 + 4) & 0x80) == 0)
          {
            break;
          }

          v32 = *v33;
          if (!*v33)
          {
            goto LABEL_65;
          }
        }

        if ((sub_1DF806D9C(v33 + 4, a2) & 0x80) == 0)
        {
          break;
        }

        v32 = v33[1];
        if (!v32)
        {
          goto LABEL_65;
        }
      }

      *(v33 + 56) = v9;
    }

    else
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v23 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        LOWORD(token.val[0]) = 0;
        _os_log_impl(&dword_1DF7FE000, v23, OS_LOG_TYPE_FAULT, "Couldn't get CFString for entitlement", &token, 2u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = *(v7 + 56);
  }

  os_unfair_lock_unlock(a1 + 14);
  return v9 & 1;
}

uint64_t CLConnection::getUniqueRemotePid(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[1]);
  if (MEMORY[0x1EEE83EC8])
  {
    dispatch_assert_queue_V2(this[1]);
    xpc_connection_get_audit_token();
    return BSVersionedPIDForAuditToken();
  }

  else
  {
    dispatch_assert_queue_V2(this[1]);
    return xpc_connection_get_pid(*this);
  }
}

uint64_t sub_1DF806D9C(void *a1, void *a2)
{
  v2 = a1[1];
  if (*(a1 + 23) >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    a1 = *a1;
    v3 = v2;
  }

  v4 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  if (v5 >= v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  v7 = memcmp(a1, a2, v6);
  if (v7)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (v3 == v5)
    {
      return 0;
    }

    if (v3 >= v5)
    {
      return 1;
    }
  }

  return 255;
}

void sub_1DF806E1C(std::string *a1)
{
  memset(&v14, 0, sizeof(v14));
  sub_1DF806FBC();
  v2 = *MEMORY[0x1E695E480];
  if (v16 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], p_p, 0x8000100u);
  if (v4)
  {
    v5 = CFURLCreateWithFileSystemPath(v2, v4, kCFURLPOSIXPathStyle, 0);
    if (v5)
    {
      v6 = _CFBundleCopyBundleURLForExecutableURL();
      if (v6)
      {
        v7 = CFBundleCreate(v2, v6);
        v8 = v7;
        if (v7)
        {
          Identifier = CFBundleGetIdentifier(v7);
          if (Identifier)
          {
            v12 = objc_msgSend_UTF8String(Identifier, v10, v11);
            sub_1DF800930(&v14, v12);
          }

          CFRelease(v8);
        }

        CFRelease(v6);
      }

      CFRelease(v5);
    }

    CFRelease(v4);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v14.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *a1 = v14;
  }

  else
  {
    sub_1DF806FBC();
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DF806F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1DF806FBC()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v4 = *MEMORY[0x1E69E9840];
  v0->__r_.__value_.__r.__words[0] = 0;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  result = proc_pidpath_audittoken(v1, buffer, 0x1000u);
  if (result >= 1)
  {
    return sub_1DF800930(v0, buffer);
  }

  return result;
}

void sub_1DF807064(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DF807138(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_1ED5FADB8 = objc_msgSend_main(CLSilo, a2, a3);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF807178()
{
  v0 = [CLDispatchSilo alloc];
  qword_1ED5FADE0 = objc_msgSend_initMain(v0, v1, v2);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF8072CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED5FADA8;
  v5 = objc_msgSend_getSilo(*(a1 + 40), a2, a3);
  v7 = objc_msgSend_objectForKey_(v4, v6, v5);

  if (v7)
  {
    v10 = objc_msgSend_residentCount(v7, v8, v9);
    objc_msgSend_setResidentCount_(v7, v11, (v10 + 1));
  }

  else
  {
    v12 = [CLSiloHeartbeatRecord alloc];
    inited = objc_msgSend_initTrackingServiceClass_name_(v12, v13, *(a1 + 40), *(a1 + 32));

    v15 = qword_1ED5FADA8;
    v18 = objc_msgSend_silo(inited, v16, v17);
    objc_msgSend_setObject_forKey_(v15, v19, inited, v18);

    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v20 = qword_1ED5FAD48;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = objc_msgSend_silo(inited, v21, v22);
      v26 = objc_msgSend_identifier(v23, v24, v25);
      v27[0] = 68289282;
      v27[1] = 0;
      v28 = 2082;
      v29 = &unk_1DF8255EF;
      v30 = 2114;
      v31 = v26;
      _os_log_impl(&dword_1DF7FE000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Heartbeat tracking commenced, silo:%{public, location:escape_only}@}", v27, 0x1Cu);
    }

    v7 = inited;
  }
}

uint64_t sub_1DF8074DC()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

os_log_t sub_1DF807520()
{
  result = os_log_create("com.apple.LocationSupport", "Intersilo");
  qword_1ED5FAD48 = result;
  return result;
}

uint64_t sub_1DF807550()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF807594()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF8075E0(uint64_t a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v6 = sub_1DF8076AC;
  v7 = &unk_1F5AC6660;
  v3 = *a2;
  v2 = a2[1];
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (v10)
  {
    sub_1DF7FFED0(v10);
  }
}

void sub_1DF807694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF8076AC(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = a1[6];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v5);
  if (v6)
  {
    sub_1DF7FFED0(v6);
  }
}

void sub_1DF80770C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionClient::~CLConnectionClient(NSObject **this)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, this[6]);
  v3 = this[6];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF807B88;
  block[3] = &unk_1E86C83E0;
  block[4] = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v4 = this[4];
  v5 = this[5];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *this;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = sub_1DF807C00;
  v10[3] = &unk_1F5AC65F8;
  v10[4] = v4;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v10);
  v7 = *this;
  *this = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1DF807DD4;
  v9[3] = &unk_1E86C8408;
  v9[4] = v7;
  dispatch_async(v7, v9);
  if (v11)
  {
    sub_1DF7FFED0(v11);
  }

  if (v5)
  {
    sub_1DF7FFED0(v5);
  }

  v8 = this[5];
  if (v8)
  {
    sub_1DF7FFED0(v8);
  }

  sub_1DF807A90(this + 1);
}

uint64_t sub_1DF807A74(uint64_t result, uint64_t a2)
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

uint64_t **CLConnectionMessage::isEntitled(uint64_t a1, void **a2)
{
  result = *(a1 + 72);
  if (result)
  {
    return CLConnectionEntitlementCache::isEntitled(result, a2);
  }

  return result;
}

uint64_t sub_1DF807B88(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    dispatch_release(*v1);
    v2 = *(v1 + 32);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      sub_1DF7FFED0(v3);
    }

    JUMPOUT(0x1E12DFAD0);
  }

  return result;
}

void sub_1DF807C00(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 8));
  sub_1DF8052E0(v1);
  v2 = *(v1 + 16);
  if (v2)
  {

    *(v1 + 16) = 0;
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    _Block_release(v3);
    *(v1 + 24) = 0;
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    _Block_release(v4);
    *(v1 + 32) = 0;
  }

  *(v1 + 96) = 0;
}

void sub_1DF807C68(uint64_t a1)
{
  if (*(a1 + 120) == 1)
  {
    __assert_rtn("~CLConnectionClientInternal", "CLConnectionClient.mm", 73, "!fIsValid");
  }

  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1DF807DDC;
  v3[3] = &unk_1E86C8408;
  v3[4] = v2;
  dispatch_async(v2, v3);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v4 = (a1 + 72);
  sub_1DF807D4C(&v4);
}

void sub_1DF807D3C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

void sub_1DF807D4C(void ***a1)
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
        v4 -= 24;
        sub_1DF804D4C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

BOOL sub_1DF807DE4(Class *a1, void *a2, void *a3)
{
  v7 = a3;
  *a1 = 0;
  *a2 = 0;
  Class = *a1;
  if (!*a1)
  {
    v9 = v7;
    v12 = objc_msgSend_UTF8String(v9, v10, v11);
    Class = objc_getClass(v12);
    *a1 = Class;
    if (!Class)
    {
      v13 = objc_msgSend_stringByAppendingString_(v7, v5, @"Adapter");
      v14 = v13;
      v17 = objc_msgSend_UTF8String(v14, v15, v16);
      *a1 = objc_getClass(v17);

      Class = *a1;
      if (!*a1)
      {
        goto LABEL_8;
      }
    }
  }

  if (objc_msgSend_isSupported(Class, v5, v6))
  {
    *a2 = objc_msgSend_getSilo(*a1, v18, v19);
  }

  if (*a1)
  {
    v20 = *a2 != 0;
  }

  else
  {
LABEL_8:
    v20 = 0;
  }

  return v20;
}

uint64_t sub_1DF807EDC()
{
  qword_1ED5FAE18 = objc_alloc_init(CLIntersiloInterface);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF807F18(void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = a2;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v22, v31, 16);
  if (v6)
  {
    v7 = *v23;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (protocol_isEqual(v3, *(*(&v22 + 1) + 8 * i)))
        {

LABEL_21:
          v15 = 1;
          goto LABEL_24;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v9, &v22, v31, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  outCount = 0;
  Name = protocol_getName(v3);
  if (qword_1ED5FAE08 != -1)
  {
    dispatch_once(&qword_1ED5FAE08, &unk_1F5AC6380);
  }

  v11 = qword_1ED5FAE10;
  if (os_log_type_enabled(qword_1ED5FAE10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v27 = 2082;
    v28 = &unk_1DF8255EF;
    v29 = 2082;
    v30 = Name;
    _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#registerSelectorInfosAndValidateProtocolRecursively , protocolName:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  v12 = protocol_copyMethodDescriptionList(v3, 0, 1, &outCount);
  v13 = sub_1DF80821C(v12, outCount, Name);
  free(v12);
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = protocol_copyMethodDescriptionList(v3, 1, 1, &outCount);
  v15 = sub_1DF80821C(v14, outCount, Name);
  free(v14);
  if (v15)
  {
    v16 = protocol_copyProtocolList(v3, &outCount);
    if (outCount)
    {
      v17 = v16;
      v18 = 0;
      while (1)
      {
        v19 = v17[v18];
        if ((sub_1DF807F18(v19, v4) & 1) == 0)
        {
          break;
        }

        if (++v18 >= outCount)
        {
          free(v17);
          goto LABEL_21;
        }
      }

      free(v17);
    }

LABEL_23:
    v15 = 0;
  }

LABEL_24:

  return v15;
}

uint64_t sub_1DF8081D8()
{
  qword_1ED5FAE10 = os_log_create("com.apple.locationd.Core", "Core");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF80821C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v73 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 1;
  }

  v3 = 0;
  v50 = a2;
  while (1)
  {
    v4 = (a1 + 16 * v3);
    v5 = MEMORY[0x1E696AEC0];
    v6 = NSStringFromSelector(*v4);
    v8 = objc_msgSend_stringWithFormat_(v5, v7, @"%s::%@", a3, v6);

    v9 = v4[1];
    v10 = strlen(v9);
    v56 = v8;
    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1DF80C81C();
    }

    v11 = v10;
    v54 = v3;
    v55 = (a1 + 16 * v3);
    if (v10 >= 0x17)
    {
      operator new();
    }

    BYTE3(v68) = v10;
    if (v10)
    {
      memcpy(&__dst, v9, v10);
    }

    v12 = 0;
    v66[v11 - 8] = 0;
    v13 = SBYTE3(v68);
    __p = __dst;
    v14 = (v68 & 0x80000000) == 0 ? &__dst : __dst;
    v15 = (v68 & 0x80000000) == 0 ? BYTE3(v68) : *v66;
    v16 = v14 + v15;
    while (1)
    {
      v17 = aBasicString_0[v12 + 23];
      v18 = v17 >= 0 ? &aBasicString_0[v12] : *&aBasicString_0[v12];
      v19 = v17 >= 0 ? aBasicString_0[v12 + 23] : *&aBasicString_0[v12 + 8];
      if (!v19)
      {
        break;
      }

      if (v15 >= v19)
      {
        v20 = *v18;
        v21 = v15;
        v22 = v14;
        do
        {
          v23 = v21 - v19;
          if (v23 == -1)
          {
            break;
          }

          v24 = memchr(v22, v20, v23 + 1);
          if (!v24)
          {
            break;
          }

          v25 = v24;
          if (!memcmp(v24, v18, v19))
          {
            if (v25 == v16 || v25 - v14 == -1)
            {
              break;
            }

            goto LABEL_34;
          }

          v22 = (v25 + 1);
          v21 = v16 - (v25 + 1);
        }

        while (v21 >= v19);
      }

      v12 += 24;
      if (v12 == 120)
      {
        v26 = 0;
        goto LABEL_35;
      }
    }

LABEL_34:
    v26 = 1;
LABEL_35:
    if (v13 < 0)
    {
      operator delete(__p);
    }

    if (v26)
    {
      v35 = sub_1DF80C018();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
      {
        v36 = v56;
        v39 = objc_msgSend_UTF8String(v56, v37, v38);
        __dst = 68289795;
        *v66 = 2082;
        *&v66[2] = &unk_1DF8255EF;
        v67 = 2082;
        v68 = v39;
        v69 = 2082;
        v70 = "assert";
        v71 = 2081;
        v72 = "!containsCppTypesToAvoid(pDesc->types)";
        _os_log_impl(&dword_1DF7FE000, v35, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Method potentially contains a non POD or non Obj-C type in its arguments, methodName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__dst, 0x30u);
      }

      v40 = sub_1DF80C018();
      if (os_signpost_enabled(v40))
      {
        v41 = v56;
        v44 = objc_msgSend_UTF8String(v56, v42, v43);
        __dst = 68289795;
        *v66 = 2082;
        *&v66[2] = &unk_1DF8255EF;
        v67 = 2082;
        v68 = v44;
        v69 = 2082;
        v70 = "assert";
        v71 = 2081;
        v72 = "!containsCppTypesToAvoid(pDesc->types)";
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v40, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Method potentially contains a non POD or non Obj-C type in its arguments", "{msg%{public}.0s:Method potentially contains a non POD or non Obj-C type in its arguments, methodName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__dst, 0x30u);
      }

      v45 = sub_1DF80C018();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = v56;
        v49 = objc_msgSend_UTF8String(v56, v47, v48);
        __dst = 68289795;
        *v66 = 2082;
        *&v66[2] = &unk_1DF8255EF;
        v67 = 2082;
        v68 = v49;
        v69 = 2082;
        v70 = "assert";
        v71 = 2081;
        v72 = "!containsCppTypesToAvoid(pDesc->types)";
        _os_log_impl(&dword_1DF7FE000, v45, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Method potentially contains a non POD or non Obj-C type in its arguments, methodName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__dst, 0x30u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloInterface.mm", 207, "registerSelectorInfosForMethodDescriptionList");
      __break(1u);
    }

    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = sub_1DF808AB4;
    v60[3] = &unk_1E86C82A8;
    v60[4] = &v61;
    v60[5] = v55;
    sub_1DF7FF4D8(v60);
    if (*(v62 + 24) != 1)
    {
      break;
    }

    _Block_object_dispose(&v61, 8);
    v28 = v54;
LABEL_43:

    v3 = v28 + 1;
    if (v3 == v50)
    {
      return 1;
    }
  }

  v29 = objc_msgSend_signatureWithObjCTypes_(MEMORY[0x1E695DF68], v27, v55[1]);
  if (!v29)
  {
    goto LABEL_46;
  }

  v30 = [CLIntersiloInterfaceSelectorInfo alloc];
  v32 = objc_msgSend_initWithSelector_andMethodSignature_(v30, v31, *v55, v29);
  if (v32)
  {
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = sub_1DF808BF8;
    v57[3] = &unk_1E86C82D0;
    v59 = v55;
    v33 = v32;
    v58 = v33;
    sub_1DF7FF4D8(v57);

    v28 = v54;
    _Block_object_dispose(&v61, 8);
    goto LABEL_43;
  }

LABEL_46:
  _Block_object_dispose(&v61, 8);

  return 0;
}

void sub_1DF80880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1DF808AB4(uint64_t a1, uint64_t a2)
{
  result = sub_1DF7FF5D0(*a2, *(a2 + 8), **(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_1DF808BF8(uint64_t a1, float *a2)
{
  v2 = **(a1 + 40);
  v3 = 0x9DDFEA08EB382D69 * ((8 * (v2 & 0x1FFFFFFF) + 8) ^ HIDWORD(v2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(v2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a2 + 2);
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

  v9 = *(*a2 + 8 * v8);
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

  if (v10[2] != v2)
  {
    goto LABEL_17;
  }

  objc_storeStrong(v10 + 3, *(a1 + 32));
}

void sub_1DF80905C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1DF809070(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1DF809070(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1DF8090BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DF8090CC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DF8090DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1DF8090EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void CLConnection::sendMessageSync(uint64_t a1@<X0>, CLConnectionMessage **a2@<X1>, int a3@<W2>, std::__shared_weak_count **a4@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  XPCMessage = CLConnectionMessage::createXPCMessage(*a2);
  *a4 = 0;
  a4[1] = 0;
  v20 = a4;
  if (a3)
  {
    v8 = 3;
  }

  else
  {
    v8 = 0;
  }

  key = *MEMORY[0x1E69E9E28];
  v9 = MEMORY[0x1E69E9E98];
  v10 = *a1;
  do
  {
    v11 = xpc_connection_send_message_with_reply_sync(v10, XPCMessage);
    v12 = MEMORY[0x1E12E05B0]();
    if (v12 == v9)
    {
      string = xpc_dictionary_get_string(v11, key);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v15 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_ERROR))
      {
        v16 = *a2;
        if (*(*a2 + 23) < 0)
        {
          v16 = *v16;
        }

        buf[0] = 136446466;
        *&buf[1] = v16;
        v26 = 2082;
        v27 = string;
        _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_ERROR, "Error on message reply (sync) for %{public}s (%{public}s)", buf, 0x16u);
      }

      if (v11 == MEMORY[0x1E69E9E18])
      {
        if (v8)
        {
          v19 = v8;
          goto LABEL_24;
        }

        v17 = *(a1 + 8);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = sub_1DF812F4C;
        v24[3] = &unk_1E86C83E0;
        v24[4] = a1;
        v18 = v24;
      }

      else
      {
        v17 = *(a1 + 8);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1DF81308C;
        block[3] = &unk_1E86C83E0;
        block[4] = a1;
        v18 = block;
      }

      dispatch_async(v17, v18);
    }

    else
    {
      if (v12 == MEMORY[0x1E69E9E80])
      {
        operator new();
      }

      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v13 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1DF7FE000, v13, OS_LOG_TYPE_FAULT, "Dropping unexpected response (not a dictionary)", buf, 2u);
      }
    }

    v19 = 0;
LABEL_24:
    xpc_release(v11);
    v10 = *a1;
    if (!*a1)
    {
      break;
    }

    v8 = v19 - 1;
  }

  while (v19);
  *v20 = 0;
  v20[1] = 0;
  xpc_release(XPCMessage);
}

void sub_1DF809598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (v15)
  {
    sub_1DF7FFED0(v15);
  }

  _Unwind_Resume(exception_object);
}

void *CLConnectionMessage::createXPCMessage(CLConnectionMessage *this)
{
  if (*(this + 23) < 0)
  {
    sub_1DF802ED0(__p, *this, *(this + 1));
  }

  else
  {
    *__p = *this;
    v5 = *(this + 2);
  }

  v2 = sub_1DF80191C(__p, *(this + 7), *(this + 8), 0, 0);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_1DF80966C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionClient::sendMessageSync(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a4 = 0;
  a4[1] = 0;
  os_unfair_lock_lock((v6 + 100));
  v9 = *v6;
  if (*v6)
  {
    v11 = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    CLConnection::sendMessageSync(v9, &v11, a3, &v13);
    v10 = v13;
    v13 = 0uLL;
    *a4 = v10;
    if (v12)
    {
      sub_1DF7FFED0(v12);
    }
  }

  os_unfair_lock_unlock((v6 + 100));
  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF809740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  if (v10)
  {
    sub_1DF7FFED0(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF809764(uint64_t a1, const char *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1DF8090EC;
  v17 = sub_1DF809114;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1DF8099D8;
  v12[3] = &unk_1E86C8660;
  v12[4] = &v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(qword_1ED5FADA8, a2, v12);
  v3 = v14[5];
  if (v3)
  {
    if (byte_1ED5FAD50 == 1)
    {
      CLWriteStackshot("locationd: Heartbeat underflow", 0);
      v3 = v14[5];
    }

    objc_msgSend_sortUsingComparator_(v3, v2, &unk_1F5AC6AE8);
    v4 = v14[5];
    v5 = objc_opt_class();
    objc_msgSend_addObject_(v4, v6, v5);
    if (byte_1ED5FAD99 == 1)
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v8 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v14[5];
        buf = 68289282;
        v20 = 2082;
        v21 = &unk_1DF8255EF;
        v22 = 2114;
        v23 = v9;
        _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:locationd remains non-fatally blocked because internal install, ImplicatedServicesCurrently:%{public, location:escape_only}@}", &buf, 0x1Cu);
      }
    }

    else
    {
      byte_1ED5FAD99 = 1;
      v10 = objc_msgSend_objectAtIndexedSubscript_(v14[5], v7, 0);
      objc_msgSend_becameFatallyBlocked_index_(v10, v11, v14[5], 0);
    }
  }

  _Block_object_dispose(&v13, 8);
}

void sub_1DF8099A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v21 = v20;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

void sub_1DF8099D8(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_synCount(v6, v7, v8);
  v14 = v9 - objc_msgSend_ackCount(v6, v10, v11);
  if (v14 < 0)
  {
    v43 = sub_1DF81E1BC();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v50 = 0;
      v51 = 2082;
      v52 = &unk_1DF8255EF;
      v53 = 2082;
      v54 = "assert";
      v55 = 2081;
      v56 = "0 <= dewrappedDeficit";
      _os_log_impl(&dword_1DF7FE000, v43, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Deltafied deficit should be non-negative, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v44 = sub_1DF81E1BC();
    if (os_signpost_enabled(v44))
    {
      *buf = 68289539;
      v50 = 0;
      v51 = 2082;
      v52 = &unk_1DF8255EF;
      v53 = 2082;
      v54 = "assert";
      v55 = 2081;
      v56 = "0 <= dewrappedDeficit";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Deltafied deficit should be non-negative", "{msg%{public}.0s:Deltafied deficit should be non-negative, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v45 = sub_1DF81E1BC();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v50 = 0;
      v51 = 2082;
      v52 = &unk_1DF8255EF;
      v53 = 2082;
      v54 = "assert";
      v55 = 2081;
      v56 = "0 <= dewrappedDeficit";
      _os_log_impl(&dword_1DF7FE000, v45, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Deltafied deficit should be non-negative, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v46 = 192;
LABEL_33:

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm", v46, "validateTrackedSilos_block_invoke");
    __break(1u);
LABEL_34:
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    goto LABEL_13;
  }

  if (v14 >= 3)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v15 = qword_1ED5FAD48;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_msgSend_identifier(v5, v16, v17);
      *buf = 68289282;
      v50 = 0;
      v51 = 2082;
      v52 = &unk_1DF8255EF;
      v53 = 2114;
      v54 = v18;
      _os_log_impl(&dword_1DF7FE000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Heartbeat underflow; going to crash now!, silo:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    if (!*(*(*(a1 + 32) + 8) + 40))
    {
      v21 = objc_msgSend_array(MEMORY[0x1E695DF70], v19, v20);
      v22 = *(*(a1 + 32) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;
    }

    if (objc_msgSend_svcClass(v6, v19, v20))
    {
      v26 = *(*(*(a1 + 32) + 8) + 40);
      v27 = objc_msgSend_svcClass(v6, v24, v25);
      objc_msgSend_addObject_(v26, v28, v27);
      goto LABEL_16;
    }

    v47 = sub_1DF81E1BC();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v50 = 0;
      v51 = 2082;
      v52 = &unk_1DF8255EF;
      v53 = 2082;
      v54 = "assert";
      v55 = 2081;
      v56 = "record.svcClass";
      _os_log_impl(&dword_1DF7FE000, v47, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Only living, non-nil services should be heart-beaten, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v48 = sub_1DF81E1BC();
    if (os_signpost_enabled(v48))
    {
      *buf = 68289539;
      v50 = 0;
      v51 = 2082;
      v52 = &unk_1DF8255EF;
      v53 = 2082;
      v54 = "assert";
      v55 = 2081;
      v56 = "record.svcClass";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Only living, non-nil services should be heart-beaten", "{msg%{public}.0s:Only living, non-nil services should be heart-beaten, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v45 = sub_1DF81E1BC();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v50 = 0;
      v51 = 2082;
      v52 = &unk_1DF8255EF;
      v53 = 2082;
      v54 = "assert";
      v55 = 2081;
      v56 = "record.svcClass";
      _os_log_impl(&dword_1DF7FE000, v45, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Only living, non-nil services should be heart-beaten, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v46 = 208;
    goto LABEL_33;
  }

  if (v14 != 2)
  {
    goto LABEL_16;
  }

  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_34;
  }

LABEL_13:
  v29 = qword_1ED5FAD48;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v32 = objc_msgSend_identifier(v5, v30, v31);
    *buf = 68289538;
    v50 = 0;
    v51 = 2082;
    v52 = &unk_1DF8255EF;
    v53 = 2114;
    v54 = v32;
    v55 = 1026;
    LODWORD(v56) = 2;
    _os_log_impl(&dword_1DF7FE000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Heartbeat underflow, silo:%{public, location:escape_only}@, deficit:%{public}d}", buf, 0x22u);
  }

LABEL_16:
  v33 = objc_msgSend_silo(v6, v12, v13);
  isSuspended = objc_msgSend_isSuspended(v33, v34, v35);

  if ((isSuspended & 1) == 0)
  {
    objc_msgSend_syn(v6, v37, v38);
    v41 = objc_msgSend_silo(v6, v39, v40);
    objc_msgSend_heartBeat_(v41, v42, v6);
  }
}

void CLConnection::handleInterruption(dispatch_queue_t *this)
{
  v13 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  v2 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnection::handleInterruption", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v6);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v3 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v8 = 0;
    v9 = 2082;
    v10 = &unk_1DF8255EF;
    v11 = 2082;
    v12 = "activity";
    _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLConnection::handleInterruption, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  CLConnection::resetReplyHandlers(this, v4);
  v5 = this[6];
  if (v5)
  {
    (v5[2].isa)();
  }

  os_activity_scope_leave(&v6);
}

uint64_t sub_1DF80A274(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  v2 = *(a1 + 48);
  if (*(v2 + 40) == 1)
  {
    sub_1DF802910(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1DF80A2DC(void *a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3321888768;
  v5 = sub_1DF80A274;
  v6 = &unk_1F5AC66D0;
  v2 = a1[8];
  v1 = a1[9];
  v7 = a1[4];
  v9 = v2;
  v10 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a1[5];
  v3 = a1[7];
  if (v3 && *(v3 + 8) != -1)
  {
    v5(v4);
  }

  if (v10)
  {
    sub_1DF7FFED0(v10);
  }
}

void sub_1DF80A398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DF80A3B0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2] = 0;
  a1[2] = *(a2 + 16);
  return a1;
}

void sub_1DF80A3FC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_1DF7FFED0(v3);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionServer::CLConnectionServer(CLConnectionServer *a1, void *a2, void *a3, const void *a4)
{
  v7 = *MEMORY[0x1E69E9840];
  *a1 = a3;
  *(a1 + 1) = a2;
  *(a1 + 2) = _Block_copy(a4);
  *(a1 + 3) = &unk_1F5AC62A8;
  operator new();
}

void CLConnectionServer::initializeService(CLConnectionServer *this)
{
  v2 = *(this + 1);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1DF805A10;
  handler[3] = &unk_1E86C8240;
  handler[4] = this;
  xpc_connection_set_event_handler(v2, handler);
  xpc_connection_resume(*(this + 1));
}

void CLConnectionServer::CLConnectionServer(CLConnectionServer *a1, const char *a2, NSObject *a3, const void *a4)
{
  *a1 = a3;
  *(a1 + 2) = _Block_copy(a4);
  *(a1 + 3) = &unk_1F5AC62A8;
  operator new();
}

void CLConnectionServer::handleDisconnection(CLConnectionServer *this, CLConnection *a2)
{
  if (a2)
  {
    CLConnection::deferredDelete(a2);
  }
}

void sub_1DF80AEE8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CLConnection::deferredDelete(v1);
  }
}

uint64_t sub_1DF80AEF8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF80AF14(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

void sub_1DF80AF7C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AC62E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12DFAD0);
}

void sub_1DF80AFD0(CLConnection **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    CLConnection::deferredDelete(v2);
  }
}

id sub_1DF80C018()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6360);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

void sub_1DF80C488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1DF80C4A8(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = sub_1DF7FF5D0(*a2, *(a2 + 8), *(a1 + 40));
  if (!v3)
  {
    v4 = sub_1DF80C018();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "iter != selectorMap.end()";
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:getInfoForSelector called on a missing selector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v5 = sub_1DF80C018();
    if (os_signpost_enabled(v5))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "iter != selectorMap.end()";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "getInfoForSelector called on a missing selector", "{msg%{public}.0s:getInfoForSelector called on a missing selector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v6 = sub_1DF80C018();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v8 = 0;
      v9 = 2082;
      v10 = &unk_1DF8255EF;
      v11 = 2082;
      v12 = "assert";
      v13 = 2081;
      v14 = "iter != selectorMap.end()";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:getInfoForSelector called on a missing selector, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLIntersiloInterface.mm", 339, "[CLIntersiloInterface getInfoForSelector:]_block_invoke");
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v3[3]);
}

void sub_1DF80C7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1DF80C7C0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DF7FF5D0(*a2, *(a2 + 8), *(a1 + 40));
  if (v3)
  {
    v4 = v3[3];
    v5 = (*(*(a1 + 32) + 8) + 40);

    objc_storeStrong(v5, v4);
  }
}

void sub_1DF80C834(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_1DF80C890(exception, a1);
  __cxa_throw(exception, off_1E86C8238, MEMORY[0x1E69E5278]);
}

std::logic_error *sub_1DF80C890(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void sub_1DF80C8C4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sub_1DF80F204()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF80F248()
{
  qword_1ECE5D3F8 = os_log_create("com.apple.locationd.Support", "Support");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF80F28C(uint64_t a1)
{
  if (qword_1ED5FAE40 != -1)
  {
    dispatch_once(&qword_1ED5FAE40, &unk_1F5AC63E0);
  }

  v2 = dlsym(qword_1ED5FAE48, "cprofile_set_current_identifier");
  off_1EED20BE8 = v2;

  return v2(a1);
}

void *sub_1DF80F308()
{
  result = dlopen("/System/Library/PrivateFrameworks/CProfileRuntime.framework/CProfileRuntime", 2);
  qword_1ED5FAE48 = result;
  return result;
}

char *sub_1DF80F334()
{
  result = getenv("CPROFILE_ENABLE");
  byte_1ED5FAE38 = result != 0;
  return result;
}

CLDispatchSilo *sub_1DF80F418()
{
  v0 = [CLDispatchSilo alloc];
  result = objc_msgSend_initWithIdentifier_(v0, v1, @"CLSettingsManagerInternalSilo");
  qword_1ED5FAD88 = result;
  return result;
}

void sub_1DF80F910(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_prepareAndRunBlock_(WeakRetained, v3, 0);

  v9 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_timer(v9, v4, v5);
  objc_msgSend_shouldFire(v6, v7, v8);
}

void sub_1DF80FD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF80FD54(uint64_t a1)
{
  *(*(a1 + 32) + 8) = pthread_self();
  v4 = objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], v2, v3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  *(v5 + 16) = v4;

  dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));

  CFRunLoopRun();
}

id sub_1DF80FDC0()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

void sub_1DF80FFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1DF810000(uint64_t a1)
{
  *(*(a1 + 32) + 8) = pthread_self();
  v4 = objc_msgSend_currentThread(MEMORY[0x1E696AF00], v2, v3);
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  *(v5 + 24) = v4;

  v9 = objc_msgSend_currentRunLoop(MEMORY[0x1E695DFD0], v7, v8);
  v10 = *(a1 + 32);
  v11 = *(v10 + 16);
  *(v10 + 16) = v9;

  v12 = *(*(*(a1 + 40) + 8) + 40);

  return dispatch_semaphore_signal(v12);
}

void sub_1DF810454(uint64_t a1, void *a2)
{
  v11 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v11, v3, *(a1 + 40));
  v5 = *(a1 + 32);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  if (!*(*(a1 + 32) + 56))
  {
    v7 = objc_alloc_init(CLRunLoopSiloThread);
    v8 = *(a1 + 32);
    v9 = *(v8 + 56);
    *(v8 + 56) = v7;

    if (v7)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v11, v10, *(*(a1 + 32) + 56), *(a1 + 40));
    }
  }
}

uint64_t sub_1DF8112A0(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  return MEMORY[0x1EEE74158](v2, 0);
}

_BYTE *sub_1DF8114C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  objc_msgSend_ack(*(a1 + 32), a2, a3);
  result = *(a1 + 40);
  if ((result[16] & 1) == 0)
  {
    result = objc_msgSend_shouldBeIdled(result, v4, v5);
    if (result)
    {
      *(*(a1 + 40) + 16) = 1;
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6440);
      }

      v7 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 40) + 8);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_DEFAULT, "#Idleness: Silo is being idled: %@", &v11, 0xCu);
      }

      return objc_msgSend_runIdleHandlers(*(a1 + 40), v8, v9);
    }
  }

  return result;
}

uint64_t sub_1DF8115C8()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF81160C(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_1ED5FAE60 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);

  return MEMORY[0x1EEE66BB8]();
}

id sub_1DF81194C()
{
  if (qword_1ECE5D588 != -1)
  {
    dispatch_once(&qword_1ECE5D588, &unk_1F5AC6480);
  }

  v1 = qword_1ECE5D590;

  return v1;
}

uint64_t sub_1DF811B6C()
{
  qword_1ECE5D590 = os_log_create("com.apple.LocationSupport", "Timer");

  return MEMORY[0x1EEE66BB8]();
}

void CLConnectionUsernameCache::CLConnectionUsernameCache(CLConnectionUsernameCache *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  *(this + 10) = 0;
  *(this + 7) = 150000000000;
  mach_timebase_info((this + 44));
}

void CLConnectionUsernameCache::storeUsernameForToken(os_unfair_lock_s *this, const unsigned int *a2, NSString *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 10);
  v6 = mach_absolute_time();
  if (!a3)
  {
    if (qword_1ED5FAD68 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v20 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        __p = 68289539;
        *v25 = 2082;
        *&v25[2] = &unk_1DF8255EF;
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "username != nullptr";
        _os_log_impl(&dword_1DF7FE000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Attempting to store a nil username in our cache, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
        }
      }

      v21 = qword_1ED5FAD60;
      if (os_signpost_enabled(qword_1ED5FAD60))
      {
        __p = 68289539;
        *v25 = 2082;
        *&v25[2] = &unk_1DF8255EF;
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "username != nullptr";
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Attempting to store a nil username in our cache", "{msg%{public}.0s:Attempting to store a nil username in our cache, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
        }
      }

      v22 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
      {
        __p = 68289539;
        *v25 = 2082;
        *&v25[2] = &unk_1DF8255EF;
        *&v25[10] = 2082;
        *&v25[12] = "assert";
        v26 = 2081;
        v27 = "username != nullptr";
        _os_log_impl(&dword_1DF7FE000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Attempting to store a nil username in our cache, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", &__p, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/IPC/CLConnection.mm", 69, "storeUsernameForToken");
      __break(1u);
LABEL_35:
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }
  }

  v9 = v6;
  v10 = objc_msgSend_UTF8String(a3, v7, v8);
  sub_1DF812360(&__p, v10);
  v11 = __p;
  *v23 = *v25;
  *&v23[7] = *&v25[7];
  v12 = v25[15];
  *v25 = 0;
  *&v25[8] = 0;
  __p = 0;
  v13 = *a2;
  v14 = *&this[2]._os_unfair_lock_opaque;
  if (!*&v14)
  {
    goto LABEL_19;
  }

  v15 = vcnt_s8(v14);
  v15.i16[0] = vaddlv_u8(v15);
  if (v15.u32[0] > 1uLL)
  {
    v16 = *a2;
    if (*&v14 <= v13)
    {
      v16 = v13 % v14.i32[0];
    }
  }

  else
  {
    v16 = (v14.i32[0] - 1) & v13;
  }

  v17 = *(*&this->_os_unfair_lock_opaque + 8 * v16);
  if (!v17 || (v18 = *v17) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v19 = v18[1];
    if (v19 == v13)
    {
      break;
    }

    if (v15.u32[0] > 1uLL)
    {
      if (v19 >= *&v14)
      {
        v19 %= *&v14;
      }
    }

    else
    {
      v19 &= *&v14 - 1;
    }

    if (v19 != v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    v18 = *v18;
    if (!v18)
    {
      goto LABEL_19;
    }
  }

  if (*(v18 + 4) != v13)
  {
    goto LABEL_18;
  }

  if (*(v18 + 47) < 0)
  {
    operator delete(v18[3]);
  }

  v18[3] = v11;
  v18[4] = *v23;
  *(v18 + 39) = *&v23[7];
  *(v18 + 47) = v12;
  v18[6] = v9;
  if ((v25[15] & 0x80000000) != 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(this + 10);
}

void sub_1DF812310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1DF813DD4(1, v22);
  if (v23 < 0)
  {
    operator delete(v21);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  os_unfair_lock_unlock(v20 + 10);
  _Unwind_Resume(a1);
}

void *sub_1DF812360(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1DF80C81C();
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

void *CLConnectionUsernameCache::operator[](uint64_t a1, unsigned int *a2)
{
  os_unfair_lock_lock((a1 + 40));
  v4 = *(a1 + 8);
  if (!*&v4)
  {
    goto LABEL_20;
  }

  v5 = *a2;
  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v4 <= v5)
    {
      v7 = v5 % v4.i32[0];
    }
  }

  else
  {
    v7 = (v4.i32[0] - 1) & v5;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
LABEL_20:
    i = 0;
    goto LABEL_21;
  }

  for (i = *v8; i; i = *i)
  {
    v10 = *(i + 8);
    if (v10 == v5)
    {
      if (*(i + 16) == v5)
      {
        v11 = mach_absolute_time();
        if ((v11 - *(i + 48)) * *(a1 + 44) / *(a1 + 48) > *(a1 + 56))
        {
          sub_1DF813E30(a1, i);
          goto LABEL_20;
        }

        v14 = (i + 24);
        if (*(i + 47) < 0)
        {
          v14 = *v14;
        }

        i = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v12, v14);
        break;
      }
    }

    else
    {
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

      if (v10 != v7)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_21:
  os_unfair_lock_unlock((a1 + 40));
  return i;
}

void CLConnectionUsernameCache::purgeExpired(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 10);
  v2 = mach_absolute_time();
  v3 = *&this[4]._os_unfair_lock_opaque;
  if (v3)
  {
    v4 = v2;
    do
    {
      while ((v4 - v3[6]) * this[11]._os_unfair_lock_opaque / this[12]._os_unfair_lock_opaque > *&this[14]._os_unfair_lock_opaque)
      {
        v3 = sub_1DF813E30(this, v3);
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      v3 = *v3;
    }

    while (v3);
  }

LABEL_7:

  os_unfair_lock_unlock(this + 10);
}

void CLConnectionEntitlementCache::CLConnectionEntitlementCache(CLConnectionEntitlementCache *this, audit_token_t *a2)
{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  v2 = *a2->val;
  *(this + 40) = *&a2->val[4];
  *(this + 24) = v2;
  *(this + 14) = 0;
}

{
  *(this + 2) = 0;
  *(this + 1) = 0;
  *this = this + 8;
  v2 = *a2->val;
  *(this + 40) = *&a2->val[4];
  *(this + 24) = v2;
  *(this + 14) = 0;
}

uint64_t sub_1DF81265C(_BYTE *a1, uint64_t a2)
{
  v46[6] = 0;
  v3 = MEMORY[0x1E69E5560] + 104;
  v46[0] = MEMORY[0x1E69E5560] + 104;
  v4 = MEMORY[0x1E69E5560] + 64;
  v34 = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v33[0] = *(MEMORY[0x1E69E54D8] + 16);
  *(v33 + *(v33[0] - 24)) = v6;
  v33[1] = 0;
  v7 = (v33 + *(v33[0] - 24));
  std::ios_base::init(v7, &v35);
  v8 = MEMORY[0x1E69E5560] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v9 = v5[5];
  v34 = v5[4];
  *(&v34 + *(v34 - 24)) = v9;
  v33[0] = v5[1];
  *(v33 + *(v33[0] - 24)) = v5[6];
  v46[0] = v3;
  v33[0] = v8;
  v31 = MEMORY[0x1E69E5538] + 16;
  v34 = v4;
  v35 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E12DFA50](&v36);
  __src = 0;
  v41 = 0;
  v42 = 0;
  memset(&__p, 0, sizeof(__p));
  v45 = 24;
  v30 = MEMORY[0x1E69E5548] + 16;
  v35 = MEMORY[0x1E69E5548] + 16;
  p_p = &__p;
  v38 = &__p;
  v39 = &__p;
  v44 = &__p;
  std::string::resize(&__p, 0x16uLL, 0);
  v10 = 0;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  __src = &__p;
  v41 = &__p;
  v42 = &__p + size;
  while (1)
  {
    MEMORY[0x1E12DFA10](&v34, *(a2 + v10));
    if (v10 == 28)
    {
      break;
    }

    v47 = 124;
    MEMORY[0x1E12DF9F0](v48, &v34);
    if (v48[0] == 1)
    {
      v12 = &v34 + *(v34 - 24);
      v13 = *(v12 + 5);
      v14 = *(v12 + 2);
      v15 = *(v12 + 36);
      if (v15 == -1)
      {
        std::ios_base::getloc((&v34 + *(v34 - 24)));
        v16 = std::locale::use_facet(&v49, MEMORY[0x1E69E5318]);
        v15 = (v16->__vftable[2].~facet_0)(v16, 32);
        std::locale::~locale(&v49);
        *(v12 + 36) = v15;
      }

      if ((v14 & 0xB0) == 0x20)
      {
        v17 = v48;
      }

      else
      {
        v17 = &v47;
      }

      if (!v13)
      {
        goto LABEL_31;
      }

      v18 = *(v12 + 3);
      v19 = v18 <= 1;
      v20 = v18 - 1;
      v21 = v19 ? 0 : v20;
      if (v17 - &v47 >= 1 && (*(*v13 + 96))(v13, &v47, v17 - &v47) != v17 - &v47)
      {
        goto LABEL_31;
      }

      if (v21 >= 1)
      {
        if (v21 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_1DF80C81C();
        }

        if (v21 >= 0x17)
        {
          operator new();
        }

        v51 = v21;
        memset(&__b, v15, v21);
        *(&__b + v21) = 0;
        if (v51 >= 0)
        {
          p_b = &__b;
        }

        else
        {
          p_b = __b;
        }

        v23 = (*(*v13 + 96))(v13, p_b, v21);
        if (v51 < 0)
        {
          operator delete(__b);
        }

        if (v23 != v21)
        {
          goto LABEL_31;
        }
      }

      if (v48 - v17 < 1 || (*(*v13 + 96))(v13, v17, v48 - v17) == v48 - v17)
      {
        *(v12 + 3) = 0;
      }

      else
      {
LABEL_31:
        std::ios_base::clear((&v34 + *(v34 - 24)), *(&v38 + *(v34 - 24)) | 5);
      }
    }

    MEMORY[0x1E12DFA00](v48);
    v10 += 4;
  }

  if ((v45 & 0x10) != 0)
  {
    v26 = v44;
    v24 = a1;
    if (v44 < v41)
    {
      v44 = v41;
      v26 = v41;
    }

    v27 = __src;
  }

  else
  {
    v24 = a1;
    if ((v45 & 8) == 0)
    {
      v25 = 0;
      a1[23] = 0;
      goto LABEL_47;
    }

    v27 = p_p;
    v26 = v39;
  }

  v25 = v26 - v27;
  if ((v26 - v27) > 0x7FFFFFFFFFFFFFF7)
  {
    sub_1DF80C81C();
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  v24[23] = v25;
  if (v25)
  {
    memmove(v24, v27, v25);
  }

LABEL_47:
  v24[v25] = 0;
  v33[0] = *MEMORY[0x1E69E54D8];
  v28 = *(MEMORY[0x1E69E54D8] + 72);
  *(v33 + *(v33[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v34 = v28;
  v35 = v30;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v35 = v31;
  std::locale::~locale(&v36);
  std::iostream::~basic_iostream();
  return MEMORY[0x1E12DFAA0](v46);
}

void sub_1DF812E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  __cxa_end_catch();
  sub_1DF813C18(&a16);
  MEMORY[0x1E12DFAA0](a14);
  _Unwind_Resume(a1);
}

void *CLConnection::setHandlerForMessage(uint64_t a1, const char *a2, void *a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2);

  return CLConnection::setHandlerForMessage(a1, v5, a3);
}

void sub_1DF812F4C(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnection calling interruption handler in sendMessageSync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v4);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v3 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v6 = 0;
    v7 = 2082;
    v8 = &unk_1DF8255EF;
    v9 = 2082;
    v10 = "activity";
    _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLConnection calling interruption handler in sendMessageSync, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  CLConnection::handleInterruption(v1);
  os_activity_scope_leave(&v4);
}

void sub_1DF81308C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = _os_activity_create(&dword_1DF7FE000, "CL: CLConnection calling disconnection handler in sendMessageSync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v2, &v4);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v3 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    v6 = 2082;
    v7 = &unk_1DF8255EF;
    v8 = 2082;
    v9 = "activity";
    _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLConnection calling disconnection handler in sendMessageSync, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  CLConnection::handleDisconnection(v1);
  os_activity_scope_leave(&v4);
}

void CLConnection::getUserName(dispatch_queue_t *this@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(this[1]);
  v4 = _os_activity_create(&dword_1DF7FE000, "CL: #MultiUser CLConnection::getUserName", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &v6);

  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
  }

  v5 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289282;
    v8 = 2082;
    v9 = &unk_1DF8255EF;
    v10 = 2082;
    v11 = "activity";
    _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#MultiUser CLConnection::getUserName, event:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  dispatch_assert_queue_V2(this[1]);
  xpc_connection_get_audit_token();
  sub_1DF812360(a2, "mobile");
  os_activity_scope_leave(&v6);
}

uint64_t CLConnectionMessage::CLConnectionMessage(uint64_t a1, void *a2)
{
  v3[0] = 0;
  v3[1] = 0;
  return CLConnectionMessage::CLConnectionMessage(a1, a2, v3);
}

{
  v3[0] = 0;
  v3[1] = 0;
  return CLConnectionMessage::CLConnectionMessage(a1, a2, v3);
}

char *CLConnectionMessage::CLConnectionMessage(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1DF802ED0(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 3) = 0;
  __dst[32] = 0;
  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 72) = 0u;
  return __dst;
}

uint64_t CLConnectionMessage::getObjectOfClass(CLConnectionMessage *this, objc_class *a2)
{
  v3 = objc_msgSend_setWithObject_(MEMORY[0x1E695DFD8], a2, a2);

  return CLConnectionMessage::getObjectOfClasses(this, v3);
}

void CLConnectionMessage::setFileDescriptors(id *this, int *a2, int a3)
{
  LODWORD(v3) = a3;

  this[8] = xpc_array_create(0, 0);
  if (v3 >= 1)
  {
    v3 = v3;
    do
    {
      v6 = *a2++;
      xpc_array_set_fd(this[8], 0xFFFFFFFFFFFFFFFFLL, v6);
      --v3;
    }

    while (v3);
  }
}

uint64_t CLConnectionMessage::copyFileDescriptor(CLConnectionMessage *this, size_t a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    return xpc_array_dup_fd(v2, a2);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL CLConnectionMessage::sendReply(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, a3, 1, 0);
  }

  else
  {
    v5 = 0;
  }

  if (*(a1 + 48) || *(a1 + 24))
  {
    if (v5)
    {
      v6 = objc_msgSend_bytes(v5, a2, a3);
      v9 = objc_msgSend_length(v5, v7, v8);
      v10 = xpc_data_create(v6, v9);
    }

    else
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v11 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF7FE000, v11, OS_LOG_TYPE_FAULT, "Attempting to send nil/null data. An error should be sent instead.", buf, 2u);
      }

      v10 = xpc_data_create(0, 0);
    }

    v12 = v10;
    v13 = *(a1 + 48);
    v14 = *(a2 + 23);
    if (v13)
    {
      if (v14 >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      xpc_dictionary_set_string(v13, "kCLConnectionMessageNameKey", v15);
      xpc_dictionary_set_value(*(a1 + 48), "kCLConnectionMessageInfoKey", v12);
      xpc_dictionary_set_BOOL(*(a1 + 48), "kCLConnectionMessageIsReplyingKey", 1);
      xpc_connection_send_message(*(a1 + 40), *(a1 + 48));
      xpc_release(*(a1 + 48));
      *(a1 + 48) = 0;
    }

    else
    {
      if (v14 < 0)
      {
        sub_1DF802ED0(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v25 = *(a2 + 16);
      }

      v23 = sub_1DF80191C(__p, v12, *(a1 + 64), *(a1 + 24), 1);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_connection_send_message(*(a1 + 40), v23);
      xpc_release(v23);
    }

    if (v12)
    {
      xpc_release(v12);
    }

    return 1;
  }

  else
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
    }

    v16 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      v17 = *(a2 + 23) >= 0 ? a2 : *a2;
      v18 = *(a1 + 24);
      *buf = 68289538;
      v27 = 0;
      v28 = 2082;
      v29 = &unk_1DF8255EF;
      v30 = 2082;
      v31 = v17;
      v32 = 2050;
      v33 = v18;
      _os_log_impl(&dword_1DF7FE000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to send reply message, MessageName:%{public, location:escape_only}s, ReplyHanlderIdentifier:%{public}ld}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }
    }

    v19 = qword_1ED5FAD60;
    result = os_signpost_enabled(qword_1ED5FAD60);
    if (result)
    {
      if (*(a2 + 23) >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      v22 = *(a1 + 24);
      *buf = 68289538;
      v27 = 0;
      v28 = 2082;
      v29 = &unk_1DF8255EF;
      v30 = 2082;
      v31 = v21;
      v32 = 2050;
      v33 = v22;
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to send reply message", "{msg%{public}.0s:Unable to send reply message, MessageName:%{public, location:escape_only}s, ReplyHanlderIdentifier:%{public}ld}", buf, 0x26u);
      return 0;
    }
  }

  return result;
}

void sub_1DF813884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CLConnectionMessage::sendReply(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 48);
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    xpc_dictionary_set_string(v6, "kCLConnectionMessageNameKey", v7);
    xpc_dictionary_set_value(*(a1 + 48), "kCLConnectionMessageInfoKey", a3);
    v8 = 1;
    xpc_dictionary_set_BOOL(*(a1 + 48), "kCLConnectionMessageIsReplyingKey", 1);
    xpc_connection_send_message(*(a1 + 40), *(a1 + 48));
    xpc_release(*(a1 + 48));
    *(a1 + 48) = 0;
  }

  else
  {
    v9 = *(a1 + 24);
    if (v9)
    {
      if (*(a2 + 23) < 0)
      {
        sub_1DF802ED0(__p, *a2, *(a2 + 8));
        v9 = *(a1 + 24);
      }

      else
      {
        *__p = *a2;
        v19 = *(a2 + 16);
      }

      v16 = sub_1DF80191C(__p, a3, *(a1 + 64), v9, 1);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_connection_send_message(*(a1 + 40), v16);
      xpc_release(v16);
      return 1;
    }

    else
    {
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
      }

      v10 = qword_1ED5FAD60;
      if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
      {
        v11 = *(a2 + 23) >= 0 ? a2 : *a2;
        v12 = *(a1 + 24);
        *buf = 68289538;
        v21 = 0;
        v22 = 2082;
        v23 = &unk_1DF8255EF;
        v24 = 2082;
        v25 = v11;
        v26 = 2050;
        v27 = v12;
        _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to send reply message with raw data, MessageName:%{public, location:escape_only}s, ReplyHanlderIdentifier:%{public}ld}", buf, 0x26u);
        if (qword_1ED5FAD68 != -1)
        {
          dispatch_once(&qword_1ED5FAD68, &unk_1F5AC64A0);
        }
      }

      v13 = qword_1ED5FAD60;
      if (os_signpost_enabled(qword_1ED5FAD60))
      {
        if (*(a2 + 23) >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        v15 = *(a1 + 24);
        *buf = 68289538;
        v21 = 0;
        v22 = 2082;
        v23 = &unk_1DF8255EF;
        v24 = 2082;
        v25 = v14;
        v26 = 2050;
        v27 = v15;
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to send reply message with raw data", "{msg%{public}.0s:Unable to send reply message with raw data, MessageName:%{public, location:escape_only}s, ReplyHanlderIdentifier:%{public}ld}", buf, 0x26u);
      }

      return 0;
    }
  }

  return v8;
}

void sub_1DF813B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF813BC4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AC6508;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12DFAD0);
}

uint64_t sub_1DF813C18(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t sub_1DF813D6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

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

void sub_1DF813DD4(char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1DF813E30(void *a1, void **a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = v4[1];
  if (v5.u32[0] > 1uLL)
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

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = v9[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  sub_1DF813DD4(1, a2);
  return v4;
}

void sub_1DF813FA0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AC6578;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12DFAD0);
}

id sub_1DF814218()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC65B8);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

uint64_t sub_1DF815DF4()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF815F74(uint64_t a1)
{
  if (qword_1ECE5D3F0 != -1)
  {
    dispatch_once(&qword_1ECE5D3F0, &unk_1F5AC65D8);
  }

  v2 = qword_1ECE5D400;
  if (os_log_type_enabled(qword_1ECE5D400, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_1DF7FE000, v2, OS_LOG_TYPE_DEBUG, "#SettingsMirror Received NSUserDefaultsDidChangeNotification", v6, 2u);
  }

  return objc_msgSend_refresh(*(a1 + 32), v3, v4);
}

os_log_t sub_1DF816184()
{
  result = os_log_create("com.apple.LocationSupport", "Internal");
  qword_1ECE5D400 = result;
  return result;
}

void sub_1DF8161B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED5FAD68 != -1)
  {
    dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
  }

  v5 = qword_1ED5FAD60;
  if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = a3;
    _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEBUG, "received daemon start notification for service %@", buf, 0xCu);
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = sub_1DF817410;
  v11[3] = &unk_1F5AC6628;
  v11[4] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v6;
  v14 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v10, v11);
  if (v14)
  {
    sub_1DF7FFED0(v14);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void CLConnectionClient::pause(CLConnectionClient *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v4);
  }

  v6 = *this;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = sub_1DF816470;
  v7[3] = &unk_1F5AC6628;
  v7[4] = v5;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v7);
  if (v10)
  {
    sub_1DF7FFED0(v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v2)
  {
    sub_1DF7FFED0(v2);
  }
}

void sub_1DF816470(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF816534;
  v5 = &unk_1F5AC65F8;
  v1 = a1[7];
  v6 = a1[6];
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[5];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF81651C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1DF7FFED0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF816534(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 8));
  if ((*(v1 + 97) & 1) == 0)
  {
    if (qword_1ED5FAD68 != -1)
    {
      dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
    }

    v3 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Cannot call pause() on a paused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
      }
    }

    v4 = qword_1ED5FAD60;
    if (os_signpost_enabled(qword_1ED5FAD60))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "fPaused";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot call pause() on a paused CLConnectionClient", "{msg%{public}.0s:Cannot call pause() on a paused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED5FAD68 != -1)
      {
        dispatch_once(&qword_1ED5FAD68, &unk_1F5AC68B0);
      }
    }

    v5 = qword_1ED5FAD60;
    if (os_log_type_enabled(qword_1ED5FAD60, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = &unk_1DF8255EF;
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "fPaused";
      _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Cannot call pause() on a paused CLConnectionClient, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/IPC/CLConnectionClient.mm", 93, "pause");
  }

  *(v1 + 97) = 1;
  v2 = *v1;
  if (*v1)
  {

    CLConnection::pause(v2);
  }
}

uint64_t sub_1DF8167F8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF816814(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

uint64_t sub_1DF816824(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF816840(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

uint64_t sub_1DF816850(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF81686C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }
}

void CLConnectionClient::sendMessage(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v6);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = sub_1DF816A08;
  v16[3] = &unk_1F5AC6698;
  v16[5] = v7;
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16[4] = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3321888768;
  v12[2] = sub_1DF816B4C;
  v12[3] = &unk_1F5AC67E0;
  v12[5] = v8;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[1];
  v14 = *a2;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12[4] = v16;
  dispatch_async(v10, v12);
  if (v15)
  {
    sub_1DF7FFED0(v15);
  }

  if (v13)
  {
    sub_1DF7FFED0(v13);
  }

  if (v9)
  {
    sub_1DF7FFED0(v9);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1DF816A08(uint64_t a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v6 = sub_1DF816AD4;
  v7 = &unk_1F5AC6660;
  v3 = *a2;
  v2 = a2[1];
  v8 = *(a1 + 32);
  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (v10)
  {
    sub_1DF7FFED0(v10);
  }
}

void sub_1DF816ABC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF816AD4(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = a1[6];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v5);
  if (v6)
  {
    sub_1DF7FFED0(v6);
  }
}

void sub_1DF816B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF816B4C(void *a1)
{
  v2 = a1[5];
  v3 = a1[7];
  v4 = a1[8];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = a1[4];
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v5 = a1[4];
  }

  v6[0] = v3;
  v6[1] = v4;
  sub_1DF817060(v2, v6, 0, v5);
  if (v4)
  {
    sub_1DF7FFED0(v4);

    sub_1DF7FFED0(v4);
  }
}

void sub_1DF816BDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1DF816BFC(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF816C30(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    sub_1DF7FFED0(v3);
  }
}

void CLConnectionClient::sendMessageWithCompletion(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v6);
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 1;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = sub_1DF816E34;
  v16[3] = &unk_1F5AC6850;
  v16[6] = v7;
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16[4] = a3;
  v16[5] = v18;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_1DF816FCC;
  block[3] = &unk_1F5AC67E0;
  block[5] = v8;
  v13 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a2[1];
  v14 = *a2;
  v15 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v16;
  dispatch_async(v10, block);
  if (v15)
  {
    sub_1DF7FFED0(v15);
  }

  if (v13)
  {
    sub_1DF7FFED0(v13);
  }

  if (v9)
  {
    sub_1DF7FFED0(v9);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Block_object_dispose(v18, 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_1DF816E34(void *a1, uint64_t *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v6 = sub_1DF816F08;
  v7 = &unk_1F5AC6818;
  v3 = *a2;
  v2 = a2[1];
  v9 = a1[5];
  v10 = v3;
  v11 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a1[4];
  v4 = a1[7];
  if (v4 && *(v4 + 8) != -1)
  {
    v6(v5);
  }

  if (v11)
  {
    sub_1DF7FFED0(v11);
  }
}

void sub_1DF816EF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_1DF7FFED0(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF816F08(void *a1)
{
  v1 = *(a1[5] + 8);
  if (*(v1 + 24) == 1)
  {
    v3 = a1[6];
    if (v3)
    {
      *(v1 + 24) = 0;
      v4 = a1[4];
      v5 = a1[7];
      v6 = v3;
      v7 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(v4 + 16))(v4, &v6);
      if (v7)
      {
        sub_1DF7FFED0(v7);
      }
    }
  }
}

void sub_1DF816F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1DF816FA0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DF816FBC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1DF816FCC(void *a1)
{
  v2 = a1[5];
  v3 = a1[8];
  v4[0] = a1[7];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1DF817060(v2, v4, 1, a1[4]);
  if (v3)
  {

    sub_1DF7FFED0(v3);
  }
}

void sub_1DF817048(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1DF7FFED0(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF817060(uint64_t *a1, uint64_t a2, int a3, void (**a4)(void, void))
{
  v7 = *(a2 + 8);
  v15[0] = *a2;
  v15[1] = &v7->__vftable;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1DF80443C(a1, v15, a3, a4);
  if (v7)
  {
    sub_1DF7FFED0(v7);
  }

  v8 = *a1;
  if (!*a1)
  {
    v11 = 0;
    v12 = 0;
    (a4)[2](a4, &v11);
    v10 = v12;
    if (!v12)
    {
      return;
    }

    goto LABEL_9;
  }

  v9 = *(a2 + 8);
  v13 = *a2;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  CLConnection::sendMessage(v8, &v13, a4);
  v10 = v14;
  if (v14)
  {
LABEL_9:
    sub_1DF7FFED0(v10);
  }
}

void sub_1DF817128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_1DF7FFED0(a10);
  }

  _Unwind_Resume(exception_object);
}

void CLConnectionClient::setRequireManualCachedMessageSend(CLConnectionClient *this, char a2)
{
  v2 = *(this + 4);
  v3 = *(this + 5);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *this;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = sub_1DF817218;
  block[3] = &unk_1F5AC6880;
  block[4] = v2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = a2;
  dispatch_async(v4, block);
  if (v6)
  {
    sub_1DF7FFED0(v6);
  }

  if (v3)
  {
    sub_1DF7FFED0(v3);
  }
}

void CLConnectionClient::sendCachedMessages(CLConnectionClient *this)
{
  v3 = *(this + 4);
  v2 = *(this + 5);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_1DF7FFED0(v4);
  }

  v6 = *this;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = sub_1DF817344;
  v7[3] = &unk_1F5AC6628;
  v7[4] = v5;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v3;
  v10 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_async(v6, v7);
  if (v10)
  {
    sub_1DF7FFED0(v10);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v2)
  {
    sub_1DF7FFED0(v2);
  }
}

void sub_1DF817344(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF817408;
  v5 = &unk_1F5AC65F8;
  v1 = a1[7];
  v6 = a1[6];
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[5];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF8173F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1DF7FFED0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF817410(void *a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3321888768;
  v4 = sub_1DF8174D4;
  v5 = &unk_1F5AC65F8;
  v1 = a1[7];
  v6 = a1[6];
  v7 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v2 = a1[5];
  if (v2 && *(v2 + 8) != -1)
  {
    v4(v3);
  }

  if (v7)
  {
    sub_1DF7FFED0(v7);
  }
}

void sub_1DF8174BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_1DF7FFED0(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DF8174D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*&v1->_os_unfair_lock_opaque)
  {
    sub_1DF8020C0(v1);
  }
}

uint64_t sub_1DF8174E8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_1DF7FFED0(v2);
  }

  return a1;
}

void sub_1DF817568(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AC68E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12DFAD0);
}

uint64_t CLWriteStackshot(uint64_t a1, int a2)
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if (qword_1ED5FAE90)
  {
    goto LABEL_2;
  }

  v16 = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 1);
  qword_1ED5FAE90 = v16;
  if (v16)
  {
    off_1ED5FAE88 = dlsym(v16, "WriteStackshotReport");
    v17 = dlsym(qword_1ED5FAE90, "SimulateCrash");
    off_1ED5FAE80 = v17;
    if (off_1ED5FAE88)
    {
      if (v17)
      {
        goto LABEL_2;
      }
    }

    else
    {
      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
      }

      v23 = qword_1ECE5D3F8;
      if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
      {
        *v24 = 0;
        _os_log_impl(&dword_1DF7FE000, v23, OS_LOG_TYPE_FAULT, "CLWriteStackshotReport is NULL", v24, 2u);
      }

      if (off_1ED5FAE80)
      {
        goto LABEL_2;
      }
    }

    if (qword_1ECE5D3E8 != -1)
    {
      dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
    }

    v21 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *v24 = 0;
      v22 = "CLSimulateCrash is NULL";
      goto LABEL_53;
    }
  }

  else
  {
    if (qword_1ECE5D3E8 != -1)
    {
      dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
    }

    v21 = qword_1ECE5D3F8;
    if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      *v24 = 0;
      v22 = "Unable to load CrashReporterSupport framework.";
LABEL_53:
      _os_log_impl(&dword_1DF7FE000, v21, OS_LOG_TYPE_FAULT, v22, v24, 2u);
    }
  }

LABEL_2:
  v6 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v4, a1, 4, *v24);
  v7 = v6;
  if (a2)
  {
    v8 = off_1ED5FAE80;
    if (off_1ED5FAE80)
    {
      v9 = getpid();
      if (v8(v9, 3511749773, v7))
      {
        if (qword_1ECE5D3E8 != -1)
        {
          dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
        }

        v10 = qword_1ECE5D3F8;
        if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_DEBUG))
        {
          *v24 = 0;
          v13 = "Simulated a crash";
LABEL_15:
          v14 = v10;
          v15 = OS_LOG_TYPE_DEBUG;
LABEL_38:
          _os_log_impl(&dword_1DF7FE000, v14, v15, v13, v24, 2u);
          return objc_msgSend_drain(v5, v11, v12, *v24);
        }

        return objc_msgSend_drain(v5, v11, v12, *v24);
      }

      if (qword_1ECE5D3E8 != -1)
      {
        dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
      }

      v19 = qword_1ECE5D3F8;
      if (!os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_DEFAULT))
      {
        return objc_msgSend_drain(v5, v11, v12, *v24);
      }

      *v24 = 0;
      v13 = "#Warning Failed to simulate a crash";
LABEL_37:
      v14 = v19;
      v15 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_38;
    }

    if (qword_1ECE5D3E8 != -1)
    {
      dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
    }

    v18 = qword_1ECE5D3F8;
    if (!os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      return objc_msgSend_drain(v5, v11, v12, *v24);
    }

    *v24 = 0;
    v13 = "CLSimulateCrash is NULL";
LABEL_28:
    v14 = v18;
    v15 = OS_LOG_TYPE_FAULT;
    goto LABEL_38;
  }

  if (!off_1ED5FAE88)
  {
    if (qword_1ECE5D3E8 != -1)
    {
      dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
    }

    v18 = qword_1ECE5D3F8;
    if (!os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_FAULT))
    {
      return objc_msgSend_drain(v5, v11, v12, *v24);
    }

    *v24 = 0;
    v13 = "CLWriteStackshotReport is NULL";
    goto LABEL_28;
  }

  if (!off_1ED5FAE88(v6, 3511749773))
  {
    if (qword_1ECE5D3E8 != -1)
    {
      dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
    }

    v19 = qword_1ECE5D3F8;
    if (!os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_DEFAULT))
    {
      return objc_msgSend_drain(v5, v11, v12, *v24);
    }

    *v24 = 0;
    v13 = "#Warning Failed to write a stackshot";
    goto LABEL_37;
  }

  if (qword_1ECE5D3E8 != -1)
  {
    dispatch_once(&qword_1ECE5D3E8, &unk_1F5AC6920);
  }

  v10 = qword_1ECE5D3F8;
  if (os_log_type_enabled(qword_1ECE5D3F8, OS_LOG_TYPE_DEBUG))
  {
    *v24 = 0;
    v13 = "Wrote a stackshot";
    goto LABEL_15;
  }

  return objc_msgSend_drain(v5, v11, v12, *v24);
}

os_log_t sub_1DF817A20()
{
  result = os_log_create("com.apple.locationd.Support", "Support");
  qword_1ECE5D3F8 = result;
  return result;
}

uint64_t getActivityModelingZone()
{
  if (qword_1ED5FAEA0 != -1)
  {
    dispatch_once(&qword_1ED5FAEA0, &unk_1F5AC6940);
  }

  return qword_1ED5FAE98;
}

void sub_1DF817A98()
{
  zone = malloc_create_zone(0, 0);
  qword_1ED5FAE98 = zone;

  malloc_set_zone_name(zone, "ActivityModelingTokenZone");
}

_BYTE *placeActivityModelingToken(const char *a1, char a2)
{
  if (qword_1ED5FAEA0 != -1)
  {
    dispatch_once(&qword_1ED5FAEA0, &unk_1F5AC6940);
  }

  v4 = malloc_type_zone_malloc(qword_1ED5FAE98, 0x10uLL, 0x100004077774924uLL);
  *v4 = a2;
  strncpy(v4 + 1, a1, 0xFuLL);
  v4[15] = 0;
  return v4;
}

uint64_t sub_1DF8186C4(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_msgSend_stringByAppendingPathComponent_(*(a1 + 32), v3, @"syncget_addenda");
  v7 = objc_msgSend_initWithString_(v2, v5, v4);
  qword_1ECE5D908 = v7;

  return objc_msgSend_createDirectoryAtPath_(CLAutoCohortUtilities, v6, v7);
}

void *sub_1DF8199E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  UnsafeEdges = objc_msgSend_getUnsafeEdges(CLAutoCohortUtilities, v4, v5);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(UnsafeEdges, v7, &v30, v34, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(UnsafeEdges);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = objc_msgSend_objectAtIndexedSubscript_(v14, v9, 0);
        if (!objc_msgSend_objectForKeyedSubscript_(v3, v16, v15))
        {
          v19 = objc_msgSend_set(MEMORY[0x1E695DFA8], v17, v18);
          v21 = objc_msgSend_objectAtIndexedSubscript_(v14, v20, 0);
          objc_msgSend_setObject_forKeyedSubscript_(v3, v22, v19, v21);
        }

        v23 = objc_msgSend_objectAtIndexedSubscript_(v14, v17, 0);
        v25 = objc_msgSend_objectForKeyedSubscript_(v3, v24, v23);
        v27 = objc_msgSend_objectAtIndexedSubscript_(v14, v26, 1);
        objc_msgSend_addObject_(v25, v28, v27);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(UnsafeEdges, v9, &v30, v34, 16);
    }

    while (v11);
  }

  result = objc_msgSend_copy(v3, v9, v10);
  qword_1ED5FAEA8 = result;
  return result;
}

void sub_1DF81A310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, id a16)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a16);
  _Unwind_Resume(a1);
}

void sub_1DF81A33C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_prepareAndRunBlock_(WeakRetained, v3, 0);

  v9 = objc_loadWeakRetained((a1 + 40));
  v6 = objc_msgSend_timer(v9, v4, v5);
  objc_msgSend_shouldFire(v6, v7, v8);
}

void sub_1DF81A8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1DF81A900(uint64_t a1, void *a2)
{
  v14 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v14, v3, *(a1 + 32));
  if (!v5)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"Cohort:%@", *(a1 + 32));
    v7 = v6;
    v10 = objc_msgSend_UTF8String(v7, v8, v9);
    v5 = dispatch_queue_create_with_target_V2(v10, 0, *(*(*(a1 + 40) + 8) + 40));

    objc_msgSend_setObject_forKeyedSubscript_(v14, v11, v5, *(a1 + 32));
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v5;
}

id sub_1DF81A9CC()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC69E0);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

_BYTE *sub_1DF81B328(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  objc_msgSend_ack(*(a1 + 32), a2, a3);
  result = *(a1 + 40);
  if ((result[16] & 1) == 0)
  {
    result = objc_msgSend_shouldBeIdled(result, v4, v5);
    if (result)
    {
      *(*(a1 + 40) + 16) = 1;
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC69E0);
      }

      v7 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(*(a1 + 40) + 8);
        v11 = 138412290;
        v12 = v10;
        _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_DEFAULT, "#Idleness, Silo is being idled: %@", &v11, 0xCu);
      }

      return objc_msgSend_runIdleHandlers(*(a1 + 40), v8, v9);
    }
  }

  return result;
}

BOOL sub_1DF81B878(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_timer(a2, a2, a3);
  objc_msgSend_nextFireDelayRaw(v4, v5, v6);
  if (v4)
  {
    v10 = v9;
    if (v9 != 1.79769313e308)
    {
      v11 = *(a1 + 40);
      if (v11 >= v10)
      {
        objc_msgSend_fireInterval(v4, v7, v8);
        v15 = v14;
        v16 = 1.79769313e308;
        if (v15 != 1.79769313e308)
        {
          v16 = v15 - fmod(*(a1 + 40) - v10, v15);
        }

        objc_msgSend_setNextFireDelay_(v4, v12, v13, v16);
        objc_msgSend_addObject_(*(a1 + 32), v17, v4);
      }

      else
      {
        objc_msgSend_setNextFireDelay_(v4, v7, v8, v10 - v11);
      }
    }
  }

  return v4 != 0;
}

uint64_t sub_1DF81BA20(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  return objc_msgSend_setHandler_(v3, v2, 0);
}

uint64_t sub_1DF81BBBC(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_1ED5FADF0 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1DF81BBFC()
{
  qword_1ED5FAD48 = os_log_create("com.apple.LocationSupport", "Intersilo");

  return MEMORY[0x1EEE66BB8]();
}

id sub_1DF81C298()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6A38);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

void sub_1DF81D77C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _Block_copy(*(a1 + 48));
  objc_msgSend_setTarget_(v3, v5, v4);

  objc_msgSend_retainArguments(v3, v6, v7);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1DF81D888;
  v11[3] = &unk_1E86C8598;
  v8 = *(a1 + 32);
  v12 = *(a1 + 40);
  v9 = v3;
  v13 = v9;
  objc_msgSend_async_(v8, v10, v11);
}

void *sub_1DF81D888(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_valid(*(a1 + 32), a2, a3);
  if (result)
  {
    v6 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v6, sel_invoke, v5);
  }

  return result;
}

void *sub_1DF81D8D4(uint64_t a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_valid(*(a1 + 32), a2, a3);
  if (result)
  {
    result = objc_msgSend_offsiloHandleInvocation_selectorInfo_peer_(*(a1 + 40), v5, *(a1 + 48), *(a1 + 56), *(a1 + 64));
    if (result)
    {
      v8 = objc_msgSend_delegateSilo(*(a1 + 64), v6, v7);
      v11 = objc_msgSend_identifier(v8, v9, v10);
      CLProfilingIdentifySiloInvocation(v11, *(a1 + 48));

      v12 = *(a1 + 48);
      v13 = *(a1 + 32);

      return MEMORY[0x1EEE66B58](v12, sel_invokeWithTarget_, v13);
    }
  }

  return result;
}

void sub_1DF81DEE4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5AC6A68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12DFAD0);
}

id sub_1DF81E1BC()
{
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
  }

  v1 = qword_1ED5FAD48;

  return v1;
}

void sub_1DF81E634(uint64_t a1, const char *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKey_(qword_1ED5FADA8, a2, *(a1 + 32));
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_residentCount(v3, v4, v5) - 1;
    objc_msgSend_setResidentCount_(v6, v8, v7);
    if (!v7)
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v9 = qword_1ED5FAD48;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = objc_msgSend_identifier(*(a1 + 32), v10, v11);
        v14[0] = 68289282;
        v14[1] = 0;
        v15 = 2082;
        v16 = &unk_1DF8255EF;
        v17 = 2114;
        v18 = v12;
        _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Heartbeat tracking terminated, silo:%{public, location:escape_only}@}", v14, 0x1Cu);
      }

      objc_msgSend_removeObjectForKey_(qword_1ED5FADA8, v13, *(a1 + 32));
    }
  }
}

uint64_t sub_1DF81E7B4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_description(a2, v5, v6);
  v10 = objc_msgSend_description(v4, v8, v9);
  v12 = objc_msgSend_compare_(v7, v11, v10);

  return v12;
}

void sub_1DF81E824(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1DF81E998(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *&qword_1ED5FAD58;
  byte_1ED5FAD50 = *(a1 + 40);
  v2 = *(a1 + 32);
  qword_1ED5FAD58 = *&v2;
  byte_1ED5FAD98 = *(a1 + 41);
  if (*(a1 + 42))
  {
    if (v2 > 0.0)
    {
      v3 = (v2 * 1000000000.0);
      v4 = qword_1ED5FADB0;
      v5 = dispatch_time(0, v3);
      dispatch_source_set_timer(v4, v5, v3, v3);
      if (v1 <= 0.0)
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v12 = qword_1ED5FAD48;
        if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
        {
          v13 = 68289282;
          v14 = 0;
          v15 = 2082;
          v16 = &unk_1DF8255EF;
          v17 = 2050;
          v18 = qword_1ED5FAD58;
          _os_log_impl(&dword_1DF7FE000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Heartbeat tracking resumed, interval:%{public}f}", &v13, 0x1Cu);
        }

        dispatch_resume(qword_1ED5FADB0);
      }

      else
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v6 = qword_1ED5FAD48;
        if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
        {
          v13 = 68289282;
          v14 = 0;
          v15 = 2082;
          v16 = &unk_1DF8255EF;
          v17 = 2050;
          v18 = qword_1ED5FAD58;
          v7 = "{msg%{public}.0s:Heartbeat tracking already enabled, interval:%{public}f}";
          v8 = v6;
          v9 = 28;
LABEL_19:
          _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_DEBUG, v7, &v13, v9);
          return;
        }
      }

      return;
    }
  }

  else
  {
    qword_1ED5FAD58 = 0;
  }

  if (v1 <= 0.0)
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v11 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
    {
      v13 = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = &unk_1DF8255EF;
      v7 = "{msg%{public}.0s:Heartbeat tracking already disabled}";
      v8 = v11;
      v9 = 18;
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v10 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
    {
      v13 = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = &unk_1DF8255EF;
      _os_log_impl(&dword_1DF7FE000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Heartbeat tracking suspended}", &v13, 0x12u);
    }

    dispatch_suspend(qword_1ED5FADB0);
  }
}

void sub_1DF81F47C(void *a1, const char *a2, uint64_t a3)
{
  v86 = *MEMORY[0x1E69E9840];
  if (!a1[4])
  {
    v65 = sub_1DF81E1BC();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v74 = 0;
      v75 = 2082;
      v76 = &unk_1DF8255EF;
      v77 = 2082;
      v78 = "assert";
      v79 = 2081;
      v80 = "remapping";
      _os_log_impl(&dword_1DF7FE000, v65, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Service replacement map must be non-nil if set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v66 = sub_1DF81E1BC();
    if (os_signpost_enabled(v66))
    {
      *buf = 68289539;
      v74 = 0;
      v75 = 2082;
      v76 = &unk_1DF8255EF;
      v77 = 2082;
      v78 = "assert";
      v79 = 2081;
      v80 = "remapping";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v66, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Service replacement map must be non-nil if set", "{msg%{public}.0s:Service replacement map must be non-nil if set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v67 = sub_1DF81E1BC();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v74 = 0;
      v75 = 2082;
      v76 = &unk_1DF8255EF;
      v77 = 2082;
      v78 = "assert";
      v79 = 2081;
      v80 = "remapping";
      _os_log_impl(&dword_1DF7FE000, v67, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Service replacement map must be non-nil if set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm", 451, "[CLServiceVendor setServiceReplacementMap:missBehavior:]_block_invoke");
    goto LABEL_67;
  }

  v3 = a1;
  v4 = MEMORY[0x1E695DFA8];
  v5 = objc_msgSend_allKeys(*(a1[5] + 8), a2, a3);
  v7 = objc_msgSend_setWithArray_(v4, v6, v5);

  objc_msgSend_unionSet_(v7, v8, *(v3[5] + 24));
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v69, v85, 16);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = *v70;
  while (2)
  {
    v12 = 0;
    do
    {
      if (*v70 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v69 + 1) + 8 * v12);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v14 = qword_1ED5FAD48;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = v13;
        v18 = objc_msgSend_UTF8String(v13, v16, v17);
        v19 = *(v3 + 12);
        *buf = 68289538;
        v74 = 0;
        v75 = 2082;
        v76 = &unk_1DF8255EF;
        v77 = 2082;
        v78 = v18;
        v79 = 1026;
        LODWORD(v80) = v19;
        _os_log_impl(&dword_1DF7FE000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:service replacement mapping, literalSvcName:%{public, location:escape_only}s, MissBehavior:%{public}d}", buf, 0x22u);
      }

      v20 = sub_1DF7FF70C(v3[4], *(v3 + 12), v13);
      v21 = sub_1DF7FF70C(*(v3[5] + 16), *(v3[5] + 40), v13);
      v23 = v21;
      if (!v20)
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v33 = qword_1ED5FAD48;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v74 = 0;
          v75 = 2082;
          v76 = &unk_1DF8255EF;
          v77 = 2082;
          v78 = "assert";
          v79 = 2081;
          v80 = "newEffectiveSvcName";
          _os_log_impl(&dword_1DF7FE000, v33, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Existing services must not fail to map under new mapping and behavior, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v34 = qword_1ED5FAD48;
        if (os_signpost_enabled(v34))
        {
          *buf = 68289539;
          v74 = 0;
          v75 = 2082;
          v76 = &unk_1DF8255EF;
          v77 = 2082;
          v78 = "assert";
          v79 = 2081;
          v80 = "newEffectiveSvcName";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v34, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Existing services must not fail to map under new mapping and behavior", "{msg%{public}.0s:Existing services must not fail to map under new mapping and behavior, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v3 = qword_1ED5FAD48;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v74 = 0;
          v75 = 2082;
          v76 = &unk_1DF8255EF;
          v77 = 2082;
          v78 = "assert";
          v79 = 2081;
          v80 = "newEffectiveSvcName";
          _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Existing services must not fail to map under new mapping and behavior, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        v35 = 464;
        goto LABEL_33;
      }

      if (!v21)
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v36 = qword_1ED5FAD48;
        if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289539;
          v74 = 0;
          v75 = 2082;
          v76 = &unk_1DF8255EF;
          v77 = 2082;
          v78 = "assert";
          v79 = 2081;
          v80 = "oldEffectiveSvcName";
          _os_log_impl(&dword_1DF7FE000, v36, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Should be impossible for an existing service to fail to map under existing mapping and behavior, and must be non-nil for next test, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v37 = qword_1ED5FAD48;
        if (os_signpost_enabled(v37))
        {
          *buf = 68289539;
          v74 = 0;
          v75 = 2082;
          v76 = &unk_1DF8255EF;
          v77 = 2082;
          v78 = "assert";
          v79 = 2081;
          v80 = "oldEffectiveSvcName";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Should be impossible for an existing service to fail to map under existing mapping and behavior, and must be non-nil for next test", "{msg%{public}.0s:Should be impossible for an existing service to fail to map under existing mapping and behavior, and must be non-nil for next test, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v38 = qword_1ED5FAD48;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 68289539;
          v74 = 0;
          v75 = 2082;
          v76 = &unk_1DF8255EF;
          v77 = 2082;
          v78 = "assert";
          v79 = 2081;
          v80 = "oldEffectiveSvcName";
          _os_log_impl(&dword_1DF7FE000, v38, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Should be impossible for an existing service to fail to map under existing mapping and behavior, and must be non-nil for next test, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        }

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm", 465, "[CLServiceVendor setServiceReplacementMap:missBehavior:]_block_invoke");
LABEL_67:
        __break(1u);
LABEL_68:
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        goto LABEL_17;
      }

      if ((objc_msgSend_isEqual_(v21, v22, v20) & 1) == 0)
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v39 = qword_1ED5FAD48;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          v40 = v23;
          v43 = objc_msgSend_UTF8String(v23, v41, v42);
          v44 = v20;
          v47 = objc_msgSend_UTF8String(v20, v45, v46);
          *buf = 68290051;
          v74 = 0;
          v75 = 2082;
          v76 = &unk_1DF8255EF;
          v77 = 2082;
          v78 = v43;
          v79 = 2082;
          v80 = v47;
          v81 = 2082;
          v82 = "assert";
          v83 = 2081;
          v84 = "[oldEffectiveSvcName isEqual:newEffectiveSvcName]";
          _os_log_impl(&dword_1DF7FE000, v39, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Old and new mappings and behaviors must agree about any service which has started, oldEffectiveSvcName:%{public, location:escape_only}s, newEffectiveSvcName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v48 = qword_1ED5FAD48;
        if (os_signpost_enabled(v48))
        {
          v49 = v23;
          v52 = objc_msgSend_UTF8String(v23, v50, v51);
          v53 = v20;
          v56 = objc_msgSend_UTF8String(v20, v54, v55);
          *buf = 68290051;
          v74 = 0;
          v75 = 2082;
          v76 = &unk_1DF8255EF;
          v77 = 2082;
          v78 = v52;
          v79 = 2082;
          v80 = v56;
          v81 = 2082;
          v82 = "assert";
          v83 = 2081;
          v84 = "[oldEffectiveSvcName isEqual:newEffectiveSvcName]";
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Old and new mappings and behaviors must agree about any service which has started", "{msg%{public}.0s:Old and new mappings and behaviors must agree about any service which has started, oldEffectiveSvcName:%{public, location:escape_only}s, newEffectiveSvcName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
        }

        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v3 = qword_1ED5FAD48;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
        {
          v57 = v23;
          v60 = objc_msgSend_UTF8String(v23, v58, v59);
          v61 = v20;
          v64 = objc_msgSend_UTF8String(v20, v62, v63);
          *buf = 68290051;
          v74 = 0;
          v75 = 2082;
          v76 = &unk_1DF8255EF;
          v77 = 2082;
          v78 = v60;
          v79 = 2082;
          v80 = v64;
          v81 = 2082;
          v82 = "assert";
          v83 = 2081;
          v84 = "[oldEffectiveSvcName isEqual:newEffectiveSvcName]";
          _os_log_impl(&dword_1DF7FE000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Old and new mappings and behaviors must agree about any service which has started, oldEffectiveSvcName:%{public, location:escape_only}s, newEffectiveSvcName:%{public, location:escape_only}s, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x3Au);
        }

        v35 = 466;
LABEL_33:

        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Shared/Intersilo/CLServiceVendor.mm", v35, "[CLServiceVendor setServiceReplacementMap:missBehavior:]_block_invoke");
        goto LABEL_67;
      }

      ++v12;
    }

    while (v10 != v12);
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, &v69, v85, 16);
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_16:

  if (qword_1ED5FAD40 != -1)
  {
    goto LABEL_68;
  }

LABEL_17:
  v25 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v3[4];
    v29 = *(v3 + 12);
    *buf = 68289538;
    v74 = 0;
    v75 = 2082;
    v76 = &unk_1DF8255EF;
    v77 = 2114;
    v78 = v28;
    v79 = 1026;
    LODWORD(v80) = v29;
    _os_log_impl(&dword_1DF7FE000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Configuring service replacement map, ReplacementMap:%{public, location:escape_only}@, MissBehavior:%{public}d}", buf, 0x22u);
  }

  v30 = objc_msgSend_copy(v3[4], v26, v27);
  v31 = v3[5];
  v32 = *(v31 + 16);
  *(v31 + 16) = v30;

  *(v3[5] + 40) = *(v3 + 12);
}

void sub_1DF820918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, id a42)
{
  _Block_object_dispose(&a31, 8);

  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v43 - 176), 8);

  _Unwind_Resume(a1);
}

void sub_1DF82097C(void *a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_containsObject_(*(a1[4] + 24), a2, a1[5]))
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v4 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
    {
      v5 = a1[5];
      v16[0] = 68289282;
      v16[1] = 0;
      v17 = 2082;
      v18 = &unk_1DF8255EF;
      v19 = 2114;
      v20 = v5;
      _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Unavailable service requested, RequestedServiceName:%{public, location:escape_only}@}", v16, 0x1Cu);
    }
  }

  else
  {
    v6 = objc_msgSend_objectForKey_(*(a1[4] + 8), v3, a1[5]);
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = a1[4];
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = sub_1DF7FF70C(v10, *(v9 + 40), a1[5]);
      v12 = *(a1[7] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if (!*(*(a1[7] + 8) + 40))
      {
        *(*(a1[8] + 8) + 40) = objc_msgSend_copy(*(a1[4] + 16), v14, v15);

        MEMORY[0x1EEE66BB8]();
      }
    }
  }
}

void sub_1DF820B34(uint64_t a1, const char *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  if (*(a1 + 80))
  {
    if (objc_msgSend_containsObject_(*(*(a1 + 40) + 24), a2, *(a1 + 32)))
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v4 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 32);
        v6 = *(*(a1 + 40) + 24);
        *buf = 68289538;
        v67 = 0;
        v68 = 2082;
        v69 = &unk_1DF8255EF;
        v70 = 2114;
        v71 = v5;
        v72 = 2114;
        v73 = v6;
        _os_log_impl(&dword_1DF7FE000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Trying to start an unavailable service, RequestedServiceName:%{public, location:escape_only}@, UnavailableServices:%{public, location:escape_only}@}", buf, 0x26u);
      }
    }

    else
    {
      v11 = objc_msgSend_objectForKey_(*(*(a1 + 40) + 8), v3, *(a1 + 32));
      v12 = *(*(a1 + 64) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v14 = *(*(a1 + 40) + 8);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v62, v76, 16);
        if (v17)
        {
          v18 = *v63;
          while (2)
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v63 != v18)
              {
                objc_enumerationMutation(v14);
              }

              v20 = *(*(&v62 + 1) + 8 * i);
              v21 = objc_msgSend_objectForKey_(*(*(a1 + 40) + 8), v16, v20);
              v22 = *(a1 + 72);
              v23 = objc_opt_class();
              if (objc_msgSend_isEqual_(v22, v24, v23))
              {
                objc_storeStrong((*(*(a1 + 64) + 8) + 40), v21);
                if (qword_1ED5FAD40 != -1)
                {
                  dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
                }

                v25 = qword_1ED5FAD48;
                if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
                {
                  v26 = *(a1 + 32);
                  v27 = *(*(*(a1 + 56) + 8) + 40);
                  *buf = 68289794;
                  v67 = 0;
                  v68 = 2082;
                  v69 = &unk_1DF8255EF;
                  v70 = 2114;
                  v71 = v26;
                  v72 = 2114;
                  v73 = v27;
                  v74 = 2114;
                  v75 = v20;
                  _os_log_impl(&dword_1DF7FE000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Reusing replacement service under new name, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@, ReusedFromServiceName:%{public, location:escape_only}@}", buf, 0x30u);
                }

                goto LABEL_27;
              }
            }

            v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v62, v76, 16);
            if (v17)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        v29 = *(*(*(a1 + 64) + 8) + 40);
        if (v29)
        {
          objc_msgSend_setObject_forKey_(*(*(a1 + 40) + 8), v28, v29, *(a1 + 32));
        }

        else
        {
          v30 = _os_activity_create(&dword_1DF7FE000, "CL: #Manufacturing service", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
          os_activity_scope_enter(v30, &state);
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
          }

          v31 = qword_1ED5FAD48;
          if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(a1 + 32);
            v33 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 68289794;
            v67 = 0;
            v68 = 2082;
            v69 = &unk_1DF8255EF;
            v70 = 2082;
            v71 = "activity";
            v72 = 2114;
            v73 = v32;
            v74 = 2114;
            v75 = v33;
            _os_log_impl(&dword_1DF7FE000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Manufacturing service, event:%{public, location:escape_only}s, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", buf, 0x30u);
          }

          v36 = *(a1 + 48);
          if (*(*(a1 + 40) + 32))
          {
            v37 = objc_msgSend_getTimeCoercibleVariantInstance(*(a1 + 48), v34, v35);

            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = sub_1DF821300;
            v58[3] = &unk_1E86C8598;
            v36 = v37;
            v38 = *(a1 + 40);
            v59 = v36;
            v60 = v38;
            objc_msgSend_async_(v36, v39, v58);
            objc_msgSend_addObject_(*(*(a1 + 40) + 32), v40, v36);
          }

          v41 = objc_alloc_init(*(a1 + 72));
          v42 = *(*(a1 + 64) + 8);
          v43 = *(v42 + 40);
          *(v42 + 40) = v41;

          v45 = *(*(*(a1 + 64) + 8) + 40);
          if (v45)
          {
            objc_msgSend_setSilo_(v45, v44, v36);
            objc_msgSend_setVendor_(*(*(*(a1 + 64) + 8) + 40), v46, *(a1 + 40));
            v56[0] = MEMORY[0x1E69E9820];
            v56[1] = 3221225472;
            v56[2] = sub_1DF821310;
            v56[3] = &unk_1E86C8718;
            v57 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
            objc_msgSend_async_(v36, v47, v56);
            objc_msgSend_setObject_forKey_(*(*(a1 + 40) + 8), v48, *(*(*(a1 + 64) + 8) + 40), *(a1 + 32));
            v49 = objc_opt_class();
            sub_1DF804EAC(v49, *(a1 + 32));
          }

          else
          {
            v50 = sub_1DF81E1BC();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
            {
              v51 = *(a1 + 32);
              v52 = *(*(*(a1 + 56) + 8) + 40);
              *buf = 68289538;
              v67 = 0;
              v68 = 2082;
              v69 = &unk_1DF8255EF;
              v70 = 2114;
              v71 = v51;
              v72 = 2114;
              v73 = v52;
              _os_log_impl(&dword_1DF7FE000, v50, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Failed to alloc and init key class for service, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", buf, 0x26u);
            }

            v53 = sub_1DF81E1BC();
            if (os_signpost_enabled(v53))
            {
              v54 = *(a1 + 32);
              v55 = *(*(*(a1 + 56) + 8) + 40);
              *buf = 68289538;
              v67 = 0;
              v68 = 2082;
              v69 = &unk_1DF8255EF;
              v70 = 2114;
              v71 = v54;
              v72 = 2114;
              v73 = v55;
              _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Failed to alloc and init key class for service", "{msg%{public}.0s:Failed to alloc and init key class for service, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", buf, 0x26u);
            }
          }

          os_activity_scope_leave(&state);
        }
      }
    }
  }

  else
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v7 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 68289538;
      v67 = 0;
      v68 = 2082;
      v69 = &unk_1DF8255EF;
      v70 = 2114;
      v71 = v9;
      v72 = 2114;
      v73 = v10;
      _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Requested service not isSupported, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", buf, 0x26u);
    }

    objc_msgSend_addObject_(*(*(a1 + 40) + 24), v8, *(a1 + 32));
  }
}

void sub_1DF82129C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, os_activity_scope_state_s state)
{
  os_activity_scope_leave(&state);

  _Unwind_Resume(a1);
}

void sub_1DF821310(uint64_t a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  objc_msgSend_setValid_(*(*(*(a1 + 32) + 8) + 40), a2, 1);
  objc_msgSend_beginService(*(*(*(a1 + 32) + 8) + 40), v3, v4);
  if (qword_1ED5FAD40 != -1)
  {
    dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
  }

  v5 = qword_1ED5FAD48;
  if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7[0] = 68289282;
    v7[1] = 0;
    v8 = 2082;
    v9 = &unk_1DF8255EF;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_1DF7FE000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Manufacturing service complete, EffectiveServiceName:%{public, location:escape_only}@}", v7, 0x1Cu);
  }
}

void sub_1DF821654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  v28 = v27;

  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1DF821698(void *a1, const char *a2)
{
  v3 = objc_msgSend_objectForKey_(*(a1[4] + 8), a2, a1[5]);
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = objc_opt_class();
  if (v6)
  {
    v9 = objc_msgSend_getSilo(v6, v7, v8);
    v10 = qword_1ED5FADA0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1DF81E634;
    block[3] = &unk_1E86C8638;
    v17 = v9;
    v11 = v9;
    dispatch_barrier_async(v10, block);
  }

  objc_msgSend_removeObjectForKey_(*(a1[4] + 8), v7, a1[5]);
  v13 = a1[5];
  v14 = *(a1[4] + 24);

  return objc_msgSend_addObject_(v14, v12, v13);
}

uint64_t sub_1DF82179C(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_endService(*(*(*(a1 + 32) + 8) + 40), a2, a3);
  v5 = *(*(*(a1 + 32) + 8) + 40);

  return objc_msgSend_setValid_(v5, v4, 0);
}

void sub_1DF821918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_1DF821944(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = sub_1DF7FF70C(*(*(a1 + 32) + 16), *(*(a1 + 32) + 40), *(a1 + 40));

  return MEMORY[0x1EEE66BB8]();
}

void sub_1DF821A68(void *a1, const char *a2)
{
  v3 = objc_msgSend_objectForKey_(*(a1[4] + 8), a2, a1[5]);
  *(*(a1[6] + 8) + 24) = v3 != 0;
}

void sub_1DF821C90(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}