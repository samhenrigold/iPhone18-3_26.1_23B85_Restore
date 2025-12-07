void sub_1003D4AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_10068C9D8(&a27);
  sub_10068C9D8(&a63);
  sub_10068C9D8(&STACK[0x2A0]);
  sub_1003C30B4(&STACK[0x3C0]);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::handleDataPreferredChanged(entitlements::ControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 11));
    v4 = 136315650;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    v8 = 2080;
    v9 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sData preferred SIM changed: %s", &v4, 0x20u);
  }
}

void entitlements::ControllerImpl::startTrackingEntitlement(uint64_t a1, int a2)
{
  sub_100004AA0(&v4, (a1 + 8));
  v3 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }

  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v4, (a1 + 8));
  operator new();
}

uint64_t entitlements::ControllerImpl::scheduleShorterTimer_sync(entitlements::ControllerImpl *this, int a2)
{
  if (*(this + 22) || (v7 = *(this + 11), v8 = *(v7 + 528), v9 = *(v7 + 520), v8 == v9))
  {
    v3 = *(this + 5);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v4 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v5 = "#I %s%sshorter timer already armed";
LABEL_4:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, buf, 0x16u);
    return 1;
  }

  sub_100A821CC(*v9, buf);
  if (a2 && (buf[8] & 1) == 0)
  {
    v3 = *(this + 5);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v11 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v5 = "#I %s%sNot setting a shorter timer as there is no configuration for that in the carrier settings";
    goto LABEL_4;
  }

  v12 = *(this + 46);
  if (v12 != 5)
  {
    if (buf[8])
    {
      v17 = *buf;
    }

    else
    {
      v17 = *&buf[16];
    }

    *(this + 46) = v12 + 1;
    v18 = *(this + 5);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = PersonalityInfo::logPrefix(***(this + 11));
      v20 = *(this + 46);
      *buf = 136315906;
      *&buf[4] = v19;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      v36 = v17;
      v37 = 1024;
      v38 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sStarting a shorter timer for %ld minutes to check for entitlements, current count: %d", buf, 0x26u);
    }

    sub_100004AA0(buf, this + 1);
    v22 = *buf;
    v21 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
    }

    Registry::getTimerService(buf, *(this + 8));
    v23 = *buf;
    sub_10000501C(__p, "Shorter Entitlements Check Timer");
    v24 = *(this + 3);
    object = v24;
    if (v24)
    {
      dispatch_retain(v24);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1003D5224;
    aBlock[3] = &unk_101E49780;
    aBlock[4] = this;
    aBlock[5] = v22;
    v29 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = _Block_copy(aBlock);
    sub_100D23364(v23, __p, 1, 60000000 * v17, &object, &v30);
    v25 = v34;
    v34 = 0;
    v26 = *(this + 22);
    *(this + 22) = v25;
    if (v26)
    {
      (*(*v26 + 8))(v26);
      v27 = v34;
      v34 = 0;
      if (v27)
      {
        (*(*v27 + 8))(v27);
      }
    }

    if (v30)
    {
      _Block_release(v30);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }

    return 1;
  }

  v13 = *(this + 5);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v14)
  {
    v15 = PersonalityInfo::logPrefix(***(this + 11));
    v16 = *(this + 46);
    *buf = 136315650;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1024;
    LODWORD(v36) = v16;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sShort scheduled checks have hit the allowed max: %d", buf, 0x1Cu);
    return 0;
  }

  return result;
}

void sub_1003D519C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D5224(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 88));
          v9 = 136315394;
          v10 = v7;
          v11 = 2080;
          v12 = " ";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sShorter Entitlements Check Timer has fired", &v9, 0x16u);
        }

        v8 = *(v3 + 176);
        *(v3 + 176) = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        entitlements::ControllerImpl::updateAndSchedule_sync(v3, 6);
      }

      sub_100004A34(v5);
    }
  }
}

void entitlements::ControllerImpl::resetFailuresAndBackoffTimer(uint64_t a1, int a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::ifNeeded_UNBLOCK_UNKNOWN_SUBSCRIBER(entitlements::ControllerImpl *this, char *a2)
{
  sub_10000501C(__p, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void (***entitlements::ControllerImpl::sendAuthOnlyIfNeeded_sync(entitlements::ControllerImpl *this))(void *__return_ptr, void)
{
  v7 = 0;
  v8 = 0;
  entitlements::ControllerImpl::findDriverForTask(this, 0, &v7);
  v2 = v7;
  if (v7)
  {
    (**v7)(buf, v7);
    v3 = sub_100A8209C(*buf);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v3)
    {
      v4 = *(this + 5);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = PersonalityInfo::logPrefix(***(this + 11));
        *buf = 136315394;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sSending query for auth-only entitlement", buf, 0x16u);
      }

      v13 = 0;
      *__p = 0u;
      v12 = 0u;
      v10 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_100070A80();
    }

    v2 = 0;
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  return v2;
}

void sub_1003D5764(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, char a17, uint64_t a18)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::requestPhoneNumberRegistration_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = 0;
  v28 = 0;
  entitlements::ControllerImpl::findDriverForTask(a1, 1, &v27);
  v6 = v27;
  if (!v27)
  {
    v10 = *(a1 + 88);
    v11 = *(v10 + 528);
    v12 = *(v10 + 520);
    v13 = *(a1 + 40);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v11 == v12)
    {
      if (!v14)
      {
        goto LABEL_19;
      }

      v20 = PersonalityInfo::logPrefix(**v10);
      v21 = sub_1000714D8(1);
      *buf = 136315650;
      v30 = v20;
      v31 = 2080;
      v32 = " ";
      v33 = 2080;
      v34 = v21;
      v16 = "#W %s%sno driver for task %s";
      v18 = v13;
      v19 = 32;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v16, buf, v19);
      goto LABEL_19;
    }

    if (!v14)
    {
      goto LABEL_19;
    }

    v15 = PersonalityInfo::logPrefix(**v10);
    *buf = 136315394;
    v30 = v15;
    v31 = 2080;
    v32 = " ";
    v16 = "#I %s%sCarrier does not support Phone Number entitlement";
LABEL_15:
    v18 = v13;
    v19 = 22;
    goto LABEL_18;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (!v7)
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v17 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    v30 = v17;
    v31 = 2080;
    v32 = " ";
    v16 = "#W %s%sIgnoring getPhoneNumber request because empty nonce was given";
    goto LABEL_15;
  }

  if ((*(*v27 + 376))(v27, 13, a3))
  {
LABEL_19:
    v22 = 0;
    goto LABEL_20;
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    v30 = v9;
    v31 = 2080;
    v32 = " ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSending Phone Number entitlement request to driver", buf, 0x16u);
  }

  std::mutex::lock((a1 + 2168));
  if (*(a1 + 1967) < 0)
  {
    **(a1 + 1944) = 0;
    *(a1 + 1952) = 0;
  }

  else
  {
    *(a1 + 1944) = 0;
    *(a1 + 1967) = 0;
  }

  if (*(a1 + 1991) < 0)
  {
    **(a1 + 1968) = 0;
    *(a1 + 1976) = 0;
  }

  else
  {
    *(a1 + 1968) = 0;
    *(a1 + 1991) = 0;
  }

  std::mutex::unlock((a1 + 2168));
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v25 = *(a2 + 16);
  }

  v26 = *(a2 + 24);
  (*(*v6 + 80))(v6, __p);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v22 = 1;
LABEL_20:
  if (v28)
  {
    sub_100004A34(v28);
  }

  return v22;
}

void sub_1003D5B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::requestPhoneNumberRegistration(uint64_t a1@<X0>, const char **a3@<X8>)
{
  v9 = 0;
  v10 = 0;
  entitlements::ControllerImpl::findDriverForTask(a1, 1, &v9);
  v5 = v9;
  if (v9)
  {
    ctu::parse_hex();
    (**v5)(&buf, v5);
    sub_100647080();
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 88));
    v8 = sub_1000714D8(1);
    buf = 136315650;
    buf_4 = v7;
    buf_12 = 2080;
    buf_14 = " ";
    v15 = 2080;
    v16 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sNo driver for task %s", &buf, 0x20u);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1003D5F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::isTaskSupported_withExecuteSync(uint64_t a1, int a2)
{
  std::mutex::lock((a1 + 2168));
  if (*(a1 + 2120) == *(a1 + 2112))
  {
    std::mutex::unlock((a1 + 2168));
    v7 = a1;
    v8 = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_1004030C4;
    v9[3] = &unk_101E4AE10;
    v9[4] = a1 + 8;
    v9[5] = &v7;
    v10 = v9;
    v5 = *(a1 + 24);
    if (*(a1 + 32))
    {
      v17 = 0;
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_100069CFC;
      v14 = &unk_101E4AE50;
      v15 = &v17;
      v16 = &v10;
      dispatch_async_and_wait(v5, &block);
    }

    else
    {
      v17 = 0;
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_100058DA0;
      v14 = &unk_101E4AE30;
      v15 = &v17;
      v16 = &v10;
      dispatch_sync(v5, &block);
    }

    LOBYTE(v4) = v17;
  }

  else
  {
    v4 = (*(a1 + 1888) >> a2) & 1;
    std::mutex::unlock((a1 + 2168));
  }

  return v4 & 1;
}

uint64_t entitlements::ControllerImpl::isOptionForTaskSupported(uint64_t a1, unsigned int a2, const __CFString *a3)
{
  std::mutex::lock((a1 + 2168));
  if ((*(a1 + 1888) >> a2))
  {
    v6 = *(a1 + 2112);
    v7 = *(a1 + 2120);
    while (v6 != v7)
    {
      if (sub_1001E4088(*v6, a2))
      {
        v8 = sub_100A8379C(*v6, a3, 0);
        goto LABEL_7;
      }

      v6 += 2;
    }
  }

  v8 = 0;
LABEL_7:
  std::mutex::unlock((a1 + 2168));
  return v8;
}

uint64_t entitlements::ControllerImpl::isTransportAvailable(uint64_t a1, unsigned int a2)
{
  std::mutex::lock((a1 + 2168));
  if (((*(a1 + 1888) >> a2) & 1) == 0 || (v4 = *(a1 + 2112), *(a1 + 2120) == v4))
  {
LABEL_6:
    v7 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    while ((sub_1001E4088(*(v4 + v5), a2) & 1) == 0)
    {
      ++v6;
      v4 = *(a1 + 2112);
      v5 += 16;
      if (v6 >= (*(a1 + 2120) - v4) >> 4)
      {
        goto LABEL_6;
      }
    }

    v7 = (*(*(a1 + 2136) + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v6) & 1;
  }

  std::mutex::unlock((a1 + 2168));
  return v7;
}

uint64_t entitlements::ControllerImpl::transportAvailability(entitlements::ControllerImpl *this)
{
  std::mutex::lock((this + 2168));
  v2 = *(this + 264);
  if (*(this + 265) == v2)
  {
    v5 = 0;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = sub_100A80CB4(*(v2 + v3));
      if (((*(*(this + 267) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1) != 0 && *(this + 80) == 1)
      {
        v5 |= v7;
      }

      else
      {
        v6 |= v7;
      }

      ++v4;
      v2 = *(this + 264);
      v3 += 16;
    }

    while (v4 < (*(this + 265) - v2) >> 4);
  }

  std::mutex::unlock((this + 2168));
  return v5;
}

void entitlements::ControllerImpl::getPushTopic(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v4 = *(a1 + 104);
  v5 = *(a1 + 112);
  if (v4 == v5)
  {
LABEL_9:
    *a3 = 0;
  }

  else
  {
    v6 = a2;
    while (1)
    {
      v7 = *(v4 + 8);
      v9 = *v4;
      v10 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      a1 = entitlements::ControllerImpl::supportPushTopicOnDriver(a1, &v9, v6);
      v8 = a1;
      if (v7)
      {
        sub_100004A34(v7);
      }

      if (v8)
      {
        break;
      }

      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_9;
      }
    }

    (***v4)(&v9);
    sub_100A83948(v9, v6, a3);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_1003D6504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::supportPushTopicOnDriver(uint64_t a1, void (****a2)(uint64_t *__return_ptr), signed int a3)
{
  v7 = 0;
  v8 = 0;
  (***a2)(&v7);
  v4 = sub_100A80E30(v7);
  v5 = 0;
  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 == 6)
      {
        v5 = (v4 >> 11) & 1;
        goto LABEL_25;
      }

      a3 = 8;
    }

    else
    {
      switch(a3)
      {
        case 8:
          v5 = (sub_100A80CBC(v7) & 3) != 0;
          goto LABEL_25;
        case 9:
          a3 = 11;
          break;
        case 10:
          a3 = 1;
          break;
        default:
          goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v5 = (v4 >> 10) & 1;
      goto LABEL_25;
    }

    if (a3 == 4)
    {
      a3 = 7;
    }

    else
    {
      a3 = 6;
    }

    goto LABEL_24;
  }

  if (a3 == 1)
  {
    if ((v4 & 0x80) != 0)
    {
      v5 = 1;
    }

    else
    {
      v5 = (v4 >> 8) & 1;
    }
  }

  else if (a3 == 2)
  {
LABEL_24:
    v5 = sub_1001E4088(v7, a3);
  }

LABEL_25:
  if (v8)
  {
    sub_100004A34(v8);
  }

  return v5;
}

void sub_1003D6678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::subscribeForPushNotificationIfNeeded(uint64_t a1, int a2, uint64_t a3)
{
  v9 = a1;
  sub_100004AA0(&v7, (a1 + 8));
  v6 = v8;
  v10 = v7;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v12 = a2;
  sub_1000224C8(&v13, a3);
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  operator new();
}

void sub_1003D6828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void entitlements::ControllerImpl::recalculateEntitlementsDetailed_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 1;
  v9 = 1;
  v8 = 1;
  operator new();
}

void sub_1003D6960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100072048(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::readEntitlementsCache_sync(entitlements::ControllerImpl *this)
{
  v2 = *(this + 5);
  if (*(this + 520))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10176F6E4(this);
    }

    return;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v3;
    v22 = 2080;
    *v23 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sread entitlement cache", buf, 0x16u);
  }

  data = 0;
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*(this + 8));
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
  if (!v10)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_13:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_14:
  (*(*v12 + 24))(&v18, v12, ***(this + 11) + 24, @"entitlement_results", kCarrierEntitlementsWalletDomain, 0, 4);
  sub_1001B1A54(&data, &v18);
  sub_10000A1EC(&v18);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (data)
  {
    v18 = CFPropertyListCreateWithData(0, data, 0, 0, 0);
    *buf = 0;
    sub_100138C38(buf, &v18);
    v14 = v20;
    v20 = *buf;
    *buf = v14;
    sub_10001021C(buf);
  }

  if (v20)
  {
    entitlements::ControllerImpl::entitlementsSnapshotFromDict_sync(buf, v20);
  }

  sub_10006EA88(buf, 0);
  sub_1003D78E4(this + 416, buf);
  sub_10006DCAC(v27, v27[1]);
  sub_10006EC28(v26, v26[1]);
  sub_10006DCAC(v25, v25[1]);
  sub_10006DCAC(&buf[8], *&v23[2]);
  v15 = *(this + 5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(***(this + 11));
    v17 = asStringBool(v20 != 0);
    *buf = 136315650;
    *&buf[4] = v16;
    v22 = 2080;
    *v23 = " ";
    *&v23[8] = 2080;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sRetrieved cached entitlements: dictPresent=%s", buf, 0x20u);
  }

  sub_10002D760(&data);
  sub_10001021C(&v20);
}

void sub_1003D6D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_1003C30B4(va2);
  sub_10002D760(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

BOOL sub_1003D6DC0(void *a1, void *a2)
{
  if (a1[3] != a2[3])
  {
    return 1;
  }

  v2 = a1[1];
  if (v2 != a1 + 2)
  {
    v3 = a2[1];
    do
    {
      v4 = *(v2 + 7) == *(v3 + 7) && *(v2 + 8) == *(v3 + 8);
      if (!v4)
      {
        return 1;
      }

      v5 = v2[1];
      v6 = v2;
      if (v5)
      {
        do
        {
          v2 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v2 = v6[2];
          v4 = *v2 == v6;
          v6 = v2;
        }

        while (!v4);
      }

      v7 = v3[1];
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
        do
        {
          v8 = v3[2];
          v4 = *v8 == v3;
          v3 = v8;
        }

        while (!v4);
      }

      v3 = v8;
    }

    while (v2 != a1 + 2);
  }

  if (a1[9] != a2[9])
  {
    return 1;
  }

  v9 = a1[7];
  v10 = a1 + 8;
  if (v9 == a1 + 8)
  {
    return 0;
  }

  v11 = a2[7];
  do
  {
    v12 = *(v9 + 8) == *(v11 + 8) && v9[5] == v11[5];
    result = !v12;
    if (!v12)
    {
      break;
    }

    v14 = v9[1];
    v15 = v9;
    if (v14)
    {
      do
      {
        v9 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      do
      {
        v9 = v15[2];
        v4 = *v9 == v15;
        v15 = v9;
      }

      while (!v4);
    }

    v16 = v11[1];
    if (v16)
    {
      do
      {
        v17 = v16;
        v16 = *v16;
      }

      while (v16);
    }

    else
    {
      do
      {
        v17 = v11[2];
        v4 = *v17 == v11;
        v11 = v17;
      }

      while (!v4);
    }

    v11 = v17;
  }

  while (v9 != v10);
  return result;
}

void entitlements::ControllerImpl::generateNotification_sync(entitlements::ControllerImpl *this)
{
  std::mutex::lock((this + 880));
  if (*(this + 1064) == 1 && !sub_1003D6DC0(this + 120, this + 26) && *(this + 952) == 1 && (sub_10000FC88(this + 118, 0, this + 944, 0x17u, this + 24) & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    sub_1003D7CDC(this + 960, this + 208);
    v3 = *(this + 24);
    if ((*(this + 952) & 1) == 0)
    {
      *(this + 952) = 1;
    }

    *(this + 118) = v3;
    v2 = 1;
  }

  std::mutex::unlock((this + 880));
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v4 = *(this + 33);
  if (v4 != (this + 272))
  {
    do
    {
      if (*(v4 + 5))
      {
        v39 = 0u;
        v40 = 0u;
        v38 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100A3B824(*(v4 + 5), buf);
        v5 = *buf == *&buf[8] && *&buf[24] == 0;
        if (!v5 || (BYTE9(v38) & 1) != 0 || v39 || v40)
        {
          v32 = v4 + 32;
          v6 = sub_100405218(&v35, v4 + 8, &unk_101802C98, &v32);
          if (v6 + 5 != buf)
          {
            sub_100172460(v6 + 5, *buf, *&buf[8], (*&buf[8] - *buf) >> 6);
          }

          v8 = *&buf[24];
          v7 = v38;
          if (v38)
          {
            atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
          }

          v9 = v6[9];
          v6[8] = v8;
          v6[9] = v7;
          if (v9)
          {
            sub_100004A34(v9);
          }

          *(v6 + 40) = WORD4(v38);
          v10 = v39;
          if (*(&v39 + 1))
          {
            atomic_fetch_add_explicit((*(&v39 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v11 = v6[12];
          *(v6 + 11) = v10;
          if (v11)
          {
            sub_100004A34(v11);
          }

          v12 = v40;
          if (*(&v40 + 1))
          {
            atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v13 = v6[14];
          *(v6 + 13) = v12;
          if (v13)
          {
            sub_100004A34(v13);
          }
        }

        if (*(&v40 + 1))
        {
          sub_100004A34(*(&v40 + 1));
        }

        if (*(&v39 + 1))
        {
          sub_100004A34(*(&v39 + 1));
        }

        if (v38)
        {
          sub_100004A34(v38);
        }

        v32 = buf;
        sub_10013DFEC(&v32);
      }

      v14 = *(v4 + 1);
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
          v15 = *(v4 + 2);
          v5 = *v15 == v4;
          v4 = v15;
        }

        while (!v5);
      }

      v4 = v15;
    }

    while (v15 != (this + 272));
  }

  v34 = 0;
  std::mutex::lock((this + 2168));
  v34 = *(this + 236);
  std::mutex::unlock((this + 2168));
  v32 = 0;
  v33 = 0;
  entitlements::ControllerImpl::findDriverForTask(this, 0, &v32);
  ServiceMap = Registry::getServiceMap(*(this + 8));
  v17 = ServiceMap;
  if (v18 < 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(ServiceMap);
  *buf = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, buf);
  if (v22)
  {
    v23 = v22[3];
    v24 = v22[4];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v24);
      v25 = 0;
      goto LABEL_53;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v17);
  v24 = 0;
  v25 = 1;
LABEL_53:
  v26 = ***(this + 11);
  if (v32)
  {
    v27 = sub_1009C2E38(v32);
  }

  else
  {
    v27 = 0;
  }

  (*(*v23 + 40))(v23, v26 + 24, this + 192, this + 216, &v35, this + 320, &v34, v27);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  v28 = *(this + 5);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v29)
    {
      v30 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315394;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sGenerating entitlement changed events", buf, 0x16u);
    }

    entitlements::ControllerImpl::entitlementsSnapshotAsDict();
  }

  if (v29)
  {
    v31 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v31;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sEntitlement results have not changed, not sending entitlement_changed event", buf, 0x16u);
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  sub_10004F340(&v35, v36[0]);
}

void sub_1003D7474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t entitlements::ControllerImpl::getEntitlementResult(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEBUG))
  {
    sub_10176F770(a1, v2);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  sub_10006EA88(&v7, 0);
  std::mutex::lock((a1 + 2168));
  LOBYTE(v7) = *(a1 + 1776);
  if (&v7 != (a1 + 1776))
  {
    sub_10006EAC4(&v7 + 1, *(a1 + 1784), (a1 + 1792));
    sub_10006FCD8(&v9, *(a1 + 1808), (a1 + 1816));
    sub_10006FB64(&v10 + 1, *(a1 + 1832), (a1 + 1840));
    sub_10006FA00(&v12, *(a1 + 1856), (a1 + 1864));
  }

  v4 = *(a1 + 1880);
  std::mutex::unlock((a1 + 2168));
  v5 = sub_100071FDC(&v7, v2);
  if ((v5 & 0x100000000) == 0)
  {
    if ((v4 >> v2))
    {
      entitlements::ControllerImpl::startTrackingEntitlement(a1, v2);
    }

    v5 = 6;
  }

  sub_10006DCAC(&v12, *(&v12 + 1));
  sub_10006EC28(&v10 + 8, v11);
  sub_10006DCAC(&v9, *(&v9 + 1));
  sub_10006DCAC(&v7 + 8, v8);
  return v5;
}

void entitlements::ControllerImpl::stopTrackingEntitlement(uint64_t a1, int a2)
{
  sub_100004AA0(&v4, (a1 + 8));
  v3 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }

  v4 = 0;
  v5 = 0;
  sub_100004AA0(&v4, (a1 + 8));
  operator new();
}

void entitlements::ControllerImpl::entitlementsSnapshotFromDict_sync(uint64_t *__return_ptr a1@<X8>, const __CFDictionary *a3@<X1>)
{
  v3 = a3;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  a1[12] = 0;
  sub_10006EA88(a1, 0);
  v4 = 0;
  operator new();
}

void sub_1003D78C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100072048(va);
  sub_1003C30B4(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D78E4(uint64_t a1, char *a2)
{
  v4 = *(a1 + 104);
  v6 = *a2;
  v5 = a2 + 8;
  *a1 = v6;
  if (v4 == 1)
  {
    sub_10004645C((a1 + 8), v5);
    sub_10004645C((a1 + 32), a2 + 4);
    sub_1003ED114((a1 + 56), a2 + 7);
    sub_10004645C((a1 + 80), a2 + 10);
  }

  else
  {
    *(a1 + 8) = *(a2 + 1);
    v7 = a2 + 16;
    v8 = *(a2 + 2);
    *(a1 + 16) = v8;
    v9 = a1 + 16;
    v10 = *(a2 + 3);
    *(a1 + 24) = v10;
    if (v10)
    {
      *(v8 + 16) = v9;
      *v5 = v7;
      *v7 = 0;
      *(a2 + 3) = 0;
    }

    else
    {
      *(a1 + 8) = v9;
    }

    *(a1 + 32) = *(a2 + 4);
    v11 = a2 + 40;
    v12 = *(a2 + 5);
    *(a1 + 40) = v12;
    v13 = a1 + 40;
    v14 = *(a2 + 6);
    *(a1 + 48) = v14;
    if (v14)
    {
      *(v12 + 16) = v13;
      *(a2 + 4) = v11;
      *v11 = 0;
      *(a2 + 6) = 0;
    }

    else
    {
      *(a1 + 32) = v13;
    }

    *(a1 + 56) = *(a2 + 7);
    v15 = a2 + 64;
    v16 = *(a2 + 8);
    *(a1 + 64) = v16;
    v17 = a1 + 64;
    v18 = *(a2 + 9);
    *(a1 + 72) = v18;
    if (v18)
    {
      *(v16 + 16) = v17;
      *(a2 + 7) = v15;
      *v15 = 0;
      *(a2 + 9) = 0;
    }

    else
    {
      *(a1 + 56) = v17;
    }

    *(a1 + 80) = *(a2 + 10);
    v19 = a2 + 88;
    v20 = *(a2 + 11);
    *(a1 + 88) = v20;
    v21 = a1 + 88;
    v22 = *(a2 + 12);
    *(a1 + 96) = v22;
    if (v22)
    {
      *(v20 + 16) = v21;
      *(a2 + 10) = v19;
      *v19 = 0;
      *(a2 + 12) = 0;
    }

    else
    {
      *(a1 + 80) = v21;
    }

    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1003D7C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003D7CDC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 104);
  *a1 = *a2;
  if (v4 == 1)
  {
    if (a1 != a2)
    {
      sub_10006EAC4((a1 + 8), *(a2 + 8), (a2 + 16));
      sub_10006FCD8((a1 + 32), *(a2 + 32), (a2 + 40));
      sub_10006FB64((a1 + 56), *(a2 + 56), (a2 + 64));
      sub_10006FA00((a1 + 80), *(a2 + 80), (a2 + 88));
    }
  }

  else
  {
    sub_100172EF0((a1 + 8), a2 + 8);
    sub_1003ED180((a1 + 32), a2 + 32);
    sub_1003ED1D8((a1 + 56), a2 + 56);
    sub_1003ED230((a1 + 80), a2 + 80);
    *(a1 + 104) = 1;
  }

  return a1;
}

void sub_1003D7D9C(_Unwind_Exception *a1)
{
  sub_10006EC28((v1 + 7), v1[8]);
  sub_10006DCAC((v1 + 4), v1[5]);
  sub_10006DCAC((v1 + 1), v1[2]);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::schedulePNRprefetchIfNeeded(entitlements::ControllerImpl *this)
{
  if (!*(this + 216) && entitlements::ControllerImpl::shouldQueryPNRprefetch(this))
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315650;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v19 = 2048;
      v20 = 5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPNR prefetch: scheduling in %ld seconds", buf, 0x20u);
    }

    sub_100004AA0(buf, this + 1);
    v5 = *buf;
    v4 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
    }

    Registry::getTimerService(buf, *(this + 8));
    v6 = *buf;
    sub_10000501C(__p, "PNR prefetch Timer");
    v7 = *(this + 3);
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1174405120;
    v11[2] = sub_1003D9064;
    v11[3] = &unk_101E497B0;
    v11[4] = v5;
    v12 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock = _Block_copy(v11);
    sub_100D23364(v6, __p, 1, 5000000, &object, &aBlock);
    v8 = v17;
    v17 = 0;
    v9 = *(this + 216);
    *(this + 216) = v8;
    if (v9)
    {
      (*(*v9 + 8))(v9);
      v10 = v17;
      v17 = 0;
      if (v10)
      {
        (*(*v10 + 8))(v10);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_1003D8058(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::recheckEntitlements(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100004AA0(&v4, (a1 + 8));
  v3 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v3);
  }

  sub_10006F1C0();
}

void sub_1003D8248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::allSupportedUnknown_sync(entitlements::ControllerImpl *this)
{
  v3 = 1;
  v2[0] = this;
  v2[1] = &v3;
  v4[0] = off_101E4B2F8;
  v4[1] = this;
  v4[2] = v2;
  v4[3] = v4;
  sub_1000700B8(v4);
  sub_100072048(v4);
  return v3;
}

void sub_1003D8300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100072048(va);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::getLastReportedEntitlements(entitlements::ControllerImpl *this@<X0>, _OWORD *a2@<X8>)
{
  std::mutex::lock((this + 880));
  *a2 = *(this + 59);
  sub_1003ED288((a2 + 1), this + 960);

  std::mutex::unlock((this + 880));
}

uint64_t entitlements::ControllerImpl::isSupportedEntitlement(uint64_t a1, char a2)
{
  std::mutex::lock((a1 + 2168));
  v4 = *(a1 + 1880) >> a2;
  std::mutex::unlock((a1 + 2168));
  return v4 & 1;
}

void entitlements::ControllerImpl::makePrefetchPNRNonce(entitlements::ControllerImpl *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 856) == 1)
  {
    *a2 = *(this + 824);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v4 = *(this + 104);
    v5 = *(this + 105);

    sub_100034C50((a2 + 8), v4, v5, v5 - v4);
  }

  else
  {
    v12 = 0;
    v13 = 0;
    entitlements::ControllerImpl::findDriverForTask(this, 1, &v12);
    if (v12)
    {
      if ((atomic_load_explicit(&qword_101FBA328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBA328))
      {
        sub_10000501C(&qword_101FBA310, "prefetch90123456789012345");
        __cxa_atexit(&std::string::~string, &qword_101FBA310, &_mh_execute_header);
        __cxa_guard_release(&qword_101FBA328);
      }

      if (byte_101FBA327 >= 0)
      {
        v6 = &qword_101FBA310;
      }

      else
      {
        v6 = qword_101FBA310;
      }

      if (byte_101FBA327 >= 0)
      {
        v7 = byte_101FBA327;
      }

      else
      {
        v7 = unk_101FBA318;
      }

      memset(v11, 0, sizeof(v11));
      sub_1001E0D88(v11, v6, &v6[v7], v7);
      (**v12)(buf);
      sub_100647080();
    }

    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(***(this + 11));
      v10 = sub_1000714D8(1);
      *buf = 136315650;
      v15 = v9;
      __p_4 = 2080;
      __p_6 = " ";
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sNo driver for task %s", buf, 0x20u);
    }

    *a2 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    if (v13)
    {
      sub_100004A34(v13);
    }
  }
}

void sub_1003D869C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *a18, uint64_t a19)
{
  __cxa_guard_abort(&qword_101FBA328);
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003D872C(uint64_t a1, char *a2)
{
  v3 = *a2;
  if (*(a1 + 32) == 1)
  {
    *a1 = v3;
    sub_100015184(a1 + 8, (a2 + 8));
  }

  else
  {
    *a1 = v3;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 3);
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(a1 + 32) = 1;
  }

  return a1;
}

void entitlements::ControllerImpl::queryPNRprefetchIfNeeded(entitlements::ControllerImpl *this)
{
  v2 = *(this + 216);
  *(this + 216) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (entitlements::ControllerImpl::shouldQueryPNRprefetch(this))
  {
    memset(__p, 0, 32);
    entitlements::ControllerImpl::makePrefetchPNRNonce(this, __p);
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315394;
      *&buf[4] = v4;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sPNR prefetch: GO", buf, 0x16u);
    }

    v10 = 0;
    ctu::base64::encode();
    *buf = v7;
    *&buf[16] = v8;
    LOBYTE(v10) = __p[0];
    entitlements::ControllerImpl::requestPhoneNumberRegistration_sync(this, buf, 0);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (__p[1])
    {
      __p[2] = __p[1];
      operator delete(__p[1]);
    }
  }

  else
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(this + 11));
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = v6;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sPNR prefetch: no longer interested", __p, 0x16u);
    }
  }
}

void sub_1003D8984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::shouldQueryPNRprefetch(entitlements::ControllerImpl *this)
{
  v41 = 0;
  v42 = 0;
  entitlements::ControllerImpl::findDriverForTask(this, 1, &v41);
  v2 = v41;
  v3 = *(this + 11);
  if (!v41)
  {
    if (v3[66] == v3[65])
    {
      goto LABEL_18;
    }

    v9 = *(this + 5);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v10 = PersonalityInfo::logPrefix(**v3);
    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v11 = "#I %s%sPNR prefetch: getPhoneNumber is not supported";
    v12 = v9;
    goto LABEL_17;
  }

  v4 = **v3;
  if (*(v4 + 49))
  {
    goto LABEL_18;
  }

  v5 = sub_100007A6C(this + 1584, v4 + 24);
  if ((this + 1592) == v5 || *(v5 + 136) != 1)
  {
    goto LABEL_18;
  }

  v6 = *(v5 + 79);
  if (v6 < 0)
  {
    v6 = *(v5 + 64);
  }

  v7 = *(v5 + 104);
  if (v6)
  {
    v8 = v7 == 5;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    ServiceMap = Registry::getServiceMap(*(this + 8));
    v16 = ServiceMap;
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

    std::mutex::lock(ServiceMap);
    *buf = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, buf);
    if (v21)
    {
      v23 = v21[3];
      v22 = v21[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
LABEL_30:
        (*(*v23 + 96))(&cf, v23, *(***(this + 11) + 52), 1, @"RCS", 0, 0);
        v24 = cf;
        sub_10000A1EC(&cf);
        if (v22)
        {
          sub_100004A34(v22);
        }

        if (!v24)
        {
          goto LABEL_18;
        }

        v2 = v41;
        goto LABEL_34;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    goto LABEL_30;
  }

  if (v6)
  {
LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

LABEL_34:
  (**v2)(buf, v2);
  v25 = sub_100A8379C(*buf, @"AllowSelfInitiatedPNR", 1);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (!v25)
  {
    v26 = *(this + 5);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v28 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v11 = "#I %s%sPNR prefetch: forbidden by carrier";
    goto LABEL_42;
  }

  if (*(this + 1725) == 1)
  {
    v26 = *(this + 5);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v27 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v27;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v11 = "#I %s%sPNR prefetch: getPhoneNumber was previously fetched. Seeing signature in storage";
    goto LABEL_42;
  }

  if (((*(*v2 + 360))(v2, 13) & 1) != 0 || *(this + 216))
  {
    goto LABEL_18;
  }

  sub_10020CBC8(*(this + 8), buf);
  (*(**buf + 24))(&cf);
  v29 = cf;
  v43 = 0;
  if (cf)
  {
    v30 = CFGetTypeID(cf);
    if (v30 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v43, v29, v31);
    }
  }

  v32 = v43;
  sub_10000A1EC(&cf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  (**v2)(buf, v2);
  v33 = sub_100A8379C(*buf, @"ProcessPNRAvailabilityStatus", 0);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v32 && (!v33 || (*(this + 1726) & 1) != 0 || (*(***(this + 11) + 96) & 1) != 0))
  {
    v26 = *(this + 5);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    v34 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v34;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v11 = "#I %s%sPNR prefetch: getPhoneNumber was fetched already";
LABEL_42:
    v12 = v26;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
    goto LABEL_18;
  }

  v35 = *(this + 5);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = PersonalityInfo::logPrefix(***(this + 11));
    v37 = asStringBool(v32);
    v38 = asStringBool(v6 == 0);
    v39 = asStringBool(v7 == 5);
    *buf = 136316162;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v45 = 2080;
    v46 = v37;
    v47 = 2080;
    v48 = v38;
    v49 = 2080;
    v50 = v39;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sPNR prefetch: Need it. wasIssued:%s, no_phonenumber:%s, has_pnr_phonenumber:%s", buf, 0x34u);
  }

  v13 = 1;
LABEL_19:
  if (v42)
  {
    sub_100004A34(v42);
  }

  return v13;
}

void sub_1003D8FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D9064(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        entitlements::ControllerImpl::queryPNRprefetchIfNeeded(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1003D90D8(uint64_t result, uint64_t a2)
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

void sub_1003D90F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void entitlements::ControllerImpl::handleMsisdnChangeEvent(entitlements::ControllerImpl *this)
{
  ServiceMap = Registry::getServiceMap(*(this + 8));
  v3 = ServiceMap;
  if (v4 < 0)
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
  *&v45.var0 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v45);
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
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  (*(*v10 + 40))(v10, ***(this + 11) + 24, 1, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  std::mutex::lock((this + 2168));
  if (*(this + 1967) < 0)
  {
    **(this + 243) = 0;
    *(this + 244) = 0;
  }

  else
  {
    *(this + 1944) = 0;
    *(this + 1967) = 0;
  }

  if (*(this + 1991) < 0)
  {
    **(this + 246) = 0;
    *(this + 247) = 0;
  }

  else
  {
    *(this + 1968) = 0;
    *(this + 1991) = 0;
  }

  *(this + 2106) = 1;
  std::mutex::unlock((this + 2168));
  v12 = Registry::getServiceMap(*(this + 8));
  v13 = v12;
  v15 = v14;
  if (v14 < 0)
  {
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v12);
  *&v45.var0 = v15;
  v19 = sub_100009510(&v13[1].__m_.__sig, &v45);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v13);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v13);
  v20 = 0;
  v22 = 1;
LABEL_25:
  v23 = kCarrierEntitlementsWalletDomain;
  (*(*v21 + 32))(v21, ***(this + 11) + 24, @"signature", kCarrierEntitlementsWalletDomain, 0, 4);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  *(this + 1725) = 0;
  v24 = Registry::getServiceMap(*(this + 8));
  v25 = v24;
  if (v14 < 0)
  {
    v26 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v27 = 5381;
    do
    {
      v14 = v27;
      v28 = *v26++;
      v27 = (33 * v27) ^ v28;
    }

    while (v28);
  }

  std::mutex::lock(v24);
  *&v45.var0 = v14;
  v29 = sub_100009510(&v25[1].__m_.__sig, &v45);
  if (v29)
  {
    v31 = v29[3];
    v30 = v29[4];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
      v32 = 0;
      goto LABEL_35;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v25);
  v30 = 0;
  v32 = 1;
LABEL_35:
  (*(*v31 + 32))(v31, ***(this + 11) + 24, @"phone-number-prefetched", v23, 0, 2);
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  *(this + 1726) = 0;
  v33 = Registry::getServiceMap(*(this + 8));
  v34 = v33;
  if (v35 < 0)
  {
    v36 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v37 = 5381;
    do
    {
      v35 = v37;
      v38 = *v36++;
      v37 = (33 * v37) ^ v38;
    }

    while (v38);
  }

  std::mutex::lock(v33);
  *&v45.var0 = v35;
  v39 = sub_100009510(&v34[1].__m_.__sig, &v45);
  if (!v39)
  {
    v41 = 0;
LABEL_45:
    std::mutex::unlock(v34);
    v40 = 0;
    v42 = 1;
    if (!v41)
    {
      goto LABEL_60;
    }

    goto LABEL_46;
  }

  v41 = v39[3];
  v40 = v39[4];
  if (!v40)
  {
    goto LABEL_45;
  }

  atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v34);
  atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v40);
  v42 = 0;
  if (!v41)
  {
    goto LABEL_60;
  }

LABEL_46:
  v43 = **(this + 11);
  if (*(*v43 + 49))
  {
    v44 = *(*v43 + 49) == 3;
  }

  else
  {
    v44 = 1;
  }

  if (!v44)
  {
    goto LABEL_60;
  }

  CSIPhoneNumber::CSIPhoneNumber(&v45);
  (*(*v41 + 312))(v41, v43, &v45);
  if (v53 < 0)
  {
    operator delete(__p);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  if (v49 < 0)
  {
    operator delete(v48);
  }

  if (v47 < 0)
  {
    operator delete(v46);
  }

  if ((*(&v45.var2.__rep_.__l + 23) & 0x80000000) == 0)
  {
LABEL_60:
    if (v42)
    {
      return;
    }

    goto LABEL_61;
  }

  operator delete(v45.var2.__rep_.__l.__data_);
  if (v42)
  {
    return;
  }

LABEL_61:
  sub_100004A34(v40);
}

void sub_1003D95CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10034F8E8(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1003D9600()
{
  if (v0)
  {
    JUMPOUT(0x1003D95F4);
  }

  JUMPOUT(0x1003D95ECLL);
}

void sub_1003D9610()
{
  if (v0)
  {
    JUMPOUT(0x1003D95F4);
  }

  JUMPOUT(0x1003D95ECLL);
}

uint64_t entitlements::ControllerImpl::isAllowedImsi(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 528);
  v5 = *(v3 + 520);
  if (v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    theArray = 0;
    sub_100A834D0(*v5, &theArray);
    v7 = theArray;
    if (theArray)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v16, *a2, *(a2 + 8));
      }

      else
      {
        *v16 = *a2;
        v17 = *(a2 + 16);
      }

      if (SHIBYTE(v17) < 0)
      {
        sub_100005F2C(__dst, v16[0], v16[1]);
      }

      else
      {
        *__dst = *v16;
        v22 = v17;
      }

      v20 = 0;
      if (SHIBYTE(v22) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v24 = v22;
      }

      v25 = 0;
      if (ctu::cf::convert_copy())
      {
        v9 = v20;
        v20 = v25;
        v26 = v9;
        sub_100005978(&v26);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      theString = v20;
      v20 = 0;
      sub_100005978(&v20);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__dst[0]);
      }

      if (SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }

      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        v11 = 0;
        v2 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v11);
          v13 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v14 = CFGetTypeID(ValueAtIndex);
            if (v14 == CFStringGetTypeID() && CFStringGetLength(v13) && CFStringHasPrefix(theString, v13))
            {
              break;
            }
          }

          v2 = ++v11 < Count;
        }

        while (Count != v11);
      }

      else
      {
        v2 = 0;
      }

      sub_100005978(&theString);
    }

    sub_100010250(&theArray);
    v8 = v7 == 0 || v2;
  }

  return v8 & 1;
}

void sub_1003D982C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100010250(&a17);
  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::getLastUsedImsi@<X0>(uint64_t *__return_ptr a1@<X8>, Registry **this@<X0>)
{
  v16 = 0;
  ServiceMap = Registry::getServiceMap(this[8]);
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
  *&v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v17);
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
  (*(*v12 + 24))(&v15, v12, **this[11] + 24, @"last-used-imsi", kCarrierEntitlementsWalletDomain, 0, 1);
  sub_100060DE8(&v16, &v15);
  sub_10000A1EC(&v15);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v16)
  {
    v17 = 0uLL;
    v18 = 0;
    ctu::cf::assign();
    *a1 = v17;
    a1[2] = v18;
  }

  else
  {
    sub_10000501C(a1, "");
  }

  return sub_100005978(&v16);
}

int64_t sub_1003D9A94(uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = v5 + v6;
    if (v8 >= v7)
    {
      v13 = v5 + a3;
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return v11 - v5;
    }
  }

  return a3;
}

void entitlements::ControllerImpl::activate(uint64_t a1, char a2, uint64_t *a3, NSObject **a4)
{
  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v9, (a1 + 8));
  v7 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  v8 = *a4;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v8);
  }

  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  operator new();
}

void sub_1003D9CCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::personality_recovered(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v5, (a1 + 8));
  v4 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = 0;
  v6 = 0;
  sub_100004AA0(&v5, (a1 + 8));
  operator new();
}

void sub_1003D9E28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::cfg_updated(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v5, (a1 + 8));
  v4 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  v5 = 0;
  v6 = 0;
  sub_100004AA0(&v5, (a1 + 8));
  operator new();
}

void sub_1003D9F68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::wallet_updated(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v5, (a1 + 8));
  v4 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  v5 = 0;
  v6 = 0;
  sub_100004AA0(&v5, (a1 + 8));
  operator new();
}

void sub_1003DA0A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void entitlements::ControllerImpl::settingsForTask(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  std::mutex::lock((a1 + 2168));
  v6 = *(a1 + 2112);
  v7 = *(a1 + 2120);
  while (1)
  {
    if (v6 == v7)
    {
      std::mutex::unlock((a1 + 2168));
      *a3 = 0;
      a3[1] = 0;
      return;
    }

    if (sub_1001E4088(*v6, a2))
    {
      break;
    }

    v6 += 2;
  }

  v8 = v6[1];
  *a3 = *v6;
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock((a1 + 2168));
}

void sub_1003DA18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = ***(a1 + 88);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v11 = *(v6 + 40);
  }

  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DA258(&event::entitlements::get_provisioning_update, __p, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DA238(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DA258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100405C8C((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F6F04(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DA33C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DA378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = ***(a1 + 88);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v11 = *(v6 + 40);
  }

  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DA444(&event::entitlements::set_provisioning_update, __p, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DA424(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DA444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100405ED0((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F87E4(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DA528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DA564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = ***(a1 + 88);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v11 = *(v6 + 40);
  }

  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DA630(&event::entitlements::psas_updated, __p, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DA610(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DA630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100406114((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F9D44(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DA714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DA750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = ***(a1 + 88);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v11 = *(v6 + 40);
  }

  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DA81C(event::entitlements::enable_push_notification_result, __p, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DA7FC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DA81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100406358((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10040659C(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DA900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DA93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = ***(a1 + 88);
  if (*(v6 + 47) < 0)
  {
    sub_100005F2C(__p, *(v6 + 24), *(v6 + 32));
  }

  else
  {
    *__p = *(v6 + 24);
    v11 = *(v6 + 40);
  }

  v7 = a4[1];
  v8 = *a4;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DAA08(event::entitlements::disable_push_notification_result, __p, a3, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DA9E8(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DAA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100407C44((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100407E88(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DAAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleGetGeofenceDataResponse: Event cause is %s", buf, 0x20u);
  }

  v9 = v5 == 3 && **a4 == 6000;
  if (v5 != 2 && *(a1 + 624))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 624);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sstatus: callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 608);
    v14 = *(a1 + 616);
    if (v14 != (a1 + 608))
    {
      do
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1003ED368(buf, (v14 + 2));
        v15 = *buf;
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1003DADDC;
        block[3] = &unk_101E497E0;
        sub_1003ED368(&object, buf);
        v16 = *(a4 + 8);
        v20 = *a4;
        v21 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v9;
        dispatch_async(v15, block);
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (*&buf[8])
        {
          _Block_release(*&buf[8]);
        }

        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = v14[1];
      }

      while (v14 != v13);
    }

    sub_1003E9FDC(v13);
  }
}

void sub_1003DADCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003DADF0(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v3 + 16))(v3, &v5, *a3);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1003DAE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003DAE68(void *a1, uint64_t a2)
{
  result = sub_1003ED368(a1 + 4, a2 + 32);
  v5 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003DAEB0(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    dispatch_release(v4);
  }
}

uint64_t sub_1003DAF10(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DAF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleGetSigningKeysResponse: Event cause is %s", buf, 0x20u);
  }

  v9 = v5 == 3 && **a4 == 6000;
  if (v5 != 2 && *(a1 + 648))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 648);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      *&buf[24] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sstatus: callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 632);
    v14 = *(a1 + 640);
    if (v14 != a1 + 632)
    {
      do
      {
        v23 = 0;
        memset(buf, 0, sizeof(buf));
        sub_1003ED3B4(buf, (v14 + 16));
        v15 = *buf;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 1174405120;
        v17[2] = sub_1003DB220;
        v17[3] = &unk_101E49810;
        sub_1003ED3B4(&object, buf);
        v16 = *(a4 + 8);
        v19[4] = *a4;
        v20 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = v9;
        dispatch_async(v15, v17);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_1003EB964(v19);
        if (object)
        {
          dispatch_release(object);
        }

        sub_1003EB964(&buf[8]);
        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = *(v14 + 8);
      }

      while (v14 != v13);
    }

    sub_1003E9F1C(v13);
  }
}

void sub_1003DB204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1003DB384(va);
  _Unwind_Resume(a1);
}

void sub_1003DB220(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 72);
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DB290(a1 + 40, &v2, *(a1 + 88));
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1003DB278(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003DB290(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

NSObject **sub_1003DB2E4(uint64_t a1, uint64_t a2)
{
  result = sub_1003ED3B4((a1 + 32), (a2 + 32));
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003DB32C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003EB964(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

dispatch_object_t *sub_1003DB384(dispatch_object_t *a1)
{
  sub_1003EB964((a1 + 1));
  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DB3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleGetBlindSignaturesResponse: Event cause is %s", buf, 0x20u);
  }

  v9 = v5 == 3 && **a4 == 6000;
  if (v5 != 2 && *(a1 + 672))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 672);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      *&buf[24] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sstatus: callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 656);
    v14 = *(a1 + 664);
    if (v14 != a1 + 656)
    {
      do
      {
        v23 = 0;
        memset(buf, 0, sizeof(buf));
        sub_1003ED410(buf, (v14 + 16));
        v15 = *buf;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 1174405120;
        v17[2] = sub_1003DB68C;
        v17[3] = &unk_101E49840;
        sub_1003ED410(&object, buf);
        v16 = *(a4 + 8);
        v19[4] = *a4;
        v20 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = v9;
        dispatch_async(v15, v17);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_1003EBDF0(v19);
        if (object)
        {
          dispatch_release(object);
        }

        sub_1003EBDF0(&buf[8]);
        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = *(v14 + 8);
      }

      while (v14 != v13);
    }

    sub_1003E9E5C(v13);
  }
}

void sub_1003DB670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1003DB7F0(va);
  _Unwind_Resume(a1);
}

void sub_1003DB68C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 72);
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DB6FC(a1 + 40, &v2, *(a1 + 88));
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1003DB6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003DB6FC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

NSObject **sub_1003DB750(uint64_t a1, uint64_t a2)
{
  result = sub_1003ED410((a1 + 32), (a2 + 32));
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003DB798(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003EBDF0(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

dispatch_object_t *sub_1003DB7F0(dispatch_object_t *a1)
{
  sub_1003EBDF0((a1 + 1));
  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DB828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleEnableServiceResponse: Event cause is %s", buf, 0x20u);
  }

  v9 = v5 == 3 && **a4 == 6000;
  if (v5 != 2 && *(a1 + 696))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 696);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2048;
      *&buf[24] = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sstatus: callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 680);
    v14 = *(a1 + 688);
    if (v14 != a1 + 680)
    {
      do
      {
        v23 = 0;
        memset(buf, 0, sizeof(buf));
        sub_1003ED46C(buf, (v14 + 16));
        v15 = *buf;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 1174405120;
        v17[2] = sub_1003DBAF8;
        v17[3] = &unk_101E49870;
        sub_1003ED46C(&object, buf);
        v16 = *(a4 + 8);
        v19[4] = *a4;
        v20 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v21 = v9;
        dispatch_async(v15, v17);
        if (v20)
        {
          sub_100004A34(v20);
        }

        sub_1003EBFF4(v19);
        if (object)
        {
          dispatch_release(object);
        }

        sub_1003EBFF4(&buf[8]);
        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = *(v14 + 8);
      }

      while (v14 != v13);
    }

    sub_1003E9D9C(v13);
  }
}

void sub_1003DBADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1003DBC5C(va);
  _Unwind_Resume(a1);
}

void sub_1003DBAF8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 72);
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DBB68(a1 + 40, &v2, *(a1 + 88));
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1003DBB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003DBB68(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

NSObject **sub_1003DBBBC(uint64_t a1, uint64_t a2)
{
  result = sub_1003ED46C((a1 + 32), (a2 + 32));
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003DBC04(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003EBFF4(a1 + 40);
  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

dispatch_object_t *sub_1003DBC5C(dispatch_object_t *a1)
{
  sub_1003EBFF4((a1 + 1));
  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DBC94(uint64_t a1, uint64_t a2, int a3, int **a4)
{
  if (a3 == 3)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 88));
      v9 = sub_100531604(**a4);
      *buf = 136315650;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s_____________   Process Authentication response with status: %s", buf, 0x20u);
    }

    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = std::__shared_weak_count::lock(v10);
      if (v11 && *a2)
      {
        (***a2)(buf);
        v12 = *(*buf + 56);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
            if (!v21)
            {
LABEL_22:
              v25 = *a4;
              v26 = **a4;
              if (v26 > 6003)
              {
                if (v26 != 6004)
                {
                  if (v26 != 6006)
                  {
                    v27 = 6300;
                    goto LABEL_28;
                  }

LABEL_29:
                  v28 = *(a1 + 40);
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = PersonalityInfo::logPrefix(***(a1 + 88));
                    v30 = sub_100531604(**a4);
                    *buf = 136315650;
                    *&buf[4] = v29;
                    *&buf[12] = 2080;
                    *&buf[14] = " ";
                    *&buf[22] = 2080;
                    *&buf[24] = v30;
                    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sinvalidate ALL entitlements because of Authentication response: %s", buf, 0x20u);
                  }

                  std::mutex::lock((a1 + 2168));
                  *(a1 + 2105) = 0;
                  std::mutex::unlock((a1 + 2168));
                  entitlements::ControllerImpl::invalidateResults_sync(a1, 7, 6);
                  goto LABEL_32;
                }

                if (*(*(a1 + 88) + 528) == *(*(a1 + 88) + 520))
                {
                  goto LABEL_29;
                }

                v58 = Registry::getServiceMap(*(a1 + 64));
                v59 = v58;
                if (v60 < 0)
                {
                  v61 = (v60 & 0x7FFFFFFFFFFFFFFFLL);
                  v62 = 5381;
                  do
                  {
                    v60 = v62;
                    v63 = *v61++;
                    v62 = (33 * v62) ^ v63;
                  }

                  while (v63);
                }

                std::mutex::lock(v58);
                *buf = v60;
                v64 = sub_100009510(&v59[1].__m_.__sig, buf);
                v83 = v22;
                if (v64)
                {
                  v66 = v64[3];
                  v65 = v64[4];
                  if (v65)
                  {
                    atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
                    std::mutex::unlock(v59);
                    atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
                    sub_100004A34(v65);
                    v67 = 0;
                    goto LABEL_74;
                  }
                }

                else
                {
                  v66 = 0;
                }

                std::mutex::unlock(v59);
                v65 = 0;
                v67 = 1;
LABEL_74:
                v68 = *(a1 + 88);
                v69 = **v68;
                v70 = sub_100A83694(*v68[65]);
                (*(*v66 + 32))(v66, v69 + 24, v70 ^ 1u);
                v22 = v83;
                if ((v67 & 1) == 0)
                {
                  sub_100004A34(v65);
                }

                goto LABEL_29;
              }

              if (v26 != 6000)
              {
                v27 = 6003;
LABEL_28:
                if (v26 != v27)
                {
                  goto LABEL_32;
                }

                goto LABEL_29;
              }

              if (v12 <= 1)
              {
                *__src = 0u;
                v92 = 0u;
                sub_10006F264(__src, (*(v25 + 3) + 72));
                v121 = 0u;
                v120 = 0u;
                v119 = 0u;
                v118 = 0u;
                v116 = 0u;
                v117 = 0u;
                v114 = 0u;
                v115 = 0u;
                v112 = 0u;
                v113 = 0u;
                v110 = 0u;
                v111 = 0u;
                v108 = 0u;
                v109 = 0u;
                v106 = 0u;
                v107 = 0u;
                v104 = 0u;
                v105 = 0u;
                v102 = 0u;
                v103 = 0u;
                v100 = 0u;
                v101 = 0u;
                v98 = 0u;
                v99 = 0u;
                v96 = 0u;
                v97 = 0u;
                v95 = 0u;
                memset(buf, 0, sizeof(buf));
                sub_1002249D4(buf, *(v25 + 3) + 104);
                *v89 = 0u;
                v90 = 0u;
                if (BYTE8(v92) == 1)
                {
                  __dst[1] = 0;
                  __dst[0] = 0;
                  v88 = 0;
                  if (SBYTE7(v92) < 0)
                  {
                    sub_100005F2C(__dst, __src[0], __src[1]);
                  }

                  else
                  {
                    *__dst = *__src;
                    v88 = v92;
                  }

                  ctu::base64::decode();
                  sub_1001E9734(v89, __p);
                  if (*__p)
                  {
                    *&__p[8] = *__p;
                    operator delete(*__p);
                  }

                  if (v89[1] == v89[0])
                  {
                    v71 = *(a1 + 40);
                    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
                    {
                      v72 = PersonalityInfo::logPrefix(***(a1 + 88));
                      *__p = 136315394;
                      *&__p[4] = v72;
                      *&__p[12] = 2080;
                      *&__p[14] = " ";
                      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to base64 decode app token", __p, 0x16u);
                    }

                    if (BYTE8(v90) == 1)
                    {
                      if (v89[0])
                      {
                        v89[1] = v89[0];
                        operator delete(v89[0]);
                      }

                      BYTE8(v90) = 0;
                    }
                  }

                  if (SHIBYTE(v88) < 0)
                  {
                    operator delete(__dst[0]);
                  }
                }

                sub_100190A90(v85, v89);
                sub_1002249D4(v84, buf);
                entitlements::ControllerImpl::acceptAuthenticationReponse(a1, v85, v84);
                if (v84[456] == 1)
                {
                  sub_100220C2C(v84);
                }

                if (v86 == 1 && v85[0])
                {
                  v85[1] = v85[0];
                  operator delete(v85[0]);
                }

                if (BYTE8(v90) == 1 && v89[0])
                {
                  v89[1] = v89[0];
                  operator delete(v89[0]);
                }

                if (BYTE8(v121) == 1)
                {
                  sub_100220C2C(buf);
                }

                if (BYTE8(v92) == 1 && SBYTE7(v92) < 0)
                {
                  operator delete(__src[0]);
                }
              }

              std::mutex::lock((a1 + 2168));
              *(a1 + 2105) = 1;
              std::mutex::unlock((a1 + 2168));
              v73 = Registry::getServiceMap(*(a1 + 64));
              v74 = v73;
              if (v75 < 0)
              {
                v76 = (v75 & 0x7FFFFFFFFFFFFFFFLL);
                v77 = 5381;
                do
                {
                  v75 = v77;
                  v78 = *v76++;
                  v77 = (33 * v77) ^ v78;
                }

                while (v78);
              }

              std::mutex::lock(v73);
              *buf = v75;
              v79 = sub_100009510(&v74[1].__m_.__sig, buf);
              if (v79)
              {
                v81 = v79[3];
                v80 = v79[4];
                if (v80)
                {
                  atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
                  std::mutex::unlock(v74);
                  atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v80);
                  v82 = 0;
                  goto LABEL_109;
                }
              }

              else
              {
                v81 = 0;
              }

              std::mutex::unlock(v74);
              v80 = 0;
              v82 = 1;
LABEL_109:
              (*(*v81 + 32))(v81, ***(a1 + 88) + 24, 1);
              if ((v82 & 1) == 0)
              {
                sub_100004A34(v80);
              }

LABEL_32:
              v31 = *(a1 + 40);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                v32 = PersonalityInfo::logPrefix(***(a1 + 88));
                v33 = sub_100531604(**a4);
                *buf = 136315650;
                *&buf[4] = v32;
                *&buf[12] = 2080;
                *&buf[14] = " ";
                *&buf[22] = 2080;
                *&buf[24] = v33;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sreportAuthState: %s", buf, 0x20u);
              }

              v34 = Registry::getServiceMap(*(a1 + 64));
              v35 = v34;
              if (v36 < 0)
              {
                v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
                v38 = 5381;
                do
                {
                  v36 = v38;
                  v39 = *v37++;
                  v38 = (33 * v38) ^ v39;
                }

                while (v39);
              }

              std::mutex::lock(v34);
              *buf = v36;
              v40 = sub_100009510(&v35[1].__m_.__sig, buf);
              if (v40)
              {
                v42 = v40[3];
                v41 = v40[4];
                if (v41)
                {
                  atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
                  std::mutex::unlock(v35);
                  atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v41);
                  v43 = 0;
                  goto LABEL_42;
                }
              }

              else
              {
                v42 = 0;
              }

              std::mutex::unlock(v35);
              v41 = 0;
              v43 = 1;
LABEL_42:
              v44 = ***(a1 + 88);
              v45 = **a4;
              __src[0] = 0;
              *buf = v45;
              v46 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
              if (v46)
              {
                v47 = __src[0];
                __src[0] = v46;
                *buf = v47;
                sub_100029A48(buf);
              }

              v89[0] = __src[0];
              __src[0] = 0;
              sub_100029A48(__src);
              (*(*v42 + 16))(v42, v44 + 24, @"last-known-auth-code", v89[0], kCarrierEntitlementsWalletDomain, 0, 2, 0);
              sub_100029A48(v89);
              if ((v43 & 1) == 0)
              {
                sub_100004A34(v41);
              }

              v48 = Registry::getServiceMap(*(a1 + 64));
              v49 = v48;
              if (v50 < 0)
              {
                v51 = (v50 & 0x7FFFFFFFFFFFFFFFLL);
                v52 = 5381;
                do
                {
                  v50 = v52;
                  v53 = *v51++;
                  v52 = (33 * v52) ^ v53;
                }

                while (v53);
              }

              std::mutex::lock(v48);
              *buf = v50;
              v54 = sub_100009510(&v49[1].__m_.__sig, buf);
              if (v54)
              {
                v56 = v54[3];
                v55 = v54[4];
                if (v55)
                {
                  atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
                  std::mutex::unlock(v49);
                  atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
                  sub_100004A34(v55);
                  v57 = 0;
LABEL_54:
                  (*(*v56 + 56))(v56, ***(a1 + 88) + 24, **a4);
                  if ((v57 & 1) == 0)
                  {
                    sub_100004A34(v55);
                  }

                  if ((v22 & 1) == 0)
                  {
                    sub_100004A34(v20);
                  }

LABEL_58:
                  if (v11)
                  {
                    sub_100004A34(v11);
                  }

                  return;
                }
              }

              else
              {
                v56 = 0;
              }

              std::mutex::unlock(v49);
              v55 = 0;
              v57 = 1;
              goto LABEL_54;
            }

LABEL_21:
            (**v21)(v21, **(a1 + 88), **a4);
            goto LABEL_22;
          }
        }

        else
        {
          v21 = 0;
        }

        std::mutex::unlock(v14);
        v20 = 0;
        v22 = 1;
        if (!v21)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v11 = 0;
    }

    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(***(a1 + 88));
      *buf = 136315394;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#W %s%sdriver is already gone - ignoring any responses", buf, 0x16u);
    }

    goto LABEL_58;
  }
}

void sub_1003DC76C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (LOBYTE(STACK[0x238]) == 1)
  {
    v5 = STACK[0x220];
    if (STACK[0x220])
    {
      STACK[0x228] = v5;
      operator delete(v5);
    }
  }

  if (LOBYTE(STACK[0x448]) == 1)
  {
    sub_100220C2C(&STACK[0x280]);
  }

  if (LOBYTE(STACK[0x258]) == 1 && SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::acceptAuthenticationReponse(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 1528) == 1)
  {
    if (a3[456] && (sub_100A3CA5C((a1 + 1072), a3) & 1) != 0)
    {
      goto LABEL_23;
    }
  }

  else if (!a3[456])
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(***(a1 + 88));
    sub_100A41FAC(a1 + 1072, &v40);
    v8 = SHIBYTE(v42);
    v9 = v40;
    sub_100A41FAC(a3, v37);
    v10 = &v40;
    if (v8 < 0)
    {
      v10 = v9;
    }

    if (v38 >= 0)
    {
      v11 = v37;
    }

    else
    {
      v11 = v37[0];
    }

    *buf = 136315906;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v45 = v10;
    v46 = 2080;
    v47 = v11;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sAuth response data is changing from %s to %s", buf, 0x2Au);
    if (v38 < 0)
    {
      operator delete(v37[0]);
    }

    if (SHIBYTE(v42) < 0)
    {
      operator delete(v40);
    }
  }

  sub_100220EF0((a1 + 1072), a3);
  v12 = ***(a1 + 88);
  if (*(v12 + 47) < 0)
  {
    sub_100005F2C(&__dst, *(v12 + 24), *(v12 + 32));
  }

  else
  {
    __dst = *(v12 + 24);
    v36 = *(v12 + 40);
  }

  sub_1002249D4(v34, a1 + 1072);
  sub_1003DE668(&event::entitlements::authentication_response, &__dst, v34);
  if (v34[456] == 1)
  {
    sub_100220C2C(v34);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__dst);
  }

LABEL_23:
  if (*(a2 + 24) != 1)
  {
    return;
  }

  v13 = *(a1 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PersonalityInfo::logPrefix(***(a1 + 88));
    v15 = (*(a2 + 8) - *a2);
    *buf = 136315650;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2048;
    v45 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#W %s%sgot App-Token with %zu bytes", buf, 0x20u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v17 = ServiceMap;
  if (v18 < 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(ServiceMap);
  *buf = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, buf);
  if (!v22)
  {
    v24 = 0;
    goto LABEL_33;
  }

  v24 = v22[3];
  v23 = v22[4];
  if (!v23)
  {
LABEL_33:
    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    goto LABEL_34;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v17);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v23);
  v25 = 0;
LABEL_34:
  v26 = ***(a1 + 88);
  v31 = 0;
  v32 = 0;
  __p = 0;
  sub_100034C50(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v41 = 0;
  v42 = 0;
  v40 = 0;
  sub_100034C50(&v40, __p, v31, v31 - __p);
  v39 = 0;
  memset(buf, 0, sizeof(buf));
  sub_100034C50(buf, v40, v41, v41 - v40);
  v43 = 0;
  if (ctu::cf::convert_copy())
  {
    v27 = v39;
    v39 = v43;
    v37[0] = v27;
    sub_10002D760(v37);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v28 = v39;
  v33 = v39;
  v39 = 0;
  sub_10002D760(&v39);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  (*(*v24 + 16))(v24, v26 + 24, @"app-auth-token", v28, kCarrierEntitlementsWalletDomain, 0, 4, 0);
  sub_10002D760(&v33);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  v29 = ***(a1 + 88);
  if (*(v29 + 52) == 1)
  {
    *buf = xpc_null_create();
    v40 = xpc_null_create();
    sub_10002A37C(107, buf, &v40);
    xpc_release(v40);
    xpc_release(*buf);
    v29 = ***(a1 + 88);
  }

  if (!*(v29 + 49))
  {
    (*(**(a1 + 144) + 56))(*(a1 + 144), *(v29 + 52));
  }
}

void sub_1003DCDF4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003DCEFC(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10176F838(a1);
  }
}

uint64_t sub_1003DCF40(uint64_t result, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  if (a3 != 2)
  {
    v5 = a3;
    v6 = result;
    v7 = *(result + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(v6 + 88));
      v9 = sub_100A38E30(v5);
      if (v5 == 3)
      {
        v10 = sub_100531604(**a4);
      }

      else
      {
        v10 = "-";
      }

      *buf = 136315906;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v18 = v9;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sprocess entitlement query response, cause:%s, status:%s", buf, 0x2Au);
    }

    if (v5 == 3)
    {
      v11 = *(*a4 + 3);
      if (v11)
      {
        sub_100A39638(v6 + 312, v11);
      }
    }

    if (os_log_type_enabled(*(v6 + 40), OS_LOG_TYPE_DEFAULT))
    {
      PersonalityInfo::logPrefix(***(v6 + 88));
      sub_100A410A4(v6 + 312);
    }

    v13 = 0;
    __p = v6;
    v15 = &v13;
    v16 = &v13 + 4;
    *buf = off_101E4B578;
    *&buf[8] = v6;
    *&buf[16] = &__p;
    v18 = buf;
    sub_1000700B8(buf);
    sub_100072048(buf);
    if (HIDWORD(v13))
    {
      result = entitlements::ControllerImpl::scheduleShorterTimer_sync(v6, HIDWORD(v13) == v13);
      if (result)
      {
        return result;
      }

      v12 = 0;
      __p = v6;
      v15 = &v12;
      *buf = off_101E4B5F8;
      *&buf[8] = v6;
      *&buf[16] = &__p;
      v18 = buf;
      sub_1000700B8(buf);
      sub_100072048(buf);
      if (v12 == 1)
      {
        entitlements::ControllerImpl::recalculateEntitlements_sync(v6, 0, 0);
      }
    }

    return entitlements::ControllerImpl::stopShorterTimer_sync(v6);
  }

  return result;
}

void sub_1003DD20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100072048(va);
  _Unwind_Resume(a1);
}

void sub_1003DD22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    v16 = v8;
    v17 = 2080;
    v18 = " ";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s_____________   Process set entitlement response", buf, 0x16u);
  }

  v9 = ***(a1 + 88);
  if (*(v9 + 47) < 0)
  {
    sub_100005F2C(__p, *(v9 + 24), *(v9 + 32));
  }

  else
  {
    *__p = *(v9 + 24);
    v14 = *(v9 + 40);
  }

  v10 = a4[1];
  v11 = *a4;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003DD3A4(&event::entitlements::set_entitlement_result, __p, a3, &v11);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003DD37C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003DD3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004098D4((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003F5AE8(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003DD488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003DD4C4(entitlements::ControllerImpl *this, uint64_t a2, unsigned int a3, uint64_t *a4, CFDictionaryRef *a5)
{
  if (!*a5)
  {
    v15 = 1;
    goto LABEL_25;
  }

  memset(__dst, 0, 32);
  entitlements::ControllerImpl::makePrefetchPNRNonce(this, __dst);
  CFDictionaryGetValue(*a5, @"client-nonce");
  memset(&buf, 0, sizeof(buf));
  ctu::cf::assign();
  __p = buf;
  ctu::base64::encode();
  v9 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = __p.__r_.__value_.__l.__size_;
  }

  if (size == v11)
  {
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v15 = memcmp(p_buf, p_p, size) != 0;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v15 = 1;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_18:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_19:
  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(***(this + 11));
    v18 = asStringBool(v15);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v17;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v105 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sreal_signature: %s", &buf, 0x20u);
  }

  if (v12 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (__dst[0].__r_.__value_.__l.__size_)
  {
    __dst[0].__r_.__value_.__r.__words[2] = __dst[0].__r_.__value_.__l.__size_;
    operator delete(__dst[0].__r_.__value_.__l.__size_);
  }

LABEL_25:
  v92 = 0;
  v93 = 0;
  entitlements::ControllerImpl::findDriverForTask(this, 1, &v92);
  if (a3 < 2)
  {
    if (!v15)
    {
      goto LABEL_164;
    }

    if (v92)
    {
      v19 = *(this + 16);
      memset(__dst, 0, sizeof(__dst));
      LOBYTE(v102) = 2;
      memset(v103, 0, 24);
      (**v92)(&buf);
      sub_1003A0D20(v19, __dst);
      v20 = buf.__r_.__value_.__l.__size_;
      if (!buf.__r_.__value_.__l.__size_)
      {
LABEL_30:
        if (SHIBYTE(v103[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v103[0].__r_.__value_.__l.__data_);
        }

        if (__dst[1].__r_.__value_.__r.__words[0])
        {
          __dst[1].__r_.__value_.__l.__size_ = __dst[1].__r_.__value_.__r.__words[0];
          operator delete(__dst[1].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst[0].__r_.__value_.__l.__data_);
        }

        goto LABEL_164;
      }

LABEL_29:
      sub_100004A34(v20);
      goto LABEL_30;
    }

    v31 = *(this + 5);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_164;
    }

    goto LABEL_89;
  }

  if (a3 != 3)
  {
    goto LABEL_164;
  }

  ServiceMap = Registry::getServiceMap(*(this + 8));
  v22 = ServiceMap;
  if ((v23 & 0x8000000000000000) != 0)
  {
    v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v23 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  std::mutex::lock(ServiceMap);
  __dst[0].__r_.__value_.__r.__words[0] = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, __dst);
  if (v27)
  {
    v29 = v27[3];
    v28 = v27[4];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v22);
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v28);
      v30 = 0;
      goto LABEL_47;
    }
  }

  else
  {
    v29 = 0;
  }

  std::mutex::unlock(v22);
  v28 = 0;
  v30 = 1;
LABEL_47:
  (*(*v29 + 16))(v29, ***(this + 11) + 24, @"phone-number-prefetched", kCFBooleanTrue, kCarrierEntitlementsWalletDomain, 0, 2, 0);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  *(this + 1726) = 1;
  v32 = *a4;
  if (!*a4)
  {
    goto LABEL_82;
  }

  if (*v32 == 6000)
  {
    v46 = Registry::getServiceMap(*(this + 8));
    v47 = v46;
    if ((v48 & 0x8000000000000000) != 0)
    {
      v49 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
      v50 = 5381;
      do
      {
        v48 = v50;
        v51 = *v49++;
        v50 = (33 * v50) ^ v51;
      }

      while (v51);
    }

    std::mutex::lock(v46);
    __dst[0].__r_.__value_.__r.__words[0] = v48;
    v52 = sub_100009510(&v47[1].__m_.__sig, __dst);
    if (v52)
    {
      v54 = v52[3];
      v53 = v52[4];
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v47);
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v53);
        v55 = 0;
        goto LABEL_71;
      }
    }

    else
    {
      v54 = 0;
    }

    std::mutex::unlock(v47);
    v53 = 0;
    v55 = 1;
LABEL_71:
    (*(*v54 + 40))(v54, ***(this + 11) + 24, 1, 0);
    if ((v55 & 1) == 0)
    {
      sub_100004A34(v53);
    }

    goto LABEL_78;
  }

  if (*v32 == 6020)
  {
    (**v92)(__dst);
    v33 = sub_100A8379C(__dst[0].__r_.__value_.__l.__data_, @"ProcessPNRAvailabilityStatus", 0);
    if (__dst[0].__r_.__value_.__l.__size_)
    {
      sub_100004A34(__dst[0].__r_.__value_.__l.__size_);
    }

    v34 = *(this + 5);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = PersonalityInfo::logPrefix(***(this + 11));
      LODWORD(__dst[0].__r_.__value_.__l.__data_) = 136315650;
      *(__dst[0].__r_.__value_.__r.__words + 4) = v35;
      WORD2(__dst[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&__dst[0].__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(__dst[0].__r_.__value_.__r.__words[2]) = 1024;
      LODWORD(__dst[1].__r_.__value_.__l.__data_) = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I %s%sshould treat 6020 as real error: %d", __dst, 0x1Cu);
    }

    if (v33)
    {
      v36 = Registry::getServiceMap(*(this + 8));
      v37 = v36;
      if ((v38 & 0x8000000000000000) != 0)
      {
        v39 = (v38 & 0x7FFFFFFFFFFFFFFFLL);
        v40 = 5381;
        do
        {
          v38 = v40;
          v41 = *v39++;
          v40 = (33 * v40) ^ v41;
        }

        while (v41);
      }

      std::mutex::lock(v36);
      __dst[0].__r_.__value_.__r.__words[0] = v38;
      v42 = sub_100009510(&v37[1].__m_.__sig, __dst);
      if (v42)
      {
        v44 = v42[3];
        v43 = v42[4];
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v37);
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v43);
          v45 = 0;
LABEL_75:
          (*(*v44 + 40))(v44, ***(this + 11) + 24, 1, 1);
          if ((v45 & 1) == 0)
          {
            sub_100004A34(v43);
          }

          std::mutex::lock((this + 2168));
          *(this + 2106) = 0;
          std::mutex::unlock((this + 2168));
          goto LABEL_78;
        }
      }

      else
      {
        v44 = 0;
      }

      std::mutex::unlock(v37);
      v43 = 0;
      v45 = 1;
      goto LABEL_75;
    }

LABEL_78:
    v32 = *a4;
    if (!*a4)
    {
      goto LABEL_82;
    }
  }

  v56 = *(v32 + 24);
  if (v56)
  {
    v91 = 0;
    memset(&__str, 0, sizeof(__str));
    if (*(v56 + 23) < 0)
    {
      sub_100005F2C(&__str, *v56, *(v56 + 1));
    }

    else
    {
      v57 = *v56;
      __str.__r_.__value_.__r.__words[2] = *(v56 + 2);
      *&__str.__r_.__value_.__l.__data_ = v57;
    }

    if (v15)
    {
      v89 = 0;
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v63 = Mutable;
      if (Mutable)
      {
        v89 = Mutable;
        __dst[0].__r_.__value_.__r.__words[0] = 0;
        sub_1000296E0(&__dst[0].__r_.__value_.__l.__data_);
      }

      value = 0;
      if (*(v56 + 47) < 0)
      {
        sub_100005F2C(&__p, *(v56 + 3), *(v56 + 4));
      }

      else
      {
        __p = *(v56 + 1);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __p;
      }

      v99 = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst[0] = buf;
      }

      v100 = 0;
      if (ctu::cf::convert_copy())
      {
        v66 = v99;
        v99 = v100;
        v94.__r_.__value_.__r.__words[0] = v66;
        sub_100005978(&v94.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst[0].__r_.__value_.__l.__data_);
      }

      value = v99;
      v99 = 0;
      sub_100005978(&v99);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      CFDictionarySetValue(v63, @"kCarrierPhoneNumberSignature", value);
      std::to_string(&v94, *(v56 + 48));
      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, v94.__r_.__value_.__l.__data_, v94.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = v94;
      }

      v98 = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst[0] = buf;
      }

      v99 = 0;
      if (ctu::cf::convert_copy())
      {
        v67 = v98;
        v98 = v99;
        v100 = v67;
        sub_100005978(&v100);
      }

      if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst[0].__r_.__value_.__l.__data_);
      }

      v68 = v98;
      v95 = v98;
      v98 = 0;
      sub_100005978(&v98);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
      }

      CFDictionarySetValue(v63, @"kCarrierPhoneNumberSignatureVersion", v68);
      sub_100005978(&v95);
      sub_100005978(&value);
      __dst[0].__r_.__value_.__r.__words[0] = v91;
      v91 = v89;
      v89 = 0;
      sub_1000296E0(&__dst[0].__r_.__value_.__l.__data_);
      sub_1000296E0(&v89);
    }

    else
    {
      v64 = *(this + 5);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        v65 = PersonalityInfo::logPrefix(***(this + 11));
        LODWORD(__dst[0].__r_.__value_.__l.__data_) = 136315394;
        *(__dst[0].__r_.__value_.__r.__words + 4) = v65;
        WORD2(__dst[0].__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst[0].__r_.__value_.__r.__words[1] + 6) = " ";
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I %s%sPNR prefetch: received", __dst, 0x16u);
      }
    }

    std::mutex::lock((this + 2168));
    std::string::operator=(this + 81, &__str);
    if (v15)
    {
      std::string::operator=(this + 82, v56 + 1);
    }

    std::mutex::unlock((this + 2168));
    v69 = Registry::getServiceMap(*(this + 8));
    v70 = v69;
    if ((v71 & 0x8000000000000000) != 0)
    {
      v72 = (v71 & 0x7FFFFFFFFFFFFFFFLL);
      v73 = 5381;
      do
      {
        v71 = v73;
        v74 = *v72++;
        v73 = (33 * v73) ^ v74;
      }

      while (v74);
    }

    std::mutex::lock(v69);
    __dst[0].__r_.__value_.__r.__words[0] = v71;
    v75 = sub_100009510(&v70[1].__m_.__sig, __dst);
    if (v75)
    {
      v77 = v75[3];
      v76 = v75[4];
      if (v76)
      {
        atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v70);
        atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v76);
        v78 = 0;
        if (!v77)
        {
          goto LABEL_148;
        }

        goto LABEL_139;
      }
    }

    else
    {
      v77 = 0;
    }

    std::mutex::unlock(v70);
    v76 = 0;
    v78 = 1;
    if (!v77)
    {
LABEL_148:
      if ((v78 & 1) == 0)
      {
        sub_100004A34(v76);
      }

      if (v15)
      {
        v82 = *(this + 5);
        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v83 = PersonalityInfo::logPrefix(***(this + 11));
          LODWORD(__dst[0].__r_.__value_.__l.__data_) = 136315394;
          *(__dst[0].__r_.__value_.__r.__words + 4) = v83;
          WORD2(__dst[0].__r_.__value_.__r.__words[1]) = 2080;
          *(&__dst[0].__r_.__value_.__r.__words[1] + 6) = " ";
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I %s%sStoring PNR signature in keychain", __dst, 0x16u);
        }

        entitlements::ControllerImpl::savePhoneNumberSignatureToKeychain_sync(this, v91);
        v84 = v92;
        if (v92)
        {
          v102 = 2;
          memset(v103, 0, 24);
          memset(__dst, 0, sizeof(__dst));
          std::string::operator=(__dst, v56);
          ctu::base64::decode();
          if (__dst[1].__r_.__value_.__r.__words[0])
          {
            __dst[1].__r_.__value_.__l.__size_ = __dst[1].__r_.__value_.__r.__words[0];
            operator delete(__dst[1].__r_.__value_.__l.__data_);
          }

          __dst[1] = buf;
          std::string::operator=(v103, (v56 + 56));
          LOBYTE(v102) = *(v56 + 48);
          v85 = *(this + 16);
          (**v84)(&buf, v84);
          sub_1003A0D20(v85, __dst);
          if (buf.__r_.__value_.__l.__size_)
          {
            sub_100004A34(buf.__r_.__value_.__l.__size_);
          }

          sub_1003DE614(__dst);
        }

        else
        {
          v86 = *(this + 5);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            v87 = PersonalityInfo::logPrefix(***(this + 11));
            v88 = sub_1000714D8(1);
            LODWORD(__dst[0].__r_.__value_.__l.__data_) = 136315650;
            *(__dst[0].__r_.__value_.__r.__words + 4) = v87;
            WORD2(__dst[0].__r_.__value_.__r.__words[1]) = 2080;
            *(&__dst[0].__r_.__value_.__r.__words[1] + 6) = " ";
            HIWORD(__dst[0].__r_.__value_.__r.__words[2]) = 2080;
            __dst[1].__r_.__value_.__r.__words[0] = v88;
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#W %s%sNo driver for task %s while processing getPhoneNumber response", __dst, 0x20u);
          }
        }
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      sub_1000296E0(&v91);
      goto LABEL_164;
    }

LABEL_139:
    v79 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v79 = __str.__r_.__value_.__l.__size_;
    }

    if (v79)
    {
      v80 = **(this + 11);
      if (!*(*v80 + 49) || *(*v80 + 49) == 3)
      {
        CSIPhoneNumber::CSIPhoneNumber();
        (*(*v77 + 312))(v77, v80, __dst);
        sub_10034F8E8(__dst);
      }
    }

    goto LABEL_148;
  }

LABEL_82:
  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    v58 = PersonalityInfo::logPrefix(***(this + 11));
    sub_10176F8C4(v58, &buf);
  }

  if (v15)
  {
    if (v92)
    {
      v59 = *(this + 16);
      memset(__dst, 0, sizeof(__dst));
      LOBYTE(v102) = 2;
      memset(v103, 0, 24);
      (**v92)(&__p);
      sub_1003A0D20(v59, __dst);
      v20 = __p.__r_.__value_.__l.__size_;
      if (!__p.__r_.__value_.__l.__size_)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v31 = *(this + 5);
    if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_164;
    }

LABEL_89:
    v60 = PersonalityInfo::logPrefix(***(this + 11));
    v61 = sub_1000714D8(1);
    LODWORD(__dst[0].__r_.__value_.__l.__data_) = 136315650;
    *(__dst[0].__r_.__value_.__r.__words + 4) = v60;
    WORD2(__dst[0].__r_.__value_.__r.__words[1]) = 2080;
    *(&__dst[0].__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(__dst[0].__r_.__value_.__r.__words[2]) = 2080;
    __dst[1].__r_.__value_.__r.__words[0] = v61;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#W %s%sNo driver for task %s while processing getPhoneNumber response", __dst, 0x20u);
  }

LABEL_164:
  if (v93)
  {
    sub_100004A34(v93);
  }
}

void sub_1003DE394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, void *a45, int a46, __int16 a47, char a48, char a49)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a17);
  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003DE614(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_uint **sub_1003DE668(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v10 = *(a2 + 2);
  }

  sub_1002249D4(v8, a3);
  sub_100409B18((a1 + 24), &__dst, v8);
  if (v8[456] == 1)
  {
    sub_100220C2C(v8);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst);
  }

  v6 = sub_100222C14((a1 + 8));
  return sub_100409D1C(v6, a2, a3);
}

void sub_1003DE71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65 == 1)
  {
    sub_100220C2C(&a9);
  }

  if (*(v65 - 41) < 0)
  {
    operator delete(*(v65 - 64));
  }

  _Unwind_Resume(a1);
}

const void **sub_1003DE754(const void **result, uint64_t a2, int a3, int **a4)
{
  if (a3 == 2)
  {
    return result;
  }

  v4 = result;
  if (a3 != 3)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    goto LABEL_6;
  }

  v5 = *a4;
  v6 = **a4;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  if (v6 != 6000)
  {
LABEL_6:
    sub_10164D2DC(&v25);
    v7 = 0;
    goto LABEL_7;
  }

  sub_1003ED4C8(&v25, *(v5 + 3));
  v7 = 1;
LABEL_7:
  if (v4[69])
  {
    v8 = v4[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**v4[11]);
      v10 = v4[69];
      *buf = 136315650;
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v36 = 2048;
      v37 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%scallbacks size %zu", buf, 0x20u);
    }

    v11 = (v4 + 67);
    v12 = v4[68];
    if (v12 != (v4 + 67))
    {
      do
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1003EDA60(buf, (v12 + 2));
        v13 = *buf;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 1174405120;
        v14[2] = sub_1003DEA74;
        v14[3] = &unk_101E498A0;
        sub_1003EDA60(&object, buf);
        sub_1003ED4C8(&v17, &v25);
        v24 = v7;
        dispatch_async(v13, v14);
        sub_10006DCAC(v23, v23[1]);
        sub_10006DCAC(v22, v22[1]);
        sub_10006DCAC(v21, v21[1]);
        sub_100005978(&v20);
        sub_100005978(&v19);
        sub_100005978(&v18);
        sub_100005978(&v17);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (*&buf[8])
        {
          _Block_release(*&buf[8]);
        }

        if (*buf)
        {
          dispatch_release(*buf);
        }

        v12 = v12[1];
      }

      while (v12 != v11);
    }

    sub_1003EA168(v11);
  }

  sub_10006DCAC(&v32 + 8, v33);
  sub_10006DCAC(&v31, *(&v31 + 1));
  sub_10006DCAC(&v29 + 8, v30);
  sub_100005978(&v26 + 1);
  sub_100005978(&v26);
  sub_100005978(&v25 + 1);
  return sub_100005978(&v25);
}

void sub_1003DEA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_1003DEBB8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003DEAE0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DEB20(uint64_t a1)
{
  sub_10006DCAC(a1 + 168, *(a1 + 176));
  sub_10006DCAC(a1 + 144, *(a1 + 152));
  sub_10006DCAC(a1 + 120, *(a1 + 128));
  sub_100005978((a1 + 72));
  sub_100005978((a1 + 64));
  sub_100005978((a1 + 56));
  sub_100005978((a1 + 48));
  v2 = *(a1 + 40);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

const void **sub_1003DEBB8(uint64_t a1)
{
  sub_10006DCAC(a1 + 120, *(a1 + 128));
  sub_10006DCAC(a1 + 96, *(a1 + 104));
  sub_10006DCAC(a1 + 72, *(a1 + 80));
  sub_100005978((a1 + 24));
  sub_100005978((a1 + 16));
  sub_100005978((a1 + 8));

  return sub_100005978(a1);
}

void sub_1003DEC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleGetSIMStatusResponse_sync: Event cause is %s", buf, 0x20u);
  }

  v9 = v5 == 3 && **a4 == 6000;
  if (v5 != 2 && *(a1 + 576))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 576);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sstatus: callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 560);
    v14 = *(a1 + 568);
    if (v14 != (a1 + 560))
    {
      do
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1003EDAAC(buf, (v14 + 2));
        v15 = *buf;
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1003DEEDC;
        block[3] = &unk_101E498D0;
        sub_1003EDAAC(&object, buf);
        v16 = *(a4 + 8);
        v20 = *a4;
        v21 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v9;
        dispatch_async(v15, block);
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (*&buf[8])
        {
          _Block_release(*&buf[8]);
        }

        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = v14[1];
      }

      while (v14 != v13);
    }

    sub_1003EA0E4(v13);
  }
}

void sub_1003DEECC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003DEEF0(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v3 + 16))(v3, &v5, *a3);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1003DEF50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003DEF68(void *a1, uint64_t a2)
{
  result = sub_1003EDAAC(a1 + 4, a2 + 32);
  v5 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003DEFB0(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    dispatch_release(v4);
  }
}

uint64_t sub_1003DF010(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DF050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleSignUpSIMServiceResponse_sync: Event cause is %s", buf, 0x20u);
  }

  v9 = v5 == 3 && **a4 == 6000;
  if (v5 != 2 && *(a1 + 600))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 600);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%ssignup: callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 584);
    v14 = *(a1 + 592);
    if (v14 != (a1 + 584))
    {
      do
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1003EDAF8(buf, (v14 + 2));
        v15 = *buf;
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1003DF304;
        block[3] = &unk_101E49900;
        sub_1003EDAF8(&object, buf);
        v16 = *(a4 + 8);
        v20 = *a4;
        v21 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v9;
        dispatch_async(v15, block);
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (*&buf[8])
        {
          _Block_release(*&buf[8]);
        }

        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = v14[1];
      }

      while (v14 != v13);
    }

    sub_1003EA060(v13);
  }
}

void sub_1003DF2F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003DF318(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v3 + 16))(v3, &v5, *a3);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1003DF378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003DF390(void *a1, uint64_t a2)
{
  result = sub_1003EDAF8(a1 + 4, a2 + 32);
  v5 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003DF3D8(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    dispatch_release(v4);
  }
}

uint64_t sub_1003DF438(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DF478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sprocess CarrierAuthNonce rsp: Event cause is %s", buf, 0x20u);
  }

  v9 = v5 == 3 && **a4 == 6000;
  if (*(a1 + 720))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 720);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sCarrierAuthNonce callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 704);
    v14 = *(a1 + 712);
    if (v14 != (a1 + 704))
    {
      do
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1003EDB44(buf, (v14 + 2));
        v15 = *buf;
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1003DF724;
        block[3] = &unk_101E49930;
        sub_1003EDB44(&object, buf);
        v16 = *(a4 + 8);
        v20 = *a4;
        v21 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v9;
        dispatch_async(v15, block);
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (*&buf[8])
        {
          _Block_release(*&buf[8]);
        }

        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = v14[1];
      }

      while (v14 != v13);
    }

    sub_1003E9D18(v13);
  }
}

void sub_1003DF714(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003DF738(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v3 + 16))(v3, &v5, *a3);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1003DF798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003DF7B0(void *a1, uint64_t a2)
{
  result = sub_1003EDB44(a1 + 4, a2 + 32);
  v5 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003DF7F8(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    dispatch_release(v4);
  }
}

uint64_t sub_1003DF858(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DF898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v24 = 2080;
    v25 = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sprocess AuthTrustFlag rsp: Event cause is %s", buf, 0x20u);
  }

  v9 = v5 == 3 && **a4 == 6000;
  if (*(a1 + 744))
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(***(a1 + 88));
      v12 = *(a1 + 744);
      *buf = 136315650;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v24 = 2048;
      v25 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sAuthTrustFlag callbacks size %zu", buf, 0x20u);
    }

    v13 = (a1 + 728);
    v14 = *(a1 + 736);
    if (v14 != (a1 + 728))
    {
      do
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1003EDB90(buf, (v14 + 2));
        v15 = *buf;
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1003DFB44;
        block[3] = &unk_101E49960;
        sub_1003EDB90(&object, buf);
        v16 = *(a4 + 8);
        v20 = *a4;
        v21 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = v9;
        dispatch_async(v15, block);
        if (v21)
        {
          sub_100004A34(v21);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (*&buf[8])
        {
          _Block_release(*&buf[8]);
        }

        if (*buf)
        {
          dispatch_release(*buf);
        }

        v14 = v14[1];
      }

      while (v14 != v13);
    }

    sub_1003E9C94(v13);
  }
}

void sub_1003DFB34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003DFB58(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v4 = a2[1];
  v5 = *a2;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v3 + 16))(v3, &v5, *a3);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1003DFBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003DFBD0(void *a1, uint64_t a2)
{
  result = sub_1003EDB90(a1 + 4, a2 + 32);
  v5 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003DFC18(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    dispatch_release(v4);
  }
}

uint64_t sub_1003DFC78(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003DFCB8(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  v5 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v27 = 2080;
    v28 = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sprocess TransferSIM rsp: Event cause is %s", buf, 0x20u);
  }

  if (v5 == 3)
  {
    v9 = **a4;
    v11 = v9 == 6000 || v9 == 6013;
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 768))
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(***(a1 + 88));
      v14 = *(a1 + 768);
      *buf = 136315650;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v27 = 2048;
      v28 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sTransferSIM callbacks size %zu", buf, 0x20u);
    }

    v15 = (a1 + 752);
    v16 = *(a1 + 760);
    if (v16 != (a1 + 752))
    {
      do
      {
        *buf = 0;
        *&buf[8] = 0;
        sub_1003EDBDC(buf, (v16 + 2));
        v17 = *buf;
        block[0] = _NSConcreteStackBlock;
        block[1] = 1174405120;
        block[2] = sub_1003DFF70;
        block[3] = &unk_101E49990;
        sub_1003EDBDC(&object, buf);
        v18 = a4[1];
        v22 = *a4;
        v23 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v25 = v11;
        v24 = v5;
        dispatch_async(v17, block);
        if (v23)
        {
          sub_100004A34(v23);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (*&buf[8])
        {
          _Block_release(*&buf[8]);
        }

        if (*buf)
        {
          dispatch_release(*buf);
        }

        v16 = v16[1];
      }

      while (v16 != v15);
    }

    sub_1003E9C10(v15);
  }
}

void sub_1003DFF60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003DFF88(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3, unsigned int *a4)
{
  v4 = *a1;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v4 + 16))(v4, &v6, *a3, *a4);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003DFFEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003E0004(void *a1, uint64_t a2)
{
  result = sub_1003EDBDC(a1 + 4, a2 + 32);
  v5 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003E004C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    dispatch_release(v4);
  }
}

uint64_t sub_1003E00AC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*a1)
  {
    dispatch_release(*a1);
  }

  return a1;
}

void sub_1003E00EC(uint64_t a1, uint64_t a2, uint64_t a3, int **a4)
{
  v5 = a3;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v26 = 2080;
    v27 = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sprocess transferAuthorization rsp: Event cause is %s", buf, 0x20u);
  }

  if (v5 == 3)
  {
    v9 = **a4;
    v11 = v9 == 6000 || v9 == 6013;
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 792))
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(***(a1 + 88));
      v14 = *(a1 + 792);
      *buf = 136315650;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v26 = 2048;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sTransferAuthorization callbacks size %zu", buf, 0x20u);
    }

    v15 = (a1 + 776);
    for (i = *(a1 + 784); i != v15; i = i[1])
    {
      *buf = 0;
      *&buf[8] = 0;
      sub_1003EDC28(buf, (i + 2));
      block[0] = _NSConcreteStackBlock;
      block[1] = 1174405120;
      block[2] = sub_1003E03A0;
      block[3] = &unk_101E499C0;
      sub_1003EDC28(&object, buf);
      v17 = a4[1];
      v21 = *a4;
      v22 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v24 = v11;
      v23 = v5;
      dispatch_async(*buf, block);
      if (v22)
      {
        sub_100004A34(v22);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (*&buf[8])
      {
        _Block_release(*&buf[8]);
      }

      if (*buf)
      {
        dispatch_release(*buf);
      }
    }

    sub_1003E9B8C(v15);
  }
}

void sub_1003E0390(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1003E03B8(uint64_t *a1, uint64_t *a2, unsigned __int8 *a3, unsigned int *a4)
{
  v4 = *a1;
  v5 = a2[1];
  v6 = *a2;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v4 + 16))(v4, &v6, *a3, *a4);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1003E041C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003E0434(void *a1, uint64_t a2)
{
  result = sub_1003EDC28(a1 + 4, a2 + 32);
  v5 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003E047C(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    dispatch_release(v4);
  }
}

void sub_1003E04DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4)
{
  v5 = a3;
  v6 = a1;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(v6 + 88));
    LODWORD(buf[0].__locale_) = 136315650;
    *(&buf[0].__locale_ + 4) = v8;
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = " ";
    HIWORD(buf[2].__locale_) = 2080;
    buf[3].__locale_ = sub_100A38E30(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleGetPreferredRoamingNetworksResponse_sync: Event cause is %s", buf, 0x20u);
  }

  if (v5 == 1)
  {
    goto LABEL_27;
  }

  if (v5 != 3)
  {
    return;
  }

  v9 = *(v6 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(***(v6 + 88));
    v11 = sub_100531604(**a4);
    LODWORD(buf[0].__locale_) = 136315650;
    *(&buf[0].__locale_ + 4) = v10;
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = " ";
    HIWORD(buf[2].__locale_) = 2080;
    buf[3].__locale_ = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sGetPreferredNetworks, response code %s", buf, 0x20u);
  }

  v12 = *a4;
  if (**a4 != 6000)
  {
LABEL_27:
    entitlements::ControllerImpl::scheduleGetPreferredNetworksRetry(v6);
    return;
  }

  *(v6 + 1720) = 0;
  v13 = *(v6 + 1712);
  *(v6 + 1712) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
    v12 = *a4;
  }

  *(v6 + 1724) = 1;
  v14 = *(v12 + 3);
  std::mutex::lock((v6 + 2168));
  if ((*(v6 + 2088) & 1) == 0 || (sub_100A3F5FC(v6 + 1992, v14) & 1) == 0)
  {
    v44 = v14;
    if (*(v14 + 24) == 1)
    {
      v15 = *v14;
      v16 = *(v14 + 8);
      if (*v14 != v16)
      {
        do
        {
          v65 = 0;
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v54 = 0u;
          *v53 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_10000D518(buf);
          sub_100A3E80C(buf, v15);
          v20 = *(v6 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = v6;
            v22 = v19;
            v23 = v18;
            v24 = v16;
            v25 = v17;
            v26 = v21;
            v27 = PersonalityInfo::logPrefix(***(v21 + 88));
            sub_10006EE70(&buf[1], __p);
            v28 = __p;
            if (v46 < 0)
            {
              v28 = __p[0];
            }

            *v47 = 136315650;
            *&v47[4] = v27;
            v48 = 2080;
            v49 = " ";
            v50 = 2080;
            v51 = v28;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#W %s%ssetPLMNPriorityInfo [Unlimited]: %s", v47, 0x20u);
            if (v46 < 0)
            {
              operator delete(__p[0]);
            }

            v17 = v25;
            v16 = v24;
            v18 = v23;
            v19 = v22;
            v6 = v26;
          }

          buf[0].__locale_ = v18;
          *(&buf[0].__locale_ + *(v18 - 3)) = v19;
          if (SHIBYTE(v54) < 0)
          {
            operator delete(v53[1]);
          }

          std::locale::~locale(&buf[2]);
          std::ostream::~ostream();
          std::ios::~ios();
          v15 += 72;
        }

        while (v15 != v16);
      }
    }

    sub_1003E0FD4(v6 + 1992, v44);
    *v47 = 0;
    sub_100A3F8F0(v44, v47);
    v29 = *(v6 + 40);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = PersonalityInfo::logPrefix(***(v6 + 88));
      if (*(v44 + 24) == 1)
      {
        v31 = (0x8E38E38E38E38E39 * ((*(v44 + 8) - *v44) >> 3));
      }

      else
      {
        v31 = 0;
      }

      if (*(v44 + 56) == 1)
      {
        v32 = (0x8E38E38E38E38E39 * ((*(v44 + 40) - *(v44 + 32)) >> 3));
      }

      else
      {
        v32 = 0;
      }

      if (*(v44 + 88) == 1)
      {
        v33 = (0x8E38E38E38E38E39 * ((*(v44 + 72) - *(v44 + 64)) >> 3));
      }

      else
      {
        v33 = 0;
      }

      LODWORD(buf[0].__locale_) = 136316162;
      *(&buf[0].__locale_ + 4) = v30;
      WORD2(buf[1].__locale_) = 2080;
      *(&buf[1].__locale_ + 6) = " ";
      HIWORD(buf[2].__locale_) = 2048;
      buf[3].__locale_ = v31;
      LOWORD(buf[4].__locale_) = 2048;
      *(&buf[4].__locale_ + 2) = v32;
      WORD1(buf[5].__locale_) = 2048;
      *(&buf[5].__locale_ + 4) = v33;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sCaching PLMN priority info. Unlimited Size: %zu, Metered Size: %zu, Others Size: %zu", buf, 0x34u);
    }

    ServiceMap = Registry::getServiceMap(*(v6 + 64));
    v35 = ServiceMap;
    if (v36 < 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(ServiceMap);
    buf[0].__locale_ = v36;
    v40 = sub_100009510(&v35[1].__m_.__sig, buf);
    if (v40)
    {
      v42 = v40[3];
      v41 = v40[4];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v41);
        v43 = 0;
LABEL_45:
        (*(*v42 + 16))(v42, ***(v6 + 88) + 24, @"kPLMNPriorityInfoCacheKey", *v47, kCarrierEntitlementsWalletDomain, 0, 2, 0);
        if ((v43 & 1) == 0)
        {
          sub_100004A34(v41);
        }

        sub_1003CAC30(v6 + 1536, (***(v6 + 88) + 52));
        sub_1000296E0(v47);
        goto LABEL_48;
      }
    }

    else
    {
      v42 = 0;
    }

    std::mutex::unlock(v35);
    v41 = 0;
    v43 = 1;
    goto LABEL_45;
  }

LABEL_48:
  std::mutex::unlock((v6 + 2168));
}

void sub_1003E0B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v17 = v16;
  sub_1000296E0(va);
  std::mutex::unlock((v17 + 2168));
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::scheduleGetPreferredNetworksRetry(entitlements::ControllerImpl *this)
{
  if (*(this + 214))
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315394;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sGetPreferredNetworks, Already waiting on timer", buf, 0x16u);
    }
  }

  else
  {
    v4 = *(this + 430);
    if (v4 >= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *(this + 430);
    }

    v6 = dword_1017FD530[v5];
    *(this + 430) = v4 + 1;
    sub_100004AA0(buf, this + 1);
    v8 = *buf;
    v7 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v7);
    }

    Registry::getTimerService(buf, *(this + 8));
    v9 = *buf;
    sub_10000501C(__p, "GetPreferredNetworks retry");
    v10 = *(this + 3);
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1003E10A4;
    aBlock[3] = &unk_101E499F0;
    aBlock[4] = this;
    aBlock[5] = v8;
    v17 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = _Block_copy(aBlock);
    sub_100D23364(v9, __p, 1, 1000000 * v6, &object, &v18);
    v11 = v22;
    v22 = 0;
    v12 = *(this + 214);
    *(this + 214) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      v13 = v22;
      v22 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    if (v18)
    {
      _Block_release(v18);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v14 = *(this + 5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PersonalityInfo::logPrefix(***(this + 11));
      *buf = 136315650;
      *&buf[4] = v15;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v24 = 1024;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sGetPreferredNetworks, Triggering retry in %d seconds.", buf, 0x1Cu);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_1003E0F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003E0FD4(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 32);
  if (*(a1 + 96) == 1)
  {
    sub_1003EC234(a1, a2);
    sub_1003EC234(v4, a2 + 32);
    sub_1003EC234(a1 + 64, a2 + 64);
  }

  else
  {
    sub_1003EA5B8(a1, a2);
    sub_1003EA5B8(v4, a2 + 32);
    sub_1003EA5B8((a1 + 64), a2 + 64);
    *(a1 + 96) = 1;
  }

  return a1;
}

void sub_1003E1060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 56) == 1)
  {
    sub_1003EA960(&a10);
  }

  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1003EA960(&a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E10A4(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = PersonalityInfo::logPrefix(***(v3 + 88));
          v9 = 136315394;
          v10 = v7;
          v11 = 2080;
          v12 = " ";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sGetPreferredNetworks, callback", &v9, 0x16u);
        }

        v8 = *(v3 + 1712);
        *(v3 + 1712) = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        (*(*v3 + 424))(v3);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1003E120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    v16 = v8;
    v17 = 2080;
    v18 = " ";
    v19 = 2080;
    v20 = sub_100A38E30(a3);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleGetPSDeviceList_sync: Event cause is %s", buf, 0x20u);
  }

  v9 = ***(a1 + 88);
  if (*(v9 + 47) < 0)
  {
    sub_100005F2C(__p, *(v9 + 24), *(v9 + 32));
  }

  else
  {
    *__p = *(v9 + 24);
    v14 = *(v9 + 40);
  }

  v10 = a4[1];
  v11 = *a4;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003E13A0(&event::entitlements::get_ps_device_list_result, __p, a3, &v11);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003E1378(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003E13A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10040A7A4((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10040A9E8(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003E1484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E14C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    v16 = v8;
    v17 = 2080;
    v18 = " ";
    v19 = 2080;
    v20 = sub_100A38E30(a3);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandleGetCarrierSpaceUpdates_sync: Event cause is %s", buf, 0x20u);
  }

  v9 = ***(a1 + 88);
  if (*(v9 + 47) < 0)
  {
    sub_100005F2C(__p, *(v9 + 24), *(v9 + 32));
  }

  else
  {
    *__p = *(v9 + 24);
    v14 = *(v9 + 40);
  }

  v10 = a4[1];
  v11 = *a4;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003E1654(event::entitlements::get_carrier_space_updates_result, __p, a3, &v11);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003E162C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

void sub_1003E1654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10040B590((a1 + 24), __p, a3, &v12);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = a4[1];
  v10 = *a4;
  v11 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10040B7D4(a1, a2, a3, &v10);
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_1003E1738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E1774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    v16 = v8;
    v17 = 2080;
    v18 = " ";
    v19 = 2080;
    v20 = sub_100A38E30(a3);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%shandle UpdateAccountWithFeatureOrService: Event cause is %s", buf, 0x20u);
  }

  v9 = ***(a1 + 88);
  if (*(v9 + 47) < 0)
  {
    sub_100005F2C(__p, *(v9 + 24), *(v9 + 32));
  }

  else
  {
    *__p = *(v9 + 24);
    v14 = *(v9 + 40);
  }

  v10 = a4[1];
  v11 = *a4;
  v12 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1003E1654(event::entitlements::update_account_result, __p, a3, &v11);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1003E18E0(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

const void **entitlements::ControllerImpl::extractMSISDNfromRCSToken@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  ctu::tokenize();
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#W %s%sincorrect format of RCSToken payload, not enough dots", buf, 0x16u);
  }

  memset(buf, 0, 24);
  ctu::cf::assign();
  *a3 = *buf;
  *(a3 + 16) = *&buf[16];
  *buf = v8;
  sub_1000087B4(buf);
  return sub_100005978(&v9);
}

void sub_1003E1DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, const void *a23, char *a24)
{
  sub_1003EDCB4(v24 - 96);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  a24 = &a20;
  sub_1000087B4(&a24);
  sub_100005978(&a23);
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::processRCSTokenResponseAsPNR(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  memset(&__p, 0, sizeof(__p));
  v6 = *(a2 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    entitlements::ControllerImpl::extractMSISDNfromRCSToken(a1, buf);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = buf[0];
    size = HIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = buf[0].__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::mutex::lock((a1 + 2168));
      std::string::operator=((a1 + 1944), &__p);
      std::mutex::unlock((a1 + 2168));
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v9 = ServiceMap;
      if ((v10 & 0x8000000000000000) != 0)
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
      buf[0].__r_.__value_.__r.__words[0] = v10;
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
LABEL_30:
            if ((v17 & 1) == 0)
            {
              sub_100004A34(v15);
            }

            goto LABEL_32;
          }

LABEL_20:
          v20 = **(a1 + 88);
          CSIPhoneNumber::CSIPhoneNumber();
          (*(*v16 + 312))(v16, v20, buf);
          if (v67 < 0)
          {
            operator delete(v66);
          }

          if (v65 < 0)
          {
            operator delete(v64);
          }

          if (v63 < 0)
          {
            operator delete(v62.__r_.__value_.__l.__size_);
          }

          if (SHIBYTE(v61) < 0)
          {
            operator delete(buf[1].__r_.__value_.__l.__size_);
          }

          if (buf[1].__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(buf[0].__r_.__value_.__l.__size_);
          }

          goto LABEL_30;
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
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = PersonalityInfo::logPrefix(***(a1 + 88));
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = v19;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = " ";
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#W %s%s***** TOKEN WITHOUT MSISDN !!! *****", buf, 0x16u);
    }
  }

LABEL_32:
  theDict = 0;
  sub_100534380(a3, &theDict);
  if (!theDict)
  {
    goto LABEL_98;
  }

  v21 = CFDictionaryGetValue(theDict, off_101FB24C0);
  v22 = v21;
  if (!v21)
  {
    goto LABEL_98;
  }

  v23 = CFGetTypeID(v21);
  if (v23 != CFStringGetTypeID())
  {
    goto LABEL_98;
  }

  v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v24 = __p.__r_.__value_.__l.__size_;
  }

  if (v24)
  {
    v53 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v26 = v53;
      v53 = Mutable;
      buf[0].__r_.__value_.__r.__words[0] = v26;
      sub_1000296E0(&buf[0].__r_.__value_.__l.__data_);
    }

    CFDictionarySetValue(v53, @"embedded-request", v22);
    v27 = v53;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a2, *(a2 + 8));
    }

    else
    {
      __dst = *a2;
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v58, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v58 = __dst;
    }

    v56 = 0;
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(buf, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
    }

    else
    {
      buf[0] = v58;
    }

    v57 = 0;
    if (ctu::cf::convert_copy())
    {
      v28 = v56;
      v56 = v57;
      v49 = v28;
      sub_100005978(&v49);
    }

    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    value = v56;
    v56 = 0;
    sub_100005978(&v56);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    CFDictionarySetValue(v27, @"signed-response", value);
    sub_100005978(&value);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v29 = Registry::getServiceMap(*(a1 + 64));
    v30 = v29;
    if ((v31 & 0x8000000000000000) != 0)
    {
      v32 = (v31 & 0x7FFFFFFFFFFFFFFFLL);
      v33 = 5381;
      do
      {
        v31 = v33;
        v34 = *v32++;
        v33 = (33 * v33) ^ v34;
      }

      while (v34);
    }

    std::mutex::lock(v29);
    buf[0].__r_.__value_.__r.__words[0] = v31;
    v35 = sub_100009510(&v30[1].__m_.__sig, buf);
    if (v35)
    {
      v37 = v35[3];
      v36 = v35[4];
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v30);
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v36);
        v38 = 0;
LABEL_65:
        (*(*v37 + 16))(v37, ***(a1 + 88) + 24, @"rcstoken-pnr", v53, kCarrierEntitlementsWalletDomain, 0, 4, 0);
        if ((v38 & 1) == 0)
        {
          sub_100004A34(v36);
        }

        sub_1000296E0(&v53);
        goto LABEL_68;
      }
    }

    else
    {
      v37 = 0;
    }

    std::mutex::unlock(v30);
    v36 = 0;
    v38 = 1;
    goto LABEL_65;
  }

LABEL_68:
  v49 = 0;
  v50 = 0;
  entitlements::ControllerImpl::findDriverForTask(a1, 14, &v49);
  v39 = v49;
  if (v49)
  {
    memset(&v62, 0, sizeof(v62));
    memset(buf, 0, sizeof(buf));
    v61 = 2;
    v40 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = __p.__r_.__value_.__l.__size_;
    }

    if (v40)
    {
      std::string::operator=(buf, &__p);
      v41 = *(a2 + 23);
      if (v41 >= 0)
      {
        v42 = a2;
      }

      else
      {
        v42 = *a2;
      }

      if (v41 >= 0)
      {
        v43 = *(a2 + 23);
      }

      else
      {
        v43 = *(a2 + 8);
      }

      memset(&v58, 0, sizeof(v58));
      sub_1001E0D88(&v58, v42, &v42[v43], v43);
      if (buf[1].__r_.__value_.__r.__words[0])
      {
        buf[1].__r_.__value_.__l.__size_ = buf[1].__r_.__value_.__r.__words[0];
        operator delete(buf[1].__r_.__value_.__l.__data_);
      }

      buf[1] = v58;
      LOBYTE(v61) = 16;
      std::string::operator=(&v62, (*(a1 + 88) + 64));
    }

    v44 = *(a1 + 40);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = PersonalityInfo::logPrefix(***(a1 + 88));
      v46 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = __p.__r_.__value_.__l.__size_;
      }

      if (v46)
      {
        v47 = "success";
      }

      else
      {
        v47 = "failure";
      }

      LODWORD(v58.__r_.__value_.__l.__data_) = 136315650;
      *(v58.__r_.__value_.__r.__words + 4) = v45;
      WORD2(v58.__r_.__value_.__r.__words[1]) = 2080;
      *(&v58.__r_.__value_.__r.__words[1] + 6) = " ";
      HIWORD(v58.__r_.__value_.__r.__words[2]) = 2080;
      v59 = v47;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%sReport PNR (via RCS token) complete with %s", &v58, 0x20u);
    }

    v48 = *(a1 + 128);
    (**v39)(&v58, v39);
    sub_1003A0D20(v48, buf);
    if (v58.__r_.__value_.__l.__size_)
    {
      sub_100004A34(v58.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (buf[1].__r_.__value_.__r.__words[0])
    {
      buf[1].__r_.__value_.__l.__size_ = buf[1].__r_.__value_.__r.__words[0];
      operator delete(buf[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }
  }

  if (v50)
  {
    sub_100004A34(v50);
  }

LABEL_98:
  sub_10001021C(&theDict);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1003E263C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, const void *a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, const void *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_100005978(&a28);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_1000296E0(&a19);
  sub_10001021C(&a20);
  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_1003E278C(uint64_t a1, uint64_t a2, uint64_t a3, int **a4, const __CFDictionary **a5)
{
  v6 = a3;
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 88));
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v121 = sub_100A38E30(v6);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%shandle getAuthorizationTokens response: Event cause is %s", buf, 0x20u);
  }

  v113 = 0;
  v114 = 0;
  entitlements::ControllerImpl::findDriverForTask(a1, 0, &v113);
  if (v113)
  {
    (**v113)(buf);
    v10 = sub_100A8214C(*buf);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    Current = CFAbsoluteTimeGetCurrent();
    v112 = CFDateCreate(kCFAllocatorDefault, Current + (60 * v10));
    memset(&v111, 0, sizeof(v111));
    *v110 = 0;
    if (v6 == 2)
    {
LABEL_137:
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v88 = ServiceMap;
      if (v89 < 0)
      {
        v90 = (v89 & 0x7FFFFFFFFFFFFFFFLL);
        v91 = 5381;
        do
        {
          v89 = v91;
          v92 = *v90++;
          v91 = (33 * v91) ^ v92;
        }

        while (v92);
      }

      std::mutex::lock(ServiceMap);
      *buf = v89;
      v93 = sub_100009510(&v88[1].__m_.__sig, buf);
      if (v93)
      {
        v94 = v93[3];
        v95 = v93[4];
        if (v95)
        {
          atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v88);
          atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v95);
          v96 = 0;
LABEL_145:
          (*(*v94 + 48))(v94);
          if ((v96 & 1) == 0)
          {
            sub_100004A34(v95);
          }

          sub_1000296E0(v110);
          if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v111.__r_.__value_.__l.__data_);
          }

          sub_1003EC530(&v112);
          goto LABEL_150;
        }
      }

      else
      {
        v94 = 0;
      }

      std::mutex::unlock(v88);
      v95 = 0;
      v96 = 1;
      goto LABEL_145;
    }

    if (v6 != 3)
    {
      goto LABEL_126;
    }

    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(***(a1 + 88));
      v14 = sub_100531604(**a4);
      *buf = 136315650;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v121 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sresponse code %s", buf, 0x20u);
    }

    v15 = **a4;
    v97 = a5;
    if ((v15 - 6001) >= 2)
    {
      if (v15 == 6000)
      {
        theDict = 0;
        std::mutex::lock((a1 + 2168));
        sub_1000676D4(&theDict, (a1 + 2096));
        std::mutex::unlock((a1 + 2168));
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v28 = *v110;
          *v110 = Mutable;
          *buf = v28;
          sub_1000296E0(buf);
        }

        v29 = 0;
        v30 = 0;
        v31 = 1;
        do
        {
          v99 = v31;
          if ((*(a1 + 528) >> v30))
          {
            v32 = *(*a4 + 3);
            v34 = *v32;
            v33 = v32[1];
            if (v34 != v33)
            {
              while (v30 != *(v34 + 4))
              {
                v34 += 32;
                if (v34 == v33)
                {
                  v34 = v33;
                  break;
                }
              }
            }

            v35 = sub_1013E5D20(v30);
            if (theDict)
            {
              Value = CFDictionaryGetValue(theDict, v35);
              v37 = Value;
              if (Value)
              {
                v38 = CFGetTypeID(Value);
                if (v38 == CFDictionaryGetTypeID())
                {
                  sub_1002972A4(*v110, v35, v37);
                }
              }
            }

            if (v34 != *(*(*a4 + 3) + 8))
            {
              v108 = 0;
              v39 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (v39)
              {
                v40 = v108;
                v108 = v39;
                *buf = v40;
                sub_1000296E0(buf);
              }

              if (v99)
              {
                sub_10040CE7C(v108, @"scheduled-ts", v112);
              }

              if ((*v34 - 6001) >= 2)
              {
                if (*v34 == 6000)
                {
                  v107 = 0;
                  v45 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                  if (v45)
                  {
                    v46 = v107;
                    v107 = v45;
                    *buf = v46;
                    sub_1000279DC(buf);
                  }

                  v47 = *(v34 + 8);
                  v48 = *(v34 + 16);
                  while (v47 != v48)
                  {
                    v106 = 0;
                    v49 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                    if (v49)
                    {
                      v50 = v106;
                      v106 = v49;
                      *buf = v50;
                      sub_1000296E0(buf);
                    }

                    if (*(v47 + 23) < 0)
                    {
                      sub_100005F2C(__p, *v47, *(v47 + 1));
                    }

                    else
                    {
                      v51 = *v47;
                      v104 = *(v47 + 2);
                      *__p = v51;
                    }

                    if (SHIBYTE(v104) < 0)
                    {
                      sub_100005F2C(&__dst, __p[0], __p[1]);
                    }

                    else
                    {
                      __dst = *__p;
                      v117 = v104;
                    }

                    v115 = 0;
                    if (SHIBYTE(v117) < 0)
                    {
                      sub_100005F2C(buf, __dst, *(&__dst + 1));
                    }

                    else
                    {
                      *buf = __dst;
                      *&buf[16] = v117;
                    }

                    v118 = 0;
                    if (ctu::cf::convert_copy())
                    {
                      v52 = v115;
                      v115 = v118;
                      v119 = v52;
                      sub_100005978(&v119);
                    }

                    if ((buf[23] & 0x80000000) != 0)
                    {
                      operator delete(*buf);
                    }

                    *v105 = v115;
                    v115 = 0;
                    sub_100005978(&v115);
                    if (SHIBYTE(v117) < 0)
                    {
                      operator delete(__dst);
                    }

                    sub_1001768B8(v106, @"value", *v105);
                    sub_100005978(v105);
                    if (SHIBYTE(v104) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    if (*(v47 + 4) != *(v47 + 3))
                    {
                      *v105 = 0;
                      v53 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                      if (v53)
                      {
                        v54 = *v105;
                        *v105 = v53;
                        *buf = v54;
                        sub_1000279DC(buf);
                      }

                      v55 = *(v47 + 3);
                      v56 = *(v47 + 4);
                      while (v55 != v56)
                      {
                        if (*(v55 + 23) < 0)
                        {
                          sub_100005F2C(v100, *v55, *(v55 + 1));
                        }

                        else
                        {
                          v57 = *v55;
                          v101 = *(v55 + 2);
                          *v100 = v57;
                        }

                        if (SHIBYTE(v101) < 0)
                        {
                          sub_100005F2C(&__dst, v100[0], v100[1]);
                        }

                        else
                        {
                          __dst = *v100;
                          v117 = v101;
                        }

                        v115 = 0;
                        if (SHIBYTE(v117) < 0)
                        {
                          sub_100005F2C(buf, __dst, *(&__dst + 1));
                        }

                        else
                        {
                          *buf = __dst;
                          *&buf[16] = v117;
                        }

                        v118 = 0;
                        if (ctu::cf::convert_copy())
                        {
                          v58 = v115;
                          v115 = v118;
                          v119 = v58;
                          sub_100005978(&v119);
                        }

                        if ((buf[23] & 0x80000000) != 0)
                        {
                          operator delete(*buf);
                        }

                        cf = v115;
                        v115 = 0;
                        sub_100005978(&v115);
                        if (SHIBYTE(v117) < 0)
                        {
                          operator delete(__dst);
                        }

                        sub_1002F5B6C(*v105, cf);
                        sub_100005978(&cf);
                        if (SHIBYTE(v101) < 0)
                        {
                          operator delete(v100[0]);
                        }

                        v55 = (v55 + 24);
                      }

                      sub_1002B24E0(v106, @"devices", *v105);
                      sub_1000279DC(v105);
                    }

                    sub_10039D64C(v107, v106);
                    sub_1000296E0(&v106);
                    v47 += 3;
                  }

                  v63 = *(a1 + 40);
                  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                  {
                    v64 = PersonalityInfo::logPrefix(***(a1 + 88));
                    v65 = sub_1013E5CF4(v30);
                    *buf = 136315650;
                    *&buf[4] = v64;
                    *&buf[12] = 2080;
                    *&buf[14] = " ";
                    *&buf[22] = 2080;
                    v121 = v65;
                    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%sreceived authorization tokens for %s:", buf, 0x20u);
                  }

                  *buf = off_101E4B738;
                  *&buf[8] = a1;
                  v121 = buf;
                  logger::CFTypeRefLogger();
                  sub_100007E44(buf);
                  sub_1002B24E0(v108, @"collection", v107);
                  sub_10040D0EC(*v110, v35, v108);
                  if (v29)
                  {
                    v66 = ***(a1 + 88);
                    if (!*(v66 + 49) || *(v66 + 49) == 3)
                    {
                      v67 = *(v34 + 8);
                      if (*(v34 + 16) == v67)
                      {
                        v68 = *(a1 + 40);
                        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
                        {
                          v69 = PersonalityInfo::logPrefix(v66);
                          v70 = sub_1013E5CF4(1);
                          *buf = 136315650;
                          *&buf[4] = v69;
                          *&buf[12] = 2080;
                          *&buf[14] = " ";
                          *&buf[22] = 2080;
                          v121 = v70;
                          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#W %s%sset of authorization tokens for %s given but empty", buf, 0x20u);
                        }
                      }

                      else
                      {
                        std::string::operator=(&v111, v67);
                      }
                    }
                  }

                  sub_1000279DC(&v107);
                }

                else
                {
                  v59 = *(a1 + 40);
                  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
                  {
                    v60 = PersonalityInfo::logPrefix(***(a1 + 88));
                    v61 = sub_1013E5CF4(v30);
                    v62 = sub_100531604(*v34);
                    *buf = 136315906;
                    *&buf[4] = v60;
                    *&buf[12] = 2080;
                    *&buf[14] = " ";
                    *&buf[22] = 2080;
                    v121 = v61;
                    v122 = 2080;
                    v123 = v62;
                    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I %s%sleaving authorization tokens as is for %s because of %s", buf, 0x2Au);
                  }
                }
              }

              else
              {
                v41 = *(a1 + 40);
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = PersonalityInfo::logPrefix(***(a1 + 88));
                  v43 = sub_1013E5CF4(v30);
                  v44 = sub_100531604(*v34);
                  *buf = 136315906;
                  *&buf[4] = v42;
                  *&buf[12] = 2080;
                  *&buf[14] = " ";
                  *&buf[22] = 2080;
                  v121 = v43;
                  v122 = 2080;
                  v123 = v44;
                  _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%ssettings authorization tokens for %s to kCFNull because of %s", buf, 0x2Au);
                }

                sub_10040D190(v108, @"collection", kCFNull);
                sub_10040D0EC(*v110, v35, v108);
              }

              sub_1000296E0(&v108);
            }
          }

          v31 = 0;
          v29 = 1;
          v30 = 1;
        }

        while ((v99 & 1) != 0);
        sub_10001021C(&theDict);
      }

      else
      {
        v71 = *(a1 + 40);
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          v72 = PersonalityInfo::logPrefix(***(a1 + 88));
          v73 = sub_100531604(**a4);
          *buf = 136315650;
          *&buf[4] = v72;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          v121 = v73;
          _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "#I %s%sleave authorization tokens as is because of status %s", buf, 0x20u);
        }
      }
    }

    else
    {
      v16 = *(a1 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = PersonalityInfo::logPrefix(***(a1 + 88));
        v18 = sub_100531604(**a4);
        *buf = 136315650;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v121 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sInvalidating all authorization tokens because of status %s", buf, 0x20u);
      }

      v19 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v19)
      {
        v20 = *v110;
        *v110 = v19;
        *buf = v20;
        sub_1000296E0(buf);
      }

      v21 = 0;
      v22 = 1;
      do
      {
        v23 = v22;
        if ((*(a1 + 528) >> v21))
        {
          *&__dst = 0;
          v24 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          if (v24)
          {
            v25 = __dst;
            *&__dst = v24;
            *buf = v25;
            sub_1000296E0(buf);
          }

          if (v23)
          {
            sub_10040CE7C(__dst, @"scheduled-ts", v112);
          }

          sub_10040D190(__dst, @"collection", kCFNull);
          v26 = sub_1013E5D20(v21);
          sub_10040D0EC(*v110, v26, __dst);
          sub_1000296E0(&__dst);
        }

        v22 = 0;
        v21 = 1;
      }

      while ((v23 & 1) != 0);
    }

    a5 = v97;
    if (!*v110)
    {
LABEL_126:
      size = HIBYTE(v111.__r_.__value_.__r.__words[2]);
      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v111.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        *&__dst = 0;
        sub_100534380(*a5, &__dst);
        if (__dst)
        {
          v86 = ***(a1 + 88);
          *buf = 2;
          if (*(v86 + 47) < 0)
          {
            sub_100005F2C(&buf[8], *(v86 + 24), *(v86 + 32));
          }

          else
          {
            *&buf[8] = *(v86 + 24);
            v121 = *(v86 + 40);
          }

          sub_1003E3940(a1 + 1536, buf);
          if (SHIBYTE(v121) < 0)
          {
            operator delete(*&buf[8]);
          }
        }

        sub_10001021C(&__dst);
      }

      entitlements::ControllerImpl::processRCSTokenResponseAsPNR(a1, &v111, *a5);
      goto LABEL_137;
    }

    v74 = Registry::getServiceMap(*(a1 + 64));
    v75 = v74;
    if (v76 < 0)
    {
      v77 = (v76 & 0x7FFFFFFFFFFFFFFFLL);
      v78 = 5381;
      do
      {
        v76 = v78;
        v79 = *v77++;
        v78 = (33 * v78) ^ v79;
      }

      while (v79);
    }

    std::mutex::lock(v74);
    *buf = v76;
    v80 = sub_100009510(&v75[1].__m_.__sig, buf);
    if (v80)
    {
      v82 = v80[3];
      v81 = v80[4];
      if (v81)
      {
        atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v75);
        atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v81);
        v83 = 0;
LABEL_121:
        (*(*v82 + 16))(v82, ***(a1 + 88) + 24, @"authorization-tokens", *v110, kCarrierEntitlementsWalletDomain, 0, 4, 0);
        if ((v83 & 1) == 0)
        {
          sub_100004A34(v81);
        }

        std::mutex::lock((a1 + 2168));
        sub_100010180(&__dst, v110);
        v84 = (a1 + 2096);
        if ((a1 + 2096) != &__dst)
        {
          *buf = *v84;
          *v84 = __dst;
          *&__dst = 0;
          sub_10001021C(buf);
        }

        sub_10001021C(&__dst);
        std::mutex::unlock((a1 + 2168));
        goto LABEL_126;
      }
    }

    else
    {
      v82 = 0;
    }

    std::mutex::unlock(v75);
    v81 = 0;
    v83 = 1;
    goto LABEL_121;
  }

LABEL_150:
  if (v114)
  {
    sub_100004A34(v114);
  }
}

void sub_1003E36E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, const void *a36, const void *a37, const void *a38, const void *a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48, char a49)
{
  sub_1000279DC(&a36);
  sub_1000296E0(&a37);
  sub_10001021C(&a38);
  sub_1000296E0(&a39);
  if (a45 < 0)
  {
    operator delete(__p);
  }

  sub_1003EC530(&a46);
  if (a48)
  {
    sub_100004A34(a48);
  }

  _Unwind_Resume(a1);
}

void sub_1003E3940(uint64_t a1, int *a2)
{
  v5 = 0;
  sub_1001E91C4(a2, &v5);
  sub_10000501C(&__p, "/cc/events/carrier_entitlements_event");
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

void sub_1003E39D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::getUserAuthToken(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10040D234(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_1003E3B44(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void entitlements::ControllerImpl::copyAuthSubscriberId(entitlements::ControllerImpl *this@<X0>, void *a2@<X8>)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1003E3CC0;
  v4[3] = &unk_101E49A20;
  v4[4] = this;
  v5 = v4;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10040D5C4;
  v6[3] = &unk_101E4B7A8;
  v6[4] = this + 8;
  v6[5] = &v5;
  v7 = v6;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_10040D5D8;
    v11 = &unk_101E4B7E8;
    v12 = a2;
    v13 = &v7;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_100040B74;
    v11 = &unk_101E4B7C8;
    v12 = a2;
    v13 = &v7;
    dispatch_sync(v2, &block);
  }
}

void sub_1003E3CC0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 32);
  v5 = 0;
  v6 = 0;
  entitlements::ControllerImpl::findDriverForTask(v3, 0, &v5);
  if (v5)
  {
    sub_1009C2E00(v5, a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  v4 = v6;
  if (v6)
  {

    sub_100004A34(v4);
  }
}

void sub_1003E3D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t entitlements::ControllerImpl::isSimAuthenticated(entitlements::ControllerImpl *this)
{
  std::mutex::lock((this + 2168));
  v2 = *(this + 2105);
  std::mutex::unlock((this + 2168));
  return v2;
}

void entitlements::ControllerImpl::handlePAssociatedUri_sync(uint64_t a1, std::string *a2)
{
  v2 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v2 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v4 = a2;
    v6 = *(a1 + 88);
    v7 = (v6 + 352);
    if (*(v6 + 376) != 1)
    {
      goto LABEL_15;
    }

    v8 = *(v6 + 375);
    v9 = *(v6 + 360);
    if ((v8 & 0x80u) == 0)
    {
      v9 = v8;
    }

    if (v9 != size)
    {
      goto LABEL_15;
    }

    if ((v8 & 0x80u) == 0)
    {
      v10 = v7;
    }

    else
    {
      v10 = v7->__r_.__value_.__r.__words[0];
    }

    if (v2 < 0)
    {
      a2 = a2->__r_.__value_.__r.__words[0];
    }

    if (memcmp(v10, a2, size))
    {
LABEL_15:
      sub_1001696A4(v7, v4);
      sub_1003CA228(*(a1 + 88), 0);
      v11 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
      if ((v11 & 0x80u) != 0)
      {
        v11 = v4->__r_.__value_.__l.__size_;
      }

      if (!v11)
      {
        goto LABEL_63;
      }

      entitlements::ControllerImpl::getCurrentPAssociatedUri(__p, a1);
      v12 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
      if (v12 >= 0)
      {
        v13 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = v4->__r_.__value_.__l.__size_;
      }

      v14 = HIBYTE(v42);
      v15 = SHIBYTE(v42);
      if (v42 < 0)
      {
        v14 = __p[1];
      }

      if (v13 == v14)
      {
        if (v12 >= 0)
        {
          v16 = v4;
        }

        else
        {
          v16 = v4->__r_.__value_.__r.__words[0];
        }

        if (v42 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = __p[0];
        }

        v18 = memcmp(v16, v17, v13) != 0;
        if (v15 < 0)
        {
LABEL_35:
          operator delete(__p[0]);
          if (v18)
          {
LABEL_36:
            ServiceMap = Registry::getServiceMap(*(a1 + 64));
            v20 = ServiceMap;
            if (v21 < 0)
            {
              v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
              v23 = 5381;
              do
              {
                v21 = v23;
                v24 = *v22++;
                v23 = (33 * v23) ^ v24;
              }

              while (v24);
            }

            std::mutex::lock(ServiceMap);
            __p[0] = v21;
            v25 = sub_100009510(&v20[1].__m_.__sig, __p);
            if (v25)
            {
              v27 = v25[3];
              v26 = v25[4];
              if (v26)
              {
                atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v20);
                atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v26);
                v28 = 0;
LABEL_44:
                v29 = ***(a1 + 88);
                if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(v35, v4->__r_.__value_.__l.__data_, v4->__r_.__value_.__l.__size_);
                }

                else
                {
                  *v35 = *&v4->__r_.__value_.__l.__data_;
                  v36 = v4->__r_.__value_.__r.__words[2];
                }

                if (SHIBYTE(v36) < 0)
                {
                  sub_100005F2C(__dst, v35[0], v35[1]);
                }

                else
                {
                  *__dst = *v35;
                  v40 = v36;
                }

                v38 = 0;
                if (SHIBYTE(v40) < 0)
                {
                  sub_100005F2C(__p, __dst[0], __dst[1]);
                }

                else
                {
                  *__p = *__dst;
                  v42 = v40;
                }

                v43 = 0;
                if (ctu::cf::convert_copy())
                {
                  v30 = v38;
                  v38 = v43;
                  v44 = v30;
                  sub_100005978(&v44);
                }

                if (SHIBYTE(v42) < 0)
                {
                  operator delete(__p[0]);
                }

                v31 = v38;
                v37 = v38;
                v38 = 0;
                sub_100005978(&v38);
                if (SHIBYTE(v40) < 0)
                {
                  operator delete(__dst[0]);
                }

                (*(*v27 + 16))(v27, v29 + 24, @"p_associated_uri", v31, kCarrierEntitlementsWalletDomain, 0, 4, 0);
                sub_100005978(&v37);
                if (SHIBYTE(v36) < 0)
                {
                  operator delete(v35[0]);
                }

                if ((v28 & 1) == 0)
                {
                  sub_100004A34(v26);
                }

                goto LABEL_63;
              }
            }

            else
            {
              v27 = 0;
            }

            std::mutex::unlock(v20);
            v26 = 0;
            v28 = 1;
            goto LABEL_44;
          }

LABEL_63:
          v33 = *(a1 + 104);
          v32 = *(a1 + 112);
          while (v33 != v32)
          {
            v34 = *v33;
            v33 += 2;
            (*(*v34 + 384))(v34, v4);
          }

          return;
        }
      }

      else
      {
        v18 = 1;
        if (SHIBYTE(v42) < 0)
        {
          goto LABEL_35;
        }
      }

      if (v18)
      {
        goto LABEL_36;
      }

      goto LABEL_63;
    }
  }
}

void sub_1003E413C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if ((v32 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  _Unwind_Resume(a1);
}

void entitlements::ControllerImpl::refreshUserAuthToken(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  sub_100004AA0(&v5, (a1 + 8));
  v4 = v6;
  v8 = v5;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  sub_1000224C8(&v10, a2);
  v5 = 0;
  v6 = 0;
  sub_100004AA0(&v5, (a1 + 8));
  operator new();
}

void sub_1003E433C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void entitlements::ControllerImpl::handleDataServiceConfigRefreshed_sync(os_log_t *this)
{
  if (os_log_type_enabled(this[5], OS_LOG_TYPE_DEBUG))
  {
    sub_10176F908(this);
  }

  v3 = this[13];
  v2 = this[14];
  while (v3 != v2)
  {
    v4 = *v3;
    v3 += 2;
    (*(*v4 + 312))(v4);
  }
}

void entitlements::ControllerImpl::handlePlanPurchased_sync(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(***(a1 + 88));
      v5 = 136315394;
      v6 = v4;
      v7 = 2080;
      v8 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sReceived event that roaming plan has been purchased. Fetching preferred roaming networks...", &v5, 0x16u);
    }

    entitlements::ControllerImpl::getPreferredRoamingNetworksIfNeeded_sync(a1, 1);
  }
}

void entitlements::ControllerImpl::setMonitorMode(entitlements::ControllerImpl *this, char a2, char a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, this + 1);
  operator new();
}

void entitlements::ControllerImpl::timeForMonitorModeAttempt(entitlements::ControllerImpl *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void entitlements::ControllerImpl::handleDumpState_sync(entitlements::ControllerImpl *this)
{
  v3 = (this + 40);
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(this + 11));
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s |--- Carrier Entitlements Controller:", buf, 0x16u);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(this + 11));
    v7 = *(this + 13);
    v6 = *(this + 14);
    v8 = asStringBool(*(this + 20) != 0);
    *buf = 136315906;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2048;
    *&buf[24] = (v6 - v7) >> 4;
    LOWORD(v12) = 2080;
    *(&v12 + 2) = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Has %zu driver(s); has update timer: %s", buf, 0x2Au);
  }

  v9 = *(this + 13);
  v10 = *(this + 14);
  while (v9 != v10)
  {
    (*(**v9 + 328))(*v9);
    v9 += 2;
  }

  sub_1009C4560(*(this + 11), v3);
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_10000C320(buf);
  operator new();
}