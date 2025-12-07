void sub_10065DB9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19)
{
  if (*(v20 - 97) < 0)
  {
    operator delete(*(v20 - 120));
  }

  xpc_release(object);
  xpc_release(*(v20 - 128));
  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::forceFastDormancyAfterDelay(C2KRadioModule *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 0x1F404000100;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Forcing fast dormancy after %d milliseconds", &v13, 8u);
  }

  ServiceMap = Registry::getServiceMap(*(this + 98));
  v4 = ServiceMap;
  v5 = "N8dormancy15DormancyServiceE";
  if (("N8dormancy15DormancyServiceE" & 0x8000000000000000) != 0)
  {
    v6 = ("N8dormancy15DormancyServiceE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
  if (!v9)
  {
    v11 = 0;
LABEL_11:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
LABEL_12:
    (*(*v11 + 32))(v11, 500);
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10065DE38(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::FDAssertionHolderGone(uint64_t a1, uint64_t a2, void *a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 784));
  v7 = ServiceMap;
  v8 = "N8dormancy15DormancyServiceE";
  if (("N8dormancy15DormancyServiceE" & 0x8000000000000000) != 0)
  {
    v9 = ("N8dormancy15DormancyServiceE" & 0x7FFFFFFFFFFFFFFFLL);
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
  v18 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v18);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      if (!v14)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
    goto LABEL_16;
  }

LABEL_10:
  if (*(a1 + 513) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v17 = *(a2 + 16);
    }

    (*(*v14 + 48))(v14, __p, *a3);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_16:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10065DFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::setFastDormancyTimeouts(C2KRadioModule *this, int a2, uint64_t a3)
{
  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v22) = 67109120;
    HIDWORD(v22) = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I changing fast dormancy timeouts to %d", &v22, 8u);
  }

  *(this + 127) = a3;
  v7 = *(this + 512);
  v8 = *(this + 5);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v7 == 1)
  {
    if (v9)
    {
      LODWORD(v22) = 67109376;
      HIDWORD(v22) = a3;
      v23 = 1024;
      v24 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I setting fast dormancy timeouts to %d, (ignoring inhibit timer %d)", &v22, 0xEu);
    }

    v10 = *(this + 15);
    if (a3)
    {
      v11 = (*(*this + 576))(this);
      (*(*v10 + 64))(v10, a3, v11);
    }

    else
    {
      (*(*v10 + 64))(*(this + 15), 0, 0);
    }

    ServiceMap = Registry::getServiceMap(*(this + 98));
    v13 = ServiceMap;
    v14 = "N8dormancy15DormancyServiceE";
    if (("N8dormancy15DormancyServiceE" & 0x8000000000000000) != 0)
    {
      v15 = ("N8dormancy15DormancyServiceE" & 0x7FFFFFFFFFFFFFFFLL);
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
    v22 = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, &v22);
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
LABEL_21:
          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          return;
        }

LABEL_20:
        (*(*v20 + 24))(v20, *(this + 127) != 0);
        goto LABEL_21;
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
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v9)
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I dormancy support off in radio", &v22, 2u);
  }
}

void sub_10065E2CC(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::getDormancyMask(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[98]);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  v11 = (*(*v9 + 528))(v9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return v11;
}

void sub_10065E40C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::handleDataInactivity(C2KRadioModule *this)
{
  CSIRadioModulePrivate::handleDataInactivity(this);
  v2 = *(*this + 272);

  return v2(this, "data inactivity from MUX");
}

void C2KRadioModule::setCellularDataUsedForSubscriberIDs(C2KRadioModule *this)
{
  *(this + 1024) = 1;
  v2 = sub_10005D028();
  sub_10000501C(&__p, "C2KRadioModule::kCellularDataUsed");
  sub_1006197F4(v2, &__p, this + 1024);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_10065E500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::HandleManufacturerMMI(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, _DWORD *a6)
{
  ATCSMutex::lock((a1 + 56));
  bzero(__dst, 0x400uLL);
  v97 = 0;
  v98 = 0;
  sub_100DF07C8(*(a1 + 784), &v97);
  theDict = 0;
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
  *&buf.var0 = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, &buf);
  if (!v18)
  {
    v20 = 0;
LABEL_9:
    std::mutex::unlock(v13);
    v19 = 0;
    v22 = 1;
    if (!v20)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v20 = v18[3];
  v19 = v18[4];
  if (!v19)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v13);
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v19);
  v22 = 0;
  if (!v20)
  {
LABEL_16:
    var0 = 0;
    if (v22)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_10:
  SMSCarrierBundleString = sms::Model::getSMSCarrierBundleString(v21);
  (*(*v20 + 96))(&v95, v20, a2, 1, SMSCarrierBundleString, 0, 0);
  sub_100010180(&object, &v95);
  *&buf.var0 = theDict;
  theDict = object;
  object = 0;
  sub_10001021C(&buf);
  sub_10001021C(&object);
  sub_10000A1EC(&v95);
  if (!theDict)
  {
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(theDict, @"AllowMMICommandSMSC");
  v25 = Value;
  LOBYTE(buf.var0) = 0;
  if (Value)
  {
    v26 = CFGetTypeID(Value);
    if (v26 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v25, v27);
    }
  }

  var0 = buf.var0;
  if ((v22 & 1) == 0)
  {
LABEL_17:
    sub_100004A34(v19);
  }

LABEL_18:
  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = "false";
    if (var0)
    {
      v30 = "true";
    }

    buf.var0 = 136315138;
    *&buf.var1 = v30;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I SMSC K00L Command allowed: %s", &buf, 0xCu);
  }

  if (C2KRadioModule::isBuddyState(a1))
  {
    if (*(a3 + a5) == 875705395 && *(a3 + a5 + 4) == 35)
    {
      if (a4 > 1)
      {
        goto LABEL_183;
      }

      sub_10097D724();
      object = 0;
      object = xpc_null_create();
      v43 = xpc_dictionary_create(0, 0, 0);
      if (v43 || (v43 = xpc_null_create()) != 0)
      {
        if (xpc_get_type(v43) == &_xpc_type_dictionary)
        {
          xpc_retain(v43);
          v44 = v43;
        }

        else
        {
          v44 = xpc_null_create();
        }
      }

      else
      {
        v44 = xpc_null_create();
        v43 = 0;
      }

      xpc_release(v43);
      v82 = xpc_null_create();
      v83 = object;
      object = v44;
      xpc_release(v83);
      xpc_release(v82);
      v93 = xpc_BOOL_create(a4 == 0);
      if (!v93)
      {
        v93 = xpc_null_create();
      }

      *&buf.var0 = &object;
      buf.var2.__rep_.__l.__data_ = "kCTRadioUseLoggingProfileKey";
      sub_10000F688(&buf, &v93, &v94);
      xpc_release(v94);
      v94 = 0;
      xpc_release(v93);
      v93 = 0;
      sub_10005B8C8(&buf);
      (*(**&buf.var0 + 432))(*&buf.var0, &object);
      if (buf.var2.__rep_.__l.__data_)
      {
        sub_100004A34(buf.var2.__rep_.__l.__data_);
      }

      sub_10097D7AC();
      xpc_release(object);
      goto LABEL_168;
    }
  }

  v32 = a3 + a5;
  if (*v32 == 875967029 && *(v32 + 4) == 35)
  {
    sub_10097D724();
    if (a4 > 2)
    {
      if (a4 == 4)
      {
        goto LABEL_82;
      }

      if (a4 != 3)
      {
        goto LABEL_112;
      }
    }

    else if (a4)
    {
      if (a4 != 1)
      {
LABEL_112:
        sub_10000501C(&buf, __dst);
        sub_10097DB58(1, 0, &buf, a2);
        if (buf.var2.__rep_.__s.__data_[15] < 0)
        {
          operator delete(*&buf.var0);
        }

        goto LABEL_114;
      }

LABEL_82:
      v57 = Registry::getServiceMap(*(a1 + 784));
      v58 = v57;
      if (v59 < 0)
      {
        v60 = (v59 & 0x7FFFFFFFFFFFFFFFLL);
        v61 = 5381;
        do
        {
          v59 = v61;
          v62 = *v60++;
          v61 = (33 * v61) ^ v62;
        }

        while (v62);
      }

      std::mutex::lock(v57);
      *&buf.var0 = v59;
      v63 = sub_100009510(&v58[1].__m_.__sig, &buf);
      if (v63)
      {
        v65 = v63[3];
        v64 = v63[4];
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v58);
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v64);
          v66 = 0;
LABEL_108:
          sub_10000501C(__p, "en");
          (*(*v65 + 120))(v65, __p);
          if (v92 < 0)
          {
            operator delete(__p[0]);
          }

          if ((v66 & 1) == 0)
          {
            sub_100004A34(v64);
          }

          goto LABEL_112;
        }
      }

      else
      {
        v65 = 0;
      }

      std::mutex::unlock(v58);
      v64 = 0;
      v66 = 1;
      goto LABEL_108;
    }

    *a6 |= 8u;
    strlcpy(__dst, "Please enter the ISO 639-1 language code", 0x400uLL);
    sub_10000501C(&buf, __dst);
    sub_10097DB58(1, 1, &buf, a2);
    if ((buf.var2.__rep_.__s.__data_[15] & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    v56 = *&buf.var0;
    goto LABEL_81;
  }

  if ((var0 & 1) != 0 && *v32 == 842479159 && *(v32 + 4) == 35)
  {
    if (a4 == 4)
    {
      sub_10097D724();
      *a6 |= 4u;
      v80 = Registry::getServiceMap(*(a1 + 784));
      sub_1013519A8(&object, v80);
      v81 = object;
      CSIPhoneNumber::CSIPhoneNumber(&buf, "");
      (*(*v81 + 248))(v81, a2, &buf);
      if (SBYTE7(v107) < 0)
      {
        operator delete(v106[0]);
      }

      if (SHIBYTE(v105) < 0)
      {
        operator delete(v104[1]);
      }

      if (SBYTE7(v103) < 0)
      {
        operator delete(v102[0]);
      }

      if (SBYTE7(v101) < 0)
      {
        operator delete(v100[0]);
      }

      if (*(&buf.var2.__rep_.__l + 23) < 0)
      {
        operator delete(buf.var2.__rep_.__l.__data_);
      }

      data = v89;
      if (!v89)
      {
        goto LABEL_168;
      }
    }

    else
    {
      if (a4 != 2)
      {
        goto LABEL_168;
      }

      sub_10097D724();
      *a6 |= 4u;
      v76 = Registry::getServiceMap(*(a1 + 784));
      sub_1013519A8(&buf.var0, v76);
      (*(**&buf.var0 + 240))(*&buf.var0, a2);
      data = buf.var2.__rep_.__l.__data_;
      if (!buf.var2.__rep_.__l.__data_)
      {
        goto LABEL_168;
      }
    }

    sub_100004A34(data);
LABEL_168:
    v84 = 1;
    goto LABEL_184;
  }

  if (*v32 == 926102834 && *(v32 + 4) == 9008)
  {
    v45 = *(a1 + 40);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.var0) = 0;
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Disabling Test Alerts", &buf, 2u);
    }

    if (a4 && a4 != 3)
    {
      sub_10097D7AC();
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        v42 = "#I Not activation or registration";
        goto LABEL_182;
      }

      goto LABEL_183;
    }

    sub_10097D724();
    v46 = Registry::getServiceMap(*(a1 + 784));
    v47 = v46;
    if (v48 < 0)
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
    *&buf.var0 = v48;
    v52 = sub_100009510(&v47[1].__m_.__sig, &buf);
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
        if (!v54)
        {
          goto LABEL_75;
        }

        goto LABEL_117;
      }
    }

    else
    {
      v54 = 0;
    }

    std::mutex::unlock(v47);
    v53 = 0;
    v55 = 1;
    if (!v54)
    {
LABEL_75:
      if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        goto LABEL_159;
      }

      goto LABEL_158;
    }

LABEL_117:
    (*(*v54 + 432))(v54, 0);
    strlcpy(__dst, "Test alerts not allowed", 0x400uLL);
    sub_10000501C(&buf, __dst);
    sub_10097DB58(1, 0, &buf, a2);
    goto LABEL_155;
  }

  if (*v32 == 926102834 && *(v32 + 4) == 9009)
  {
    v67 = *(a1 + 40);
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.var0) = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I Enabling Test Alerts", &buf, 2u);
    }

    if (a4 && a4 != 3)
    {
      sub_10097D7AC();
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        v42 = "#I Not activation or registration";
        goto LABEL_182;
      }

      goto LABEL_183;
    }

    sub_10097D724();
    v68 = Registry::getServiceMap(*(a1 + 784));
    v69 = v68;
    if (v70 < 0)
    {
      v71 = (v70 & 0x7FFFFFFFFFFFFFFFLL);
      v72 = 5381;
      do
      {
        v70 = v72;
        v73 = *v71++;
        v72 = (33 * v72) ^ v73;
      }

      while (v73);
    }

    std::mutex::lock(v68);
    *&buf.var0 = v70;
    v74 = sub_100009510(&v69[1].__m_.__sig, &buf);
    if (v74)
    {
      v75 = v74[3];
      v53 = v74[4];
      if (v53)
      {
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v69);
        atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v53);
        v55 = 0;
        goto LABEL_153;
      }
    }

    else
    {
      v75 = 0;
    }

    std::mutex::unlock(v69);
    v53 = 0;
    v55 = 1;
LABEL_153:
    if (v75)
    {
      (*(*v75 + 432))(v75, 1);
      strlcpy(__dst, "Test alerts allowed", 0x400uLL);
      sub_10000501C(&buf, __dst);
      sub_10097DB58(1, 0, &buf, a2);
LABEL_155:
      if (buf.var2.__rep_.__s.__data_[15] < 0)
      {
        operator delete(*&buf.var0);
      }

      goto LABEL_159;
    }

    if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
LABEL_159:
      if ((v55 & 1) == 0)
      {
        sub_100004A34(v53);
      }

LABEL_114:
      sub_10097D7AC();
      goto LABEL_168;
    }

LABEL_158:
    sub_101777298();
    goto LABEL_159;
  }

  v37 = strrchr(v32, 35);
  if (v37)
  {
    v38 = v37;
    if (*v32 != 13880 || *(v32 + 2) != 42)
    {
      if ((var0 & 1) == 0 || (*v32 == 842479159 ? (v40 = *(v32 + 4) == 42) : (v40 = 0), !v40))
      {
        v41 = *(a1 + 40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.var0) = 0;
          v42 = "#I Unhandled code";
LABEL_182:
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v42, &buf, 2u);
          goto LABEL_183;
        }

        goto LABEL_183;
      }

      v85 = *(a1 + 40);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#I Setting Service Center Address", &buf, 2u);
      }

      if (a4 && a4 != 3)
      {
        v41 = *(a1 + 40);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.var0) = 0;
          v42 = "#I Not activation or registration";
          goto LABEL_182;
        }

        goto LABEL_183;
      }

      sub_10097D724();
      *v106 = 0u;
      v107 = 0u;
      *v104 = 0u;
      v105 = 0u;
      *v102 = 0u;
      v103 = 0u;
      *v100 = 0u;
      v101 = 0u;
      memset(&buf, 0, sizeof(buf));
      sub_10065F5EC(&object, (v32 + 5), &v38[-v32 - 5]);
      CSIPhoneNumber::CSIPhoneNumber();
      if (v90 < 0)
      {
        operator delete(object);
      }

      *a6 |= 4u;
      v86 = Registry::getServiceMap(*(a1 + 784));
      sub_1013519A8(&object, v86);
      (*(*object + 248))(object, a2, &buf);
      if (v89)
      {
        sub_100004A34(v89);
      }

      sub_10034F8E8(&buf);
      goto LABEL_168;
    }

    v78 = *(a1 + 40);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.var0) = 0;
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I Setting Voice mail number", &buf, 2u);
    }

    if (a4 && a4 != 3)
    {
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        v42 = "#I Not activation or registration";
        goto LABEL_182;
      }

      goto LABEL_183;
    }

    sub_10097D724();
    *v106 = 0u;
    v107 = 0u;
    *v104 = 0u;
    v105 = 0u;
    *v102 = 0u;
    v103 = 0u;
    *v100 = 0u;
    v101 = 0u;
    memset(&buf, 0, sizeof(buf));
    sub_10065F5EC(&object, (v32 + 3), &v38[-v32 - 3]);
    CSIPhoneNumber::CSIPhoneNumber();
    if (v90 < 0)
    {
      operator delete(object);
    }

    v79 = Registry::getServiceMap(*(a1 + 784));
    sub_1013519A8(&object, v79);
    (*(*object + 296))(object, a2, &buf);
    if (v89)
    {
      sub_100004A34(v89);
    }

    sub_10097D7AC();
    if (SBYTE7(v107) < 0)
    {
      operator delete(v106[0]);
    }

    if (SHIBYTE(v105) < 0)
    {
      operator delete(v104[1]);
    }

    if (SBYTE7(v103) < 0)
    {
      operator delete(v102[0]);
    }

    if (SBYTE7(v101) < 0)
    {
      operator delete(v100[0]);
    }

    if ((*(&buf.var2.__rep_.__l + 23) & 0x80000000) == 0)
    {
      goto LABEL_168;
    }

    v56 = buf.var2.__rep_.__l.__data_;
LABEL_81:
    operator delete(v56);
    goto LABEL_168;
  }

  v41 = *(a1 + 40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    v42 = "#I Could not find a # in the string";
    goto LABEL_182;
  }

LABEL_183:
  v84 = 0;
LABEL_184:
  sub_10001021C(&theDict);
  if (v98)
  {
    sub_100004A34(v98);
  }

  ATCSMutex::unlock((a1 + 56));
  return v84;
}

void sub_10065F364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, int a24, const void *a25, uint64_t a26, std::__shared_weak_count *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10034F8E8(&a28);
  sub_10001021C(&a25);
  if (a27)
  {
    sub_100004A34(a27);
  }

  ATCSMutex::unlock((v33 + 56));
  _Unwind_Resume(a1);
}

uint64_t C2KRadioModule::isBuddyState(C2KRadioModule *this)
{
  v4 = 0;
  v3[0] = this;
  v3[1] = &v4;
  v1 = *(this + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100676290;
  block[3] = &unk_101E6F858;
  block[4] = v3;
  dispatch_sync(v1, block);
  return v4;
}

void *sub_10065F5EC(void *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  return __dst;
}

std::string *C2KRadioModule::setBasebandVersion_nl(uint64_t a1, const std::string *a2)
{
  if ((ATCSMutex::isLocked((a1 + 56)) & 1) == 0)
  {
    __TUAssertTrigger("(fLock).isLocked()");
  }

  v4 = (a1 + 1000);
  v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v7 = *(a1 + 1023);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 1008);
  }

  if (size != v7 || (v5 >= 0 ? (v9 = a2) : (v9 = a2->__r_.__value_.__r.__words[0]), v8 >= 0 ? (v10 = (a1 + 1000)) : (v10 = v4->__r_.__value_.__r.__words[0]), result = memcmp(v9, v10, size), result))
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a2->__r_.__value_.__r.__words[0];
      if (v5 >= 0)
      {
        v13 = a2;
      }

      v14 = 136315138;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband version set to: %s", &v14, 0xCu);
    }

    return std::string::operator=(v4, a2);
  }

  return result;
}

uint64_t sub_10065F7C8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 8);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

uint64_t C2KRadioModule::handleBasebandModeChanged_nl(uint64_t a1, uint64_t a2)
{
  if ((ATCSMutex::isLocked((a1 + 56)) & 1) == 0)
  {
    __TUAssertTrigger("(fLock).isLocked()");
  }

  v4 = *(a1 + 344);
  if (v4)
  {
    sub_10017718C(v4, a2);
  }

  v6 = *(a1 + 240);
  LODWORD(v6) = (*(**(a1 + 64) + 88))(*(a1 + 64), a2);
  return sub_100080280(a1 + 208, &v6);
}

void C2KRadioModule::provisionDevice(Registry **this)
{
  v1 = 0;
  v2 = 0;
  sub_100DF07C8(this[98], &v1);
  if (v1)
  {
    CallController::startOTASP(v1);
  }

  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_10065F8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::handleBringBasebandOnline_sync(C2KRadioModule *this)
{
  ATCSMutex::lock((this + 56));
  (*(**(this + 8) + 112))(*(this + 8));
  return ATCSMutex::unlock((this + 56));
}

void C2KRadioModule::handleOperatorBundleChange_sync(uint64_t this, uint64_t a2)
{
  v2 = *(this + 1200);
  v3 = (this + 1208);
  if (v2 != (this + 1208))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_12;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_14:
      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_12:
    if (*(this + 1256) == v7)
    {
      C2KRadioModule::updateDataThrottlingConfig(this);
    }

    goto LABEL_14;
  }
}

uint64_t C2KRadioModule::handleBreadStatusChanged_sync(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 1284);
  if ((*a2 != 1) == (v2 == 1))
  {
    v3 = result;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "false";
      if (v2 == 1)
      {
        v5 = "true";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Bread pairing status changed to %s; acquiring airplane mode assertion to apply changes", &buf, 0xCu);
    }

    sub_10000501C(&buf, "/cc/assertions/airplane_mode");
    ctu::rest::AssertionHandle::create();
    if ((v10[6] & 0x80000000) != 0)
    {
      operator delete(buf);
    }

    v6 = *(v3 + 688);
    *(v3 + 680) = v7;
    if (v6)
    {
      sub_100004A34(v6);
    }

    *&buf = off_101E6F368;
    *(&buf + 1) = v3;
    v9 = v2 == 1;
    p_buf = &buf;
    memset(v10, 0, sizeof(v10));
    ctu::rest::AssertionHandle::setHandler_impl();
    return sub_10000FF50(&buf);
  }

  return result;
}

void C2KRadioModule::updateDataThrottlingConfig(Registry **this)
{
  value_7 = 0;
  value = 0;
  ServiceMap = Registry::getServiceMap(this[98]);
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
  v24 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v24);
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
  (*(*v10 + 136))(v10, &value_7, &value);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v28 = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v28 = v12;
  }

  else
  {
    v13 = xpc_null_create();
    v28 = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v13) == &_xpc_type_dictionary)
  {
    xpc_retain(v13);
    goto LABEL_19;
  }

  v14 = xpc_null_create();
LABEL_18:
  v28 = v14;
LABEL_19:
  xpc_release(v13);
  v26 = xpc_string_create(abm::kActionConfigureDataThrottling);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v24 = &v28;
  v25 = abm::kKeyAction;
  sub_10000F688(&v24, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  v22 = xpc_BOOL_create(value_7);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v24 = &v28;
  v25 = abm::kKeyEnabled;
  sub_10000F688(&v24, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  if (value_7)
  {
    v20 = xpc_int64_create(value);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    v24 = &v28;
    v25 = abm::kKeyTimeout;
    sub_10000F688(&v24, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
  }

  ATCSMutex::lock((this + 7));
  v15 = this[132];
  v16 = abm::kCommandNetworkInterfaceControl;
  v19 = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    v19 = xpc_null_create();
  }

  v17 = this[129];
  v18 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  v31[0] = off_101E6F468;
  v31[1] = this;
  v31[3] = v31;
  (*(*v15 + 48))(v15, v16, &v19, &v18, v31);
  sub_100049CCC(v31);
  if (v18)
  {
    dispatch_release(v18);
  }

  xpc_release(v19);
  v19 = 0;
  ATCSMutex::unlock((this + 7));
  xpc_release(v28);
}

void sub_10065FF94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

BOOL C2KRadioModule::inOperatingMode(uint64_t a1, int a2)
{
  ATCSMutex::lock((a1 + 56));
  v4 = (*(**(a1 + 64) + 80))(*(a1 + 64));
  ATCSMutex::unlock((a1 + 56));
  return v4 == a2;
}

uint64_t C2KRadioModule::setTraceProperty(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  if ((*(**(a1 + 1056) + 32))(*(a1 + 1056)))
  {

    C2KRadioModule::setABMTraceProperty(a1, a2, a3, a4);
  }

  v8 = sub_1005C6790(2u);
  v9 = strlen(v8);
  v10 = v9;
  v11 = *(a2 + 23);
  if (v11 < 0)
  {
    if (v9 != a2[1])
    {
      goto LABEL_17;
    }

    if (v9 == -1)
    {
      sub_10013C334();
    }

    v12 = *a2;
  }

  else
  {
    v12 = a2;
    if (v10 != v11)
    {
      goto LABEL_17;
    }
  }

  if (!memcmp(v12, v8, v10))
  {
    v13 = *(a3 + 23) >= 0 ? a3 : *a3;
    if (!strcasecmp(v13, "enabled"))
    {
      sub_10000501C(v22, "ABM");
      C2KRadioModule::setABMTraceProperty(a1, v22, a3, a4);
    }
  }

LABEL_17:
  v14 = *(a1 + 488);
  if (v14)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__dst, *a2, a2[1]);
    }

    else
    {
      *__dst = *a2;
      v21 = a2[2];
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v18, *a3, *(a3 + 8));
    }

    else
    {
      *v18 = *a3;
      v19 = *(a3 + 16);
    }

    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v17 = *(a4 + 16);
    }

    sub_1006C97E4(v14, __dst, v18, __p, 1);
  }

  return 0;
}

void sub_100660318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 49) < 0)
  {
    operator delete(*(v28 - 72));
  }

  _Unwind_Resume(exception_object);
}

uint64_t C2KRadioModule::getTraceProperty(uint64_t a1, uint64_t a2, uint64_t a3, xpc_object_t **a4)
{
  if ((*(**(a1 + 1056) + 32))(*(a1 + 1056)))
  {
    v8 = a4[1];
    v19[0] = *a4;
    v19[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    C2KRadioModule::getABMTraceProperty(a1, a2, a3, v19);
  }

  *string = 0;
  v17 = 0;
  v18 = 0;
  v9 = *(a1 + 488);
  if (v9)
  {
    v10 = sub_1006C8B14(v9, a2, a3, string);
    if (v18 >= 0)
    {
      v11 = string;
    }

    else
    {
      v11 = *string;
    }
  }

  else
  {
    v10 = 0;
    v11 = string;
  }

  v14 = xpc_string_create(v11);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v13[0] = *a4;
  v13[1] = "kRadioTracePropertyValue";
  sub_10000F688(v13, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  v14 = 0;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(*string);
  }

  return v10;
}

void sub_1006609E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100660E1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_object_t object, xpc_object_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, xpc_object_t a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100660EE0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void *sub_100660F28(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  return a1;
}

uint64_t C2KRadioModule::handleRadioStateChanged_sync(uint64_t result, int a2)
{
  if (*(result + 1280) != a2)
  {
    v2 = result;
    ATCSMutex::lock((result + 56));
    sub_1002C579C(*(v2 + 1280));
    if (*(v2 + 1280) >= 2u)
    {
      if (*(v2 + 680))
      {
        v7 = *(v2 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Baseband moved to airplane mode; release airplane mode assertion acquired for bread pairing status change", buf, 2u);
        }

        v8 = *(v2 + 688);
        *(v2 + 680) = 0;
        *(v2 + 688) = 0;
        if (v8)
        {
          sub_100004A34(v8);
        }
      }

      v9 = *(v2 + 1280);
      if (v9 > 6 || ((0x67u >> v9) & 1) == 0)
      {
        return ATCSMutex::unlock((v2 + 56));
      }

      v3 = 0x5Fu >> v9;
    }

    else
    {
      LOBYTE(v3) = 1;
    }

    if (*(v2 + 728))
    {
      v4 = *(v2 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = "is not";
        if (v3)
        {
          v5 = "is";
        }

        *buf = 136315138;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Radio boot state %s healthy", buf, 0xCu);
      }

      for (i = *(v2 + 720); i != v2 + 712; i = *(i + 8))
      {
        sub_10000FFD0(i + 16, v3 & 1);
      }

      sub_100674700((v2 + 712));
    }

    if (*(v2 + 752))
    {
      if (v3)
      {
        for (j = *(v2 + 744); j != v2 + 736; j = *(j + 8))
        {
          sub_1001452E4(j + 16, 1, 0);
        }
      }

      else
      {
        sub_100674774(v13, v2 + 736);
        C2KRadioModule::getBasebandDeadCauseCode(v2, v13);
        sub_100664770(v13);
      }

      v11 = *(v2 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = "is not";
        if (v3)
        {
          v12 = "is";
        }

        *buf = 136315138;
        v15 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Radio boot state %s healthy", buf, 0xCu);
      }

      sub_100664770((v2 + 736));
    }

    C2KRadioModule::maybeResetBootedAssertion_sync(v2);
    return ATCSMutex::unlock((v2 + 56));
  }

  return result;
}

void sub_1006611E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100664770(va);
  ATCSMutex::unlock((v3 + 56));
  _Unwind_Resume(a1);
}

void C2KRadioModule::getBasebandDeadCauseCode(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 1056))
  {
    v4 = xpc_null_create();
    v5 = *(a1 + 1032);
    v8[5] = v5;
    v8[6] = v4;
    if (v5)
    {
      dispatch_retain(v5);
    }

    sub_100674774(v8, a2);
    v6 = *(a1 + 32);
    v8[3] = *(a1 + 24);
    v8[4] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v8[10] = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101776FE4();
  }

  for (i = *(a2 + 8); i != a2; i = *(i + 8))
  {
    sub_1001452E4(i + 16, 0, 0);
  }
}

void sub_100661410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, xpc_object_t a15, char a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::checkRadioBootHealth(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_1000224C8(&v2, a2);
    operator new();
  }
}

void sub_100661550(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::checkRadioBootHealthDetails(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_100674A74(&v2, a2);
    operator new();
  }
}

void sub_100661638(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100661644(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_100664770(a1);
  return a1;
}

void C2KRadioModule::checkBasebandConfigUpdateInfo(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_100675280(&v2, a2);
    operator new();
  }
}

void sub_10066175C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t C2KRadioModule::acquireBasebandBootedAssertion_sync(uint64_t this)
{
  v1 = this;
  v2 = *(this + 696);
  if (v2)
  {
    if (*(v2 + 68) == 2 && *(this + 776))
    {

      return C2KRadioModule::handleGetBasebandFirmwarePreflightInfo_sync(this);
    }
  }

  else
  {
    sub_10000501C(__p, "/cc/assertions/baseband_booted");
    ctu::rest::AssertionHandle::create();
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(v1 + 704);
    *(v1 + 696) = v4;
    if (v3)
    {
      sub_100004A34(v3);
    }

    __p[0] = off_101E6F6E8;
    __p[1] = v1;
    v7 = __p;
    ctu::rest::AssertionHandle::setHandler_impl();
    return sub_10000FF50(__p);
  }

  return this;
}

void C2KRadioModule::getBasebandRFFEScanData(capabilities::abs *a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    if (*(a1 + 132))
    {
      if (capabilities::abs::supportsRFFEScanData(a1))
      {
        xpc_null_create();
        v4 = *(a1 + 129);
        if (v4)
        {
          dispatch_retain(v4);
        }

        sub_1006756B4(v7, a2);
        v6 = *(a1 + 3);
        v5 = *(a1 + 4);
        v8 = a1;
        v9 = v6;
        v10 = v5;
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        v11 = 0;
        operator new();
      }

      if (os_log_type_enabled(*(a1 + 5), OS_LOG_TYPE_ERROR))
      {
        sub_101777334();
      }
    }

    else if (os_log_type_enabled(*(a1 + 5), OS_LOG_TYPE_ERROR))
    {
      sub_101776FE4();
    }

    sub_1001453F8(a2, 0);
  }
}

void sub_100661B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100661BE0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_1006648E4(a1);
}

void C2KRadioModule::loadBasebandConfigInfoPreferences_sync(C2KRadioModule *this)
{
  if (*(this + 1127) < 0)
  {
    **(this + 138) = 0;
    *(this + 139) = 0;
  }

  else
  {
    *(this + 1104) = 0;
    *(this + 1127) = 0;
  }

  if (*(this + 1151) < 0)
  {
    **(this + 141) = 0;
    *(this + 142) = 0;
  }

  else
  {
    *(this + 1128) = 0;
    *(this + 1151) = 0;
  }

  if (*(this + 1175) < 0)
  {
    **(this + 144) = 0;
    *(this + 145) = 0;
  }

  else
  {
    *(this + 1152) = 0;
    *(this + 1175) = 0;
  }

  ServiceMap = Registry::getServiceMap(*(this + 98));
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
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
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (!v10)
  {
LABEL_16:
    v12 = *(this + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Fail to retrieve CFPreferencesInterface.", buf, 2u);
    }

    goto LABEL_41;
  }

LABEL_20:
  v25 = 0;
  (*(*v10 + 40))(buf, v10, @"BasebandConfigUpdateInfoTime", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100060DE8(&v25, buf);
  sub_10000A1EC(buf);
  if (v25)
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v13 = (this + 1128);
    v14 = *buf;
    v28[0] = *&buf[8];
    *(v28 + 7) = *&buf[15];
    v15 = buf[23];
    if (*(this + 1151) < 0)
    {
      operator delete(*v13);
    }

    *(this + 141) = v14;
    *(this + 142) = v28[0];
    *(this + 1143) = *(v28 + 7);
    *(this + 1151) = v15;
    v24 = 0;
    (*(*v10 + 40))(buf, v10, @"BasebandConfigUpdateInfoType", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100060DE8(&v24, buf);
    v16 = (this + 1104);
    sub_10000A1EC(buf);
    if (v24)
    {
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v17 = *buf;
      v28[0] = *&buf[8];
      *(v28 + 7) = *&buf[15];
      v18 = buf[23];
      if (*(this + 1127) < 0)
      {
        operator delete(*v16);
      }

      *(this + 138) = v17;
      *(this + 139) = v28[0];
      *(this + 1119) = *(v28 + 7);
      *(this + 1127) = v18;
    }

    v23 = 0;
    (*(*v10 + 40))(buf, v10, @"BasebandConfigUpdateInfoDetails", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_100060DE8(&v23, buf);
    v19 = (this + 1152);
    sub_10000A1EC(buf);
    if (v23)
    {
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v20 = *buf;
      v28[0] = *&buf[8];
      *(v28 + 7) = *&buf[15];
      v21 = buf[23];
      if (*(this + 1175) < 0)
      {
        operator delete(*v19);
      }

      *(this + 144) = v20;
      *(this + 145) = v28[0];
      *(this + 1167) = *(v28 + 7);
      *(this + 1175) = v21;
    }

    v22 = *(this + 5);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 1127) < 0)
      {
        v16 = *v16;
      }

      if (*(this + 1151) < 0)
      {
        v13 = *v13;
      }

      if (*(this + 1175) < 0)
      {
        v19 = *v19;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = v13;
      *&buf[22] = 2080;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Loading the values of baseband config update info: type=%s, time=%s, details=%s", buf, 0x20u);
    }

    sub_100005978(&v23);
    sub_100005978(&v24);
  }

  sub_100005978(&v25);
LABEL_41:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1006620B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  sub_100005978(&a11);
  sub_100005978(&a12);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::saveBasebandConfigInfoPreferences_sync(C2KRadioModule *this)
{
  ServiceMap = Registry::getServiceMap(*(this + 98));
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
  *&v30 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v30);
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
      if (!v10)
      {
        goto LABEL_7;
      }

LABEL_11:
      v12 = *(this + 1127);
      if (v12 < 0)
      {
        if (!*(this + 139))
        {
          goto LABEL_20;
        }
      }

      else if (!*(this + 1127))
      {
        goto LABEL_20;
      }

      if ((*(this + 1151) & 0x8000000000000000) != 0)
      {
        if (*(this + 142))
        {
          goto LABEL_17;
        }
      }

      else if (*(this + 1151))
      {
LABEL_17:
        v26 = 0;
        if ((v12 & 0x80000000) != 0)
        {
          sub_100005F2C(__dst, *(this + 138), *(this + 139));
        }

        else
        {
          *__dst = *(this + 69);
          v25 = *(this + 140);
        }

        if (SHIBYTE(v25) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v29 = v25;
        }

        v27 = 0;
        if (SHIBYTE(v29) < 0)
        {
          sub_100005F2C(&v30, __p[0], __p[1]);
        }

        else
        {
          v30 = *__p;
          v31 = v29;
        }

        v32 = 0;
        if (ctu::cf::convert_copy())
        {
          v15 = v27;
          v27 = v32;
          v33 = v15;
          sub_100005978(&v33);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        v26 = v27;
        v27 = 0;
        sub_100005978(&v27);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v25) < 0)
        {
          operator delete(__dst[0]);
        }

        v23 = 0;
        if (*(this + 1151) < 0)
        {
          sub_100005F2C(v21, *(this + 141), *(this + 142));
        }

        else
        {
          *v21 = *(this + 1128);
          v22 = *(this + 143);
        }

        if (SHIBYTE(v22) < 0)
        {
          sub_100005F2C(__p, v21[0], v21[1]);
        }

        else
        {
          *__p = *v21;
          v29 = v22;
        }

        v27 = 0;
        if (SHIBYTE(v29) < 0)
        {
          sub_100005F2C(&v30, __p[0], __p[1]);
        }

        else
        {
          v30 = *__p;
          v31 = v29;
        }

        v32 = 0;
        if (ctu::cf::convert_copy())
        {
          v16 = v27;
          v27 = v32;
          v33 = v16;
          sub_100005978(&v33);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        v23 = v27;
        v27 = 0;
        sub_100005978(&v27);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21[0]);
        }

        if (*(this + 1175) < 0)
        {
          sub_100005F2C(v18, *(this + 144), *(this + 145));
        }

        else
        {
          *v18 = *(this + 72);
          v19 = *(this + 146);
        }

        if (SHIBYTE(v19) < 0)
        {
          sub_100005F2C(__p, v18[0], v18[1]);
        }

        else
        {
          *__p = *v18;
          v29 = v19;
        }

        v27 = 0;
        if (SHIBYTE(v29) < 0)
        {
          sub_100005F2C(&v30, __p[0], __p[1]);
        }

        else
        {
          v30 = *__p;
          v31 = v29;
        }

        v32 = 0;
        if (ctu::cf::convert_copy())
        {
          v17 = v27;
          v27 = v32;
          v33 = v17;
          sub_100005978(&v33);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        v20 = v27;
        v27 = 0;
        sub_100005978(&v27);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v19) < 0)
        {
          operator delete(v18[0]);
        }

        v13 = kCFPreferencesCurrentUser;
        v14 = kCFPreferencesAnyHost;
        (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoType", v26, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoTime", v23, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoDetails", v20, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        sub_100005978(&v20);
        sub_100005978(&v23);
        sub_100005978(&v26);
        goto LABEL_71;
      }

LABEL_20:
      v13 = kCFPreferencesCurrentUser;
      v14 = kCFPreferencesAnyHost;
      (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoType", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoTime", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      (*(*v10 + 16))(v10, @"BasebandConfigUpdateInfoDetails", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
LABEL_71:
      (*(*v10 + 48))(v10, @"com.apple.commcenter", v13, v14);
      goto LABEL_72;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_101777368();
  }

LABEL_72:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1006627E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, const void *a30, const void *a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100005978(&a31);
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100005978(&a22);
  sub_100005978(&a30);
  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

  _Unwind_Resume(a1);
}

void C2KRadioModule::handleCarrierBundlesChange_sync(void *a1, uint64_t a2)
{
  if ((rest::operator==() & 1) == 0)
  {
    if (a1[132])
    {
      v22 = 1;
      if ((atomic_load_explicit(byte_101FBA918, memory_order_acquire) & 1) == 0)
      {
        sub_10177739C();
      }

      v4 = 0;
      v5 = abm::kTraceBaseband;
      do
      {
        v6 = *&byte_101FBA918[v4 + 8];
        sub_10000501C(&buf, v5);
        sub_10000501C(v20, v6);
        sub_10000501C(__p, "");
        (*(*a1 + 240))(a1, &buf, v20, __p);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        if (v21 < 0)
        {
          operator delete(v20[0]);
        }

        if (v24 < 0)
        {
          operator delete(buf);
        }

        v4 += 8;
      }

      while (v4 != 16);
      *&buf = a1;
      *(&buf + 1) = &v22;
      v7 = a1[154];
      if (v7 != (a1 + 155))
      {
        v8 = (a2 + 8);
        do
        {
          v9 = *v8;
          if (*v8)
          {
            v10 = *(v7 + 8);
            v11 = v8;
            do
            {
              if (*(v9 + 32) >= v10)
              {
                v11 = v9;
              }

              v9 = *(v9 + 8 * (*(v9 + 32) < v10));
            }

            while (v9);
            if (v11 != v8 && v10 >= *(v11 + 8))
            {
              if ((rest::operator==() & 1) == 0)
              {
                sub_1006762AC(&buf, *(v7 + 8), v7 + 40);
              }

              goto LABEL_26;
            }
          }

          else
          {
            v10 = *(v7 + 8);
          }

          sub_1006762AC(&buf, v10, v7 + 40);
LABEL_26:
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

        while (v13 != (a1 + 155));
      }

      v15 = a1[5];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = CSIBOOLAsString(v22);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging is allowed: %s", &buf, 0xCu);
      }

      sub_10000501C(&buf, v5);
      sub_10000501C(v20, abm::kKeyTraceCarrierCellularLoggingAllowed);
      v17 = CSIBOOLAsString(v22);
      sub_10000501C(__p, v17);
      (*(*a1 + 240))(a1, &buf, v20, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if (v24 < 0)
      {
        operator delete(buf);
      }
    }

    else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101776FE4();
    }
  }
}

void sub_100662C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void C2KRadioModule::handleRegNetworkChanged_sync(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 784));
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
      if (!v12)
      {
        goto LABEL_7;
      }

LABEL_11:
      object = 0;
      v15 = xpc_dictionary_create(0, 0, 0);
      v16 = v15;
      if (v15)
      {
        object = v15;
      }

      else
      {
        v16 = xpc_null_create();
        object = v16;
        if (!v16)
        {
          v17 = xpc_null_create();
          v16 = 0;
          goto LABEL_18;
        }
      }

      if (xpc_get_type(v16) == &_xpc_type_dictionary)
      {
        xpc_retain(v16);
        goto LABEL_19;
      }

      v17 = xpc_null_create();
LABEL_18:
      object = v17;
LABEL_19:
      xpc_release(v16);
      if (xpc_get_type(object) != &_xpc_type_dictionary)
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101776FB0();
        }

LABEL_100:
        xpc_release(object);
        goto LABEL_101;
      }

      v18 = (*(*v12 + 104))(v12, a2);
      memset(&__p, 0, sizeof(__p));
      v19 = &abm::kKeyRAT1;
      if (a2 != 1)
      {
        v19 = &abm::kKeyRAT2;
      }

      sub_10000501C(&__p, *v19);
      if (v18 == -1)
      {
LABEL_98:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_100;
      }

      v20 = *(a1 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = subscriber::asString();
        v22 = *(a1 + 912);
        v23 = *(a1 + 936);
        *buf = 67109890;
        *&buf[4] = v18;
        *&buf[8] = 2080;
        *&buf[10] = v21;
        *&buf[18] = 1024;
        *&buf[20] = v22;
        LOWORD(v83) = 1024;
        *(&v83 + 2) = v23;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I RAT %d for slot %s, fLastRat{%d, %d}", buf, 0x1Eu);
      }

      v24 = *(a1 + 24 * (a2 != 1) + 912);
      if (v24 != v18)
      {
        v77 = xpc_int64_create(v18);
        if (!v77)
        {
          v77 = xpc_null_create();
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = &object;
        *&buf[8] = p_p;
        sub_10000F688(buf, &v77, &v78);
        xpc_release(v78);
        v78 = 0;
        xpc_release(v77);
        v77 = 0;
      }

      v61 = v24 != v18;
      v26 = Registry::getServiceMap(*(a1 + 784));
      v27 = v26;
      if (v28 < 0)
      {
        v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
        v30 = 5381;
        do
        {
          v28 = v30;
          v31 = *v29++;
          v30 = (33 * v30) ^ v31;
        }

        while (v31);
      }

      std::mutex::lock(v26);
      *buf = v28;
      v32 = sub_100009510(&v27[1].__m_.__sig, buf);
      v62 = v24;
      if (v32)
      {
        v33 = v32[3];
        v34 = v32[4];
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v27);
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v34);
          v63 = 0;
          goto LABEL_41;
        }
      }

      else
      {
        v33 = 0;
      }

      std::mutex::unlock(v27);
      v34 = 0;
      v63 = 1;
LABEL_41:
      v35 = (a1 + 24 * (a2 != 1) + 912);
      if (v33)
      {
        if ((*(*v33 + 1224))(v33))
        {
          v64 = v34;
          v36 = (*(*v12 + 72))(v12, a2);
          v38 = v37;
          v39 = (*(*v12 + 80))(v12, a2);
          v41 = v40;
          v42 = &abm::kKeyCellId2;
          if (a2 == 1)
          {
            v42 = &abm::kKeyCellId1;
          }

          sub_100016890(&__p, *v42);
          if ((v41 & 1) != 0 && v39)
          {
            v43 = *(a1 + 40);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              v44 = subscriber::asString();
              v45 = *(a1 + 920);
              v46 = *(a1 + 944);
              *buf = 134218754;
              *&buf[4] = v39;
              *&buf[12] = 2080;
              *&buf[14] = v44;
              *&buf[22] = 2048;
              v83 = v45;
              v84 = 2048;
              v85 = v46;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I CellId %llu for slot %s, fLastCellId{%llu, %llu}", buf, 0x2Au);
            }

            if (v39 != *(a1 + 24 * (a2 != 1) + 920))
            {
              v71 = xpc_uint64_create(v39);
              if (!v71)
              {
                v71 = xpc_null_create();
              }

              v47 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v47 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = &object;
              *&buf[8] = v47;
              sub_10000F688(buf, &v71, &v72);
              xpc_release(v72);
              v72 = 0;
              xpc_release(v71);
              v71 = 0;
              v61 = 1;
            }

            *(a1 + 24 * (a2 != 1) + 920) = v39;
          }

          else if (*v35 != v18)
          {
            v50 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v50 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = &object;
            *&buf[8] = v50;
            sub_100E3F0C8(buf, &v70);
            xpc_release(v70);
            v70 = 0;
            *(a1 + 24 * (a2 != 1) + 920) = 0;
          }

          v51 = &abm::kKeyAreaCode2;
          if (a2 == 1)
          {
            v51 = &abm::kKeyAreaCode1;
          }

          sub_100016890(&__p, *v51);
          if ((v38 & 1) != 0 && v36)
          {
            v52 = *(a1 + 40);
            v34 = v64;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = subscriber::asString();
              v54 = *(a1 + 928);
              v55 = *(a1 + 952);
              *buf = 134218754;
              *&buf[4] = v36;
              *&buf[12] = 2080;
              *&buf[14] = v53;
              *&buf[22] = 2048;
              v83 = v54;
              v84 = 2048;
              v85 = v55;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I AreaCode %llu for slot %s, fLastAreaCode{%llu, %llu}", buf, 0x2Au);
            }

            if (v36 != *(a1 + 24 * (a2 != 1) + 928))
            {
              v68 = xpc_uint64_create(v36);
              if (!v68)
              {
                v68 = xpc_null_create();
              }

              v56 = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v56 = __p.__r_.__value_.__r.__words[0];
              }

              *buf = &object;
              *&buf[8] = v56;
              sub_10000F688(buf, &v68, &v69);
              xpc_release(v69);
              v69 = 0;
              xpc_release(v68);
              v68 = 0;
              *(a1 + 24 * (a2 != 1) + 928) = v36;
              goto LABEL_81;
            }
          }

          else
          {
            v34 = v64;
            if (*v35 == v18)
            {
              goto LABEL_87;
            }

            v57 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v57 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = &object;
            *&buf[8] = v57;
            sub_100E3F0C8(buf, &v67);
            xpc_release(v67);
            v67 = 0;
            *(a1 + 24 * (a2 != 1) + 928) = 0;
          }

          *v35 = v18;
LABEL_87:
          if (v61)
          {
            goto LABEL_88;
          }

          goto LABEL_96;
        }

        v49 = *(a1 + 40);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Analytics is not authorized to use location", buf, 2u);
        }

        if (*(a1 + 920) || *(a1 + 944))
        {
          *buf = &object;
          *&buf[8] = abm::kKeyCellId1;
          sub_100E3F0C8(buf, &v76);
          xpc_release(v76);
          v76 = 0;
          *buf = &object;
          *&buf[8] = abm::kKeyCellId2;
          sub_100E3F0C8(buf, &v75);
          xpc_release(v75);
          v75 = 0;
          *buf = &object;
          *&buf[8] = abm::kKeyAreaCode1;
          sub_100E3F0C8(buf, &v74);
          xpc_release(v74);
          v74 = 0;
          *buf = &object;
          *&buf[8] = abm::kKeyAreaCode2;
          sub_100E3F0C8(buf, &v73);
          xpc_release(v73);
          v73 = 0;
          *(a1 + 920) = 0u;
          *(a1 + 944) = 0u;
LABEL_81:
          *v35 = v18;
          goto LABEL_88;
        }
      }

      else
      {
        v48 = *(a1 + 40);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "Could not find DataServiceInterface", buf, 2u);
        }
      }

      *v35 = v18;
      if (v62 != v18)
      {
LABEL_88:
        v58 = *(a1 + 1056);
        v66 = object;
        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          v66 = xpc_null_create();
        }

        v59 = abm::kCommandCallServiceState;
        v60 = *(a1 + 1032);
        v65 = v60;
        if (v60)
        {
          dispatch_retain(v60);
        }

        v81[0] = off_101E6FA88;
        v81[1] = a1;
        v81[3] = v81;
        (*(*v58 + 48))(v58, v59, &v66, &v65, v81);
        sub_100049CCC(v81);
        if (v65)
        {
          dispatch_release(v65);
        }

        xpc_release(v66);
        v66 = 0;
      }

LABEL_96:
      if ((v63 & 1) == 0)
      {
        sub_100004A34(v34);
      }

      goto LABEL_98;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_11;
  }

LABEL_7:
  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Could not find CellMonitorInterface!", buf, 2u);
  }

LABEL_101:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1006636A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, dispatch_object_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, xpc_object_t object, char a35)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::handleRegistrationStatusChanged_sync(C2KRadioModule *this)
{
  v1 = *(this + 374);
  if (v1 == (this + 3000))
  {
    return;
  }

  v3 = 0;
  do
  {
    v4 = *(v1 + 8);
    v5 = v4 == 1 || v4 == 3;
    if (v5)
    {
      v3 = 1;
    }

    else if ((v4 - 4) < 3)
    {
      v8 = 1;
      goto LABEL_19;
    }

    v6 = *(v1 + 1);
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
        v7 = *(v1 + 2);
        v5 = *v7 == v1;
        v1 = v7;
      }

      while (!v5);
    }

    v1 = v7;
  }

  while (v7 != (this + 3000));
  if ((v3 & 1) == 0)
  {
    return;
  }

  v8 = 0;
LABEL_19:
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v20 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v20 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_26;
    }
  }

  if (xpc_get_type(v10) != &_xpc_type_dictionary)
  {
    v11 = xpc_null_create();
LABEL_26:
    v20 = v11;
    goto LABEL_27;
  }

  xpc_retain(v10);
LABEL_27:
  xpc_release(v10);
  v18 = xpc_BOOL_create(v8);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v17[0] = &v20;
  v17[1] = abm::kKeyRegistrationStatus;
  sub_10000F688(v17, &v18, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  v12 = *(this + 132);
  v16 = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    v16 = xpc_null_create();
  }

  v13 = abm::kCommandCallServiceState;
  v14 = *(this + 129);
  v15 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v21[0] = off_101E6F988;
  v21[1] = this;
  v21[3] = v21;
  (*(*v12 + 48))(v12, v13, &v16, &v15, v21);
  sub_100049CCC(v21);
  if (v15)
  {
    dispatch_release(v15);
  }

  xpc_release(v16);
  v16 = 0;
  xpc_release(v20);
}

void sub_100663A3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::handleAirplaneModeUserPreferenceChanged_sync(uint64_t a1, int a2)
{
  v2 = *(a1 + 3016);
  if (v2 == a2 || v2 == 0)
  {
    return;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v16 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v16 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v6) != &_xpc_type_dictionary)
  {
    v7 = xpc_null_create();
LABEL_12:
    v16 = v7;
    goto LABEL_13;
  }

  xpc_retain(v6);
LABEL_13:
  xpc_release(v6);
  v14 = xpc_BOOL_create(*(a1 + 3016) == 2);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v13[0] = &v16;
  v13[1] = abm::kKeyAirplaneModeUserPreference;
  sub_10000F688(v13, &v14, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v14);
  v14 = 0;
  v8 = *(a1 + 1056);
  v12 = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v9 = abm::kCommandCallServiceState;
  v10 = *(a1 + 1032);
  v11 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v17[0] = off_101E6FA08;
  v17[1] = a1;
  v17[3] = v17;
  (*(*v8 + 48))(v8, v9, &v12, &v11, v17);
  sub_100049CCC(v17);
  if (v11)
  {
    dispatch_release(v11);
  }

  xpc_release(v12);
  v12 = 0;
  xpc_release(v16);
}

void sub_100663CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::sendOperatingModeRequest(void *a1, unsigned int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  v17 = xpc_int64_create(a2);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v13 = &v19;
  v14 = abm::kKeyBasebandOperatingMode;
  sub_10000F688(&v13, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v14 = a1 + 26;
  v13 = 1;
  v16 = HIDWORD(a1[30]);
  v17 = 0;
  v15 = 3;
  v7 = a1[132];
  v12 = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v8 = abm::kCommandSetBasebandOperatingMode;
  v9 = a1[129];
  v11 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a2 | (*(a1 + 60) << 32);
  v20[0] = off_101E6FB88;
  v20[1] = a1;
  v20[2] = v10;
  v20[3] = v20;
  (*(*v7 + 48))(v7, v8, &v12, &v11, v20);
  sub_100049CCC(v20);
  if (v11)
  {
    dispatch_release(v11);
  }

  xpc_release(v12);
  v12 = 0;
  sub_100677480(&v13);
  xpc_release(v19);
}

void sub_100663F38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void C2KRadioModule::enqueueAirplaneModeRequest(C2KRadioModule *this)
{
  v3 = *(this + 3);
  v2 = *(this + 4);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3802000000;
  v19 = sub_1006590A8;
  v21 = 0;
  v22 = 0;
  v20 = sub_1006590B8;
  Registry::getTimerService(&v13, *(this + 98));
  v4 = v13;
  sub_10000501C(__p, "Airplane mode debounce");
  v5 = *(this + 6);
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_100664250;
  aBlock[3] = &unk_101E6D4C8;
  aBlock[5] = this;
  aBlock[6] = v3;
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock[4] = &v16;
  v9 = _Block_copy(aBlock);
  sub_100D23364(v4, __p, 2, 3000000, &object, &v9);
  sub_10039C50C(v17 + 5, &v15);
  v6 = v15;
  v15 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  _Block_object_dispose(&v16, 8);
  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1006641B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27)
{
  v30 = *(v28 - 96);
  *(v28 - 96) = 0;
  if (v30)
  {
    sub_101777194();
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  _Block_object_dispose((v28 - 88), 8);
  v31 = *(v28 - 40);
  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  _Unwind_Resume(a1);
}

void sub_100664250(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[5];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[6])
      {
        v6 = *(v3 + 5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 134217984;
          v11 = 3;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Delay entering airplane mode [%llus]", &v10, 0xCu);
        }

        C2KRadioModule::delayEnterAirplaneMode(v3, v7);
        v8 = *(a1[4] + 8);
        v9 = *(v8 + 48);
        *(v8 + 40) = 0;
        *(v8 + 48) = 0;
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t C2KRadioModule::delayEnterAirplaneMode(C2KRadioModule *this, void *a2)
{
  ATCSMutex::lock((this + 56));
  if ((*(**(this + 8) + 104))(*(this + 8)))
  {
    C2KRadioModule::sendOperatingModeRequest(this, 1u);
  }

  else
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Airplane mode request discarded", v5, 2u);
    }
  }

  return ATCSMutex::unlock((this + 56));
}

uint64_t sub_100664420(uint64_t result, uint64_t a2)
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

void sub_10066443C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t C2KRadioModule::updateOperatingMode(uint64_t result, int a2)
{
  if (*(result + 280) != a2)
  {
    *(result + 280) = a2;
    v2 = *(result + 272);
    if (v2)
    {
      return (*(*v2 + 48))(*(result + 272), result + 280);
    }
  }

  return result;
}

uint64_t non-virtual thunk toC2KRadioModule::updateOperatingMode(uint64_t result, int a2)
{
  if (*(result + 264) != a2)
  {
    *(result + 264) = a2;
    v2 = *(result + 256);
    if (v2)
    {
      return (*(*v2 + 48))(*(result + 256), result + 264);
    }
  }

  return result;
}

void C2KRadioModule::blockAccessoriesDueToEmergencyIfNeeded_sync(C2KRadioModule *this)
{
  if (isActive())
  {
    v2 = 1;
  }

  else
  {
    v2 = isActive();
  }

  if (*(this + 996) != v2)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = "Unblocking accessories";
      if (v2)
      {
        v4 = "Blocking accessories due to emergency";
      }

      *buf = 136315138;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    }

    *(this + 996) = v2;
    v5 = *(this + 132);
    v6 = xpc_null_create();
    v7 = abm::kCommandBlockAccessories;
    v8 = abm::kCommandUnblockAccessories;
    v12 = v6;
    v9 = *(this + 129);
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    v13[0] = off_101E6FC08;
    v13[1] = this + 40;
    LOBYTE(v14[0]) = v2;
    v14[1] = v13;
    memset(v14 + 1, 0, 7);
    if (v2)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    (*(*v5 + 48))(v5, v10, &v12, &object, v13);
    sub_100049CCC(v13);
    if (object)
    {
      dispatch_release(object);
    }

    xpc_release(v12);
  }
}

void sub_1006646A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, xpc_object_t a10, char a11)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1006646F0(uint64_t a1)
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

void sub_100664770(uint64_t *a1)
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
        sub_1006647E4((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t sub_1006647E4(uint64_t a1)
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

uint64_t sub_100664864(uint64_t a1)
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

uint64_t sub_1006648E4(uint64_t a1)
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

void sub_1006649E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101777408();
  }

  _Unwind_Resume(exception_object);
}

void sub_100664A00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100664A38(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100664A68(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100664C44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

void sub_100664CA8(ATCSDPCQueue::Callback *a1)
{
  ATCSDPCQueue::Callback::~Callback(a1);

  operator delete();
}

uint64_t sub_100664CE0(uint64_t result)
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

void sub_100664D38(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(v1 + 1284) == 1;
  v4 = 0;
  C2KRadioModule::updateBreadPairedStatus_sync(v1, v2, v3);
}

void sub_100664DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000FF50(va);
  operator delete();
}

uint64_t sub_100664E64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D5E0;
  a2[1] = v2;
  return result;
}

void sub_100664E90(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  v34 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v34 = xpc_null_create();
  }

  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  __s1 = 0;
  v38 = 0;
  v39 = 0;
  v35[0] = &v34;
  v35[1] = abm::kKeyServerState;
  sub_100006354(v35, &object);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    p_s1 = &__s1;
    if (v39 < 0)
    {
      p_s1 = __s1;
    }

    LODWORD(__p[0]) = 136315394;
    *(__p + 4) = abm::kEventServerStateChange;
    WORD2(__p[1]) = 2080;
    *(&__p[1] + 6) = p_s1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s (%s)", __p, 0x16u);
  }

  v10 = strlen(abm::kServerStateStarted);
  v11 = v10;
  v12 = SHIBYTE(v39);
  if ((SHIBYTE(v39) & 0x8000000000000000) != 0)
  {
    if (v10 != v38)
    {
      goto LABEL_18;
    }

    if (v10 == -1)
    {
      sub_10013C334();
    }

    v13 = __s1;
  }

  else
  {
    if (v10 != SHIBYTE(v39))
    {
      goto LABEL_18;
    }

    v13 = &__s1;
  }

  if (!memcmp(v13, abm::kServerStateStarted, v11))
  {
    C2KRadioModule::updateDataThrottlingConfig(v7);
    v20 = *(v7 + 1056);
    v21 = xpc_null_create();
    v22 = abm::kCommandGetBasebandBootState;
    v35[0] = v21;
    v23 = *(v7 + 1032);
    object = v23;
    if (v23)
    {
      dispatch_retain(v23);
    }

    __p[0] = off_101E6D660;
    __p[1] = v7;
    __p[3] = __p;
    (*(*v20 + 48))(v20, v22, v35, &object, __p);
    sub_100049CCC(__p);
    if (object)
    {
      dispatch_release(object);
    }

    xpc_release(v35[0]);
    v35[0] = 0;
    goto LABEL_51;
  }

LABEL_18:
  v14 = strlen(abm::kServerStateStopping);
  v15 = v14;
  if ((v12 & 0x80000000) != 0)
  {
    if (v14 == v38)
    {
      if (v14 == -1)
      {
        sub_10013C334();
      }

      v16 = __s1;
LABEL_24:
      if (memcmp(v16, abm::kServerStateStopping, v15))
      {
        goto LABEL_25;
      }

      ATCSMutex::lock((v7 + 56));
      CSIRadioModulePrivate::changeState(v7, 7);
      if (*(v7 + 360) != 2)
      {
        *(v7 + 360) = 1;
      }

      ATCSMutex::unlock((v7 + 56));
      ServiceMap = Registry::getServiceMap(*(v7 + 784));
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
      __p[0] = v26;
      v30 = sub_100009510(&v25[1].__m_.__sig, __p);
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
LABEL_48:
          (*(*v32 + 232))(v32);
          if ((v33 & 1) == 0)
          {
            sub_100004A34(v31);
          }

          ATCSMutex::lock((v7 + 56));
          ATCSMutex::unlock((v7 + 56));
          goto LABEL_51;
        }
      }

      else
      {
        v32 = 0;
      }

      std::mutex::unlock(v25);
      v31 = 0;
      v33 = 1;
      goto LABEL_48;
    }
  }

  else if (v14 == v12)
  {
    v16 = &__s1;
    goto LABEL_24;
  }

LABEL_25:
  v17 = strlen(abm::kServerStateStopped);
  v18 = v17;
  if ((v12 & 0x80000000) != 0)
  {
    if (v17 != v38)
    {
      goto LABEL_51;
    }

    if (v17 == -1)
    {
      sub_10013C334();
    }

    v19 = __s1;
  }

  else
  {
    if (v17 != v12)
    {
      goto LABEL_51;
    }

    v19 = &__s1;
  }

  if (!memcmp(v19, abm::kServerStateStopped, v18))
  {
    (*(*v7 + 176))(v7);
  }

LABEL_51:
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__s1);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v34);
}

void sub_100665330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, dispatch_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100665428(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006654E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D660;
  a2[1] = v2;
  return result;
}

void sub_100665510(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a2;
  v15 = *a2;
  *v16 = *(a2 + 8);
  v17 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = *(a1 + 8);
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v7 = v5;
  }

  else
  {
    v7 = xpc_null_create();
  }

  if (!v4 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    v10 = *(v6 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Fetched baseband boot state from BasebandManager", __p, 2u);
    }

    v11 = *(v6 + 364);
    if (v11)
    {
      v12 = *(v6 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = CSIRadioModulePrivate::stateAsString(v11);
        *__p = 136315138;
        *&__p[4] = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Ignoring fetched state, as we already received baseband boot state [%s]", __p, 0xCu);
      }
    }

    else
    {
      *__p = v7;
      if (v7)
      {
        xpc_retain(v7);
      }

      else
      {
        *__p = xpc_null_create();
      }

      buf.gr_name = 0;
      v14.fObj.fObj = __p;
      C2KRadioModule::handleBasebandStateChange(v6, v14, &buf);
      xpc_release(*__p);
      *__p = 0;
    }
  }

  else
  {
    v8 = *(v6 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064CB44(&v15, __p);
      v9 = v19 >= 0 ? __p : *__p;
      LODWORD(buf.gr_name) = 136315138;
      *(&buf.gr_name + 4) = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Fetching baseband boot state failed. %s", &buf, 0xCu);
      if (v19 < 0)
      {
        operator delete(*__p);
      }
    }
  }

  xpc_release(v7);
  xpc_release(v5);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }
}

void sub_100665760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object)
{
  xpc_release(v17);
  xpc_release(v16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006657DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100665898(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D700;
  a2[1] = v2;
  return result;
}

void sub_1006658C4(uint64_t a1, xpc_object_t *a2, char **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10.gr_passwd) = 136315138;
    *(&v10.gr_passwd + 4) = abm::kEventBasebandBootStateChange;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &v10.gr_passwd, 0xCu);
  }

  v10.gr_passwd = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v10.gr_passwd = xpc_null_create();
  }

  v10.gr_name = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v9.fObj.fObj = &v10.gr_passwd;
  C2KRadioModule::handleBasebandStateChange(v7, v9, &v10);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v10.gr_passwd);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100665A18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100665A74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100665B30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D780;
  a2[1] = v2;
  return result;
}

void sub_100665B5C(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = abm::kEventTraceDumpStateBegin;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", buf, 0xCu);
    v8 = *(v7 + 40);
  }

  memset(v22, 0, sizeof(v22));
  *buf = 0u;
  v9 = os_signpost_id_generate(v8);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = *(v7 + 40);
    if (os_signpost_enabled(v10))
    {
      *v18 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "BasebandLogDump", "", v18, 2u);
    }
  }

  *v18 = off_101E6D7F0;
  v20[1] = v18;
  *buf = v9;
  *&buf[8] = os_retain(v8);
  sub_1000148FC(v22, v18);
  sub_10001499C(v18);
  sub_10000501C(&__p, "Baseband log dump");
  *v18 = *buf;
  v19 = *&buf[8];
  sub_1000148FC(v20, v22);
  memset(buf, 0, sizeof(buf));
  sub_100014A28(v22);
  Registry::createXpcJetsamAssertion();
  v11 = *object;
  object[0] = 0;
  object[1] = 0;
  v12 = *(v7 + 568);
  *(v7 + 560) = v11;
  if (v12)
  {
    sub_100004A34(v12);
    if (object[1])
    {
      sub_100004A34(object[1]);
    }
  }

  sub_100014DA8(v18);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  object[0] = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  if (v6)
  {
    dispatch_retain(v6);
  }

  v14.fObj.fObj = object;
  C2KRadioModule::handleDumpStateStartEvent(v7, v14, v13);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(object[0]);
  object[0] = 0;
  sub_100014DA8(buf);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100665E04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100665EA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100665F78(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "BasebandLogDump", "", v5, 2u);
    }
  }
}

uint64_t sub_100665FF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006660AC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D880;
  a2[1] = v2;
  return result;
}

void sub_1006660D8(uint64_t a1, xpc_object_t *a2, char **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10.gr_passwd) = 136315138;
    *(&v10.gr_passwd + 4) = abm::kEventTraceDumpStateEnd;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &v10.gr_passwd, 0xCu);
  }

  v10.gr_passwd = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v10.gr_passwd = xpc_null_create();
  }

  v10.gr_name = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v9.fObj.fObj = &v10.gr_passwd;
  C2KRadioModule::handleDumpStateCompleteEvent(v7, v9, &v10);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v10.gr_passwd);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_10066622C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100666288(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100666344(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D900;
  a2[1] = v2;
  return result;
}

void sub_100666370(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = xpc_copy_description(v5);
    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    sub_10000501C(__p, v9);
    v10 = abm::kEventTracePostProcessingEnd;
    free(v9);
    v11 = v15 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v17 = v10;
    v18 = 2080;
    v19 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s with data: %s", buf, 0x16u);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  (*(*v7 + 544))(v7, __p);
  xpc_release(__p[0]);
  __p[0] = 0;
  v13 = *(v7 + 568);
  *(v7 + 560) = 0u;
  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_100343B98(byte_101FBA858, v12);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100666558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1006665B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066666C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6D980;
  a2[1] = v2;
  return result;
}

void sub_100666698(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = v7[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = abm::kEventBasebandPowerOff;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &v9, 0xCu);
    v8 = v7[5];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Baseband has powered-off", &v9, 2u);
  }

  (*(*v7 + 176))(v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_1006667E0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10066681C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006668D8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DA00;
  a2[1] = v2;
  return result;
}

void sub_100666904(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = abm::kEventBasebandOperatingModeChange;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &buf, 0xCu);
  }

  ATCSMutex::lock((v7 + 56));
  v13 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v9 = v5;
  }

  else
  {
    v9 = xpc_null_create();
    v13 = v9;
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    *&buf = &v13;
    *(&buf + 1) = abm::kKeyBasebandOperatingMode;
    sub_100006354(&buf, &object);
    v10 = xpc::dyn_cast_or_default(&object, 8, v11);
    xpc_release(object);
    v9 = v13;
  }

  else
  {
    v10 = 8;
  }

  xpc_release(v9);
  C2KRadioModule::handleBasebandModeChanged_nl(v7, v10);
  ATCSMutex::unlock((v7 + 56));
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100666AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100666B40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100666BFC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DA80;
  a2[1] = v2;
  return result;
}

void sub_100666C28(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  v5 = *a2;
  object = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = abm::kEventCTCellularTrasmitState;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", buf, 0xCu);
  }

  if (xpc_get_type(v5) != &_xpc_type_null)
  {
    v9 = *(v7 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, &object);
      v10 = v13 >= 0 ? buf : *buf;
      *v14 = 136446210;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I contents %{public}s", v14, 0xCu);
      if (v13 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  *buf = xpc_null_create();
  sub_10002A37C(124, &object, buf);
  xpc_release(*buf);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(object);
}

void sub_100666DC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_100666E18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100666ED4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DB00;
  a2[1] = v2;
  return result;
}

void sub_100666F00(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = abm::kEventTracePropertyUpdate;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &buf, 0xCu);
  }

  object = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v9 = object;
  }

  else
  {
    v9 = xpc_null_create();
    object = v9;
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(&buf, &object);
      v11 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
      *v25 = 136446210;
      *&v25[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I contents %{public}s", v25, 0xCu);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    memset(&buf, 0, sizeof(buf));
    *v25 = &object;
    *&v25[8] = abm::kKeyTraceName;
    sub_100006354(v25, &v23);
    xpc::dyn_cast_or_default(&v23, abm::kUnknown, v12);
    xpc_release(v23.__r_.__value_.__l.__data_);
    memset(v25, 0, sizeof(v25));
    v26 = 0;
    v23.__r_.__value_.__r.__words[0] = &object;
    v23.__r_.__value_.__l.__size_ = abm::kKeyTracePropertyName;
    sub_100006354(&v23, &__p);
    xpc::dyn_cast_or_default(&__p, "", v13);
    xpc_release(__p.__r_.__value_.__l.__data_);
    memset(&v23, 0, sizeof(v23));
    __p.__r_.__value_.__r.__words[0] = &object;
    __p.__r_.__value_.__l.__size_ = abm::kKeyTracePropertyValue;
    sub_100006354(&__p, __dst);
    xpc::dyn_cast_or_default(__dst, "", v14);
    xpc_release(__dst[0]);
    if (v26 >= 0)
    {
      v15 = v25;
    }

    else
    {
      v15 = *v25;
    }

    if (strcasecmp(v15, abm::kKeyEnabled))
    {
      goto LABEL_33;
    }

    if ((*(&v23.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v23.__r_.__value_.__l.__size_ != 1)
      {
        if (v23.__r_.__value_.__l.__size_ == 4)
        {
          v16 = v23.__r_.__value_.__r.__words[0];
LABEL_25:
          if (LODWORD(v16->__r_.__value_.__l.__data_) != 1702195828)
          {
            goto LABEL_26;
          }

LABEL_30:
          __p.__r_.__value_.__r.__words[2] = 0x400000000000000;
          *&__p.__r_.__value_.__l.__data_ = *"true";
LABEL_31:
          std::string::operator=(&v23, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

LABEL_33:
          v18 = *(v7 + 488);
          if (v18)
          {
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = buf;
            }

            if (SHIBYTE(v26) < 0)
            {
              sub_100005F2C(__dst, *v25, *&v25[8]);
            }

            else
            {
              *__dst = *v25;
              v21 = v26;
            }

            if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&v19, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
            }

            else
            {
              v19 = v23;
            }

            sub_1006C97E4(v18, &__p, __dst, &v19, 1);
          }

          if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v23.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v26) < 0)
          {
            operator delete(*v25);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          goto LABEL_50;
        }

LABEL_26:
        *&__p.__r_.__value_.__l.__data_ = *"false";
        __p.__r_.__value_.__r.__words[2] = 0x500000000000000;
        goto LABEL_31;
      }

      v17 = *v23.__r_.__value_.__l.__data_;
    }

    else
    {
      if (HIBYTE(v23.__r_.__value_.__r.__words[2]) != 1)
      {
        if (HIBYTE(v23.__r_.__value_.__r.__words[2]) == 4)
        {
          v16 = &v23;
          goto LABEL_25;
        }

        goto LABEL_26;
      }

      v17 = v23.__r_.__value_.__s.__data_[0];
    }

    if (v17 != 49)
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

LABEL_50:
  xpc_release(object);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100667368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, xpc_object_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, xpc_object_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, xpc_object_t object, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (*(v44 - 73) < 0)
  {
    operator delete(*(v44 - 96));
  }

  xpc_release(object);
  if (v43)
  {
    dispatch_release(v43);
  }

  xpc_release(v42);
  _Unwind_Resume(a1);
}

uint64_t sub_10066749C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100667558(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DB80;
  a2[1] = v2;
  return result;
}

void sub_100667584(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = abm::kEventLogSummaryRequest;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &buf, 0xCu);
  }

  v66 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v66 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v66 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v10) == &_xpc_type_dictionary)
  {
    xpc_retain(v10);
    goto LABEL_11;
  }

  v11 = xpc_null_create();
LABEL_10:
  v66 = v11;
LABEL_11:
  xpc_release(v10);
  v64 = xpc_string_create(abm::kLogSummaryCSIDomain);
  if (!v64)
  {
    v64 = xpc_null_create();
  }

  *&buf = &v66;
  *(&buf + 1) = abm::kKeyLogSummaryDomain;
  sub_10000F688(&buf, &v64, &v65);
  xpc_release(v65);
  v65 = 0;
  xpc_release(v64);
  v63 = 0;
  v64 = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v63 = v12;
  }

  else
  {
    v13 = xpc_null_create();
    v63 = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_20;
    }
  }

  if (xpc_get_type(v13) == &_xpc_type_dictionary)
  {
    xpc_retain(v13);
    goto LABEL_21;
  }

  v14 = xpc_null_create();
LABEL_20:
  v63 = v14;
LABEL_21:
  xpc_release(v13);
  CTGetRootVersionString();
  if (v68 >= 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf;
  }

  object = xpc_string_create(p_buf);
  if (!object)
  {
    object = xpc_null_create();
  }

  tz = &v63;
  v44 = abm::kKeyCSIDomainCTVersion;
  sub_10000F688(&tz, &object, &v62);
  xpc_release(v62);
  v62 = 0;
  xpc_release(object);
  object = 0;
  if (v68 < 0)
  {
    operator delete(buf);
  }

  v59 = xpc_string_create(kCTProjectBuildRevision);
  if (!v59)
  {
    v59 = xpc_null_create();
  }

  *&buf = &v63;
  *(&buf + 1) = abm::kKeyCSIDomainCTRepoVersion;
  sub_10000F688(&buf, &v59, &v60);
  xpc_release(v60);
  v60 = 0;
  xpc_release(v59);
  v59 = 0;
  v57 = xpc_string_create(kCTProjectBuildReason);
  if (!v57)
  {
    v57 = xpc_null_create();
  }

  *&buf = &v63;
  *(&buf + 1) = abm::kKeyCSIDomainBuildReason;
  sub_10000F688(&buf, &v57, &v58);
  xpc_release(v58);
  v58 = 0;
  xpc_release(v57);
  v57 = 0;
  if (*(v7 + 1264))
  {
    v16 = asString();
    v55 = xpc_string_create(v16);
    if (!v55)
    {
      v55 = xpc_null_create();
    }

    *&buf = &v63;
    *(&buf + 1) = "Baseband mode override";
    sub_10000F688(&buf, &v55, &v56);
    xpc_release(v56);
    v56 = 0;
    xpc_release(v55);
    v55 = 0;
  }

  if (*(v7 + 1268))
  {
    v17 = asString();
    v53 = xpc_string_create(v17);
    if (!v53)
    {
      v53 = xpc_null_create();
    }

    *&buf = &v63;
    *(&buf + 1) = "Operating mode override";
    sub_10000F688(&buf, &v53, &v54);
    xpc_release(v54);
    v54 = 0;
    xpc_release(v53);
    v53 = 0;
  }

  if (*(v7 + 1276))
  {
    v18 = asString();
    v51 = xpc_string_create(v18);
    if (!v51)
    {
      v51 = xpc_null_create();
    }

    *&buf = &v63;
    *(&buf + 1) = "WRM Telephony override";
    sub_10000F688(&buf, &v51, &v52);
    xpc_release(v52);
    v52 = 0;
    xpc_release(v51);
    v51 = 0;
  }

  v19 = *(v7 + 1272);
  if (v19 != -1)
  {
    v20 = sub_100633EA4(v19);
    v49 = xpc_string_create(v20);
    if (!v49)
    {
      v49 = xpc_null_create();
    }

    *&buf = &v63;
    *(&buf + 1) = "WRM Baseband override";
    sub_10000F688(&buf, &v49, &v50);
    xpc_release(v50);
    v50 = 0;
    xpc_release(v49);
    v49 = 0;
  }

  ServiceMap = Registry::getServiceMap(*(v7 + 784));
  v22 = ServiceMap;
  if (v23 < 0)
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
  *&buf = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, &buf);
  if (!v27)
  {
    v29 = 0;
LABEL_56:
    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    if (!v29)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
    goto LABEL_56;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
  if (v29)
  {
LABEL_57:
    tz = 0;
    (*(*v29 + 104))(&tz, v29);
    v31 = tz;
    v32 = (*(*v29 + 96))(v29);
    SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(v31, v32);
    v46[0] = 0;
    Name = CFTimeZoneGetName(tz);
    v46[0] = CFStringCreateWithFormat(0, 0, @"[%d] %@", (SecondsFromGMT / 3600.0), Name);
    ctu::cf_to_xpc(v46[0], v35);
    *&buf = &v63;
    *(&buf + 1) = "System Time Zone";
    sub_10000F688(&buf, &v47, &v48);
    xpc_release(v48);
    v48 = 0;
    xpc_release(v47);
    v47 = 0;
    sub_100005978(v46);
    sub_1006680EC(&tz);
  }

LABEL_58:
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  v36 = *(v7 + 784);
  if (v36)
  {
    v46[0] = 0;
    v46[1] = 0;
    v37 = *(v7 + 792);
    *&buf = v36;
    *(&buf + 1) = v37;
    if (v37)
    {
      atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
    }

    sGetSubscriberSimInterface();
    if (*(&buf + 1))
    {
      sub_100004A34(*(&buf + 1));
    }

    tz = v7;
    v44 = v63;
    if (v63)
    {
      xpc_retain(v63);
    }

    else
    {
      v44 = xpc_null_create();
    }

    v45 = v66;
    if (v66)
    {
      xpc_retain(v66);
    }

    else
    {
      v45 = xpc_null_create();
    }

    v69 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101777438();
  }

  v46[0] = v63;
  if (v63)
  {
    xpc_retain(v63);
  }

  else
  {
    v46[0] = xpc_null_create();
  }

  *&buf = &v66;
  *(&buf + 1) = abm::kKeyLogSummary;
  sub_100DAE90C(&buf, v46, &tz);
  xpc_release(tz);
  tz = 0;
  xpc_release(v46[0]);
  v46[0] = 0;
  v38 = *(v7 + 1056);
  v42 = v66;
  if (v66)
  {
    xpc_retain(v66);
  }

  else
  {
    v42 = xpc_null_create();
  }

  v39 = abm::kCommandReportLogSummary;
  v40 = *(v7 + 1032);
  v41 = v40;
  if (v40)
  {
    dispatch_retain(v40);
  }

  *&buf = off_101E6DD00;
  *(&buf + 1) = v7;
  v69 = &buf;
  (*(*v38 + 48))(v38, v39, &v42, &v41, &buf);
  sub_100049CCC(&buf);
  if (v41)
  {
    dispatch_release(v41);
  }

  xpc_release(v42);
  v42 = 0;
  xpc_release(v63);
  xpc_release(v66);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

uint64_t sub_10066805C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006680A8(uint64_t a1)
{
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

const void **sub_1006680EC(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100668120(uint64_t a1)
{
  *a1 = off_101E6DBF0;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  return a1;
}

void sub_100668180(uint64_t a1)
{
  *a1 = off_101E6DBF0;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;

  operator delete();
}

xpc_object_t sub_10066829C(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = off_101E6DBF0;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a2[2] = xpc_null_create();
  }

  v6 = a1[3];
  a2[3] = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  a2[3] = result;
  return result;
}

void sub_10066831C(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
}

void sub_10066835C(xpc_object_t *a1)
{
  xpc_release(a1[3]);
  a1[3] = 0;
  xpc_release(a1[2]);

  operator delete(a1);
}

const void **sub_1006683AC(uint64_t a1, ctu **a2)
{
  v12 = *a2;
  v3 = v12;
  *a2 = 0;
  v4 = *(a1 + 8);
  ctu::cf_to_xpc(v3, a2);
  v19 = (a1 + 16);
  v20 = abm::kKeyCSIDomainInformation;
  sub_10000F688(&v19, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  v5 = *(a1 + 16);
  v15 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v15 = xpc_null_create();
  }

  v6 = (a1 + 24);
  v19 = (a1 + 24);
  v20 = abm::kKeyLogSummary;
  sub_100DAE90C(&v19, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v7 = *(v4 + 1056);
  v8 = *v6;
  v14 = v8;
  v15 = 0;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v14 = xpc_null_create();
  }

  v9 = abm::kCommandReportLogSummary;
  v10 = *(v4 + 1032);
  v13 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v19 = off_101E6DC70;
  v20 = v4;
  v21 = &v19;
  (*(*v7 + 48))(v7, v9, &v14, &v13, &v19);
  sub_100049CCC(&v19);
  if (v13)
  {
    dispatch_release(v13);
  }

  xpc_release(v14);
  return sub_100010250(&v12);
}

void sub_10066856C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006685D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066868C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DC70;
  a2[1] = v2;
  return result;
}

void sub_1006686B8(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177746C();
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_100668750(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066880C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DD00;
  a2[1] = v2;
  return result;
}

void sub_100668838(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177746C();
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_1006688D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066898C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DD90;
  a2[1] = v2;
  return result;
}

void sub_1006689B8(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = abm::kEventBrickEnable;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", &buf, 0xCu);
  }

  v13 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v9 = v5;
  }

  else
  {
    v9 = xpc_null_create();
    v13 = v9;
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(&buf, &v13);
      if (v15 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      *v16 = 136446210;
      *&v16[4] = p_buf;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I contents %{public}s", v16, 0xCu);
      if (v15 < 0)
      {
        operator delete(buf);
      }
    }

    *&buf = &v13;
    *(&buf + 1) = abm::kCTTxPowerCommandData;
    sub_100006354(&buf, v16);
    xpc::dyn_cast_or_default(v16, 0, v12);
    xpc_release(*v16);
    operator new();
  }

  xpc_release(v9);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_100668BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  if (v16)
  {
    dispatch_release(v16);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_100668C68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100668CB4(uint64_t a1)
{
  C2KRadioModule::enableBrickMode_sync(*a1, *(a1 + 8));

  operator delete();
}

void sub_100668D28(C2KRadioModule **a1)
{
  C2KRadioModule::loadBasebandConfigInfoPreferences_sync(*a1);

  operator delete();
}

uint64_t sub_100668E08(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DE10;
  a2[1] = v2;
  return result;
}

void sub_100668E34(uint64_t a1, void **a2, NSObject **a3)
{
  v5 = *a2;
  *a2 = xpc_null_create();
  v6 = *a3;
  *a3 = 0;
  v7 = *(a1 + 8);
  v8 = *(v7 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = abm::kEventBasebandConfigUpdated;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I received event %s", buf, 0xCu);
  }

  object = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    v9 = object;
  }

  else
  {
    v9 = xpc_null_create();
    object = v9;
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    v10 = *(v7 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, &object);
      v11 = v22 >= 0 ? buf : *buf;
      LODWORD(v20) = 136315138;
      *(&v20 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I contents %s", &v20, 0xCu);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(*buf);
      }
    }

    *&v20 = &object;
    *(&v20 + 1) = abm::kKeyBasebandConfigUpdateType;
    sub_100006354(&v20, &v18);
    xpc::dyn_cast_or_default(&v18, "", v12);
    v13 = (v7 + 1104);
    if (*(v7 + 1127) < 0)
    {
      operator delete(*v13);
    }

    *v13 = *buf;
    *(v7 + 1120) = v22;
    HIBYTE(v22) = 0;
    buf[0] = 0;
    xpc_release(v18);
    *&v20 = &object;
    *(&v20 + 1) = abm::kKeyBasebandConfigUpdateTimestamp;
    sub_100006354(&v20, &v18);
    xpc::dyn_cast_or_default(&v18, "", v14);
    v15 = (v7 + 1128);
    if (*(v7 + 1151) < 0)
    {
      operator delete(*v15);
    }

    *v15 = *buf;
    *(v7 + 1144) = v22;
    HIBYTE(v22) = 0;
    buf[0] = 0;
    xpc_release(v18);
    *&v20 = &object;
    *(&v20 + 1) = abm::kKeyBasebandConfigUpdateDetails;
    sub_100006354(&v20, &v18);
    xpc::dyn_cast_or_default(&v18, "", v16);
    v17 = (v7 + 1152);
    if (*(v7 + 1175) < 0)
    {
      operator delete(*v17);
    }

    *v17 = *buf;
    *(v7 + 1168) = v22;
    HIBYTE(v22) = 0;
    buf[0] = 0;
    xpc_release(v18);
    C2KRadioModule::saveBasebandConfigInfoPreferences_sync(v7);
  }

  xpc_release(object);
  if (v6)
  {
    dispatch_release(v6);
  }

  xpc_release(v5);
}

void sub_10066912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  if (v11)
  {
    dispatch_release(v11);
  }

  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_1006691D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100669290(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6DE90;
  a2[1] = v2;
  return result;
}

void sub_1006692BC(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017774A0();
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_100669354(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100669414(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100669460(uint64_t a1, uint64_t a2)
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

void *sub_1006694F8(void *a1)
{
  *a1 = off_101E6DF90;
  sub_1006646F0((a1 + 2));
  return a1;
}

void sub_10066953C(void *a1)
{
  *a1 = off_101E6DF90;
  sub_1006646F0((a1 + 2));

  operator delete();
}

uint64_t sub_10066961C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E6DF90;
  a2[1] = v2;
  return sub_100669460((a2 + 2), a1 + 16);
}

void sub_100669654(void *a1)
{
  sub_1006646F0(a1 + 16);

  operator delete(a1);
}

void sub_100669690(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4)
  {
    v8 = *(*(a1 + 8) + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Failed to perform to get property for Antenna module", buf, 2u);
    }
  }

  object = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    sub_100022DB4();
  }

  (*(*v9 + 48))(v9, &object);
  xpc_release(object);
  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_1006697D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v11);
  if (v12 < 0)
  {
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100669800(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066984C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_10066993C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E010;
  a2[1] = v2;
  return result;
}

void sub_100669968(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017774D4();
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_100669A00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100669ACC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E0B0;
  a2[1] = v2;
  return result;
}

void sub_100669AF8(uint64_t a1, _BYTE *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*a2)
    {
      v4 = "is";
    }

    else
    {
      v4 = "is not";
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Airplane mode assertion %s granted for brick mode", &v5, 0xCu);
  }
}

uint64_t sub_100669BB4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100669C00(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_100669C40(*(a1 + 8), (a1 + 16));
  }

  return a1;
}

uint64_t sub_100669C40(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 33);
  v3 = a2[1];
  if (v2 == v3 && v2 != 0)
  {
    v2 = *(a1 + 32);
    v3 = *a2;
  }

  if (v2 == v3)
  {
    return 0;
  }

  *(a1 + 32) = *a2;
  v6 = *(a1 + 24);
  if (v6)
  {
    (*(*v6 + 48))(v6, a1 + 32);
  }

  return 1;
}

void *sub_100669CCC(void *a1)
{
  *a1 = off_101E6E130;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_100669D10(void *a1)
{
  *a1 = off_101E6E130;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_100669DF0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E6E130;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_100669E28(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

void sub_100669E64(uint64_t a1, uint64_t a2, void **a3)
{
  v8 = *a2;
  v4 = v8;
  *v9 = *(a2 + 8);
  v10 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4)
  {
    v6 = *(*(a1 + 8) + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064CB44(&v8, __p);
      v7 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Failed to update Bread status. %s", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*(a1 + 40))
  {
    sub_10000FFD0(a1 + 16, v8 == 0);
  }

  xpc_release(v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_100669FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100669FE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066A0A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E1B0;
  a2[1] = v2;
  return result;
}

void sub_10066A0CC(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4)
  {
    v8 = *(*(a1 + 8) + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Failed to perform to set motion paraemters from the bundle", v9, 2u);
    }
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_10066A188(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066A1D4(uint64_t a1)
{
  *a1 = off_101E6E230;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_10066A234(uint64_t a1)
{
  *a1 = off_101E6E230;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

void sub_10066A36C(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10066A398(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101E6E230;
  v4 = *(result + 1);
  *(a2 + 16) = result[16];
  *(a2 + 8) = v4;
  if (result[47] < 0)
  {
    result = sub_100005F2C((a2 + 24), *(result + 3), *(result + 4));
  }

  else
  {
    v5 = *(result + 24);
    *(a2 + 40) = *(result + 5);
    *(a2 + 24) = v5;
  }

  if (v3[71] < 0)
  {
    return sub_100005F2C((a2 + 48), *(v3 + 6), *(v3 + 7));
  }

  v6 = *(v3 + 3);
  *(a2 + 64) = *(v3 + 8);
  *(a2 + 48) = v6;
  return result;
}

void sub_10066A438(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_10066A45C(void *a1)
{
  sub_10032D400(a1 + 8);

  operator delete(a1);
}

void sub_10066A498(uint64_t a1, uint64_t a2, void **a3)
{
  v8 = *a2;
  v4 = v8;
  *v9 = *(a2 + 8);
  v10 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = *(a1 + 8);
  if (v4 == -534716415)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(a1 + 47) < 0)
      {
        sub_100005F2C(buf, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        *buf = *(a1 + 24);
        v12 = *(a1 + 40);
      }

      if (*(a1 + 71) < 0)
      {
        sub_100005F2C(__p, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *__p = *(a1 + 48);
        v14 = *(a1 + 64);
      }

      C2KRadioModule::dumpCommCenterTraceOnly(v6, buf, __p);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v12) < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (v4)
  {
    if (os_log_type_enabled(*(v6 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v8, buf);
      sub_101777508();
    }
  }

  else
  {
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Reset success", buf, 2u);
    }
  }

  xpc_release(v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_10066A654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v28);
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10066A6CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10066A718(uint64_t a1)
{
  v4 = a1;
  v2 = *(*a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Sending dump state notification", buf, 2u);
  }

  sub_1002C5218(a1 + 8);
  return sub_10014BF3C(&v4);
}

void sub_10066A794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10014BF3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10066A7A8(uint64_t a1)
{
  *a1 = off_101E6E2B0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10066A808(uint64_t a1)
{
  *a1 = off_101E6E2B0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_10066A938(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10066A964(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  *a2 = off_101E6E2B0;
  *(a2 + 8) = v4;
  if (result[39] < 0)
  {
    result = sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  else
  {
    v5 = *(result + 1);
    *(a2 + 32) = *(result + 4);
    *(a2 + 16) = v5;
  }

  if (v3[63] < 0)
  {
    return sub_100005F2C((a2 + 40), *(v3 + 5), *(v3 + 6));
  }

  v6 = *(v3 + 40);
  *(a2 + 56) = *(v3 + 7);
  *(a2 + 40) = v6;
  return result;
}

void sub_10066A9F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_10066AA1C(void *a1)
{
  sub_1000F02B4(a1 + 8);

  operator delete(a1);
}

void sub_10066AA58(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a2;
  v11 = *a2;
  *__p = *(a2 + 8);
  v13 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  v10 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v10 = xpc_null_create();
  }

  v6 = *(a1 + 8);
  if (v4 == -534716415)
  {
    memset(buf, 0, sizeof(buf));
    v17 = 0;
    *__dst = &v10;
    *&__dst[8] = abm::kKeyTimestampString;
    sub_100006354(__dst, object);
    xpc::dyn_cast_or_default();
    xpc_release(object[0]);
    if (*(a1 + 39) < 0)
    {
      sub_100005F2C(__dst, *(a1 + 16), *(a1 + 24));
    }

    else
    {
      *__dst = *(a1 + 16);
      v19 = *(a1 + 32);
    }

    if (SHIBYTE(v17) < 0)
    {
      sub_100005F2C(object, *buf, *&buf[8]);
    }

    else
    {
      *object = *buf;
      v15 = v17;
    }

    C2KRadioModule::dumpCommCenterTraceOnly(v6, __dst, object);
    if (SHIBYTE(v15) < 0)
    {
      operator delete(object[0]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(*__dst);
    }
  }

  else
  {
    if (!v4)
    {
      v7 = *(v6 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I DumpState command success", buf, 2u);
      }

      goto LABEL_26;
    }

    v8 = *(v6 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    sub_10064CB44(&v11, buf);
    if (v17 >= 0)
    {
      v9 = buf;
    }

    else
    {
      v9 = *buf;
    }

    *__dst = 136315138;
    *&__dst[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N DumpState command failed. %s", __dst, 0xCu);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(*buf);
  }

LABEL_26:
  xpc_release(v10);
  v10 = 0;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10066ACC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 41) < 0)
  {
    operator delete(*(v30 - 64));
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10066AD68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void **sub_10066ADB4(void **a1)
{
  sub_10066C328(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_10066ADF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_10066AEEC(a1, v5);
}

void sub_10066AEBC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10066AEEC(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_10066AFE8(a1, x1_0);
}

void sub_10066AFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10066B080(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1003363C8(a1, a2, 1, 2);
}

void sub_10066B1A4(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E6E330;
  operator new();
}

void sub_10066B2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_10066B31C(uint64_t a1)
{
  sub_10066B6C8(a1);

  operator delete();
}

uint64_t sub_10066B354(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_10066B740(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_10066B400(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10066B430(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_10066B45C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_10066B488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_10066B4E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10066B54C(&v2, a2);
}

void sub_10066B5BC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10066B5E4(v1);
  __cxa_rethrow();
}

uint64_t sub_10066B5E4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10066C328((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10066B658(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10066C328((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10066B6C8(uint64_t a1)
{
  *a1 = off_101E6E330;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_10066B740(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_10033666C(result + 4); ; i += 6)
    {
      result = sub_10033666C(v2);
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

void sub_10066B828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_10066B848(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10066B8B4(&v2, a2);
}

void sub_10066B924(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10066B968(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10066B9B0(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_10066BA08(a1, a2);
}

void sub_10066B9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_10066C328((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

void sub_10066BA08(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066BA74(a1 + 24, &object);
}

void sub_10066BA74(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066BB88(&v5, &object);
}

void sub_10066BAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_10066C328(va);
  dispatch_release(object);
  _Unwind_Resume(a1);
}

void (***sub_10066BB0C(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_10066C270(v4, result);
    sub_10066C270(v3, a2);
    sub_10066C270(a2, v4);
    return sub_10066C328(v4);
  }

  return result;
}

void sub_10066BB88(uint64_t (***a1)(), uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066BBFC(a1, &object);
}

void sub_10066BBFC(uint64_t (***a1)(), uint64_t a2)
{
  *a1 = 0;
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066BC70(a1, &object);
}

void sub_10066BC70(uint64_t (***a1)(), uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066BD28(off_101E6E438, &object, a1 + 1);
}

void sub_10066BD00(void *a1, _WORD *a2, int a3)
{
  if (a3 == 4)
  {
    a2[4] = 0;
  }

  else
  {
    sub_10066BDA4(a1, a2, a3);
  }
}

void sub_10066BD28(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  object = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  dispatch_retain(object);
  sub_10066C1C8(a1, &object, a3);
}

void sub_10066BDA4(void *a1, _WORD *a2, int a3)
{
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *a1;
      *a1 = 0;
      return;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      dispatch_release(**a2);
      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      a2[4] = 0;
      return;
    }

    v5 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v5 == ("N3ctu12DispatchSlotIN5boost3_bi6bind_tIvNS1_4_mfi3mf2Iv14C2KRadioModulejjEENS2_5list3INS2_5valueIPS6_EENS1_3argILi1EEENSC_ILi2EEEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v5, ("N3ctu12DispatchSlotIN5boost3_bi6bind_tIvNS1_4_mfi3mf2Iv14C2KRadioModulejjEENS2_5list3INS2_5valueIPS6_EENS1_3argILi1EEENSC_ILi2EEEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = *a1;
      return;
    }
  }

  *a2 = 0;
}

void sub_10066BEBC(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v3 = off_101E6E478 + 1;
  operator new();
}

uint64_t sub_10066C044(uint64_t a1)
{
  sub_10033686C(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_10066C328(v2);
    operator delete();
  }

  if (*(a1 + 40))
  {
    operator delete();
  }

  result = *(a1 + 48);
  if (result)
  {

    operator delete();
  }

  return result;
}

uint64_t sub_10066C0E0(uint64_t result, uint64_t a2, unsigned int a3)
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
        *(a2 + 8) = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("N5boost3_bi6bind_tIvNS_4_mfi3mf2Iv14C2KRadioModulejjEENS0_5list3INS0_5valueIPS4_EENS_3argILi1EEENSA_ILi2EEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5boost3_bi6bind_tIvNS_4_mfi3mf2Iv14C2KRadioModulejjEENS0_5list3INS0_5valueIPS4_EENS_3argILi1EEENSA_ILi2EEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
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
    v5 = *result;
    *(a2 + 16) = *(result + 16);
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10066C180(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_10066C270(uint64_t result, uint64_t a2)
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

void sub_10066C304(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_10066C328(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
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

void sub_10066C378(uint64_t a1)
{
  v1 = **(a1 + 32);
  sub_10066C744(v1 + 1264, v1 + 96);
  sub_10066C824(v1 + 1268, v1 + 96);
  sub_10066C904(v1 + 1276, v1 + 96);
  sub_10066C9E4(v1 + 1272, v1 + 96);
  sub_10066CAC4((v1 + 288), v1 + 96);
  v2[0] = C2KRadioModule::handleBringBasebandOnline_sync;
  v2[1] = 0;
  sub_10066D3CC(v1 + 96, v1, v2);
}

void sub_10066C710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10066C744(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/prefs-nb/debug_baseband_mode");
  v5[0] = off_101E6E4C8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10066C7F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10066C824(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/prefs-nb/debug_baseband_operating_mode");
  v5[0] = off_101E6E548;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10066C8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10066C904(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/prefs-nb/wrm-enable-telephony-override");
  v5[0] = off_101E6E5C8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10066C9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10066C9E4(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/prefs-nb/wrm-enable-baseband-state-override");
  v5[0] = off_101E6E648;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10066CA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10066CAC4(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_10066D138(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

uint64_t sub_10066CB98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E4C8;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10066CBC4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10066CC60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066CD1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E548;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10066CD48(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10066CDE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066CEA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E5C8;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10066CECC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10066CF68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066D024(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E648;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_10066D050(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_10066D0EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10066D138(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E6E6C8;
  v5[1] = v3;
  v5[3] = v5;
  sub_100333DB0(v5, a1);
  sub_1003336BC(v5);
  return a1;
}

uint64_t sub_10066D23C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6E6C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10066D270(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066D2BC(uint64_t *a1, BOOL *a2)
{
  if (!a2[1] || (v2 = xpc_BOOL_create(*a2)) == 0)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/brick_mode_enabled");
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

void sub_10066D388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_10066D4A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066D558(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E748;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066D590(void *a1)
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

uint64_t sub_10066D5D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10066D698(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E7C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066D6C8(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*(a1 + 8), a2);
  v3 = *(**(*(a1 + 16) + 64) + 96);

  return v3();
}

uint64_t sub_10066D72C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066D864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066D914(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E848;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10066D94C(void *a1, xpc_object_t *a2)
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

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_10066DA24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10066DAE4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E8C8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10066DB14(uint64_t a1, xpc_object_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    LOBYTE(block[0]) = *v4;
    ctu::rest::detail::read_enum_string_value(block, a2, v7);
    *v4 = block[0];
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = *(a1 + 16);
  if (*(v10 + 1224) != v5)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 0x40000000;
    block[2] = sub_10066DC74;
    block[3] = &unk_101E6E928;
    block[4] = v10;
    dispatch_async(&_dispatch_main_q, block);
  }
}

uint64_t sub_10066DC28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066DD68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066DE18(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E968;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10066DE50(void *a1, xpc_object_t *a2)
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

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_10066DF28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066E060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066E110(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6E9E8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066E148(void *a1, xpc_object_t *a2)
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

uint64_t sub_10066E240(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066E378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066E428(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EA68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066E460(uint64_t a1)
{
  v6 = **(a1 + 8);
  rest::read_rest_value();
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = (*(a1 + 16) + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, &v6);
}

uint64_t sub_10066E4E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066E61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066E6CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EAE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066E70C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066E758(uint64_t *a1, xpc_object_t *a2)
{
  sub_1001AD3D0(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10066E8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066E970(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EB68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10066E9A8(void *a1, xpc_object_t *a2)
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

    v5(v7);
  }

  sub_100009970(&v8, v9[0]);
}

uint64_t sub_10066EA80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066EACC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_100009970(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v10, object, count);
    xpc_release(object[0]);
    for (i = v12; i != v10[1] || v11 != v10[0]; i = ++v12)
    {
      v9 = 0;
      object[0] = &v11;
      object[1] = i;
      sub_10003EAD4(object, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        *object = 0u;
        v8 = 0u;
        HIDWORD(v8) = 1;
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10066ED84(object, &v6);
        xpc_release(v6);
        sub_10066EECC(a1, object, object);
        if (SBYTE7(v8) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v9);
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_10066ECE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 64));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

void sub_10066ED84(uint64_t a1, xpc_object_t *a2)
{
  v2 = *a2;
  v6 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    v6 = v2;
  }

  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    v3 = &v6;
    v4 = "first";
    sub_100006354(&v3, &object);
    read_rest_value();
    xpc_release(object);
    v3 = &v6;
    v4 = "second";
    sub_100006354(&v3, &object);
    read_rest_value();
    xpc_release(object);
    v2 = v6;
  }

  xpc_release(v2);
}

void sub_10066EE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void *sub_10066EECC(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = 0;
  result = *sub_100005C2C(a1, &v4, a2);
  if (!result)
  {
    sub_10066EF58();
  }

  return result;
}

void sub_10066EFF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10066F0FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066F1AC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EBE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066F1EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066F238(void *a1)
{
  read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4);
}

void sub_10066F3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066F450(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EC68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066F490(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066F4DC(uint64_t a1, const xpc::object *a2)
{
  read_rest_value(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10066F644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066F6F4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6ECE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066F734(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066F86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066F91C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6ED68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066F95C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066F9A8(uint64_t a1, const xpc::object *a2)
{
  read_rest_value(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10066FB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066FBC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EDE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066FC00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10066FD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10066FDE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EE68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10066FE28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10066FE74(uint64_t *a1, xpc_object_t *a2)
{
  sub_100109E38(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10066FFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10067008C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6EEE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1006700C4(void *a1, xpc_object_t *a2)
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

uint64_t sub_1006701BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100670208(void *a1)
{
  *a1 = off_101E6EF68;
  v2 = a1[2];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_100670258(void *a1)
{
  *a1 = off_101E6EF68;
  v1 = a1[2];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void *sub_100670338(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  result = *(a1 + 16);
  *a2 = off_101E6EF68;
  a2[1] = v4;
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[2] = result;
  return result;
}

void sub_100670390(char *a1)
{
  sub_1006706EC((a1 + 8));

  operator delete(a1);
}

void sub_1006703CC(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  xdict = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    v8 = xdict;
  }

  else
  {
    v8 = xpc_null_create();
    xdict = v8;
  }

  v9 = *(a1 + 8);
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  if (v4)
  {
    v10 = abm::kKeyPreFlightError;
    if (xpc_dictionary_get_value(v8, abm::kKeyPreFlightError))
    {
      __p = &xdict;
      v23 = v10;
      sub_100006354(&__p, object);
      v12 = xpc::dyn_cast_or_default(object, 0, v11);
      xpc_release(object[0]);
      v13 = *(v9 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        ctu::hex(v12, v14);
        v15 = v24 >= 0 ? &__p : __p;
        LODWORD(object[0]) = 136315138;
        *(object + 4) = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Error is found. BB security status= 0x%s", object, 0xCu);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    v16 = abm::kKeyNonce;
    if (xpc_dictionary_get_value(v8, abm::kKeyNonce))
    {
      v18[0] = &xdict;
      v18[1] = v16;
      sub_100006354(v18, &v19);
      __p = 0;
      v23 = 0;
      v24 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      *v20 = *object;
      v21 = v26;
      object[1] = 0;
      v26 = 0;
      object[0] = 0;
      xpc_release(v19);
    }
  }

  sub_100670710((a1 + 16), v20);
  if (v20[0])
  {
    v20[1] = v20[0];
    operator delete(v20[0]);
  }

  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100670600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, xpc_object_t a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1006706A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006706EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_100670710(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = 0;
  v5 = 0;
  __p = 0;
  sub_100034C50(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  (*(v2 + 16))(v2, &__p);
  if (__p)
  {
    v4 = __p;
    operator delete(__p);
  }
}

void sub_100670778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100670794(void *a1)
{
  *a1 = off_101E6EFE8;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1006707E0(void *a1)
{
  *a1 = off_101E6EFE8;
  v1 = a1[3];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1006708C0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E6EFE8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100670900(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100670910(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_100670950(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  xdict = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    xdict = xpc_null_create();
  }

  v8 = *(a1 + 8);
  v47 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v47 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v47 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v10) == &_xpc_type_dictionary)
  {
    xpc_retain(v10);
    goto LABEL_13;
  }

  v11 = xpc_null_create();
LABEL_12:
  v47 = v11;
LABEL_13:
  xpc_release(v10);
  if (v4)
  {
    v12 = *(v8 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Error is found in getting manifest", buf, 2u);
    }
  }

  else
  {
    v13 = abm::kKeyBasebandRootManifestStatus;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandRootManifestStatus))
    {
      *buf = &xdict;
      *&buf[8] = v13;
      sub_100006354(buf, object);
      v15 = xpc::dyn_cast_or_default(object, 0, v14);
      xpc_release(object[0]);
      v45 = xpc_int64_create(v15);
      if (!v45)
      {
        v45 = xpc_null_create();
      }

      *buf = &v47;
      *&buf[8] = "RootManifestStatus";
      sub_10000F688(buf, &v45, &v46);
      xpc_release(v46);
      v46 = 0;
      xpc_release(v45);
      v45 = 0;
    }

    v16 = abm::kKeyBasebandProvisioningManifestStatus;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandProvisioningManifestStatus))
    {
      *buf = &xdict;
      *&buf[8] = v16;
      sub_100006354(buf, object);
      v18 = xpc::dyn_cast_or_default(object, 0, v17);
      xpc_release(object[0]);
      v43 = xpc_int64_create(v18);
      if (!v43)
      {
        v43 = xpc_null_create();
      }

      memset(buf, 0, sizeof(buf));
      v49 = 0;
      ctu::cf::assign();
      *object = *buf;
      v40 = v49;
      v19 = *buf;
      if (v49 >= 0)
      {
        v19 = object;
      }

      p_xdict = &v47;
      v42 = v19;
      sub_10000F688(&p_xdict, &v43, &v44);
      xpc_release(v44);
      v44 = 0;
      if (SHIBYTE(v40) < 0)
      {
        operator delete(object[0]);
      }

      xpc_release(v43);
      v43 = 0;
    }

    v20 = abm::kKeyBasebandActivationManifestStatus;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandActivationManifestStatus))
    {
      *buf = &xdict;
      *&buf[8] = v20;
      sub_100006354(buf, object);
      v22 = xpc::dyn_cast_or_default(object, 0, v21);
      xpc_release(object[0]);
      v37 = xpc_int64_create(v22);
      if (!v37)
      {
        v37 = xpc_null_create();
      }

      *buf = &v47;
      *&buf[8] = "AKeyStatus";
      sub_10000F688(buf, &v37, &v38);
      xpc_release(v38);
      v38 = 0;
      xpc_release(v37);
      v37 = 0;
    }

    v23 = abm::kKeyBasebandRootManifest;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandRootManifest))
    {
      p_xdict = &xdict;
      v42 = v23;
      sub_100006354(&p_xdict, &v36);
      memset(buf, 0, sizeof(buf));
      v49 = 0;
      xpc::dyn_cast_or_default();
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      v24 = object[0];
      v25 = object[1];
      object[0] = 0;
      object[1] = 0;
      v40 = 0;
      xpc_release(v36);
      v35 = xpc_data_create(v24, v25 - v24);
      if (!v35)
      {
        v35 = xpc_null_create();
      }

      *buf = &v47;
      *&buf[8] = "RootManifestData";
      sub_10000F688(buf, &v35, &v36);
      xpc_release(v36);
      v36 = 0;
      xpc_release(v35);
      v35 = 0;
    }

    else
    {
      v24 = 0;
    }

    v26 = abm::kKeyBasebandProvisioningManifest;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandProvisioningManifest))
    {
      p_xdict = &xdict;
      v42 = v26;
      sub_100006354(&p_xdict, &v34);
      memset(buf, 0, sizeof(buf));
      v49 = 0;
      xpc::dyn_cast_or_default();
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (v24)
      {
        operator delete(v24);
      }

      v24 = object[0];
      v27 = object[1];
      object[1] = 0;
      v40 = 0;
      object[0] = 0;
      xpc_release(v34);
      v33 = xpc_data_create(v24, v27 - v24);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      *buf = &v47;
      *&buf[8] = "ProvisioningManifestData";
      sub_10000F688(buf, &v33, &v34);
      xpc_release(v34);
      v34 = 0;
      xpc_release(v33);
      v33 = 0;
    }

    v28 = abm::kKeyBasebandActivationManifest;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandActivationManifest))
    {
      p_xdict = &xdict;
      v42 = v28;
      sub_100006354(&p_xdict, &v32);
      memset(buf, 0, sizeof(buf));
      v49 = 0;
      xpc::dyn_cast_or_default();
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (v24)
      {
        operator delete(v24);
      }

      v24 = object[0];
      v29 = object[1];
      object[1] = 0;
      v40 = 0;
      object[0] = 0;
      xpc_release(v32);
      p_xdict = xpc_data_create(v24, v29 - v24);
      if (!p_xdict)
      {
        p_xdict = xpc_null_create();
      }

      *buf = &v47;
      *&buf[8] = "ActivationManifestData";
      sub_10000F688(buf, &p_xdict, object);
      xpc_release(object[0]);
      object[0] = 0;
      xpc_release(p_xdict);
      p_xdict = 0;
    }

    v31 = v47;
    if (v47)
    {
      xpc_retain(v47);
    }

    else
    {
      v31 = xpc_null_create();
    }

    *buf = *(a1 + 16);
    *&buf[8] = "kRadioModuleFirmwareManifestData";
    sub_100DAE90C(buf, &v31, &v32);
    xpc_release(v32);
    v32 = 0;
    xpc_release(v31);
    v31 = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  xpc_release(v47);
  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100670FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t a24)
{
  v29 = *(v27 - 96);
  if (v29)
  {
    *(v27 - 88) = v29;
    operator delete(v29);
  }

  xpc_release(object);
  if (v25)
  {
    operator delete(v25);
  }

  xpc_release(*(v27 - 104));
  xpc_release(a10);
  if (v26 < 0)
  {
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100671164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006711F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10032EAB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006712F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F068;
  a2[1] = v2;
  return result;
}

void sub_100671320(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a2;
  v12 = *a2;
  *v13 = *(a2 + 8);
  v14 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  object = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  v6 = *(a1 + 8);
  ATCSMutex::lock((v6 + 56));
  if (!v4 && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v9 = *(v6 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__p, &object);
      v10 = v18 >= 0 ? __p : __p[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I BasebandManager info:\n%{public}s", &buf, 0xCu);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15[0] = &object;
    v15[1] = abm::kKeyBasebandVersion;
    sub_100006354(v15, &v16);
    __p[0] = 0;
    __p[1] = 0;
    v18 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    C2KRadioModule::setBasebandVersion_nl(v6, &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    xpc_release(v16);
  }

  else
  {
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064CB44(&v12, __p);
      v8 = v18 >= 0 ? __p : __p[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Failed to retrieve info from BasebandManager: %{public}s", &buf, 0xCu);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  ATCSMutex::unlock((v6 + 56));
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}