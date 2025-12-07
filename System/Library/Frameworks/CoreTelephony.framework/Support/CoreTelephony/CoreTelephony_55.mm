void sub_100378090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__pa, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  sub_1000BFE80(va);
  sub_100005978(&STACK[0x5D0]);
  STACK[0x600] = &STACK[0x5B0];
  sub_1000B42B0(&STACK[0x600]);
  sub_1000BFE80(&STACK[0x7C0]);
  sub_1000C0590(&STACK[0x5C8]);
  _Unwind_Resume(a1);
}

uint64_t IMSCallModel::getCallInfoFromUuid(uint64_t a1, uint64_t a2, uint64_t a3)
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

  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C(v16, __dst[0], __dst[1]);
  }

  else
  {
    *v16 = *__dst;
    v17 = v13;
  }

  v15 = 0;
  if (SHIBYTE(v17) < 0)
  {
    sub_100005F2C(__p, v16[0], v16[1]);
  }

  else
  {
    *__p = *v16;
    v19 = v17;
  }

  v20 = 0;
  if (ctu::cf::convert_copy())
  {
    v5 = v15;
    v15 = v20;
    v21 = v5;
    sub_100005978(&v21);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = v15;
  v14 = v15;
  v15 = 0;
  sub_100005978(&v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
  }

  v7 = CFUUIDCreateFromString(kCFAllocatorDefault, v6);
  __p[0] = v7;
  v8 = *(a1 + 128);
  v11 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v9 = (*(*v8 + 240))(v8, &v11, a3);
  sub_1000475BC(&v11);
  if ((v9 & 1) == 0 && os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176C518();
  }

  sub_1000475BC(__p);
  sub_100005978(&v14);
  return v9;
}

void sub_1003783F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

const void **IMSCallModel::handleEmergencySessionRequired(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v92 = 0u;
  sub_1000BA174(&v92);
  v8 = IMSCallModel::getCallInfoFromUuid(a1, a2, &v92);
  v9 = *(a1 + 752);
  v10 = *v9;
  if (v8)
  {
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: EMERGENCY SESSION REQUIRED for %s (uuid)", buf, 0xCu);
    }

    DWORD1(v114) = 81;
    BYTE8(v114) = 1;
    if (CallInfo::isEmergencyCallEmergencySetup(&v92))
    {
      v12 = **(a1 + 752);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v13 = a2;
        }

        else
        {
          v13 = *a2;
        }

        *buf = 136315138;
        *&buf[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP 380 received for emergency call %s. Treat as an SipError", buf, 0xCu);
      }

      v14 = *(a1 + 128);
      sub_100E03FE8(v91, &v92);
      (*(*v14 + 248))(v14, v91, 11);
      sub_1000BFE80(v91);
      return sub_1000BFE80(&v92);
    }

    v90 = 0;
    v89 = 0;
    v15 = (a1 + 96);
    ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
      v24 = v22[3];
      v23 = v22[4];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v23);
        v25 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v24 = 0;
    }

    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
LABEL_24:
    (*(*a1 + 256))(a1);
    PersonalityIdFromSlotIdEx(buf);
    (*(*v24 + 40))(&v89, v24, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if ((v25 & 1) == 0)
    {
      sub_100004A34(v23);
    }

    v26 = (*(*v89 + 296))(v89);
    v27 = **(a1 + 752);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v28 = a2;
      }

      else
      {
        v28 = *a2;
      }

      v29 = asString();
      v30 = CSIBOOLAsString(v26);
      v31 = CSIBOOLAsString(a4 ^ 1u);
      if (a3[23] >= 0)
      {
        v32 = a3;
      }

      else
      {
        v32 = *a3;
      }

      *buf = 136316162;
      *&buf[4] = v28;
      *&buf[12] = 2080;
      *&buf[14] = v29;
      *&buf[22] = 2080;
      *&buf[24] = v30;
      *&buf[32] = 2080;
      *&buf[34] = v31;
      *&buf[42] = 2080;
      *&buf[44] = v32;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I EmergencySessionRequired for call %s. LTE bearer support: %s, Carrier allows undetected emergency on IMS: %s, Emergency contact available: %s, URN: %s", buf, 0x34u);
    }

    v33 = *(a1 + 764);
    if (((v33 == 2) & v26) == 1)
    {
      v34 = **(a1 + 752);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = CSIBOOLAsString(*(a1 + 772));
        v36 = asString();
        *buf = 136315394;
        *&buf[4] = v35;
        *&buf[12] = 2080;
        *&buf[14] = v36;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I EmergencySessionRequired with unknown LTE bearer support. Airplane Mode: %s, Registration Status: %s", buf, 0x16u);
      }

      v37 = *(a1 + 772) | (*(a1 + 776) == 1);
    }

    else
    {
      v37 = (v33 != 0) & v26;
    }

    memset(&__str, 0, sizeof(__str));
    (*(**(a1 + 128) + 272))(&__str);
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (size < 7)
    {
LABEL_89:
      if ((v37 & 1) == 0)
      {
        if (!CallInfo::isEmergencyCallNormalSetup(&v92) || !(*(**(a1 + 128) + 360))(*(a1 + 128), v93))
        {
          if (a4)
          {
            v64 = **(a1 + 752);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              if (*(a2 + 23) >= 0)
              {
                v65 = a2;
              }

              else
              {
                v65 = *a2;
              }

              *buf = 136315138;
              *&buf[4] = v65;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP 380 received for call %s without emergency contact. Redial with normal setup over CS", buf, 0xCu);
            }

            v66 = *(a1 + 128);
            sub_100E03FE8(v77, &v92);
            v67 = v77;
            (*(*v66 + 248))(v66, v77, 4);
          }

          else
          {
            HIDWORD(v98) = sub_1011E8F64(a3);
            v68 = **(a1 + 752);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              v69 = *(a2 + 23);
              v70 = *a2;
              v71 = asString();
              if (v69 >= 0)
              {
                v72 = a2;
              }

              else
              {
                v72 = v70;
              }

              *buf = 136315394;
              *&buf[4] = v72;
              *&buf[12] = 2080;
              *&buf[14] = v71;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP 380 received for call %s with emergency contact %s. Redial with emergency setup over CS", buf, 0x16u);
            }

            v73 = *(a1 + 128);
            sub_100E03FE8(v76, &v92);
            v67 = v76;
            (*(*v73 + 248))(v73, v76, 3);
          }

          sub_1000BFE80(v67);
          goto LABEL_114;
        }

        v63 = **(a1 + 752);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I EmergencySessionRequired for normal setup emergency call but CS call blocked. Force IMS redial", buf, 2u);
        }
      }

      v61 = **(a1 + 752);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v62 = a2;
        }

        else
        {
          v62 = *a2;
        }

        *buf = 136315138;
        *&buf[4] = v62;
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP 380 received for call %s to redial over IMS as emergency setup", buf, 0xCu);
      }

      (*(**(a1 + 128) + 256))(*(a1 + 128), &v92, 7);
LABEL_114:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v90)
      {
        sub_100004A34(v90);
      }

      return sub_1000BFE80(&v92);
    }

    v75 = size;
    v39 = Registry::getServiceMap(*v15);
    v40 = v39;
    if (v41 < 0)
    {
      v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
      v43 = 5381;
      do
      {
        v41 = v43;
        v44 = *v42++;
        v43 = (33 * v43) ^ v44;
      }

      while (v44);
    }

    std::mutex::lock(v39);
    *buf = v41;
    v45 = sub_100009510(&v40[1].__m_.__sig, buf);
    if (v45)
    {
      v47 = v45[3];
      v46 = v45[4];
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v40);
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v46);
        v48 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      v47 = 0;
    }

    std::mutex::unlock(v40);
    v46 = 0;
    v48 = 1;
LABEL_52:
    v49 = (*(*v47 + 16))(v47);
    if ((v48 & 1) == 0)
    {
      sub_100004A34(v46);
    }

    if (!v49)
    {
      goto LABEL_85;
    }

    memset(&buf[8], 0, 48);
    v128 = 0u;
    v127 = 0u;
    memset(&v125, 0, sizeof(v125));
    v124 = 0u;
    v126 = 23;
    qmemcpy(&buf[23], "\tCall", 5);
    qmemcpy(buf, "Telephony", 9);
    buf[47] = 4;
    sub_1000167D4(&buf[48], "Suspicious SIP 380 Emergency Redirect Number", 0x2CuLL);
    std::string::operator=(&v125, &__str);
    v126 = v126 & 0xFFFFFFFFFFFFFFE8 | 1;
    v50 = Registry::getServiceMap(*v15);
    v51 = v50;
    if ((v52 & 0x8000000000000000) != 0)
    {
      v53 = (v52 & 0x7FFFFFFFFFFFFFFFLL);
      v54 = 5381;
      do
      {
        v52 = v54;
        v55 = *v53++;
        v54 = (33 * v54) ^ v55;
      }

      while (v55);
    }

    std::mutex::lock(v50);
    v120 = v52;
    v56 = sub_100009510(&v51[1].__m_.__sig, &v120);
    if (v56)
    {
      v58 = v56[3];
      v57 = v56[4];
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v51);
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v57);
        v59 = 0;
LABEL_63:
        sub_100D9EC48(__dst, buf);
        v122 = 0;
        (*(*v58 + 16))(v58, __dst, v121);
        sub_10010DF14(v121);
        if (v87 < 0)
        {
          operator delete(__p);
        }

        if (v85 < 0)
        {
          operator delete(v84);
        }

        if (v83 < 0)
        {
          operator delete(v82);
        }

        if (v81 < 0)
        {
          operator delete(v80);
        }

        if (v79 < 0)
        {
          operator delete(__dst[0]);
        }

        if ((v59 & 1) == 0)
        {
          sub_100004A34(v57);
        }

        if (SBYTE7(v128) < 0)
        {
          operator delete(v127);
        }

        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v124) < 0)
        {
          operator delete(*&buf[48]);
        }

        if ((buf[47] & 0x80000000) != 0)
        {
          operator delete(*&buf[24]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

LABEL_85:
        if ((*(*v89 + 304))(v89))
        {
          v60 = **(a1 + 752);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v75;
            *&buf[12] = 2048;
            *&buf[14] = 6;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I EmergencySessionRequired for suspicious number with %zu > %zu digits", buf, 0x16u);
          }

          (*(**(a1 + 128) + 304))(*(a1 + 128), &v92, 1);
        }

        goto LABEL_89;
      }
    }

    else
    {
      v58 = 0;
    }

    std::mutex::unlock(v51);
    v57 = 0;
    v59 = 1;
    goto LABEL_63;
  }

  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    sub_10176C580();
  }

  return sub_1000BFE80(&v92);
}

void sub_100379050(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (STACK[0x420])
  {
    sub_100004A34(STACK[0x420]);
  }

  sub_1000BFE80(&STACK[0x5E0]);
  _Unwind_Resume(a1);
}

const void **IMSCallModel::handleActiveEvent(uint64_t a1, uint64_t a2)
{
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
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
  v46 = 0u;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  sub_1000BA174(v45);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v45);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 1024;
      *&buf[14] = DWORD2(v45[0]);
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: ACTIVE for %s (callId: %u)", buf, 0x12u);
    }

    if ((IMSCallModel::getCallInfoFromUuid(a1, a2, v45) & 1) == 0)
    {
      v8 = **(a1 + 752);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = DWORD2(v45[0]);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Received ACTIVE ind with unknown id: %u", buf, 8u);
      }
    }

    v42 = 0;
    v43 = 0;
    v44 = 0;
    (*(**(a1 + 128) + 232))(&v42);
    v9 = v42;
    v10 = v43;
    if (v43 == v42)
    {
      v14 = 0;
    }

    else
    {
      do
      {
        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100E03FE8(buf, v9);
        v11 = *&buf[8];
        v12 = DWORD2(v45[0]);
        sub_1000BFE80(buf);
        v13 = v11 == v12;
        v14 = v11 == v12;
        if (v13)
        {
          break;
        }

        v9 += 440;
      }

      while (v9 != v10);
    }

    v39 = 0;
    v40 = 0;
    v41 = 0;
    (*(**(a1 + 128) + 208))(&v39);
    v15 = v39;
    v16 = v40;
    if (v40 == v39)
    {
      v19 = 0;
    }

    else
    {
      do
      {
        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v72 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_100E03FE8(buf, v15);
        v17 = *&buf[8];
        v18 = DWORD2(v45[0]);
        sub_1000BFE80(buf);
        v13 = v17 == v18;
        v19 = v17 == v18;
        if (v13)
        {
          break;
        }

        v15 += 440;
      }

      while (v15 != v16);
    }

    (*(**(a1 + 128) + 280))(*(a1 + 128), v45, 1);
    (*(**(a1 + 128) + 64))(*(a1 + 128), v45, 1);
    v20 = **(a1 + 752);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = asString();
      *buf = 136315138;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Call type of the active call: %s", buf, 0xCu);
    }

    if (BYTE4(v46) == 2)
    {
      v22 = *(a1 + 128);
      *buf = 0;
      v23 = (*(*a1 + 256))(a1);
      (*(*v22 + 320))(v22, buf, v23);
    }

    if (v14 || v19)
    {
      goto LABEL_43;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 96));
    v25 = ServiceMap;
    if (v26 < 0)
    {
      v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
      v28 = 5381;
      do
      {
        v26 = v28;
        v29 = *v27++;
        v28 = (33 * v28) ^ v29;
      }

      while (v29);
    }

    std::mutex::lock(ServiceMap);
    *buf = v26;
    v30 = sub_100009510(&v25[1].__m_.__sig, buf);
    if (v30)
    {
      v32 = v30[3];
      v31 = v30[4];
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v25);
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v31);
        v33 = 0;
        if (!v32)
        {
LABEL_41:
          if ((v33 & 1) == 0)
          {
            sub_100004A34(v31);
          }

LABEL_43:
          *buf = &v39;
          sub_1000B42B0(buf);
          *buf = &v42;
          sub_1000B42B0(buf);
          return sub_1000BFE80(v45);
        }

LABEL_36:
        v35 = HIDWORD(v45[0]);
        v34 = LODWORD(v45[1]);
        if (SHIBYTE(v45[2]) < 0)
        {
          sub_100005F2C(__p, *(&v45[1] + 1), *&v45[2]);
        }

        else
        {
          *__p = *(&v45[1] + 8);
          v38 = *(&v45[2] + 1);
        }

        (*(*v32 + 192))(v32, v34, __p, DWORD2(v45[0]), v35 == 1);
        if (SHIBYTE(v38) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v32 = 0;
    }

    std::mutex::unlock(v25);
    v31 = 0;
    v33 = 1;
    if (!v32)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176C5F0();
  }

  return sub_1000BFE80(v45);
}

void sub_10037973C(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, uint64_t a5, void *__pa, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  va_copy(va2, va1);
  v16 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  STACK[0x210] = va;
  sub_1000B42B0(&STACK[0x210]);
  STACK[0x210] = va1;
  sub_1000B42B0(&STACK[0x210]);
  sub_1000BFE80(va2);
  _Unwind_Resume(a1);
}

BOOL IMSCallModel::checkIfIMSCallExists(void **a1, uint64_t a2)
{
  lpsrc = 0;
  v9 = 0;
  ((*a1)[59])(&lpsrc);
  v3 = lpsrc;
  if (lpsrc)
  {
    {
      v4 = v9;
      if (v9)
      {
LABEL_4:
        v5 = 1;
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v4);
        goto LABEL_13;
      }

      v5 = 1;
    }

    else
    {
      if (v6)
      {
        v4 = v9;
        if (v9)
        {
          goto LABEL_4;
        }
      }

      v5 = v6 != 0;
    }
  }

  else
  {
    if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
    {
      sub_10176C660();
    }

    v5 = 0;
  }

LABEL_13:
  if (v9)
  {
    sub_100004A34(v9);
  }

  return v5;
}

const void **IMSCallModel::handleInactiveEvent(void **a1, uint64_t a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_1000BA174(v7);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, v7) && IMSCallModel::checkIfIMSCallExists(a1, a2))
  {
    v4 = *a1[94];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      *buf = 136315138;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: HOLD for %s", buf, 0xCu);
    }

    (*(*a1[16] + 120))(a1[16], v7);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176C6D0();
  }

  return sub_1000BFE80(v7);
}

const void **IMSCallModel::handleTryingEvent(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1000BA174(v9);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v9);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: TRYING for %s. Ignoring.", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176C740();
  }

  return sub_1000BFE80(v9);
}

const void **IMSCallModel::handleRingingEvent(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1000BA174(v9);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v9);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: RINGING (Alerting) for %s", buf, 0xCu);
    }

    (*(**(a1 + 128) + 48))(*(a1 + 128), v9);
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176C7B0();
  }

  return sub_1000BFE80(v9);
}

const void **IMSCallModel::handleJoinedEvent(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1000BA174(v9);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v9);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: CONFERENCE for %s", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176C820();
  }

  return sub_1000BFE80(v9);
}

const void **IMSCallModel::handleInProgressEvent(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1000BA174(v9);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v9);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: SESSION PROGRESS for %s", buf, 0xCu);
    }

    (*(**(a1 + 128) + 56))(*(a1 + 128), v9);
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176C890();
  }

  return sub_1000BFE80(v9);
}

const void **IMSCallModel::handleTextMediaDetectedEvent(uint64_t a1, uint64_t a2)
{
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  sub_1000BA174(&v29);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, &v29))
  {
    v4 = (*(**(a1 + 80) + 16))(*(a1 + 80), v30);
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

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: TEXT STREAM DETECTED for %s", &buf, 0xCu);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 96));
    v8 = ServiceMap;
    if (v9 < 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    *&buf = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &buf);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
        if (!v15)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
LABEL_13:
      v17 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N SystemDeterminationManager is not found", &buf, 2u);
      }

LABEL_40:
      if ((v16 & 1) == 0)
      {
        sub_100004A34(v14);
      }

      return sub_1000BFE80(&v29);
    }

LABEL_19:
    v27 = 0;
    v28 = 0;
    (*(*a1 + 248))(&buf, a1);
    (*(*v15 + 40))(&v27, v15, &buf);
    if (v60 < 0)
    {
      operator delete(buf);
    }

    if (v27)
    {
      v18 = (*(**(a1 + 128) + 352))(*(a1 + 128), &v29);
      v19 = *v27;
      if (v18)
      {
        v20 = (v19 + 104);
      }

      else
      {
        v20 = (v19 + 96);
      }

      if ((*v20)(v27, 0))
      {
        (*(**(a1 + 128) + 168))(*(a1 + 128), &v29);
      }

      else
      {
        v25 = *v4;
        if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Carrier does not support TTY over IMS. Ignoring IMS Text Stream Detected indication.", &buf, 2u);
        }
      }
    }

    else
    {
      v21 = *v4;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        (*(*a1 + 248))(&buf, a1);
        v22 = v60;
        if ((v60 & 0x80u) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          v22 = *(&buf + 1);
          p_buf = buf;
        }

        v24 = v22 ? p_buf : "<invalid>";
        *v57 = 136315138;
        v58 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N IMS Config can't be found. PersonalityID: [%s]", v57, 0xCu);
        if (v60 < 0)
        {
          operator delete(buf);
        }
      }
    }

    if (v28)
    {
      sub_100004A34(v28);
    }

    goto LABEL_40;
  }

  if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176C900();
  }

  return sub_1000BFE80(&v29);
}

void sub_10037A558(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100004A34(a5);
  }

  if ((v6 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  sub_1000BFE80(va);
  _Unwind_Resume(a1);
}

const void **IMSCallModel::handleTextMediaRemoteDirectionEvent(uint64_t a1, uint64_t a2, int a3)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_1000BA174(v12);
  v6 = IMSCallModel::getCallInfoFromUuid(a1, a2, v12);
  v7 = *(a1 + 752);
  v8 = *v7;
  if (v6)
  {
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "HELD";
      if (a3)
      {
        v9 = "RESUMED";
      }

      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      *buf = 136315394;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: TEXT MEDIA REMOTE DIRECTION DETECTED (%s) for %s", buf, 0x16u);
    }

    LOWORD(v13) = a3 ^ 1 | 0x100;
    (*(**(a1 + 128) + 184))(*(a1 + 128), v12);
  }

  else if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_10176C900();
  }

  return sub_1000BFE80(v12);
}

const void **IMSCallModel::handleInputFrequencyLevelUpdatedEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 128);
  sub_1001DB72C(a2, &v6);
  (*(*v4 + 192))(v4, 1, &v6, a3);
  return sub_1000475BC(&v6);
}

void sub_10037A80C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000475BC(va);
  _Unwind_Resume(a1);
}

const void **IMSCallModel::handleOutputFrequencyLevelUpdatedEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 128);
  sub_1001DB72C(a2, &v6);
  (*(*v4 + 192))(v4, 0, &v6, a3);
  return sub_1000475BC(&v6);
}

void sub_10037A894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000475BC(va);
  _Unwind_Resume(a1);
}

uint64_t IMSCallModel::handleIncomingDtmfEvent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v9 = 136315394;
    v10 = v7;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: DOWNLINK DTMF for UUID %s: %c", &v9, 0x12u);
  }

  return (*(**(a1 + 144) + 24))(*(a1 + 144), a2, a3);
}

const void **IMSCallModel::handleAudioStreamTokensEvent(uint64_t a1, uint64_t a2, CFArrayRef *a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1000BA174(v24);
    if (IMSCallModel::getCallInfoFromUuid(a1, a2, v24))
    {
      v7 = *a3;
      v8 = **(a1 + 752);
      if (*a3)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v9 = a2;
          }

          else
          {
            v9 = *a2;
          }

          *buf = 136315394;
          *&buf[4] = v9;
          *&buf[12] = 2112;
          *&buf[14] = v7;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: AUDIO STREAM TOKENS for UUID %s: %@", buf, 0x16u);
          v7 = *a3;
        }

        memset(buf, 0, sizeof(buf));
        Count = CFArrayGetCount(v7);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            v23 = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(*a3, i);
            sub_1002AF4F0(&v23, &ValueAtIndex);
            if (v23)
            {
              LODWORD(ValueAtIndex) = 0;
              ctu::cf::assign(&ValueAtIndex, v23, v12);
              v13 = *&buf[8];
              if (*&buf[8] >= *&buf[16])
              {
                v15 = *buf;
                v16 = *&buf[8] - *buf;
                v17 = (*&buf[8] - *buf) >> 2;
                v18 = v17 + 1;
                if ((v17 + 1) >> 62)
                {
                  sub_1000CE3D4();
                }

                v19 = *&buf[16] - *buf;
                if ((*&buf[16] - *buf) >> 1 > v18)
                {
                  v18 = v19 >> 1;
                }

                if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v20 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v20 = v18;
                }

                if (v20)
                {
                  sub_100016740(buf, v20);
                }

                *(4 * v17) = ValueAtIndex;
                v14 = 4 * v17 + 4;
                memcpy(0, v15, v16);
                v21 = *buf;
                *buf = 0;
                *&buf[8] = v14;
                *&buf[16] = 0;
                if (v21)
                {
                  operator delete(v21);
                }
              }

              else
              {
                **&buf[8] = ValueAtIndex;
                v14 = v13 + 4;
              }

              *&buf[8] = v14;
            }

            sub_100029A48(&v23);
          }
        }

        sub_10037AD10(&v24[11] + 8, buf);
        (*(**(a1 + 128) + 152))(*(a1 + 128), v24);
        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_10176C9E0();
      }
    }

    else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176C970();
    }

    return sub_1000BFE80(v24);
  }

  return result;
}

void sub_10037ACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v7 = *(v5 - 112);
  if (v7)
  {
    *(v5 - 104) = v7;
    operator delete(v7);
  }

  sub_1000BFE80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10037AD10(uint64_t a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1000B26FC(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1000FAABC(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

const void **IMSCallModel::handleTextStreamTokenEvent(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_1000BA174(v11);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, v11))
  {
    v10 = 0;
    ctu::cf::assign(&v10, *a3, v6);
    v7 = **(a1 + 752);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = *a2;
      }

      *buf = 136315394;
      v21 = v8;
      v22 = 1024;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: TEXT STREAM TOKEN for UUID %s: %u", buf, 0x12u);
    }

    DWORD2(v12) = v10;
    BYTE12(v12) = 1;
    (*(**(a1 + 128) + 160))(*(a1 + 128), v11);
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176CA1C();
  }

  return sub_1000BFE80(v11);
}

void sub_10037AF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000BFE80(va);
  _Unwind_Resume(a1);
}

void IMSCallModel::handleTextMediaDeactivatedEvent(void **a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
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
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
    sub_1000BA174(&v7);
    if (IMSCallModel::getCallInfoFromUuid(a1, a2, &v7))
    {
      v5 = *(*(*a1[10] + 16))(a1[10], v8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v6 = a2;
        }

        else
        {
          v6 = *a2;
        }

        *buf = 136315138;
        v36 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: TEXT MEDIA DEACTIVATED (RTT NEGOTIATION FAILED) for %s", buf, 0xCu);
      }

      (*(*a1[16] + 176))(a1[16], &v7);
    }

    else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
    {
      sub_10176CA8C();
    }

    sub_1000BFE80(&v7);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176CAF4();
  }
}

const void **IMSCallModel::handleProceedingEvent(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_1000BA174(v16);
  v4 = **(a1 + 752);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: PROCEEDING for %s.", buf, 0xCu);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (v6)
  {
    v8 = **(a1 + 752);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a2;
      if (v7 >= 0)
      {
        v9 = a2;
      }

      *buf = 136315394;
      *&buf[4] = v9;
      *&buf[12] = 1024;
      *&buf[14] = DWORD2(v16[0]);
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Dialing Call with UUID: %s, call uuid: %u", buf, 0x12u);
    }

    if (IMSCallModel::getCallInfoFromUuid(a1, a2, v16))
    {
      v10 = *(a1 + 160) + 1;
      *(a1 + 160) = v10;
      DWORD2(v16[0]) = v10;
      (*(**(a1 + 128) + 16))(*(a1 + 128), v16);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1174405120;
      v14[2] = sub_10037B4E0;
      v14[3] = &unk_101E462C0;
      v14[4] = a1;
      sub_100E03FE8(v15, v16);
      v18 = 0;
      v19 = 0;
      sub_100004AA0(&v18, (a1 + 40));
      v11 = *(a1 + 56);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 1174405120;
      *&buf[16] = sub_1003825A0;
      v21 = &unk_101E46460;
      v23 = v18;
      v24 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = v14;
      dispatch_async(v11, buf);
      if (v24)
      {
        sub_100004A34(v24);
      }

      if (v19)
      {
        sub_100004A34(v19);
      }

      sub_1000BFE80(v15);
    }

    else
    {
      v12 = **(a1 + 752);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I PROCEEDING for STK call", buf, 2u);
      }

      (*(*a1 + 464))(a1, a2);
    }
  }

  return sub_1000BFE80(v16);
}

void sub_10037B4B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void IMSCallModel::handleIMSDialBBCallResponse(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 184))
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_100E03FE8(v10, *(a1 + 176) + 16);
    sub_10037B78C(a1 + 168);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v9 = *(a2 + 16);
    }

    toUuid();
    block[0] = *&v10[0];
    *&v10[0] = v14;
    v14 = 0;
    sub_1000475BC(block);
    sub_1000475BC(&v14);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    v4 = *(a1 + 160) + 1;
    *(a1 + 160) = v4;
    DWORD2(v10[0]) = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1174405120;
    v6[2] = sub_10037B7DC;
    v6[3] = &unk_101E462F0;
    v6[4] = a1;
    sub_100E03FE8(v7, v10);
    v14 = 0;
    v15 = 0;
    sub_100004AA0(&v14, (a1 + 40));
    v5 = *(a1 + 56);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_1003825A0;
    block[3] = &unk_101E46460;
    block[5] = v14;
    v13 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v6;
    dispatch_async(v5, block);
    if (v13)
    {
      sub_100004A34(v13);
    }

    if (v15)
    {
      sub_100004A34(v15);
    }

    sub_1000BFE80(v7);
    sub_1000BFE80(v10);
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176CB30();
  }
}

void sub_10037B78C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  sub_1000BFE80((v2 + 2));

  operator delete(v2);
}

const void **IMSCallModel::handleRingbackToneEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_1000BA174(v7);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, v7))
  {
    IMSCallModel::handleCallStatusRingbackToneStatus_sync(a1, a2, a3);
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176CB6C();
  }

  return sub_1000BFE80(v7);
}

const void **IMSCallModel::handleCallStatusRingbackToneStatus_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString();
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    LODWORD(buf[0]) = 136315394;
    *(buf + 4) = v7;
    WORD6(buf[0]) = 2080;
    *(buf + 14) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: %s RBT for %s", buf, 0x16u);
  }

  v14 = 0;
  memset(buf, 0, sizeof(buf));
  sub_1000BA174(buf);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, buf))
  {
    (*(**(a1 + 128) + 104))(*(a1 + 128), buf, a3);
  }

  else
  {
    v9 = **(a1 + 752);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = asString();
      sub_10176CBDC(v10, a2, v12, v9);
    }
  }

  return sub_1000BFE80(buf);
}

void sub_10037BAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000BFE80(va);
  _Unwind_Resume(a1);
}

const void **IMSCallModel::handleHoldFailed(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_1000BA174(v7);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v7);
  v5 = os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v5)
    {
      sub_10176CCB4();
    }

    (*(**(a1 + 128) + 144))(*(a1 + 128));
  }

  else if (v5)
  {
    sub_10176CC44();
  }

  return sub_1000BFE80(v7);
}

const void **IMSCallModel::handleAcknowledgedEvent(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1000BA174(v9);
  v4 = IMSCallModel::getCallInfoFromUuid(a1, a2, v9);
  v5 = *(a1 + 752);
  v6 = *v5;
  if (v4)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      *buf = 136315138;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: ACKNOWLEDGED for uuid: %s", buf, 0xCu);
    }

    (*(**(a1 + 128) + 280))(*(a1 + 128), v9, 2);
  }

  else if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176CD24();
  }

  return sub_1000BFE80(v9);
}

const void **IMSCallModel::handleMediaInitializedEvent(void **a1, uint64_t a2)
{
  v4 = *a1[94];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    LODWORD(v7[0]) = 136315138;
    *(v7 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: MEDIA INITIALIZED for uuid: %s", v7, 0xCu);
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_1000BA174(v7);
  if (IMSCallModel::getCallInfoFromUuid(a1, a2, v7))
  {
    (*(*a1[18] + 40))(a1[18], v7);
    (*(*a1[16] + 32))(a1[16], v7);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176CD94();
  }

  return sub_1000BFE80(v7);
}

const void **IMSCallModel::handleThumperCallRegister(uint64_t a1, uint64_t *a2)
{
  v4 = **(a1 + 752);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: THUMPER CALL %s REGISTERED", &v7, 0xCu);
  }

  return sub_1003825DC((a1 + 192), a2, a2);
}

const void **IMSCallModel::handleThumperCallDeregister(uint64_t a1, uint64_t *a2)
{
  v4 = **(a1 + 752);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: THUMPER CALL %s DEREGISTERED", &v7, 0xCu);
  }

  return sub_100382900((a1 + 192), a2);
}

void **IMSCallModel::handleIncomingEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _os_activity_create(&_mh_execute_header, "Call: Incoming", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  os_activity_scope_leave(&state);
  if (a2)
  {
    lpsrc[0] = 0;
    lpsrc[1] = 0;
    sub_100382984(lpsrc, a2);
  }

  if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176CE80();
  }

  return sub_1000C0590(&v7);
}

void sub_10037CB80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, const void *a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, std::__shared_weak_count *a40, void *a41, uint64_t a42, uint64_t a43, char a44)
{
  sub_10000A1EC(&a26);
  sub_1000BFE80(&a44);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (v44)
  {
    sub_100004A34(v44);
  }

  if (a40)
  {
    sub_100004A34(a40);
  }

  sub_1000C0590(&a41);
  _Unwind_Resume(a1);
}

void IMSCallModel::processBrandedCall(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = a3[1];
  v13 = *a3;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*a1 + 312))(a1, &v13, 1, 0);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v7 = *a1[94];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a2 + 232);
    if (*(a2 + 255) >= 0)
    {
      v8 = a2 + 232;
    }

    v9 = a2 + 264;
    if (*(a2 + 287) < 0)
    {
      v9 = *(a2 + 264);
    }

    *buf = 136315394;
    *&buf[4] = v8;
    *&buf[12] = 2082;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Branded call company name is %s, company image url is %{public}s", buf, 0x16u);
  }

  sub_100413DEC(@"com.apple.CommCenter.BrandedCalling.callreceived", @"com.apple.CommCenter.BrandedCalling");
  sub_100004AA0(buf, a1 + 5);
  v10 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
    memset(buf, 0, 32);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    memset(buf, 0, 32);
  }

  sub_100E03FE8(v12, a2);
  v11 = a3[1];
  v12[55] = *a3;
  v12[56] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *&buf[24] = 0;
  operator new();
}

void sub_10037D4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, int a28, const void *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37, char a38, std::__shared_weak_count *a39)
{
  sub_100383110(v40 - 176);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  sub_100010250(&a29);
  if (a37)
  {
    sub_100004A34(a37);
  }

  sub_100383110(v40 - 144);
  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  _Unwind_Resume(a1);
}

void IMSCallModel::completeHandleIncomingEvent(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (((*(**(a1 + 144) + 16))(*(a1 + 144), a4) & 1) == 0)
  {
    if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176CEBC();
      if (!v4)
      {
        return;
      }
    }

    else if (!v4)
    {
      return;
    }

    goto LABEL_12;
  }

  if (((*(**(a1 + 128) + 312))(*(a1 + 128), a3, 0) & 1) == 0)
  {
    if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176CEF8();
    }

LABEL_12:
    v11 = *a2;
    LODWORD(__dst) = 2;
    (*(*v11 + 32))(v11, &__dst);
    return;
  }

  v8 = *(a1 + 160) + 1;
  *(a1 + 160) = v8;
  *(a3 + 8) = v8;
  v9 = *a2;
  v10 = a2[1];
  v40[0] = *a2;
  v40[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *a2;
  }

  if (*(v9 + 55) < 0)
  {
    sub_100005F2C(&__dst, *(v9 + 32), *(v9 + 40));
  }

  else
  {
    __dst = *(v9 + 32);
    v39 = *(v9 + 48);
  }

  IMSCallModel::addIMSCallForUuid(a1, v40, &__dst);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__dst);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  v12 = *(a1 + 128);
  if (v4)
  {
    (*(*v12 + 96))(v12, a3);
  }

  else
  {
    LODWORD(__dst) = 1;
    (*(*v12 + 80))(v12, a3, &__dst);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
  *&__dst = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, &__dst);
  if (!v19)
  {
    v21 = 0;
LABEL_30:
    std::mutex::unlock(v14);
    v20 = 0;
    v22 = 1;
    if (!v21)
    {
      goto LABEL_46;
    }

LABEL_31:
    v23 = *(a3 + 16);
    if (*(a3 + 47) < 0)
    {
      sub_100005F2C(&v36, *(a3 + 24), *(a3 + 32));
    }

    else
    {
      v36 = *(a3 + 24);
      v37 = *(a3 + 40);
    }

    v24 = *(a3 + 8);
    CSIPhoneNumber::CSIPhoneNumber();
    (*(*v21 + 184))(v21, v23, &v36, v24, &v25);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    if (v33 < 0)
    {
      operator delete(v32);
    }

    if (v31 < 0)
    {
      operator delete(v30);
    }

    if (v29 < 0)
    {
      operator delete(v28);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    goto LABEL_46;
  }

  v21 = v19[3];
  v20 = v19[4];
  if (!v20)
  {
    goto LABEL_30;
  }

  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v20);
  v22 = 0;
  if (v21)
  {
    goto LABEL_31;
  }

LABEL_46:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }
}

void sub_10037D9B0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10037D9FC()
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  if (!v0)
  {
    JUMPOUT(0x10037D9F0);
  }

  JUMPOUT(0x10037D9E8);
}

uint64_t sub_10037DA20(uint64_t a1)
{
  v2 = *(a1 + 464);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000BFE80(a1 + 16);
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void IMSCallModel::setBrandedCallingImageFetchingTimer(Registry **this)
{
  v31 = 0;
  v32 = 0;
  v2 = this + 12;
  ServiceMap = Registry::getServiceMap(this[12]);
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*this + 32))(this);
  PersonalityIdFromSlotIdEx(buf);
  (*(*v11 + 40))(&v31, v11, buf);
  if ((buf[23] & 0x80000000) == 0)
  {
    if (v12)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  operator delete(*buf);
  if ((v12 & 1) == 0)
  {
LABEL_11:
    sub_100004A34(v10);
  }

LABEL_12:
  if (v31)
  {
    cf = 0;
    (*(*v31 + 40))(&cf);
    v13 = cf;
    *buf = 1000;
    if (cf)
    {
      v14 = CFGetTypeID(cf);
      if (v14 == CFNumberGetTypeID())
      {
        ctu::cf::assign(buf, v13, v15);
      }
    }

    v16 = *buf;
    sub_10000A1EC(&cf);
  }

  else
  {
    v16 = 1000;
  }

  v17 = *this[94];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Set branded calling image fetching timeout to %llu", buf, 0xCu);
  }

  sub_100004AA0(buf, this + 5);
  v18 = *buf;
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v18 + 1));
  }

  Registry::getTimerService(buf, *v2);
  v19 = *buf;
  sub_10000501C(__p, "Branded calling image fetching timeout");
  v20 = this[7];
  object = v20;
  if (v20)
  {
    dispatch_retain(v20);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 1174405120;
  v24[2] = sub_100381D90;
  v24[3] = &unk_101E46320;
  v25 = v18;
  if (*(&v18 + 1))
  {
    atomic_fetch_add_explicit((*(&v18 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  aBlock = _Block_copy(v24);
  sub_100D23364(v19, __p, 1, 1000 * v16, &object, &aBlock);
  v21 = cf;
  cf = 0;
  v22 = this[11];
  this[11] = v21;
  if (v22)
  {
    (*(*v22 + 8))(v22);
    v23 = cf;
    cf = 0;
    if (v23)
    {
      (*(*v23 + 8))(v23);
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

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v25 + 1));
  }

  if (*(&v18 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v18 + 1));
  }

  if (v32)
  {
    sub_100004A34(v32);
  }
}

void sub_10037DE88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::addIMSCallForUuid(uint64_t a1, uint64_t *a2, uint64_t ***a3)
{
  v3 = *(a3 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a3[1];
  }

  v5 = *(a1 + 752);
  v6 = *v5;
  if (v3)
  {
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *a3;
      if (v4 >= 0)
      {
        v10 = a3;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Adding a new IMS call for uuid %s", &buf, 0xCu);
    }

    *&buf = a3;
    v11 = sub_100383310((a1 + 704), a3, &unk_101802C98, &buf, &v34);
    v13 = *a2;
    v12 = a2[1];
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(v11 + 8);
    *(v11 + 7) = v13;
    *(v11 + 8) = v12;
    if (v14)
    {
      sub_100004A34(v14);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
    *&buf = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, &buf);
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
        v24 = 0;
        if (!v23)
        {
LABEL_37:
          if ((v24 & 1) == 0)
          {
            sub_100004A34(v22);
          }

          return;
        }

LABEL_23:
        v25 = (*(*v23 + 792))(v23);
        v34 = 0;
        v26 = xpc_dictionary_create(0, 0, 0);
        v27 = v26;
        if (v26)
        {
          v34 = v26;
        }

        else
        {
          v27 = xpc_null_create();
          v34 = v27;
          if (!v27)
          {
            v28 = xpc_null_create();
            v27 = 0;
            goto LABEL_30;
          }
        }

        if (xpc_get_type(v27) == &_xpc_type_dictionary)
        {
          xpc_retain(v27);
LABEL_31:
          xpc_release(v27);
          v29 = (*(*a1 + 256))(a1) == v25;
          v32 = xpc_BOOL_create(v29);
          if (!v32)
          {
            v32 = xpc_null_create();
          }

          *&buf = &v34;
          *(&buf + 1) = "data_preferred";
          sub_10000F688(&buf, &v32, &object);
          xpc_release(object);
          object = 0;
          xpc_release(v32);
          v31 = v34;
          v32 = 0;
          if (v34)
          {
            xpc_retain(v34);
          }

          else
          {
            v31 = xpc_null_create();
          }

          ims::addCallEndInfo(&v31, v30);
          xpc_release(v31);
          v31 = 0;
          xpc_release(v34);
          goto LABEL_37;
        }

        v28 = xpc_null_create();
LABEL_30:
        v34 = v28;
        goto LABEL_31;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
    if (!v23)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    sub_10176CF34();
  }
}

void sub_10037E2A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, xpc_object_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallModel::handleMergedMediaInit(IMSCallModel *this)
{
  v2 = **(this + 94);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: MERGE MEDIA INIT", v4, 2u);
  }

  return (*(**(this + 18) + 32))(*(this + 18));
}

const void **IMSCallModel::handleMergeSuccess(IMSCallModel *this)
{
  v2 = **(this + 94);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: MERGED.", &v5, 2u);
  }

  v3 = *(this + 16);
  v5 = 0;
  v6 = CallInfo::kDefaultCallId;
  v7 = 0x100000001;
  v8 = 9;
  sub_10000501C(v9, kCallerIdDefaultValue);
  v10 = 1;
  v11 = 1;
  v12 = 0x200000004;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10000501C(v16, "");
  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  sub_10000501C(v20, "");
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0u;
  memset(v27, 0, 25);
  memset(&v27[28], 0, 64);
  v27[92] = 1;
  v27[96] = 0;
  v27[100] = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  *(v28 + 3) = 0;
  v28[0] = 0;
  *(v29 + 3) = 0;
  v29[0] = 0;
  (*(*v3 + 128))(v3, &v5);
  return sub_1000BFE80(&v5);
}

uint64_t IMSCallModel::handleMergeFailure(os_log_t **this)
{
  if (os_log_type_enabled(*this[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176CF70();
  }

  return ((*this[16])[17].isa)(this[16], this + 232);
}

uint64_t IMSCallModel::handleConferenceSubscribeEvent(IMSCallModel *this, char a2)
{
  if (a2)
  {
    v3 = kAmbiguousMultiPartyKey;
    result = (*(*this + 520))(this, kAmbiguousMultiPartyKey);
    if (!result)
    {
      return result;
    }

    v5 = **(this + 94);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Un-setting Ambiguous Multi Party.", v9, 2u);
    }

    (*(*this + 528))(this, v3, 0);
  }

  else
  {
    v6 = **(this + 94);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Setting Ambiguous Multi Party.", buf, 2u);
    }

    (*(*this + 528))(this, kAmbiguousMultiPartyKey, 1);
  }

  v7 = *(this + 16);
  v8 = (*(*this + 256))(this);
  return (*(*v7 + 200))(v7, v8);
}

uint64_t IMSCallModel::handleMediaStackSwitchComplete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a4 + 23) >= 0)
    {
      v7 = a4;
    }

    else
    {
      v7 = *a4;
    }

    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Media stack switch complete for %s", &v9, 0xCu);
  }

  return (*(**(a1 + 144) + 32))(*(a1 + 144));
}

uint64_t IMSCallModel::handleUssdData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v11 = 136315394;
    v12 = v7;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I handleUssdData %s %d.", &v11, 0x12u);
  }

  v8 = *(a1 + 128);
  v9 = (*(*a1 + 256))(a1);
  return (*(*v8 + 112))(v8, a3, a2, 0, 1, v9);
}

void IMSCallModel::handleUssdError(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    *__p = 136315394;
    *&__p[4] = v7;
    v11 = 1024;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I handleIncomingUSSDError %s %u.", __p, 0x12u);
  }

  v8 = *(a1 + 128);
  sub_10000501C(__p, "");
  v9 = (*(*a1 + 256))(a1);
  (*(*v8 + 112))(v8, 0, __p, 0, 0, v9);
  if (v13 < 0)
  {
    operator delete(*__p);
  }
}

void IMSCallModel::resetIMSBasebandCallId(IMSCallModel *this)
{
  v2 = **(this + 94);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Reset fBasebandCallId = 0x00", v3, 2u);
  }

  *(this + 160) = 0;
}

std::string *IMSCallModel::setMergeContext(uint64_t a1, uint64_t a2)
{
  sub_1000BA4A0((a1 + 232), a2);
  *(a1 + 240) = *(a2 + 8);
  std::string::operator=((a1 + 256), (a2 + 24));
  v4 = *(a2 + 60);
  *(a1 + 280) = *(a2 + 48);
  *(a1 + 292) = v4;
  std::string::operator=((a1 + 312), (a2 + 80));
  *(a1 + 336) = *(a2 + 104);
  std::string::operator=((a1 + 344), (a2 + 112));
  *(a1 + 368) = *(a2 + 136);
  std::string::operator=((a1 + 376), (a2 + 144));
  v5 = *(a2 + 176);
  *(a1 + 400) = *(a2 + 168);
  *(a1 + 408) = v5;
  sub_1000FAA0C(a1 + 416, a2 + 184);
  *(a1 + 448) = *(a2 + 216);
  std::string::operator=((a1 + 464), (a2 + 232));
  *(a1 + 488) = *(a2 + 256);
  std::string::operator=((a1 + 496), (a2 + 264));
  std::string::operator=((a1 + 520), (a2 + 288));
  v6 = *(a2 + 360);
  v8 = *(a2 + 312);
  v7 = *(a2 + 328);
  *(a1 + 576) = *(a2 + 344);
  *(a1 + 592) = v6;
  *(a1 + 544) = v8;
  *(a1 + 560) = v7;
  v10 = *(a2 + 392);
  v9 = *(a2 + 408);
  v11 = *(a2 + 376);
  *(a1 + 653) = *(a2 + 421);
  *(a1 + 624) = v10;
  *(a1 + 640) = v9;
  *(a1 + 608) = v11;

  return std::string::operator=((a1 + 672), (a2 + 440));
}

void IMSCallModel::getIMSCallForUuidFromLocalCache(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v5 = sub_100007A6C(a1 + 704, a2);
  if (a1 + 712 == v5)
  {
    if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176CFAC();
    }

    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v6 = *(v5 + 64);
    *a3 = *(v5 + 56);
    a3[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void IMSCallModel::endThisCall(void **a1, CallInfo *a2, int a3)
{
  v11 = a3;
  v5 = *a1[94];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a2 + 24;
    if (*(a2 + 47) < 0)
    {
      v6 = *v6;
    }

    CallInfo::toString(__p, a2);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Ending call with number: %s %s", buf, 0x16u);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  sub_1000BA468(&v8, a2);
  sub_1001DB8CC(&v8, __p);
  sub_1000475BC(&v8);
  *buf = 0;
  *&buf[8] = 0;
  ((*a1)[59])(buf, a1, __p);
  if (*buf)
  {
    (*(**buf + 32))(*buf, &v11);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D01C();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10037F02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::handleSRVCCCancel(uint64_t a1, int a2)
{
  v2 = *(a1 + 704);
  v3 = (a1 + 712);
  if (v2 != (a1 + 712))
  {
    do
    {
      v6 = **(a1 + 752);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v2[7];
        if (*(v7 + 55) < 0)
        {
          sub_100005F2C(__p, *(v7 + 32), *(v7 + 40));
        }

        else
        {
          *__p = *(v7 + 32);
          v18 = *(v7 + 48);
        }

        v8 = v18 >= 0 ? __p : __p[0];
        *buf = 136315394;
        v20 = v8;
        v21 = 1024;
        v22 = a2;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Handling SRVCC Cancel for call %s reason %d", buf, 0x12u);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v9 = v2[7];
      {
        v11 = v2[8];
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v10 + 104))(v10, a2 == 1);
        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      else
      {
        v12 = **(a1 + 752);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          if (*(v9 + 55) < 0)
          {
            sub_100005F2C(__p, *(v9 + 32), *(v9 + 40));
          }

          else
          {
            *__p = *(v9 + 32);
            v18 = *(v9 + 48);
          }

          v16 = v18 >= 0 ? __p : __p[0];
          *buf = 136315138;
          v20 = v16;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to convert call %s to a normal call!", buf, 0xCu);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      v13 = v2[1];
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
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
  }
}

void sub_10037F330(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::dumpState(IMSCallModel *this)
{
  v2 = **(this + 94);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 90);
    (*(*this + 248))(__p, this);
    v4 = __p[23];
    if (__p[23] >= 0)
    {
      v5 = __p;
    }

    else
    {
      v4 = *&__p[8];
      v5 = *__p;
    }

    v6 = v4 ? v5 : "<invalid>";
    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Dumping state for IMSCallModel %s has %ld calls (fCurrentIMSCall)", buf, 0x16u);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

  v7 = *(this + 88);
  if (v7 != (this + 712))
  {
    do
    {
      v8 = **(this + 94);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(v7 + 7);
        if (*(v9 + 55) < 0)
        {
          sub_100005F2C(__p, *(v9 + 32), *(v9 + 40));
          v9 = *(v7 + 7);
        }

        else
        {
          *__p = *(v9 + 32);
          *&__p[16] = *(v9 + 48);
        }

        if (__p[23] >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = *__p;
        }

        if (*(v9 + 79) < 0)
        {
          sub_100005F2C(buf, *(v9 + 56), *(v9 + 64));
        }

        else
        {
          *buf = *(v9 + 56);
          *&buf[16] = *(v9 + 72);
        }

        if (buf[23] >= 0)
        {
          v11 = buf;
        }

        else
        {
          v11 = *buf;
        }

        *v34 = 136315394;
        v35 = v10;
        v36 = 2080;
        v37 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Uuid: %s StackID: %s", v34, 0x16u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      v12 = *(v7 + 1);
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
          v13 = *(v7 + 2);
          v14 = *v13 == v7;
          v7 = v13;
        }

        while (!v14);
      }

      v7 = v13;
    }

    while (v13 != (this + 712));
  }

  v15 = *(this + 27);
  v16 = **(this + 94);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 134217984;
    *&__p[4] = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Secondary Device (Thumper) calls: %ld", __p, 0xCu);
  }

  if (v15)
  {
    for (i = *(this + 26); i; i = *i)
    {
      v18 = **(this + 94);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = i + 2;
        if (*(i + 39) < 0)
        {
          v19 = i[2];
        }

        *__p = 136315138;
        *&__p[4] = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s", __p, 0xCu);
      }
    }
  }

  v20 = **(this + 94);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = CSIBOOLAsString(*(this + 697));
    *__p = 136315138;
    *&__p[4] = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I IMS Voice Registered: %s", __p, 0xCu);
    v20 = **(this + 94);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v22 = CSIBOOLAsString(*(this + 696));
    *__p = 136315138;
    *&__p[4] = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I PDP Active on IWLAN (Wifi): %s", __p, 0xCu);
    v20 = **(this + 94);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Call Capabilities:", __p, 2u);
  }

  v23 = *(this + 91);
  if (v23 != (this + 736))
  {
    do
    {
      v24 = **(this + 94);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(v23 + 10);
        v26 = *(v23 + 4);
        *__p = 136315394;
        *&__p[4] = v26;
        *&__p[12] = 1024;
        *&__p[14] = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I \t%s = %d", __p, 0x12u);
      }

      v27 = *(v23 + 1);
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = *(v23 + 2);
          v14 = *v28 == v23;
          v23 = v28;
        }

        while (!v14);
      }

      v23 = v28;
    }

    while (v28 != (this + 736));
  }

  v29 = **(this + 94);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = CSIBOOLAsString(*(this + 772));
    *__p = 136315138;
    *&__p[4] = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Is In Airplane Mode: %s", __p, 0xCu);
    v29 = **(this + 94);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = CSIBOOLAsString(*(this + 98) != 0);
    *__p = 136315138;
    *&__p[4] = v31;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Has Branded Calling enabled: %s", __p, 0xCu);
    v29 = **(this + 94);
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v32 = CSIBOOLAsString(*(this + 816));
    *__p = 136315138;
    *&__p[4] = v32;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Should show branded calling info: %s", __p, 0xCu);
  }
}

void sub_10037F950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IMSCallModel::getPersonalityInfo@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 120);
  *a2 = *(this + 112);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *IMSCallModel::getPersonalityID@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = this[14];
  if (*(v2 + 47) < 0)
  {
    return sub_100005F2C(a2, *(v2 + 24), *(v2 + 32));
  }

  v3 = *(v2 + 24);
  *(a2 + 16) = *(v2 + 40);
  *a2 = v3;
  return this;
}

uint64_t IMSCallModel::getSimSlot(IMSCallModel *this)
{
  v1 = *(this + 14);
  if (*(v1 + 49))
  {
    return 1;
  }

  else
  {
    return *(v1 + 52);
  }
}

void IMSCallModel::setTTYModeForCall(void **a1, uint64_t **a2, int a3)
{
  v10 = 0;
  v11 = 0;
  ((*a1)[59])(&v10);
  v6 = v10;
  v7 = *a1[94];
  if (v10)
  {
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (!v8)
      {
        v9 = 2;
        goto LABEL_16;
      }

      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      *buf = 136315138;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Upgrading voice call %s to RTT!", buf, 0xCu);
      v9 = 2;
    }

    else
    {
      if (!v8)
      {
        v9 = 0;
        goto LABEL_16;
      }

      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      *buf = 136315138;
      v13 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Downgrading RTT call %s to voice!", buf, 0xCu);
      v9 = 0;
    }

    v6 = v10;
LABEL_16:
    (*(*v6 + 40))(v6, v9);
    goto LABEL_17;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10176D08C();
  }

LABEL_17:
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10037FB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::swapCalls(void **a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  ((*a1)[59])(&v3);
  sub_10037FC9C(&v3, &v5);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (v5)
  {
    (*(*v5 + 120))(v5);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D104();
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10037FC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10037FC9C@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void IMSCallModel::sendDTMFDigits(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  ((*a1)[59])(&v5);
  if (v5)
  {
    (*(*v5 + 80))(v5, a2);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D17C();
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10037FDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::startDTMFTone(void **a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = 0;
  v6 = 0;
  ((*a1)[59])(&v5);
  if (v5)
  {
    (*(*v5 + 72))(v5, a2);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D1F4();
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10037FEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::stopDTMFTone(void **a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  ((*a1)[59])(&v3);
  if (v3)
  {
    (*(*v3 + 88))(v3);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D26C();
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_10037FFC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

std::string *IMSCallModel::setConfigForCall(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = (*(**(a1 + 80) + 16))(*(a1 + 80), *(a3 + 16));
  v9 = result;
  v10 = *(a3 + 167);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 152);
  }

  if (v10)
  {
    result = std::string::operator=((a2 + 8), (a3 + 144));
  }

  if (*a4)
  {
    v11 = (*(**(a1 + 128) + 264))(*(a1 + 128), a3);
    v12 = *v9;
    v13 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        *buf = 0;
        v14 = 2;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Starting call with RTT mode enabled", buf, 2u);
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      if (v13)
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Starting call with RTT mode disabled", v15, 2u);
      }

      v14 = 0;
    }

    return (*(**a4 + 40))(*a4, v14);
  }

  return result;
}

void IMSCallModel::answer(void **a1, const void **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  sub_1000BA468(&v10, a2);
  sub_1001DB8CC(&v10, __p);
  sub_1000475BC(&v10);
  v4 = *a1[94];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = __p;
    if (v12 < 0)
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Answering waiting call %s", buf, 0xCu);
  }

  v8 = 0;
  v9 = 0;
  ((*a1)[59])(&v8, a1, __p);
  if (v8)
  {
    v29 = 0u;
    v30 = 0u;
    v26 = 0;
    v18 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *buf = 0u;
    v19 = 0x40A7700000000000;
    v31 = 0;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    memset(v25, 0, sizeof(v25));
    v27 = 0;
    v28 = 0uLL;
    v6 = v9;
    v7[0] = v8;
    v7[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IMSCallModel::setConfigForCall(a1, buf, a2, v7);
    if (v6)
    {
      sub_100004A34(v6);
    }

    (*(*v8 + 24))(v8, &buf[8]);
    sub_1015F2488(buf);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D2E4();
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void IMSCallModel::dial(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  if (a6)
  {
    sub_100383228(a1 + 168, 0, 0, a3);
  }

  v15 = (*(**(a1 + 128) + 352))(*(a1 + 128), a3);
  v16 = **(a1 + 752);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = asString();
    sub_1000BA468(&v33, a3);
    printUuid();
    if (v35 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v19 = "normal";
    *buf = 136315650;
    if (v15)
    {
      v19 = "emergency";
    }

    *&buf[4] = v17;
    v37 = 2080;
    v38 = p_p;
    v39 = 2080;
    v40 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Dialing out %s call with uuid %s as %s setup call.", buf, 0x20u);
    if (v35 < 0)
    {
      operator delete(__p);
    }

    sub_1000475BC(&v33);
  }

  if (*(a3 + 436) == 1)
  {
    *buf = asString();
    sub_100184AD0(a4 + 10, buf);
  }

  v20 = *a2;
  if (v15)
  {
    {
      v22 = *(a2 + 8);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v32[0] = v21;
      v32[1] = v22;
      IMSCallModel::dialEmergencyCall(a1, a4, a5, v32, a7, a8);
      if (v22)
      {
        sub_100004A34(v22);
        v23 = v22;
LABEL_29:
        sub_100004A34(v23);
      }
    }

    else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176D390();
    }
  }

  {
    v25 = v24;
    v26 = *(a2 + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10000501C(buf, "");
    v27 = CallInfo::isEmergencyCallNormalSetup(a3);
    (*(*v25 + 128))(v25, a7, a4, buf, v27);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(*buf);
    }

    if (v26)
    {
      v23 = v26;
      goto LABEL_29;
    }
  }

  else if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176D354();
  }

  v28 = *a2;
  v29 = *(a2 + 8);
  v31[0] = v28;
  v31[1] = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000BA468(&v30, a3);
  sub_1001DB8CC(&v30, buf);
  IMSCallModel::addIMSCallForUuid(a1, v31, buf);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(*buf);
  }

  sub_1000475BC(&v30);
  if (v29)
  {
    sub_100004A34(v29);
  }
}

void sub_10038083C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    sub_100004A34(v24);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::dialEmergencyCall(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  (*(*a1 + 248))(v25);
  v12 = **(a1 + 752);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HIBYTE(v26);
    if (v26 < 0)
    {
      v13 = v25[1];
    }

    v14 = v25;
    if (v26 < 0)
    {
      v14 = v25[0];
    }

    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = "<invalid>";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I dialing out emergency call on personalityId :%s .", &buf, 0xCu);
  }

  v16 = isActive();
  buf = 0uLL;
  v34 = 0;
  if (v16)
  {
    v17 = HIBYTE(v26);
    if (v26 < 0)
    {
      v17 = v25[1];
    }

    v18 = v25;
    if (v26 < 0)
    {
      v18 = v25[0];
    }

    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = "<invalid>";
    }

    sub_10000501C(&buf, v19);
  }

  if ((*(a1 + 697) & 1) == 0)
  {
    if (SHIBYTE(v34) < 0)
    {
      operator delete(buf);
    }

    buf = 0uLL;
    v34 = 0;
    if (SHIBYTE(v26) < 0)
    {
      sub_100005F2C(__p, v25[0], v25[1]);
    }

    else
    {
      *__p = *v25;
      v24 = v26;
    }

    IMSCallModel::setPrefsForEmCall(a1, a3, __p, a6);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v20 = **(a1 + 752);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    p_buf = &buf;
    if (v34 < 0)
    {
      p_buf = buf;
    }

    v22 = *(a1 + 697);
    *v27 = 136315650;
    v28 = p_buf;
    v29 = 1024;
    v30 = v16;
    v31 = 1024;
    v32 = v22;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Carrier identifier in emergency dial: %s. [isSimActive: %d isIMSRegistered: %d]", v27, 0x18u);
  }

  (*(**a4 + 104))(*a4, a5, &buf, a2, a3);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(buf);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }
}

void sub_100380B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::setPrefsForEmCall(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    v18 = **(a1 + 752);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "SystemDeterminationManager is NULL!", buf, 2u);
    }

    goto LABEL_27;
  }

LABEL_11:
  *buf = 0;
  v29 = 0;
  (*(*v16 + 40))(buf, v16, a3);
  v19 = *buf;
  v20 = **(a1 + 752);
  if (*buf)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = *(a3 + 23);
      v22 = (v21 & 0x80u) != 0;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(a3 + 8);
      }

      if (v22)
      {
        v23 = *a3;
      }

      else
      {
        v23 = a3;
      }

      if (v21)
      {
        v24 = v23;
      }

      else
      {
        v24 = "<invalid>";
      }

      *v30 = 136315138;
      *&v30[4] = v24;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Setting IMS prefs on stack config for %s", v30, 0xCu);
      v19 = *buf;
    }

    *v30 = 0;
    (*(*v19 + 24))(v30, v19, a4, 0);
    v27 = 0;
    (*(**buf + 24))(&v27);
    v25 = *v30;
    v26 = v27;
    sub_1015F1FB4(a2 + 8);
    *(a2 + 8) = v25;
    *(a2 + 16) = v26;
    sub_1003823E4(a2 + 8);
    sub_10001021C(&v27);
    sub_10001021C(v30);
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    sub_10176C490();
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

LABEL_27:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void IMSCallModel::pullThumperCall(uint64_t a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v7 = *(a1 + 216);
  if (v7)
  {
    if (v7 == 1)
    {
      memset(buf, 0, sizeof(buf));
      v19 = 0;
      v9 = *(a1 + 208);
      if (*(v9 + 39) < 0)
      {
        sub_100005F2C(buf, *(v9 + 16), *(v9 + 24));
      }

      else
      {
        *buf = *(v9 + 16);
        v19 = *(v9 + 32);
      }

      v12 = **(a1 + 752);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = buf;
        if (v19 < 0)
        {
          v13 = *buf;
        }

        *__p = 136315138;
        *&__p[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Pulling call %s via replaces header", __p, 0xCu);
      }

      (*(**a2 + 136))(*a2, buf, a4);
    }

    else
    {
      v10 = **(a1 + 752);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Pulling call via replaces header but too many ids, letting IPT pick", buf, 2u);
      }

      v11 = *a2;
      sub_10000501C(buf, "");
      sub_10000501C(__p, "");
      (*(*v11 + 128))(v11, buf, a4, __p, 0);
      if (v21 < 0)
      {
        operator delete(*__p);
      }
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(*buf);
    }
  }

  v14 = *a2;
  v15 = a2[1];
  v17[0] = v14;
  v17[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000BA468(&v16, a3);
  sub_1001DB8CC(&v16, buf);
  IMSCallModel::addIMSCallForUuid(a1, v17, buf);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(*buf);
  }

  sub_1000475BC(&v16);
  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_10038118C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void IMSCallModel::hold(void **a1, const void **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  sub_1000BA468(&v7, a2);
  sub_1001DB8CC(&v7, __p);
  sub_1000475BC(&v7);
  v3 = *a1[94];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = __p;
    if (v9 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Holding call %s", buf, 0xCu);
  }

  *buf = 0uLL;
  ((*a1)[59])(&v5, a1, __p);
  sub_10037FC9C(&v5, buf);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*buf)
  {
    (*(**buf + 112))(*buf);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D3CC();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void IMSCallModel::resume(void **a1, const void **a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  sub_1000BA468(&v7, a2);
  sub_1001DB8CC(&v7, __p);
  sub_1000475BC(&v7);
  v3 = *a1[94];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = __p;
    if (v9 < 0)
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Resuming call %s", buf, 0xCu);
  }

  *buf = 0uLL;
  ((*a1)[59])(&v5, a1, __p);
  sub_10037FC9C(&v5, buf);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*buf)
  {
    (*(**buf + 120))(*buf);
  }

  else if (os_log_type_enabled(*a1[94], OS_LOG_TYPE_ERROR))
  {
    sub_10176D43C();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t IMSCallModel::setPersonalityInfo(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 120);
  *(a1 + 112) = v4;
  *(a1 + 120) = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = (*(*a1 + 256))(a1);
  result = (*(**(a1 + 80) + 16))(*(a1 + 80), v6);
  *(a1 + 752) = result;
  return result;
}

uint64_t IMSCallModel::fillUpDefaultCallCapabilities(IMSCallModel *this)
{
  v2 = **(this + 94);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Filling up default call capabilities", __p, 2u);
  }

  (*(*this + 528))(this, kMaxSupportedCallCountKey, 6);
  (*(*this + 528))(this, kMaxMultiPartyCallCountKey, 5);
  (*(*this + 528))(this, kSwappableKey, 1);
  (*(*this + 248))(__p, this);
  isMergeAllowed = IMSCallModel::isMergeAllowed(this, this + 12, __p);
  (*(*this + 528))(this, kMergeableKey, isMergeAllowed);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  (*(*this + 528))(this, kAmbiguousMultiPartyKey, 0);
  (*(*this + 528))(this, kAddCallAllowedKey, 1);
  (*(*this + 528))(this, kHoldAllowedKey, 1);
  (*(*this + 528))(this, kEndToneInProgressKey, 0);
  (*(*this + 528))(this, kEndAndAnswerAllowedKey, 1);
  (*(*this + 528))(this, kIsConferenceSideBarBlockedKey, 1);
  (*(*this + 528))(this, kVoicePrivacyKey, 0);
  (*(*this + 528))(this, kSendDTMFInBursts, 0);
  v4 = *(this + 16);
  v5 = (*(*this + 256))(this);
  return (*(*v4 + 200))(v4, v5);
}

void sub_100381AFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *IMSCallModel::setCallCapability(IMSCallModel *this, const char *a2, int a3)
{
  v5 = a2;
  v6 = &v5;
  result = sub_100383464(this + 728, &v5, &unk_101802C98, &v6);
  *(result + 10) = a3;
  return result;
}

uint64_t IMSCallModel::findCallCapability(IMSCallModel *this, const char *a2)
{
  v2 = *(this + 92);
  if (!v2)
  {
    return 0;
  }

  v3 = this + 736;
  do
  {
    v4 = *(v2 + 4);
    v5 = v4 >= a2;
    v6 = v4 < a2;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *&v2[8 * v6];
  }

  while (v2);
  if (v3 != this + 736 && *(v3 + 4) <= a2)
  {
    return *(v3 + 10);
  }

  else
  {
    return 0;
  }
}

void IMSCallModel::setLteEmergencySupport(uint64_t a1, unint64_t a2, int a3)
{
  v6 = **(a1 + 752);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Updating LTE emergency bearer support to: %s", &v7, 0xCu);
  }

  *(a1 + 760) = a2;
  *(a1 + 768) = a3;
}

void IMSCallModel::cancelBrandedCallingImageFetching(IMSCallModel *this)
{
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 98);
  if (v3)
  {
    v4 = *(*v3 + 32);

    v4();
  }

  else if (os_log_type_enabled(**(this + 94), OS_LOG_TYPE_ERROR))
  {
    sub_10176D4AC();
  }
}

uint64_t IMSCallModel::removeBrandedCallingImage(uint64_t a1)
{
  result = *(a1 + 784);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void IMSCallModel::setShouldShowBrandedCallingInfo(uint64_t this, int a2, char a3)
{
  *(this + 816) = a2;
  if (a2)
  {
    if ((a3 & 1) == 0)
    {
      sub_100413DEC(@"com.apple.CommCenter.BrandedCalling.userenables", @"com.apple.CommCenter.BrandedCalling");
    }
  }
}

void sub_100381D90(uint64_t a1)
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
        v6 = *(v5 + 11);
        *(v5 + 11) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        IMSCallModel::cancelBrandedCallingImageFetching(v5);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_100381E38(uint64_t result, uint64_t a2)
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

void sub_100381E54(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void IMSCallModel::reportBranding(uint64_t a1, uint64_t *a2, _BOOL4 a3, uint64_t a4)
{
  if (*a2)
  {
    v5 = a4;
    v32 = 0;
    v8 = xpc_dictionary_create(0, 0, 0);
    v9 = v8;
    if (v8)
    {
      v32 = v8;
    }

    else
    {
      v9 = xpc_null_create();
      v32 = v9;
      if (!v9)
      {
        v10 = xpc_null_create();
        v9 = 0;
        goto LABEL_11;
      }
    }

    if (xpc_get_type(v9) == &_xpc_type_dictionary)
    {
      xpc_retain(v9);
LABEL_12:
      xpc_release(v9);
      v30 = xpc_BOOL_create(a3);
      if (!v30)
      {
        v30 = xpc_null_create();
      }

      __p[0] = &v32;
      __p[1] = "is_branded_call";
      sub_10000F688(__p, &v30, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v30);
      v30 = 0;
      if (a3)
      {
        v11 = **(a1 + 752);
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (v5)
        {
          if (v12)
          {
            v13 = *a2;
            if (*(*a2 + 55) < 0)
            {
              sub_100005F2C(__p, *(v13 + 32), *(v13 + 40));
            }

            else
            {
              *__p = *(v13 + 32);
              v29 = *(v13 + 48);
            }

            v15 = SHIBYTE(v29);
            v16 = __p[0];
            v17 = asString();
            v18 = __p;
            if (v15 < 0)
            {
              v18 = v16;
            }

            *buf = 136315394;
            v34 = v18;
            v35 = 2080;
            v36 = v17;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I branding failed for call %s err %s", buf, 0x16u);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }
          }

          v24 = xpc_BOOL_create(0);
          if (!v24)
          {
            v24 = xpc_null_create();
          }

          __p[0] = &v32;
          __p[1] = "is_image_displayed";
          sub_10000F688(__p, &v24, &v25);
          xpc_release(v25);
          v25 = 0;
          xpc_release(v24);
          v24 = 0;
          v22 = xpc_int64_create(v5);
          if (!v22)
          {
            v22 = xpc_null_create();
          }

          __p[0] = &v32;
          __p[1] = "branded_call_failure_reason";
          sub_10000F688(__p, &v22, &v23);
          xpc_release(v23);
          v23 = 0;
          xpc_release(v22);
          v22 = 0;
        }

        else
        {
          if (v12)
          {
            v14 = *a2;
            if (*(*a2 + 55) < 0)
            {
              sub_100005F2C(__p, *(v14 + 32), *(v14 + 40));
            }

            else
            {
              *__p = *(v14 + 32);
              v29 = *(v14 + 48);
            }

            v19 = __p;
            if (v29 < 0)
            {
              v19 = __p[0];
            }

            *buf = 136315138;
            v34 = v19;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I branding success for call %s", buf, 0xCu);
            if (SHIBYTE(v29) < 0)
            {
              operator delete(__p[0]);
            }
          }

          v26 = xpc_BOOL_create(1);
          if (!v26)
          {
            v26 = xpc_null_create();
          }

          __p[0] = &v32;
          __p[1] = "is_image_displayed";
          sub_10000F688(__p, &v26, &v27);
          xpc_release(v27);
          v27 = 0;
          xpc_release(v26);
          v26 = 0;
        }
      }

      v21 = v32;
      if (v32)
      {
        xpc_retain(v32);
      }

      else
      {
        v21 = xpc_null_create();
      }

      ims::addCallEndInfo(&v21, v20);
      xpc_release(v21);
      v21 = 0;
      xpc_release(v32);
      return;
    }

    v10 = xpc_null_create();
LABEL_11:
    v32 = v10;
    goto LABEL_12;
  }

  if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
  {
    sub_10176D4E8();
  }
}

void sub_1003822F4(uint64_t a1)
{
  sub_100382434(a1);

  operator delete();
}

void sub_100382334(uint64_t a1)
{
  sub_100382434(a1 - 8);

  operator delete();
}

void sub_100382370(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        sub_1000BFE80((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

CFTypeRef sub_1003823E4(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRetain(v2);
  }

  result = *(a1 + 8);
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t sub_100382434(uint64_t a1)
{
  *a1 = off_101E45FE0;
  *(a1 + 8) = off_101E46248;
  v2 = *(a1 + 808);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 792);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10006DCAC(a1 + 728, *(a1 + 736));
  sub_1002472DC(a1 + 704, *(a1 + 712));
  if (*(a1 + 695) < 0)
  {
    operator delete(*(a1 + 672));
  }

  sub_1000BFE80(a1 + 232);
  sub_1001754E8((a1 + 192));
  sub_100382370((a1 + 168));
  v4 = *(a1 + 152);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  IMSCallModelInterface::~IMSCallModelInterface(a1);
  v9 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 72));
  sub_1000C0544((a1 + 40));
  return a1;
}

uint64_t sub_1003825B0(uint64_t result, uint64_t a2)
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

void sub_1003825CC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

const void **sub_1003825DC(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1000D3314(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    sub_100382848();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100022D3C(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_100382824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1001758B4(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003828E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001758B4(v3, v2);
  _Unwind_Resume(a1);
}

const void **sub_100382900(void *a1, uint64_t *a2)
{
  result = sub_10031B7D4(a1, a2);
  if (result)
  {
    sub_100382938(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_100382938(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100120C90(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_1001758B4(&v6, v3);
  }

  return v2;
}

void sub_100382A04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10176D524(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100382A20(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100382A58(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100382A88(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100382AC8(void *a1)
{
  *a1 = off_101E46518;
  v2 = a1[59];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000BFE80((a1 + 3));
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100382B28(void *a1)
{
  *a1 = off_101E46518;
  v2 = a1[59];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000BFE80((a1 + 3));
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_100382C40(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100382C60(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = off_101E46518;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_100E03FE8((a2 + 3), (a1 + 3));
  v7 = a1[59];
  a2[58] = a1[58];
  a2[59] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100382CDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100382CF4(uint64_t a1)
{
  v2 = *(a1 + 472);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000BFE80(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100382D4C(void *a1)
{
  v2 = a1[59];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000BFE80((a1 + 3));
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_100382DA0(uint64_t a1, uint64_t a2, char *a3)
{
  v12 = *a3;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    v11 = v6;
    if (v6)
    {
      v7 = *(a1 + 8);
      v10 = v7;
      if (!v7)
      {
        goto LABEL_8;
      }

      v9[0] = &v10;
      v9[1] = a2;
      v9[2] = a1 + 464;
      v9[3] = &v12;
      v9[4] = a1 + 24;
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = sub_100382ED0;
      block[3] = &unk_101E46588;
      block[4] = v7 + 40;
      block[5] = v9;
      v8 = *(v7 + 56);
      if (*(v7 + 64))
      {
        dispatch_async_and_wait(v8, block);
      }

      else
      {
        dispatch_sync(v8, block);
      }

      v6 = v11;
      if (v11)
      {
LABEL_8:
        sub_100004A34(v6);
      }
    }
  }
}

uint64_t sub_100382E84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_100382ED0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **(**v1 + 752);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v1[1];
    if (*(v3 + 23) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Incoming call branded calling info: company image filepath is %s", buf, 0xCu);
  }

  v4 = v1[1];
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    if (v4[1] != 6)
    {
      goto LABEL_19;
    }

    v4 = *v4;
  }

  else if (v5 != 6)
  {
    goto LABEL_19;
  }

  v6 = *v4;
  v7 = *(v4 + 2);
  if (v6 == 1869902639 && v7 == 27491)
  {
    v9 = **v1;
    v10 = v1[2];
    v12 = *v10;
    v11 = v10[1];
    v14 = v12;
    v15 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v9 + 312))(v9, &v14, 1, *v1[3]);
    if (v15)
    {
      sub_100004A34(v15);
    }
  }

LABEL_19:
  v35 = 0;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
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
  *buf = 0u;
  sub_100E03FE8(buf, v1[4]);
  std::string::operator=(v34, v1[1]);
  BYTE9(v24) = 0;
  (*(**(**v1 + 128) + 88))(*(**v1 + 128), buf);
  return sub_1000BFE80(buf);
}

void sub_1003830E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100383110(uint64_t a1)
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

uint64_t sub_100383190(uint64_t a1, uint64_t a2)
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

uint64_t sub_100383298(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10011CF40(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1003825DC(a1, i + 2, (i + 2));
  }

  return a1;
}

char *sub_100383310(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1003833C4();
  }

  return v5;
}

void *sub_100383464(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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
      v7 = v4[4];
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

void *sub_100383538(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100383590(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100383590(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100383618(v5, (v5 + 8), v4 + 4, v4 + 2);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_100383618(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_10010CB50(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void LazuliProvisioningServerWrapper::LazuliProvisioningServerWrapper(uint64_t a1, uint64_t a2)
{
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "lazuli.prov.svr");
  sub_1001303E4((a1 + 8), (a2 + 24), &v4);
  ctu::OsLogContext::~OsLogContext(&v4);
  v5[0] = off_101E2B528;
  v5[1] = sub_1003839A0;
  v5[3] = v5;
  sub_1003839CC((a1 + 48), a2 + 8, v5);
  sub_1000A8744(v5);
  *a1 = off_101E465E0;
  *(a1 + 56) = *a2;
  sub_10038E0A0(a1 + 64, a2);
  *(a1 + 208) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 212) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 244) = 0u;
  *(a1 + 260) = 0;
  *(a1 + 264) = a1 + 272;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  sub_10038E918();
}

void sub_100383890(_Unwind_Exception *a1)
{
  if (*(v1 + 359) < 0)
  {
    operator delete(*(v1 + 336));
  }

  v4 = *(v1 + 328);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(v1 + 312);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(v1 + 296);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_1000DD0AC(v1 + 264, *(v1 + 272));
  v7 = *(v1 + 256);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(v1 + 240);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(v1 + 224);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_10038E1FC(v2);
  v10 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 40));
  sub_1000C0544((v1 + 8));
  _Unwind_Resume(a1);
}

const char *sub_1003839A0(int a1)
{
  v1 = "lazuli.prov.svr.??";
  if (a1 == 2)
  {
    v1 = "lazuli.prov.svr.2";
  }

  if (a1 == 1)
  {
    return "lazuli.prov.svr.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_1003839CC(capabilities::ct *a1, uint64_t a2, uint64_t a3)
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

void sub_100383B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

void LazuliProvisioningServerWrapper::~LazuliProvisioningServerWrapper(LazuliProvisioningServerWrapper *this)
{
  *this = off_101E465E0;
  sub_10038EE14(this + 48, 0);
  v2 = *(this + 46);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(this + 359) < 0)
  {
    operator delete(*(this + 42));
  }

  v3 = *(this + 41);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 39);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 37);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1000DD0AC(this + 264, *(this + 34));
  v6 = *(this + 32);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 30);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 28);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_10038E1FC(this + 64);
  v9 = *(this + 6);
  *(this + 6) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  LazuliProvisioningServerWrapper::~LazuliProvisioningServerWrapper(this);

  operator delete();
}

void LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(LazuliProvisioningServerWrapper *this@<X0>, uint64_t a2@<X8>)
{
  *__p = 0u;
  v17 = 0u;
  v4 = *(this + 45);
  if (!v4[9])
  {
    v7 = v4[15];
    if (v7)
    {
      v20 = 0;
      *buf = 0uLL;
      v19 = 0uLL;
      sub_100A2B1E4(v7, buf);
      v8 = v20;
      if (v20 == 1)
      {
        sub_1001696A4(__p, &buf[8]);
        v8 = v20;
      }

      if ((v8 & 1) != 0 && SHIBYTE(v19) < 0)
      {
        operator delete(*&buf[8]);
      }

      memset(buf, 0, sizeof(buf));
      *&v19 = 0;
      sub_100A2B1F0(*(*(this + 45) + 120), buf);
    }

    else
    {
      v9 = v4[13];
      if (!v9)
      {
        v14 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = (this + 128);
          if (*(this + 151) < 0)
          {
            v15 = *v15;
          }

          *buf = 136446210;
          *&buf[4] = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] No token version/token in full or refresh xml", buf, 0xCu);
        }

        sub_10098F8C8(*(this + 45));
        v12 = 0;
        v13 = 0;
        v11 = 0;
        goto LABEL_27;
      }

      v20 = 0;
      *buf = 0uLL;
      v19 = 0uLL;
      sub_1006491E8(v9, buf);
      v10 = v20;
      if (v20 == 1)
      {
        sub_1001696A4(__p, &buf[8]);
        v10 = v20;
      }

      if ((v10 & 1) != 0 && SHIBYTE(v19) < 0)
      {
        operator delete(*&buf[8]);
      }

      memset(buf, 0, sizeof(buf));
      *&v19 = 0;
      sub_1006491F4(*(*(this + 45) + 104), buf);
    }

    v11 = v19;
    if (v19)
    {
      v12 = buf[0];
    }

    else
    {
      v12 = 0;
    }

    if (v19)
    {
      v13 = *buf & 0xFFFFFF00;
    }

    else
    {
      v13 = 0;
    }

LABEL_27:
    sub_10006F264(a2, __p);
    *(a2 + 32) = v13 | v12 | (v11 << 32);
    goto LABEL_28;
  }

  v5 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (this + 128);
    if (*(this + 151) < 0)
    {
      v6 = *v6;
    }

    *buf = 136446210;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] No token version retrieved because of unauthorized XML", buf, 0xCu);
  }

  sub_10006F264(a2, __p);
  *(a2 + 32) = 0;
LABEL_28:
  if (BYTE8(v17) == 1 && SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100383F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a23 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningServerWrapper::response511(uint64_t a1, __int128 *a2, int a3, int a4)
{
  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    v7 = *(a2 + 1);
    if (!a3)
    {
      goto LABEL_11;
    }
  }

  else if (!a3)
  {
    goto LABEL_11;
  }

  if (!v7)
  {
    goto LABEL_6;
  }

LABEL_11:
  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v15 = *v15;
    }

    v16 = *(a2 + 23);
    if (v16 < 0)
    {
      v16 = *(a2 + 1);
    }

    if (v16)
    {
      v17 = "with cookie";
    }

    else
    {
      v17 = "with secure attempt request";
    }

    *__p = 136446466;
    *&__p[4] = v15;
    *&__p[12] = 2080;
    *&__p[14] = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Received 511 response: %s", __p, 0x16u);
  }

  v18 = *(a1 + 288);
  if (v18)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a2, *(a2 + 1));
    }

    else
    {
      __dst = *a2;
    }

    v36 = 1;
    sub_100415934(v18, &__dst);
    if (v36 == 1 && SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      v20 = __dst.__r_.__value_.__r.__words[0];
LABEL_53:
      operator delete(v20);
      return;
    }

    return;
  }

  v19 = *(a1 + 304);
  if (!v19)
  {
    v28 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
    {
      sub_10176D548();
    }

LABEL_6:
    if (a4)
    {
      return;
    }

    v8 = sub_1007639AC(*(a1 + 320));
    v9 = sub_100763934(*(a1 + 320));
    v10 = *(a1 + 64);
    sub_10000501C(__p, "Response 511");
    sub_100A9B39C(a1 + 72, v10, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v11 = *(a1 + 320);
    v12 = (a1 + 151);
    v13 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
    }

    else
    {
      *__p = *v13;
      *&__p[16] = *(a1 + 144);
    }

    v21 = sub_10075E230(v11, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v29 = a1 + 128;
      if (*v12 < 0)
      {
        v29 = *v13;
      }

      v30 = CSIBOOLAsString(v21);
      v31 = CSIBOOLAsString(v8);
      v32 = CSIBOOLAsString(v9);
      *__p = 136446978;
      *&__p[4] = v29;
      *&__p[12] = 2080;
      *&__p[14] = v30;
      *&__p[22] = 2080;
      v38 = v31;
      v39 = 2080;
      v40 = v32;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}s] Server folder deletion status: %s, contained full xml: %s, contained refresh xml: %s", __p, 0x2Au);
    }

    v23 = *(a1 + 120);
    if (v23)
    {
      v24 = std::__shared_weak_count::lock(v23);
      if (v24)
      {
        v25 = *(a1 + 112);
        if (v25)
        {
          if ((v8 & v21) != 1)
          {
            *__p = 1;
            LazuliProvisioningServerWrapper::failedFatally(a1, __p);
          }

          v26 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            if (*v12 < 0)
            {
              v13 = *v13;
            }

            *__p = 136446210;
            *&__p[4] = v13;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Full XML was deleted. Provisioning will be retried", __p, 0xCu);
          }

          LazuliProvisioningServerWrapper::resetRetryTimer(a1);
          (*(*v25 + 184))(v25, *(a1 + 56));
          goto LABEL_55;
        }
      }
    }

    else
    {
      v24 = 0;
    }

    v27 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
    {
      sub_10176D5B8();
    }

    if (!v24)
    {
      return;
    }

LABEL_55:
    sub_100004A34(v24);
    return;
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v33, *a2, *(a2 + 1));
  }

  else
  {
    *v33 = *a2;
    v34 = *(a2 + 2);
  }

  sub_10078A190(v19, v33);
  if (SHIBYTE(v34) < 0)
  {
    v20 = v33[0];
    goto LABEL_53;
  }
}

char *LazuliProvisioningServerWrapper::getName@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[151] < 0)
  {
    return sub_100005F2C(a2, *(this + 16), *(this + 17));
  }

  *a2 = *(this + 8);
  *(a2 + 16) = *(this + 18);
  return this;
}

uint64_t *LazuliProvisioningServerWrapper::resetRetryTimer(LazuliProvisioningServerWrapper *this)
{
  result = *(this + 48);
  if (result)
  {
    sub_1004633F0(result, 2);
    sub_1004639A0(*(this + 48));

    return sub_10038EE14(this + 48, 0);
  }

  return result;
}

void LazuliProvisioningServerWrapper::failedFatally(uint64_t a1, int *a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void *LazuliProvisioningServerWrapper::getCurrentConfig(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 14);
      if (v5)
      {
        v6 = (*(*v5 + 112))(v5, *(this + 14));
        sub_100004A34(v4);
        return v6;
      }

      sub_100004A34(v4);
    }
  }

  return GetDefaultLazuliProvisioningInitializer();
}

uint64_t LazuliProvisioningServerWrapper::isPushEnabled(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 15);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 14);
    if (v5)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      v13 = 0u;
      memset(v12, 0, sizeof(v12));
      v6 = (*(*v5 + 112))(v5, *(this + 14));
      sub_10038E288(v12, v6);
      v7 = BYTE5(v13) & BYTE6(v13);
      sub_10038E4E4(v12);
    }

    else
    {
      v7 = 0;
    }

    sub_100004A34(v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = (this + 128);
    if (*(this + 151) < 0)
    {
      v9 = *v9;
    }

    v10 = "dis";
    if (v7)
    {
      v10 = "en";
    }

    LODWORD(v12[0]) = 136446466;
    *(v12 + 4) = v9;
    WORD6(v12[0]) = 2080;
    *(v12 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Push evaluated as %sabled", v12, 0x16u);
  }

  return v7 & 1;
}

void LazuliProvisioningServerWrapper::submitMetricForPhase(unsigned int *a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6)
{
  *(&v48 + 1) = a6;
  v49[0] = a3;
  *&v48 = a5;
  v7 = *(a1 + 15);
  if (v7)
  {
    v10 = std::__shared_weak_count::lock(v7);
    if (v10)
    {
      v11 = *(a1 + 14);
      if (v11)
      {
        v47 = 0;
        memset(__dst, 0, sizeof(__dst));
        v12 = (*(*v11 + 112))(v11, a1[14]);
        sub_10038E288(__dst, v12);
        v45 = sub_100A9C85C(&__dst[51]);
        v13 = *(a1 + 10);
        v43 = *(a1 + 9);
        v44 = v13;
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = sub_100A94378();
        v15 = *(a1 + 49);
        if (v44)
        {
          sub_100004A34(v44);
        }

        if ((*(*a1 + 24))(a1))
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        v42 = v16;
        __p = 0uLL;
        v41 = 0;
        v17 = *(a1 + 15);
        if (v17)
        {
          v18 = std::__shared_weak_count::lock(v17);
          if (v18)
          {
            v19 = v18;
            v20 = *(a1 + 14);
            if (v20)
            {
              (*(*v20 + 208))(&v32);
              if (SHIBYTE(v41) < 0)
              {
                operator delete(__p);
              }

              __p = v32;
              v41 = v33;
            }

            sub_100004A34(v19);
          }
        }

        v21 = *(a1 + 13);
        if (v21)
        {
          v22 = std::__shared_weak_count::lock(v21);
          if (v22)
          {
            v23 = v22;
            v24 = *(a1 + 12);
            if (v24)
            {
              (*(*v24 + 104))(v24);
            }

            sub_100004A34(v23);
          }
        }

        v39 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        *v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        v31 = a1[95] + a1[94];
        v30 = v14 - v15;
        if (*(a1 + 36))
        {
          v25 = 1;
        }

        else
        {
          v25 = 2 * (*(a1 + 38) != 0);
        }

        v29 = v25;
        LOBYTE(v28) = 0;
        BYTE4(v28) = 0;
        v27 = 0;
        v26 = 0uLL;
        sub_1007025A0(&v32, a2, v49, &v45, &v31, &v30, &v42, &v29, a4, &v28, &v48, &__p, &v26);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26);
        }

        operator new();
      }

      sub_100004A34(v10);
    }
  }
}

void sub_100384D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_100004A34(v53);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a53);
  sub_100004A34(a14);
  _Unwind_Resume(a1);
}

uint64_t sub_100384E80(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return a1;
}

void LazuliProvisioningServerWrapper::submitMetricForReceivedXml(uint64_t a1, _DWORD *a2, _DWORD *a3, void *a4, uint64_t a5)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = *(a1 + 112);
      if (v12)
      {
        v49 = 0;
        memset(v48, 0, sizeof(v48));
        v13 = (*(*v12 + 112))(v12, *(a1 + 56));
        sub_10038E288(v48, v13);
        v47 = sub_100A9C85C(&v48[12] + 3);
        v14 = *(a1 + 80);
        v45 = *(a1 + 72);
        v46 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v26 = sub_100A94378();
        v25 = *(a1 + 392);
        if (v46)
        {
          sub_100004A34(v46);
        }

        if ((*(*a1 + 24))(a1))
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        v44 = v15;
        __p[0] = 0;
        __p[1] = 0;
        v43 = 0;
        v16 = *(a1 + 120);
        if (v16)
        {
          v17 = std::__shared_weak_count::lock(v16);
          if (v17)
          {
            v18 = v17;
            v19 = *(a1 + 112);
            if (v19)
            {
              (*(*v19 + 208))(&v34, *(a1 + 112), *(a1 + 56));
              if (SHIBYTE(v43) < 0)
              {
                operator delete(__p[0]);
              }

              *__p = v34;
              v43 = v35;
              (*(*v19 + 112))(v19, *(a1 + 56));
              LazuliProvisioningServerWrapper::isPushEnabled(a1);
              if (LazuliProvisioningServerWrapper::isPushEnabled(a1))
              {
                (*(*v19 + 112))(v19, *(a1 + 56));
              }
            }

            sub_100004A34(v18);
          }
        }

        v20 = *(a1 + 104);
        if (v20)
        {
          v21 = std::__shared_weak_count::lock(v20);
          if (v21)
          {
            v22 = v21;
            v23 = *(a1 + 96);
            if (v23)
            {
              (*(*v23 + 104))(v23);
            }

            sub_100004A34(v22);
          }
        }

        v41 = 0;
        v39 = 0u;
        *v40 = 0u;
        v37 = 0u;
        *v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        LODWORD(v33) = 200;
        v24 = 1;
        BYTE4(v33) = 1;
        v32 = *(a1 + 380) + *(a1 + 376);
        v31 = v26 - v25;
        if (!*(a1 + 288))
        {
          v24 = 2 * (*(a1 + 304) != 0);
        }

        v30 = v24;
        LOBYTE(v29) = 0;
        BYTE8(v29) = 0;
        if (*(a5 + 24) == 1)
        {
          if (*(a5 + 23) < 0)
          {
            sub_100005F2C(__dst, *a5, *(a5 + 8));
          }

          else
          {
            *__dst = *a5;
            v28 = *(a5 + 16);
          }
        }

        else
        {
          sub_10000501C(__dst, "");
        }

        sub_1007025A0(&v34, a2, &v33, &v47, &v32, &v31, &v44, &v30, a3, a4, &v29, __p, __dst);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(__dst[0]);
        }

        operator new();
      }

      sub_100004A34(v11);
    }
  }
}

void sub_10038538C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a53 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a59);
  sub_100004A34(v59);
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::triggerABCForXml(uint64_t a1, const std::string *a2)
{
  v4 = (a1 + 72);
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  __p[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __p);
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
        goto LABEL_14;
      }

      goto LABEL_10;
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
    goto LABEL_14;
  }

LABEL_10:
  if (sub_100A951A8() <= 1799 && ((*(*v13 + 32))(v13) & 1) != 0)
  {
    if (v14)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_14:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v15 = *(a1 + 64);
  std::operator+<char>();
  sub_100A9B39C(v4, v15, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100A9B9EC(v4);
  v16 = Registry::getServiceMap(*v4);
  v17 = v16;
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

  std::mutex::lock(v16);
  __p[0] = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, __p);
  if (v22)
  {
    v23 = v22[3];
    v12 = v22[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v24 = 0;
      if (!v23)
      {
        goto LABEL_46;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v17);
  v12 = 0;
  v24 = 1;
  if (!v23)
  {
    goto LABEL_46;
  }

LABEL_27:
  memset(&__p[1], 0, 32);
  v36 = 0x600000000000000;
  *&v37[8] = 0u;
  v41 = 0u;
  v40 = 0u;
  memset(&v38, 0, sizeof(v38));
  v39 = 23;
  qmemcpy(&__p[2] + 7, "\tLazuli", 7);
  LOBYTE(__p[1]) = 121;
  __p[0] = *"Telephony";
  v37[23] = 22;
  qmemcpy(v37, "AcsDebugMessageHTTP200", 22);
  std::string::operator=(&v38, a2);
  v42 = &v39;
  v43 = 0;
  sub_1001E9F04(&v42, 5uLL);
  v39 |= 5uLL;
  sub_100D9EC48(__dst, __p);
  v45 = 0;
  (*(*v23 + 16))(v23, __dst, v44);
  sub_10010DF14(v44);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(__dst[0]);
  }

  if (SBYTE7(v41) < 0)
  {
    operator delete(v40);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if ((v37[23] & 0x80000000) != 0)
  {
    operator delete(*v37);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[3]);
  }

  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
LABEL_46:
    if (v24)
    {
      return;
    }

    goto LABEL_47;
  }

  operator delete(__p[0]);
  if (v24)
  {
    return;
  }

LABEL_47:
  sub_100004A34(v12);
}

void sub_100385884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if ((v33 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningServerWrapper::handleXml(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, const std::string *a7)
{
  v60 = 0u;
  v61 = 0u;
  sub_10000501C(&__p, "Content-Type");
  v12 = sub_10038F068(a4, &__p);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__p);
  }

  if (a4 + 8 != v12)
  {
    sub_1001696A4(&v60, (v12 + 56));
  }

  if (BYTE8(v61) != 1)
  {
    goto LABEL_13;
  }

  v13 = strlen("text/html");
  v14 = v13;
  if ((SBYTE7(v61) & 0x8000000000000000) != 0)
  {
    if (v13 != *(&v60 + 1))
    {
      goto LABEL_13;
    }

    if (v13 == -1)
    {
      sub_10013C334();
    }

    v15 = v60;
  }

  else
  {
    if (v13 != SBYTE7(v61))
    {
      goto LABEL_13;
    }

    v15 = &v60;
  }

  if (memcmp(v15, "text/html", v14))
  {
LABEL_13:
    bzero(&__p, 0x4D8uLL);
    v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    sub_100463BEC((a1 + 72), v16, a2, &__p);
    if ((v58 & 1) == 0)
    {
      v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
      {
        sub_10176D638();
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 0;
      *buf = 255;
      buf[4] = 1;
      v42[0] = 0;
      v42[24] = 0;
      LazuliProvisioningServerWrapper::submitMetricForReceivedXml(a1, a5, &__dst, buf, v42);
      goto LABEL_25;
    }

    v41 = a1;
    if (v51 != 1)
    {
      if (v48 == 1)
      {
        switch(v47)
        {
          case 0xFFFFFFFFFFFFFFFELL:
            v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              v30 = (a1 + 128);
              if (*(a1 + 151) < 0)
              {
                v30 = *v30;
              }

              *buf = 136446210;
              *&buf[4] = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] User interaction required XML received (-2)", buf, 0xCu);
            }

            *&v38.__r_.__value_.__l.__data_ = v47;
            *&v37.__r_.__value_.__l.__data_ = 0uLL;
            sub_10038F708();
          case 0xFFFFFFFFFFFFFFFFLL:
            v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v28 = (a1 + 128);
              if (*(a1 + 151) < 0)
              {
                v28 = *v28;
              }

              *buf = 136446210;
              *&buf[4] = v28;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Banned XML received (-1)", buf, 0xCu);
            }

            *&v38.__r_.__value_.__l.__data_ = v47;
            *&v37.__r_.__value_.__l.__data_ = 0uLL;
            sub_10038F528();
          case 0:
            *&v38.__r_.__value_.__l.__data_ = __PAIR128__(*(&v47 + 1), 0);
            v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = (a1 + 128);
              if (*(a1 + 151) < 0)
              {
                v21 = *v21;
              }

              *buf = 136446722;
              *&buf[4] = v21;
              *&buf[12] = 2048;
              *&buf[14] = v38.__r_.__value_.__r.__words[0];
              *&buf[22] = 2048;
              *&buf[24] = v38.__r_.__value_.__l.__size_;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Unauthorized XML received: [version: %ld] [validity: %ld]", buf, 0x20u);
            }

            *&v37.__r_.__value_.__l.__data_ = 0uLL;
            sub_10038F348();
        }

        if ((v46 & v48) == 1 && (v53 & 1) == 0)
        {
          v34 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = (a1 + 128);
            if (*(a1 + 151) < 0)
            {
              v35 = *v35;
            }

            *buf = 136446210;
            *&buf[4] = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Refresh XML received", buf, 0xCu);
          }

          memset(&buf[8], 0, 40);
          *buf = __p;
          if (SHIBYTE(v45) < 0)
          {
            sub_100005F2C(&buf[8], v44, *(&v44 + 1));
          }

          else
          {
            *&buf[8] = v44;
            *&buf[24] = v45;
          }

          *&buf[32] = v47;
          v39 = 0;
          v40 = 0;
          sub_10038F8E8();
        }
      }

      if (v53 == 1 && v57 == 1)
      {
        v31 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = (a1 + 128);
          if (*(a1 + 151) < 0)
          {
            v32 = *v32;
          }

          *buf = 136446210;
          *&buf[4] = v32;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Full config XML received", buf, 0xCu);
        }

        if (a7[1].__r_.__value_.__s.__data_[0] == 1)
        {
          LazuliProvisioningServerWrapper::triggerABCForXml(a1, a7);
        }

        *&v38.__r_.__value_.__l.__data_ = 0uLL;
        if (v58)
        {
          sub_10038FAC8();
        }

        sub_1000D1644();
      }

      LODWORD(__dst.__r_.__value_.__l.__data_) = 9;
      buf[0] = 0;
      buf[4] = 0;
      v36[0] = 0;
      v36[24] = 0;
      LazuliProvisioningServerWrapper::submitMetricForReceivedXml(a1, a5, &__dst, buf, v36);
      v33 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
      {
        sub_10176D6A8();
      }

      goto LABEL_25;
    }

    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v18 = *v18;
      }

      *buf = 136446210;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Access control XML received", buf, 0xCu);
    }

    if ((*(*a1 + 24))(a1))
    {
      if (v48)
      {
        *&v38.__r_.__value_.__l.__data_ = 0uLL;
        sub_10038F158();
      }

      *buf = 18;
      LazuliProvisioningServerWrapper::submitMetricForPhase(a1, a5, 0, buf, 0, 0);
      v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v26 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v26 = *v26;
      }

      *buf = 136446210;
      *&buf[4] = v26;
      v24 = "#I [%{public}s] Access control XML ignored from server - no version";
    }

    else
    {
      *buf = 17;
      LazuliProvisioningServerWrapper::submitMetricForPhase(a1, a5, 0, buf, 0, 0);
      v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_25;
      }

      v23 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v23 = *v23;
      }

      *buf = 136446210;
      *&buf[4] = v23;
      v24 = "#I [%{public}s] Access control XML ignored from server - Not a default server";
    }

    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
LABEL_25:
    if (v58 == 1)
    {
      if (v57 == 1)
      {
        sub_10038E6A4(&v56);
      }

      if (v55 == 1)
      {
        sub_100009970(v54, v54[1]);
      }

      if (v53 == 1)
      {
        sub_10038E7C0(&v52);
      }

      if (v51 == 1)
      {
        *buf = &v50;
        sub_1002CB430(buf);
        sub_100009970(v49, v49[1]);
      }

      if (v46 == 1 && SHIBYTE(v45) < 0)
      {
        operator delete(v44);
      }
    }

    goto LABEL_53;
  }

  v25 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
  {
    sub_10176D788();
  }

  *buf = 0;
  LODWORD(__p) = 255;
  BYTE4(__p) = 1;
  v59[0] = 0;
  v59[24] = 0;
  LazuliProvisioningServerWrapper::submitMetricForReceivedXml(a1, a5, buf, &__p, v59);
LABEL_53:
  if (BYTE8(v61) == 1 && SBYTE7(v61) < 0)
  {
    operator delete(v60);
  }
}

void sub_100387300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  if (a36)
  {
    sub_100004A34(a36);
  }

  if (*(v58 - 113) < 0)
  {
    operator delete(*(v58 - 136));
  }

  sub_10038E5E8(&a58);
  if (*(v58 - 200) == 1 && *(v58 - 201) < 0)
  {
    operator delete(*(v58 - 224));
  }

  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::startUnauthorizedXmlTimer(LazuliProvisioningServerWrapper *this, uint64_t a2)
{
  sub_100004AA0(&v3, this + 1);
  v2 = *(&v3 + 1);
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  sub_10038FCA8();
}

void sub_1003877E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10002B644(va);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

void sub_10038782C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 320);
  if (*(*a1 + 151) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 128), *(v1 + 136));
  }

  else
  {
    *__dst = *(v1 + 128);
    v17 = *(v1 + 144);
  }

  v3 = sub_100579D70();
  sub_10000501C(__p, v3);
  sub_10075E5D0(v2, __dst, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  v4 = *(v1 + 360);
  v5 = *(v4 + 80);
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(v1 + 320);
  if (*(v1 + 151) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 128), *(v1 + 136));
  }

  else
  {
    *__dst = *(v1 + 128);
    v17 = *(v1 + 144);
  }

  v7 = sub_100B39268();
  sub_10000501C(__p, v7);
  sub_10075E5D0(v6, __dst, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = *(v1 + 360);
  v9 = *(v8 + 160);
  *(v8 + 152) = 0;
  *(v8 + 160) = 0;
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(v1 + 320);
  if (*(v1 + 151) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 128), *(v1 + 136));
  }

  else
  {
    *__dst = *(v1 + 128);
    v17 = *(v1 + 144);
  }

  v11 = sub_1008D71AC();
  sub_10000501C(__p, v11);
  sub_10075E5D0(v10, __dst, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  v12 = *(v1 + 360);
  v13 = *(v12 + 96);
  *(v12 + 88) = 0;
  *(v12 + 96) = 0;
  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_1003879D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliProvisioningServerWrapper::getWebHelperInitializer@<X0>(LazuliProvisioningServerWrapper *this@<X0>, uint64_t a2@<X8>)
{
  v27[0] = 0;
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v27[1] = 1;
  memset(&v27[2], 0, 30);
  *&v27[28] = -1;
  memset(&v28, 0, sizeof(v28));
  v4 = *(this + 15);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 14);
      if (v7)
      {
        v8 = (*(*v7 + 112))(v7, *(this + 14));
        std::string::operator=(v23, v8);
        std::string::operator=(&v23[1], (v8 + 24));
        std::string::operator=(v24, (v8 + 48));
        std::string::operator=(&v24[1], (v8 + 72));
        std::string::operator=(v25, (v8 + 96));
        std::string::operator=(&v25[1], (v8 + 120));
        std::string::operator=(v26, (v8 + 144));
        std::string::operator=(&v26[1], (v8 + 168));
        v9 = *(v8 + 208);
        *v27 = *(v8 + 192);
        *&v27[16] = v9;
        std::string::operator=(&v28, (v8 + 224));
      }

      sub_100004A34(v6);
    }
  }

  *v21 = 0u;
  v22 = 0u;
  v10 = *(this + 13);
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = *(this + 12);
      if (v13)
      {
        (*(*v13 + 24))(__p);
        sub_10016A270(v21, __p);
        if (BYTE8(v19) == 1 && SBYTE7(v19) < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_100004A34(v12);
    }
  }

  v20 = 0;
  *__p = 0u;
  v19 = 0u;
  LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(this, __p);
  *a2 = *(this + 14);
  v14 = *(this + 10);
  *(a2 + 8) = *(this + 9);
  *(a2 + 16) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 24) = this + 24;
  sub_100004AA0(v29, this + 1);
  v15 = v29[1];
  *(a2 + 32) = v29[0];
  *(a2 + 40) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
  }

  *(a2 + 48) = this + 128;
  sub_10006F264((a2 + 56), __p);
  *(a2 + 88) = v20;
  *(a2 + 92) = BYTE4(v20);
  *(a2 + 96) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  sub_10006F264((a2 + 136), v21);
  v16 = *(this + 25);
  *(a2 + 168) = *(this + 24);
  *(a2 + 176) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  if (BYTE8(v19) == 1 && SBYTE7(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v22) == 1 && SBYTE7(v22) < 0)
  {
    operator delete(v21[0]);
  }

  return sub_10038E4E4(v23);
}

void sub_100387CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  sub_100004A34(v28);
  if (a24 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a26);
  _Unwind_Resume(a1);
}

void sub_100387EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::startFullXmlTimer(LazuliProvisioningServerWrapper *this, uint64_t a2)
{
  sub_100004AA0(&v3, this + 1);
  v2 = *(&v3 + 1);
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  sub_10038FCA8();
}

void sub_100388074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10002B644(va);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t LazuliProvisioningServerWrapper::isOngoing(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 36);
  if (v2 && ((*(*v2 + 24))(v2) & 1) != 0)
  {
    return 1;
  }

  v3 = *(this + 38);
  if (v3)
  {
    if ((*(*v3 + 24))(v3))
    {
      return 1;
    }
  }

  v5 = *(this + 48);
  if (!v5)
  {
    return 0;
  }

  sub_100463AE0(v5, v15);
  LazuliProvisioningWebHelper::getOtpTimerName(__p);
  v6 = v16;
  if ((v16 & 0x80u) == 0)
  {
    v7 = v16;
  }

  else
  {
    v7 = v15[1];
  }

  v8 = v14;
  v9 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v8 = __p[1];
  }

  if (v7 == v8)
  {
    if ((v16 & 0x80u) == 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = v15[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v4 = memcmp(v10, v11, v7) == 0;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v4 = 0;
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  operator delete(__p[0]);
  v6 = v16;
LABEL_24:
  if ((v6 & 0x80) != 0)
  {
    operator delete(v15[0]);
  }

  return v4;
}

void sub_1003881F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliProvisioningServerWrapper::didReceiveAnyDisabledXml(LazuliProvisioningServerWrapper *this)
{
  v1 = *(this + 45);
  if (!v1)
  {
    return 0;
  }

  if (v1[11])
  {
    v2 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      sub_10176D7F8();
    }

    return 1;
  }

  if (v1[9])
  {
    v4 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176D868();
    }

    return 1;
  }

  if (v1[19])
  {
    v5 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_10176D8D8();
    }

    return 1;
  }

  return 0;
}

void LazuliProvisioningServerWrapper::handleReprovisioningRequired(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 36);
  if (v2 || (v2 = *(this + 38)) != 0)
  {
    LazuliProvisioningWebHelper::resetTimers(v2);
  }

  else
  {
    v3 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176D948();
    }
  }

  LazuliProvisioningServerWrapper::eraseFullAndRefreshXmlForServer(this);
}

void LazuliProvisioningServerWrapper::eraseFullAndRefreshXmlForServer(LazuliProvisioningServerWrapper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 128);
    if (*(this + 151) < 0)
    {
      v3 = *v3;
    }

    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Erasing full and refresh config for server", buf, 0xCu);
  }

  v4 = *(this + 40);
  if (v4)
  {
    if (*(this + 151) < 0)
    {
      sub_100005F2C(buf, *(this + 16), *(this + 17));
    }

    else
    {
      *buf = *(this + 8);
      v15 = *(this + 18);
    }

    v5 = sub_1006491D4();
    sub_10000501C(__p, v5);
    sub_10075E5D0(v4, buf, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(*buf);
    }

    v6 = *(this + 40);
    if (*(this + 151) < 0)
    {
      sub_100005F2C(buf, *(this + 16), *(this + 17));
    }

    else
    {
      *buf = *(this + 8);
      v15 = *(this + 18);
    }

    v7 = sub_100A2B1D8();
    sub_10000501C(__p, v7);
    sub_10075E5D0(v6, buf, __p);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(*buf);
    }
  }

  v8 = *(this + 45);
  if (v8)
  {
    v9 = *(v8 + 112);
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
    if (v9)
    {
      sub_100004A34(v9);
    }

    v10 = *(this + 45);
    v11 = *(v10 + 128);
    *(v10 + 120) = 0;
    *(v10 + 128) = 0;
    if (v11)
    {
      sub_100004A34(v11);
    }
  }
}

void LazuliProvisioningServerWrapper::handleForbiddenResponse(LazuliProvisioningServerWrapper *this)
{
  v2 = *(this + 16);
  sub_10000501C(__p, "Forbidden response");
  sub_100A9B39C(this + 72, v2, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v3 = *(this + 40);
  v4 = (this + 128);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *v4;
    v9 = *(this + 18);
  }

  sub_10075E230(v3, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *(this + 40);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *v4;
    v9 = *(this + 18);
  }

  sub_100762CF8(v5, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = *(this + 36);
  if (v6 || (v6 = *(this + 38)) != 0)
  {
    LazuliProvisioningWebHelper::resetTimers(v6);
  }

  else
  {
    v7 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_10176D9B8();
    }
  }

  LODWORD(__p[0]) = 2;
  LazuliProvisioningServerWrapper::failedFatally(this, __p);
}

void sub_10038878C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LazuliProvisioningServerWrapper::didFail(LazuliProvisioningServerWrapper *this)
{
  if (*(this + 53) || (result = LazuliProvisioningServerWrapper::didReceiveAnyDisabledXml(this), result))
  {
    v3 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176DA38();
    }

    return 1;
  }

  return result;
}

void LazuliProvisioningServerWrapper::stop(LazuliProvisioningServerWrapper *this)
{
  if (*(this + 36))
  {
    v2 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
    {
      sub_10176DAA8();
    }

    v3 = *(this + 37);
    *(this + 36) = 0;
    *(this + 37) = 0;
    if (!v3)
    {
      goto LABEL_11;
    }

LABEL_10:
    sub_100004A34(v3);
    goto LABEL_11;
  }

  if (*(this + 38))
  {
    v4 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176DB18();
    }

    v3 = *(this + 39);
    *(this + 38) = 0;
    *(this + 39) = 0;
    if (v3)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  *(this + 208) = 0;
  *(this + 53) = 0;
}

void LazuliProvisioningServerWrapper::handleOtp(uint64_t a1, const std::string *a2)
{
  v3 = *(a1 + 288);
  if (v3 || (v3 = *(a1 + 304)) != 0)
  {

    LazuliProvisioningWebHelper::handleOtp(v3, a2);
  }

  else
  {
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      sub_10176DB88();
    }
  }
}

void LazuliProvisioningServerWrapper::handleDeprovisioningComplete(LazuliProvisioningServerWrapper *this, _BOOL8 a2)
{
  v4 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (this + 128);
    if (*(this + 151) < 0)
    {
      v5 = *v5;
    }

    *__p = 136446466;
    *&__p[4] = v5;
    *&__p[12] = 2080;
    *&__p[14] = asStringBool(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Deprovisioning response received (success: %s)", __p, 0x16u);
  }

  v6 = *(this + 13);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = *(this + 12);
      if (v8)
      {
        v9 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = (this + 128);
          if (*(this + 151) < 0)
          {
            v10 = *v10;
          }

          *__p = 136446210;
          *&__p[4] = v10;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] XML ignored", __p, 0xCu);
        }

        if (*(this + 151) < 0)
        {
          sub_100005F2C(__p, *(this + 16), *(this + 17));
        }

        else
        {
          *__p = *(this + 8);
          *&__p[16] = *(this + 18);
        }

        (*(*v8 + 72))(v8, __p, a2);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

LABEL_22:
        sub_100004A34(v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    sub_10176DBF8();
  }

  if (v7)
  {
    goto LABEL_22;
  }
}

void LazuliProvisioningServerWrapper::handleVapidReceived(uint64_t a1, uint64_t *a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v5 = *v5;
    }

    v6 = *a2;
    v7 = *(a2 + 2) - *a2;
    *__p = 136446722;
    *&__p[4] = v5;
    *&__p[12] = 1040;
    *&__p[14] = v7;
    *&__p[18] = 2098;
    *&__p[20] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] VAPID received: %{public}.*P", __p, 0x1Cu);
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = *(a1 + 96);
      if (v10)
      {
        (*(*v10 + 88))(v10, a2);
        v11 = *(a1 + 320);
        if (*(a1 + 151) < 0)
        {
          sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
        }

        else
        {
          *__p = *(a1 + 128);
          *&__p[16] = *(a1 + 144);
        }

        sub_1007614DC(v11, __p, a2);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

LABEL_18:
        sub_100004A34(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    sub_10176DC68();
  }

  if (v9)
  {
    goto LABEL_18;
  }
}

void LazuliProvisioningServerWrapper::subscribeToPush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 120);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7 && *(a1 + 112))
    {
      v15[0] = 0;
      v15[1] = 0;
      v16 = 0;
      v8 = *(a1 + 320);
      v9 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        sub_100005F2C(&buf, *(a1 + 128), *(a1 + 136));
      }

      else
      {
        buf = *v9;
        v24 = *(a1 + 144);
      }

      sub_100762520(v8, &buf, v15);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(buf);
      }

      v11 = v15[1];
      if (SHIBYTE(v16) >= 0)
      {
        v11 = HIBYTE(v16);
      }

      v12 = *(**(a1 + 48) + 16);
      if (v11)
      {
        v13 = *v12();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a1 + 151) < 0)
          {
            v9 = *v9;
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v9;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] VAPID received and PushURL existing - restoring token subscription", &buf, 0xCu);
        }

        if (SHIBYTE(v16) < 0)
        {
          sub_100005F2C(&__dst, v15[0], v15[1]);
        }

        else
        {
          __dst = *v15;
          v21 = v16;
        }

        sub_1001058C4(v22, a4);
        v22[8] = 0;
        operator new();
      }

      v14 = *v12();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 151) < 0)
        {
          v9 = *v9;
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] VAPID received - generating new PushURL", &buf, 0xCu);
      }

      buf = 0uLL;
      v24 = 0;
      v17 = a1;
      if (SHIBYTE(v16) < 0)
      {
        sub_100005F2C(__p, v15[0], v15[1]);
      }

      else
      {
        *__p = *v15;
        __p[2] = v16;
      }

      sub_1001058C4(v19, a4);
      v19[7] = 0;
      operator new();
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_10176DC68();
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10038933C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  operator delete(v37);
  sub_100389470(&a16);
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v36);
  _Unwind_Resume(a1);
}

uint64_t sub_100389434(uint64_t a1)
{
  sub_100007E44(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100389470(uint64_t a1)
{
  sub_100007E44(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t LazuliProvisioningServerWrapper::handleRefreshRequested(LazuliProvisioningServerWrapper *this)
{
  LazuliProvisioningServerWrapper::stopTimers(this);
  v2 = *(this + 45);
  if (v2)
  {
    sub_10098FE00(v2, 1);
  }

  return LazuliProvisioningServerWrapper::startRefresh(this);
}

void LazuliProvisioningServerWrapper::stopTimers(LazuliProvisioningServerWrapper *this)
{
  if (*(this + 27))
  {
    v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = (this + 128);
      if (*(this + 151) < 0)
      {
        v3 = *v3;
      }

      v11 = 136446210;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Resetting Full XML timer", &v11, 0xCu);
    }

    v4 = *(this + 28);
    *(this + 27) = 0;
    *(this + 28) = 0;
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  if (*(this + 29))
  {
    v5 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (this + 128);
      if (*(this + 151) < 0)
      {
        v6 = *v6;
      }

      v11 = 136446210;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Resetting unauthorized XML timer", &v11, 0xCu);
    }

    v7 = *(this + 30);
    *(this + 29) = 0;
    *(this + 30) = 0;
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  if (*(this + 31))
  {
    v8 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (this + 128);
      if (*(this + 151) < 0)
      {
        v9 = *v9;
      }

      v11 = 136446210;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Resetting refresh XML timer", &v11, 0xCu);
    }

    v10 = *(this + 32);
    *(this + 31) = 0;
    *(this + 32) = 0;
    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

uint64_t LazuliProvisioningServerWrapper::startRefresh(LazuliProvisioningServerWrapper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 128);
    if (*(this + 151) < 0)
    {
      v3 = *v3;
    }

    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Starting refresh procedure...", buf, 0xCu);
  }

  v38[0] = 0;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  *buf = 0u;
  memset(v34, 0, sizeof(v34));
  v38[1] = 1;
  memset(&v38[2], 0, 30);
  *&v38[28] = -1;
  memset(&v39, 0, sizeof(v39));
  v4 = *(this + 15);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 14);
      if (v6)
      {
        v7 = (*(*v6 + 112))(v6, *(this + 14));
        std::string::operator=(buf, v7);
        std::string::operator=((v34 + 8), (v7 + 24));
        std::string::operator=(v35, (v7 + 48));
        std::string::operator=(&v35[1], (v7 + 72));
        std::string::operator=(v36, (v7 + 96));
        std::string::operator=(&v36[1], (v7 + 120));
        std::string::operator=(v37, (v7 + 144));
        std::string::operator=(&v37[1], (v7 + 168));
        v8 = *(v7 + 208);
        *v38 = *(v7 + 192);
        *&v38[16] = v8;
        std::string::operator=(&v39, (v7 + 224));
        sub_100004A34(v5);
        if (LazuliProvisioningServerWrapper::canStartProvisioning(this, buf))
        {
          *__val = 0;
          *v20 = 0u;
          v21 = 0u;
          LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(this, v20);
          v9 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = this + 128;
            v11 = this + 128;
            if (*(this + 151) < 0)
            {
              v11 = *v10;
            }

            v12 = asStringBool(v38[1]);
            v13 = v12;
            if (*(this + 151) < 0)
            {
              v10 = *v10;
            }

            v14 = v20[0];
            if ((SBYTE7(v21) & 0x80u) == 0)
            {
              v14 = v20;
            }

            if (BYTE8(v21))
            {
              v15 = v14;
            }

            else
            {
              v15 = "nil";
            }

            if (LOBYTE(__val[1]) == 1)
            {
              std::to_string(&v19, __val[0]);
              if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = &v19;
              }

              else
              {
                v16 = v19.__r_.__value_.__r.__words[0];
              }

              *v23 = 136447234;
              v24 = v11;
              v25 = 2080;
              v26 = v13;
              v27 = 2080;
              v28 = v10;
              v29 = 2082;
              v30 = v15;
              v31 = 2082;
              v32 = v16;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v23, 0x34u);
              if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v19.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *v23 = 136447234;
              v24 = v11;
              v25 = 2080;
              v26 = v12;
              v27 = 2080;
              v28 = v10;
              v29 = 2082;
              v30 = v15;
              v31 = 2082;
              v32 = "nil";
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v23, 0x34u);
            }
          }

          if (v38[1])
          {
            LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v23);
            sub_100413F40(v23);
          }

          LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v23);
          sub_100783AA8(v23);
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v17 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_10176DCD8();
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

LABEL_30:
  sub_10038E4E4(buf);
  return 0;
}

void sub_100389D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  if (a21 == 1 && a20 < 0)
  {
    operator delete(__p);
  }

  sub_10038E4E4(&a48);
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::resetPendingRefresh(LazuliProvisioningServerWrapper *this)
{
  v1 = *(this + 45);
  if (v1)
  {
    sub_10098FE00(v1, 0);
  }
}

uint64_t LazuliProvisioningServerWrapper::prettyPrint@<X0>(LazuliProvisioningServerWrapper *this@<X0>, _BYTE *a2@<X8>)
{
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  *v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  *__src = 0u;
  v76 = 0u;
  v77 = 0u;
  v75 = 0u;
  sub_10000C320(&v75);
  sub_10000C030(&v76, "<<", 2);
  v4 = *(this + 45);
  v5 = v4[13];
  if (v5)
  {
    v6 = sub_100649208(v5);
    memset(&v74, 0, sizeof(v74));
    if (v7)
    {
      std::to_string(&v74, v6);
    }

    else
    {
      sub_10000501C(&v74, "nil");
    }

    memset(&__p, 0, sizeof(__p));
    sub_10000501C(&__p, "(nil)");
    __val = 0uLL;
    v72 = 0;
    sub_1006491F4(*(*(this + 45) + 104), &__val);
    if (v72 == 1)
    {
      std::to_string(&v70, __val.n128_i64[0]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v70;
    }

    v8 = sub_10000C030(&v76, " [", 2);
    v9 = sub_1006491D4();
    v10 = strlen(v9);
    v11 = sub_10000C030(v8, v9, v10);
    v12 = sub_10000C030(v11, " validity: ", 11);
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = &v74;
    }

    else
    {
      v13 = v74.__r_.__value_.__r.__words[0];
    }

    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v74.__r_.__value_.__l.__size_;
    }

    v15 = sub_10000C030(v12, v13, size);
    v16 = sub_10000C030(v15, " version: ", 10);
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
      v18 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v18 = __p.__r_.__value_.__l.__size_;
    }

    v19 = sub_10000C030(v16, p_p, v18);
    sub_10000C030(v19, "]", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    v4 = *(this + 45);
  }

  if (v4[11])
  {
    v20 = sub_10000C030(&v76, " [", 2);
    v21 = sub_1008D71AC();
    v22 = strlen(v21);
    v23 = sub_10000C030(v20, v21, v22);
    sub_10000C030(v23, " validity: nil]", 15);
    v4 = *(this + 45);
  }

  if (v4[19])
  {
    v24 = sub_10000C030(&v76, " [", 2);
    v25 = sub_100B39268();
    v26 = strlen(v25);
    v27 = sub_10000C030(v24, v25, v26);
    sub_10000C030(v27, " validity: nil]", 15);
    v4 = *(this + 45);
  }

  v28 = v4[9];
  if (v28)
  {
    v29 = sub_100579D8C(v28);
    memset(&v74, 0, sizeof(v74));
    if (v30)
    {
      std::to_string(&v74, v29);
    }

    else
    {
      sub_10000501C(&v74, "nil");
    }

    v31 = sub_10000C030(&v76, " [", 2);
    v32 = sub_100579D70();
    v33 = strlen(v32);
    v34 = sub_10000C030(v31, v32, v33);
    v35 = sub_10000C030(v34, " validity: ", 11);
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v74;
    }

    else
    {
      v36 = v74.__r_.__value_.__r.__words[0];
    }

    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v37 = v74.__r_.__value_.__l.__size_;
    }

    v38 = sub_10000C030(v35, v36, v37);
    sub_10000C030(v38, "]", 1);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    v4 = *(this + 45);
  }

  v39 = v4[17];
  if (v39)
  {
    v40 = sub_1002CB0B4(v39);
    memset(&v74, 0, sizeof(v74));
    if (v41)
    {
      std::to_string(&v74, v40);
    }

    else
    {
      sub_10000501C(&v74, "nil");
    }

    v42 = sub_10000C030(&v76, " [", 2);
    v43 = sub_1002CB0A8();
    v44 = strlen(v43);
    v45 = sub_10000C030(v42, v43, v44);
    v46 = sub_10000C030(v45, " validity: ", 11);
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v47 = &v74;
    }

    else
    {
      v47 = v74.__r_.__value_.__r.__words[0];
    }

    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v48 = v74.__r_.__value_.__l.__size_;
    }

    v49 = sub_10000C030(v46, v47, v48);
    sub_10000C030(v49, "]", 1);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    v4 = *(this + 45);
  }

  v50 = v4[15];
  if (v50)
  {
    v51 = sub_100A2B204(v50);
    memset(&v74, 0, sizeof(v74));
    if (v52)
    {
      std::to_string(&v74, v51);
    }

    else
    {
      sub_10000501C(&v74, "nil");
    }

    memset(&__p, 0, sizeof(__p));
    sub_10000501C(&__p, "(nil)");
    __val = 0uLL;
    v72 = 0;
    sub_100A2B1F0(*(*(this + 45) + 120), &__val);
    if (v72 == 1)
    {
      std::to_string(&v70, __val.n128_i64[0]);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v70;
    }

    v53 = sub_10000C030(&v76, " [", 2);
    v54 = sub_100A2B1D8();
    v55 = strlen(v54);
    v56 = sub_10000C030(v53, v54, v55);
    v57 = sub_10000C030(v56, " validity: ", 11);
    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v58 = &v74;
    }

    else
    {
      v58 = v74.__r_.__value_.__r.__words[0];
    }

    if ((v74.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v59 = HIBYTE(v74.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v59 = v74.__r_.__value_.__l.__size_;
    }

    v60 = sub_10000C030(v57, v58, v59);
    v61 = sub_10000C030(v60, " version: ", 10);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = &__p;
    }

    else
    {
      v62 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v63 = __p.__r_.__value_.__l.__size_;
    }

    v64 = sub_10000C030(v61, v62, v63);
    sub_10000C030(v64, "]", 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }
  }

  sub_10000C030(&v76, " >>", 3);
  if ((BYTE8(v82) & 0x10) != 0)
  {
    v66 = v82;
    if (v82 < __src[1])
    {
      *&v82 = __src[1];
      v66 = __src[1];
    }

    v67 = __src[0];
  }

  else
  {
    if ((BYTE8(v82) & 8) == 0)
    {
      v65 = 0;
      a2[23] = 0;
      goto LABEL_93;
    }

    v67 = *(&v77 + 1);
    v66 = *(&v78 + 1);
  }

  v65 = v66 - v67;
  if ((v66 - v67) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v65 >= 0x17)
  {
    operator new();
  }

  a2[23] = v65;
  if (v65)
  {
    memmove(a2, v67, v65);
  }

LABEL_93:
  a2[v65] = 0;
  *&v76 = v68;
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80[1]);
  }

  std::locale::~locale(&v77);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10038A5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *__p, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  if (SHIBYTE(a23) < 0)
  {
    operator delete(a21);
  }

  if (SHIBYTE(a26) < 0)
  {
    operator delete(a24);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void LazuliProvisioningServerWrapper::startTimers(uint64_t a1)
{
  v2 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v3 = *v3;
    }

    v4 = 136446210;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Unimplemented function", &v4, 0xCu);
  }
}

BOOL LazuliProvisioningServerWrapper::needsProvisioning(LazuliProvisioningServerWrapper *this)
{
  if (LazuliProvisioningServerWrapper::isOngoing(this))
  {
    v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v4 = (this + 128);
    if (*(this + 151) < 0)
    {
      v4 = *v4;
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v4;
    v5 = "#I [%{public}s] Provisioning Ongoing already";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v5, __p, 0xCu);
    return 0;
  }

  v6 = *(this + 40);
  v7 = (this + 128);
  if (*(this + 151) < 0)
  {
    sub_100005F2C(__p, *(this + 16), *(this + 17));
  }

  else
  {
    *__p = *v7;
    v18 = *(this + 18);
  }

  v8 = sub_1007631F4(v6, __p);
  v9 = v8;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if (v9)
    {
      goto LABEL_11;
    }
  }

  else if (v8)
  {
LABEL_11:
    v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    result = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    if (*(this + 151) < 0)
    {
      v7 = *v7;
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v7;
    v5 = "#I [%{public}s] Server is forbidden";
    goto LABEL_15;
  }

  v10 = *(this + 38);
  if (v10 && (*(*v10 + 64))(v10))
  {
    v11 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 151) < 0)
      {
        v7 = *v7;
      }

      LODWORD(__p[0]) = 136446210;
      *(__p + 4) = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Post response pending", __p, 0xCu);
    }

    return 1;
  }

  v12 = *(this + 13);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v14 = v13;
      v15 = *(this + 12);
      if (v15)
      {
        (*(*v15 + 24))(__p);
        if (v19 == 1)
        {
          if (SHIBYTE(v18) < 0)
          {
            operator delete(__p[0]);
          }

          v16 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (*(this + 151) < 0)
            {
              v7 = *v7;
            }

            LODWORD(__p[0]) = 136446210;
            *(__p + 4) = v7;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] We have participant key that needs to be signed", __p, 0xCu);
          }

          sub_100004A34(v14);
          return 1;
        }
      }

      sub_100004A34(v14);
    }
  }

  return sub_10098F274(*(this + 45));
}

uint64_t LazuliProvisioningServerWrapper::canStartProvisioning(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 212))
  {
    v9 = *(a2 + 204);
    v35 = v9;
    if (*(a1 + 208) == 1 && (v9 & 0xFFFFFFFE) == 2)
    {
      v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v19 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v19 = *v19;
      }

      v20 = sub_1004CDF60(&v35);
      *buf = 136446466;
      v37 = v19;
      v38 = 2080;
      v39 = v20;
      v21 = "#I [%{public}s] Provisioning requires PS access. Current interface: %s";
      goto LABEL_32;
    }

    if (!v9)
    {
      v25 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      v26 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v26 = *v26;
      }

      *buf = 136446210;
      v37 = v26;
      v21 = "#I [%{public}s] No valid interface for provisioning...";
      v22 = v25;
      v23 = 12;
      goto LABEL_33;
    }

    v11 = *(a1 + 104);
    if (v11)
    {
      v12 = std::__shared_weak_count::lock(v11);
      if (v12)
      {
        v13 = v12;
        v14 = *(a1 + 96);
        if (v14 && ((*(*v14 + 32))(v14) & 1) == 0)
        {
          v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = (a1 + 128);
            if (*(a1 + 151) < 0)
            {
              v30 = *v30;
            }

            *buf = 136446210;
            v37 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Model is not ready to provision with encryption", buf, 0xCu);
          }

          sub_100004A34(v13);
          return 0;
        }

        sub_100004A34(v13);
      }
    }

    if ((*(a2 + 193) & 1) == 0)
    {
      return 1;
    }

    v15 = *(a1 + 120);
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        v17 = *(a1 + 112);
        if (v17)
        {
          if ((*(*v17 + 64))(v17, *(a1 + 56)))
          {
            v18 = 0;
          }

          else
          {
            v18 = v35 == 2;
          }

          if (v18)
          {
            v31 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = (a1 + 128);
              if (*(a1 + 151) < 0)
              {
                v32 = *v32;
              }

              v33 = Lazuli::asString();
              v34 = sub_1004CDF60(&v35);
              *buf = 136446722;
              v37 = v32;
              v38 = 2080;
              v39 = v33;
              v40 = 2080;
              v41 = v34;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Unable to provision on second sub with: [own cellular required: %s, current interface: %s]", buf, 0x20u);
            }

            v4 = 0;
          }

          else
          {
            v4 = 1;
          }

          goto LABEL_58;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v28 = *v28;
      }

      *buf = 136446210;
      v37 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Controller reference was lost", buf, 0xCu);
    }

    v4 = 0;
    if (!v16)
    {
      return v4;
    }

LABEL_58:
    sub_100004A34(v16);
    return v4;
  }

  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  v4 = 0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v5 = *v5;
    }

    v6 = *(a1 + 212);
    if (v6 > 4)
    {
      v7 = "??";
    }

    else
    {
      v7 = off_101E46D08[v6];
    }

    *buf = 136446466;
    v37 = v5;
    v38 = 2080;
    v39 = v7;
    v21 = "#I [%{public}s] Provisioning has failed fatally. Requires client restart: %s";
LABEL_32:
    v22 = v3;
    v23 = 22;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
    return 0;
  }

  return v4;
}

uint64_t LazuliProvisioningServerWrapper::startProvisioning(uint64_t a1, __int128 *a2)
{
  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v4 = *v4;
    }

    *buf = 136446210;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Starting provisioning...", buf, 0xCu);
  }

  v35[0] = 0;
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, sizeof(v32));
  *buf = 0u;
  memset(v31, 0, sizeof(v31));
  v35[1] = 1;
  memset(&v35[2], 0, 30);
  *&v35[28] = -1;
  memset(&v36, 0, sizeof(v36));
  v5 = *(a1 + 120);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 112);
      if (v7)
      {
        v8 = (*(*v7 + 112))(v7, *(a1 + 56));
        std::string::operator=(buf, v8);
        std::string::operator=((v31 + 8), (v8 + 24));
        std::string::operator=(v32, (v8 + 48));
        std::string::operator=(&v32[1], (v8 + 72));
        std::string::operator=(v33, (v8 + 96));
        std::string::operator=(&v33[1], (v8 + 120));
        std::string::operator=(v34, (v8 + 144));
        std::string::operator=(&v34[1], (v8 + 168));
        v9 = *(v8 + 208);
        *v35 = *(v8 + 192);
        *&v35[16] = v9;
        std::string::operator=(&v36, (v8 + 224));
        sub_100004A34(v6);
        if (LazuliProvisioningServerWrapper::canStartProvisioning(a1, buf))
        {
          *(a1 + 208) = 0;
          *(a1 + 212) = 0;
          v21 = 0;
          *v19 = 0u;
          v20 = 0u;
          LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(a1, v19);
          v10 = *(a1 + 296);
          *(a1 + 288) = 0;
          *(a1 + 296) = 0;
          if (v10)
          {
            sub_100004A34(v10);
          }

          v11 = *(a1 + 312);
          *(a1 + 304) = 0;
          *(a1 + 312) = 0;
          if (v11)
          {
            sub_100004A34(v11);
          }

          v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = (a1 + 128);
            v14 = (a1 + 128);
            if (*(a1 + 151) < 0)
            {
              v14 = *v13;
            }

            v15 = asStringBool(v35[1]);
            if (*(a1 + 151) < 0)
            {
              v13 = *v13;
            }

            v16 = sub_1004CDF60(&v35[12]);
            *v22 = 136446978;
            v23 = v14;
            v24 = 2080;
            v25 = v15;
            v26 = 2080;
            v27 = v13;
            v28 = 2080;
            v29 = v16;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier Based: %s, fUrl: %s, interface: %s", v22, 0x2Au);
          }

          if (v35[1])
          {
            LazuliProvisioningServerWrapper::getWebHelperInitializer(a1, v22);
            sub_100413F40(v22);
          }

          LazuliProvisioningServerWrapper::getWebHelperInitializer(a1, v22);
          sub_100783AA8(v22);
        }

        goto LABEL_26;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_10176DCD8();
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

LABEL_26:
  sub_10038E4E4(buf);
  return 0;
}

void sub_10038B618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a31 == 1 && a30 < 0)
  {
    operator delete(a25);
  }

  sub_10038E4E4(&a58);
  _Unwind_Resume(a1);
}

uint64_t sub_10038B6D4(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

uint64_t LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(LazuliProvisioningServerWrapper *this)
{
  v1 = *(this + 94);
  *(this + 94) = v1 + 1;
  v7[0] = xmmword_1017F90E0;
  v7[1] = unk_1017F90F0;
  v7[2] = xmmword_1017F9100;
  v7[3] = unk_1017F9110;
  v8 = 1800;
  v5 = 0;
  v6 = 0;
  v4 = 0;
  sub_1002F3248(&v4, v7, &v9, 9uLL);
  if (v1 < v5 - v4)
  {
    v2 = v4[v1];
LABEL_4:
    v5 = v4;
    operator delete(v4);
    return v2;
  }

  v2 = 43200;
  if (v4)
  {
    goto LABEL_4;
  }

  return v2;
}

uint64_t LazuliProvisioningServerWrapper::startFirstAccessProvisioning(LazuliProvisioningServerWrapper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (this + 128);
    if (*(this + 151) < 0)
    {
      v3 = *v3;
    }

    *buf = 136446210;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Starting first-access provisioning...", buf, 0xCu);
  }

  v38[0] = 0;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  memset(v35, 0, sizeof(v35));
  *buf = 0u;
  memset(v34, 0, sizeof(v34));
  v38[1] = 1;
  memset(&v38[2], 0, 30);
  *&v38[28] = -1;
  memset(&v39, 0, sizeof(v39));
  v4 = *(this + 15);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(this + 14);
      if (v6)
      {
        v7 = (*(*v6 + 112))(v6, *(this + 14));
        std::string::operator=(buf, v7);
        std::string::operator=((v34 + 8), (v7 + 24));
        std::string::operator=(v35, (v7 + 48));
        std::string::operator=(&v35[1], (v7 + 72));
        std::string::operator=(v36, (v7 + 96));
        std::string::operator=(&v36[1], (v7 + 120));
        std::string::operator=(v37, (v7 + 144));
        std::string::operator=(&v37[1], (v7 + 168));
        v8 = *(v7 + 208);
        *v38 = *(v7 + 192);
        *&v38[16] = v8;
        std::string::operator=(&v39, (v7 + 224));
        sub_100004A34(v5);
        if (LazuliProvisioningServerWrapper::canStartProvisioning(this, buf))
        {
          *__val = 0;
          *v20 = 0u;
          v21 = 0u;
          LazuliProvisioningServerWrapper::getTokenAndVersionFromXml(this, v20);
          v9 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 14));
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v10 = this + 128;
            v11 = this + 128;
            if (*(this + 151) < 0)
            {
              v11 = *v10;
            }

            v12 = asStringBool(v38[1]);
            v13 = v12;
            if (*(this + 151) < 0)
            {
              v10 = *v10;
            }

            v14 = v20[0];
            if ((SBYTE7(v21) & 0x80u) == 0)
            {
              v14 = v20;
            }

            if (BYTE8(v21))
            {
              v15 = v14;
            }

            else
            {
              v15 = "nil";
            }

            if (LOBYTE(__val[1]) == 1)
            {
              std::to_string(&v19, __val[0]);
              if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = &v19;
              }

              else
              {
                v16 = v19.__r_.__value_.__r.__words[0];
              }

              *v23 = 136447234;
              v24 = v11;
              v25 = 2080;
              v26 = v13;
              v27 = 2080;
              v28 = v10;
              v29 = 2082;
              v30 = v15;
              v31 = 2082;
              v32 = v16;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v23, 0x34u);
              if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v19.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *v23 = 136447234;
              v24 = v11;
              v25 = 2080;
              v26 = v12;
              v27 = 2080;
              v28 = v10;
              v29 = 2082;
              v30 = v15;
              v31 = 2082;
              v32 = "nil";
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [%{public}s] Carrier based: %s, url: %s, token: %{public}s, version: %{public}s", v23, 0x34u);
            }
          }

          if (v38[1])
          {
            LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v23);
            sub_100413F40(v23);
          }

          LazuliProvisioningServerWrapper::getWebHelperInitializer(this, v23);
          sub_100783AA8(v23);
        }

        goto LABEL_30;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v17 = (*(**(this + 6) + 16))(*(this + 6), *(this + 14));
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_10176DCD8();
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

LABEL_30:
  sub_10038E4E4(buf);
  return 0;
}