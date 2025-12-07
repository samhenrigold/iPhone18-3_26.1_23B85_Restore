void sub_100758040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100758090(uint64_t a1, int a2)
{
  v4 = *(a1 + 64);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I set fBbBackOffThrottlingTimerValue to %d", v5, 8u);
  }

  *(a1 + 792) = a2;
}

void sub_100758144(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  v8 = *(a1 + 64);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 4 * v5 + 568);
    *buf = 67109376;
    *&buf[4] = v5;
    *&buf[8] = 1024;
    *&buf[10] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I ThrottleType= %d. index=%d", buf, 0xEu);
  }

  if (!validContextType())
  {
    if (v5 == 2)
    {
      return;
    }

LABEL_18:
    if (*(a1 + 576))
    {
      return;
    }

    *a4 = 1;
    if (v5 == 3)
    {
      v14 = *(a1 + 792);
      if (v14)
      {
        v15 = *(a1 + 64);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v14;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I use BB's backoff timer of %d + 1 sec", buf, 8u);
          v14 = *(a1 + 792);
          v16 = *(a1 + 580);
        }

        else
        {
          v16 = 0;
        }

        v17 = (v14 + 1);
        v5 = 3;
        *(a1 + 592) = 3;
        if (v16 <= 5)
        {
          goto LABEL_39;
        }

        v22 = (a1 + 580);
        goto LABEL_38;
      }

      v20 = *(a1 + 592);
      if ((v20 & 0xFFFFFFFE) == 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = v20;
      }

      v17 = sub_100758674(a1, v18, 0x100000001);
      v5 = v18;
    }

    else
    {
      v17 = sub_100758674(a1, v5, 0);
      v18 = v5;
      ++*(a1 + 4 * v5 + 568);
    }

    *(a1 + 592) = v5;
    v21 = a1 + 4 * v18;
    if (*(v21 + 568) > 5u)
    {
      v22 = (v21 + 568);
      if (v5 != 1)
      {
LABEL_38:
        *v22 = 5;
        goto LABEL_39;
      }

      *v22 = 0;
    }

LABEL_39:
    v23 = *(a1 + 64);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "handleErrorThrottling";
      *&buf[12] = 1024;
      *&buf[14] = v5;
      *&buf[18] = 2048;
      *&buf[20] = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: Throttling Settings activation error type %d. Next timer fire in %lld sec", buf, 0x1Cu);
    }

    if (v17)
    {
      sub_100004AA0(buf, (a1 + 32));
      v25 = *buf;
      v24 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
      }

      Registry::getTimerService(buf, *(a1 + 72));
      v26 = *buf;
      sub_10000501C(__p, "throttle timeout");
      v27 = *(a1 + 48);
      object = v27;
      if (v27)
      {
        dispatch_retain(v27);
      }

      v29[0] = _NSConcreteStackBlock;
      v29[1] = 1174405120;
      v29[2] = sub_100758A4C;
      v29[3] = &unk_101E78018;
      v29[4] = a1;
      v29[5] = v25;
      v30 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      aBlock = _Block_copy(v29);
      sub_100D23364(v26, __p, 0, 1000000 * v17, &object, &aBlock);
      sub_10039C50C((a1 + 576), v35);
      v28 = *v35;
      *v35 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v34 < 0)
      {
        operator delete(__p[0]);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v30)
      {
        std::__shared_weak_count::__release_weak(v30);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_weak(v24);
      }
    }

    return;
  }

  memset(buf, 0, 24);
  sub_10074BD70(a1, a2, buf);
  v10 = *buf;
  if (v5 != 1 || *buf == *&buf[8])
  {
LABEL_9:
    v12 = 0;
  }

  else
  {
    v11 = *buf;
    while ((*(v11 + 7) & 1) == 0)
    {
      v11 += 13;
      if (v11 == *&buf[8])
      {
        goto LABEL_9;
      }
    }

    v19 = *(a1 + 64);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I internal throttling ignored", v35, 2u);
      v12 = 1;
      v10 = *buf;
    }

    else
    {
      v12 = 1;
    }
  }

  if (v10)
  {
    *&buf[8] = v10;
    operator delete(v10);
  }

  if (v5 == 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }
}

void sub_1007585D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *sub_100758674(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = a3;
  if ((a3 & 0x100000000) == 0)
  {
    v3 = *(a1 + 4 * a2 + 568);
  }

  if (a2)
  {
    goto LABEL_32;
  }

  v31 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
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
  *v36 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v36);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_11:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_12:
  v16 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v14 + 96))(v29, v14, v16, 1, @"NetworkErrorsThrottlingSequence", 0, 0);
  sub_100060DE8(&v31, v29);
  sub_10000A1EC(v29);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v31)
  {
    memset(v36, 0, sizeof(v36));
    v37 = 0;
    ctu::cf::assign();
    *v29 = *v36;
    v30 = v37;
    memset(v36, 0, sizeof(v36));
    v37 = 0;
    DataUtils::tokenizeWithBasicDelimiters();
    v18 = *v36;
    v17 = *&v36[8];
    if (*&v36[8] != *v36)
    {
      __p[0] = 0;
      __p[1] = 0;
      v28 = 0;
      v19 = *v36 + 24 * (v3 % (0xAAAAAAAAAAAAAAABLL * ((*&v36[8] - *v36) >> 3)));
      if (*(v19 + 23) < 0)
      {
        sub_100005F2C(__p, *v19, *(v19 + 8));
      }

      else
      {
        v20 = *v19;
        v28 = *(v19 + 16);
        *__p = v20;
      }

      v21 = HIBYTE(v28);
      if (v28 >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0];
      }

      v13 = atoi(v22);
      v23 = *(a1 + 64);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v33 = v3;
        v34 = 2048;
        v35 = v13;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I CB throttling seq index = %d, ret = %llu", buf, 0x12u);
        v21 = HIBYTE(v28);
      }

      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    __p[0] = v36;
    sub_1000087B4(__p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    if (v17 != v18)
    {
      sub_100005978(&v31);
      return v13;
    }
  }

  sub_100005978(&v31);
LABEL_32:
  v24 = dword_101836040[6 * a2 + v3];
  v13 = v24;
  v25 = *(a1 + 64);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v36 = 67109120;
    *&v36[4] = v24;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I kPDPThrottleTimerInterval = %d", v36, 8u);
  }

  return v13;
}

void sub_1007589C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, const void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a9 = &a24;
  sub_1000087B4(&a9);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_100005978(&a19);
  _Unwind_Resume(a1);
}

void sub_100758A4C(void *a1)
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
        (*(*v3 + 840))(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_100758AFC(uint64_t result, uint64_t a2)
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

void sub_100758B18(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_100758B30(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 120;
  while (2)
  {
    v3 = (v2 + 24 * dword_101836038[v1]);
    v4 = *v3;
    v5 = v3[1];
    while (v4 != v5)
    {
      if (*(v4 + 16) == 1)
      {
        v6 = *(v4 + 8);
        if (v6)
        {
          if ((*(*v6 + 424))(v6))
          {
            return 1;
          }
        }
      }

      v4 += 24;
    }

    if (++v1 != 2)
    {
      continue;
    }

    break;
  }

  return 0;
}

void sub_100758BF0(uint64_t a1)
{
  v2 = (a1 + 64);
  v3 = *(a1 + 64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(*a1 + 48))(a1, 2);
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: ---------------- Settings: %s: -------------------", buf, 0xCu);
  }

  v5 = *(a1 + 264);
  v184 = v2;
  if (v5)
  {
    sub_1002A24E4(v5, v2);
  }

  else
  {
    v6 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t No APN configured", buf, 2u);
    }
  }

  v7 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 244);
    PersonalitySpecificImpl::simSlot(a1);
    v9 = subscriber::asString();
    *buf = 67109378;
    *&buf[4] = v8;
    *&buf[8] = 2080;
    *&buf[10] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fPriority = %u simSlot = %s", buf, 0x12u);
    v7 = *(a1 + 64);
    v2 = v184;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 112);
    if (v10)
    {
      v11 = (*(*v10 + 16))(v10);
      v2 = v184;
    }

    else
    {
      v11 = -1;
    }

    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fDataActivator pdpId = %d", buf, 8u);
    v7 = *v2;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = asStringBool(*(a1 + 596));
    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fDetachingActivatorState = %s", buf, 0xCu);
  }

  if (!(*(*a1 + 1080))(a1))
  {
    goto LABEL_30;
  }

  *v201 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  if (!v19)
  {
    v21 = 0;
    goto LABEL_24;
  }

  v21 = v19[3];
  v20 = v19[4];
  if (!v20)
  {
LABEL_24:
    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    goto LABEL_25;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v22 = 0;
LABEL_25:
  v23 = PersonalitySpecificImpl::simSlot(a1);
  (*(*v21 + 96))(__dst, v21, v23, 1, @"PreventWiFiHandoverInEmergency", kCFBooleanFalse, 0);
  sub_10002FE1C(v201, __dst);
  sub_10000A1EC(__dst);
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, *v201, v24);
  v25 = buf[0];
  v26 = *v184;
  if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
  {
    v27 = asStringBool(v25);
    *buf = 136315138;
    *&buf[4] = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t preventWiFiHandoverInEmergency = %s", buf, 0xCu);
  }

  sub_100045C8C(v201);
LABEL_30:
  v28 = (*(*a1 + 1080))(a1);
  v29 = *(a1 + 64);
  if (v28 && os_log_type_enabled(*(a1 + 64), OS_LOG_TYPE_DEFAULT))
  {
    v30 = sub_100751128(a1);
    v31 = asStringBool(v30);
    *buf = 136315138;
    *&buf[4] = v31;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t canDoHandoverInIdleVega = %s", buf, 0xCu);
    v29 = *(a1 + 64);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t Context type states: {", buf, 2u);
  }

  v32 = 0;
  v181 = kPhoneServicesWalletDomain;
  do
  {
    v33 = dword_101836038[v32];
    v34 = *v184;
    if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
    {
      v35 = asString();
      v36 = asString();
      *buf = 136315394;
      *&buf[4] = v35;
      *&buf[12] = 2080;
      *&buf[14] = v36;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t fState[%s] = %s", buf, 0x16u);
      v34 = *v184;
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v37 = asString();
      CIPFamily::asString(buf, (a1 + 632 + 16 * v33));
      v38 = buf;
      if (buf[23] < 0)
      {
        v38 = *buf;
      }

      *v201 = 136315394;
      *&v201[4] = v37;
      *&v201[12] = 2082;
      *&v201[14] = v38;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t fActivationFamily[%s] = %{public}s", v201, 0x16u);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v39 = *(a1 + 760 + 16 * v33 + 8);
    v40 = *v184;
    v41 = os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT);
    if (v39 == 1)
    {
      if (!v41)
      {
        goto LABEL_49;
      }

      v42 = asString();
      v43 = sub_100753270(a1, v33);
      *buf = 136315650;
      *&buf[4] = v42;
      *&buf[12] = 2048;
      *&buf[14] = v43;
      *&buf[22] = 2080;
      *&buf[24] = "seconds";
      v44 = v40;
      v45 = "#I DATA:: fCurrentActivationStart[%s] is %lld %s old.";
      v46 = 32;
    }

    else
    {
      if (!v41)
      {
        goto LABEL_49;
      }

      v47 = asString();
      *buf = 136315138;
      *&buf[4] = v47;
      v44 = v40;
      v45 = "#I DATA:: fCurrentActivationStart[%s] is empty";
      v46 = 12;
    }

    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, v45, buf, v46);
LABEL_49:
    v48 = *(a1 + 728 + 16 * v33 + 8);
    v49 = *v184;
    v50 = os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT);
    if (v48 == 1)
    {
      if (!v50)
      {
        goto LABEL_55;
      }

      v51 = asString();
      v52 = sub_10075AC28(a1, v33);
      *buf = 136315650;
      *&buf[4] = v51;
      *&buf[12] = 2048;
      *&buf[14] = v52;
      *&buf[22] = 2080;
      *&buf[24] = "seconds";
      v53 = v49;
      v54 = "#I DATA:: fLastActivationStart[%s] is %lld %s old.";
      v55 = 32;
    }

    else
    {
      if (!v50)
      {
        goto LABEL_55;
      }

      v56 = asString();
      *buf = 136315138;
      *&buf[4] = v56;
      v53 = v49;
      v54 = "#I DATA:: fLastActivationStart[%s] is empty";
      v55 = 12;
    }

    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v54, buf, v55);
LABEL_55:
    v57 = Registry::getServiceMap(*(a1 + 72));
    v58 = v57;
    v60 = v59;
    if (v59 < 0)
    {
      v61 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
      v62 = 5381;
      do
      {
        v60 = v62;
        v63 = *v61++;
        v62 = (33 * v62) ^ v63;
      }

      while (v63);
    }

    std::mutex::lock(v57);
    *buf = v60;
    v64 = sub_100009510(&v58[1].__m_.__sig, buf);
    if (!v64)
    {
      std::mutex::unlock(v58);
      goto LABEL_112;
    }

    v65 = v64[3];
    v66 = v64[4];
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v58);
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v66);
      sub_100004A34(v66);
      if (!v65)
      {
        goto LABEL_112;
      }
    }

    else
    {
      std::mutex::unlock(v58);
      if (!v65)
      {
        goto LABEL_112;
      }
    }

    __dst[0] = 0;
    __dst[1] = 0;
    v193 = 0;
    v67 = *(a1 + 264);
    if (v67)
    {
      if (*(v67 + 71) < 0)
      {
        sub_100005F2C(__dst, *(v67 + 48), *(v67 + 56));
      }

      else
      {
        *__dst = *(v67 + 48);
        v193 = *(v67 + 64);
      }
    }

    else
    {
      sub_10000501C(__dst, "");
    }

    v191 = 0;
    v68 = PersonalitySpecificImpl::simSlot(a1);
    sub_10075A81C(__dst, v68, v33, 0);
    if (SHIBYTE(v190) < 0)
    {
      sub_100005F2C(v201, __p[0], __p[1]);
    }

    else
    {
      *v201 = *__p;
      *&v201[16] = v190;
    }

    v194 = 0;
    if (v201[23] < 0)
    {
      sub_100005F2C(buf, *v201, *&v201[8]);
    }

    else
    {
      *buf = *v201;
      *&buf[16] = *&v201[16];
    }

    v195 = 0;
    if (ctu::cf::convert_copy())
    {
      v69 = v194;
      v194 = v195;
      v187[0] = v69;
      sub_100005978(v187);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v191 = v194;
    v194 = 0;
    sub_100005978(&v194);
    if (v201[23] < 0)
    {
      operator delete(*v201);
    }

    if (SHIBYTE(v190) < 0)
    {
      operator delete(__p[0]);
    }

    if ((atomic_load_explicit(&qword_101FBAAD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAAD8))
    {
      *buf = @"APNInfoPersisted";
      qword_101FBAAC8 = 0;
      unk_101FBAAD0 = 0;
      qword_101FBAAC0 = 0;
      sub_10005B328(&qword_101FBAAC0, buf, &buf[8], 1uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBAAC0, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBAAD8);
    }

    v195 = 0;
    v70 = Registry::getServiceMap(*(a1 + 72));
    v71 = v70;
    v72 = v59;
    if (v59 < 0)
    {
      v73 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
      v74 = 5381;
      do
      {
        v72 = v74;
        v75 = *v73++;
        v74 = (33 * v74) ^ v75;
      }

      while (v75);
    }

    std::mutex::lock(v70);
    *buf = v72;
    v76 = sub_100009510(&v71[1].__m_.__sig, buf);
    if (!v76)
    {
      v77 = 0;
LABEL_91:
      std::mutex::unlock(v71);
      v78 = 0;
      v79 = 1;
      goto LABEL_92;
    }

    v77 = v76[3];
    v78 = v76[4];
    if (!v78)
    {
      goto LABEL_91;
    }

    atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v71);
    atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v78);
    v79 = 0;
LABEL_92:
    (*(*a1 + 16))(buf, a1);
    (*(*v77 + 24))(&v195, v77, *buf + 24, v191, v181, &qword_101FBAAC0, 1);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if ((v79 & 1) == 0)
    {
      sub_100004A34(v78);
    }

    if (v195)
    {
      v80 = CFGetTypeID(v195);
      TypeID = CFStringGetTypeID();
      v82 = *v184;
      v83 = os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT);
      if (v80 == TypeID)
      {
        if (v83)
        {
          if (v193 >= 0)
          {
            v84 = __dst;
          }

          else
          {
            v84 = __dst[0];
          }

          v85 = asString();
          memset(v201, 0, sizeof(v201));
          ctu::cf::assign();
          *v187 = *v201;
          v188 = *&v201[16];
          v86 = *v201;
          if ((v201[23] & 0x80u) == 0)
          {
            v86 = v187;
          }

          *buf = 136315650;
          *&buf[4] = v84;
          *&buf[12] = 2080;
          *&buf[14] = v85;
          *&buf[22] = 2080;
          *&buf[24] = v86;
          _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I DATA:: (APN) Last persisted start[%s:%s]: %s", buf, 0x20u);
          if (SHIBYTE(v188) < 0)
          {
            operator delete(v187[0]);
          }
        }
      }

      else if (v83)
      {
        v87 = SHIBYTE(v193);
        v88 = __dst[0];
        v89 = asString();
        *buf = 136315394;
        v90 = __dst;
        if (v87 < 0)
        {
          v90 = v88;
        }

        *&buf[4] = v90;
        *&buf[12] = 2080;
        *&buf[14] = v89;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I DATA:: (APN) Last persisted start[%s:%s]: empty (2)", buf, 0x16u);
      }
    }

    sub_10000A1EC(&v195);
    sub_100005978(&v191);
    if (SHIBYTE(v193) < 0)
    {
      operator delete(__dst[0]);
    }

LABEL_112:
    v91 = Registry::getServiceMap(*(a1 + 72));
    v92 = v91;
    v93 = v59;
    if (v59 < 0)
    {
      v94 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
      v95 = 5381;
      do
      {
        v93 = v95;
        v96 = *v94++;
        v95 = (33 * v95) ^ v96;
      }

      while (v96);
    }

    std::mutex::lock(v91);
    *buf = v93;
    v97 = sub_100009510(&v92[1].__m_.__sig, buf);
    if (!v97)
    {
      std::mutex::unlock(v92);
      goto LABEL_169;
    }

    v98 = v97[3];
    v99 = v97[4];
    if (v99)
    {
      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v92);
      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v99);
      sub_100004A34(v99);
      if (!v98)
      {
        goto LABEL_169;
      }
    }

    else
    {
      std::mutex::unlock(v92);
      if (!v98)
      {
        goto LABEL_169;
      }
    }

    __dst[0] = 0;
    __dst[1] = 0;
    v193 = 0;
    v100 = *(a1 + 264);
    if (v100)
    {
      if (*(v100 + 71) < 0)
      {
        sub_100005F2C(__dst, *(v100 + 48), *(v100 + 56));
      }

      else
      {
        *__dst = *(v100 + 48);
        v193 = *(v100 + 64);
      }
    }

    else
    {
      sub_10000501C(__dst, "");
    }

    v191 = 0;
    v101 = PersonalitySpecificImpl::simSlot(a1);
    sub_10075A81C(__dst, v101, v33, 1);
    if (SHIBYTE(v186) < 0)
    {
      sub_100005F2C(v201, v185[0], v185[1]);
    }

    else
    {
      *v201 = *v185;
      *&v201[16] = v186;
    }

    v194 = 0;
    if (v201[23] < 0)
    {
      sub_100005F2C(buf, *v201, *&v201[8]);
    }

    else
    {
      *buf = *v201;
      *&buf[16] = *&v201[16];
    }

    v195 = 0;
    if (ctu::cf::convert_copy())
    {
      v102 = v194;
      v194 = v195;
      v187[0] = v102;
      sub_100005978(v187);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v191 = v194;
    v194 = 0;
    sub_100005978(&v194);
    if (v201[23] < 0)
    {
      operator delete(*v201);
    }

    if (SHIBYTE(v186) < 0)
    {
      operator delete(v185[0]);
    }

    if ((atomic_load_explicit(&qword_101FBAAF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAAF8))
    {
      *buf = @"APNInfoPersisted";
      qword_101FBAAE8 = 0;
      unk_101FBAAF0 = 0;
      qword_101FBAAE0 = 0;
      sub_10005B328(&qword_101FBAAE0, buf, &buf[8], 1uLL);
      __cxa_atexit(sub_10041F938, &qword_101FBAAE0, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBAAF8);
    }

    v195 = 0;
    v103 = Registry::getServiceMap(*(a1 + 72));
    v104 = v103;
    if (v59 < 0)
    {
      v105 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
      v106 = 5381;
      do
      {
        v59 = v106;
        v107 = *v105++;
        v106 = (33 * v106) ^ v107;
      }

      while (v107);
    }

    std::mutex::lock(v103);
    *buf = v59;
    v108 = sub_100009510(&v104[1].__m_.__sig, buf);
    if (!v108)
    {
      v109 = 0;
LABEL_148:
      std::mutex::unlock(v104);
      v110 = 0;
      v111 = 1;
      goto LABEL_149;
    }

    v109 = v108[3];
    v110 = v108[4];
    if (!v110)
    {
      goto LABEL_148;
    }

    atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v104);
    atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v110);
    v111 = 0;
LABEL_149:
    (*(*a1 + 16))(buf, a1);
    (*(*v109 + 24))(&v195, v109, *buf + 24, v191, v181, &qword_101FBAAE0, 1);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if ((v111 & 1) == 0)
    {
      sub_100004A34(v110);
    }

    if (v195)
    {
      v112 = CFGetTypeID(v195);
      v113 = CFStringGetTypeID();
      v114 = *v184;
      v115 = os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT);
      if (v112 == v113)
      {
        if (v115)
        {
          if (v193 >= 0)
          {
            v116 = __dst;
          }

          else
          {
            v116 = __dst[0];
          }

          v117 = asString();
          memset(v201, 0, sizeof(v201));
          ctu::cf::assign();
          *v187 = *v201;
          v188 = *&v201[16];
          v118 = *v201;
          if ((v201[23] & 0x80u) == 0)
          {
            v118 = v187;
          }

          *buf = 136315650;
          *&buf[4] = v116;
          *&buf[12] = 2080;
          *&buf[14] = v117;
          *&buf[22] = 2080;
          *&buf[24] = v118;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "#I DATA:: (APN) Last persisted complete[%s:%s]: %s", buf, 0x20u);
          if (SHIBYTE(v188) < 0)
          {
            operator delete(v187[0]);
          }
        }
      }

      else if (v115)
      {
        v119 = SHIBYTE(v193);
        v120 = __dst[0];
        v121 = asString();
        *buf = 136315394;
        v122 = __dst;
        if (v119 < 0)
        {
          v122 = v120;
        }

        *&buf[4] = v122;
        *&buf[12] = 2080;
        *&buf[14] = v121;
        _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "#I DATA:: (APN) Last persisted complete[%s:%s]: empty (2)", buf, 0x16u);
      }
    }

    sub_10000A1EC(&v195);
    sub_100005978(&v191);
    if (SHIBYTE(v193) < 0)
    {
      operator delete(__dst[0]);
    }

LABEL_169:
    ++v32;
  }

  while (v32 != 2);
  v123 = 312;
  v124 = v184;
  do
  {
    v125 = *(a1 + v123);
    if (v125)
    {
      sub_1009CA6F8(v125, *v124);
      v124 = v184;
    }

    v123 += 16;
  }

  while (v123 != 344);
  v126 = *v124;
  if (os_log_type_enabled(*v124, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t FatalActivationBlockers: {", buf, 2u);
  }

  for (i = 0; i != 2; ++i)
  {
    v128 = *v184;
    if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
    {
      v129 = asStringBool(*(a1 + 348 + dword_101836038[i]));
      v130 = asString();
      v131 = asString();
      *buf = 136315650;
      *&buf[4] = v129;
      *&buf[12] = 2080;
      *&buf[14] = v130;
      *&buf[22] = 2080;
      *&buf[24] = v131;
      _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s (%s) cause %s", buf, 0x20u);
    }
  }

  v132 = *v184;
  if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
  }

  for (j = 0; j != 2; ++j)
  {
    v134 = *v184;
    if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
    {
      v135 = dword_101836038[j];
      v136 = asString();
      v137 = asStringBool(*(a1 + 344 + v135));
      *buf = 136315394;
      *&buf[4] = v136;
      *&buf[12] = 2080;
      *&buf[14] = v137;
      _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t fIPv4ActivationBlocker[%s] = %s", buf, 0x16u);
    }
  }

  for (k = 0; k != 2; ++k)
  {
    v139 = *v184;
    if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
    {
      v140 = dword_101836038[k];
      v141 = asString();
      v142 = asStringBool(*(a1 + 346 + v140));
      *buf = 136315394;
      *&buf[4] = v141;
      *&buf[12] = 2080;
      *&buf[14] = v142;
      _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t fIPv6ActivationBlocker[%s] = %s", buf, 0x16u);
    }
  }

  v143 = v184;
  v144 = *v184;
  if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    v144 = *v184;
  }

  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    v145 = asStringBool(*(a1 + 256));
    v146 = *(a1 + 248);
    *buf = 136315394;
    *&buf[4] = v145;
    *&buf[12] = 1024;
    *&buf[14] = v146;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fCBv6SupportedDataModeMaskPresent[kDataContextBB] = %s, fCBv6SupportedDataModeMask[kDataContextBB] = %d", buf, 0x12u);
    v144 = *(a1 + 64);
    v143 = v184;
  }

  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    v147 = asStringBool(*(a1 + 257));
    v148 = *(a1 + 252);
    *buf = 136315394;
    *&buf[4] = v147;
    *&buf[12] = 1024;
    *&buf[14] = v148;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fCBv6SupportedDataModeMaskPresent[kDataContextIWLAN] = %s, fCBv6SupportedDataModeMask[kDataContextIWLAN] = %d", buf, 0x12u);
    v144 = *(a1 + 64);
    v143 = v184;
  }

  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fObservers BB: {", buf, 2u);
  }

  v149 = *(a1 + 120);
  for (m = *(a1 + 128); v149 != m; v149 += 24)
  {
    v151 = *v143;
    if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
    {
      v152 = (*(**(v149 + 8) + 16))(*(v149 + 8));
      v153 = asStringBool(*(v149 + 16));
      *buf = 136315394;
      *&buf[4] = v152;
      *&buf[12] = 2080;
      *&buf[14] = v153;
      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s (%s)", buf, 0x16u);
      v143 = v184;
    }
  }

  v154 = *v143;
  if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    v154 = *v143;
  }

  if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fObservers iWLAN: {", buf, 2u);
  }

  v155 = *(a1 + 144);
  for (n = *(a1 + 152); v155 != n; v155 += 24)
  {
    v157 = *v143;
    if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
    {
      v158 = (*(**(v155 + 8) + 16))(*(v155 + 8));
      v159 = asStringBool(*(v155 + 16));
      *buf = 136315394;
      *&buf[4] = v158;
      *&buf[12] = 2080;
      *&buf[14] = v159;
      _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t %s (%s)", buf, 0x16u);
      v143 = v184;
    }
  }

  v160 = *v143;
  if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    v160 = *v143;
  }

  if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
  {
    v161 = asStringBool(*(a1 + 576) != 0);
    v162 = *(a1 + 592);
    *buf = 136315394;
    *&buf[4] = v161;
    *&buf[12] = 1024;
    *&buf[14] = v162;
    _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fThrottleTimer active = %s, fLastThrottleType = %d", buf, 0x12u);
  }

  v163 = sub_100758674(a1, 0, 0);
  v164 = *(a1 + 64);
  if (os_log_type_enabled(v164, OS_LOG_TYPE_DEFAULT))
  {
    v165 = *(a1 + 568);
    *buf = 67109376;
    *&buf[4] = v165;
    *&buf[8] = 1024;
    *&buf[10] = v163;
    _os_log_impl(&_mh_execute_header, v164, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fThrottleTimerArrayIndex[ThrottleType::kThrottleTypeNetwork] = %d, timeout = %d", buf, 0xEu);
  }

  v166 = sub_100758674(a1, 1u, 0);
  v167 = *(a1 + 64);
  if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
  {
    v168 = *(a1 + 572);
    *buf = 67109376;
    *&buf[4] = v168;
    *&buf[8] = 1024;
    *&buf[10] = v166;
    _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t fThrottleTimerArrayIndex[ThrottleType::kThrottleTypeInternal] = %d, timeout = %d", buf, 0xEu);
  }

  v169 = 0;
  v170 = a1 + 456;
  v182 = a1 + 448;
  do
  {
    v171 = dword_101836038[v169];
    v172 = v170 + 56 * v171;
    v173 = *(v172 + 8);
    v183 = *(v172 + 16);
    v174 = *(v172 + 28);
    v175 = *(v172 + 48);
    if (v175)
    {
      atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v176 = *v184;
    if (os_log_type_enabled(*v184, OS_LOG_TYPE_DEFAULT))
    {
      v177 = asString();
      v178 = *(v182 + 4 * v171);
      v179 = asString();
      v180 = asStringBool(v174 & 1);
      *buf = 136316418;
      *&buf[4] = v177;
      *&buf[12] = 1024;
      *&buf[14] = v178;
      *&buf[18] = 2080;
      *&buf[20] = v173;
      *&buf[28] = 2080;
      *&buf[30] = v183;
      v197 = 2080;
      v198 = v179;
      v199 = 2080;
      v200 = v180;
      _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t ContextType=%s: fActivateErrorCount = %d, fLastActivateError: reason = %s, subReason = %s, error = %s, networkStateValid = %s", buf, 0x3Au);
    }

    if (v175)
    {
      sub_100004A34(v175);
    }

    ++v169;
  }

  while (v169 != 2);
}

void sub_10075A62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, const void *a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  __cxa_guard_abort(&qword_101FBAAF8);
  sub_100005978(&a40);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10075A81C(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v39 = 0uLL;
  v40 = 0;
  sub_10000501C(&v32, "APN_activation_");
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  v10 = std::string::append(&v32, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v33, "_", 1uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = subscriber::asString();
  v15 = strlen(v14);
  v16 = std::string::append(&v34, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v35, "_", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = asString();
  v21 = strlen(v20);
  v22 = std::string::append(&v36, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v37, "_", 1uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = asStringBool(a4);
  v27 = strlen(v26);
  v28 = std::string::append(&v38, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v40 = v28->__r_.__value_.__r.__words[2];
  v39 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  memset(&v38, 0, sizeof(v38));
  v37.__r_.__value_.__s.__data_[0] = 0;
  sub_10075B758(&v38, 20, &v37);
  if (v40 >= 0)
  {
    v30 = &v39;
  }

  else
  {
    v30 = v39;
  }

  if (v40 >= 0)
  {
    v31 = HIBYTE(v40);
  }

  else
  {
    v31 = DWORD2(v39);
  }

  CC_SHA1(v30, v31, v38.__r_.__value_.__l.__data_);
  ctu::hex();
  if (v38.__r_.__value_.__r.__words[0])
  {
    v38.__r_.__value_.__l.__size_ = v38.__r_.__value_.__r.__words[0];
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }
}

void sub_10075AAC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v42 - 57) < 0)
  {
    operator delete(*(v42 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075ABA4(uint64_t a1)
{
  Registry::getTimerService(&v3, *(a1 + 72));
  v1 = (**v3)(v3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return v1;
}

void sub_10075AC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10075AC28(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!validContextType() || *(a1 + 728 + 16 * v2 + 8) != 1)
  {
    return 0;
  }

  v4 = sub_10075ABA4(a1);
  v5 = a1 + 728 + 16 * v2;
  if ((*(v5 + 8) & 1) == 0)
  {
    sub_1000D1644();
  }

  v6 = ((v4 - *v5) * 0x112E0BE826D694B3) >> 64;
  return (v6 >> 26) + (v6 >> 63);
}

void sub_10075ACBC(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    v3 = *(*v2 + 128);

    v3();
  }

  else
  {
    v4 = *(a1 + 64);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "setCoalescing";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E %s: pdpActivator is empty", &v5, 0xCu);
    }
  }
}

void sub_10075ADC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[14];
  if (v5)
  {
    (*(*a1 + 16))(&v9);
    sub_1000224C8(v13, a4);
    (*(*v5 + 112))(v5, &v9, a2, a3, v13);
    sub_10000FF50(v13);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  else
  {
    v8 = a1[8];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "queryAnbrBitrate";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s: pdpActivator is empty", buf, 0xCu);
    }

    sub_10000FFD0(a4, 0);
  }
}

void sub_10075AF10(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10000FF50(va);
  if (a8)
  {
    sub_100004A34(a8);
  }

  _Unwind_Resume(a1);
}

void sub_10075AF48(void *a1, uint64_t a2)
{
  v3 = a1[14];
  if (v3)
  {
    (*(*a1 + 16))(&v5);
    sub_100457284(v9, a2);
    (*(*v3 + 120))(v3, &v5, v9);
    sub_1003F2928(v9);
    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v4 = a1[8];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v8 = "getAnbrActivationState";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: pdpActivator is empty", buf, 0xCu);
    }

    sub_100447630(a2, 0, 0);
  }
}

void sub_10075B080(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1003F2928(va);
  if (a8)
  {
    sub_100004A34(a8);
  }

  _Unwind_Resume(a1);
}

void *sub_10075B0B8(void *result, uint64_t a2)
{
  v2 = result[15];
  for (i = result[16]; v2 != i; v2 += 24)
  {
    if (*(v2 + 16) == 1)
    {
      result = *(v2 + 8);
      if (result)
      {
        result = (*(*result + 336))(result, a2);
      }
    }
  }

  return result;
}

void *sub_10075B144(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[15];
  for (i = result[16]; v3 != i; v3 += 24)
  {
    if (*(v3 + 16) == 1)
    {
      result = *(v3 + 8);
      if (result)
      {
        result = (*(*result + 344))(result, a2, a3);
      }
    }
  }

  return result;
}

uint64_t sub_10075B1E0(uint64_t a1, int a2)
{
  v2 = 208;
  if (a2 == 1)
  {
    v2 = 224;
  }

  if (!a2)
  {
    v2 = 216;
  }

  return *(a1 + v2);
}

uint64_t sub_10075B204@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 272);
  *a2 = *(result + 264);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10075B220(uint64_t a1@<X0>, uint64_t a2@<X1>, CIPFamily *a3@<X8>)
{
  v3 = a2;
  if (validContextType())
  {

    CIPFamily::CIPFamily(a3, (a1 + 16 * v3 + 632));
  }

  else
  {

    CIPFamily::CIPFamily(a3);
  }
}

void *sub_10075B29C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[33];
  if (!v2)
  {
    return sub_10000501C(a2, "");
  }

  if (*(v2 + 95) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 72), *(v2 + 80));
  }

  v3 = *(v2 + 72);
  a2[2] = *(v2 + 88);
  *a2 = v3;
  return result;
}

void *sub_10075B2DC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[33];
  if (!v2)
  {
    return sub_10000501C(a2, "");
  }

  if (*(v2 + 119) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 96), *(v2 + 104));
  }

  v3 = *(v2 + 96);
  a2[2] = *(v2 + 112);
  *a2 = v3;
  return result;
}

void *sub_10075B31C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[33];
  if (!v2)
  {
    return sub_10000501C(a2, "");
  }

  if (*(v2 + 143) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 120), *(v2 + 128));
  }

  v3 = *(v2 + 120);
  a2[2] = *(v2 + 136);
  *a2 = v3;
  return result;
}

uint64_t sub_10075B35C(uint64_t a1)
{
  v1 = *(a1 + 264);
  if (v1)
  {
    return *(v1 + 242);
  }

  else
  {
    return 0;
  }
}

void *sub_10075B374@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[33];
  if (!v2 || *(v2 + 312) != 1)
  {
    return sub_10000501C(a2, "");
  }

  if (*(v2 + 311) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 288), *(v2 + 296));
  }

  v3 = *(v2 + 288);
  a2[2] = *(v2 + 304);
  *a2 = v3;
  return result;
}

uint64_t sub_10075B410(uint64_t a1, int a2)
{
  v2 = 208;
  if (a2 == 1)
  {
    v2 = 224;
  }

  if (!a2)
  {
    v2 = 216;
  }

  return *(a1 + v2 - 24);
}

uint64_t sub_10075B464(uint64_t a1)
{
  v1 = *(a1 + 240);
  if (v1)
  {
    return *(v1 + 242);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10075B4A4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 248);
  *a2 = *(result + 240);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_10075B4C8(uint64_t a1)
{
  sub_100741C98(a1);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10075B588(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 26) = *(a2 + 26);
  *a1 = v4;
  *(a1 + 16) = v5;
  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t *sub_10075B5F0(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * (v7 - *result) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x13B13B13B13B13B1)
    {
      v9 = 0x4EC4EC4EC4EC4EC5 * v7;
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x9D89D89D89D89D8)
      {
        v11 = 0x13B13B13B13B13B1;
      }

      else
      {
        v11 = v10;
      }

      sub_100090D74(v6, v11);
    }

    sub_1000CE3D4();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x4EC4EC4EC4EC4EC5 * (v12 - v8) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

uint64_t *sub_10075B758(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_100034CCC(a1, a2);
  }

  return a1;
}

void sub_10075B7BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075B7E8(uint64_t result, uint64_t a2)
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

void sub_10075B804(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_10075B814(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10075B8AC(uint64_t a1, unint64_t *a2, void *a3)
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
      v6 = v3[4];
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

uint64_t sub_10075B978(uint64_t a1)
{
  v24.__locale_ = 0;
  std::locale::locale(&v24);
  v2 = std::locale::classic();
  if (std::locale::operator==(&v24, v2))
  {
    v3 = *a1;
    do
    {
      v4 = *(a1 + 8);
      *(a1 + 8) = v4 - 1;
      *(v4 - 1) = *(a1 + 20) + v3 % 0xA;
      LODWORD(v4) = *a1;
      v3 = *a1 / 0xAu;
      *a1 = v3;
    }

    while (v4 > 9);
    v5 = *(a1 + 8);
    goto LABEL_28;
  }

  v6 = std::locale::use_facet(&v24, &std::numpunct<char>::id);
  __p = 0;
  v22 = 0;
  v23 = 0;
  (v6->__vftable[1].__on_zero_shared)(&__p);
  v7 = SHIBYTE(v23);
  if ((SHIBYTE(v23) & 0x8000000000000000) != 0)
  {
    v7 = v22;
    if (!v22)
    {
      goto LABEL_24;
    }

    p_p = __p;
  }

  else
  {
    if (!HIBYTE(v23))
    {
      goto LABEL_24;
    }

    p_p = &__p;
  }

  if (*p_p > 0)
  {
    v9 = (v6->__vftable[1].~facet_0)(v6);
    v10 = 0;
    v11 = __p;
    if (v23 >= 0)
    {
      v11 = &__p;
    }

    v12 = (a1 + 8);
    LOBYTE(v13) = *v11;
    v14 = *v11;
    do
    {
      if (!v14)
      {
        if (++v10 < v7)
        {
          v15 = v23 >= 0 ? &__p : __p;
          v13 = *(v15 + v10);
          if (v13 < 1)
          {
            LOBYTE(v13) = 127;
          }
        }

        v16 = (*v12 - 1);
        *v12 = v16;
        *v16 = v9;
        v14 = v13;
      }

      --v14;
      v17 = *(a1 + 8);
      *(a1 + 8) = v17 - 1;
      *(v17 - 1) = *(a1 + 20) + *a1 % 0xAu;
      LODWORD(v17) = *a1;
      *a1 /= 0xAu;
    }

    while (v17 > 9);
    goto LABEL_26;
  }

LABEL_24:
  v12 = (a1 + 8);
  v18 = *a1;
  do
  {
    v19 = *(a1 + 8);
    *(a1 + 8) = v19 - 1;
    *(v19 - 1) = *(a1 + 20) + v18 % 0xA;
    LODWORD(v19) = *a1;
    v18 = *a1 / 0xAu;
    *a1 = v18;
  }

  while (v19 > 9);
LABEL_26:
  v5 = *v12;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

LABEL_28:
  std::locale::~locale(&v24);
  return v5;
}

void sub_10075BBE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_10075BC18(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*v1)
      {
        v6 = v3[14];
        if (v6)
        {
          if ((*(*v6 + 344))(v6))
          {
            (*(*v3[14] + 352))(v3[14], 0);
            v32 = *(v1 + 24);
            v7 = v32;
            v29 = 0;
            v30 = 0;
            v31 = 0;
            sub_10074BD70(v3, v32, &v29);
            v28 = 0;
            memset(v27, 0, sizeof(v27));
            v25 = 0;
            v26 = 0;
            __p = 0;
            sub_100090CF8(&__p, v29, v30, 0x4EC4EC4EC4EC4EC5 * (v30 - v29));
            sub_100090720(v3, v7, v27, &__p);
            if (__p)
            {
              v25 = __p;
              operator delete(__p);
            }

            v8 = LODWORD(v27[0]);
            if (LODWORD(v27[0]))
            {
              v9 = v3[8];
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                v10 = asString();
                *buf = 136315650;
                *v40 = "operator()";
                *&v40[8] = 2080;
                *&v40[10] = v10;
                *&v40[18] = 1024;
                v41 = v27[0];
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s: handleDataActivateResult_Async(3.0): retryType=%s, error=%d", buf, 0x1Cu);
              }

              sub_100757618(v3, *(v1 + 24), (v8 << 32) | 0xFFFFFFFFLL);
            }

            else
            {
              if (validContextType())
              {
                v11 = &v3[3 * v7];
                v12 = v11[15];
                v13 = v11[16];
                while (v12 != v13)
                {
                  if (*(v12 + 16))
                  {
                    v14 = *(v12 + 1);
                    goto LABEL_18;
                  }

                  v12 = (v12 + 24);
                }
              }

              v14 = 0;
LABEL_18:
              buf[0] = 1;
              *&v40[4] = "retry activation (async)";
              *&v40[12] = "CommCenter";
              LOBYTE(v41) = 0;
              v42 = 0;
              v43 = 0;
              v44 = 0;
              v45 = 0;
              v47 = 0;
              v48 = 0;
              v46 = 0;
              v49 = 0;
              v22 = 0;
              v23 = 0;
              v21 = 0;
              sub_100090CF8(&v21, v29, v30, 0x4EC4EC4EC4EC4EC5 * (v30 - v29));
              v15 = sub_100745590(v3, &v3[2 * v7 + 79], v14, &v32, 0, buf, &v21);
              if (v21)
              {
                v22 = v21;
                operator delete(v21);
              }

              if (SHIBYTE(v48) < 0)
              {
                operator delete(v46);
              }

              v16 = v3[8];
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = asString();
                *v33 = 136315650;
                v34 = "operator()";
                v35 = 2080;
                v36 = v17;
                v37 = 1024;
                v38 = v15;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: handleDataActivateResult_Async(3): retryType=%s, activationReturn=%d", v33, 0x1Cu);
              }

              sub_100757618(v3, *(v1 + 24), v15);
            }

            if (v28)
            {
              sub_100004A34(v28);
            }

            if (v29)
            {
              v30 = v29;
              operator delete(v29);
            }
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_10075C078(&v20);
  return sub_1000049E0(&v19);
}

void sub_10075BFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  sub_100004A34(v26);
  sub_10075C078(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10075C078(uint64_t *a1)
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

void *sub_10075C0CC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1001177B0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10075C124(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10075C418((a1 + 8), 0);
  sub_10075C4B8(v3, 0, 0, 0);
  return a1;
}

void sub_10075C180(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075C1A0(uint64_t a1, int a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v6 = *a3;
  v5 = *(a3 + 8);
  v7 = v5 - *a3;
  if (v5 == *a3)
  {
    sub_10075C418((a1 + 8), 0);
    v6 = 0;
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v8 = v7 >> 2;
    sub_10075C418((a1 + 8), v7 >> 2);
    v9 = &v6[v7];
  }

  sub_10075C4B8(v4, v6, v9, v8);
  return a1;
}

void sub_10075C230(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075C250(uint64_t a1, int a2, int a3)
{
  __src = a3;
  *a1 = a2;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10075C418((a1 + 8), 1uLL);
  sub_10075C4B8(v4, &__src, &v7, 1uLL);
  return a1;
}

void sub_10075C2BC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075C2DC(uint64_t a1, int a2, int a3, int a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v5 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v7[0] = a3;
  v7[1] = a4;
  sub_10075C418((a1 + 8), 2uLL);
  sub_10075C4B8(v5, v7, &v8, 2uLL);
  return a1;
}

void sub_10075C374(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10075C394(uint64_t a1, int a2, char *a3, unint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v7 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10075C418((a1 + 8), a4);
  sub_10075C4B8(v7, a3, &a3[4 * a4], a4);
  return a1;
}

void sub_10075C3F8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10075C418(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 2)
  {
    if (!(a2 >> 62))
    {
      sub_100016740(a1, a2);
    }

    sub_1000CE3D4();
  }
}

void **sub_10075C4B8(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100034AE8(v6, v10);
    }

    sub_1000CE3D4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 4;
        *v15++ = v16;
        v14 += 4;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t sub_10075C5FC(uint64_t a1, int a2, uint64_t a3, __int128 *a4)
{
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "lazuli.svr");
  ctu::OsLogLogger::OsLogLogger(v12, &v11);
  ctu::OsLogLogger::OsLogLogger(a1, v12);
  ctu::OsLogLogger::~OsLogLogger(v12);
  ctu::OsLogContext::~OsLogContext(&v11);
  v13[0] = off_101E2B528;
  v13[1] = sub_10075C7E8;
  v13[3] = v13;
  sub_10075C814((a1 + 8), a3, v13);
  sub_1000A8744(v13);
  *(a1 + 16) = a2;
  v8 = *(a3 + 8);
  *(a1 + 24) = *a3;
  *(a1 + 32) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 40), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    *(a1 + 56) = *(a4 + 2);
    *(a1 + 40) = v9;
  }

  Registry::getFileSystemInterface((a1 + 64), *a3);
  return a1;
}

void sub_10075C748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  v17 = *(v15 + 4);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(v15 + 1);
  *(v15 + 1) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18, a2, a3, a4, a5, a6, a7, a8);
  }

  ctu::OsLogLogger::~OsLogLogger(v15);
  _Unwind_Resume(a1);
}

const char *sub_10075C7E8(int a1)
{
  v1 = "lazuli.svr.file.??";
  if (a1 == 2)
  {
    v1 = "lazuli.svr.file.2";
  }

  if (a1 == 1)
  {
    return "lazuli.svr.file.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_10075C814(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_10075C96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

uint64_t sub_10075C9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v16 = Mutable;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v13, *a2, *(a2 + 8));
  }

  else
  {
    *v13 = *a2;
    v14 = *(a2 + 16);
  }

  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(buf, v13[0], v13[1]);
  }

  else
  {
    *buf = *v13;
    v23 = v14;
  }

  v17 = 0;
  if (SHIBYTE(v23) < 0)
  {
    sub_100005F2C(__p, *buf, *&buf[8]);
  }

  else
  {
    *__p = *buf;
    v19 = v23;
  }

  v20 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v17;
    v17 = v20;
    v21 = v7;
    sub_100005978(&v21);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v17;
  v15 = v17;
  v17 = 0;
  sub_100005978(&v17);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(*buf);
  }

  CFDictionarySetValue(Mutable, @"Server", v8);
  sub_100005978(&v15);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v19 = *(a3 + 16);
  }

  ctu::path_join_impl();
  v9 = (*(**(a1 + 64) + 184))(*(a1 + 64), __p, v16, 0);
  if ((v9 & 1) == 0)
  {
    v10 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = __p;
      if (v19 < 0)
      {
        v11 = __p[0];
      }

      *buf = 136446210;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Failed to store server name to file: %{public}s", buf, 0xCu);
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000296E0(&v16);
  return v9;
}

void sub_10075CD40(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v51 = &v51;
  v52 = &v51;
  v53 = 0;
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = *(a1 + 32);
    v49 = *(a1 + 24);
    v50 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100A9C4F8(&v49, (a1 + 40), &v61);
    if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v61;
    }

    else
    {
      v10 = v61.__r_.__value_.__r.__words[0];
    }

    *buf = 136446466;
    *&buf[4] = v8;
    *&buf[12] = 2082;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Attempting to find server: [%{public}s] in %{public}s", buf, 0x16u);
    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (v50)
    {
      sub_100004A34(v50);
    }
  }

  v11 = (a1 + 40);
  if (((*(**(a1 + 64) + 88))(*(a1 + 64), a1 + 40) & 1) == 0)
  {
    v12 = *(a1 + 64);
    v13 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v13 = *v11;
    }

    memset(&v61, 0, sizeof(v61));
    memset(buf, 0, 24);
    v14 = (*(*v12 + 80))(v12, v13, 511, &v61, buf, 1);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v61.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(v61.__r_.__value_.__r.__words[0]) = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Root server folder creation status: %d", &v61, 8u);
    }
  }

  v16 = (*(**(a1 + 64) + 96))(*(a1 + 64), a1 + 40, &v51, 1);
  if (!v16)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    for (i = v52; i != &v51; i = i[1])
    {
      ctu::basename();
      sub_1000D1054(&v46, &v61);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }
    }

    v19 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000D1184(&v61, v46, v47, ", ", 2uLL);
      v20 = (v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v61 : v61.__r_.__value_.__r.__words[0];
      *buf = 136446210;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Available files/dirs: %{public}s", buf, 0xCu);
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }
    }

    v37 = a3;
    v43 = &v43;
    v44 = &v43;
    v45 = 0;
    v21 = v52;
    if (v52 != &v51)
    {
      while (1)
      {
        memset(buf, 0, 24);
        if (*(v21 + 39) < 0)
        {
          sub_100005F2C(buf, v21[2], v21[3]);
        }

        else
        {
          *buf = *(v21 + 1);
          *&buf[16] = v21[4];
        }

        v22 = (buf[23] & 0x80u) == 0 ? buf : *buf;
        if ((*(**(a1 + 64) + 224))(*(a1 + 64), v22))
        {
          __dst[0].__locale_ = 0;
          __dst[1].__locale_ = 0;
          *&v39 = 0;
          if (buf[23] < 0)
          {
            sub_100005F2C(__dst, *buf, *&buf[8]);
          }

          else
          {
            *&__dst[0].__locale_ = *buf;
            *&v39 = *&buf[16];
          }

          ctu::path_join_impl();
          if ((*(**(a1 + 64) + 88))(*(a1 + 64), __dst))
          {
            theDict = 0;
            (*(**(a1 + 64) + 152))(&theDict);
            if (!theDict)
            {
              goto LABEL_68;
            }

            CFDictionaryGetValue(theDict, @"Server");
            memset(&v61, 0, sizeof(v61));
            ctu::cf::assign();
            __p = v61;
            v23 = *(a2 + 23);
            if (v23 >= 0)
            {
              v24 = *(a2 + 23);
            }

            else
            {
              v24 = *(a2 + 8);
            }

            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
            v26 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __p.__r_.__value_.__l.__size_;
            }

            if (v24 != size || (v23 >= 0 ? (v27 = a2) : (v27 = *a2), (v28 = __p.__r_.__value_.__r.__words[0], (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), memcmp(v27, p_p, v24)))
            {
              if (v26 < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

LABEL_68:
              sub_10001021C(&theDict);
              sub_100764094(&v43, 0, 0, buf);
            }

            *v37 = *buf;
            *(v37 + 2) = *&buf[16];
            memset(buf, 0, 24);
            v37[24] = 1;
            if (v26 < 0)
            {
              operator delete(v28);
            }

            sub_10001021C(&theDict);
            v30 = 1;
          }

          else
          {
            v30 = 14;
          }

          if (SBYTE7(v39) < 0)
          {
            operator delete(__dst[0].__locale_);
          }
        }

        else
        {
          v30 = 0;
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v30 != 14 && v30)
        {
          goto LABEL_111;
        }

        v21 = v21[1];
        if (v21 == &v51)
        {
          if (v45)
          {
            sub_100764124(v44, &v43, v45);
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v56 = 0u;
            memset(buf, 0, sizeof(buf));
            v40 = 0u;
            v41 = 0u;
            *&__dst[0].__locale_ = 0u;
            v39 = 0u;
            sub_1001C7FB0(__dst, "_(\\d+)", 0);
          }

          break;
        }
      }
    }

    memset(&v61, 0, sizeof(v61));
    if (*(a1 + 63) < 0)
    {
      sub_100005F2C(&v61, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      *&v61.__r_.__value_.__l.__data_ = *v11;
      v61.__r_.__value_.__r.__words[2] = *(a1 + 56);
    }

    ctu::path_join_impl();
    if ((*(**(a1 + 64) + 88))(*(a1 + 64), &v61))
    {
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        sub_10177CD24();
      }
    }

    else
    {
      if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v61;
      }

      else
      {
        v31 = v61.__r_.__value_.__r.__words[0];
      }

      v32 = (*(**(a1 + 64) + 72))(*(a1 + 64), v31, 511, 1);
      v33 = *v6;
      v34 = os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR);
      if (v32)
      {
        if (v34)
        {
          v35 = &v61;
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v35 = v61.__r_.__value_.__r.__words[0];
          }

          *buf = 136446466;
          *&buf[4] = v35;
          *&buf[12] = 1024;
          *&buf[14] = v32;
          _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Folder could not be created: %{public}s, error: %d", buf, 0x12u);
        }

        goto LABEL_106;
      }

      if (v34)
      {
        sub_10177CCB4();
      }
    }

    if (sub_10075C9DC(a1, a2, &v61))
    {
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(v37, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
      }

      else
      {
        *v37 = v61;
      }

      v36 = 1;
LABEL_109:
      v37[24] = v36;
      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

LABEL_111:
      sub_10042E114(&v43);
      *buf = &v46;
      sub_1000087B4(buf);
      goto LABEL_112;
    }

    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_10177CC00();
    }

LABEL_106:
    v36 = 0;
    *v37 = 0;
    goto LABEL_109;
  }

  v17 = *v6;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 63) < 0)
    {
      v11 = *v11;
    }

    LODWORD(v61.__r_.__value_.__l.__data_) = 136446466;
    *(v61.__r_.__value_.__r.__words + 4) = v11;
    WORD2(v61.__r_.__value_.__r.__words[1]) = 2048;
    *(&v61.__r_.__value_.__r.__words[1] + 6) = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to read contents of: %{public}s, error: %zu", &v61, 0x16u);
  }

  *a3 = 0;
  a3[24] = 0;
LABEL_112:
  sub_10042E114(&v51);
}

void sub_10075DA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _BYTE *a10, std::locale a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a2)
  {
    if (*(v52 - 201) < 0)
    {
      operator delete(*(v52 - 224));
    }

    __cxa_begin_catch(exception_object);
    if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
    {
      sub_10177CC3C();
    }

    *a10 = 0;
    a10[24] = 0;
    __cxa_end_catch();
    JUMPOUT(0x10075D934);
  }

  _Unwind_Resume(exception_object);
}

void sub_10075DC40(uint64_t a1@<X0>, std::string::size_type a2@<X1>, std::string *a3@<X8>)
{
  v36 = &v36;
  v37 = &v36;
  v38 = 0;
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = *(a1 + 32);
    v34 = *(a1 + 24);
    v35 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100A9C4F8(&v34, (a1 + 40), v40);
    if ((v40[23] & 0x80u) == 0)
    {
      v10 = v40;
    }

    else
    {
      v10 = *v40;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
    *(buf.__r_.__value_.__r.__words + 4) = v8;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Getting server dir for %{public}s in %{public}s", &buf, 0x16u);
    if (v40[23] < 0)
    {
      operator delete(*v40);
    }

    if (v35)
    {
      sub_100004A34(v35);
    }
  }

  v11 = (a1 + 40);
  v12 = (*(**(a1 + 64) + 96))(*(a1 + 64), a1 + 40, &v36, 1);
  if (v12)
  {
    v13 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 63) < 0)
      {
        v11 = *v11;
      }

      *v40 = 136446466;
      *&v40[4] = v11;
      *&v40[12] = 2048;
      *&v40[14] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Unable to read contents of: %{public}s, error: %zu", v40, 0x16u);
    }

    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[1].__r_.__value_.__s.__data_[0] = 0;
    goto LABEL_20;
  }

  memset(&buf, 0, sizeof(buf));
  v14 = v37;
  if (v37 == &v36)
  {
    v25 = 0;
    goto LABEL_68;
  }

  do
  {
    memset(&__str, 0, sizeof(__str));
    if (*(v14 + 39) < 0)
    {
      sub_100005F2C(&__str, v14[2], v14[3]);
    }

    else
    {
      __str = *(v14 + 2);
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if (((*(**(a1 + 64) + 224))(*(a1 + 64), p_str) & 1) == 0)
    {
      v16 = 0;
      goto LABEL_56;
    }

    memset(&__dst, 0, sizeof(__dst));
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = __str;
    }

    ctu::path_join_impl();
    if ((*(**(a1 + 64) + 88))(*(a1 + 64), &__dst))
    {
      theDict = 0;
      (*(**(a1 + 64) + 152))(&theDict);
      if (!theDict)
      {
        goto LABEL_51;
      }

      CFDictionaryGetValue(theDict, @"Server");
      memset(v40, 0, sizeof(v40));
      ctu::cf::assign();
      v30 = *&v40[16];
      *__p = *v40;
      v17 = *(a2 + 23);
      if (v17 >= 0)
      {
        v18 = *(a2 + 23);
      }

      else
      {
        v18 = *(a2 + 8);
      }

      v19 = HIBYTE(v30);
      v20 = SHIBYTE(v30);
      if (v30 < 0)
      {
        v19 = __p[1];
      }

      if (v18 == v19 && (v17 >= 0 ? (v21 = a2) : (v21 = *a2), v30 >= 0 ? (v22 = __p) : (v22 = __p[0]), !memcmp(v21, v22, v18)))
      {
        std::string::operator=(&buf, &__str);
        v24 = 6;
        v23 = 1;
        if ((v20 & 0x80000000) == 0)
        {
LABEL_50:
          if (v23)
          {
LABEL_52:
            sub_10001021C(&theDict);
            v16 = v24 == 6;
            goto LABEL_54;
          }

LABEL_51:
          v24 = 0;
          goto LABEL_52;
        }
      }

      else
      {
        v23 = 0;
        v24 = 0;
        if ((v20 & 0x80000000) == 0)
        {
          goto LABEL_50;
        }
      }

      operator delete(__p[0]);
      goto LABEL_50;
    }

    v16 = 0;
LABEL_54:
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

LABEL_56:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (v16)
    {
      break;
    }

    v14 = v14[1];
  }

  while (v14 != &v36);
  v25 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *a3 = buf;
    a3[1].__r_.__value_.__s.__data_[0] = 1;
    goto LABEL_20;
  }

LABEL_68:
  v27 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v28 = a2;
    }

    else
    {
      v28 = *a2;
    }

    *v40 = 136446210;
    *&v40[4] = v28;
    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to find server folder for: %{public}s", v40, 0xCu);
    v25 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  a3->__r_.__value_.__s.__data_[0] = 0;
  a3[1].__r_.__value_.__s.__data_[0] = 0;
  if (v25 < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_20:
  sub_10042E114(&v36);
}

void sub_10075E178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (v39 < 0)
  {
    operator delete(v38);
  }

  sub_10001021C(&a14);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_10042E114(&a30);
  _Unwind_Resume(a1);
}

BOOL sub_10075E230(uint64_t a1, std::string::size_type a2)
{
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v25 = 0u;
  v26 = 0u;
  sub_10075DC40(a1, a2, v25);
  if (BYTE8(v26) == 1)
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v24 = 0;
    v5 = SBYTE7(v26);
    if (SBYTE7(v26) < 0)
    {
      sub_100005F2C(__dst, v25[0], v25[1]);
    }

    else
    {
      *__dst = *v25;
      v24 = v26;
    }

    v7 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = __dst;
      if (v24 < 0)
      {
        v8 = __dst[0];
      }

      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Removing directory: %{public}s", buf, 0xCu);
    }

    v9 = (*(**(a1 + 64) + 112))(*(a1 + 64), __dst);
    v10 = *(a1 + 16);
    std::operator+<char>();
    v11 = std::string::append(&v21, ", ", 2uLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v9);
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

    v15 = std::string::append(&v22, p_p, size);
    v16 = *&v15->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v15->__r_.__value_.__l + 2);
    *buf = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    sub_100A9B39C(a1 + 24, v10, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v6 = v9 == 0;
    if (v9)
    {
      v17 = *v4;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = __dst;
        if (v24 < 0)
        {
          v18 = __dst[0];
        }

        *buf = 136446466;
        *&buf[4] = v18;
        *&buf[12] = 2048;
        *&buf[14] = v9;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to erase: %{public}s, error: %ld", buf, 0x16u);
      }
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst[0]);
      if ((v5 & 0x80000000) == 0)
      {
        return v6;
      }
    }

    else if ((v5 & 0x80000000) == 0)
    {
      return v6;
    }

    operator delete(v25[0]);
    return v6;
  }

  return 0;
}

void sub_10075E5D0(uint64_t a1, std::string::size_type a2, std::string::size_type a3)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v33 = 0u;
  v34 = 0u;
  sub_10075DC40(a1, a2, &v33);
  if (BYTE8(v34) != 1)
  {
    return;
  }

  memset(&__p, 0, sizeof(__p));
  v7 = SBYTE7(v34);
  if (SBYTE7(v34) < 0)
  {
    sub_100005F2C(&__p, v33, *(&v33 + 1));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = v33;
    __p.__r_.__value_.__r.__words[2] = v34;
  }

  v8 = *(a1 + 64);
  memset(&buf, 0, sizeof(buf));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = __p;
  }

  ctu::path_join_impl();
  v9 = (*(*v8 + 88))(v8, &buf);
  v10 = v9;
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v9)
    {
      goto LABEL_51;
    }

LABEL_12:
    v11 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
      *(buf.__r_.__value_.__r.__words + 4) = v12;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Removing %{public}s from: %{public}s", &buf, 0x16u);
    }

    v14 = *(a1 + 64);
    memset(&buf, 0, sizeof(buf));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = __p;
    }

    ctu::path_join_impl();
    v15 = (*(*v14 + 112))(v14, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v15)
    {
      v16 = *v6;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v17 = a3;
        }

        else
        {
          v17 = *a3;
        }

        v18 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446722;
        *(buf.__r_.__value_.__r.__words + 4) = v17;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v18;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        v36 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Failed to erase %{public}s from: %{public}s, error: %zu", &buf, 0x20u);
      }
    }

    v19 = *(a1 + 16);
    memset(&__dst, 0, sizeof(__dst));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = __p;
    }

    ctu::path_join_impl();
    v20 = std::string::insert(&__dst, 0, "Erase file: ", 0xCuLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v30, ", ", 2uLL);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v28, v15);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v28;
    }

    else
    {
      v24 = v28.__r_.__value_.__r.__words[0];
    }

    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v31, v24, size);
    v27 = *&v26->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    sub_100A9B39C(a1 + 24, v19, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    goto LABEL_51;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (v10)
  {
    goto LABEL_12;
  }

LABEL_51:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

LABEL_55:
    operator delete(v33);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v7 < 0)
  {
    goto LABEL_55;
  }
}

void sub_10075EA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (v42 < 0)
  {
    operator delete(*(v43 - 144));
  }

  _Unwind_Resume(exception_object);
}

void sub_10075EB58(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  sub_10000BB50(&v40, a2);
  ctu::basename();
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  if (((*(**(a1 + 64) + 88))(*(a1 + 64), v3) & 1) == 0)
  {
    *a3 = 0;
    *(a3 + 1232) = 0;
    goto LABEL_59;
  }

  theData = 0;
  (*(**(a1 + 64) + 168))(&theData);
  if (!theData)
  {
    v13 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v37;
      if (v38 < 0)
      {
        v14 = v37[0];
      }

      v40 = 136446210;
      *v41 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Failed to read existing XML: %{public}s", &v40, 0xCu);
    }

    *a3 = 0;
    *(a3 + 1232) = 0;
    goto LABEL_58;
  }

  __dst = 0;
  v34 = 0;
  v35 = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  sub_10065F5EC(&__dst, BytePtr, Length);
  v9 = HIBYTE(v35);
  if (v35 < 0)
  {
    v9 = v34;
  }

  if (!v9)
  {
    v15 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v37;
      if (v38 < 0)
      {
        v16 = v37[0];
      }

      v40 = 136315138;
      *v41 = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Failed to parse XML: %s", &v40, 0xCu);
    }

    *a3 = 0;
    *(a3 + 1232) = 0;
    goto LABEL_56;
  }

  bzero(&v40, 0x4D8uLL);
  sub_100463BEC((a1 + 24), v6, &__dst, &v40);
  if (v51)
  {
    v32.__r_.__value_.__r.__words[0] = 0;
    v10 = (*(**(a1 + 64) + 240))(*(a1 + 64), v3, &v32);
    if (!v10)
    {
      v27 = *&v32.__r_.__value_.__l.__data_;
      v50 = *&v32.__r_.__value_.__l.__data_;
      v28 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        v29 = v37;
        if (v38 < 0)
        {
          v29 = v37[0];
        }

        *buf = 136446466;
        *&buf[4] = v29;
        *&buf[12] = 2048;
        *&buf[14] = v27;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I XML read: [%{public}s, created: %ld]", buf, 0x16u);
      }

      *a3 = 0;
      *(a3 + 1232) = 0;
      if (v51 == 1)
      {
        sub_100763A24(a3, &v40);
        *(a3 + 1224) = v50;
        *(a3 + 1232) = 1;
      }

      goto LABEL_44;
    }

    v11 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v37;
      if (v38 < 0)
      {
        v12 = v37[0];
      }

      *buf = 136446466;
      *&buf[4] = v12;
      *&buf[12] = 1024;
      *&buf[14] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid timestamp: %{public}s [%d]", buf, 0x12u);
    }
  }

  else
  {
    v17 = *v6;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v37;
      if (v38 < 0)
      {
        v18 = v37[0];
      }

      *buf = 136446210;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Removing invalid XML: %{public}s", buf, 0xCu);
    }

    v19 = (*(**(a1 + 64) + 112))(*(a1 + 64), v3);
    v20 = *(a1 + 16);
    std::operator+<char>();
    v21 = std::string::append(&v31, ", ", 2uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&__p, v19);
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

    v25 = std::string::append(&v32, p_p, size);
    v26 = *&v25->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v25->__r_.__value_.__l + 2);
    *buf = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    sub_100A9B39C(a1 + 24, v20, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }
  }

  *a3 = 0;
  *(a3 + 1232) = 0;
LABEL_44:
  if (v51 == 1)
  {
    if (v49[448] == 1)
    {
      sub_10038E6A4(v49);
    }

    if (v48 == 1)
    {
      sub_100009970(v47, v47[1]);
    }

    if (v46[528] == 1)
    {
      sub_10038E7C0(v46);
    }

    if (v45[24] == 1)
    {
      *buf = v45;
      sub_1002CB430(buf);
      sub_100009970(v44, v44[1]);
    }

    if (v43 == 1 && v42 < 0)
    {
      operator delete(*&v41[4]);
    }
  }

LABEL_56:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
  }

LABEL_58:
  sub_10002D760(&theData);
LABEL_59:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }
}

void sub_10075F164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, const void *a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, char a47)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_10038E5E8(&a47);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_10002D760(&a33);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10075F22C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1002CB0A8();
  __p[1] = 0;
  v11 = 0;
  __p[0] = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  ctu::path_join_impl();
  v6 = (*(**(a1 + 64) + 88))(*(a1 + 64), __p);
  if ((*(**(a1 + 64) + 240))(*(a1 + 64), __p, a3))
  {
    *a3 = 0;
    v7 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = __p;
      if (v11 < 0)
      {
        v8 = __p[0];
      }

      *buf = 136446210;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Unable to read timestamp: %{public}s", buf, 0xCu);
    }
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_10075F408(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  ctu::path_join_impl();
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  if ((*(**(a1 + 64) + 88))(*(a1 + 64), __p))
  {
    theDict = 0;
    (*(**(a1 + 64) + 152))(&theDict);
    if (theDict)
    {
      CFDictionaryGetValue(theDict, @"Server");
      ctu::cf::assign();
      v10 = *v5;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = __p;
        if (v14 < 0)
        {
          v11 = __p[0];
        }

        *buf = 136446210;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Missing keys in server information: %{public}s", buf, 0xCu);
      }

      *a3 = 0;
      a3[24] = 0;
    }

    else
    {
      v8 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = __p;
        if (v14 < 0)
        {
          v9 = __p[0];
        }

        *buf = 136446210;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Missing server information: %{public}s", buf, 0xCu);
      }

      *a3 = 0;
      a3[24] = 0;
    }

    sub_10001021C(&theDict);
  }

  else
  {
    v6 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __p;
      if (v14 < 0)
      {
        v7 = __p[0];
      }

      *buf = 136446210;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I File not found: %{public}s", buf, 0xCu);
    }

    *a3 = 0;
    a3[24] = 0;
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10075F720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  operator delete(v23);
  sub_10001021C(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10075F780(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v16 = *(a1 + 24);
    v17 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100A9C4F8(&v16, a2, &__p);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    buf = 136446210;
    *buf_4 = p_p;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Preparing collection from directory: %{public}s", &buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p);
    }

    if (v17)
    {
      sub_100004A34(v17);
    }
  }

  v15 = 0u;
  *__src = 0u;
  sub_10075F408(a1, a2, __src);
  if (BYTE8(v15))
  {
    __dst[1] = 0;
    __dst[0] = 0;
    v13 = 0;
    if (SBYTE7(v15) < 0)
    {
      sub_100005F2C(__dst, __src[0], __src[1]);
    }

    else
    {
      *__dst = *__src;
      v13 = v15;
    }

    bzero(&__p, 0x4D8uLL);
    sub_10038EB74();
  }

  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_10177CD94();
  }

  *a3 = 0;
  a3[1] = 0;
  if (BYTE8(v15) == 1 && SBYTE7(v15) < 0)
  {
    operator delete(__src[0]);
  }
}

void sub_10076069C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10038E5E8(&STACK[0x5A0]);
  if (a6)
  {
    sub_100004A34(a6);
  }

  sub_10038E5E8(va);
  if (SLOBYTE(STACK[0x507]) < 0)
  {
    operator delete(STACK[0x4F0]);
  }

  if (LOBYTE(STACK[0x528]) == 1 && SLOBYTE(STACK[0x527]) < 0)
  {
    operator delete(STACK[0x510]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007607C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *v27 = 0u;
  v28 = 0u;
  sub_10075CD40(a1, a2, v27);
  if (BYTE8(v28))
  {
    v26 = 0;
    v7 = *(a3 + 23);
    if (v7 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    if (v7 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = *(a3 + 8);
    }

    v25 = 0;
    v26 = CFDataCreate(0, v8, v9);
    __dst[0] = 0;
    __dst[1] = 0;
    if ((BYTE8(v28) & 1) == 0)
    {
      sub_1000D1644();
    }

    if (SBYTE7(v28) < 0)
    {
      sub_100005F2C(__dst, v27[0], v27[1]);
    }

    else
    {
      *__dst = *v27;
      v25 = v28;
    }

    ctu::path_join_impl();
    v12 = (*(**(a1 + 64) + 200))(*(a1 + 64), __dst, v26, 0);
    v13 = *(**(a1 + 8) + 16);
    if (v12)
    {
      v14 = *v13();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v15 = a2;
        }

        else
        {
          v15 = *a2;
        }

        v16 = *(a1 + 32);
        v22 = *(a1 + 24);
        v23 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100A9C4F8(&v22, __dst, __p);
        if (v32 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = *__p;
        }

        *buf = 136446466;
        v34 = v15;
        v35 = 2082;
        v36 = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I XML stored for [%{public}s] : %{public}s", buf, 0x16u);
        if (v32 < 0)
        {
          operator delete(*__p);
        }

        if (v23)
        {
          sub_100004A34(v23);
        }
      }

      if ((BYTE8(v28) & 1) == 0)
      {
        sub_1000D1644();
      }

      v11 = sub_10075C9DC(a1, a2, v27);
    }

    else
    {
      v18 = *v13();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        if ((BYTE8(v28) & 1) == 0)
        {
          sub_1000D1644();
        }

        v20 = v27;
        if (SBYTE7(v28) < 0)
        {
          v20 = v27[0];
        }

        if (*(a2 + 23) >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        *__p = 136446466;
        *&__p[4] = v20;
        v30 = 2082;
        v31 = v21;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to store to folder: [%{public}s] for server: [%{public}s]", __p, 0x16u);
      }

      v11 = 0;
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(__dst[0]);
    }

    sub_10002D760(&v26);
  }

  else
  {
    v10 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      sub_10177CE7C();
    }

    v11 = 0;
  }

  if (BYTE8(v28) == 1 && SBYTE7(v28) < 0)
  {
    operator delete(v27[0]);
  }

  return v11;
}

void sub_100760B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10002D760(&a17);
  if (a24 == 1 && a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100760BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *v24 = 0u;
  v25 = 0u;
  sub_10075CD40(a1, a2, v24);
  if (BYTE8(v25))
  {
    sub_10000501C(v30, "AttestationKey.txt");
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    if (SBYTE7(v25) < 0)
    {
      sub_100005F2C(__p, v24[0], v24[1]);
    }

    else
    {
      *__p = *v24;
      v23 = v25;
    }

    ctu::path_join_impl();
    if (v33 < 0)
    {
      operator delete(*v30);
    }

    v21 = 0;
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v21 = CFDataCreate(0, v9, v10);
    v7 = (*(**(a1 + 64) + 200))(*(a1 + 64), __p, v21, 0);
    v11 = *(**(a1 + 8) + 16);
    if (v7)
    {
      v12 = *v11();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v4 + 23) < 0)
        {
          v4 = *v4;
        }

        v13 = *(a1 + 32);
        v19 = *(a1 + 24);
        v20 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100A9C4F8(&v19, __p, v30);
        if (v33 >= 0)
        {
          v14 = v30;
        }

        else
        {
          v14 = *v30;
        }

        *buf = 136446466;
        v27 = v4;
        v28 = 2082;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Attestation key stored for [%{public}s] : %{public}s", buf, 0x16u);
        if (v33 < 0)
        {
          operator delete(*v30);
        }

        if (v20)
        {
          sub_100004A34(v20);
        }
      }
    }

    else
    {
      v15 = *v11();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if ((BYTE8(v25) & 1) == 0)
        {
          sub_1000D1644();
        }

        v17 = v24;
        if (SBYTE7(v25) < 0)
        {
          v17 = v24[0];
        }

        if (*(v4 + 23) >= 0)
        {
          v18 = v4;
        }

        else
        {
          v18 = *v4;
        }

        *v30 = 136446466;
        *&v30[4] = v17;
        v31 = 2082;
        v32 = v18;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to store to folder: [%{public}s] for server: [%{public}s]", v30, 0x16u);
      }
    }

    sub_10002D760(&v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_10177CEEC();
    }

    v7 = 0;
  }

  if (BYTE8(v25) == 1 && SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  return v7;
}

void sub_100760F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10002D760(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_100760FC0(uint64_t a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v29 = 0u;
  v30 = 0u;
  sub_10075DC40(a1, a2, v29);
  if (BYTE8(v30))
  {
    memset(buf, 0, sizeof(buf));
    v28 = 0;
    sub_10000501C(__p, "AttestationKey.txt");
    memset(buf, 0, sizeof(buf));
    v28 = 0;
    v7 = SBYTE7(v30);
    if (SBYTE7(v30) < 0)
    {
      sub_100005F2C(buf, v29[0], v29[1]);
    }

    else
    {
      *buf = *v29;
      v28 = v30;
    }

    ctu::path_join_impl();
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if ((*(**(a1 + 64) + 88))(*(a1 + 64), buf))
    {
      theData = 0;
      (*(**(a1 + 64) + 168))(&theData);
      if (theData)
      {
        __p[0] = 0;
        __p[1] = 0;
        v26 = 0;
        BytePtr = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        sub_10065F5EC(__p, BytePtr, Length);
        v11 = HIBYTE(v26);
        v12 = HIBYTE(v26);
        if (v26 < 0)
        {
          v11 = __p[1];
        }

        if (v11)
        {
          *a3 = *__p;
          *(a3 + 16) = v26;
        }

        else
        {
          v17 = *v6;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(a1 + 32);
            v20 = *(a1 + 24);
            v21 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100A9C4F8(&v20, buf, v31);
            if (v32 >= 0)
            {
              v19 = v31;
            }

            else
            {
              v19 = *v31;
            }

            *v33 = 136315138;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Failed to parse attestation file: %s", v33, 0xCu);
            if (v32 < 0)
            {
              operator delete(*v31);
            }

            if (v21)
            {
              sub_100004A34(v21);
            }

            v12 = HIBYTE(v26);
          }

          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          if (v12 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        v14 = *v6;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(a1 + 32);
          v22 = *(a1 + 24);
          v23 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_100A9C4F8(&v22, buf, __p);
          if (v26 >= 0)
          {
            v16 = __p;
          }

          else
          {
            v16 = __p[0];
          }

          *v31 = 136446210;
          *&v31[4] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Failed to read existing XML: %{public}s", v31, 0xCu);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p[0]);
          }

          if (v23)
          {
            sub_100004A34(v23);
          }
        }

        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
      }

      sub_10002D760(&theData);
    }

    else
    {
      v13 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I No stored attestation key", __p, 2u);
      }

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      if ((v7 & 0x80000000) == 0)
      {
        return;
      }

LABEL_48:
      operator delete(v29[0]);
      return;
    }

    operator delete(*buf);
    if (v7 < 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v8 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I No stored server folder", buf, 2u);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_100761424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10002D760(&a14);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007614DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *v21 = 0u;
  v22 = 0u;
  sub_10075CD40(a1, a2, v21);
  if (BYTE8(v22))
  {
    sub_10000501C(v27, "Vapid.txt");
    __p[0] = 0;
    __p[1] = 0;
    v20 = 0;
    if (SBYTE7(v22) < 0)
    {
      sub_100005F2C(__p, v21[0], v21[1]);
    }

    else
    {
      *__p = *v21;
      v20 = v22;
    }

    ctu::path_join_impl();
    if (v30 < 0)
    {
      operator delete(*v27);
    }

    v18 = 0;
    v18 = CFDataCreate(0, *a3, *(a3 + 8) - *a3);
    v7 = (*(**(a1 + 64) + 200))(*(a1 + 64), __p, v18, 0);
    v8 = *(**(a1 + 8) + 16);
    if (v7)
    {
      v9 = *v8();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v4 + 23) < 0)
        {
          v4 = *v4;
        }

        v10 = *(a1 + 32);
        v16 = *(a1 + 24);
        v17 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100A9C4F8(&v16, __p, v27);
        if (v30 >= 0)
        {
          v11 = v27;
        }

        else
        {
          v11 = *v27;
        }

        *buf = 136446466;
        v24 = v4;
        v25 = 2082;
        v26 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I VAPID stored for [%{public}s] : %{public}s", buf, 0x16u);
        if (v30 < 0)
        {
          operator delete(*v27);
        }

        if (v17)
        {
          sub_100004A34(v17);
        }
      }
    }

    else
    {
      v12 = *v8();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if ((BYTE8(v22) & 1) == 0)
        {
          sub_1000D1644();
        }

        v14 = v21;
        if (SBYTE7(v22) < 0)
        {
          v14 = v21[0];
        }

        if (*(v4 + 23) >= 0)
        {
          v15 = v4;
        }

        else
        {
          v15 = *v4;
        }

        *v27 = 136446466;
        *&v27[4] = v14;
        v28 = 2082;
        v29 = v15;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to store VAPID to folder: [%{public}s] for server: [%{public}s]", v27, 0x16u);
      }
    }

    sub_10002D760(&v18);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_10177CF5C();
    }

    v7 = 0;
  }

  if (BYTE8(v22) == 1 && SBYTE7(v22) < 0)
  {
    operator delete(v21[0]);
  }

  return v7;
}

void sub_100761820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10002D760(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_1007618C8(uint64_t a1@<X0>, std::string::size_type a2@<X1>, void **a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v27 = 0u;
  v28 = 0u;
  sub_10075DC40(a1, a2, v27);
  if (BYTE8(v28))
  {
    memset(buf, 0, sizeof(buf));
    v26 = 0;
    sub_10000501C(&__p, "Vapid.txt");
    memset(buf, 0, sizeof(buf));
    v26 = 0;
    if (SBYTE7(v28) < 0)
    {
      sub_100005F2C(buf, v27[0], v27[1]);
    }

    else
    {
      *buf = *v27;
      v26 = v28;
    }

    ctu::path_join_impl();
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }

    if ((*(**(a1 + 64) + 88))(*(a1 + 64), buf))
    {
      theData = 0;
      (*(**(a1 + 64) + 168))(&theData);
      if (theData)
      {
        __p = 0;
        v23 = 0;
        v24 = 0;
        BytePtr = CFDataGetBytePtr(theData);
        v9 = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        __p = 0;
        v23 = 0;
        v24 = 0;
        sub_1000DCF88(&__p, BytePtr, &v9[Length], &v9[Length] - BytePtr);
        v12 = __p;
        v11 = v23;
        if (__p == v23)
        {
          v15 = *v6;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = *(a1 + 32);
            v18 = *(a1 + 24);
            v19 = v16;
            if (v16)
            {
              atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100A9C4F8(&v18, buf, v29);
            if (v30 >= 0)
            {
              v17 = v29;
            }

            else
            {
              v17 = v29[0];
            }

            *v31 = 136315138;
            v32 = v17;
            _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to read VAPID file: %s", v31, 0xCu);
            if (v30 < 0)
            {
              operator delete(v29[0]);
            }

            if (v19)
            {
              sub_100004A34(v19);
            }

            v12 = __p;
          }

          *a3 = 0;
          a3[1] = 0;
          a3[2] = 0;
          if (v12)
          {
            v23 = v12;
            operator delete(v12);
          }
        }

        else
        {
          *a3 = __p;
          a3[1] = v11;
          a3[2] = v24;
        }
      }

      else
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          v14 = *(a1 + 32);
          v20[0] = *(a1 + 24);
          v20[1] = v14;
          if (v14)
          {
            atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
          }

          sub_100A9C4F8(v20, buf, &__p);
          sub_10177CFCC();
        }

        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
      }

      sub_10002D760(&theData);
    }

    else
    {
      v13 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I No stored VAPID key", &__p, 2u);
      }

      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(*buf);
    }

    if ((BYTE8(v28) & 1) != 0 && SBYTE7(v28) < 0)
    {
      operator delete(v27[0]);
    }
  }

  else
  {
    v7 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No stored server folder", buf, 2u);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_100761CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, const void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_10002D760(&a14);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100761DA8(uint64_t a1, std::string::size_type a2)
{
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v14 = 0u;
  v15 = 0u;
  sub_10075DC40(a1, a2, v14);
  if (BYTE8(v15))
  {
    sub_10000501C(__p, "Vapid.txt");
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    v5 = SBYTE7(v15);
    if (SBYTE7(v15) < 0)
    {
      sub_100005F2C(v12, v14[0], v14[1]);
    }

    else
    {
      *v12 = *v14;
      v13 = v15;
    }

    ctu::path_join_impl();
    if (v17 < 0)
    {
      operator delete(*__p);
    }

    if ((*(**(a1 + 64) + 88))(*(a1 + 64), v12))
    {
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v12;
        if (v13 < 0)
        {
          v9 = v12[0];
        }

        *__p = 136446210;
        *&__p[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Removing file: %{public}s", __p, 0xCu);
      }

      if (!(*(**(a1 + 64) + 112))(*(a1 + 64), v12))
      {
        v7 = 1;
LABEL_20:
        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
          if ((v5 & 0x80000000) == 0)
          {
            return v7;
          }
        }

        else if ((v5 & 0x80000000) == 0)
        {
          return v7;
        }

        operator delete(v14[0]);
        return v7;
      }

      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        sub_10177D03C();
      }
    }

    else
    {
      v10 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No stored VAPID key", __p, 2u);
      }
    }

    v7 = 0;
    goto LABEL_20;
  }

  v6 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v7 = 0;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I No stored server folder", v12, 2u);
    return 0;
  }

  return v7;
}

void sub_1007620B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100762124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  *v24 = 0u;
  v25 = 0u;
  sub_10075CD40(a1, a2, v24);
  if (BYTE8(v25))
  {
    sub_10000501C(v30, "PushURL.txt");
    __p[0] = 0;
    __p[1] = 0;
    v23 = 0;
    if (SBYTE7(v25) < 0)
    {
      sub_100005F2C(__p, v24[0], v24[1]);
    }

    else
    {
      *__p = *v24;
      v23 = v25;
    }

    ctu::path_join_impl();
    if (v33 < 0)
    {
      operator delete(*v30);
    }

    v21 = 0;
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v21 = CFDataCreate(0, v9, v10);
    v7 = (*(**(a1 + 64) + 200))(*(a1 + 64), __p, v21, 0);
    v11 = *(**(a1 + 8) + 16);
    if (v7)
    {
      v12 = *v11();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v4 + 23) < 0)
        {
          v4 = *v4;
        }

        v13 = *(a1 + 32);
        v19 = *(a1 + 24);
        v20 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100A9C4F8(&v19, __p, v30);
        if (v33 >= 0)
        {
          v14 = v30;
        }

        else
        {
          v14 = *v30;
        }

        *buf = 136446466;
        v27 = v4;
        v28 = 2082;
        v29 = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Push URL stored for [%{public}s] : %{public}s", buf, 0x16u);
        if (v33 < 0)
        {
          operator delete(*v30);
        }

        if (v20)
        {
          sub_100004A34(v20);
        }
      }
    }

    else
    {
      v15 = *v11();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        if ((BYTE8(v25) & 1) == 0)
        {
          sub_1000D1644();
        }

        v17 = v24;
        if (SBYTE7(v25) < 0)
        {
          v17 = v24[0];
        }

        if (*(v4 + 23) >= 0)
        {
          v18 = v4;
        }

        else
        {
          v18 = *v4;
        }

        *v30 = 136446466;
        *&v30[4] = v17;
        v31 = 2082;
        v32 = v18;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to store Push URL to folder: [%{public}s] for server: [%{public}s]", v30, 0x16u);
      }
    }

    sub_10002D760(&v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      sub_10177D0B8();
    }

    v7 = 0;
  }

  if (BYTE8(v25) == 1 && SBYTE7(v25) < 0)
  {
    operator delete(v24[0]);
  }

  return v7;
}

void sub_100762478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10002D760(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a26 == 1 && a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void sub_100762520(uint64_t a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v27 = 0u;
  v28 = 0u;
  sub_10075DC40(a1, a2, v27);
  if (BYTE8(v28))
  {
    __dst[0] = 0;
    __dst[1] = 0;
    v26 = 0;
    sub_10000501C(__p, "PushURL.txt");
    __dst[0] = 0;
    __dst[1] = 0;
    v26 = 0;
    v7 = SBYTE7(v28);
    if (SBYTE7(v28) < 0)
    {
      sub_100005F2C(__dst, v27[0], v27[1]);
    }

    else
    {
      *__dst = *v27;
      v26 = v28;
    }

    ctu::path_join_impl();
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if ((*(**(a1 + 64) + 88))(*(a1 + 64), __dst))
    {
      theData = 0;
      (*(**(a1 + 64) + 168))(&theData);
      if (theData)
      {
        __p[0] = 0;
        __p[1] = 0;
        v24 = 0;
        BytePtr = CFDataGetBytePtr(theData);
        v10 = CFDataGetBytePtr(theData);
        Length = CFDataGetLength(theData);
        sub_1001E0090(__p, BytePtr, &v10[Length], &v10[Length] - BytePtr);
        v12 = HIBYTE(v24);
        v13 = HIBYTE(v24);
        if (v24 < 0)
        {
          v12 = __p[1];
        }

        if (v12)
        {
          *a3 = *__p;
          *(a3 + 16) = v24;
        }

        else
        {
          v16 = *v6;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 32);
            v19 = *(a1 + 24);
            v20 = v17;
            if (v17)
            {
              atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100A9C4F8(&v19, __dst, v29);
            if (v30 >= 0)
            {
              v18 = v29;
            }

            else
            {
              v18 = v29[0];
            }

            *buf = 136315138;
            v32 = v18;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Failed to read Push URL file: %s", buf, 0xCu);
            if (v30 < 0)
            {
              operator delete(v29[0]);
            }

            if (v20)
            {
              sub_100004A34(v20);
            }

            v13 = HIBYTE(v24);
          }

          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          if (v13 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
        {
          v15 = *(a1 + 32);
          v21[0] = *(a1 + 24);
          v21[1] = v15;
          if (v15)
          {
            atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
          }

          sub_100A9C4F8(v21, __dst, __p);
          sub_10177D1A0();
        }

        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
      }

      sub_10002D760(&theData);
    }

    else
    {
      v14 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_10177D164();
      }

      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }

    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      if ((v7 & 0x80000000) == 0)
      {
        return;
      }

LABEL_32:
      operator delete(v27[0]);
      return;
    }

    operator delete(__dst[0]);
    if (v7 < 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v8 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      sub_10177D128();
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_100762908(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, const void *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10002D760(&a13);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007629C0(uint64_t a1, std::string::size_type a2)
{
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  *v14 = 0u;
  v15 = 0u;
  sub_10075DC40(a1, a2, v14);
  if (BYTE8(v15))
  {
    sub_10000501C(__p, "PushURL.txt");
    v12[0] = 0;
    v12[1] = 0;
    v13 = 0;
    v5 = SBYTE7(v15);
    if (SBYTE7(v15) < 0)
    {
      sub_100005F2C(v12, v14[0], v14[1]);
    }

    else
    {
      *v12 = *v14;
      v13 = v15;
    }

    ctu::path_join_impl();
    if (v17 < 0)
    {
      operator delete(*__p);
    }

    if ((*(**(a1 + 64) + 88))(*(a1 + 64), v12))
    {
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v12;
        if (v13 < 0)
        {
          v9 = v12[0];
        }

        *__p = 136446210;
        *&__p[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Removing file: %{public}s", __p, 0xCu);
      }

      if (!(*(**(a1 + 64) + 112))(*(a1 + 64), v12))
      {
        v7 = 1;
LABEL_21:
        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
          if ((v5 & 0x80000000) == 0)
          {
            return v7;
          }
        }

        else if ((v5 & 0x80000000) == 0)
        {
          return v7;
        }

        operator delete(v14[0]);
        return v7;
      }

      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        sub_10177D03C();
      }
    }

    else
    {
      v10 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        sub_10177D164();
      }
    }

    v7 = 0;
    goto LABEL_21;
  }

  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_10177D128();
  }

  return 0;
}

void sub_100762C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100762CF8(uint64_t a1, const char *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v31 = 0;
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v31 = *(a1 + 56);
  }

  ctu::path_join_impl();
  v29 = 0;
  theDict = 0;
  (*(**(a1 + 64) + 152))(&theDict);
  v4 = theDict;
  if (theDict)
  {
    if (a2[23] >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    ctu::cf::MakeCFString::MakeCFString(key, v5);
    Value = CFDictionaryGetValue(v4, *key);
    v7 = Value;
    LODWORD(v28) = 0;
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      if (v8 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&v28, v7, v9);
      }
    }

    v10 = v28;
    ctu::cf::MakeCFString::~MakeCFString(key);
    v11 = v10 + 1;
    if ((v10 + 1) >= 5)
    {
      v12 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (a2[23] >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        *key = 136446210;
        *&key[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Forbidden-rety-count has reached maximum for: %{public}s", key, 0xCu);
      }

      v11 = 5;
    }

    v14 = kCFAllocatorDefault;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
    v16 = v29;
    v29 = MutableCopy;
    *key = v16;
    sub_1000296E0(key);
  }

  else
  {
    v14 = kCFAllocatorDefault;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v18 = v29;
      v29 = Mutable;
      *key = v18;
      sub_1000296E0(key);
    }

    v11 = 1;
  }

  sub_10001021C(&theDict);
  theDict = 0;
  *key = v11;
  v19 = CFNumberCreate(v14, kCFNumberLongLongType, key);
  if (v19)
  {
    theDict = v19;
    *key = 0;
    sub_100029A48(key);
    v20 = theDict;
  }

  else
  {
    v20 = 0;
  }

  v28 = v20;
  theDict = 0;
  sub_100029A48(&theDict);
  v21 = v29;
  if (a2[23] >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(key, v22);
  CFDictionarySetValue(v21, *key, v20);
  ctu::cf::MakeCFString::~MakeCFString(key);
  v23 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v24 = a2;
    }

    else
    {
      v24 = *a2;
    }

    *key = 136446466;
    *&key[4] = v24;
    v34 = 1024;
    LODWORD(v35) = v11;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Storing forbidden-rety-count for: %{public}s as: %u", key, 0x12u);
  }

  if (((*(**(a1 + 64) + 184))(*(a1 + 64), __p, v29, 0) & 1) == 0)
  {
    v25 = *(*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = __p;
      if (v31 < 0)
      {
        v26 = __p[0];
      }

      if (a2[23] >= 0)
      {
        v27 = a2;
      }

      else
      {
        v27 = *a2;
      }

      *key = 136446466;
      *&key[4] = v26;
      v34 = 2082;
      v35 = v27;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to store forbidden count to folder %{public}s for server: [%{public}s]", key, 0x16u);
    }
  }

  sub_100029A48(&v28);
  sub_1000296E0(&v29);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10076315C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, __int16 a18, char a19, char a20)
{
  sub_10001021C(&a17);
  sub_1000296E0(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1007631F4(uint64_t a1, uint64_t a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *__p = *(a1 + 40);
    v14 = *(a1 + 56);
  }

  ctu::path_join_impl();
  v12 = 0;
  (*(**(a1 + 64) + 152))(&v12);
  v4 = v12;
  if (v12)
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    ctu::cf::MakeCFString::MakeCFString(&key, v5);
    Value = CFDictionaryGetValue(v4, key);
    v7 = Value;
    v15 = 0;
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      if (v8 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&v15, v7, v9);
        v7 = v15 > 4;
      }

      else
      {
        v7 = 0;
      }
    }

    ctu::cf::MakeCFString::~MakeCFString(&key);
  }

  else
  {
    v7 = 0;
  }

  sub_10001021C(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

void sub_100763330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10001021C(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100763370(uint64_t a1, std::string::size_type a2)
{
  v30 = &v30;
  v31 = &v30;
  v32 = 0;
  v4 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 16));
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = *(a1 + 32);
    v28 = *(a1 + 24);
    v29 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100A9C4F8(&v28, (a1 + 40), v37);
    if ((v37[23] & 0x80u) == 0)
    {
      v8 = v37;
    }

    else
    {
      v8 = *v37;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Attempting to find %{public}s in: %{public}s", &buf, 0x16u);
    if (v37[23] < 0)
    {
      operator delete(*v37);
    }

    if (v29)
    {
      sub_100004A34(v29);
    }
  }

  v9 = (a1 + 40);
  v10 = (*(**(a1 + 64) + 96))(*(a1 + 64), a1 + 40, &v30, 1);
  if (v10)
  {
    v11 = *v4;
    v12 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
    v13 = 0;
    if (v12)
    {
      if (*(a1 + 63) < 0)
      {
        v9 = *v9;
      }

      *v37 = 136446466;
      *&v37[4] = v9;
      *&v37[12] = 2048;
      *&v37[14] = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Failed to gather contents of: %{public}s, error: %zu", v37, 0x16u);
      v13 = 0;
    }
  }

  else
  {
    memset(v37, 0, sizeof(v37));
    for (i = v31; i != &v30; i = i[1])
    {
      ctu::basename();
      sub_1000D1054(v37, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    v15 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000D1184(&buf, *v37, *&v37[8], ", ", 2uLL);
      v16 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
      *(__dst.__r_.__value_.__r.__words + 4) = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Available files/dirs: %{public}s", &__dst, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    v17 = v31;
    if (v31 == &v30)
    {
LABEL_62:
      v13 = 0;
    }

    else
    {
      while (1)
      {
        memset(&buf, 0, sizeof(buf));
        if (*(v17 + 39) < 0)
        {
          sub_100005F2C(&buf, v17[2], v17[3]);
        }

        else
        {
          buf = *(v17 + 2);
        }

        v18 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        if ((*(**(a1 + 64) + 224))(*(a1 + 64), v18))
        {
          memset(&__dst, 0, sizeof(__dst));
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = buf;
          }

          ctu::path_join_impl();
          if ((*(**(a1 + 64) + 88))(*(a1 + 64), &__dst))
          {
            v20 = *v4;
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(a1 + 32);
              v24 = *(a1 + 24);
              v25 = v21;
              if (v21)
              {
                atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              sub_100A9C4F8(&v24, &__dst, __p);
              if (v27 >= 0)
              {
                v22 = __p;
              }

              else
              {
                v22 = __p[0];
              }

              *v33 = 136446210;
              v34 = v22;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Server was provisioned: %{public}s", v33, 0xCu);
              if (v27 < 0)
              {
                operator delete(__p[0]);
              }

              if (v25)
              {
                sub_100004A34(v25);
              }
            }

            v19 = 1;
          }

          else
          {
            v19 = 0;
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v19 = 12;
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v19 != 12 && v19)
        {
          break;
        }

        v17 = v17[1];
        if (v17 == &v30)
        {
          goto LABEL_62;
        }
      }

      v13 = 1;
    }

    buf.__r_.__value_.__r.__words[0] = v37;
    sub_1000087B4(&buf);
  }

  sub_10042E114(&v30);
  return v13;
}

void sub_100763898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  a30 = (v35 - 128);
  sub_1000087B4(&a30);
  sub_10042E114(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_100763934(uint64_t a1)
{
  v2 = sub_100A2B1D8();
  sub_10000501C(__p, v2);
  v3 = sub_100763370(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_100763990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007639AC(uint64_t a1)
{
  v2 = sub_1006491D4();
  sub_10000501C(__p, v2);
  v3 = sub_100763370(a1, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_100763A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100763A24(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a1 + 32) = 1;
  }

  v5 = *(a2 + 40);
  v6 = *(a2 + 56);
  *(a1 + 64) = 0;
  v7 = (a1 + 64);
  *(a1 + 56) = v6;
  *(a1 + 40) = v5;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_100465C84(v7, a2 + 64);
    *(a1 + 112) = 1;
  }

  *(a1 + 120) = 0;
  *(a1 + 648) = 0;
  if (*(a2 + 648) == 1)
  {
    sub_100763D98(a1 + 120, (a2 + 120));
    *(a1 + 648) = 1;
  }

  sub_10076400C(a1 + 656, (a2 + 656));
  *(a1 + 720) = 0;
  *(a1 + 1168) = 0;
  if (*(a2 + 1168) == 1)
  {
    v8 = *(a2 + 720);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 720) = v8;
    *(a1 + 744) = 0;
    *(a1 + 832) = 0;
    if (*(a2 + 832) == 1)
    {
      v9 = *(a2 + 744);
      *(a1 + 760) = *(a2 + 760);
      *(a1 + 744) = v9;
      *(a2 + 760) = 0;
      *(a2 + 752) = 0;
      *(a2 + 744) = 0;
      v10 = *(a2 + 768);
      *(a1 + 784) = *(a2 + 784);
      *(a1 + 768) = v10;
      *(a2 + 784) = 0;
      *(a2 + 776) = 0;
      *(a2 + 768) = 0;
      v11 = *(a2 + 792);
      *(a1 + 808) = *(a2 + 808);
      *(a1 + 792) = v11;
      *(a2 + 808) = 0;
      *(a2 + 800) = 0;
      *(a2 + 792) = 0;
      v12 = *(a2 + 816);
      *(a1 + 824) = *(a2 + 824);
      *(a1 + 816) = v12;
      *(a1 + 832) = 1;
    }

    *(a1 + 840) = 0;
    *(a1 + 976) = 0;
    if (*(a2 + 976) == 1)
    {
      v13 = *(a2 + 840);
      *(a1 + 856) = *(a2 + 856);
      *(a1 + 840) = v13;
      v14 = *(a2 + 864);
      *(a1 + 880) = *(a2 + 880);
      *(a1 + 864) = v14;
      *(a2 + 872) = 0u;
      *(a2 + 864) = 0;
      v15 = *(a2 + 888);
      *(a1 + 904) = *(a2 + 904);
      *(a1 + 888) = v15;
      *(a2 + 896) = 0u;
      *(a2 + 888) = 0;
      v16 = *(a2 + 912);
      *(a1 + 928) = *(a2 + 928);
      *(a1 + 912) = v16;
      *(a2 + 928) = 0;
      *(a2 + 912) = 0u;
      v17 = *(a2 + 936);
      *(a1 + 952) = *(a2 + 952);
      *(a1 + 936) = v17;
      *(a2 + 952) = 0;
      *(a2 + 936) = 0u;
      *(a1 + 960) = *(a2 + 960);
      *(a1 + 976) = 1;
    }

    *(a1 + 984) = 0;
    *(a1 + 1080) = 0;
    if (*(a2 + 1080) == 1)
    {
      v18 = *(a2 + 984);
      v19 = *(a2 + 1000);
      *(a1 + 1016) = *(a2 + 1016);
      *(a1 + 984) = v18;
      *(a1 + 1000) = v19;
      v20 = *(a2 + 1024);
      *(a1 + 1040) = *(a2 + 1040);
      *(a1 + 1024) = v20;
      *(a2 + 1040) = 0;
      *(a2 + 1032) = 0;
      *(a2 + 1024) = 0;
      *(a1 + 1048) = 0;
      *(a1 + 1072) = 0;
      if (*(a2 + 1072) == 1)
      {
        v21 = *(a2 + 1048);
        *(a1 + 1064) = *(a2 + 1064);
        *(a1 + 1048) = v21;
        *(a2 + 1064) = 0;
        *(a2 + 1056) = 0;
        *(a2 + 1048) = 0;
        *(a1 + 1072) = 1;
      }

      *(a1 + 1080) = 1;
    }

    *(a1 + 1088) = 0;
    *(a1 + 1128) = 0;
    if (*(a2 + 1128) == 1)
    {
      v22 = *(a2 + 1088);
      *(a1 + 1104) = *(a2 + 1104);
      *(a1 + 1088) = v22;
      *(a2 + 1104) = 0;
      *(a2 + 1096) = 0;
      *(a2 + 1088) = 0;
      *(a1 + 1112) = *(a2 + 1112);
      *(a1 + 1128) = 1;
    }

    *(a1 + 1136) = 0;
    *(a1 + 1160) = 0;
    if (*(a2 + 1160) == 1)
    {
      v23 = *(a2 + 1136);
      *(a1 + 1152) = *(a2 + 1152);
      *(a1 + 1136) = v23;
      *(a2 + 1152) = 0;
      *(a2 + 1144) = 0;
      *(a2 + 1136) = 0;
      *(a1 + 1160) = 1;
    }

    *(a1 + 1168) = 1;
  }

  v24 = *(a2 + 1176);
  v25 = *(a2 + 1208);
  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1208) = v25;
  *(a1 + 1176) = v24;
  return a1;
}

__n128 sub_100763D98(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v3;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(a1 + 48) = 1;
  }

  *(a1 + 56) = *(a2 + 7);
  v4 = a2 + 4;
  v5 = *(a2 + 8);
  *(a1 + 64) = v5;
  v6 = a1 + 64;
  v7 = *(a2 + 9);
  *(a1 + 72) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 7) = v4;
    *v4 = 0;
    *(a2 + 9) = 0;
  }

  else
  {
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 10);
  v8 = a2 + 11;
  v9 = *(a2 + 11);
  *(a1 + 88) = v9;
  v10 = a1 + 88;
  v11 = *(a2 + 12);
  *(a1 + 96) = v11;
  if (v11)
  {
    *(v9 + 16) = v10;
    *(a2 + 10) = v8;
    *v8 = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    *(a1 + 80) = v10;
  }

  v12 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 15);
  *(a1 + 104) = v12;
  a2[7] = 0uLL;
  *(a2 + 13) = 0;
  v13 = a2[8];
  *(a1 + 144) = *(a2 + 18);
  *(a1 + 128) = v13;
  *(a2 + 136) = 0uLL;
  *(a2 + 16) = 0;
  v14 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v14;
  v15 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v15;
  a2[11] = 0uLL;
  *(a2 + 24) = 0;
  v16 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 27);
  *(a1 + 200) = v16;
  *(a2 + 200) = 0uLL;
  *(a2 + 27) = 0;
  v17 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 224) = v17;
  a2[14] = 0uLL;
  *(a2 + 30) = 0;
  v18 = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a1 + 248) = v18;
  *(a2 + 248) = 0uLL;
  *(a2 + 33) = 0;
  v19 = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a1 + 272) = v19;
  a2[17] = 0uLL;
  *(a2 + 36) = 0;
  v20 = *(a2 + 296);
  *(a1 + 312) = *(a2 + 39);
  *(a1 + 296) = v20;
  *(a2 + 296) = 0uLL;
  *(a2 + 39) = 0;
  v21 = a2[20];
  *(a1 + 336) = *(a2 + 42);
  *(a1 + 320) = v21;
  a2[20] = 0uLL;
  *(a2 + 42) = 0;
  v22 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *(a1 + 344) = v22;
  *(a2 + 344) = 0uLL;
  *(a2 + 45) = 0;
  v23 = a2[23];
  *(a1 + 384) = *(a2 + 48);
  *(a1 + 368) = v23;
  a2[23] = 0uLL;
  *(a2 + 48) = 0;
  v24 = *(a2 + 392);
  *(a1 + 408) = *(a2 + 51);
  *(a1 + 392) = v24;
  *(a2 + 392) = 0uLL;
  *(a2 + 51) = 0;
  v25 = a2[26];
  *(a1 + 432) = *(a2 + 54);
  *(a1 + 416) = v25;
  a2[26] = 0uLL;
  *(a2 + 54) = 0;
  v26 = *(a2 + 440);
  *(a1 + 456) = *(a2 + 57);
  *(a1 + 440) = v26;
  *(a2 + 440) = 0uLL;
  *(a2 + 57) = 0;
  v27 = a2[29];
  *(a1 + 480) = *(a2 + 60);
  *(a1 + 464) = v27;
  a2[29] = 0uLL;
  *(a2 + 60) = 0;
  result = *(a2 + 488);
  v29 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 260);
  *(a1 + 488) = result;
  *(a1 + 504) = v29;
  return result;
}

uint64_t sub_10076400C(uint64_t result, __int128 *a2)
{
  *result = 0;
  *(result + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v2 = *a2;
    *(result + 11) = *(a2 + 11);
    *result = v2;
    *(result + 32) = *(a2 + 4);
    v3 = a2 + 5;
    v4 = *(a2 + 5);
    *(result + 40) = v4;
    v5 = result + 40;
    v6 = *(a2 + 6);
    *(result + 48) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *(a2 + 4) = v3;
      *v3 = 0;
      *(a2 + 6) = 0;
    }

    else
    {
      *(result + 32) = v5;
    }

    *(result + 56) = 1;
  }

  return result;
}

uint64_t *sub_100764124(uint64_t a1, uint64_t **a2, unint64_t a3)
{
  v3 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v5 = *a2;
      if (sub_1000068BC(*a2 + 2, (a1 + 16)) >= 1)
      {
        v7 = *v5;
        v6 = v5[1];
        *(v7 + 8) = v6;
        *v6 = v7;
        v8 = *v3;
        *(v8 + 8) = v5;
        *v5 = v8;
        *v3 = v5;
        v5[1] = v3;
        return v5;
      }
    }

    else
    {
      v10 = a3 >> 1;
      v11 = (a3 >> 1) + 1;
      v12 = a1;
      do
      {
        v12 = *(v12 + 8);
        --v11;
      }

      while (v11 > 1);
      v13 = sub_100764124(a1, v12, a3 >> 1);
      v3 = sub_100764124(v12, a2, a3 - v10);
      if (sub_1000068BC(v3 + 2, v13 + 16) < 1)
      {
        v19 = v13[1];
        i = v3;
        v3 = v13;
      }

      else
      {
          ;
        }

        v15 = *i;
        v16 = *(*i + 8);
        v17 = *v3;
        *(v17 + 8) = v16;
        *v16 = v17;
        v18 = *v13;
        v19 = v13[1];
        *(v18 + 8) = v3;
        *v3 = v18;
        *v13 = v15;
        v15[1] = v13;
      }

      if (v19 != i && i != a2)
      {
        v20 = i;
        do
        {
          if (sub_1000068BC(i + 2, (v19 + 16)) < 1)
          {
            v19 = *(v19 + 8);
          }

          else
          {
              ;
            }

            v22 = *j;
            v23 = *(*j + 8);
            v24 = *i;
            v24[1] = v23;
            *v23 = v24;
            if (v20 == i)
            {
              v20 = j;
            }

            v26 = *v19;
            v25 = *(v19 + 8);
            *(v26 + 8) = i;
            *i = v26;
            *v19 = v22;
            v22[1] = v19;
            v19 = v25;
            i = j;
          }
        }

        while (v19 != v20 && i != a2);
      }
    }
  }

  return v3;
}

void CSIRadioModulePrivate::ModuleResetInvoker::~ModuleResetInvoker(CSIRadioModulePrivate::ModuleResetInvoker *this)
{
  *this = off_101E78CA8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = off_101E78CA8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void CSIRadioModulePrivate::ModuleResetInvoker::reset(CSIRadioModulePrivate::ModuleResetInvoker *this, const char *a2, uint64_t a3)
{
  v4 = *(this + 2);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(this + 1);
      if (v9)
      {
        (*(*v9 + 160))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t CSIRadioModulePrivate::CSIRadioModulePrivate(uint64_t a1, uint64_t *a2)
{
  *a1 = off_101E2A308;
  *(a1 + 8) = off_101EAA468;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = off_101E65D98;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, LogGroupName);
  ctu::OsLogLogger::OsLogLogger(v12, &v11);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v12);
  ctu::OsLogLogger::~OsLogLogger(v12);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101E78CD8;
  *(a1 + 8) = off_101E78F40;
  *(a1 + 16) = off_101E78F68;
  *(a1 + 48) = dispatch_queue_create("CSIRadioModulePrivate", 0);
  ATCSMutex::ATCSMutex((a1 + 56), "radio module lock");
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  sub_10000501C(&__p, "RadioModule");
  v5 = *(a1 + 48);
  v8 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::RestModule::RestModule();
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 116) = 0;
  v6 = *a2;
  *a2 = 0;
  *(a1 + 120) = v6;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 244) = 1;
  *(a1 + 272) = 0;
  *(a1 + 280) = 8;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 332) = 0;
  *(a1 + 340) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 344) = 0;
  *(a1 + 368) = 0;
  ATCSCondition::ATCSCondition((a1 + 376), "state change wait");
  sub_1005A8414(a1 + 384);
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  sub_100983C74((a1 + 424));
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 492) = 0u;
  *(a1 + 508) = 2500;
  *(a1 + 512) = 1;
  *(a1 + 568) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  ATCSTimer::ATCSTimer((a1 + 576));
  sub_10000501C((a1 + 632), "com.apple.CommCenter.RadioNotReady");
  *(a1 + 656) = "GsmRadioModule::fPreviousBootUptime";
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = a1 + 712;
  *(a1 + 720) = a1 + 712;
  *(a1 + 728) = 0;
  *(a1 + 736) = a1 + 736;
  *(a1 + 744) = a1 + 736;
  *(a1 + 752) = 0;
  *(a1 + 760) = a1 + 760;
  *(a1 + 768) = a1 + 760;
  *(a1 + 808) = 0;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 0u;
  return a1;
}

void sub_100764780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, char a19)
{
  ATCSTimer::~ATCSTimer((v19 + 576));
  v22 = *(v19 + 568);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(v19 + 552);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v19 + 536);
  if (v24)
  {
    dispatch_group_leave(v24);
    v25 = *(v19 + 536);
    if (v25)
    {
      dispatch_release(v25);
    }
  }

  v26 = *(v19 + 528);
  if (v26)
  {
    dispatch_group_leave(v26);
    v27 = *(v19 + 528);
    if (v27)
    {
      dispatch_release(v27);
    }
  }

  v28 = *(v19 + 496);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (*(v19 + 487) < 0)
  {
    operator delete(*v20);
  }

  sub_100767398(v19 + 424);
  if (*(v19 + 407) < 0)
  {
    operator delete(*(v19 + 384));
  }

  ATCSCondition::~ATCSCondition((v19 + 376));
  v29 = *(v19 + 352);
  if (v29)
  {
    sub_100004A34(v29);
  }

  sub_1003336BC(v19 + 288);
  sub_1007673E8(v19 + 248);
  sub_100767468(v19 + 208);
  sub_1002FED80(v19 + 168);
  sub_10000FF50(v19 + 128);
  v30 = *(v19 + 120);
  *(v19 + 120) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  v31 = *(v19 + 104);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v19 + 88);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *(v19 + 72);
  if (v33)
  {
    sub_100004A34(v33);
  }

  ATCSMutex::~ATCSMutex((v19 + 56));
  v34 = *(v19 + 48);
  if (v34)
  {
    dispatch_release(v34);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 40));
  v35 = *(v19 + 32);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void CSIRadioModulePrivate::~CSIRadioModulePrivate(CSIRadioModulePrivate *this)
{
  *this = off_101E78CD8;
  *(this + 1) = off_101E78F40;
  *(this + 2) = off_101E78F68;
  v2 = *(this + 101);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 99);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1004EDC58(this + 95);
  sub_100664770(this + 92);
  sub_100674700(this + 89);
  v4 = *(this + 88);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 86);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 84);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*(this + 655) < 0)
  {
    operator delete(*(this + 79));
  }

  ATCSTimer::~ATCSTimer((this + 576));
  v7 = *(this + 71);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 69);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 67);
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = *(this + 67);
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  v11 = *(this + 66);
  if (v11)
  {
    dispatch_group_leave(v11);
    v12 = *(this + 66);
    if (v12)
    {
      dispatch_release(v12);
    }
  }

  v13 = *(this + 62);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (*(this + 487) < 0)
  {
    operator delete(*(this + 58));
  }

  sub_100083940(this + 57);
  *(this + 53) = off_101E2BFC0;
  sub_10004A724(this + 55);
  if (*(this + 407) < 0)
  {
    operator delete(*(this + 48));
  }

  ATCSCondition::~ATCSCondition((this + 376));
  v14 = *(this + 44);
  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_1003336BC(this + 288);
  sub_1007673E8(this + 248);
  sub_100767468(this + 208);
  sub_1002FED80(this + 168);
  sub_10000FF50(this + 128);
  v15 = *(this + 15);
  *(this + 15) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *(this + 13);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(this + 11);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(this + 9);
  if (v18)
  {
    sub_100004A34(v18);
  }

  ATCSMutex::~ATCSMutex((this + 56));
  v19 = *(this + 6);
  if (v19)
  {
    dispatch_release(v19);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  v20 = *(this + 4);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();

  TMKXPCServer.shutdown()();
}

void sub_100764F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100764FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (!a16)
  {
    JUMPOUT(0x100764FA4);
  }

  JUMPOUT(0x100764FA0);
}

uint64_t CSIRadioModulePrivate::getOsVersion@<X0>(CSIRadioModulePrivate *this@<X0>, uint64_t a2@<X8>)
{
  ATCSMutex::lock((this + 56));
  if (*(this + 407) < 0)
  {
    sub_100005F2C(a2, *(this + 48), *(this + 49));
  }

  else
  {
    *a2 = *(this + 24);
    *(a2 + 16) = *(this + 50);
  }

  return ATCSMutex::unlock((this + 56));
}

uint64_t CSIRadioModulePrivate::startTracing_nl(CSIRadioModulePrivate *this)
{
  result = *(this + 61);
  if (result)
  {
    sub_100765064(result, this, CSIRadioModulePrivate::handleTraceStart, 0);
  }

  return result;
}

uint64_t CSIRadioModulePrivate::handleTraceStart(CSIRadioModulePrivate *this, int a2)
{
  ATCSMutex::lock((this + 56));
  v4 = *(this + 69);
  *(this + 34) = 0u;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (a2)
  {
    v5 = *(this + 91);
    if (v5 - 1 >= 3)
    {
      v8 = *(this + 5);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return ATCSMutex::unlock((this + 56));
      }

      v12 = 136315138;
      v13 = CSIRadioModulePrivate::stateAsString(v5);
      v9 = "#I State is %s, skipping start";
      goto LABEL_14;
    }

    (*(**(this + 8) + 48))(*(this + 8));
    if (*(this + 19))
    {
      v6 = *(this + 5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Failed to enter low power before, trying again", &v12, 2u);
      }

      v7 = *(this + 91);
      if (v7 == 1)
      {
        CSIRadioModulePrivate::enterLowPowerInternal(this);
        return ATCSMutex::unlock((this + 56));
      }

      v8 = *(this + 5);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        return ATCSMutex::unlock((this + 56));
      }

      v10 = CSIRadioModulePrivate::stateAsString(v7);
      v12 = 136315138;
      v13 = v10;
      v9 = "#I State is %s, trying again later";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, &v12, 0xCu);
    }
  }

  return ATCSMutex::unlock((this + 56));
}

BOOL CSIRadioModulePrivate::enterLowPowerInternal(CSIRadioModulePrivate *this)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger("(fLock).isLocked()");
  }

  CSIRadioModulePrivate::changeState(this, 2);
  ATCSMutex::unlock((this + 56));
  sub_100080308(this + 424, 3, 0, 0, 0);
  (*(*this + 552))(this);
  (*(*this + 560))(this);
  ATCSMutex::lock((this + 56));
  v2 = *(this + 91);
  if (v2 == 2)
  {
    CSIRadioModulePrivate::changeState(this, 3);
    CSIRadioModulePrivate::invokeAndDeleteCompletionInfo(this, 1);
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Completed entering low power", &v6, 2u);
    }
  }

  else
  {
    v4 = *(this + 5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = CSIRadioModulePrivate::stateAsString(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Failed entering low power due to state change to %s", &v6, 0xCu);
    }

    CSIRadioModulePrivate::invokeAndDeleteCompletionInfo(this, 0);
  }

  return v2 == 2;
}

void CSIRadioModulePrivate::resetCleanup_nl(void *a1, char *a2, int a3, uint64_t a4, uint64_t ***a5)
{
  v9 = a1[5];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a5 + 23) < 0)
    {
      a5 = *a5;
    }

    v10 = CSIRadioModulePrivate::stateAsString(*(a1 + 91));
    *buf = 136446978;
    *&buf[4] = a5;
    *&buf[12] = 2080;
    *&buf[14] = a2;
    *&buf[22] = 1024;
    *&buf[24] = a3;
    *&buf[28] = 2080;
    *&buf[30] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Reset requested at %{public}s: %s, with logs = %d, rm state: %s", buf, 0x26u);
  }

  v11 = *(a1 + 91);
  v12 = v11 >= 7;
  v13 = v11 - 7;
  if (!v12)
  {
LABEL_6:
    memset(buf, 0, sizeof(buf));
    v14 = a1[5];
    v15 = os_signpost_id_generate(v14);
    if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = a1[5];
      if (os_signpost_enabled(v16))
      {
        *v35 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v15, "BasebandReset", "", v35, 2u);
      }
    }

    *v35 = off_101E79510;
    v36 = v35;
    *buf = v15;
    *&buf[8] = os_retain(v14);
    sub_1000148FC(&buf[16], v35);
    sub_10001499C(v35);
    sub_10000501C(&__p, "BasebandReset");
    v32[0] = *buf;
    v32[1] = *&buf[8];
    sub_1000148FC(&v33, &buf[16]);
    *buf = 0;
    *&buf[8] = 0;
    sub_100014A28(&buf[16]);
    Registry::createXpcJetsamAssertion();
    v17 = *v35;
    *v35 = 0;
    *&v35[8] = 0;
    v18 = a1[69];
    *(a1 + 34) = v17;
    if (v18)
    {
      sub_100004A34(v18);
      if (*&v35[8])
      {
        sub_100004A34(*&v35[8]);
      }
    }

    sub_100014DA8(v32);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    (*(*a1 + 584))(a1, a1 + 79);
    v19 = sub_10000501C(v35, a2);
    v20 = std::string::insert(v19, 0, "modem reset: ", 0xDuLL);
    v21 = v20->__r_.__value_.__r.__words[0];
    v31[0] = v20->__r_.__value_.__l.__size_;
    *(v31 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v23 = (a1 + 58);
    if (*(a1 + 487) < 0)
    {
      operator delete(*v23);
    }

    v24 = v31[0];
    a1[58] = v21;
    a1[59] = v24;
    *(a1 + 479) = *(v31 + 7);
    *(a1 + 487) = v22;
    if (v35[23] < 0)
    {
      operator delete(*v35);
      if ((*(a1 + 487) & 0x80) == 0)
      {
        goto LABEL_18;
      }
    }

    else if ((v22 & 0x80) == 0)
    {
LABEL_18:
      (*(*a1 + 528))(a1, v23);
      ATCSMutex::unlock((a1 + 7));
      if (a3)
      {
        CSIRadioModulePrivate::resetInternalhandleStopComplete(a1);
      }

      v25 = a1[5];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 136315138;
        *&v35[4] = a2;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Silent Reset Requested: %s", v35, 0xCu);
      }

      v26 = a1[61];
      if (v26)
      {
        sub_100765B20(v26, a1, CSIRadioModulePrivate::resetInternalhandleStopComplete, 0);
      }

      ATCSMutex::lock((a1 + 7));
      sub_100014DA8(buf);
      return;
    }

    v23 = *v23;
    goto LABEL_18;
  }

  if (v13 > 1)
  {
    __TUAssertTrigger("false");
    goto LABEL_6;
  }

  v27 = a1[5];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Ignoring reset request", buf, 2u);
  }

  v28 = a1[66];
  a1[66] = 0;
  if (v28)
  {
    dispatch_group_leave(v28);
    dispatch_release(v28);
  }
}

void CSIRadioModulePrivate::resetInternalhandleStopComplete(NSObject **this)
{
  ATCSMutex::lock((this + 7));
  ((*this)[74].isa)(this);
  v2 = this[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIRadioModulePrivate::stateAsString(*(this + 91));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Reset in progress. Current state is '%s'", &v4, 0xCu);
  }

  if ((*(this + 91) | 2) != 7)
  {
    __TUAssertTrigger("getState() == kStateResetTriggered || getState() == kStatePoweringOff");
  }

  operator new();
}

void sub_100765AF0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void CSIRadioModulePrivate::resetInternal(CSIRadioModulePrivate *this, const char *a2)
{
  if ((ATCSMutex::isLocked((this + 56)) & 1) == 0)
  {
    __TUAssertTrigger("(fLock).isLocked()");
  }

  CSIRadioModulePrivate::changeState(this, 5);
  ++*(this + 104);
  (*(**(this + 8) + 32))(*(this + 8), 0);
  v3 = *(this + 5);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband is reset, turning off Packet Interfaces", &v5, 2u);
  }

  v5 = 0;
  v6 = 0;
  sub_10020A8B4(v4, &v5);
  if (v5)
  {
    (*(*v5 + 480))(v5, 0, 0);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100765D0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CSIRadioModulePrivate::completeDumpState(uint64_t a1, std::string *a2)
{
  (*(*a1 + 488))(a1);
  memset(&v37, 0, sizeof(v37));
  std::string::basic_string(&v37, a2, 0, 0xFFuLL, buf);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I --------------  STATE DUMP --------------------", buf, 2u);
    v4 = *(a1 + 40);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = &v37;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v37.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Reason: %s", buf, 0xCu);
  }

  (*(*a1 + 496))(a1, a2);
  sub_1001449DC(a1 + 96);
  sub_10014BF94(&event::dumpState[3]);
  v6 = sub_100081A98(&event::dumpState[1]);
  sub_100081ADC(v6);
  (*(**(a1 + 64) + 24))(*(a1 + 64));
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = asStringBool(*(a1 + 200));
    *buf = 136315138;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fBasebandFirmwareDead=%s", buf, 0xCu);
    v7 = *(a1 + 40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (*(*a1 + 576))(a1);
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DormancyMask=%x", buf, 8u);
    v7 = *(a1 + 40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CSIBOOLAsString(*(a1 + 664) != 0);
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fAirplaneModeAssertionForBrickMode=%s", buf, 0xCu);
    v7 = *(a1 + 40);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CSIBOOLAsString(*(a1 + 680) != 0);
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I fAirplaneModeAssertionForBreadMode=%s", buf, 0xCu);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 784));
  v13 = ServiceMap;
  if (v14 < 0)
  {
    v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
    v16 = 5381;
    do
    {
      v14 = v16;
      v17 = *v15++;
      v16 = (33 * v16) ^ v17;
    }

    while (v17);
  }

  std::mutex::lock(ServiceMap);
  *buf = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, buf);
  if (v18)
  {
    v20 = v18[3];
    v19 = v18[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v13);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v19);
      v21 = 0;
      if (!v20)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v13);
  v19 = 0;
  v21 = 1;
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_24:
  v22 = *(a1 + 40);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = (*(*v20 + 64))(v20);
    *buf = 134217984;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I CommCenter starts since boot=%zu", buf, 0xCu);
  }

LABEL_26:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    Registry::getXpcJetsamAssertionManager(&__p, *(a1 + 784));
    ctu::XpcJetsamAssertion::dumpState(buf, __p);
    if (v40 >= 0)
    {
      v25 = buf;
    }

    else
    {
      v25 = *buf;
    }

    *v43 = 136446210;
    v44 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v43, 0xCu);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(*buf);
    }

    if (v35)
    {
      sub_100004A34(v35);
    }

    v24 = *(a1 + 40);
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I **************************", buf, 2u);
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  (*(*a1 + 504))(a1, a2, &__p);
  v26 = *(a1 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v28 = a2->__r_.__value_.__r.__words[0];
    Uptime = CSIRadioModulePrivate::getUptime(a1);
    if (v27 >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = v28;
    }

    v31 = *(a1 + 416);
    p_p = &__p;
    if (v36 < 0)
    {
      p_p = __p;
    }

    *buf = 136315906;
    *&buf[4] = v30;
    *&buf[12] = 1024;
    *&buf[14] = Uptime;
    v39 = 1024;
    v40 = v31;
    v41 = 2080;
    v42 = p_p;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I reset: reason=%s;uptime=%d;count=%d;%s", buf, 0x22u);
  }

  v33 = *(a1 + 792);
  *buf = *(a1 + 784);
  *&buf[8] = v33;
  if (v33)
  {
    atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10083B6CC(buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  sleep(1u);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }
}

void sub_10076638C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIRadioModulePrivate::getUptime(CSIRadioModulePrivate *this)
{
  ATCSMutex::lock((this + 56));
  v2 = CSISystemElapsedTimeSecs();
  v3 = *(this + 102);
  v4 = *(this + 103);
  ATCSMutex::unlock((this + 56));
  return (v2 - v3 + v4);
}

void CSIRadioModulePrivate::requestDumpMemory(CSIRadioModulePrivate *this, const char *a2)
{
  TMKXPCServer.shutdown()();
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "CommCenterMemory";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I memory to be dumped into %s", &v4, 0xCu);
  }
}

uint64_t CSIRadioModulePrivate::inResetState(CSIRadioModulePrivate *this, uint64_t a2)
{
  v2 = *(this + 91);
  if (v2 >= 9)
  {
    sub_10177D254();
  }

  return (0x1E1u >> v2) & 1;
}

void CSIRadioModulePrivate::handleResetDPC(CSIRadioModulePrivate *this, void *a2)
{
  ATCSMutex::lock((this + 56));
  if (*(this + 91) == 5)
  {
    if (*(this + 160) != 1)
    {
      *(this + 102) = CSISystemElapsedTimeSecs();
      if (*(this + 103))
      {
        v3 = sub_10005D028();
        sub_10000501C(&__p, *(this + 82));
        v8 = 0;
        sub_1002D5E88(v3, &__p, &v8);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *(this + 103) = 0;
      }

      CSIRadioModulePrivate::changeState(this, 6);
      LODWORD(v4) = 1;
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *(this + 5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Back to back reset, ignoring reset", &__p, 2u);
    }
  }

  v4 = *(this + 66);
  *(this + 66) = 0;
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
    LODWORD(v4) = 0;
  }

LABEL_12:
  ATCSMutex::unlock((this + 56));
  if (v4)
  {
    (*(**(this + 8) + 56))(*(this + 8));
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Reset complete", &__p, 2u);
    }

    v7 = *(this + 66);
    *(this + 66) = 0;
    if (v7)
    {
      dispatch_group_leave(v7);
      dispatch_release(v7);
    }
  }
}

void sub_10076670C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  ATCSMutex::unlock((v16 + 56));
  _Unwind_Resume(a1);
}

void CSIRadioModulePrivate::createPowerAssertion_nl(uint64_t a1, uint64_t a2)
{
  sub_100DB9C84(a2, 0);
  v3 = *(a1 + 808);
  *(a1 + 800) = v4;
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void CSIRadioModulePrivate::releasePowerAssertion_nl(CSIRadioModulePrivate *this)
{
  v2 = *(this + 101);
  *(this + 50) = 0u;
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void CSIRadioModulePrivate::addReasonToLastDump(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v3 = *(a2 + 16);
  }

  operator new();
}

void CSIRadioModulePrivate::addReasonToLastDumpInternal_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 488);
  if (v2)
  {
    sub_10000501C(&v9, "CSILog");
    sub_10000501C(&v8, "comment");
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v7 = *(a2 + 16);
    }

    sub_1006C97E4(v2, &v9, &v8, __p, 0);
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Warning: Failed to add reason as TraceModule has not been setup yet.", v5, 2u);
  }
}

void sub_10076699C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v23 - 17) < 0)
  {
    operator delete(*(v23 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIRadioModulePrivate::enableTrace(uint64_t a1, uint64_t a2, int a3)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  if (a3)
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  sub_10000501C(v10, v5);
  sub_10000501C(__p, "enabled");
  v6 = (*(*a1 + 240))(a1, a2, __p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  return v6;
}

void sub_100766AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

uint64_t CSIRadioModulePrivate::setTraceProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 488);
  if (v4)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, *(a2 + 8));
    }

    else
    {
      *__dst = *a2;
      v13 = *(a2 + 16);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v10, *a3, *(a3 + 8));
    }

    else
    {
      *v10 = *a3;
      v11 = *(a3 + 16);
    }

    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v9 = *(a4 + 16);
    }

    sub_1006C97E4(v4, __dst, v10, __p, 1);
  }

  return 0;
}

void sub_100766BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIRadioModulePrivate::getTraceProperty(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *string = 0;
  v13 = 0;
  v14 = 0;
  v5 = *(a1 + 488);
  if (v5)
  {
    v6 = sub_1006C8B14(v5, a2, a3, string);
    if (v14 >= 0)
    {
      v7 = string;
    }

    else
    {
      v7 = *string;
    }
  }

  else
  {
    v6 = 0;
    v7 = string;
  }

  v10 = xpc_string_create(v7);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v9[0] = *a4;
  v9[1] = "kRadioTracePropertyValue";
  sub_10000F688(v9, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
  v10 = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*string);
  }

  return v6;
}

void sub_100766D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CSIRadioModulePrivate::queryTraceFullStatus(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(a1 + 488);
  if (v3)
  {
    sub_10000501C(__p, "status");
    sub_1006C8B14(v3, a2, __p, a3);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100766DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t CSIRadioModulePrivate::enableFastDormancySupport(CSIRadioModulePrivate *this, int a2, int a3)
{
  ATCSMutex::lock((this + 56));
  *(this + 512) = a2;
  if (a3)
  {
    v6 = sub_10005D028();
    sub_10000501C(&__p, "GsmRadioModule::kFastFastDormancySupportOn");
    v11 = *(this + 512);
    sub_100619254(v6, &__p, &v11);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v7 = (*(*this + 576))(this);
  if (!a2 || (v8 = *(this + 127), !v8) || (v9 = v7, !v7))
  {
    v8 = 0;
    v9 = 0;
  }

  (*(**(this + 15) + 64))(*(this + 15), v8, v9);
  return ATCSMutex::unlock((this + 56));
}

void sub_100766EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ATCSMutex::unlock((v15 + 56));
  _Unwind_Resume(a1);
}

void *CSIRadioModulePrivate::getLastTraceFileNamePrefix@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[61];
  if (!v2)
  {
    return sub_10000501C(a2, "");
  }

  if (*(v2 + 335) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 312), *(v2 + 320));
  }

  v3 = (v2 + 312);
  v4 = *v3;
  a2[2] = *(v3 + 2);
  *a2 = v4;
  return this;
}

uint64_t CSIRadioModulePrivate::setRadioLinkQualityMetric(uint64_t a1, uint64_t a2)
{
  ATCSMutex::lock((a1 + 56));
  CSIRadioModulePrivate::setRadioLinkQualityMetric_sync(a1, a2);
  return ATCSMutex::unlock((a1 + 56));
}

void CSIRadioModulePrivate::setRadioLinkQualityMetric_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    return;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = a2;
    LOWORD(v15[0]) = 2080;
    *(v15 + 2) = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Setting link quality to: %d (%s)", buf, 0x12u);
    v2 = *(a1 + 120);
  }

  (*(*v2 + 72))(v2, a2);
  WISPostSimpleMetricWithInteger();
  v13 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v13 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v13 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_11;
    }
  }

  if (xpc_get_type(v7) != &_xpc_type_dictionary)
  {
    v8 = xpc_null_create();
LABEL_11:
    v13 = v8;
    goto LABEL_12;
  }

  xpc_retain(v7);
LABEL_12:
  xpc_release(v7);
  v11 = xpc_string_create(abm::kSetLinkQualityMetricCommand);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  *buf = &v13;
  v15[0] = abm::kCTTxPowerCommandString;
  sub_10000F688(buf, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_int64_create(a2);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  *buf = &v13;
  v15[0] = abm::kCTTxPowerCommandData;
  sub_10000F688(buf, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  sub_10005B8C8(buf);
  (*(**buf + 424))(*buf, &v13);
  if (v15[0])
  {
    sub_100004A34(v15[0]);
  }

  xpc_release(v13);
}

void sub_100767244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, uint64_t a15, uint64_t a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIRadioModulePrivate::resetStoredLogs(CSIRadioModulePrivate *this)
{
  ATCSMutex::lock((this + 56));
  v2 = *(this + 61);
  if (v2)
  {
    sub_1006C7690(v2);
  }

  return ATCSMutex::unlock((this + 56));
}

uint64_t CSIRadioModulePrivate::handleCmasCampOnlyModeChanged(uint64_t a1, int a2)
{
  ATCSMutex::lock((a1 + 56));
  v4 = *(a1 + 328);
  if (v4 != a2 && v4 <= 1)
  {
    v7 = *(a1 + 240);
    BYTE5(v7) = v4 == 1;
    sub_100080280(a1 + 208, &v7);
  }

  return ATCSMutex::unlock((a1 + 56));
}

uint64_t sub_100767398(uint64_t a1)
{
  sub_100083940((a1 + 32));
  *a1 = off_101E2BFC0;
  sub_10004A724((a1 + 16));
  return a1;
}

uint64_t sub_1007673E8(uint64_t a1)
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

uint64_t sub_100767468(uint64_t a1)
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

void sub_100767560(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_100767634);
  __cxa_rethrow();
}

void sub_1007675A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007675F4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100767634(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100767690(result + 32, *(result + 40));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

void sub_100767690(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100767690(a1, *a2);
    sub_100767690(a1, a2[1]);
    sub_1007676EC((a2 + 4));

    operator delete(a2);
  }
}

void sub_1007676EC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_100767760(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E790B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1007677DC(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *a1 = off_101E78CA8;
    a1[1] = v4;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    *a1 = off_101E78CA8;
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void sub_100767860(uint64_t a1)
{
  v1 = **(a1 + 32);
  sub_100118C58(v1 + 116, v1 + 96);
  sub_100767AA0((v1 + 168), v1 + 96);
  sub_100767B04((v1 + 208), v1 + 96);
  v2 = sub_100767B68((v1 + 248), v1 + 96);
  if (capabilities::ct::supportsCMASCampOnlyMode(v2))
  {
    v7 = CSIRadioModulePrivate::handleCmasCampOnlyModeChanged;
    v8 = 0;
    sub_100768808(v1 + 328, v1 + 96, v1, &v7);
  }

  sub_10000501C(__p, "/cc/props/operating_mode_request");
  v7 = off_101E79348;
  v8 = v1 + 332;
  v9 = v1;
  v10 = &v7;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  Registry::createRestModuleOneTimeUseConnection(&v3, *(v1 + 784));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_10000501C(__p, "/cc/events/request_dump_state");
  v7 = off_101E793C8;
  v8 = v1;
  v10 = &v7;
  ctu::RestModule::observeEvent();
  sub_1000062D4(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/props/is_postponement_ticket_available");
  v7 = off_101E79448;
  v8 = v1 + 340;
  v9 = v1;
  v10 = &v7;
  ctu::RestModule::observeProperty();
  sub_1000062D4(&v7);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100767A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1000062D4(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100767AA0(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100767BCC(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_100767B04(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100767E48(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_100767B68(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100768320(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void *sub_100767BCC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E79128;
  v5[1] = v3;
  v5[3] = v5;
  sub_100300158(v5, a1);
  sub_1002FED80(v5);
  return a1;
}

uint64_t sub_100767CD0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E79128;
  a2[1] = v2;
  return result;
}

uint64_t sub_100767D04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100767D50(uint64_t *a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/baseband_firmware_dead");
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

void sub_100767E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void *sub_100767E48(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E791A8;
  v5[1] = v3;
  v5[3] = v5;
  sub_1007680B4(v5, a1);
  sub_100767468(v5);
  return a1;
}

uint64_t sub_100767F4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E791A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100767F80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100767FCC(uint64_t *a1, void *a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/props/radio_mode");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_100768070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1007680B4(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_100768314(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_100768320(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E79238;
  v5[1] = v3;
  v5[3] = v5;
  sub_10076859C(v5, a1);
  sub_1007673E8(v5);
  return a1;
}

uint64_t sub_100768424(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E79238;
  a2[1] = v2;
  return result;
}

uint64_t sub_100768458(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007684A4(uint64_t *a1, unsigned __int8 *a2)
{
  v8 = 0;
  v2 = *a2;
  v3 = asString();
  ctu::rest::detail::write_enum_string_value(v2, v3, v4);
  sub_10000501C(&__p, "/cc/props/baseband_operating_mode");
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

void sub_100768558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_10076859C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1007687FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1007688F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007689A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E792C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007689DC(void *a1, xpc_object_t *a2)
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

uint64_t sub_100768AD4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100768B94(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E79348;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100768BC4(uint64_t a1, xpc_object_t *a2)
{
  v4 = *(a1 + 8);
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    if (*(v4 + 4))
    {
      *(v4 + 4) = 0;
    }
  }

  else
  {
    if ((v4[1] & 1) == 0)
    {
      *v4 = 0;
      *(v4 + 4) = 1;
    }

    type = xpc_get_type(*a2);
    if (type == &_xpc_type_string)
    {
      v11 = *v4;
      ctu::rest::detail::read_enum_string_value(&v11, a2, v6);
      *v4 = v11;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
    }
  }

  v9 = *(a1 + 16);
  ATCSMutex::lock((v9 + 56));
  if (*(v9 + 336) == 1)
  {
    (*(**(v9 + 64) + 120))(*(v9 + 64), *(v9 + 332));
  }

  return ATCSMutex::unlock((v9 + 56));
}

uint64_t sub_100768D0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100768DC8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E793C8;
  a2[1] = v2;
  return result;
}

void sub_100768DF4(uint64_t a1, uint64_t a2)
{
  memset(v4, 0, 24);
  RequestDumpStatePayload::RequestDumpStatePayload();
  read_rest_value();
  v3 = *(a1 + 8);
  __dst = 0u;
  v6 = 0;
  v7 = *(v4 + 8);
  v8 = 0;
  (*(*v3 + 200))(v3, &__dst);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__dst);
  }
}

void sub_100768EF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100768F44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100769004(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E79448;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100769034(uint64_t a1, xpc *this, BOOL a3)
{
  v4 = *(a1 + 8);
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = *(**(*(a1 + 16) + 64) + 40);

  return v5();
}

uint64_t sub_1007690A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007690F0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(result + 24);
    v3 = *(result + 32);
    v4 = (v1 + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    return v2(v4, *(result + 8));
  }

  return result;
}

void sub_1007691D0(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "BasebandReset", "", v5, 2u);
    }
  }
}

uint64_t sub_100769248(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100769294(CSIRadioModulePrivate **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Handle reset", v4, 2u);
  }

  CSIRadioModulePrivate::handleResetDPC(v1, v3);
  operator delete();
}

uint64_t *sub_100769340(uint64_t *a1)
{
  v5 = a1;
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Add reasont to last log dump", buf, 2u);
  }

  CSIRadioModulePrivate::addReasonToLastDumpInternal_sync(v2, (a1 + 1));
  return sub_1000EF424(&v5);
}

void sub_1007693C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000EF424(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007693DC()
{
  {
    return __cxa_atexit(sub_100DBA2A0, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &_mh_execute_header);
  }

  return result;
}