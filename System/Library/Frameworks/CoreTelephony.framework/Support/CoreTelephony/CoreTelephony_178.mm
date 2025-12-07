void sub_101516074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

uint64_t sub_1015160C0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_1015160FC(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = sub_10151074C(*v1, *(v1 + 8));
  sub_100D448D4(&v18, (v1 + 16));
  v4 = v18 ^ (v18 >> 31);
  if (v4 >= 0x1A)
  {
    sub_100100ED4();
  }

  v5 = dword_101982008[v4];
  v6 = (*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  v16 = 0;
  v17 = 0;
  STK_Controller::getStateModel_sync(v2, v3, &v16);
  v7 = v16;
  v8 = *v6;
  if (v16)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = asString();
      *buf = 136315138;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Received a Proactive Command: %s event from SIM", buf, 0xCu);
    }

    (*(*v7 + 40))(v7, &v18);
    if (v5 == 21)
    {
      if ((v18 ^ (v18 >> 31)) != 0x19)
      {
        sub_100100ED4();
      }

      if (v18 >= 0)
      {
        v11 = &v20;
      }

      else
      {
        v11 = (v19 + 32);
      }

      while (1)
      {
        v11 = *v11;
        if (!v11)
        {
          break;
        }

        v12 = *(v11 + 7);
        if (v12 <= 2)
        {
          if (v12 == 2)
          {
            sub_101510D58(v2, v3);
          }

          ++v11;
        }
      }
    }

    else if (v5 == 19)
    {
      sub_101510D58(v2, v3);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v13 = asString();
    *buf = 136315138;
    v22 = v13;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Could not find state model upon receipt of proactive command: %s", buf, 0xCu);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  sub_100D38A2C(&v18);
  sub_1015163C4(&v15);
  return sub_1000049E0(&v14);
}

void sub_101516368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, int a13)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100D38A2C(&a13);
  sub_1015163C4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015163C4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100D38A2C((v1 + 16));
    operator delete();
  }

  return a1;
}

uint64_t sub_101516414(capabilities::ct *a1)
{
  v1 = *(a1 + 5);
  v2 = *v1;
  if (!capabilities::ct::supportsSTKSendIMSRegEvent(a1))
  {
    v13 = 0;
    return v13 & 1;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 64));
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
  v17 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v17);
  if (!v9)
  {
    v11 = 0;
LABEL_12:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
LABEL_8:
      v13 = 0;
      if (v12)
      {
        return v13 & 1;
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
    goto LABEL_8;
  }

LABEL_13:
  v17 = 0;
  (*(*v11 + 96))(&v16, v11, *(v1 + 2), 1, @"SupportSimToolkitIMSRegNotifications", 0, 0);
  sub_10002FE1C(&v17, &v16);
  sub_10000A1EC(&v16);
  LOBYTE(v16) = 0;
  ctu::cf::assign(&v16, v17, v14);
  v13 = v16;
  sub_100045C8C(&v17);
  if ((v12 & 1) == 0)
  {
LABEL_14:
    sub_100004A34(v10);
  }

  return v13 & 1;
}

void sub_101516590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1015165CC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_101516620(uint64_t *a1)
{
  v25 = a1;
  v2 = a1[3];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[2])
      {
LABEL_41:
        sub_100004A34(v5);
        return sub_1015165CC(&v25);
      }

      v40 = 0;
      ServiceMap = Registry::getServiceMap(*(v3 + 64));
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
      *buf = v8;
      v12 = sub_100009510(&v7[1].__m_.__sig, buf);
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
LABEL_12:
          (*(*v14 + 96))(__p, v14, *(a1 + 2), 1, @"SendCurrentLanguageToSTK", kCFBooleanFalse, 0);
          sub_10002FE1C(&v40, __p);
          sub_10000A1EC(__p);
          if ((v15 & 1) == 0)
          {
            sub_100004A34(v13);
          }

          buf[0] = 0;
          ctu::cf::assign(buf, v40, v16);
          if (buf[0])
          {
            v17 = *(v3 + 40);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I SIM requires current language to be sent, hence pushing it", buf, 2u);
            }

            if (sub_1009FC5C8())
            {
              v18 = (v3 + 152);
              if (*(v3 + 175) < 0)
              {
                v18 = *v18;
              }

              sub_10000501C(buf, v18);
              (*(*v3 + 120))(v3, buf);
              if (SHIBYTE(v28) < 0)
              {
                operator delete(*buf);
              }
            }

            else
            {
              global_queue = dispatch_get_global_queue(0, 0);
              v20 = global_queue;
              if (global_queue)
              {
                dispatch_retain(global_queue);
              }

              Registry::getTimerService(&v38, *(v3 + 64));
              v21 = v38;
              sub_10000501C(__p, "STK_Controller");
              object = v20;
              if (v20)
              {
                dispatch_retain(v20);
              }

              *buf = _NSConcreteStackBlock;
              v27 = 1174405120;
              v28 = sub_101516A68;
              v29 = &unk_101F479B0;
              v23 = a1[2];
              v22 = a1[3];
              v30 = v3;
              v31 = v23;
              v32 = v22;
              if (v22)
              {
                atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v33 = *(a1 + 2);
              aBlock = _Block_copy(buf);
              sub_100E34D88(v21, __p, 0, 5000000, &object, &aBlock);
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (object)
              {
                dispatch_release(object);
              }

              if (v37 < 0)
              {
                operator delete(__p[0]);
              }

              if (v39)
              {
                sub_100004A34(v39);
              }

              if (v32)
              {
                std::__shared_weak_count::__release_weak(v32);
              }

              if (v20)
              {
                dispatch_release(v20);
              }
            }
          }

          sub_100045C8C(&v40);
          goto LABEL_41;
        }
      }

      else
      {
        v14 = 0;
      }

      std::mutex::unlock(v7);
      v13 = 0;
      v15 = 1;
      goto LABEL_12;
    }
  }

  return sub_1015165CC(&v25);
}

void sub_10151698C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, void *aBlock, dispatch_object_t object, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 80);
  if (v33)
  {
    sub_100004A34(v33);
  }

  if (v30)
  {
    dispatch_release(v30);
  }

  sub_100045C8C((v31 - 72));
  sub_100004A34(v29);
  sub_1015165CC(&a10);
  _Unwind_Resume(a1);
}

void sub_101516A68(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        sub_101510D58(v3, *(a1 + 56));
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_101516AF4(uint64_t result, uint64_t a2)
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

void sub_101516B10(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t *sub_101516B20(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 28);
  if (*(*v1 + 175) < 0)
  {
    sub_100005F2C(__p, *(v2 + 152), *(v2 + 160));
  }

  else
  {
    *__p = *(v2 + 152);
    v10 = *(v2 + 168);
  }

  (*(*v3 + 112))(v3, v4, v5, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_101516C0C(&v8);
  return sub_1000049E0(&v7);
}

void sub_101516BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_101516C0C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101516C0C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_101516D58(void *a1, void *a2, void *a3)
{
  *a1 = off_101F67018;
  v6 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, "euicc.attest");
  v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v8 = dispatch_queue_create("CellularPlanAttestation", v7);
  *v6 = 0;
  v6[1] = 0;
  a1[3] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[4] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[4] = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v13, &v12);
  ctu::OsLogLogger::OsLogLogger((a1 + 5), v13);
  ctu::OsLogLogger::~OsLogLogger(v13);
  ctu::OsLogContext::~OsLogContext(&v12);
  *a1 = off_101F479F0;
  v10 = a2[1];
  a1[6] = *a2;
  a1[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a3[1];
  a1[8] = *a3;
  a1[9] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_101516EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v16);
  v17 = v13[9];
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = v13[7];
  if (v18)
  {
    sub_100004A34(v18);
  }

  ctu::OsLogLogger::~OsLogLogger((v13 + 5));
  sub_1000C0544(v12);
  _Unwind_Resume(a1);
}

void *sub_101516F5C(void *a1)
{
  *a1 = off_101F479F0;
  v2 = a1[11];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_101516FD4(void *a1)
{
  sub_101516F5C(a1);

  operator delete();
}

uint64_t sub_10151700C(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3321888768;
  v18[2] = sub_1015171A8;
  v18[3] = &unk_101F47A20;
  v18[4] = a1;
  v19[32] = a4;
  v20 = a2;
  v21 = a3;
  sub_1003684A4(v19, a5);
  v6 = v18;
  v7 = a1[2];
  if (!v7 || (v8 = a1[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    sub_100013CC4();
  }

  v10 = v9;
  v11 = a1[3];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_101518710;
  v14[3] = &unk_101F47BE0;
  v16 = v8;
  v17 = v9;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = v6;
  v15 = v12;
  dispatch_async(v11, v14);

  if (v17)
  {
    sub_100004A34(v17);
  }

  sub_100004A34(v10);

  return sub_10010DF14(v19);
}

void sub_10151719C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1015171A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(a1 + 72));
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I euicc ticket requested - userRequest : %s", &buf, 0xCu);
  }

  if ((*(a1 + 72) & 1) != 0 || (*(*v2 + 40))(v2))
  {
    v5 = *(a1 + 73);
    v6 = *(a1 + 81);
    sub_1003684A4(v22, a1 + 40);
    sub_100E58844(*(a1 + 72), &object);
    cf = 0;
    v21 = 0;
    *&buf = 0;
    *(&buf + 1) = &v21;
    cf = SecAccessControlCreateWithFlags(0, kSecAttrAccessibleAlwaysThisDeviceOnlyPrivate, 0x40000000uLL, &buf);
    sub_1003A5C24(&buf);
    if (cf)
    {
      sub_100E57E14();
      SecAccessControlSetConstraints();
      v19 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v32 = kMAOptionsBAANetworkTimeoutInterval;
      v33 = kMAOptionsBAAValidity;
      *&buf = &off_101F912A8;
      *(&buf + 1) = &off_101F912C0;
      v34 = kMAOptionsBAASCRTAttestation;
      v35 = kMAOptionsResuseExistingKey;
      v24 = &__kCFBooleanFalse;
      v25 = &__kCFBooleanTrue;
      v36 = kMAOptionsBAADeleteDuplicateKeychainItems;
      v26 = &__kCFBooleanTrue;
      v7 = [NSDictionary dictionaryWithObjects:&buf forKeys:&v32 count:5];
      v8 = [NSMutableDictionary dictionaryWithDictionary:v7];

      v9 = [NSMutableArray alloc];
      v31[0] = kMAOptionsBAAOIDUCRTDeviceIdentifiers;
      v31[1] = kMAOptionsBAAOIDDeviceIdentifiers;
      v31[2] = kMAOptionsBAAOIDHardwareProperties;
      v31[3] = kMAOptionsBAAOIDKeyUsageProperties;
      v31[4] = kMAOptionsBAAOIDDeviceOSInformation;
      v10 = [NSArray arrayWithObjects:v31 count:5];
      v11 = [v9 initWithArray:v10];

      v12 = kMAOptionsBAAOIDSToInclude;
      [v8 setObject:v11 forKeyedSubscript:kMAOptionsBAAOIDSToInclude];
      v13 = [v8 objectForKeyedSubscript:v12];
      [v13 addObject:kMAOptionsBAAOIDAccessControls];

      [v8 setObject:v19 forKeyedSubscript:kMAOptionsBAAAccessControls];
      [v8 setObject:@"euicc" forKeyedSubscript:kMAOptionsBAAKeychainLabel];
      [v8 setObject:@"com.apple.coretelephony" forKeyedSubscript:kMAOptionsBAAKeychainAccessGroup];

      sub_100D9EC14(&v19);
      if (v8)
      {
        v14 = *(v2 + 64);
        v15 = *(v2 + 24);
        v31[0] = v15;
        if (v15)
        {
          dispatch_retain(v15);
        }

        *&buf = _NSConcreteStackBlock;
        *(&buf + 1) = 3321888768;
        v24 = sub_101518154;
        v25 = &unk_101F47A50;
        v26 = v2;
        v29 = v5;
        v30 = v6;
        sub_1003684A4(v27, v22);
        v28 = object;
        if (object)
        {
          xpc_retain(object);
        }

        else
        {
          v28 = xpc_null_create();
        }

        v35 = 0;
        v32 = off_101F40478;
        v33 = objc_retainBlock(&buf);
        v35 = &v32;
        (*(*v14 + 16))(v14, v8, v31, &v32);
        sub_101020704(&v32);
        if (v31[0])
        {
          dispatch_release(v31[0]);
        }

        xpc_release(v28);
        v28 = 0;
        sub_10010DF14(v27);
      }

      else
      {
        v17 = *(v2 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "create options for BAA cert generation failed", &buf, 2u);
        }

        sub_10000501C(&buf, "Options Failure");
        sub_100E590B0((v2 + 48), &object, &buf);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(buf);
        }

        v32 = 0;
        v33 = 0;
        v34 = 0;
        sub_100368450(v22, 0);
        if (SHIBYTE(v34) < 0)
        {
          operator delete(v32);
        }
      }
    }

    else
    {
      v16 = *(v2 + 40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "create access control failed", &buf, 2u);
      }

      sub_10000501C(&buf, "ACL Failure");
      sub_100E590B0((v2 + 48), &object, &buf);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(buf);
      }

      v32 = 0;
      v33 = 0;
      v34 = 0;
      sub_100368450(v22, 0);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v32);
      }
    }

    sub_100D9EC14(&cf);
    sub_1003A5A8C(&v21);
    xpc_release(object);
    object = 0;
    sub_10010DF14(v22);
  }

  else
  {
    sub_100368450(a1 + 40, 0);
  }
}

void sub_1015177A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t object, char a17, int a18, const void *a19, const void *a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, xpc_object_t a39)
{
  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  sub_100D9EC14(&a19);
  sub_1003A5A8C(&a20);
  xpc_release(object);
  sub_10010DF14(&a21);
  _Unwind_Resume(a1);
}

BOOL sub_101517918(uint64_t a1)
{
  v27 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  *at = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, at);
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

      goto LABEL_13;
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
LABEL_7:
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *at = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Cannot create preferences", at, 2u);
    }

    v27 = 0;
    if (v11)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

LABEL_13:
  v13 = kCommCenterPreferencesNoBackupAppID;
  (*(*v10 + 48))(v10, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v29 = 0;
  (*(*v10 + 40))(at, v10, @"kEuiccTicketPrefetchTimestamp", v13, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_10010B240(&v29, at);
  sub_10000A1EC(at);
  if (v29)
  {
    *at = 0;
    ctu::cf::assign(at, v29, v14);
    v15 = CFDateCreate(kCFAllocatorDefault, *at);
    v28 = v15;
    v16 = *(a1 + 40);
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *at = 138412290;
        *&at[4] = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I euicc ticket prefetch timestamp [%@] for attestation", at, 0xCu);
      }

      v27 = v15;
      v28 = 0;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *at = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Empty euicc ticket prefetch date", at, 2u);
      }

      v27 = 0;
    }

    sub_1003EC530(&v28);
  }

  else
  {
    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *at = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Empty euicc ticket prefetch timestamp", at, 2u);
    }

    v27 = 0;
  }

  sub_100029A48(&v29);
  if ((v11 & 1) == 0)
  {
LABEL_26:
    sub_100004A34(v9);
  }

  if (v27)
  {
    v18 = v27;
    goto LABEL_32;
  }

LABEL_29:
  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *at = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Generate new euicc ticket prefetch timestamp", at, 2u);
  }

  v18 = (*(*a1 + 32))(a1);
LABEL_32:
  v20 = v18;
  v21 = objc_alloc_init(NSDateFormatter);
  [v21 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  v22 = *(a1 + 40);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [v21 stringFromDate:v20];
    *at = 138412290;
    *&at[4] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I euicc ticket fetch timestamp : %@", at, 0xCu);
  }

  v24 = +[NSDate date];
  v25 = [(__CFDate *)v20 compare:v24]== -1;

  sub_1003EC530(&v27);
  return v25;
}

void sub_101517D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100029A48(va);
  if ((v8 & 1) == 0)
  {
    sub_100004A34(v7);
  }

  _Unwind_Resume(a1);
}

const __CFDate *sub_101517E10(uint64_t a1)
{
  v2 = +[NSDate date];
  v3 = sub_100E57D20(v2);
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
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Cannot create preferences", buf, 2u);
    }

    goto LABEL_17;
  }

LABEL_11:
  v21 = 0;
  *buf = CFDateGetAbsoluteTime(v3);
  v15 = CFNumberCreate(kCFAllocatorDefault, kCFNumberDoubleType, buf);
  if (v15)
  {
    v21 = v15;
    *buf = 0;
    sub_100029A48(buf);
    v16 = v21;
  }

  else
  {
    v16 = 0;
  }

  v20 = v16;
  v21 = 0;
  sub_100029A48(&v21);
  v17 = kCommCenterPreferencesNoBackupAppID;
  (*(*v12 + 16))(v12, @"kEuiccTicketPrefetchTimestamp", v16, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I saved euicc ticket prefetch timestamp [%@] for attestation", buf, 0xCu);
  }

  (*(*v12 + 48))(v12, v17, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100029A48(&v20);
LABEL_17:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return v3;
}

void sub_1015180E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_101518154(uint64_t a1, int a2, const void **a3, const void *a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v13 = *(a1 + 32);
  v22 = a4;
  v14 = *(v13 + 40);
  if (a2)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *a3;
      *buf = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = a4;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I BAA Cert :%@ - ref key : %@", buf, 0x16u);
    }

    v16 = *(v13 + 80);
    sub_10002D728(&v21, a3);
    sub_1003684A4(v23, a1 + 40);
    v17 = *(a1 + 72);
    object = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      object = xpc_null_create();
    }

    (*(*v16 + 16))(v16, a1 + 80, &v21, &v22, v23, &object);
    xpc_release(object);
    object = 0;
    sub_10010DF14(v23);
    sub_10002D760(&v21);
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Getting device identity framework failed", buf, 2u);
    }

    sub_10000501C(__p, "Cert Failure");
    sub_100E590B0((v13 + 48), (a1 + 72), __p);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100368450(a1 + 40, 0);
  }

  sub_1005A16F4(&v22);
}

void sub_101518378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, xpc_object_t object, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t sub_10151840C(uint64_t a1, uint64_t a2)
{
  sub_1003684A4(a1 + 40, a2 + 40);
  v4 = *(a2 + 72);
  *(a1 + 72) = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  *(a1 + 72) = result;
  return result;
}

uint64_t sub_10151845C(uint64_t a1)
{
  xpc_release(*(a1 + 72));
  *(a1 + 72) = 0;

  return sub_10010DF14(a1 + 40);
}

void sub_101518574(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101518648);
  __cxa_rethrow();
}

void sub_1015185B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101518608(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101518648(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101518694(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F47B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101518720(uint64_t result, uint64_t a2)
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

void sub_10151873C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

double sub_10151874C@<D0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  sub_100F94A84((a1 + 8), &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

void sub_101518788()
{
  v4[0] = 0;
  v4[1] = 0;
  sub_1011E8A10(v4);
}

double sub_1015187EC@<D0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  sub_100FE0480((a1 + 8), &v5);
  result = *&v5;
  *a3 = v5;
  return result;
}

void sub_101518828(uint64_t a1, NSObject **a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_10161A684();
}

void sub_101518898(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015188B0(uint64_t a2@<X1>, int a3@<W2>, std::__shared_weak_count **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a3)
  {
    LODWORD(v7) = a2;
    v5 = 0;
    v6 = 0;
    sub_1012EF75C();
  }
}

void sub_101518EFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  sub_1012E1668(&a26);
  _Unwind_Resume(a1);
}

uint64_t sub_101518F90(uint64_t result, unint64_t *a2, int *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2[1];
  v7 = a2[2];
  if (v6 >= v7)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
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

    v25[4] = a2;
    if (v15)
    {
      sub_10151931C(v15);
    }

    v16 = *a3;
    v18 = *a4;
    v17 = a4[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v19 = 24 * v12;
    *v19 = v16;
    *(v19 + 8) = v18;
    *(v19 + 16) = v17;
    v11 = 24 * v12 + 24;
    v20 = a2[1];
    v21 = 24 * v12 + *a2 - v20;
    sub_101519374(*a2, v20, v21);
    v22 = *a2;
    *a2 = v21;
    a2[1] = v11;
    v23 = a2[2];
    a2[2] = 0;
    v25[2] = v22;
    v25[3] = v23;
    v25[0] = v22;
    v25[1] = v22;
    result = sub_1015193E4(v25);
  }

  else
  {
    v8 = *a3;
    v10 = *a4;
    v9 = a4[1];
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    *v6 = v8;
    v11 = v6 + 24;
    *(v6 + 8) = v10;
    *(v6 + 16) = v9;
  }

  a2[1] = v11;
  *v5 = *(v11 - 24);
  v24 = *(v11 - 8);
  *(v5 + 8) = *(v11 - 16);
  *(v5 + 16) = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1015190FC(uint64_t result, unint64_t *a2, int *a3, __int128 *a4)
{
  v5 = result;
  v6 = a2[1];
  v7 = a2[2];
  if (v6 >= v7)
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    v23[4] = a2;
    if (v14)
    {
      sub_10151931C(v14);
    }

    v15 = 24 * v11;
    v16 = *a3;
    v17 = *a4;
    *a4 = 0uLL;
    *v15 = v16;
    *(v15 + 8) = v17;
    v10 = 24 * v11 + 24;
    v18 = a2[1];
    v19 = 24 * v11 + *a2 - v18;
    sub_101519374(*a2, v18, v19);
    v20 = *a2;
    *a2 = v19;
    a2[1] = v10;
    v21 = a2[2];
    a2[2] = 0;
    v23[2] = v20;
    v23[3] = v21;
    v23[0] = v20;
    v23[1] = v20;
    result = sub_1015193E4(v23);
  }

  else
  {
    v8 = *a3;
    v9 = *a4;
    *a4 = 0uLL;
    *v6 = v8;
    *(v6 + 8) = v9;
    v10 = v6 + 24;
  }

  a2[1] = v10;
  *v5 = *(v10 - 24);
  v22 = *(v10 - 8);
  *(v5 + 8) = *(v10 - 16);
  *(v5 + 16) = v22;
  if (v22)
  {
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101519250(SignalStrengthFactoryInterface *this)
{
  *this = off_101F47C20;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  SignalStrengthFactoryInterface::~SignalStrengthFactoryInterface(this);
}

void sub_1015192AC(SignalStrengthFactoryInterface *this)
{
  *this = off_101F47C20;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  SignalStrengthFactoryInterface::~SignalStrengthFactoryInterface(this);

  operator delete();
}

void sub_10151931C(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_101519374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 8) = *(v5 + 8);
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      v5 += 24;
      a3 += 24;
    }

    while (v5 != a2);
    do
    {
      v6 = *(v4 + 16);
      if (v6)
      {
        sub_100004A34(v6);
      }

      v4 += 24;
    }

    while (v4 != a2);
  }
}

uint64_t sub_1015193E4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 24;
    v4 = *(v2 - 8);
    if (v4)
    {
      sub_100004A34(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_101519444(void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_1015194C8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10151958C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "tm.mgr");
  ctu::OsLogLogger::OsLogLogger(v13, &__p);
  ctu::OsLogLogger::OsLogLogger((a1 + 8), v13);
  ctu::OsLogLogger::~OsLogLogger(v13);
  ctu::OsLogContext::~OsLogContext(&__p);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F47C80;
  *(a1 + 32) = off_101F47CD8;
  *(a1 + 40) = *a2;
  v8 = a2[1];
  *(a1 + 48) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = *a3;
  v9 = a3[1];
  *(a1 + 64) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = a4;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 109) = 0;
  *(a1 + 120) = -1;
  v10 = *a3;
  __p.var0 = 0;
  __p.var1.fRef = 0;
  v12 = 0;
  sub_1013E5840((a1 + 128), a1 + 40, v10 + 24, kSupportDynamicDataSimSwitchKey, 0, kDataServiceDomain, &__p, 1);
}

void sub_1015196F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  v14 = v12[13];
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = v12[11];
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = v12[8];
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = v12[6];
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = v12[3];
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  ctu::OsLogLogger::~OsLogLogger((v12 + 1));
  _Unwind_Resume(a1);
}

void *sub_101519778(void *a1)
{
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      (*(*v3 + 32))(v3);
    }

    TMKXPCServer.shutdown()();
    operator delete();
  }

  v4 = a1[13];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[11];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

void sub_101519844(void *a1)
{
  sub_101519778(a1);

  operator delete();
}

void sub_10151987C(uint64_t a1)
{
  sub_101519778((a1 - 32));

  operator delete();
}

void sub_1015198B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  (*(**(a1 + 80) + 48))(*(a1 + 80), a2, a3, a5);
  (*(**(a1 + 96) + 104))(*(a1 + 96), a2);

  sub_101519958(a1, v5);
}

void sub_101519958(uint64_t result, int a2)
{
  if (*(result + 113) != a2)
  {
    v2 = a2;
    v4 = *(result + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(*(result + 56));
      v6 = asStringBool(*(result + 113));
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = " ";
      v11 = 2080;
      v12 = v6;
      v13 = 2080;
      v14 = asStringBool(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shasWiFiCall %s => %s", &v7, 0x2Au);
    }

    *(result + 113) = v2;
    sub_101519B70(result);
  }
}

void sub_101519A64(uint64_t result, int a2)
{
  if (*(result + 112) != a2)
  {
    v2 = a2;
    v4 = *(result + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(*(result + 56));
      v6 = asStringBool(*(result + 112));
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = " ";
      v11 = 2080;
      v12 = v6;
      v13 = 2080;
      v14 = asStringBool(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shandleImsRegistrationStateChanged: isOnIWLanOverCellular %s => %s", &v7, 0x2Au);
    }

    *(result + 112) = v2;
    sub_101519B70(result);
  }
}

void sub_101519B70(uint64_t a1)
{
  if (*(a1 + 113) == 1 && *(a1 + 112) == 1)
  {
    if ((*(a1 + 114) & 1) == 0)
    {
      *(a1 + 114) = 1;
      (*(**(a1 + 72) + 40))(*(a1 + 72), *(a1 + 56) + 24);
    }

    if ((*(**(a1 + 80) + 32))(*(a1 + 80)) == 2)
    {
      v2 = *(a1 + 8);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = PersonalityInfo::logPrefix(*(a1 + 56));
        v5 = 136315394;
        v6 = v3;
        v7 = 2080;
        v8 = " ";
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sWe have been out of service for an extended period of time", &v5, 0x16u);
      }

      if ((*(a1 + 115) & 1) == 0)
      {
        *(a1 + 115) = 1;
        (*(**(a1 + 72) + 56))(*(a1 + 72), a1 + 56);
      }
    }
  }

  else
  {
    if (*(a1 + 115) == 1)
    {
      *(a1 + 115) = 0;
      (*(**(a1 + 72) + 64))(*(a1 + 72), a1 + 56);
    }

    if (*(a1 + 114) == 1)
    {
      *(a1 + 114) = 0;
      v4 = *(**(a1 + 72) + 48);

      v4();
    }
  }
}

uint64_t sub_101519EA0(uint64_t a1)
{
  (*(**(a1 + 96) + 88))(*(a1 + 96));
  v2 = *(**(a1 + 72) + 16);

  return v2();
}

uint64_t sub_101519F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
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
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 96))(&v19, v14, *(*(a1 + 56) + 52), 1, a2, 0, 0);
  sub_10010B240(&v20, &v19);
  sub_10000A1EC(&v19);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v20 && (LODWORD(v21) = 0, ctu::cf::assign(&v21, v20, v16), v17 = v21, v21 < 4))
  {
    sub_100029A48(&v20);
    return v17;
  }

  else
  {
    sub_100029A48(&v20);
  }

  return a3;
}

void sub_10151A0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

BOOL sub_10151A0FC(uint64_t a1, unsigned int a2)
{
  v4 = sub_10007AEAC(a1 + 128, 0);
  if (v4 != a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(*(a1 + 56));
      v7 = sub_10007AEAC(a1 + 128, 0);
      v9 = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = " ";
      v13 = 2080;
      v14 = sub_100A320A0(v7);
      v15 = 2080;
      v16 = sub_100A320A0(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sDynamicCellularDataSwitch %s==>%s", &v9, 0x2Au);
    }

    sub_1001A937C(a1 + 128, a2);
  }

  return v4 != a2;
}

void sub_10151A224(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(*(a1 + 56));
    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sDetermined that there is low chance to come back in service", &v4, 0x16u);
  }

  if (*(a1 + 114) == 1 && (*(a1 + 115) & 1) == 0)
  {
    *(a1 + 115) = 1;
    (*(**(a1 + 72) + 56))(*(a1 + 72), a1 + 56);
  }
}

uint64_t sub_10151A324(uint64_t a1)
{
  v21[0] = kIWLANSettingsKey;
  v21[1] = kWifiCallingAllowedInRoamingKey;
  v19 = 0;
  v20 = 0;
  __p = 0;
  sub_10005B328(&__p, v21, &v22, 2uLL);
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
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
  v21[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v21);
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
  v12 = 1;
  (*(*v10 + 104))(&cf, v10, *(*(a1 + 56) + 52), 1, &__p, kCFBooleanTrue, 0);
  v13 = cf;
  LOBYTE(v21[0]) = 1;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(v21, v13, v15);
      v12 = v21[0];
    }

    else
    {
      v12 = 1;
    }
  }

  sub_10000A1EC(&cf);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  return v12 & 1;
}

void sub_10151A510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10151A56C(uint64_t a1)
{
  v20 = *off_101F47D08;
  v21 = @"NoFallbackVoiceService";
  v18 = 0;
  v19 = 0;
  __p = 0;
  sub_10005B328(&__p, &v20, &v22, 3uLL);
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
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
  *&v20 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v20);
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
  (*(*v10 + 104))(&cf, v10, *(*(a1 + 56) + 52), 1, &__p, kCFBooleanFalse, 0);
  v12 = cf;
  LOBYTE(v20) = 0;
  if (cf)
  {
    v13 = CFGetTypeID(cf);
    if (v13 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v20, v12, v14);
      LOBYTE(v12) = v20;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  sub_10000A1EC(&cf);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v12 & 1;
}

void sub_10151A750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10151A7AC(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10151A844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10151A858(va);
  _Unwind_Resume(a1);
}

void **sub_10151A858(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_101519778(v2);
    operator delete();
  }

  return a1;
}

void sub_10151A8A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10151A8DC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_101519778(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10151A920(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10151ACF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, dispatch_object_t object, dispatch_object_t a18, void *a19, std::__shared_weak_count *a20, int a21, __int16 a22, char a23, char a24)
{
  if (__p)
  {
    (*(*__p + 8))(__p, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_100004A34(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_10151AECC(uint64_t a1)
{
  v3 = (a1 + 48);
  sub_10052EF38(&v3);
  return sub_10151C63C(a1);
}

uint64_t sub_10151AF0C(uint64_t a1)
{
  *a1 = off_101F47E20;
  sub_100009970(a1 + 2056, *(a1 + 2064));
  sub_100009970(a1 + 2032, *(a1 + 2040));
  sub_100077CD4(a1 + 2008, *(a1 + 2016));
  sub_10004543C(a1 + 1192);
  sub_10004543C(a1 + 384);
  v7 = (a1 + 352);
  sub_10052EF38(&v7);
  sub_10151C63C(a1 + 304);
  sub_100005978((a1 + 296));
  sub_100005978((a1 + 288));
  sub_100005978((a1 + 272));
  v2 = *(a1 + 264);
  *(a1 + 264) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 256);
  if (v3)
  {
    sub_100004A34(v3);
  }

  PersonalitiesTracker::~PersonalitiesTracker((a1 + 80));
  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_10151B028(uint64_t a1)
{
  sub_10151AF0C(a1);

  operator delete();
}

void sub_10151B060(void *a1, dispatch_object_t object)
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

const void **sub_10151B188(void *a1, const void *a2, const void *a3)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v9 = 0;
    sub_1000296E0(&v9);
    Mutable = theDict;
  }

  CFDictionaryAddValue(Mutable, @"msg-name", a2);
  if (a3)
  {
    CFDictionaryAddValue(theDict, @"msg-body", a3);
  }

  sub_1000391C8(a1, theDict);
  return sub_1000296E0(&theDict);
}

const void **sub_10151B24C(void *a1, CFTypeRef *a2, uint64_t a3)
{
  cf = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 0x40000000;
  v21 = sub_10151B62C;
  v22 = &unk_101F47E38;
  v23 = a3;
  v5 = *a2;
  if (*a2 && (v6 = CFGetTypeID(*a2), v6 == CFDictionaryGetTypeID()) && (Value = CFDictionaryGetValue(v5, @"msg-name"), (v8 = Value) != 0) && (v9 = CFGetTypeID(Value), v9 == CFStringGetTypeID()))
  {
    cf = v8;
    CFRetain(v8);
  }

  else
  {
    cf = 0;
  }

  v10 = *a2;
  if (*a2 && (v11 = CFGetTypeID(*a2), v11 == CFDictionaryGetTypeID()))
  {
    v12 = CFDictionaryGetValue(v10, @"msg-body");
    v18 = v12;
    if (v12)
    {
      CFRetain(v12);
    }
  }

  else
  {
    v18 = 0;
  }

  if (cf)
  {
    v17 = cf;
    CFRetain(cf);
    if (CFStringCompare(cf, @"co-connectivity-request", 0) == kCFCompareEqualTo)
    {
      v15 = a1[2];
      if (v15 && std::__shared_weak_count::lock(v15))
      {
        operator new();
      }

      sub_100013CC4();
    }

    v13 = a1[5];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = cf;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Unknown message %@", &buf, 0xCu);
    }

    v21(v20, 4);
    sub_100005978(&v17);
  }

  else
  {
    v14 = a1[5];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E Message of invalid format:", &buf, 2u);
    }

    *&buf = off_101F486C8;
    *(&buf + 1) = a1;
    p_buf = &buf;
    logger::CFTypeRefLogger();
    sub_100007E44(&buf);
    v21(v20, 4);
  }

  sub_10000A1EC(&v18);
  return sub_100005978(&cf);
}

void sub_10151B5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10151B62C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    (result[2])(result, &v5, &v3, a2, 0);
    sub_1002030AC(&v4);
    sub_10000A1EC(&v3);
    return sub_100005978(&v5);
  }

  return result;
}

void sub_10151B698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_1002030AC(va1);
  sub_10000A1EC(va);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

const void **sub_10151B6C0(const void **result, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v5 = result[4];
  if (v5)
  {
    v11 = 0;
    sub_10151B188(&v9, result[6], a2);
    v10 = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    v5[2](v5, &v11, &v9, a4, a5);
    sub_1002030AC(&v10);
    sub_10000A1EC(&v9);
    return sub_100005978(&v11);
  }

  return result;
}

void sub_10151B76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  sub_1002030AC((v3 + 8));
  sub_10000A1EC(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

void sub_10151B798(uint64_t a1)
{
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  LOBYTE(v48) = 1;
  DWORD1(v48) = *(a1 + 380);
  WORD4(v48) = *(a1 + 376);
  BYTE10(v48) = *(a1 + 2000);
  v2 = *(a1 + 56);
  __p[0] = *(a1 + 48);
  __p[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(v2 + 1, 1uLL, memory_order_relaxed);
  }

  subscriber::makeSimSlotRange();
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  v3 = v45;
  v4 = v46;
  if (v45 != v46)
  {
    v5 = v47;
    do
    {
      if (v47(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v46);
    v6 = v46;
    if (v3 != v46)
    {
      v42 = (a1 + 2016);
      do
      {
        v7 = *v3;
        v8 = *(a1 + 232);
        v9 = *v8;
        v10 = v8[1];
        if (v9 != v10)
        {
          while ((*v9)[2].__r_.__value_.__s.__data_[1] || HIDWORD((*v9)[2].__r_.__value_.__r.__words[0]) != v7)
          {
            v9 += 2;
            if (v9 == v10)
            {
              goto LABEL_52;
            }
          }
        }

        if (v9 != v10)
        {
          v12 = *v9;
          v11 = v9[1];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v12 && !v12[2].__r_.__value_.__s.__data_[1])
          {
            v44 = 0;
            memset(__p, 0, sizeof(__p));
            LODWORD(__p[0]) = v7;
            v13 = 1200;
            if (v7 == 1)
            {
              v13 = 392;
            }

            v14 = 1996;
            if (v7 == 1)
            {
              v14 = 1188;
            }

            LODWORD(v44) = *(a1 + v13);
            BYTE4(v44) = *(a1 + v14);
            if (isReal() && v12[2].__r_.__value_.__s.__data_[0] == 1)
            {
              std::string::operator=(&__p[1], v12 + 1);
              v15 = *v42;
              if (*v42)
              {
                v16 = a1 + 2016;
                do
                {
                  if (*(v15 + 32) >= v7)
                  {
                    v16 = v15;
                  }

                  v15 = *(v15 + 8 * (*(v15 + 32) < v7));
                }

                while (v15);
                if (v16 != v42 && v7 >= *(v16 + 32))
                {
                  BYTE5(v44) = *(v16 + 64) == 2;
                }
              }

              v17 = sub_100007A6C(a1 + 2032, &__p[1]);
              if (a1 + 2040 != v17)
              {
                if (*(v17 + 56) == 1)
                {
                  v18 = *(v17 + 60) & 1;
                }

                else
                {
                  v18 = 0;
                }

                BYTE6(v44) = v18;
              }

              v19 = sub_100007A6C(a1 + 2056, &__p[1]);
              if (a1 + 2064 != v19)
              {
                HIBYTE(v44) = *(v19 + 56);
              }
            }

            v20 = *(&v49 + 1);
            if (*(&v49 + 1) >= v50)
            {
              v23 = sub_10138D5C4(&v49, __p);
            }

            else
            {
              **(&v49 + 1) = __p[0];
              v21 = (v20 + 8);
              if (SHIBYTE(__p[3]) < 0)
              {
                sub_100005F2C(v21, __p[1], __p[2]);
              }

              else
              {
                v22 = *&__p[1];
                *(v20 + 24) = __p[3];
                *v21 = v22;
              }

              *(v20 + 32) = v44;
              v23 = v20 + 40;
            }

            *(&v49 + 1) = v23;
            if (SHIBYTE(__p[3]) < 0)
            {
              operator delete(__p[1]);
            }
          }

          if (v11)
          {
            sub_100004A34(v11);
          }
        }

        do
        {
LABEL_52:
          ++v3;
        }

        while (v3 != v4 && (v5(*v3) & 1) == 0);
      }

      while (v3 != v6);
    }
  }

  v24 = (a1 + 336);
  if (!sub_10138D4F4((a1 + 336), &v48))
  {
    *v24 = v48;
    *(a1 + 343) = *(&v48 + 7);
    if (v24 != &v48)
    {
      v25 = *(&v49 + 1);
      p_size = v49;
      v27 = *(&v49 + 1) - v49;
      v28 = *(a1 + 352);
      if (*(a1 + 368) - v28 < *(&v49 + 1) - v49)
      {
        v29 = 0xCCCCCCCCCCCCCCCDLL * (v27 >> 3);
        sub_10138D8A4((a1 + 352));
        if (v29 <= 0x666666666666666)
        {
          v30 = 0x999999999999999ALL * ((*(a1 + 368) - *(a1 + 352)) >> 3);
          if (v30 <= v29)
          {
            v30 = v29;
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 368) - *(a1 + 352)) >> 3) >= 0x333333333333333)
          {
            v31 = 0x666666666666666;
          }

          else
          {
            v31 = v30;
          }

          if (v31 <= 0x666666666666666)
          {
            sub_10138D750(a1 + 352, v31);
          }
        }

        sub_1000CE3D4();
      }

      v32 = *(a1 + 360);
      if (v32 - v28 >= v27)
      {
        if (v49 != *(&v49 + 1))
        {
          do
          {
            v37 = v28;
            v39 = *p_size;
            v38 = (p_size + 1);
            *v28 = v39;
            v40 = (v28 + 1);
            std::string::operator=(v40, v38);
            v37[4] = v38[1].__r_.__value_.__r.__words[0];
            p_size = &v38[1].__r_.__value_.__l.__size_;
            v28 = &v40[1].__r_.__value_.__l.__size_;
          }

          while (p_size != v25);
          v28 = v37 + 5;
          v32 = *(a1 + 360);
        }

        while (v32 != v28)
        {
          if (*(v32 - 9) < 0)
          {
            operator delete(*(v32 - 32));
          }

          v32 -= 40;
        }

        *(a1 + 360) = v28;
      }

      else
      {
        v33 = v49 + v32 - v28;
        if (v32 != v28)
        {
          do
          {
            v35 = *p_size;
            v34 = (p_size + 1);
            *v28 = v35;
            v36 = (v28 + 1);
            std::string::operator=(v36, v34);
            v36[1].__r_.__value_.__r.__words[0] = v34[1].__r_.__value_.__r.__words[0];
            p_size = &v34[1].__r_.__value_.__l.__size_;
            v28 = &v36[1].__r_.__value_.__l.__size_;
          }

          while (p_size != v33);
          v32 = *(a1 + 360);
        }

        *(a1 + 360) = sub_1015207C0(a1 + 352, v33, v25, v32);
      }
    }

    v41 = *(a1 + 328);
    if (v41)
    {
      (*(*v41 + 48))(v41, a1 + 336);
    }

    sub_10151BD38(a1, &v48);
  }

  __p[0] = &v49;
  sub_10052EF38(__p);
}

void sub_10151BCAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v27 + 360) = v28;
  a13 = a12;
  sub_10052EF38(&a13);
  _Unwind_Resume(a1);
}

const void **sub_10151BD38(const void **result, uint64_t a2)
{
  if (*(result + 280) == 1)
  {
    v3 = result;
    v4 = result[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_10138CE50(a2, &valuePtr);
      v5 = SHIBYTE(v64) >= 0 ? &valuePtr : valuePtr;
      LODWORD(buf) = 136446210;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I updating watch with my connectivity state: %{public}s", &buf, 0xCu);
      if (SHIBYTE(v64) < 0)
      {
        operator delete(valuePtr);
      }
    }

    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v7 = theDict;
      theDict = Mutable;
      *&valuePtr = v7;
      sub_1000296E0(&valuePtr);
    }

    v8 = *(a2 + 4);
    if (v8)
    {
      if (v8 == 2)
      {
        v9 = kCFBooleanTrue;
      }

      else
      {
        v9 = kCFBooleanFalse;
      }

      CFDictionaryAddValue(theDict, @"AirplaneMode", v9);
    }

    if (*(a2 + 8))
    {
      if (*(a2 + 8) == 1)
      {
        v10 = kCFBooleanTrue;
      }

      else
      {
        v10 = kCFBooleanFalse;
      }

      CFDictionaryAddValue(theDict, @"InternetStatus", v10);
    }

    if (*(a2 + 9))
    {
      v11 = kCFBooleanTrue;
    }

    else
    {
      v11 = kCFBooleanFalse;
    }

    CFDictionaryAddValue(theDict, @"inEmergencyCall", v11);
    if (*(a2 + 10) == 1)
    {
      v12 = kCFBooleanTrue;
    }

    else
    {
      v12 = kCFBooleanFalse;
    }

    CFDictionaryAddValue(theDict, @"wifiStatus", v12);
    v56 = 0;
    v13 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    v44 = v3;
    if (v13)
    {
      v14 = v56;
      v56 = v13;
      *&valuePtr = v14;
      sub_1000279DC(&valuePtr);
    }

    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    if (v15 != v16)
    {
      v17 = (v15 + 8);
      do
      {
        v55 = 0;
        v18 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (v18)
        {
          v19 = v55;
          v55 = v18;
          *&valuePtr = v19;
          sub_1000296E0(&valuePtr);
        }

        v20 = v17 - 8;
        v21 = v55;
        if (*(v17 - 2) == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        *&buf = 0;
        LODWORD(valuePtr) = v22;
        v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
        if (v23)
        {
          v24 = buf;
          *&buf = v23;
          *&valuePtr = v24;
          sub_100029A48(&valuePtr);
        }

        value = buf;
        *&buf = 0;
        sub_100029A48(&buf);
        CFDictionaryAddValue(v21, @"slotID", value);
        sub_100029A48(&value);
        v25 = v55;
        if (*(v17 + 23) < 0)
        {
          sub_100005F2C(__p, *v17, *(v17 + 1));
        }

        else
        {
          v26 = *v17;
          v53 = *(v17 + 2);
          *__p = v26;
        }

        if (SHIBYTE(v53) < 0)
        {
          sub_100005F2C(&buf, __p[0], __p[1]);
        }

        else
        {
          buf = *__p;
          v61 = v53;
        }

        v51 = 0;
        if (SHIBYTE(v61) < 0)
        {
          sub_100005F2C(&valuePtr, buf, *(&buf + 1));
        }

        else
        {
          valuePtr = buf;
          v64 = v61;
        }

        *&v58 = 0;
        if (ctu::cf::convert_copy())
        {
          v27 = v51;
          v51 = v58;
          value = v27;
          sub_100005978(&value);
        }

        if (SHIBYTE(v64) < 0)
        {
          operator delete(valuePtr);
        }

        v54 = v51;
        v51 = 0;
        sub_100005978(&v51);
        if (SHIBYTE(v61) < 0)
        {
          operator delete(buf);
        }

        CFDictionaryAddValue(v25, @"persona", v54);
        sub_100005978(&v54);
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p[0]);
        }

        v29 = v55;
        v30 = *(v17 + 6) - 1;
        v31 = "kUnknown";
        if (v30 <= 5)
        {
          v31 = off_101F48858[v30];
        }

        value = 0;
        *&buf = 0;
        if (ctu::cf::convert_copy(&buf, v31, 0x8000100, kCFAllocatorDefault, v28))
        {
          v32 = value;
          value = buf;
          *&valuePtr = v32;
          sub_100005978(&valuePtr);
        }

        *&v58 = value;
        value = 0;
        sub_100005978(&value);
        CFDictionaryAddValue(v29, @"regStatus", v58);
        sub_100005978(&v58);
        if (*(v17 + 28))
        {
          v33 = kCFBooleanTrue;
        }

        else
        {
          v33 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v55, @"regIsSatellite", v33);
        if (*(v17 + 29))
        {
          v34 = kCFBooleanTrue;
        }

        else
        {
          v34 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v55, @"isCellularInternetConnectionActive", v34);
        if (*(v17 + 30))
        {
          v35 = kCFBooleanTrue;
        }

        else
        {
          v35 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v55, @"imsRegisteredForVoice", v35);
        if (*(v17 + 31))
        {
          v36 = kCFBooleanTrue;
        }

        else
        {
          v36 = kCFBooleanFalse;
        }

        CFDictionaryAddValue(v55, @"requiresResiliency", v36);
        CFArrayAppendValue(v56, v55);
        sub_1000296E0(&v55);
        v17 = (v17 + 40);
      }

      while (v20 + 40 != v16);
    }

    CFDictionaryAddValue(theDict, @"sims", v56);
    v37 = v44[33];
    if (v37)
    {
      (*(*v37 + 16))(v37);
      v38 = v44[33];
      v44[33] = 0;
      if (v38)
      {
        (*(*v38 + 8))(v38);
      }
    }

    Registry::getTimerService(&v51, v44[6]);
    sub_10000501C(v49, "1s hold outgoing");
    value = v44;
    v39 = v44[2];
    if (v39)
    {
      v40 = v44[1];
      v41 = std::__shared_weak_count::lock(v39);
      if (v41)
      {
        v42 = v41;
        v46 = v40;
        v47 = v41;
        atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v41);
        v43 = theDict;
        v48 = theDict;
        if (theDict)
        {
          CFRetain(theDict);
        }

        v58 = *v49;
        v59 = v50;
        v49[0] = 0;
        v49[1] = 0;
        v50 = 0;
        *&buf = v44;
        *(&buf + 1) = v40;
        v46 = 0;
        v47 = 0;
        v61 = v42;
        v62 = v43;
        v48 = 0;
        v65 = 0;
        operator new();
      }
    }

    sub_100013CC4();
  }

  return result;
}

uint64_t sub_10151C604(uint64_t a1)
{
  sub_1000296E0((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10151C63C(uint64_t a1)
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

void sub_10151C6C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10151C714(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10151C754(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10151C780(ServiceManager::Service *this)
{
  *this = off_101F47FB8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10151C7DC(ServiceManager::Service *this)
{
  *this = off_101F47FB8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_10151C85C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10151C8A0(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10151B060(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10151B060(v4, 0);
}

void sub_10151C948(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v3 = *(v1 + 56);
  __p[0] = *(v1 + 48);
  __p[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100E7EBF4(__p, buf);
  v4 = *(v1 + 256);
  *(v1 + 248) = *buf;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  Registry::createRestModuleOneTimeUseConnection(&v7, *(v1 + 48));
  ctu::RestModule::connect();
  if (v8)
  {
    sub_100004A34(v8);
  }

  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
      v11 = 0;
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10151D2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  sub_1000062D4(v35 - 88);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_weak(a34);
  }

  v37 = *(v35 - 104);
  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  std::__shared_weak_count::__release_weak(v34);
  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10151D410(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        *a2 = 0;
        a2[2] = 0;
        a2[3] = 0;
        v7 = *(v6 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10151D594(uint64_t result, uint64_t a2)
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

void sub_10151D5B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10151D5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (v5 && (v8 = std::__shared_weak_count::lock(v5), (v15 = v8) != 0))
  {
    v9 = *(a1 + 32);
    v14 = v9;
    if (!v9)
    {
      v11 = 1;
LABEL_10:
      sub_100004A34(v8);
      return v11 & 1;
    }

    v13[0] = &v14;
    v13[1] = a3;
    v13[2] = a4;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_101520070;
    v16[3] = &unk_101F485B8;
    v16[4] = v9 + 8;
    v16[5] = v13;
    v17 = v16;
    v10 = *(v9 + 24);
    if (*(v9 + 32))
    {
      v24 = 0;
      block = _NSConcreteStackBlock;
      v19 = 0x40000000;
      v20 = sub_10006A620;
      v21 = &unk_101F485F8;
      v22 = &v24;
      v23 = &v17;
      dispatch_async_and_wait(v10, &block);
    }

    else
    {
      v24 = 0;
      block = _NSConcreteStackBlock;
      v19 = 0x40000000;
      v20 = sub_1000596C4;
      v21 = &unk_101F485D8;
      v22 = &v24;
      v23 = &v17;
      dispatch_sync(v10, &block);
    }

    v11 = v24;
    v8 = v15;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_10151D750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v6 = *(a1 + 40);
  if (v6 && (v9 = std::__shared_weak_count::lock(v6), (v16 = v9) != 0))
  {
    v10 = *(a1 + 32);
    v15 = v10;
    if (!v10)
    {
      v12 = 1;
LABEL_10:
      sub_100004A34(v9);
      return v12 & 1;
    }

    v14[0] = &v15;
    v14[1] = a3;
    v14[2] = a4;
    v14[3] = &v17;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 0x40000000;
    v18[2] = sub_101520120;
    v18[3] = &unk_101F48618;
    v18[4] = v10 + 8;
    v18[5] = v14;
    v19 = v18;
    v11 = *(v10 + 24);
    if (*(v10 + 32))
    {
      v26 = 0;
      block = _NSConcreteStackBlock;
      v21 = 0x40000000;
      v22 = sub_10006A620;
      v23 = &unk_101F485F8;
      v24 = &v26;
      v25 = &v19;
      dispatch_async_and_wait(v11, &block);
    }

    else
    {
      v26 = 0;
      block = _NSConcreteStackBlock;
      v21 = 0x40000000;
      v22 = sub_1000596C4;
      v23 = &unk_101F485D8;
      v24 = &v26;
      v25 = &v19;
      dispatch_sync(v11, &block);
    }

    v12 = v26;
    v9 = v16;
    if (v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

void *sub_10151D8E8(void *a1)
{
  *a1 = off_101F480C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151D934(void *a1)
{
  *a1 = off_101F480C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151DA14(uint64_t result, uint64_t a2)
{
  *a2 = off_101F480C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151DA54(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151DA64(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151DAA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[3];
  if (v5)
  {
    v8 = a1[1];
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      if (a1[2])
      {
        v11 = *(v8 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          asString();
          v12 = v14 >= 0 ? &__p : __p;
          *buf = 136315138;
          v16 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I event: %s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p);
          }
        }

        if (!*(*a4 + 49) && *(a3 + 24) - 1 <= 1)
        {
          sub_10151B798(v8);
        }
      }

      sub_100004A34(v10);
    }
  }
}

uint64_t sub_10151DC24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151DC70(void *a1)
{
  *a1 = off_101F48148;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151DCBC(void *a1)
{
  *a1 = off_101F48148;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151DD9C(uint64_t result, uint64_t a2)
{
  *a2 = off_101F48148;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151DDDC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151DDEC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151DE2C(void *a1, xpc_object_t *a2)
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
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = a1[2];
      if (v13)
      {
        if (*(v13 + 376) != v5)
        {
          sub_10151B798(v13);
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_10151DF20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151DF6C(void *a1)
{
  *a1 = off_101F481C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151DFB8(void *a1)
{
  *a1 = off_101F481C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151E098(uint64_t result, uint64_t a2)
{
  *a2 = off_101F481C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151E0D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151E0E8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151E128(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[2];
      if (v9 && *(v9 + 377) != v5)
      {
        sub_10151B798(v9);
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_10151E1CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151E218(void *a1)
{
  *a1 = off_101F48248;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151E264(void *a1)
{
  *a1 = off_101F48248;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151E344(uint64_t result, uint64_t a2)
{
  *a2 = off_101F48248;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151E384(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151E394(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151E3D4(void *a1, xpc_object_t *a2)
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
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = a1[2];
      if (v13)
      {
        if (*(v13 + 380) != v5)
        {
          sub_10151B798(v13);
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_10151E4C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151E514(void *a1)
{
  *a1 = off_101F482C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151E560(void *a1)
{
  *a1 = off_101F482C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151E640(uint64_t result, uint64_t a2)
{
  *a2 = off_101F482C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151E680(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151E690(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t sub_10151E6D0(void *a1, const xpc::object *a2)
{
  v4 = a1[1];
  bzero(v16, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v16, v4);
  read_rest_value(v4, a2);
  v5 = a1[3];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        RegisteredNetworkInfo::compare(&__p, (v8 + 384), v16);
        v9 = __p;
        v10 = __p;
        if (__p != v14)
        {
          v11 = __p;
          while (*v11 != 10)
          {
            if (++v11 == v14)
            {
              goto LABEL_10;
            }
          }

          if (v11 != v14)
          {
            goto LABEL_15;
          }

LABEL_10:
          v10 = __p;
          while (*v10 != 2)
          {
            if (++v10 == v14)
            {
              goto LABEL_16;
            }
          }
        }

        if (v10 != v14)
        {
LABEL_15:
          sub_10151B798(v8);
          v9 = __p;
        }

LABEL_16:
        if (v9)
        {
          v14 = v9;
          operator delete(v9);
        }
      }

      sub_100004A34(v7);
    }
  }

  return sub_10004543C(v16);
}

void sub_10151E814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100004A34(v12);
  sub_10004543C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10151E858(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151E8A4(void *a1)
{
  *a1 = off_101F48348;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151E8F0(void *a1)
{
  *a1 = off_101F48348;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151E9D0(uint64_t result, uint64_t a2)
{
  *a2 = off_101F48348;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151EA10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151EA20(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t sub_10151EA60(void *a1, const xpc::object *a2)
{
  v4 = a1[1];
  bzero(v16, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v16, v4);
  read_rest_value(v4, a2);
  v5 = a1[3];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        RegisteredNetworkInfo::compare(&__p, (v8 + 1192), v16);
        v9 = __p;
        v10 = __p;
        if (__p != v14)
        {
          v11 = __p;
          while (*v11 != 10)
          {
            if (++v11 == v14)
            {
              goto LABEL_10;
            }
          }

          if (v11 != v14)
          {
            goto LABEL_15;
          }

LABEL_10:
          v10 = __p;
          while (*v10 != 2)
          {
            if (++v10 == v14)
            {
              goto LABEL_16;
            }
          }
        }

        if (v10 != v14)
        {
LABEL_15:
          sub_10151B798(v8);
          v9 = __p;
        }

LABEL_16:
        if (v9)
        {
          v14 = v9;
          operator delete(v9);
        }
      }

      sub_100004A34(v7);
    }
  }

  return sub_10004543C(v16);
}

void sub_10151EBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_100004A34(v12);
  sub_10004543C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10151EBE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151EC34(void *a1)
{
  *a1 = off_101F483C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151EC80(void *a1)
{
  *a1 = off_101F483C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151ED60(uint64_t result, uint64_t a2)
{
  *a2 = off_101F483C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151EDA0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151EDB0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151EDF0(void *a1, xpc_object_t *a2)
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
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = a1[2];
      if (v13)
      {
        if (*(v13 + 2000) != v5)
        {
          sub_10151B798(v13);
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_10151EEE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151EF30(void *a1)
{
  *a1 = off_101F48448;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151EF7C(void *a1)
{
  *a1 = off_101F48448;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151F05C(uint64_t result, uint64_t a2)
{
  *a2 = off_101F48448;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151F09C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151F0AC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151F0EC(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v17 = *v3;
  v18 = v5;
  v19 = v3[2];
  if (v19)
  {
    *(v5 + 16) = &v18;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v17 = &v18;
  }

  sub_10035A2E4(v3, a2);
  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[2];
      if (v9)
      {
        if (v19 != *(v9 + 2024))
        {
LABEL_24:
          sub_10151B798(v9);
          goto LABEL_25;
        }

        v10 = v17;
        if (v17 != &v18)
        {
          v11 = *(v9 + 2008);
          while (*(v10 + 8) == *(v11 + 8) && operator==())
          {
            v12 = v10[1];
            v13 = v10;
            if (v12)
            {
              do
              {
                v10 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v10 = v13[2];
                v14 = *v10 == v13;
                v13 = v10;
              }

              while (!v14);
            }

            v15 = v11[1];
            if (v15)
            {
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15);
            }

            else
            {
              do
              {
                v16 = v11[2];
                v14 = *v16 == v11;
                v11 = v16;
              }

              while (!v14);
            }

            v11 = v16;
            if (v10 == &v18)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_24;
        }
      }

LABEL_25:
      sub_100004A34(v8);
    }
  }

  sub_100077CD4(&v17, v18);
}

void sub_10151F248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  sub_100004A34(v11);
  sub_100077CD4(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10151F274(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151F2C0(void *a1)
{
  *a1 = off_101F484C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151F30C(void *a1)
{
  *a1 = off_101F484C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151F3EC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F484C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151F42C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151F43C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151F47C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v17 = *v3;
  v18 = v5;
  v19 = v3[2];
  if (v19)
  {
    *(v5 + 16) = &v18;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v17 = &v18;
  }

  sub_1008E2524(v3, a2);
  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[2];
      if (v9)
      {
        if (v19 != *(v9 + 2048))
        {
LABEL_24:
          sub_10151B798(v9);
          goto LABEL_25;
        }

        v10 = v17;
        if (v17 != &v18)
        {
          v11 = *(v9 + 2032);
          while (sub_100071DF8(v10 + 4, v11 + 4) && sub_1008DFB14((v10 + 7), (v11 + 7)))
          {
            v12 = v10[1];
            v13 = v10;
            if (v12)
            {
              do
              {
                v10 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v10 = v13[2];
                v14 = *v10 == v13;
                v13 = v10;
              }

              while (!v14);
            }

            v15 = v11[1];
            if (v15)
            {
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15);
            }

            else
            {
              do
              {
                v16 = v11[2];
                v14 = *v16 == v11;
                v11 = v16;
              }

              while (!v14);
            }

            v11 = v16;
            if (v10 == &v18)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_24;
        }
      }

LABEL_25:
      sub_100004A34(v8);
    }
  }

  sub_100009970(&v17, v18);
}

void sub_10151F5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  sub_100004A34(v11);
  sub_100009970(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10151F600(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151F64C(void *a1)
{
  *a1 = off_101F48548;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151F698(void *a1)
{
  *a1 = off_101F48548;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151F778(uint64_t result, uint64_t a2)
{
  *a2 = off_101F48548;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151F7B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151F7C8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151F808(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v17 = *v3;
  v18 = v5;
  v19 = v3[2];
  if (v19)
  {
    *(v5 + 16) = &v18;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v17 = &v18;
  }

  sub_10151F9DC(v3, a2);
  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[2];
      if (v9)
      {
        if (v19 != *(v9 + 2072))
        {
LABEL_24:
          sub_10151B798(v9);
          goto LABEL_25;
        }

        v10 = v17;
        if (v17 != &v18)
        {
          v11 = *(v9 + 2056);
          while (sub_100071DF8(v10 + 4, v11 + 4) && operator==())
          {
            v12 = v10[1];
            v13 = v10;
            if (v12)
            {
              do
              {
                v10 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v10 = v13[2];
                v14 = *v10 == v13;
                v13 = v10;
              }

              while (!v14);
            }

            v15 = v11[1];
            if (v15)
            {
              do
              {
                v16 = v15;
                v15 = *v15;
              }

              while (v15);
            }

            else
            {
              do
              {
                v16 = v11[2];
                v14 = *v16 == v11;
                v11 = v16;
              }

              while (!v14);
            }

            v11 = v16;
            if (v10 == &v18)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_24;
        }
      }

LABEL_25:
      sub_100004A34(v8);
    }
  }

  sub_100009970(&v17, v18);
}

void sub_10151F964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  sub_100004A34(v11);
  sub_100009970(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10151F990(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10151F9DC(uint64_t a1, xpc_object_t *a2)
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
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10151FC84(object, &v6);
        xpc_release(v6);
        sub_10151FDCC(a1, object, object);
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

void sub_10151FBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

void sub_10151FC84(uint64_t a1, xpc_object_t *a2)
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

void sub_10151FD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void *sub_10151FDCC(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = 0;
  result = *sub_100005C2C(a1, &v4, a2);
  if (!result)
  {
    sub_10151FE58();
  }

  return result;
}

void sub_10151FEF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10151FF10(unsigned __int8 **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = v1[24];
  sub_100222570((*v1 + 272), v1 + 2);
  *(v2 + 280) = v1[24];
  sub_100222570((v2 + 288), v1 + 4);
  sub_100222570((v2 + 296), v1 + 5);
  if (v3 != v4 && *(v2 + 280) == 1)
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I watch got connected - resending states", buf, 2u);
    }

    sub_10151BD38(v2, v2 + 336);
  }

  sub_101520004(&v8);
  return sub_1000049E0(&v7);
}

void sub_10151FFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_101520004(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101520004(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100005978((v1 + 40));
    sub_100005978((v1 + 32));
    sub_100005978((v1 + 16));
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_101520070(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **v1;
  sub_10005C7A4(&v7, *(v1 + 8));
  v3 = *(v1 + 16);
  sub_100060E84(&v5, v3);
  sub_1002030F8(&v6, v3 + 1);
  sub_10151B24C(v2, &v5, 0);
  sub_1002030AC(&v6);
  sub_10000A1EC(&v5);
  sub_100005978(&v7);
  return 1;
}

void sub_1015200FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  sub_1002030AC((v3 + 8));
  sub_10000A1EC(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_101520120(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **v1;
  sub_10005C7A4(&v7, *(v1 + 8));
  v3 = *(v1 + 16);
  sub_100060E84(&v5, v3);
  sub_1002030F8(&v6, v3 + 1);
  sub_10151B24C(v2, &v5, **(v1 + 24));
  sub_1002030AC(&v6);
  sub_10000A1EC(&v5);
  sub_100005978(&v7);
  return 1;
}

void sub_1015201B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  sub_1002030AC((v3 + 8));
  sub_10000A1EC(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

void *sub_1015201D4(void *a1)
{
  *a1 = off_101F48648;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101520220(void *a1)
{
  *a1 = off_101F48648;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1015202F8(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F48648;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101520330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101520340(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101520380(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I  | === P2WConnectivityStatesImpl ===", buf, 2u);
          v6 = *(v5 + 40);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v5 + 264))
          {
            v7 = "";
          }

          else
          {
            v7 = "doesn't ";
          }

          *buf = 136315138;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I  | %shave outgoing timer", buf, 0xCu);
          v6 = *(v5 + 40);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(v5 + 272);
          v9 = asStringBool(*(v5 + 280));
          v10 = *(v5 + 288);
          v11 = *(v5 + 296);
          *buf = 138413058;
          *&buf[4] = v8;
          v16 = 2080;
          v17 = v9;
          v18 = 2112;
          v19 = v10;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I  | fCompanionDevInfo: deviceId:'%@' isActive:%s hwVer:%@ swVer:%@", buf, 0x2Au);
          v6 = *(v5 + 40);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          sub_10138CE50(v5 + 336, buf);
          v12 = v18 >= 0 ? buf : *buf;
          v13 = 136315138;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I  | fCompanionConnectivityStatus: %s", &v13, 0xCu);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1015205DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101520698(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F486C8;
  a2[1] = v2;
  return result;
}

void sub_1015206C4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E %s", &v5, 0xCu);
  }
}

uint64_t sub_101520774(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015207C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v8, *v6, *(v6 + 1));
        v10 = v15;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *v8 = v9;
        v10 = v4;
      }

      *(v4 + 32) = *(v6 + 3);
      v4 = v10 + 40;
      v15 = v10 + 40;
      v6 = (v6 + 40);
    }

    while (v7 + 40 != a3);
  }

  LOBYTE(v13) = 1;
  sub_10138D86C(v12);
  return v4;
}

uint64_t sub_101520898(uint64_t a1)
{
  *a1 = off_101F48748;
  sub_1000296E0((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1015208E8(uint64_t a1)
{
  *a1 = off_101F48748;
  sub_1000296E0((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

const void **sub_1015209E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F48748;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_100029714((a2 + 32), (a1 + 32));
}

void sub_101520A34(char *a1)
{
  sub_101520BF0((a1 + 8));

  operator delete(a1);
}

void sub_101520A70(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        sub_100029714(&v6 + 1, (a1 + 32));
        v5 = *(v4 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_101520BA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101520BF0(uint64_t a1)
{
  sub_1000296E0((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *sub_101520C3C(const void ***a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 33);
  *(*v1 + 33) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v2 + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%ssending update out", buf, 0x16u);
    v4 = *(v2 + 5);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I CompanionConnectivityStatus: ", buf, 2u);
  }

  *buf = off_101F487D8;
  *&buf[8] = v2;
  v13 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  v5 = *(v2 + 31);
  v11 = 0;
  sub_10151B188(&v9, @"co-connectivity", v1[1]);
  v10 = 0;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_101520F0C;
  v13 = &unk_101F487A8;
  v14 = v2;
  (*(*v5 + 24))(v5, &v11, @"ConnectivityStates", &v9, buf);
  sub_1002030AC(&v10);
  sub_10000A1EC(&v9);
  sub_100005978(&v11);
  sub_101520EBC(&v8);
  return sub_1000049E0(&v7);
}

void sub_101520E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  v11 = va_arg(va3, void);
  sub_1002030AC((v3 + 8));
  sub_10000A1EC(va2);
  sub_100005978(va3);
  sub_101520EBC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101520EBC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1000296E0((v1 + 8));
    operator delete();
  }

  return a1;
}

void sub_101520F0C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (a3 > 5)
      {
        v5 = 0;
      }

      else
      {
        v5 = *&asc_101984534[4 * a3 - 4];
      }

      v6 = 136315138;
      v7 = strerror(v5);
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to send kCFMsgCompanionConnectivity: %s", &v6, 0xCu);
    }
  }
}

uint64_t sub_101521048(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F487D8;
  a2[1] = v2;
  return result;
}

void sub_101521074(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_101521124(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101521170(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I connectivity state requested - resending", buf, 2u);
  }

  sub_10151BD38(v1, v1 + 336);
  operator delete();
}

uint64_t sub_101521234(unsigned int *a1, char *a2, _DWORD *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = sub_101158300(a1, &v7, 0);
  if (!result)
  {
    if (v7 == 0x2000000000000010)
    {
      result = sub_1011584D4(&v8, 6u, &unk_101984548, a2, 0);
    }

    else
    {
      result = 2;
    }
  }

  *a3 = v8 + v9 - *a1;
  return result;
}

void CellularUsagePolicyController::createNEConfigurationStore_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 744);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5[0] = off_101F488C8;
  v5[1] = a1;
  v5[3] = v5;
  sub_1010DEE98(&v4);
}

void sub_1015213F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10002B644(va);
  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

void CellularUsagePolicyController::stop_sync(CellularUsagePolicyController *this)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, this, @"com.apple.LaunchServices.applicationRegistered", 0);
  CFNotificationCenterRemoveObserver(DistributedCenter, this, @"com.apple.LaunchServices.applicationUnregistered", 0);
  v3 = *(this + 56);
  *(this + 56) = 0;
  if (v3 == (this + 424))
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  ctu::RestModule::disconnect((this + 408));
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Stopped cupolicy server", v5, 2u);
  }
}

void CellularUsagePolicyController::start_sync(NSObject **this)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, this, sub_1015215E4, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DistributedCenter, this, sub_1015215E4, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = this[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Started cupolicy server", v4, 2u);
  }
}

void sub_1015215E4(int a1, uint64_t a2, const void *a3, int a4, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"isPlaceholder");
    v9 = Value;
    buf[0] = 0;
    if (Value)
    {
      v10 = CFGetTypeID(Value);
      if (v10 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v9, v11);
        LOBYTE(v9) = buf[0];
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    if (CFEqual(a3, @"com.apple.LaunchServices.applicationRegistered"))
    {
      *buf = CFDictionaryGetValue(theDict, @"bundleIDs");
      sub_1001FA5E0(&v14, buf);
      CellularUsagePolicyController::appsRegistered(a2, &v14, v9 & 1);
    }

    if (CFEqual(a3, @"com.apple.LaunchServices.applicationUnregistered"))
    {
      *buf = CFDictionaryGetValue(theDict, @"bundleIDs");
      sub_1001FA5E0(&v13, buf);
      CellularUsagePolicyController::appsUnRegistered(a2, &v13);
    }
  }

  else
  {
    v12 = *(a2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Not processing App Registered Notification - empty userInfo indicates an update", buf, 2u);
    }
  }
}

void CellularUsagePolicyController::setupAwdMetrics_sync(CellularUsagePolicyController *this)
{
  sub_100004AA0(&v6, this + 1);
  v3 = v6;
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_101521868;
  v4[3] = &unk_101F48888;
  v4[4] = this;
  v4[5] = v3;
  v5 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0(524546, v4);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_101521844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
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

void sub_101521868(void *a1)
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
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_1015219A4;
        v7[3] = &unk_101E26008;
        v7[4] = v3;
        v10 = 0;
        v11 = 0;
        sub_100004AA0(&v10, (v3 + 8));
        v6 = *(v3 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_101522940;
        block[3] = &unk_101F48940;
        block[5] = v10;
        v9 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v9)
        {
          sub_100004A34(v9);
        }

        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1015219A4(uint64_t a1)
{
  (*(**(*(a1 + 32) + 256) + 40))(*(*(a1 + 32) + 256), *(*(a1 + 32) + 328));

  return WISPostSimpleMetricWithUnsignedInteger();
}

uint64_t sub_101521A04(uint64_t result, uint64_t a2)
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

void sub_101521A20(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void CellularUsagePolicyController::sendDeprecatedRnfNotification_sync(uint64_t a1, uint64_t a2)
{
  sub_101521AF8(a2, &object);
  v4 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v4 = xpc_null_create();
  }

  v2 = xpc_null_create();
  sub_10002A37C(133, &v4, &v2);
  xpc_release(v2);
  xpc_release(v4);
  v4 = 0;
  xpc_release(object);
}

void sub_101521ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

void sub_101521AF8(int a1@<W0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
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
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v18 = 0;
  ctu::cf::assign();
  *v15 = 0uLL;
  v16 = 0;
  v13 = xpc_BOOL_create(a1 == 1);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v7 = v15;
  if (v16 < 0)
  {
    v7 = v15[0];
  }

  *&v17 = a2;
  *(&v17 + 1) = v7;
  sub_10000F688(&v17, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *__p = v17;
  v12 = v18;
  v9 = xpc_BOOL_create(a1 != -1);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v8 = __p;
  if (v12 < 0)
  {
    v8 = __p[0];
  }

  *&v17 = a2;
  *(&v17 + 1) = v8;
  sub_10000F688(&v17, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_101521CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_100DC3ED0(v22);
  _Unwind_Resume(a1);
}

void sub_101521D4C(Registry **a1, xpc_object_t *a2, void (**a3)(void, void))
{
  v54[0] = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    v54[0] = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v54[0] = v7;
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
  v54[0] = v8;
LABEL_9:
  xpc_release(v7);
  ServiceMap = Registry::getServiceMap(*a1);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, buf);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_15;
      }

LABEL_23:
      v49[0] = 0;
      v49[1] = 0;
      v50 = 0;
      v47[0] = a2;
      v47[1] = "kCUPolicyBundleName";
      sub_100006354(v47, &object);
      memset(buf, 0, sizeof(buf));
      *&v43 = 0;
      xpc::dyn_cast_or_default();
      if (SBYTE7(v43) < 0)
      {
        operator delete(*buf);
      }

      xpc_release(object);
      v20 = HIBYTE(v50);
      if (v50 < 0)
      {
        v20 = v49[1];
      }

      if (!v20)
      {
        sub_1015225E0();
        v24 = qword_101FCACF0;
        if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E Arguments are invalid", buf, 2u);
        }

        v45 = xpc_int64_create(22);
        if (!v45)
        {
          v45 = xpc_null_create();
        }

        *buf = v54;
        *&buf[8] = "kPosixError";
        sub_10000F688(buf, &v45, &v46);
        xpc_release(v46);
        v46 = 0;
        xpc_release(v45);
        v44 = v54[0];
        v45 = 0;
        if (v54[0])
        {
          xpc_retain(v54[0]);
        }

        else
        {
          v44 = xpc_null_create();
        }

        (a3)[2](a3, &v44);
        xpc_release(v44);
        v44 = 0;
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49[0]);
          if (v18)
          {
            goto LABEL_61;
          }
        }

        else if (v18)
        {
          goto LABEL_61;
        }

LABEL_60:
        sub_100004A34(v16);
        goto LABEL_61;
      }

      if (xpc_dictionary_get_value(*a2, "kCUPolicyKeyDataAllowed"))
      {
        *buf = a2;
        *&buf[8] = "kCUPolicyKeyDataAllowed";
        sub_100006354(buf, v47);
        v22 = xpc::dyn_cast_or_default(v47, 0, v21);
        xpc_release(v47[0]);
        v23 = 1;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      if (xpc_dictionary_get_value(*a2, "kCUPolicyKeyWiFiAllowed"))
      {
        *buf = a2;
        *&buf[8] = "kCUPolicyKeyWiFiAllowed";
        sub_100006354(buf, v47);
        v26 = xpc::dyn_cast_or_default(v47, 0, v25);
        xpc_release(v47[0]);
        v27 = 1;
        if (a3)
        {
LABEL_39:
          v28 = _Block_copy(a3);
          goto LABEL_42;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
        if (a3)
        {
          goto LABEL_39;
        }
      }

      v28 = 0;
LABEL_42:
      *buf = 0u;
      v43 = 0u;
      v29 = v22 | (v23 << 8);
      v30 = v26;
      v31 = v26 | (v27 << 8);
      sub_100D5E97C(buf, v49, v29, 0, v30 | (v27 << 8), 0);
      if ((v18 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v54[0])
      {
        xpc_retain(v54[0]);
      }

      else
      {
        xpc_null_create();
      }

      v33 = 0uLL;
      v34 = 0;
      sub_10004EFD0(&v33, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
      v35[0] = DWORD2(v43);
      *(v35 + 3) = *(&v43 + 11);
      if (SHIBYTE(v50) < 0)
      {
        sub_100005F2C(__p, v49[0], v49[1]);
      }

      else
      {
        *__p = *v49;
        v37 = v50;
      }

      v38 = v29;
      v39 = v31;
      v40 = 1;
      if (v28)
      {
        v32 = _Block_copy(v28);
      }

      else
      {
        v32 = 0;
      }

      aBlock = v32;
      v54[4] = 0;
      operator new();
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (v17)
  {
    goto LABEL_23;
  }

LABEL_15:
  sub_1015225E0();
  v19 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E Policy server is not valid", buf, 2u);
  }

  v52 = xpc_int64_create(19);
  if (!v52)
  {
    v52 = xpc_null_create();
  }

  *buf = v54;
  *&buf[8] = "kPosixError";
  sub_10000F688(buf, &v52, &v53);
  xpc_release(v53);
  v53 = 0;
  xpc_release(v52);
  v51 = v54[0];
  v52 = 0;
  if (v54[0])
  {
    xpc_retain(v54[0]);
  }

  else
  {
    v51 = xpc_null_create();
  }

  (a3)[2](a3, &v51);
  xpc_release(v51);
  v51 = 0;
  if ((v18 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_61:
  xpc_release(v54[0]);
}

void sub_10152240C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, xpc_object_t a28, uint64_t a29, uint64_t a30, xpc_object_t a31, uint64_t a32, xpc_object_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1015225E0()
{
  if ((atomic_load_explicit(&qword_101FCACF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCACF8))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FCACF0, kCtLoggingSystemName, "cu.policy.xpc");

    __cxa_guard_release(&qword_101FCACF8);
  }
}

uint64_t sub_101522678(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v5 = (a1 + 24);
  sub_1000087B4(&v5);
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_1015226F0(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t sub_101522744(uint64_t a1)
{
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t sub_1015227F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F488C8;
  a2[1] = v2;
  return result;
}

void sub_101522824(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Handling NE configuration change", buf, 2u);
  }

  *buf = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(138, buf, &object);
  xpc_release(object);
  xpc_release(*buf);
  CellularUsagePolicyController::updateClientsWithPolicyChange_sync(v1);
}

void sub_1015228C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11)
{
  xpc_release(object);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1015228F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101522950(uint64_t result, uint64_t a2)
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

void sub_10152296C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_10152297C(uint64_t a1)
{
  *a1 = off_101F48980;
  v2 = *(a1 + 96);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v5 = (a1 + 32);
  sub_1000087B4(&v5);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_101522A10(uint64_t a1)
{
  *a1 = off_101F48980;
  v2 = *(a1 + 96);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 32);
  sub_1000087B4(&v4);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void sub_101522B5C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 32);
  sub_1000087B4(&v4);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_101522BD0(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 32);
  sub_1000087B4(&v4);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(a1);
}

void sub_101522C4C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_100E32D9C(v9, a2);
  if (*a3)
  {
    if (*(a1 + 92) != 1)
    {
      goto LABEL_18;
    }

    v5 = *(a1 + 8);
    if (*(a1 + 87) < 0)
    {
      sub_100005F2C(__p, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      *__p = *(a1 + 64);
      v11 = *(a1 + 80);
    }

    (*(*v5 + 104))(v5, __p, *(a1 + 88), *(a1 + 90));
    goto LABEL_16;
  }

  v12 = xpc_int64_create(35);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  __p[0] = (a1 + 24);
  __p[1] = "kPosixError";
  sub_10000F688(__p, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  sub_1015225E0();
  v6 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
  {
    asString(a1 + 32, __p);
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = a1 + 64;
    if (*(a1 + 87) < 0)
    {
      v8 = *(a1 + 64);
    }

    *buf = 136446466;
    v15 = v7;
    v16 = 2082;
    v17 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to save policy: %{public}s for bundle id: %{public}s", buf, 0x16u);
LABEL_16:
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_18:
  sub_1000694E8(*(a1 + 96), *(a1 + 24));
  sub_100009970(v9, v9[1]);
}

void sub_101522E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101522E88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101522ED4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *(a1 + 16) = xpc_null_create();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_10004EFD0((a1 + 24), *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v6 = *(a2 + 48);
  *(a1 + 51) = *(a2 + 51);
  *(a1 + 48) = v6;
  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v7 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v7;
  }

  v8 = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = v8;
  v9 = *(a2 + 88);
  if (v9)
  {
    v9 = _Block_copy(v9);
  }

  *(a1 + 88) = v9;
  return a1;
}

void sub_101522FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000087B4(va);
  sub_100DC3ED0(v4);
  v6 = *(v3 + 8);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101523004(uint64_t a1)
{
  *a1 = off_101F48A00;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_101523074(uint64_t a1)
{
  *a1 = off_101F48A00;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete();
}

void sub_101523130(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }
}

uint64_t sub_101523180(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015231CC(uint64_t a1)
{
  *a1 = off_101F48A80;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10152322C(uint64_t a1)
{
  *a1 = off_101F48A80;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete();
}

xpc_object_t sub_101523344(uint64_t a1, void *a2)
{
  *a2 = off_101F48A80;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 16);
  a2[1] = v5;
  a2[2] = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  a2[2] = result;
  return result;
}

void sub_1015233C0(uint64_t a1)
{
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }
}

void sub_101523400(uint64_t a1)
{
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete(a1);
}

void sub_101523454(uint64_t a1, __int128 *a2, _BYTE *a3)
{
  sub_100021420(&__p, a2);
  if (*a3 != 1)
  {
    v13 = xpc_int64_create(35);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    *buf = a1 + 16;
    v12 = "kPosixError";
    sub_10000F688(buf, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(v13);
    v13 = 0;
    sub_1015225E0();
    v5 = qword_101FCACF0;
    if (!os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v6 = "Failed to get policy";
LABEL_19:
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, buf, 2u);
    goto LABEL_13;
  }

  if (value[1] == 1)
  {
    v13 = xpc_int64_create(value[0]);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    *buf = a1 + 16;
    v12 = "kCUPolicyKeyDataAllowed";
    sub_10000F688(buf, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(v13);
    v13 = 0;
    goto LABEL_13;
  }

  v13 = xpc_int64_create(96);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  *buf = a1 + 16;
  v12 = "kPosixError";
  sub_10000F688(buf, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  sub_1015225E0();
  v5 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v6 = "No satellite policy found";
    goto LABEL_19;
  }

LABEL_13:
  sub_1000694E8(*(a1 + 8), *(a1 + 16));
  if (*&value[7])
  {
    v10 = *&value[7];
    operator delete(*&value[7]);
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_10152367C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015236C8(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_100A5C398(&v2, &v1, "kCUPolicySet", sub_101523860, 12);
}

void sub_101523860(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_101524D14;
  v6[3] = &unk_101F48B20;
  v5 = *(a5 + 8);
  v6[4] = *a5;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101521D4C(a1, a4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1015238F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101523910(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a5;
  if (*a5 && (v8 = *v7) != 0)
  {
    xpc_retain(*v7);
    v34 = v8;
  }

  else
  {
    v8 = xpc_null_create();
    v34 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    xpc_retain(v8);
    goto LABEL_10;
  }

  v9 = xpc_null_create();
LABEL_9:
  v34 = v9;
LABEL_10:
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3321888768;
  v30 = sub_101524DF8;
  v31 = &unk_101F48B20;
  v10 = *(a5 + 8);
  v32 = *a5;
  v33 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (v11)
  {
    v39 = v11;
  }

  else
  {
    v12 = xpc_null_create();
    v39 = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
      v12 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v12) == &_xpc_type_dictionary)
  {
    xpc_retain(v12);
    goto LABEL_20;
  }

  v13 = xpc_null_create();
LABEL_19:
  v39 = v13;
LABEL_20:
  xpc_release(v12);
  ServiceMap = Registry::getServiceMap(*a1);
  v15 = ServiceMap;
  if (v16 < 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  *buf = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, buf);
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v23 = 0;
      if (!v22)
      {
        goto LABEL_26;
      }

LABEL_34:
      v25 = _Block_copy(aBlock);
      v26 = v25;
      v38 = 18;
      strcpy(object, "com.apple.facetime");
      if (v25)
      {
        v27 = _Block_copy(v25);
      }

      else
      {
        v27 = 0;
      }

      v28 = v39;
      v35 = v27;
      v36 = v39;
      if (v39)
      {
        xpc_retain(v39);
      }

      else
      {
        v28 = xpc_null_create();
        v36 = v28;
      }

      v42 = v28;
      v43 = 0;
      *buf = off_101F48A80;
      v41 = v27;
      v35 = 0;
      v36 = xpc_null_create();
      v43 = buf;
      (*(*v22 + 16))(v22, object, &v34, buf);
      sub_10001CEB8(buf);
      xpc_release(v36);
      v36 = 0;
      if (v35)
      {
        _Block_release(v35);
      }

      if (v38 < 0)
      {
        operator delete(*object);
        if (!v26)
        {
          goto LABEL_47;
        }
      }

      else if (!v26)
      {
LABEL_47:
        if (v23)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      _Block_release(v26);
      goto LABEL_47;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
  if (v22)
  {
    goto LABEL_34;
  }

LABEL_26:
  sub_1015225E0();
  v24 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E Policy server is not valid", buf, 2u);
  }

  v35 = xpc_int64_create(19);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  *buf = &v39;
  v41 = "kPosixError";
  sub_10000F688(buf, &v35, object);
  xpc_release(*object);
  *object = 0;
  xpc_release(v35);
  v35 = 0;
  *buf = v34;
  if (v34)
  {
    xpc_retain(v34);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v30(aBlock, buf);
  xpc_release(*buf);
  *buf = 0;
  if ((v23 & 1) == 0)
  {
LABEL_48:
    sub_100004A34(v21);
  }

LABEL_49:
  xpc_release(v39);
  xpc_release(v34);
  if (v33)
  {
    sub_100004A34(v33);
  }

  xpc_release(v8);
}

void sub_101523D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t a25, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_101523E70(Registry **a1, uint64_t a2, uint64_t a3, const char *a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
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
LABEL_7:
    sub_1015225E0();
    v15 = qword_101FCACF0;
    if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Policy server is not valid", &v22, 2u);
    }

    goto LABEL_21;
  }

LABEL_11:
  v22 = a4;
  v23 = "kCUReliableNetworkFallbackUserSetting";
  sub_100006354(&v22, &object);
  v17 = xpc::dyn_cast_or_default(&object, 0, v16);
  xpc_release(object);
  subscriber::makeSimSlotRange();
  v18 = v22;
  v19 = v23;
  if (v22 != v23)
  {
    v20 = v24;
    do
    {
      if (v20(*v18))
      {
        break;
      }

      ++v18;
    }

    while (v18 != v19);
    v21 = v23;
    while (v18 != v21)
    {
      (*(*v13 + 128))(v13, *v18, v17);
      do
      {
        ++v18;
      }

      while (v18 != v19 && (v20(*v18) & 1) == 0);
    }
  }

LABEL_21:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_101524064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015240AC(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v19[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v19);
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
        goto LABEL_7;
      }

      goto LABEL_15;
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
LABEL_7:
    sub_1015225E0();
    v16 = qword_101FCACF0;
    if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Policy server is not valid", v19, 2u);
    }

    v20 = xpc_int64_create(19);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    v19[0] = *a5;
    v19[1] = "kPosixError";
    sub_10000F688(v19, &v20, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v20);
    v20 = 0;
    if (v15)
    {
      return;
    }

LABEL_18:
    sub_100004A34(v13);
    return;
  }

LABEL_15:
  v18 = *a5;
  v17 = a5[1];
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v22[0] = off_101F48B60;
  v22[1] = v18;
  v22[2] = v17;
  v22[3] = v22;
  (*(*v14 + 112))(v14, v22);
  sub_100D5ED24(v22);
  if ((v15 & 1) == 0)
  {
    goto LABEL_18;
  }
}

void sub_1015242C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_101524314(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1015225E0();
  v6 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I cu policy set os version", &buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*a1);
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
        goto LABEL_9;
      }

      goto LABEL_14;
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
LABEL_9:
    sub_1015225E0();
    v17 = qword_101FCACF0;
    if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Policy server is not valid", &buf, 2u);
      if (v16)
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (v16)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_14:
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  v20[0] = a4;
  v20[1] = "kCUPolicyOsVersion";
  sub_100006354(v20, &object);
  buf = 0uLL;
  v25 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v25) < 0)
  {
    operator delete(buf);
  }

  xpc_release(object);
  sub_1015225E0();
  v18 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
  {
    v19 = __p;
    if (v23 < 0)
    {
      v19 = __p[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I cu policy set os version to %{public}s", &buf, 0xCu);
  }

  (*(*v15 + 136))(v15, __p);
  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if (v16)
  {
    return;
  }

LABEL_22:
  sub_100004A34(v14);
}

void sub_1015245AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_101524624(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_1015251AC;
  v6[3] = &unk_101F48B20;
  v5 = *(a5 + 8);
  v6[4] = *a5;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101521D4C(a1, a4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1015246BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015246D4(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void **a5)
{
  memset(&v49, 0, sizeof(v49));
  *buf = a4;
  *&buf[8] = "kCUPolicyBundleName";
  sub_100006354(buf, &object);
  __p[0] = 0;
  __p[1] = 0;
  *&v45 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(object);
  size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    ServiceMap = Registry::getServiceMap(*a1);
    v10 = ServiceMap;
    if (v11 < 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    __p[0] = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, __p);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
        if (!v17)
        {
LABEL_60:
          if ((v18 & 1) == 0)
          {
            sub_100004A34(v16);
          }

          goto LABEL_62;
        }

LABEL_18:
        object = 0;
        v20 = xpc_copy(*a4);
        v21 = v20;
        if (v20)
        {
          object = v20;
        }

        else
        {
          v21 = xpc_null_create();
          object = v21;
          if (!v21)
          {
            v22 = xpc_null_create();
            v21 = 0;
            goto LABEL_25;
          }
        }

        if (xpc_get_type(v21) == &_xpc_type_dictionary)
        {
          xpc_retain(v21);
          goto LABEL_26;
        }

        v22 = xpc_null_create();
LABEL_25:
        object = v22;
LABEL_26:
        xpc_release(v21);
        *__p = 0u;
        v45 = 0u;
        v23 = Registry::getServiceMap(*a1);
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
LABEL_34:
            (*(*v31 + 48))(__p, v31, &v49);
            if ((v32 & 1) == 0)
            {
              sub_100004A34(v30);
            }

            if ((BYTE8(v45) & 1) == 0)
            {
              sub_1001696A4(__p, &v49);
            }

            sub_1015225E0();
            v33 = qword_101FCACF0;
            if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
            {
              v34 = &v49;
              if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v34 = v49.__r_.__value_.__r.__words[0];
              }

              v35 = __p;
              if (SBYTE7(v45) < 0)
              {
                v35 = __p[0];
              }

              *buf = 136446466;
              *&buf[4] = v34;
              *&buf[12] = 2082;
              *&buf[14] = v35;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Phone bundleID: [%{public}s] translated into watch bundleID: [%{public}s]", buf, 0x16u);
            }

            if ((SBYTE7(v45) & 0x80u) == 0)
            {
              v36 = __p;
            }

            else
            {
              v36 = __p[0];
            }

            v42 = xpc_string_create(v36);
            if (!v42)
            {
              v42 = xpc_null_create();
            }

            *buf = &object;
            *&buf[8] = "kCUPolicyBundleName";
            sub_10000F688(buf, &v42, &v43);
            xpc_release(v43);
            v43 = 0;
            xpc_release(v42);
            v37 = *a4;
            v41 = v37;
            v42 = 0;
            if (v37)
            {
              xpc_retain(v37);
            }

            else
            {
              v41 = xpc_null_create();
            }

            v38 = a5[1];
            v39 = *a5;
            v40 = v38;
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v17 + 56))(v17, "kCUPolicyGetEx", &v41, &v39);
            if (v40)
            {
              sub_100004A34(v40);
            }

            xpc_release(v41);
            v41 = 0;
            if (BYTE8(v45) == 1 && SBYTE7(v45) < 0)
            {
              operator delete(__p[0]);
            }

            xpc_release(object);
            goto LABEL_60;
          }
        }

        else
        {
          v31 = 0;
        }

        std::mutex::unlock(v24);
        v30 = 0;
        v32 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_60;
    }

    goto LABEL_18;
  }

  sub_1015225E0();
  v19 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E Bundle name is not valid", __p, 2u);
  }

  v46 = xpc_int64_create(22);
  if (!v46)
  {
    v46 = xpc_null_create();
  }

  __p[0] = *a5;
  __p[1] = "kPosixError";
  sub_10000F688(__p, &v46, &v47);
  xpc_release(v47);
  v47 = 0;
  xpc_release(v46);
  v46 = 0;
LABEL_62:
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }
}

void sub_101524BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, xpc_object_t object, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101524D14(uint64_t a1, void **a2)
{
  v3 = *a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_101524DC8;
  v6[3] = &unk_101F48AF0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  xpc_dictionary_apply(v3, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_101524DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101524DC8(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  xpc_dictionary_set_value(v4, a2, a3);
  return 1;
}

void sub_101524DF8(uint64_t a1, void **a2)
{
  v3 = *a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_101524EAC;
  v6[3] = &unk_101F48AF0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  xpc_dictionary_apply(v3, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_101524E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101524EAC(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  xpc_dictionary_set_value(v4, a2, a3);
  return 1;
}

void *sub_101524EDC(void *a1)
{
  *a1 = off_101F48B60;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101524F28(void *a1)
{
  *a1 = off_101F48B60;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101525000(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F48B60;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101525038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101525048(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_101525088(uint64_t a1, _WORD *a2)
{
  if ((*a2 & 0x100) != 0)
  {
    sub_101521AF8(*a2, &v5);
    v3 = *(a1 + 8);
    v4 = "kCUReliableNetworkFallbackGet";
    sub_100DAE90C(&v3, &v5, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v5);
  }

  else
  {
    v5 = xpc_int64_create(35);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    v3 = *(a1 + 8);
    v4 = "kPosixError";
    sub_10000F688(&v3, &v5, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v5);
  }
}

uint64_t sub_101525160(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015251AC(uint64_t a1, void **a2)
{
  v3 = *a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_101525260;
  v6[3] = &unk_101F48AF0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  xpc_dictionary_apply(v3, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_101525248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101525260(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  xpc_dictionary_set_value(v4, a2, a3);
  return 1;
}

void sub_1015252AC(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

uint64_t sub_101525338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F48CA0;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015253CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015253E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = a2;
  v5[0] = off_101F48D20;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_101525470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101525484(CTXPCCapabilitiesNotificationInterface *this)
{
  *this = off_101F48BE0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCCapabilitiesNotificationInterface::~CTXPCCapabilitiesNotificationInterface(this);
}

void sub_1015254E0(CTXPCCapabilitiesNotificationInterface *this)
{
  *this = off_101F48BE0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCCapabilitiesNotificationInterface::~CTXPCCapabilitiesNotificationInterface(this);

  operator delete();
}

void sub_1015255B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015255F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10152562C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10152565C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101525710(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F48CA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101525740(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder cfUuid:**(a1 + 8)];
  [v4 context:v3 capabilitiesChanged:**(a1 + 16)];
}

uint64_t sub_1015257DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101525898(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F48D20;
  a2[1] = v2;
  return result;
}

uint64_t sub_1015258D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t OOSGeofenceManager::OOSGeofenceManager(uint64_t a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v16, kCtLoggingSystemName, "oos.geo.mgr");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *a3;
  *(a1 + 24) = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v17, &v16);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v17);
  ctu::OsLogLogger::~OsLogLogger(v17);
  ctu::OsLogContext::~OsLogContext(&v16);
  *a1 = off_101F48DB0;
  *(a1 + 48) = off_101F48E48;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a2;
  v7 = a2[1];
  *(a1 + 104) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "OOSGeofenceManager");
  v8 = *(a1 + 24);
  v13 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = *(a1 + 32);
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  v10 = *a3;
  *(a1 + 128) = *a3;
  if (v10)
  {
    dispatch_retain(v10);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return a1;
}

void sub_101525ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v22 = v19[13];
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = v19[11];
  if (v23)
  {
    sub_100004A34(v23);
  }

  sub_1000212F4(&a17);
  OOSGeofenceManagerInterface::~OOSGeofenceManagerInterface(v19);
  ctu::OsLogLogger::~OsLogLogger((v19 + 5));
  sub_1000C0544(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_101525B5C(uint64_t a1)
{
  *a1 = off_101F48DB0;
  *(a1 + 48) = off_101F48E48;
  sub_101525C84(a1);
  v2 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v9 = (a1 + 56);
  sub_1000212F4(&v9);
  OOSGeofenceManagerInterface::~OOSGeofenceManagerInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_101525C84(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Beginning to shut down and unload all OOS geofences", buf, 2u);
  }

  sub_101273B70(a1[10]);
  sub_100021348(a1 + 7);
  v3 = a1[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shut down and unloaded all OOS geofences.", v4, 2u);
  }

  sub_10152667C(a1);
}

void sub_101525D48(uint64_t a1)
{
  sub_101525B5C(a1);

  operator delete();
}

void sub_101525D80(uint64_t a1)
{
  sub_101525B5C(a1 - 48);

  operator delete();
}

void sub_101525DBC(void *a1, void *a2, char *a3)
{
  v6 = a2[7];
  v7 = a2[8];
  if (v6 == v7)
  {
LABEL_20:
    v18 = a2[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (a3[23] >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      LODWORD(__p) = 136642819;
      *(&__p + 4) = v22;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not match regionId for %{sensitive}s", &__p, 0xCu);
    }

    *a1 = 0;
    a1[1] = 0;
    return;
  }

  while (1)
  {
    v8 = *(*v6 + 8);
    v9 = [v8 identifier];
    v10 = v9;
    sub_10000501C(&__p, [v9 UTF8String]);
    v11 = v24;
    if ((v24 & 0x80u) == 0)
    {
      v12 = v24;
    }

    else
    {
      v12 = *(&__p + 1);
    }

    v13 = a3[23];
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a3 + 1);
    }

    if (v12 != v13)
    {
      v17 = 0;
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      operator delete(__p);
      goto LABEL_18;
    }

    if ((v24 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v14 >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    v17 = memcmp(p_p, v16, v12) == 0;
    if (v11 < 0)
    {
      goto LABEL_17;
    }

LABEL_18:

    if (v17)
    {
      break;
    }

    v6 += 2;
    if (v6 == v7)
    {
      goto LABEL_20;
    }
  }

  v19 = a2[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (a3[23] >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    LODWORD(__p) = 136642819;
    *(&__p + 4) = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Matched regionId for OOS region %{sensitive}s", &__p, 0xCu);
  }

  v21 = v6[1];
  *a1 = *v6;
  a1[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_101525FF8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 152);
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I OOS Geofence Manager is loaded: %d", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 153);
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I OOS Geofence Manager perceives service as: %d", buf, 8u);
  }

  v5 = *(a1 + 56);
  for (i = *(a1 + 64); v5 != i; v5 += 2)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*v5 + 1);
      v9 = [v8 identifier];
      v10 = v9;
      v11 = [v9 UTF8String];
      sub_101526210(buf, **v5);
      v12 = buf;
      if (v14 < 0)
      {
        v12 = *buf;
      }

      *v15 = 136315394;
      v16 = v11;
      v17 = 2080;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I OOS Region %s has status %s", v15, 0x16u);
      if (v14 < 0)
      {
        operator delete(*buf);
      }
    }
  }
}

void *sub_101526210(void *a1, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = "Invalid value";
  }

  else
  {
    v2 = off_101F49050[a2];
  }

  return sub_10000501C(a1, v2);
}

void sub_10152630C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_101526340(uint64_t a1)
{
  if ((*(a1 + 152) & 1) == 0)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      if (std::__shared_weak_count::lock(v1))
      {
        dispatch_queue_create("OOS Geofence Queue", 0);
        operator new();
      }
    }

    sub_100013CC4();
  }
}

void sub_101526510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, dispatch_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v18);
  if (object)
  {
    dispatch_release(object);
  }

  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_10152656C(void *a1, char *a2)
{
  v6 = 0;
  v7 = 0;
  sub_101525DBC(&v6, a1, a2);
  if (v6)
  {
    *v6 = 2;
    v4 = a1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      *buf = 136315138;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Entered OOS Region %s", buf, 0xCu);
    }

    sub_10152667C(a1);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10152665C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10152667C(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (v2 != v3)
  {
    do
    {
      if (**v3 == 2)
      {
        v7 = *(a1 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Device is in at least one OOS region...", buf, 2u);
        }

        v6 = 1;
        goto LABEL_13;
      }

      v3 += 2;
    }

    while (v3 != v2);
    v4 = *(a1 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v5 = "#I Device is not in any OOS regions...";
    goto LABEL_8;
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v5 = "#I No OOS geofence regions are loaded.";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
  }

LABEL_9:
  v6 = 0;
LABEL_13:
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = CSIBOOLAsString(*(a1 + 153));
    v10 = CSIBOOLAsString(v6);
    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I OOS Status: Device has service [%s] and device is in an OOS Area [%s]", buf, 0x16u);
  }

  if (v6 && (*(a1 + 153) & 1) == 0)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Device is now in an OOS Zone with no Service...", buf, 2u);
    }

    v12 = *(a1 + 136);
    if (v12)
    {
      v13 = (*(*v12 + 24))(v12);
      v14 = *(a1 + 40);
      if (!v13)
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v15 = "#I OOS countdown timer is active...";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
          return;
        }

        return;
      }
    }

    else
    {
      v14 = *(a1 + 40);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Beginning countdown to dispatch any queued WEA due to being OOS.", buf, 2u);
    }

    v44 = 0;
    v45 = 0;
    Registry::getTimerService(&v44, *(a1 + 96));
    v18 = v44;
    v19 = *(a1 + 40);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        *buf = 134217984;
        *&buf[4] = 60;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Setting OOS timer to %llds seconds...", buf, 0xCu);
      }

      v21 = *(a1 + 16);
      if (!v21 || (v22 = *(a1 + 8), (v23 = std::__shared_weak_count::lock(v21)) == 0))
      {
        sub_100013CC4();
      }

      v24 = v23;
      p_shared_weak_owners = &v23->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      sub_10000501C(v41, "OOS Countdown to WEA Delivery");
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3321888768;
      *&buf[16] = sub_101527BC4;
      v49 = &unk_101F48E98;
      v50 = a1;
      v51 = v22;
      v52 = v24;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v26 = objc_retainBlock(buf);
      *__p = *v41;
      v47 = v42;
      v41[0] = 0;
      v41[1] = 0;
      v42 = 0;
      ctu::TimerService::createOneShotTimerImpl();
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      v27 = v43;
      v43 = 0;
      v28 = *(a1 + 136);
      *(a1 + 136) = v27;
      if (v28)
      {
        (*(*v28 + 8))(v28);
        v29 = v43;
        v43 = 0;
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
      }

      v30 = *(a1 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I OOS countdown has begun...", __p, 2u);
      }

      if (v52)
      {
        std::__shared_weak_count::__release_weak(v52);
      }

      std::__shared_weak_count::__release_weak(v24);
LABEL_66:
      if (v45)
      {
        sub_100004A34(v45);
      }

      return;
    }

    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Could not create OOS countdown timer.", buf, 2u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 96));
    v32 = ServiceMap;
    if (v33 < 0)
    {
      v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
      v35 = 5381;
      do
      {
        v33 = v35;
        v36 = *v34++;
        v35 = (33 * v35) ^ v36;
      }

      while (v36);
    }

    std::mutex::lock(ServiceMap);
    *buf = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, buf);
    if (v37)
    {
      v39 = v37[3];
      v38 = v37[4];
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v32);
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v38);
        v40 = 0;
        if (!v39)
        {
LABEL_64:
          if ((v40 & 1) == 0)
          {
            sub_100004A34(v38);
          }

          goto LABEL_66;
        }

LABEL_63:
        (*(*v39 + 112))(v39);
        sub_101525C84(a1);
        goto LABEL_64;
      }
    }

    else
    {
      v39 = 0;
    }

    std::mutex::unlock(v32);
    v38 = 0;
    v40 = 1;
    if (!v39)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v16 = *(a1 + 136);
  if (v16)
  {
    v17 = (*(*v16 + 24))(v16);
    v14 = *(a1 + 40);
    if ((v17 & 1) == 0)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Device is not OOS; aborting active OOS countdown...", buf, 2u);
      }

      (*(**(a1 + 136) + 16))(*(a1 + 136));
      return;
    }
  }

  else
  {
    v14 = *(a1 + 40);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v15 = "#I Device is not OOS, and no OOS countdown is active...";
    goto LABEL_31;
  }
}

void sub_101526D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101526DA8(void *a1, char *a2)
{
  v6 = 0;
  v7 = 0;
  sub_101525DBC(&v6, a1, a2);
  if (v6)
  {
    *v6 = 3;
    v4 = a1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      *buf = 136315138;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Exited OOS Region %s", buf, 0xCu);
    }

    sub_10152667C(a1);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_101526E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101526EC0(void *a1, char *a2, unsigned int *a3)
{
  v14 = 0;
  v15 = 0;
  sub_101525DBC(&v14, a1, a2);
  if (v14)
  {
    v6 = *a3;
    *v14 = *a3;
    v7 = a1[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a2[23];
      v9 = *a2;
      sub_101526210(__p, v6);
      v10 = v8 >= 0 ? a2 : v9;
      v11 = v13 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Determined state for OOS Region %s as %s", buf, 0x16u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10152667C(a1);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_101527000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10152702C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v11 = a2 * 0.0174532925;
  v12 = a5 * 0.0174532925;
  v13 = a3 * 0.0174532925 - a6 * 0.0174532925;
  v14 = sin((a2 * 0.0174532925 - a5 * 0.0174532925) * 0.5);
  v15 = v14 * v14;
  v16 = cos(v11);
  v17 = v16 * cos(v12);
  v18 = sin(v13 * 0.5);
  v19 = asin(sqrt(v15 + v17 * (v18 * v18)));
  v20 = (v19 + v19) * 6371.0 * 1000.0;
  v21 = v20 > 50.0 && v20 > a4 + a7;
  return !v21 && ((*(*a1 + 40))(a1, a5, a6, a7) & 1) != 0;
}

BOOL sub_101527160(uint64_t a1, double a2, double a3, double a4)
{
  v8 = *(a1 + 144);
  if (v8)
  {
    (*(*v8 + 16))(v8);
    v9 = *(a1 + 144);
    *(a1 + 144) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = 24;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Setting Clear Regions Timer to %lld hours...", &buf, 0xCu);
  }

  *&v62.__r_.__value_.__l.__data_ = 0uLL;
  Registry::getTimerService(&v62, *(a1 + 96));
  v11 = *(a1 + 16);
  if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    sub_100013CC4();
  }

  v14 = v13;
  p_shared_weak_owners = &v13->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  sub_10000501C(&v71, "Clear OOS Regions Timer");
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3321888768;
  v66 = COERCE_DOUBLE(sub_101527E30);
  v67 = &unk_101F48E98;
  v68 = a1;
  v69 = v12;
  v70 = v14;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v16 = objc_retainBlock(&buf);
  *&v63.__r_.__value_.__l.__data_ = xmmword_101986240;
  ctu::TimerService::throwIfPeriodIsZero();
  __p = v71;
  memset(&v71, 0, sizeof(v71));
  ctu::TimerService::createPeriodicTimerImpl();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = v61.__r_.__value_.__r.__words[0];
  v61.__r_.__value_.__r.__words[0] = 0;
  v18 = *(a1 + 144);
  *(a1 + 144) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v19 = v61.__r_.__value_.__r.__words[0];
    v61.__r_.__value_.__r.__words[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v20 = *(a1 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Finished setting up Clear OOS Regions Timer...", &__p, 2u);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_weak(v70);
  }

  std::__shared_weak_count::__release_weak(v14);
  if (v62.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v62.__r_.__value_.__l.__size_);
  }

  *&buf = a2;
  *(&buf + 1) = a3;
  v66 = a4;
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v61, a2);
  v21 = std::string::append(&v61, "|", 1uLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v60, a3);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v60;
  }

  else
  {
    v23 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v60.__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&v62, v23, size);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v63, "|", 1uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v71.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v71.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v59, a4);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v59;
  }

  else
  {
    v29 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v59.__r_.__value_.__l.__size_;
  }

  v31 = std::string::append(&v71, v29, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  v33 = *(a1 + 40);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v71.__r_.__value_.__l.__data_) = 136642819;
    *(v71.__r_.__value_.__r.__words + 4) = p_p;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Attempting to add geofence for OOS region %{sensitive}s...", &v71, 0xCu);
  }

  sub_101525DBC(&v71, a1, &__p);
  v35 = v71.__r_.__value_.__r.__words[0];
  if (v71.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v71.__r_.__value_.__l.__size_);
  }

  if (v35)
  {
    v36 = *(a1 + 40);
    v37 = 0;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v38 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v71.__r_.__value_.__l.__data_) = 136642819;
      *(v71.__r_.__value_.__r.__words + 4) = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I OOS Geofence %{sensitive}s is already loaded...", &v71, 0xCu);
      v37 = 0;
    }
  }

  else
  {
    *&v63.__r_.__value_.__l.__data_ = 0uLL;
    sub_1012737DC(*(a1 + 80), &buf, &__p, &v63);
    v37 = v63.__r_.__value_.__r.__words[0] != 0;
    if (v63.__r_.__value_.__r.__words[0])
    {
      v39 = *(a1 + 64);
      v40 = *(a1 + 72);
      if (v39 >= v40)
      {
        v45 = *(a1 + 56);
        v46 = (v39 - v45) >> 4;
        v47 = v46 + 1;
        if ((v46 + 1) >> 60)
        {
          sub_1000CE3D4();
        }

        v48 = v40 - v45;
        if (v48 >> 3 > v47)
        {
          v47 = v48 >> 3;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          if (!(v49 >> 60))
          {
            operator new();
          }

          sub_100013D10();
        }

        v50 = v63.__r_.__value_.__l.__size_;
        v51 = (16 * v46);
        *v51 = v63.__r_.__value_.__r.__words[0];
        v51[1] = v50;
        if (v50)
        {
          atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
        }

        v42 = v51 + 2;
        v52 = *(a1 + 56);
        v53 = *(a1 + 64) - v52;
        v54 = v51 - v53;
        memcpy(v51 - v53, v52, v53);
        *(a1 + 56) = v54;
        *(a1 + 64) = v42;
        *(a1 + 72) = 0;
        if (v52)
        {
          operator delete(v52);
        }
      }

      else
      {
        *v39 = v63.__r_.__value_.__r.__words[0];
        v41 = v63.__r_.__value_.__l.__size_;
        v39[1] = v63.__r_.__value_.__l.__size_;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        v42 = v39 + 2;
      }

      *(a1 + 64) = v42;
      v55 = *(a1 + 40);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v56 = __p.__r_.__value_.__r.__words[0];
        }

        v57 = (v42 - *(a1 + 56)) >> 4;
        LODWORD(v71.__r_.__value_.__l.__data_) = 136643075;
        *(v71.__r_.__value_.__r.__words + 4) = v56;
        WORD2(v71.__r_.__value_.__r.__words[1]) = 2048;
        *(&v71.__r_.__value_.__r.__words[1] + 6) = v57;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I Loaded new OOS Geofence %{sensitive}s, now monitoring %lu...", &v71, 0x16u);
      }

      sub_10152667C(a1);
    }

    else
    {
      v43 = *(a1 + 40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v44 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(v71.__r_.__value_.__l.__data_) = 136642819;
        *(v71.__r_.__value_.__r.__words + 4) = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Failed to add OOS Geofence %{sensitive}s...", &v71, 0xCu);
      }
    }

    if (v63.__r_.__value_.__l.__size_)
    {
      sub_100004A34(v63.__r_.__value_.__l.__size_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v37;
}