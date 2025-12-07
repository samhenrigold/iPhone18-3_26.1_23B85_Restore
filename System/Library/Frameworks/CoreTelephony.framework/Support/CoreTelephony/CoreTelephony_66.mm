void *sub_100432018(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFDateGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return sub_100431B6C(a1, v5);
}

void CellularPlanSourceTransferModel::create(uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_100432244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (object)
  {
    dispatch_release(object);
    if (!v12)
    {
LABEL_5:
      if (v14)
      {
        goto LABEL_6;
      }

      goto LABEL_7;
    }
  }

  else if (!v12)
  {
    goto LABEL_5;
  }

  sub_100004A34(v12);
  if (v14)
  {
LABEL_6:
    operator delete();
  }

LABEL_7:
  _Unwind_Resume(exception_object);
}

void CellularPlanSourceTransferModel::CellularPlanSourceTransferModel(void *a1, uint64_t a2, NSObject **a3, void *a4)
{
  *a1 = off_101E4C808;
  sub_100118594(a1 + 1, a3, &kCtLoggingSystemName, &off_101E4C660);
  *a1 = off_101E4C678;
  a1[6] = off_101E4C770;
  v6 = *a2;
  a1[7] = *a2;
  v7 = *(a2 + 8);
  a1[8] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v6 = *a2;
  }

  (**v6)(v17);
  ServiceMap = Registry::getServiceMap(v17[0]);
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
  v18 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v18);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  std::mutex::unlock(v9);
  v17[2] = v16;
  v17[3] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    sub_100004A34(v15);
  }

  v18 = (a1 + 5);
  sub_100438C04();
}

void sub_100432574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  v24 = v21[16];
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = v21[14];
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = v21[12];
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = v21[10];
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = v21[8];
  if (v28)
  {
    sub_100004A34(v28);
  }

  CoreUtilsMessageSessionDelegateInterface::~CoreUtilsMessageSessionDelegateInterface(v22);
  ctu::OsLogLogger::~OsLogLogger((v21 + 5));
  sub_1000C0544(v21 + 1);
  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::~CellularPlanSourceTransferModel(CellularPlanSourceTransferModel *this)
{
  *this = off_101E4C678;
  v2 = (this + 48);
  *(this + 6) = off_101E4C770;
  v3 = *(this + 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  sub_100438DE0(this + 328, *(this + 42));
  sub_100009970(this + 304, *(this + 39));
  sub_1000DD0AC(this + 280, *(this + 36));
  sub_100438D74(this + 256, *(this + 33));
  sub_100438D74(this + 232, *(this + 30));
  v10 = (this + 200);
  sub_100112048(&v10);
  sub_100359978(this + 176, *(this + 23));
  sub_100009970(this + 152, *(this + 20));
  v4 = *(this + 18);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 16);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 14);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 12);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  CoreUtilsMessageSessionDelegateInterface::~CoreUtilsMessageSessionDelegateInterface(v2);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  CellularPlanSourceTransferModel::~CellularPlanSourceTransferModel(this);

  operator delete();
}

void non-virtual thunk toCellularPlanSourceTransferModel::~CellularPlanSourceTransferModel(CellularPlanSourceTransferModel *this)
{
  CellularPlanSourceTransferModel::~CellularPlanSourceTransferModel((this - 48));
}

{
  CellularPlanSourceTransferModel::~CellularPlanSourceTransferModel((this - 48));

  operator delete();
}

void CellularPlanSourceTransferModel::connectRestResources_sync(void (****this)(Registry **__return_ptr))
{
  (**this[7])(&v2);
  Registry::createRestModuleOneTimeUseConnection(&v4, v2);
  ctu::RestModule::connect();
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100432E7C((this + 19), (this + 17));
  sub_100432F5C((this + 25), (this + 17));
  sub_10043303C((this + 22), (this + 17));
  v2 = CellularPlanSourceTransferModel::handleServiceTransfer_sync;
  v3 = 0;
  sub_100439348((this + 17), this, &v2);
}

void sub_100432B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSourceTransferModel::PersistenceHelper::loadTransferredPlans(uint64_t *__return_ptr a1@<X8>, CellularPlanSourceTransferModel::PersistenceHelper *this@<X0>)
{
  v3 = 0u;
  v4 = 0u;
  sub_100438764(this, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", &v3);
  if (BYTE8(v4) == 1)
  {
    sub_10043C648(a1, &v3);
    if (BYTE8(v4))
    {
      sub_100438D74(&v3, *(&v3 + 1));
    }
  }

  else
  {
    a1[2] = 0;
    a1[1] = 0;
    *a1 = (a1 + 1);
  }
}

void sub_100432BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    sub_100438D74(&a9, a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSourceTransferModel::PersistenceHelper::loadMaybeTransferredPlans(uint64_t *__return_ptr a1@<X8>, CellularPlanSourceTransferModel::PersistenceHelper *this@<X0>)
{
  v3 = 0u;
  v4 = 0u;
  sub_100438764(this, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", &v3);
  if (BYTE8(v4) == 1)
  {
    sub_10043C648(a1, &v3);
    if (BYTE8(v4))
    {
      sub_100438D74(&v3, *(&v3 + 1));
    }
  }

  else
  {
    a1[2] = 0;
    a1[1] = 0;
    *a1 = (a1 + 1);
  }
}

void sub_100432CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    sub_100438D74(&a9, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100432CC8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 48))(v5, a2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v8 = 0;
    (*(**(a1 + 8) + 40))(&v9);
    sub_100060DE8(&v8, &v9);
    sub_10000A1EC(&v9);
    if (v8)
    {
      v9 = 0uLL;
      v10 = 0;
      ctu::cf::assign();
      *__p = v9;
      v7 = v10;
      codec::decode<std::map<std::string,std::string>>(__p);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a3 = 0;
      a3[24] = 0;
    }

    sub_100005978(&v8);
  }

  else
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_1017703C0();
    }

    *a3 = 0;
    a3[24] = 0;
  }
}

void sub_100432E30(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_100432E7C(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/prefs-nb/imeis");
  v5[0] = off_101E4CA80;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100432F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100432F5C(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/vinyl_info");
  v5[0] = off_101E4CB00;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_100433010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10043303C(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/sims_on_device");
  v5[0] = off_101E4CB80;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_1004330F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::handleServiceTransfer_sync(uint64_t a1, uint64_t ***a2)
{
  sub_10017518C((a1 + 280), a2, a2, (a2 + 3));
  sub_100436CA4(*(a1 + 72), a1 + 280, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredBackPairs");

  CellularPlanSourceTransferModel::maybeDeleteTransferBackPlan_sync(a1);
}

void CellularPlanSourceTransferModel::createTransferSessionHandler_sync(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 56);
  v6 = a2[1];
  v19 = *a2;
  v20 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100004AA0(&v23, (a1 + 8));
  v7 = v24;
  if (v24)
  {
    v8 = v23;
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
    v17 = 0;
    v18 = 0;
    v9 = std::__shared_weak_count::lock(v7);
    v10 = v9;
    if (v9)
    {
      v11 = v8 + 48;
      if (!v8)
      {
        v11 = 0;
      }

      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v11 = 0;
    }

    v17 = v11;
    v18 = v9;
    std::__shared_weak_count::__release_weak(v7);
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  (*(*v5 + 472))(v21, v5, &v19, &v17);
  v12 = v21[0];
  v21[0] = 0uLL;
  v13 = *(a1 + 112);
  *(a1 + 104) = v12;
  if (v13)
  {
    sub_100004A34(v13);
    if (*(&v21[0] + 1))
    {
      sub_100004A34(*(&v21[0] + 1));
    }
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (*(a1 + 104))
  {
    v14 = sub_100649C38(2);
    sub_10000501C(&v23, v14);
    memset(v16, 0, sizeof(v16));
    sub_10016FB64(v16, &v23, &v25, 1uLL);
    sub_100004AA0(v21, (a1 + 8));
    v15 = *(&v21[0] + 1);
    if (*(&v21[0] + 1))
    {
      atomic_fetch_add_explicit((*(&v21[0] + 1) + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
    }

    v22 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017703F4();
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_100433444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, ...)
{
  va_start(va, a20);
  sub_100287FF4(va);
  a20 = &a10;
  sub_1000087B4(&a20);
  if (*(v20 - 57) < 0)
  {
    operator delete(*(v20 - 80));
  }

  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::registerMessageHandler_sync(CellularPlanSourceTransferModel *this)
{
  if (*(this + 13))
  {
    v2 = sub_100649C38(9);
    sub_10000501C(v8, v2);
    memset(v4, 0, sizeof(v4));
    sub_10016FB64(v4, v8, &v9, 1uLL);
    sub_100004AA0(&v5, this + 1);
    v3 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    v7 = 0;
    operator new();
  }
}

void sub_100433628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14, ...)
{
  va_start(va, a14);
  sub_100287FF4(va);
  a14 = &a9;
  sub_1000087B4(&a14);
  if (*(v14 - 41) < 0)
  {
    operator delete(*(v14 - 64));
  }

  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::recalculateTransferredPlans_sync(uint64_t **a1, uint64_t *a2, unint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  v5 = a1[25];
  v6 = a1[26];
  if (v5 != v6)
  {
    v7 = (v5 + 2);
    do
    {
      if (*(v7 - 1) == 3 && *v7 != 0)
      {
        sub_100922314(v7, a2, a3);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }

        *__p = *buf;
        v37 = v39;
      }

      v8 = (v7 + 72);
      v7 = (v7 + 88);
    }

    while (v8 != v6);
  }

  v9 = *a2;
  v10 = a2[1];
  if (*a2 != v10)
  {
    do
    {
      v11 = (v9 + 72);
      if ((CellularPlanSourceTransferModel::hasIccid_sync(a1, (v9 + 72)) & 1) != 0 && *(v9 + 192) == 1)
      {
        if (*(v9 + 144) == 2)
        {
          if (sub_10016FA58((a1 + 19), (v9 + 24)))
          {
            goto LABEL_14;
          }

          v15 = v37 >= 0 ? HIBYTE(v37) : __p[1];
          if (v15)
          {
            v16 = *(v9 + 71);
            v17 = v16;
            if (v16 < 0)
            {
              v16 = *(v9 + 56);
            }

            if (v15 == v16)
            {
              v18 = v37 >= 0 ? __p : __p[0];
              v19 = v17 >= 0 ? (v9 + 48) : *(v9 + 48);
              if (!memcmp(v18, v19, v15))
              {
LABEL_14:
                v12 = a1[5];
                if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
                {
                  v13 = (v9 + 72);
                  if (*(v9 + 95) < 0)
                  {
                    v13 = *v11;
                  }

                  *buf = 136315138;
                  *&buf[4] = v13;
                  _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I transferred local plan : %s", buf, 0xCu);
                }

                __dst[0] = 0;
                __dst[1] = 0;
                v35 = 0;
                if (*(v9 + 183) < 0)
                {
                  sub_100005F2C(__dst, *(v9 + 160), *(v9 + 168));
                }

                else
                {
                  *__dst = *(v9 + 160);
                  v35 = *(v9 + 176);
                }

                v20 = *(v9 + 71);
                if (v20 < 0)
                {
                  v21 = *(v9 + 56);
                }

                else
                {
                  v21 = *(v9 + 71);
                }

                v22 = *(v9 + 144);
                if (!v21)
                {
                  goto LABEL_59;
                }

                if (v20 >= 0)
                {
                  v23 = *(v9 + 71);
                }

                else
                {
                  v23 = *(v9 + 56);
                }

                v24 = *(v9 + 143);
                v25 = v24;
                if ((v24 & 0x80u) != 0)
                {
                  v24 = *(v9 + 128);
                }

                if (v23 == v24)
                {
                  if (v20 >= 0)
                  {
                    v26 = (v9 + 48);
                  }

                  else
                  {
                    v26 = *(v9 + 48);
                  }

                  if (v25 >= 0)
                  {
                    v27 = (v9 + 120);
                  }

                  else
                  {
                    v27 = *(v9 + 120);
                  }

                  if (!memcmp(v26, v27, v23))
                  {
                    v28 = 4;
                  }

                  else
                  {
                    v28 = 2;
                  }
                }

                else
                {
LABEL_59:
                  v28 = 2;
                }

                v29 = 0;
                if (v22 > 2)
                {
                  if (v22 == 3)
                  {
                    v29 = 3;
                  }

                  else if (v22 == 4)
                  {
                    v29 = 5;
                  }
                }

                else if (v22 == 1)
                {
                  v29 = 1;
                }

                else if (v22 == 2)
                {
                  v29 = v28;
                }

                if (sub_10016FA58((a1 + 29), (v9 + 72)))
                {
                  v30 = a1[5];
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                  {
                    if (*(v9 + 95) < 0)
                    {
                      v11 = *v11;
                    }

                    *buf = 136315138;
                    *&buf[4] = v11;
                    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I plan : %s has already transferred", buf, 0xCu);
                  }
                }

                else
                {
                  if (CellularPlanSourceTransferModel::isActiveIccid_sync(a1, v9 + 72))
                  {
                    v31 = a1[5];
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                    {
                      v32 = (v9 + 72);
                      if (*(v9 + 95) < 0)
                      {
                        v32 = *v11;
                      }

                      *buf = 136315138;
                      *&buf[4] = v32;
                      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I add active profile to maybetransferred plan : %s", buf, 0xCu);
                    }

                    if (SHIBYTE(v35) < 0)
                    {
                      sub_100005F2C(buf, __dst[0], __dst[1]);
                    }

                    else
                    {
                      *buf = *__dst;
                      v39 = v35;
                    }

                    if (*(v9 + 143) < 0)
                    {
                      sub_100005F2C(&v40, *(v9 + 120), *(v9 + 128));
                    }

                    else
                    {
                      v40 = *(v9 + 120);
                      v41 = *(v9 + 136);
                    }

                    v42 = v29;
                    v43 = 0;
                    sub_10043A2C8(a1 + 32, (v9 + 72), v9 + 72, buf);
                    if (SHIBYTE(v41) < 0)
                    {
                      operator delete(v40);
                    }

                    if (SHIBYTE(v39) < 0)
                    {
                      operator delete(*buf);
                    }

                    sub_1004384A0(a1[9], (a1 + 32), @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"maybeTransferredPlans");
                    CellularPlanSourceTransferModel::evaluateCurrentNetworkStatusForIccid_sync(a1, (v9 + 72));
                  }

                  else
                  {
                    CellularPlanSourceTransferModel::addTransferredPlan_sync(a1, (v9 + 72), (v9 + 120), __dst, v29);
                  }

                  CellularPlanSourceTransferModel::notifyTransferConfirmed(a1, v33, __dst);
                }

                if (SHIBYTE(v35) < 0)
                {
                  operator delete(__dst[0]);
                }
              }
            }
          }
        }

        else
        {
          v14 = a1[5];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v9 + 95) < 0)
            {
              v11 = *v11;
            }

            *buf = 136315138;
            *&buf[4] = v11;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I ignore out of band transferred plan : %s", buf, 0xCu);
          }
        }
      }

      v9 += 200;
    }

    while (v9 != v10);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100433B9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSourceTransferModel::hasIccid_sync(uint64_t a1, const void **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (!v3)
  {
    return 1;
  }

  v4 = *(a1 + 176);
  v5 = (a1 + 184);
  if (v4 != (a1 + 184))
  {
    if (v2 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    do
    {
      v7 = *(v4 + 135);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = v4[15];
      }

      if (v7 == v3)
      {
        v9 = v8 >= 0 ? v4 + 14 : v4[14];
        if (!memcmp(v9, v6, v3))
        {
          return 1;
        }
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

      v4 = v11;
    }

    while (v11 != v5);
  }

  sGetProfileDetails();
  v13 = v16;
  if (v16 == 1)
  {
    sub_100E3A5D4(v15);
  }

  return v13;
}

uint64_t CellularPlanSourceTransferModel::isActiveIccid_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v20 = *(a2 + 16);
  }

  v5 = (a1 + 184);
  v6 = HIBYTE(v20);
  if (v4 != (a1 + 184))
  {
    if (v20 >= 0)
    {
      v7 = HIBYTE(v20);
    }

    else
    {
      v7 = __p[1];
    }

    if (v20 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    while (1)
    {
      v9 = *(v4 + 135);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v4[15];
      }

      if (v9 == v7)
      {
        v11 = v10 >= 0 ? v4 + 14 : v4[14];
        if (!memcmp(v11, v8, v7))
        {
          break;
        }
      }

      v12 = v4[1];
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
          v13 = v4[2];
          v14 = *v13 == v4;
          v4 = v13;
        }

        while (!v14);
      }

      v4 = v13;
      if (v13 == v5)
      {
        v4 = (a1 + 184);
        break;
      }
    }
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == v5 || (subscriber::isEsimCapable() & 1) != 0 || (subscriber::isPhySimDisabled() & 1) != 0)
  {
    v33 = 0u;
    v34 = 0u;
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
    *buf = 0u;
    v22 = 0u;
    sGetProfileDetails();
    if (BYTE8(v34) == 1)
    {
      v15 = BYTE10(v26);
      sub_100E3A5D4(buf);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Iccid %s is an active physical SIM", buf, 0xCu);
    }

    v15 = 1;
  }

  return v15 & 1;
}

void CellularPlanSourceTransferModel::evaluateCurrentNetworkStatusForIccid_sync(uint64_t a1, char *a2)
{
  if (sub_10016FA58(a1 + 304, a2))
  {
    sub_1000727F0((a1 + 304), a2);
    CellularPlanSourceTransferModel::addTransferredPlan_sync(a1, a2);
  }

  CellularPlanSourceTransferModel::maybeRecheckEntitlement_sync(a1, a2);
}

uint64_t CellularPlanSourceTransferModel::addTransferredPlan_sync(CellularPlanSourceTransferModel *a1, uint64_t ***a2, __int128 *a3, uint64_t a4, char a5)
{
  v10 = *(a1 + 5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I add inactive profile to transferred plan: %s", buf, 0xCu);
  }

  v13 = *(a1 + 25);
  v14 = *(a1 + 26);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    v27 = *(a3 + 2);
  }

  v23 = a5;
  if (v13 != v14)
  {
    v15 = v13 + 88;
    while (1)
    {
      ctu::hex((v15 - 72), 0x10, v11);
      if (v27 >= 0)
      {
        v11 = HIBYTE(v27);
      }

      else
      {
        v11 = __p[1];
      }

      v16 = HIBYTE(v29);
      v17 = SHIBYTE(v29);
      if (v29 < 0)
      {
        v16 = *&buf[8];
      }

      if (v11 == v16)
      {
        break;
      }

      v20 = 0;
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_26;
      }

LABEL_27:
      v21 = v15 == v14 || v20;
      v15 += 88;
      if (v21 == 1)
      {
        goto LABEL_33;
      }
    }

    if (v27 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (v29 >= 0)
    {
      v19 = buf;
    }

    else
    {
      v19 = *buf;
    }

    v20 = memcmp(v18, v19, v11) == 0;
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

LABEL_26:
    operator delete(*buf);
    goto LABEL_27;
  }

  v20 = 0;
LABEL_33:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
    if (v20)
    {
      goto LABEL_35;
    }
  }

  else if (v20)
  {
LABEL_35:
    sub_10000501C(buf, "");
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&v30, *a3, *(a3 + 1));
    }

    else
    {
      v30 = *a3;
      v31 = *(a3 + 2);
    }

    *v32 = 4;
    v32[2] = 0;
    sub_10043A2C8(a1 + 29, a2, a2, buf);
    goto LABEL_47;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(buf, *a4, *(a4 + 8));
  }

  else
  {
    *buf = *a4;
    v29 = *(a4 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v30, *a3, *(a3 + 1));
  }

  else
  {
    v30 = *a3;
    v31 = *(a3 + 2);
  }

  v32[0] = v23;
  *&v32[1] = 0;
  sub_10043A2C8(a1 + 29, a2, a2, buf);
LABEL_47:
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*buf);
  }

  sub_1004384A0(*(a1 + 9), a1 + 232, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredPlans");
  CellularPlanSourceTransferModel::notifyTransferredPlansUpdate_sync(a1);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, a2[1]);
  }

  else
  {
    *__dst = *a2;
    v25 = a2[2];
  }

  CellularPlanSourceTransferModel::maybeDeletePlanAfterTransfer(a1, __dst);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  return 1;
}

void sub_100434308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSourceTransferModel::notifyTransferConfirmed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v20 = 0;
  (***(a1 + 56))(&__dst);
  Registry::getNotificationSenderFactory(&v24, __dst);
  v5 = v24;
  (***(a1 + 56))(&v15);
  Registry::getTimerService(&v17, v15);
  (*(*v5 + 168))(&v19, v5, &v17, a1 + 24);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (*(&v24 + 1))
  {
    sub_100004A34(*(&v24 + 1));
  }

  if (*(&__dst + 1))
  {
    sub_100004A34(*(&__dst + 1));
  }

  if (v19)
  {
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v13 = *(a3 + 16);
    }

    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v23 = v13;
    }

    v21 = 0;
    if (SHIBYTE(v23) < 0)
    {
      sub_100005F2C(&v24, __dst, *(&__dst + 1));
    }

    else
    {
      v24 = __dst;
      v25 = v23;
    }

    v26 = 0;
    if (ctu::cf::convert_copy())
    {
      v6 = v21;
      v21 = v26;
      v15 = v6;
      sub_100005978(&v15);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
    }

    v7 = v21;
    v14 = v21;
    v21 = 0;
    sub_100005978(&v21);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    *&__dst = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      *&__dst = Mutable;
      *&v24 = 0;
      sub_1000296E0(&v24);
      v7 = v14;
      Mutable = __dst;
    }

    sub_1001768B8(Mutable, @"kTargetName", v7);
    v15 = 0;
    v9 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v9)
    {
      v15 = v9;
      *&v24 = 0;
      sub_1000296E0(&v24);
      v9 = v15;
    }

    sub_10043B768(v9, @"kTransferConfirmation", __dst);
    v10 = v19;
    sub_100010180(&v11, &v15);
    (*(*v10 + 40))(v10, &v11);
    sub_10001021C(&v11);
    sub_1000296E0(&v15);
    sub_1000296E0(&__dst);
    sub_100005978(&v14);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101770428();
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_1004346B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, const void *a28)
{
  sub_100005978(&a28);
  if (*(v28 - 73) < 0)
  {
    operator delete(*(v28 - 96));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::maybeDeletePlanAfterTransfer(uint64_t a1, __int128 *a2)
{
  if (sIsProfileInstalled())
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = *(a1 + 88);
        if (v6)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v7 = *(a1 + 176);
          if (v7 != (a1 + 184))
          {
            do
            {
              *__p = 0u;
              v45 = 0u;
              v42 = 0u;
              *v43 = 0u;
              *v40 = 0u;
              *v41 = 0u;
              *v38 = 0u;
              v39 = 0u;
              *v36 = 0u;
              *v37 = 0u;
              *buf = 0u;
              *buf = *(v7 + 8);
              sub_100032BFC(&buf[8], (v7 + 5));
              v8 = v47;
              if (v47 >= v48)
              {
                v9 = sub_100438918(&v46, &buf[8]);
              }

              else
              {
                sub_100032BFC(v47, &buf[8]);
                v9 = v8 + 168;
              }

              v47 = v9;
              if (SHIBYTE(v45) < 0)
              {
                operator delete(__p[1]);
              }

              if (SHIBYTE(__p[0]) < 0)
              {
                operator delete(v43[0]);
              }

              if (SHIBYTE(v42) < 0)
              {
                operator delete(v41[1]);
              }

              if (SHIBYTE(v41[0]) < 0)
              {
                operator delete(v40[0]);
              }

              *v32 = v38;
              sub_100034D1C(v32);
              if (v36[1])
              {
                v37[0] = v36[1];
                operator delete(v36[1]);
              }

              v10 = v7[1];
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
                  v11 = v7[2];
                  v12 = *v11 == v7;
                  v7 = v11;
                }

                while (!v12);
              }

              v7 = v11;
            }

            while (v11 != (a1 + 184));
          }

          v43[0] = 0;
          *v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          *v40 = 0u;
          *v37 = 0u;
          *v38 = 0u;
          *buf = 0u;
          *v36 = 0u;
          (*(*v6 + 48))(v32, v6);
          sub_100931FDC(buf, a1 + 40, a2, a1 + 200, &v46, v32);
          sub_10016A798(v32, v33);
          if ((v43[0] & 1) == 0)
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_10177045C();
            }

            goto LABEL_61;
          }

          if (((*(**(a1 + 56) + 1032))(*(a1 + 56), v37, &v38[1], v40, &v41[1], a2) & 1) == 0)
          {
            v25 = *(a1 + 40);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *v32 = 0;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I delete plan after transfer not supported", v32, 2u);
            }

            goto LABEL_61;
          }

          CellularPlanSourceTransferModel::getAllUserPlanIccids(v32, a1);
          v13 = v34;
          sub_100009970(v32, v33);
          if (v13 != 1)
          {
LABEL_51:
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(__dst, *a2, *(a2 + 1));
              v26 = *(a2 + 23) < 0;
            }

            else
            {
              v26 = 0;
              *__dst = *a2;
              v31 = *(a2 + 2);
            }

            v27[0] = _NSConcreteStackBlock;
            v27[1] = 1174405120;
            v27[2] = sub_100434FE8;
            v27[3] = &unk_101E4C788;
            v27[4] = a1;
            if (v26)
            {
              sub_100005F2C(&v28, *a2, *(a2 + 1));
            }

            else
            {
              v28 = *a2;
              v29 = *(a2 + 2);
            }

            (*(*v6 + 40))(v6, __dst, v27);
            if (SHIBYTE(v31) < 0)
            {
              operator delete(__dst[0]);
            }

            if (SHIBYTE(v29) < 0)
            {
              operator delete(v28);
            }

LABEL_61:
            if (LOBYTE(v43[0]) == 1)
            {
              if (SHIBYTE(v42) < 0)
              {
                operator delete(v41[1]);
              }

              if (SHIBYTE(v41[0]) < 0)
              {
                operator delete(v40[0]);
              }

              if (SHIBYTE(v39) < 0)
              {
                operator delete(v38[1]);
              }

              if (SHIBYTE(v38[0]) < 0)
              {
                operator delete(v37[0]);
              }

              if (LOBYTE(v36[1]) == 1 && SHIBYTE(v36[0]) < 0)
              {
                operator delete(*buf);
              }
            }

            *buf = &v46;
            sub_1000B2AF8(buf);
LABEL_74:
            if (v5)
            {
              sub_100004A34(v5);
            }

            return;
          }

          (***(a1 + 56))(v32);
          ServiceMap = Registry::getServiceMap(*v32);
          v15 = ServiceMap;
          if ((v16 & 0x8000000000000000) != 0)
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
          v49 = v16;
          v20 = sub_100009510(&v15[1].__m_.__sig, &v49);
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
LABEL_45:
              if (v33)
              {
                sub_100004A34(v33);
              }

              if (v22)
              {
                (*(*v22 + 88))(v22, 0);
              }

              if ((v23 & 1) == 0)
              {
                sub_100004A34(v21);
              }

              goto LABEL_51;
            }
          }

          else
          {
            v22 = 0;
          }

          std::mutex::unlock(v15);
          v21 = 0;
          v23 = 1;
          goto LABEL_45;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101770490();
    }

    goto LABEL_74;
  }

  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I profile not found in vinyl info", buf, 2u);
  }
}

void sub_100434D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  sub_100435110(&a31);
  a31 = v34 - 112;
  sub_1000B2AF8(&a31);
  sub_100004A34(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_100434E20(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v4 = (a1 + 48);
  sub_100034D1C(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t *CellularPlanSourceTransferModel::getAllUserPlanIccids@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = this;
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  v4 = this[22];
  v5 = this + 23;
  if (v4 != this + 23)
  {
    do
    {
      if ((*(v4 + 135) & 0x8000000000000000) != 0)
      {
        if (*(v4 + 120))
        {
LABEL_6:
          this = subscriber::isEsimCapable();
          if ((this & 1) == 0)
          {
            this = sub_100005BA0(a1, (v4 + 112), v4 + 112);
          }
        }
      }

      else if (*(v4 + 135))
      {
        goto LABEL_6;
      }

      v6 = *(v4 + 8);
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
          v7 = *(v4 + 16);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  v10 = v2[25];
  v9 = v2[26];
  while (v10 != v9)
  {
    if (*(v10 + 80) == 1)
    {
      v11 = *(v10 + 56);
      v12 = *(v10 + 64);
      while (v11 != v12)
      {
        if ((*(v11 + 39) & 0x8000000000000000) != 0)
        {
          if (!*(v11 + 24))
          {
            goto LABEL_25;
          }
        }

        else if (!*(v11 + 39))
        {
          goto LABEL_25;
        }

        if ((*(v11 + 89) & 1) == 0)
        {
          this = sub_100005BA0(a1, (v11 + 16), v11 + 16);
        }

LABEL_25:
        v11 += 216;
      }
    }

    v10 += 88;
  }

  return this;
}

void sub_100434FE8(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v6 = *v6;
    }

    v7 = 136315650;
    v8 = v6;
    v9 = 1024;
    v10 = a2;
    v11 = 2080;
    v12 = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I callback for deleting plan after transfer. iccid: [%s], result: [%d], error: [%s]", &v7, 0x1Cu);
  }
}

char *sub_1004350D0(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100005F2C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1004350FC(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t sub_100435110(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

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

    if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void CellularPlanSourceTransferModel::notifyTransferredPlansUpdate_sync(CellularPlanSourceTransferModel *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 11);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void CellularPlanSourceTransferModel::addTransferredPlan_sync(uint64_t a1, char *a2)
{
  v4 = *(a1 + 40);
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
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I move plan: %s from maybetransferred to transferred", buf, 0xCu);
  }

  v13 = 0;
  v6 = sub_100007A6C(a1 + 256, a2);
  if ((a1 + 264) == v6)
  {
    v6 = 0;
    v7 = 0;
    v13 = 0;
  }

  else
  {
    sub_1000194D8((a1 + 256), v6);
    v7 = 1;
  }

  v12 = v6;
  BYTE1(v13) = v7;
  sub_10043A4EC((a1 + 232), &v12, &v10);
  if (v11)
  {
    v14 = 0;
    *buf = &v14;
    buf[8] = 1;
    sub_10043A48C(buf, v11);
    v11 = 0;
  }

  sub_1004384A0(*(a1 + 72), a1 + 256, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"maybeTransferredPlans");
  sub_1004384A0(*(a1 + 72), a1 + 232, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredPlans");
  CellularPlanSourceTransferModel::notifyTransferredPlansUpdate_sync(a1);
  if (a2[23] < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    v9 = *(a2 + 2);
  }

  CellularPlanSourceTransferModel::maybeDeletePlanAfterTransfer(a1, __p);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (v12)
  {
    v14 = 0;
    *buf = &v14;
    buf[8] = 1;
    sub_10043A48C(buf, v12);
  }
}

void sub_100435410(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    *(v19 - 65) = 0;
    *(v19 - 64) = v19 - 65;
    *(v19 - 56) = 1;
    sub_10043A48C(v19 - 64, a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSourceTransferModel::deleteTransferredPlan_sync(uint64_t a1, char *a2)
{
  result = sub_10016FA58(a1 + 232, a2);
  if (result)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I remove transferred plan: %s", &v7, 0xCu);
    }

    sub_10043A5B8((a1 + 232), a2);
    return sub_1004384A0(*(a1 + 72), a1 + 232, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredPlans");
  }

  return result;
}

BOOL CellularPlanSourceTransferModel::maybeClearTransferredPlans_sync(CellularPlanSourceTransferModel *this)
{
  v2 = (this + 232);
  v3 = *(this + 29);
  v4 = (this + 240);
  if (v3 != (this + 240))
  {
    do
    {
      if (CellularPlanSourceTransferModel::hasIccid_sync(this, v3 + 4))
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
      }

      else
      {
        v6 = sub_10043A600(v2, v3);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  v8 = *(this + 9);

  return sub_1004384A0(v8, v2, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredPlans");
}

__int128 *CellularPlanSourceTransferModel::getTransferredPlanInfo_sync@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10016FA58(a1 + 232, a2);
  if (result)
  {
    result = sub_1000E20F0(a1 + 232, a2);
    v7 = result;
    if (*(result + 23) < 0)
    {
      result = sub_100005F2C(a3, *result, *(result + 1));
    }

    else
    {
      v8 = *result;
      *(a3 + 16) = *(result + 2);
      *a3 = v8;
    }

    if (*(v7 + 47) < 0)
    {
      result = sub_100005F2C((a3 + 24), *(v7 + 24), *(v7 + 32));
    }

    else
    {
      v10 = *(v7 + 24);
      *(a3 + 40) = *(v7 + 40);
      *(a3 + 24) = v10;
    }

    v11 = *(v7 + 48);
    *(a3 + 50) = *(v7 + 50);
    *(a3 + 48) = v11;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    *a3 = 0;
  }

  *(a3 + 56) = v9;
  return result;
}

void sub_1004356C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSourceTransferModel::getTransferredIccids_sync@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 232);
  v3 = (this + 240);
  if (v2 != (this + 240))
  {
    do
    {
      this = sub_100005308(a2, v2 + 2);
      v5 = *(v2 + 1);
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
          v6 = *(v2 + 2);
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  return this;
}

void sub_100435770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::setDeactivatedIccids_sync(uint64_t a1, char *a2)
{
  if (sub_10016FA58(a1 + 232, a2))
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Already marked as transferred", v5, 2u);
    }
  }

  else if (sub_10016FA58(a1 + 256, a2))
  {

    CellularPlanSourceTransferModel::addTransferredPlan_sync(a1, a2);
  }

  else
  {

    sub_100005BA0(a1 + 304, a2, a2);
  }
}

void CellularPlanSourceTransferModel::setTransferSession_sync(uint64_t a1, std::string *a2)
{
  if (!sub_10064B124((a1 + 352), a2))
  {
    sub_10064B0E4(a1 + 352);
    std::string::operator=((a1 + 352), a2);
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_10064B1B0(a1 + 352, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void CellularPlanSourceTransferModel::getSecureIntentLAContext_sync(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v6 = (a1 + 352);
  if (!*(a1 + 376))
  {
    sub_10043A64C();
  }

  if (!sub_10064B124(v6, a2))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 375) < 0)
      {
        v6 = *v6;
      }

      if (*(a2 + 23) >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      buf[0] = 136315394;
      *&buf[1] = v6;
      LOWORD(buf[3]) = 2080;
      *(&buf[3] + 2) = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Inconsistent transfer sessions, cached session (%s), transfer session (%s) to get secure intent LAContext", buf, 0x16u);
    }
  }

  v8 = *(a1 + 384);
  *a3 = *(a1 + 376);
  a3[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }
}

void CellularPlanSourceTransferModel::setSecureIntentDtoEvaluationStatus_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = (a1 + 352);
  if (sub_10064B124((a1 + 352), a2))
  {
    *(a1 + 393) = v3;
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064B1B0(v6, __p);
      if (v15 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", &v10, 0xCu);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 375) < 0)
      {
        v6 = *v6;
      }

      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      *__p = 136315650;
      *&__p[4] = v6;
      v13 = 2080;
      v14 = v4;
      v15 = 2080;
      v16 = asString();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Inconsistent transfer sessions, cached session (%s), transfer session (%s), dto status %s", __p, 0x20u);
    }
  }
}

uint64_t CellularPlanSourceTransferModel::getSecureIntentDtoEvaluationStatus_sync(uint64_t a1, void *a2)
{
  if (sub_10064B124((a1 + 352), a2))
  {
    return *(a1 + 393);
  }

  else
  {
    return 1;
  }
}

void CellularPlanSourceTransferModel::setUserConsentState_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = (a1 + 352);
  if (sub_10064B124((a1 + 352), a2))
  {
    *(a1 + 392) = v3;
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064B1B0(v6, __p);
      if (v15 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", &v10, 0xCu);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 375) < 0)
      {
        v6 = *v6;
      }

      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      *__p = 136315650;
      *&__p[4] = v6;
      v13 = 2080;
      v14 = v4;
      v15 = 2080;
      v16 = sub_100649BB4(v3);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Inconsistent transfer sessions, cached session (%s), transfer session (%s), user consent state %s", __p, 0x20u);
    }
  }
}

uint64_t CellularPlanSourceTransferModel::getUserConsentState_sync(uint64_t a1, void *a2)
{
  if (sub_10064B124((a1 + 352), a2))
  {
    return *(a1 + 392);
  }

  else
  {
    return 4;
  }
}

void CellularPlanSourceTransferModel::setTransferProxCardComplete_sync(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = a2;
  v6 = (a1 + 352);
  if (sub_10064B124((a1 + 352), a2))
  {
    *(a1 + 394) = a3;
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064B1B0(v6, __p);
      if (v15 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v10 = 136315138;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", &v10, 0xCu);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 375) < 0)
      {
        v6 = *v6;
      }

      if (*(v4 + 23) < 0)
      {
        v4 = *v4;
      }

      *__p = 136315650;
      *&__p[4] = v6;
      v13 = 2080;
      v14 = v4;
      v15 = 2080;
      v16 = asString(a3);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Inconsistent transfer sessions, cached session (%s), transfer session (%s), prox status %s", __p, 0x20u);
    }
  }
}

uint64_t CellularPlanSourceTransferModel::getTransferProxCardComplete_sync(uint64_t a1, void *a2)
{
  if (sub_10064B124((a1 + 352), a2))
  {
    v3 = *(a1 + 394);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void CellularPlanSourceTransferModel::setSelectedTransferPlansCount_sync(uint64_t a1, uint64_t *a2, int a3)
{
  v6 = (a1 + 352);
  if (sub_10064B124((a1 + 352), a2))
  {
    *(a1 + 396) = a3;
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064B1B0(v6, __p);
      if (v16 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__p;
      }

      v11 = 136315138;
      v12 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", &v11, 0xCu);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if (*(a1 + 375) < 0)
      {
        v6 = *v6;
      }

      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      *__p = 136315650;
      *&__p[4] = v6;
      v14 = 2080;
      v15 = v10;
      v16 = 1024;
      v17 = a3;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Inconsistent transfer sessions, cached session (%s), transfer session (%s), selected transfer plans count %d", __p, 0x1Cu);
    }
  }
}

void CellularPlanSourceTransferModel::dumpState_sync(CellularPlanSourceTransferModel *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 29);
    v4 = this + 240;
    v36 = ",";
    v37 = 1;
    memset(&v38, 0, sizeof(v38));
    if (v3 != (this + 240))
    {
      if (*(v3 + 55) < 0)
      {
        sub_100005F2C(&__p, v3[4], v3[5]);
      }

      else
      {
        __p = *(v3 + 4);
      }

      v5 = v3[1];
      v38 = __p;
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

      if (v6 != v4)
      {
        do
        {
          sub_100074CFC(&v36, &__p);
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

          std::string::append(&v38, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (*(v6 + 55) < 0)
          {
            sub_100005F2C(&__p, v6[4], v6[5]);
          }

          else
          {
            __p = *(v6 + 4);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = &__p;
          }

          else
          {
            v10 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v11 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v38, v10, v11);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v12 = v6[1];
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
              v13 = v6[2];
              v7 = *v13 == v6;
              v6 = v13;
            }

            while (!v7);
          }

          v6 = v13;
        }

        while (v13 != v4);
      }
    }

    v14 = &v38;
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v38.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Transferred iccids : [%s]", &__p, 0xCu);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(this + 32);
    v16 = this + 264;
    v36 = ",";
    v37 = 1;
    memset(&v38, 0, sizeof(v38));
    if (v15 != (this + 264))
    {
      if (*(v15 + 55) < 0)
      {
        sub_100005F2C(&__p, v15[4], v15[5]);
      }

      else
      {
        __p = *(v15 + 4);
      }

      v17 = v15[1];
      v38 = __p;
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
          v18 = v15[2];
          v7 = *v18 == v15;
          v15 = v18;
        }

        while (!v7);
      }

      if (v18 != v16)
      {
        do
        {
          sub_100074CFC(&v36, &__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &__p;
          }

          else
          {
            v19 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v20 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v38, v19, v20);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (*(v18 + 55) < 0)
          {
            sub_100005F2C(&__p, v18[4], v18[5]);
          }

          else
          {
            __p = *(v18 + 4);
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &__p;
          }

          else
          {
            v21 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v22 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v38, v21, v22);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v23 = v18[1];
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
              v24 = v18[2];
              v7 = *v24 == v18;
              v18 = v24;
            }

            while (!v7);
          }

          v18 = v24;
        }

        while (v24 != v16);
      }
    }

    v25 = &v38;
    if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v25 = v38.__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v25;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Maybe transferred iccids : [%s]", &__p, 0xCu);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(this + 37);
    LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
    *(__p.__r_.__value_.__r.__words + 4) = v26;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Transferred back pairs map size: %lu", &__p, 0xCu);
  }

  v27 = *(this + 35);
  if (v27 != (this + 288))
  {
    do
    {
      v28 = *(this + 5);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = (v27 + 32);
        if (*(v27 + 55) < 0)
        {
          v29 = *v29;
        }

        v30 = (v27 + 56);
        if (*(v27 + 79) < 0)
        {
          v30 = *v30;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v29;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v30;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I  from: [%s] to: [%s] ", &__p, 0x16u);
      }

      v31 = *(v27 + 1);
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = *(v27 + 2);
          v7 = *v32 == v27;
          v27 = v32;
        }

        while (!v7);
      }

      v27 = v32;
    }

    while (v32 != (this + 288));
  }

  v33 = *(this + 5);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    sub_100074B94(*(this + 38), this + 13, ",", 1, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v34 = &__p;
    }

    else
    {
      v34 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v38.__r_.__value_.__l.__data_) = 136315138;
    *(v38.__r_.__value_.__r.__words + 4) = v34;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Deactivated ICCIDs [%s]", &v38, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v33 = *(this + 5);
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    sub_10064B1B0(this + 352, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &__p;
    }

    else
    {
      v35 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v38.__r_.__value_.__l.__data_) = 136315138;
    *(v38.__r_.__value_.__r.__words + 4) = v35;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Transfer session info %s", &v38, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1004367AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanSourceTransferModel::activateCrossPlatformTransport_sync(void *a1, uint64_t a2)
{
  v4 = a1[15];
  if (v4 && (*(*v4 + 40))(v4))
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_1017704C4();
    }

    return sub_10025BA88(a2, 269);
  }

  else
  {
    v6 = a1[3];
    object = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    v7 = a1[8];
    v10 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1009C0B00(1, &v12);
    v8 = v12;
    v12 = 0uLL;
    v9 = a1[16];
    *(a1 + 15) = v8;
    if (v9)
    {
      sub_100004A34(v9);
      if (*(&v12 + 1))
      {
        sub_100004A34(*(&v12 + 1));
      }
    }

    if (v10)
    {
      sub_100004A34(v10);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (a1[15])
    {
      sub_10043A78C(v13, a2);
      v14 = 0;
      operator new();
    }

    return sub_10025BA88(a2, 260);
  }
}

void sub_1004369E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10028ED7C(v15 - 56);
  sub_10039D5CC(va);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanSourceTransferModel::deactivateCrossPlatformTransport_sync(void *a1, uint64_t a2)
{
  v3 = a1[15];
  if (v3)
  {
    v5 = a1[5];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I deactivate cross platform transfer", v8, 2u);
      v3 = a1[15];
    }

    (*(*v3 + 24))(v3, 1);
    v6 = a1[16];
    a1[15] = 0;
    a1[16] = 0;
    if (v6)
    {
      sub_100004A34(v6);
    }

    return sub_10025BA88(a2, 0);
  }

  else
  {

    return sub_10025BA88(a2, 260);
  }
}

uint64_t CellularPlanSourceTransferModel::connectCrossPlatformTransportWithCode_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    (*(*v4 + 48))(v4, a2);
    v5 = 0;
  }

  else
  {
    v5 = 260;
  }

  return sub_10025BA88(a3, v5);
}

uint64_t CellularPlanSourceTransferModel::getMessageSessionWrapper_sync@<X0>(CellularPlanSourceTransferModel *this@<X0>, void *a2@<X8>)
{
  result = *(this + 15);
  if (result)
  {
    return (*(*result + 32))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void CellularPlanSourceTransferModel::sessionInvalidated(CellularPlanSourceTransferModel *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

BOOL sub_100436CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 8))
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1017703C0();
    return 0;
  }

  if (!a4)
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1017704F8();
    return 0;
  }

  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  codec::encode<std::map<std::string,std::string>>(v13, a2);
  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(v10, v13[0], v13[1]);
  }

  else
  {
    *v10 = *v13;
    v11 = v14;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_100005F2C(__dst, v10[0], v10[1]);
  }

  else
  {
    *__dst = *v10;
    v17 = v11;
  }

  v15 = 0;
  if (SHIBYTE(v17) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v19 = v17;
  }

  v20 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v15;
    v15 = v20;
    v21 = v8;
    sub_100005978(&v21);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v15;
  v12 = v15;
  v15 = 0;
  sub_100005978(&v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), a4, v9, a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(a1 + 8) + 48))(*(a1 + 8), a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return 1;
}

void sub_100436EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::maybeDeleteTransferBackPlan_sync(CellularPlanSourceTransferModel *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(this + 11))
    {
      memset(&v20, 0, sizeof(v20));
      v4 = *(this + 35);
      if (v4 != (this + 288))
      {
        while (!sub_10016FA58(this + 232, v4 + 32))
        {
          v5 = *(v4 + 1);
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
              v6 = *(v4 + 2);
              v7 = *v6 == v4;
              v4 = v6;
            }

            while (!v7);
          }

          v4 = v6;
          if (v6 == (this + 288))
          {
            goto LABEL_17;
          }
        }

        std::string::operator=(&v20, (v4 + 32));
      }

LABEL_17:
      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        if (!v20.__r_.__value_.__l.__size_)
        {
LABEL_51:
          if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v20.__r_.__value_.__l.__data_);
          }

          goto LABEL_53;
        }

        v8 = *(this + 22);
        sub_100005F2C(&__p, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
      }

      else
      {
        if (!*(&v20.__r_.__value_.__s + 23))
        {
          goto LABEL_53;
        }

        v8 = *(this + 22);
        __p = v20;
      }

      v9 = this + 184;
      v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (v8 != this + 184)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v13 = v8[135];
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v8 + 15);
          }

          if (v13 == size)
          {
            v15 = v14 >= 0 ? v8 + 112 : *(v8 + 14);
            if (!memcmp(v15, p_p, size))
            {
              break;
            }
          }

          v16 = *(v8 + 1);
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
              v17 = *(v8 + 2);
              v7 = *v17 == v8;
              v8 = v17;
            }

            while (!v7);
          }

          v8 = v17;
          if (v17 == v9)
          {
            v8 = this + 184;
            break;
          }
        }
      }

      if (v10 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v8 == v9 || (subscriber::isEsimCapable() & 1) != 0)
      {
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v18, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
        }

        else
        {
          v18 = v20;
        }

        v21 = 0;
        operator new();
      }

      goto LABEL_51;
    }
  }

  else
  {
    v3 = 0;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_10177052C();
  }

LABEL_53:
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10043726C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v26);
  _Unwind_Resume(a1);
}

void CellularPlanSourceTransferModel::handleGenericTransferPayloadRequest_sync(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v14 = sub_100649C38(9);
  v15 = strlen(v14);
  v16 = v15;
  v17 = *(a6 + 23);
  if (v17 < 0)
  {
    if (v15 != a6[1])
    {
      v19 = a1[5];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        return;
      }

LABEL_13:
      a6 = *a6;
LABEL_14:
      *buf = 136446210;
      *&buf[4] = a6;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "unhandled message type : %{public}s", buf, 0xCu);
      return;
    }

    if (v15 == -1)
    {
      sub_10013C334();
    }

    v18 = *a6;
LABEL_8:
    if (memcmp(v18, v14, v16))
    {
      v19 = a1[5];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v31 = 0;
    v32 = 0;
    __p = 0;
    sub_100034C50(&__p, *a7, *(a7 + 8), *(a7 + 8) - *a7);
    *buf = 0u;
    *v39 = 0u;
    PB::Reader::Reader(buf, __p, v31 - __p);
    memset(v36, 0, sizeof(v36));
    sub_1009CEC2C(v36);
    if (sub_1009CEF9C(v36, buf))
    {
      sub_1009CEF0C(&v33, v36);
      v20 = 1;
    }

    else
    {
      v20 = 0;
      LOBYTE(v33) = 0;
    }

    LOBYTE(v35) = v20;
    sub_1009CECC8(v36);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }

    if (v35 != 1 || !v34)
    {
      goto LABEL_39;
    }

    v21 = *(v34 + 23);
    if (v21 < 0)
    {
      if (!*(v34 + 8))
      {
        goto LABEL_39;
      }
    }

    else if (!*(v34 + 23))
    {
      goto LABEL_39;
    }

    if (v21 >= 0)
    {
      v22 = *(v34 + 23);
    }

    else
    {
      v22 = *(v34 + 8);
    }

    v23 = *(a3 + 23);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(a3 + 8);
    }

    if (v22 == v23)
    {
      v25 = v21 >= 0 ? v34 : *v34;
      v26 = v24 >= 0 ? a3 : *a3;
      if (!memcmp(v25, v26, v22))
      {
        v44 = 0;
        *v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        *v41 = 0u;
        memset(v39, 0, sizeof(v39));
        *buf = 0u;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(buf, *a2, *(a2 + 8));
          LOBYTE(v24) = *(a3 + 23);
        }

        else
        {
          *buf = *a2;
          v39[0] = *(a2 + 16);
        }

        if ((v24 & 0x80) != 0)
        {
          sub_100005F2C(&v39[1], *a3, *(a3 + 8));
        }

        else
        {
          *&v39[1] = *a3;
          v39[3] = *(a3 + 16);
        }

        *&v40 = a4;
        *(&v40 + 1) = a5;
        *v41 = 0u;
        *v42 = 0u;
        v43 = 0u;
        LOBYTE(v44) = 0;
        *&v36[0] = a3;
        v27 = sub_10043ABB8(a1 + 41, a3, &unk_101802C98, v36, &v37);
        std::string::operator=((v27 + 7), buf);
        std::string::operator=((v27 + 10), &v39[1]);
        *(v27 + 13) = v40;
        std::string::operator=(v27 + 5, v41);
        if (v27 + 7 != buf)
        {
          sub_1001122C4(v27 + 18, v42[1], v43, v43 - v42[1]);
        }

        *(v27 + 168) = v44;
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(v28, *a3, *(a3 + 8));
        }

        else
        {
          *v28 = *a3;
          v29 = *(a3 + 16);
        }

        ((*a1)[28])(a1, v28);
        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28[0]);
        }

        if (v42[1])
        {
          *&v43 = v42[1];
          operator delete(v42[1]);
        }

        if (SHIBYTE(v42[0]) < 0)
        {
          operator delete(v41[0]);
        }

        if (SHIBYTE(v39[3]) < 0)
        {
          operator delete(v39[1]);
        }

        if (SHIBYTE(v39[0]) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_41;
      }
    }

LABEL_39:
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101770560();
    }

LABEL_41:
    if (v35 == 1)
    {
      sub_1009CECC8(&v33);
    }

    return;
  }

  v18 = a6;
  if (v16 == v17)
  {
    goto LABEL_8;
  }

  v19 = a1[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_14;
  }
}

void sub_100437710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    sub_1009CECC8(&a18);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanSourceTransferModel::handleDeleteProfileRequest_sync(uint64_t a1, void **a2)
{
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a2;
    if (*(a2 + 23) < 0)
    {
      v6 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I received request to delete profile with iccid: %s", buf, 0xCu);
  }

  if (sIsProfileInstalled())
  {
    v7 = *(a1 + 96);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(a1 + 88);
        if (v9)
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v10 = *(a1 + 176);
          if (v10 != (a1 + 184))
          {
            do
            {
              *__p = 0u;
              v51 = 0u;
              v48 = 0u;
              *v49 = 0u;
              *v46 = 0u;
              *v47 = 0u;
              *v44 = 0u;
              v45 = 0u;
              *v42 = 0u;
              *v43 = 0u;
              *buf = 0u;
              *buf = *(v10 + 8);
              sub_100032BFC(&buf[8], (v10 + 5));
              v11 = v38;
              if (v38 >= v39)
              {
                v12 = sub_100438918(&v37, &buf[8]);
              }

              else
              {
                sub_100032BFC(v38, &buf[8]);
                v12 = v11 + 168;
              }

              v38 = v12;
              if (SHIBYTE(v51) < 0)
              {
                operator delete(__p[1]);
              }

              if (SHIBYTE(__p[0]) < 0)
              {
                operator delete(v49[0]);
              }

              if (SHIBYTE(v48) < 0)
              {
                operator delete(v47[1]);
              }

              if (SHIBYTE(v47[0]) < 0)
              {
                operator delete(v46[0]);
              }

              v34 = v44;
              sub_100034D1C(&v34);
              if (v42[1])
              {
                v43[0] = v42[1];
                operator delete(v42[1]);
              }

              v13 = v10[1];
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
                  v14 = v10[2];
                  v15 = *v14 == v10;
                  v10 = v14;
                }

                while (!v15);
              }

              v10 = v14;
            }

            while (v14 != (a1 + 184));
          }

          v49[0] = 0;
          *v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          *v46 = 0u;
          *v43 = 0u;
          *v44 = 0u;
          *buf = 0u;
          *v42 = 0u;
          (*(*v9 + 48))(&v34, v9);
          sub_100931FDC(buf, v5, a2, a1 + 200, &v37, &v34);
          sub_10016A798(&v34, v35);
          if ((v49[0] & 1) == 0)
          {
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
            {
              sub_10177045C();
            }

            goto LABEL_68;
          }

          if (((*(**(a1 + 56) + 1024))(*(a1 + 56), v43, &v44[1], v46, &v47[1], a2) & 1) == 0)
          {
            if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
            {
              sub_101770594();
            }

            goto LABEL_68;
          }

          CellularPlanSourceTransferModel::getAllUserPlanIccids(&v34, a1);
          v16 = v36;
          sub_100009970(&v34, v35);
          if (v16 != 1)
          {
LABEL_58:
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(__dst, *a2, a2[1]);
              v28 = *(a2 + 23) < 0;
            }

            else
            {
              v28 = 0;
              *__dst = *a2;
              v33 = a2[2];
            }

            v29[0] = _NSConcreteStackBlock;
            v29[1] = 1174405120;
            v29[2] = sub_100437EA8;
            v29[3] = &unk_101E4C7B8;
            v29[4] = a1;
            if (v28)
            {
              sub_100005F2C(&v30, *a2, a2[1]);
            }

            else
            {
              v30 = *a2;
              v31 = a2[2];
            }

            (*(*v9 + 40))(v9, __dst, v29);
            if (SHIBYTE(v33) < 0)
            {
              operator delete(__dst[0]);
            }

            if (SHIBYTE(v31) < 0)
            {
              operator delete(v30);
            }

LABEL_68:
            if (LOBYTE(v49[0]) == 1)
            {
              if (SHIBYTE(v48) < 0)
              {
                operator delete(v47[1]);
              }

              if (SHIBYTE(v47[0]) < 0)
              {
                operator delete(v46[0]);
              }

              if (SHIBYTE(v45) < 0)
              {
                operator delete(v44[1]);
              }

              if (SHIBYTE(v44[0]) < 0)
              {
                operator delete(v43[0]);
              }

              if (LOBYTE(v42[1]) == 1 && SHIBYTE(v42[0]) < 0)
              {
                operator delete(*buf);
              }
            }

            *buf = &v37;
            sub_1000B2AF8(buf);
LABEL_44:
            sub_100004A34(v8);
            return;
          }

          (***(a1 + 56))(&v34);
          ServiceMap = Registry::getServiceMap(v34);
          v18 = ServiceMap;
          if ((v19 & 0x8000000000000000) != 0)
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
          v40 = v19;
          v23 = sub_100009510(&v18[1].__m_.__sig, &v40);
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
LABEL_52:
              if (v35)
              {
                sub_100004A34(v35);
              }

              if (v25)
              {
                (*(*v25 + 88))(v25, 0);
              }

              if ((v26 & 1) == 0)
              {
                sub_100004A34(v24);
              }

              goto LABEL_58;
            }
          }

          else
          {
            v25 = 0;
          }

          std::mutex::unlock(v18);
          v24 = 0;
          v26 = 1;
          goto LABEL_52;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_101770490();
    }

    if (v8)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v27 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I profile not found in vinyl info", buf, 2u);
    }
  }
}

void sub_100437DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char *a33)
{
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v35);
  }

  sub_100435110(&a33);
  a33 = &a29;
  sub_1000B2AF8(&a33);
  sub_100004A34(v33);
  _Unwind_Resume(a1);
}

void sub_100437EA8(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v6 = *v6;
    }

    v7 = 136315650;
    v8 = v6;
    v9 = 1024;
    v10 = a2;
    v11 = 2080;
    v12 = asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I callback for deleting plan being transferred. iccid: [%s], result: [%d], error: [%s]", &v7, 0x1Cu);
  }
}

void CellularPlanSourceTransferModel::maybeRecheckEntitlement_sync(uint64_t a1, uint64_t a2)
{
  if (sub_10016FA58(a1 + 256, a2) && (*(sub_1000E20F0(a1 + 256, a2) + 50) & 1) == 0)
  {
    v4 = *(a1 + 176);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v26 = *(a2 + 16);
    }

    v5 = (a1 + 184);
    if (v4 != (a1 + 184))
    {
      while (1)
      {
        v6 = *(v4 + 135);
        if (v6 >= 0)
        {
          v7 = *(v4 + 135);
        }

        else
        {
          v7 = v4[15];
        }

        v8 = HIBYTE(v26);
        if (v26 < 0)
        {
          v8 = __p[1];
        }

        if (v7 == v8)
        {
          v9 = v6 >= 0 ? v4 + 14 : v4[14];
          v10 = v26 >= 0 ? __p : __p[0];
          if (!memcmp(v9, v10, v7) && (subscriber::isSimReady() & 1) != 0)
          {
            break;
          }
        }

        v11 = v4[1];
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
            v12 = v4[2];
            v13 = *v12 == v4;
            v4 = v12;
          }

          while (!v13);
        }

        v4 = v12;
        if (v12 == v5)
        {
          v4 = (a1 + 184);
          break;
        }
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    if (v4 != v5)
    {
      *buf = a2;
      *(sub_10043BB1C((a1 + 256), a2, &unk_101802C98, buf, &v17) + 106) = 1;
      v14 = *(a1 + 40);
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

        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I schedule force entitlement check for %s", buf, 0xCu);
      }

      (***(a1 + 56))(&v23);
      Registry::getTimerService(&v24, v23);
      sub_10000501C(v21, "force.entitlement.check");
      *&v17 = a1;
      sub_100004AA0(buf, (a1 + 8));
      v16 = *&buf[8];
      *(&v17 + 1) = *buf;
      v18 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
      }

      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v19, *a2, *(a2 + 8));
      }

      else
      {
        *v19 = *a2;
        v20 = *(a2 + 16);
      }

      *v27 = *v21;
      v28 = v22;
      v21[0] = 0;
      v21[1] = 0;
      v22 = 0;
      *buf = v17;
      v30 = v18;
      *(&v17 + 1) = 0;
      v18 = 0;
      if (SHIBYTE(v20) < 0)
      {
        sub_100005F2C(&v31, v19[0], v19[1]);
      }

      else
      {
        v31 = *v19;
        v32 = v20;
      }

      v33 = 0;
      operator new();
    }
  }
}

void sub_1004383C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  v41 = v38[3];
  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  operator delete(v38);
  sub_100260030(v39 - 144);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_100260030(&a9);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1004384A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 8))
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1017703C0();
    return 0;
  }

  if (!a4)
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1017704F8();
    return 0;
  }

  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  sub_100737C00(v13, a2);
  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(v10, v13[0], v13[1]);
  }

  else
  {
    *v10 = *v13;
    v11 = v14;
  }

  if (SHIBYTE(v11) < 0)
  {
    sub_100005F2C(__dst, v10[0], v10[1]);
  }

  else
  {
    *__dst = *v10;
    v17 = v11;
  }

  v15 = 0;
  if (SHIBYTE(v17) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v19 = v17;
  }

  v20 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v15;
    v15 = v20;
    v21 = v8;
    sub_100005978(&v21);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  v9 = v15;
  v12 = v15;
  v15 = 0;
  sub_100005978(&v15);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), a4, v9, a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(a1 + 8) + 48))(*(a1 + 8), a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  return 1;
}

void sub_1004386E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

void sub_100438764(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 8);
  if (v5)
  {
    (*(*v5 + 48))(v5, a2, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v8 = 0;
    (*(**(a1 + 8) + 40))(&v9);
    sub_100060DE8(&v8, &v9);
    sub_10000A1EC(&v9);
    if (v8)
    {
      v9 = 0uLL;
      v10 = 0;
      ctu::cf::assign();
      *__p = v9;
      v7 = v10;
      sub_100737B48(__p);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *a3 = 0;
      a3[24] = 0;
    }

    sub_100005978(&v8);
  }

  else
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_1017703C0();
    }

    *a3 = 0;
    a3[24] = 0;
  }
}

void sub_1004388CC(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100438918(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_1000CE3D4();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1000B2200(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  sub_100032BFC(168 * v2, a2);
  v15 = 168 * v2 + 168;
  v7 = a1[1];
  v8 = 168 * v2 + *a1 - v7;
  sub_10010A9B4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10010AB74(&v13);
  return v12;
}

void sub_100438A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10010AB74(va);
  _Unwind_Resume(a1);
}

void sub_100438AE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1017705C8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100438AFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100438B34(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100438B64(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100438BA4(void (******a1)(Registry **__return_ptr))
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  CellularPlanSourceTransferModel::init_sync(*v1);
}

void sub_100438BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_100438C78(void *a1, void *a2, const ctu::OsLogLogger **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4CA30;
  ctu::OsLogLogger::OsLogLogger((a1 + 3), *a3);
  v5 = a2[1];
  a1[4] = *a2;
  a1[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_100438D14(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4CA30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100438D74(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100438D74(a1, *a2);
    sub_100438D74(a1, a2[1]);
    sub_10027CB9C(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_100438DE0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100438DE0(a1, *a2);
    sub_100438DE0(a1, *(a2 + 1));
    v4 = *(a2 + 18);
    if (v4)
    {
      *(a2 + 19) = v4;
      operator delete(v4);
    }

    if (a2[143] < 0)
    {
      operator delete(*(a2 + 15));
    }

    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_100438EF4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4CA80;
  a2[1] = v2;
  return result;
}

void sub_100438F20(uint64_t a1, xpc_object_t *a2)
{
  v2 = *(a1 + 8);
  v5[0] = 0;
  v5[1] = 0;
  v4 = v5;
  sub_10032C208(&v4, a2);
  sub_100288F04(v3, &v4);
  sub_100439008(v2, v3);
  sub_100077CD4(v3, v3[1]);
  sub_100077CD4(&v4, v5[0]);
}

void sub_100438F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_100077CD4(&a9, a10);
  sub_100077CD4(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_100438FBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100439008(uint64_t result, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = result;
    while ((*(v3 + 63) & 0x8000000000000000) == 0)
    {
      if (*(v3 + 63))
      {
        goto LABEL_5;
      }

LABEL_6:
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
        return result;
      }
    }

    if (!v3[6])
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_100005BA0(v4, v3 + 5, (v3 + 5));
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100439114(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4CB00;
  a2[1] = v2;
  return result;
}

uint64_t sub_100439148(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100439204(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E4CB80;
  a2[1] = v2;
  return result;
}

uint64_t sub_100439238(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100439284(std::string **a1, xpc_object_t *a2)
{
  v2 = *a1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_10010A62C(&v4, a2);
  memset(v3, 0, sizeof(v3));
  sub_1000B2128(v3, v4, v5, 0xCF3CF3CF3CF3CF3DLL * ((v5 - v4) >> 3));
  sub_100D21B04(v2, v3);
  v7 = v3;
  sub_1000B2AF8(&v7);
  v7 = &v4;
  sub_1000B2AF8(&v7);
}

void sub_100439318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  sub_1000B2AF8((v14 - 24));
  *(v14 - 24) = &a13;
  sub_1000B2AF8((v14 - 24));
  _Unwind_Resume(a1);
}

void sub_100439424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1004394D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4CC00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10043950C(void *a1)
{
  v9 = 0;
  v7 = 0u;
  *__p = 0u;
  *v5 = 0u;
  *v6 = 0u;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[1]);
  }

  if (SHIBYTE(v6[0]) < 0)
  {
    operator delete(v5[0]);
  }
}

uint64_t sub_1004395DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100439628(void *a1)
{
  *a1 = off_101E4CC80;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100439674(void *a1)
{
  *a1 = off_101E4CC80;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100439754(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4CC80;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100439794(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004397A4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

const void **sub_1004397E4(void *a1, __int128 *a2, CFTypeRef *a3, uint64_t a4)
{
  cf[0] = *a3;
  *a3 = 0;
  sub_1000636AC(v14, a4);
  v6 = a1[1];
  v12 = 0;
  if (!v15)
  {
    sub_100022DB4();
  }

  (*(*v15 + 48))(v15, &v12);
  sub_10001021C(&v12);
  v7 = a1[3];
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8 && a1[2])
    {
      cf[1] = v6;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__p, *a2, *(a2 + 1));
      }

      else
      {
        *__p = *a2;
        __p[2] = *(a2 + 2);
      }

      __p[3] = cf[0];
      if (cf[0])
      {
        CFRetain(cf[0]);
      }

      v13[0] = 0;
      v13[1] = 0;
      sub_100004AA0(v13, v6 + 1);
      operator new();
    }
  }

  else
  {
    v8 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1017705EC();
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_10006372C(v14);
  return sub_10001021C(cf);
}

void sub_100439A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_100004A34(v19);
  sub_10006372C(va);
  sub_10001021C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100439A90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100439ADC(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    v5 = *(v1 + 32);
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
    *(buf[0].__r_.__value_.__r.__words + 4) = v4;
    WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2112;
    *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received: [%s], payload: [%@]", buf, 0x16u);
  }

  v6 = sub_100649C38(2);
  v7 = (v1 + 8);
  v8 = strlen(v6);
  v9 = *(v1 + 31);
  if (v9 < 0)
  {
    if (v8 != *(v1 + 16))
    {
      goto LABEL_62;
    }

    if (v8 == -1)
    {
      sub_10013C334();
    }

    v7 = *v7;
  }

  else if (v8 != v9)
  {
    goto LABEL_62;
  }

  if (!memcmp(v7, v6, v8))
  {
    CFDictionaryGetValue(*(v1 + 32), @"kSourceIccid");
    memset(buf, 0, 24);
    ctu::cf::assign();
    size = buf[0].__r_.__value_.__l.__size_;
    __src = buf[0].__r_.__value_.__r.__words[0];
    v27[0] = buf[0].__r_.__value_.__r.__words[2];
    *(v27 + 3) = *(&buf[0].__r_.__value_.__r.__words[2] + 3);
    v11 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    CFDictionaryGetValue(*(v1 + 32), @"kTargetEid");
    memset(buf, 0, 24);
    ctu::cf::assign();
    v12 = buf[0].__r_.__value_.__l.__size_;
    v19 = buf[0].__r_.__value_.__r.__words[0];
    v26[0] = buf[0].__r_.__value_.__r.__words[2];
    *(v26 + 3) = *(&buf[0].__r_.__value_.__r.__words[2] + 3);
    v13 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    CFDictionaryGetValue(*(v1 + 32), @"kTargetName");
    memset(buf, 0, 24);
    ctu::cf::assign();
    v14 = *&buf[0].__r_.__value_.__l.__data_;
    v25[0] = buf[0].__r_.__value_.__r.__words[2];
    *(v25 + 3) = *(&buf[0].__r_.__value_.__r.__words[2] + 3);
    v15 = SHIBYTE(buf[0].__r_.__value_.__r.__words[2]);
    v16 = *(v2 + 168);
    memset(&v24, 0, sizeof(v24));
    if (v16)
    {
      std::string::operator=(&v24, (*(v2 + 152) + 32));
    }

    else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177066C();
    }

    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    memset(buf, 0, sizeof(buf));
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf[1], v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      buf[1] = v24;
    }

    v45 = 0uLL;
    *&v46 = 0;
    if (v11 < 0)
    {
      sub_100005F2C(&v46 + 8, __src, size);
    }

    else
    {
      *(&v46 + 1) = __src;
      *&v47 = size;
      DWORD2(v47) = v27[0];
      *(&v47 + 11) = *(v27 + 3);
      HIBYTE(v47) = v11;
    }

    v48 = 0uLL;
    *&v49 = 0;
    if (v13 < 0)
    {
      sub_100005F2C(&v49 + 8, v19, v12);
    }

    else
    {
      *(&v49 + 1) = v19;
      *&v50 = v12;
      DWORD2(v50) = v26[0];
      *(&v50 + 11) = *(v26 + 3);
      HIBYTE(v50) = v13;
    }

    LODWORD(__dst[0]) = 2;
    __dst[1] = 0;
    if (v15 < 0)
    {
      sub_100005F2C(&v30, v14, *(&v14 + 1));
    }

    else
    {
      v30 = v14;
      LODWORD(v31) = v25[0];
      *(&v31 + 3) = *(v25 + 3);
      HIBYTE(v31) = v15;
    }

    v51 = *__dst;
    v52 = v30;
    *&v53 = v31;
    BYTE8(v53) = 0;
    LOBYTE(v54) = 1;
    sub_10028ABF0(__dst, buf);
    memset(v23, 0, sizeof(v23));
    sub_10043A1BC(v23, __dst, buf, 1uLL);
    CellularPlanSourceTransferModel::recalculateTransferredPlans_sync(v2, v23, v17);
    v28 = v23;
    sub_10027B2AC(&v28);
    if (v43 == 1 && v42 < 0)
    {
      operator delete(__p);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (v36 < 0)
    {
      operator delete(v35);
    }

    if (v34 < 0)
    {
      operator delete(v33);
    }

    if (v32 < 0)
    {
      operator delete(*(&v30 + 1));
    }

    if (SBYTE7(v30) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v54 == 1 && SBYTE7(v53) < 0)
    {
      operator delete(v52);
    }

    if (SHIBYTE(v50) < 0)
    {
      operator delete(*(&v49 + 1));
    }

    if (SBYTE7(v49) < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(v47) < 0)
    {
      operator delete(*(&v46 + 1));
    }

    if (SBYTE7(v46) < 0)
    {
      operator delete(v45);
    }

    if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
      if ((v15 & 0x80000000) == 0)
      {
LABEL_60:
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_65;
      }
    }

    else if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

    operator delete(v14);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_61:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_62;
      }

LABEL_66:
      operator delete(__src);
      goto LABEL_62;
    }

LABEL_65:
    operator delete(v19);
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_66;
  }

LABEL_62:
  sub_10043A15C(&v22);
  return sub_1000049E0(&v21);
}

uint64_t *sub_10043A15C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10001021C((v1 + 32));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10043A1BC(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_10028AB1C(result, a4);
  }

  return result;
}

void sub_10043A224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10027B2AC(&a9);
  _Unwind_Resume(a1);
}

char *sub_10043A244(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10028ABF0(__dst, v6);
      v6 = (v6 + 200);
      __dst += 200;
      v7 -= 200;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_10043A2A4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 200;
    do
    {
      v4 = sub_10027B330(v4) - 200;
      v2 += 200;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10043A2C8(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  result = *sub_100005C2C(a1, &v5, a2);
  if (!result)
  {
    sub_10043A35C();
  }

  return result;
}

void sub_10043A3DC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10043A48C(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_10043A3F8(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  v6 = *a3;
  *(__dst + 5) = *(a3 + 2);
  *(__dst + 24) = v6;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v7 = *(a3 + 24);
  *(__dst + 8) = *(a3 + 5);
  *(__dst + 3) = v7;
  *(a3 + 4) = 0;
  *(a3 + 5) = 0;
  *(a3 + 3) = 0;
  v8 = *(a3 + 24);
  __dst[74] = *(a3 + 50);
  *(__dst + 36) = v8;
  return __dst;
}

void sub_10043A48C(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_10027CB9C(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t **sub_10043A4EC@<X0>(uint64_t **result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result;
  v5 = *a2;
  if (!*a2)
  {
    *a3 = result + 1;
    *(a3 + 8) = 0;
LABEL_9:
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    return result;
  }

  v8 = 0;
  result = sub_100005C2C(result, &v8, (v5 + 32));
  if (!*result)
  {
    result = sub_1000070DC(v3, v8, result, v5);
    *a2 = 0;
    if (*(a2 + 9) == 1)
    {
      *(a2 + 9) = 0;
    }

    *a3 = v5;
    *(a3 + 8) = 1;
    goto LABEL_9;
  }

  *a3 = *result;
  *(a3 + 8) = 0;
  *(a3 + 16) = *a2;
  v7 = *(a2 + 4);
  *(a3 + 24) = v7;
  *a2 = 0;
  if ((v7 & 0x100) != 0)
  {
    *(a2 + 9) = 0;
  }

  return result;
}

uint64_t sub_10043A5B8(uint64_t **a1, char *a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_10043A600(a1, v3);
  return 1;
}

uint64_t *sub_10043A600(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_1000194D8(a1, a2);
  sub_10027CB9C(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void sub_10043A6A8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E4CD00;
  sub_100188678((a1 + 3));
}

void sub_10043A724(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E4CD00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10043A778(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_10043A78C(uint64_t a1, uint64_t a2)
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

void *sub_10043A824(void *a1)
{
  *a1 = off_101E4CD50;
  sub_10039D5CC((a1 + 1));
  return a1;
}

void sub_10043A868(void *a1)
{
  *a1 = off_101E4CD50;
  sub_10039D5CC((a1 + 1));

  operator delete();
}

void sub_10043A978(void *a1)
{
  sub_10039D5CC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10043A9B4(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v2 = *a2 | 0x100;
  }

  else
  {
    v2 = 0;
  }

  return sub_10025BA88(a1 + 8, v2);
}

uint64_t sub_10043A9CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10043AA18(uint64_t a1, uint64_t a2)
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

void sub_10043AA98(void **a1)
{
  v1 = **a1;
  if (v1[13])
  {
    v2 = v1[5];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I session invalidate", buf, 2u);
    }

    v3 = v1[12];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = v1[11];
        if (v6)
        {
          (*(*v6 + 24))(v6);
        }

        sub_100004A34(v5);
      }
    }

    v7 = v1[14];
    v1[13] = 0;
    v1[14] = 0;
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  operator delete();
}

void *sub_10043ABB8(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100005C2C(a1, &v6, a2);
  if (!result)
  {
    sub_10043AC5C();
  }

  return result;
}

void sub_10043AD18(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10043AD34(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10043AD34(uint64_t a1, char *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(__p + 18);
    if (v3)
    {
      *(__p + 19) = v3;
      operator delete(v3);
    }

    if (__p[143] < 0)
    {
      operator delete(*(__p + 15));
    }

    if (__p[103] < 0)
    {
      operator delete(*(__p + 10));
    }

    if (__p[79] < 0)
    {
      operator delete(*(__p + 7));
    }

    if (__p[55] < 0)
    {
      operator delete(*(__p + 4));
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_10043ADD8(void *a1)
{
  *a1 = off_101E4CDD0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10043AE24(void *a1)
{
  *a1 = off_101E4CDD0;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10043AF04(uint64_t result, uint64_t a2)
{
  *a2 = off_101E4CDD0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10043AF44(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10043AF54(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10043AF94(void *a1, uint64_t a2, id *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v17, *a2, *(a2 + 8));
  }

  else
  {
    *v17 = *a2;
    v18 = *(a2 + 16);
  }

  sub_1000636AC(v21, a4);
  v7 = a1[1];
  v19 = 0;
  if (!v22)
  {
    sub_100022DB4();
  }

  (*(*v22 + 48))(v22, &v19);
  sub_10001021C(&v19);
  v8 = a1[3];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9 && a1[2])
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      sub_10092E504(a3, &v25);
      if ((SBYTE7(v30) & 0x80u) == 0)
      {
        v10 = BYTE7(v30);
      }

      else
      {
        v10 = *(&v29 + 1);
      }

      v11 = HIBYTE(v18);
      v12 = HIBYTE(v18);
      if (v18 < 0)
      {
        v11 = v17[1];
      }

      if (v10 == v11)
      {
        v13 = (SBYTE7(v30) & 0x80u) == 0 ? &v29 : v29;
        v14 = v18 >= 0 ? v17 : v17[0];
        if (!memcmp(v13, v14, v10))
        {
          v23 = v7;
          sub_10043B654(v24, &v25);
          v20[0] = 0;
          v20[1] = 0;
          sub_100004AA0(v20, (v7 + 8));
          operator new();
        }
      }

      v15 = *(v7 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1017706A0(v17, v12 < 0, v15);
      }

      if (*(&v30 + 1))
      {
        *&v31 = *(&v30 + 1);
        operator delete(*(&v30 + 1));
      }

      if (SBYTE7(v30) < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(*(&v26 + 1));
      }

      if (SBYTE7(v26) < 0)
      {
        operator delete(v25);
      }

LABEL_37:
      sub_100004A34(v9);
      goto LABEL_38;
    }
  }

  else
  {
    v9 = 0;
  }

  ctu::OsLogContext::OsLogContext(&v23, kCtLoggingSystemName, "cp.s.tr.model");
  v16 = *v24;
  ctu::OsLogContext::~OsLogContext(&v23);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    sub_101770728();
  }

  if (v9)
  {
    goto LABEL_37;
  }

LABEL_38:
  sub_10006372C(v21);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }
}

void sub_10043B360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10043B3D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10043B420(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&__dst, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v15 = *(v1 + 24);
    __dst = v3;
  }

  if (*(v1 + 55) < 0)
  {
    sub_100005F2C(v12, *(v1 + 32), *(v1 + 40));
  }

  else
  {
    *v12 = *(v1 + 32);
    v13 = *(v1 + 48);
  }

  if (*(v1 + 95) < 0)
  {
    sub_100005F2C(v10, *(v1 + 72), *(v1 + 80));
  }

  else
  {
    *v10 = *(v1 + 72);
    v11 = *(v1 + 88);
  }

  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100034C50(&__p, *(v1 + 96), *(v1 + 104), *(v1 + 104) - *(v1 + 96));
  CellularPlanSourceTransferModel::handleGenericTransferPayloadRequest_sync(v2, &__dst, v12, 0, 0, v10, &__p);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst);
  }

  sub_10043B5CC(&v6);
  return sub_1000049E0(&v5);
}

void sub_10043B550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  sub_10043B5CC(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10043B5CC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 96);
    if (v2)
    {
      *(v1 + 104) = v2;
      operator delete(v2);
    }

    if (*(v1 + 95) < 0)
    {
      operator delete(*(v1 + 72));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

char *sub_10043B654(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 3) = a2[3];
  if (*(a2 + 87) < 0)
  {
    sub_100005F2C(__dst + 64, *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = a2[4];
    *(__dst + 10) = *(a2 + 10);
    *(__dst + 4) = v6;
  }

  *(__dst + 11) = 0;
  *(__dst + 12) = 0;
  *(__dst + 13) = 0;
  sub_100034C50(__dst + 11, *(a2 + 11), *(a2 + 12), *(a2 + 12) - *(a2 + 11));
  __dst[112] = *(a2 + 112);
  return __dst;
}

void sub_10043B71C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10043B768(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_10043B7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10043B80C(uint64_t a1)
{
  *a1 = off_101E4CE50;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10043B85C(uint64_t a1)
{
  *a1 = off_101E4CE50;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_10043B968(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_101E4CE50;
  *(a2 + 8) = v2;
  if (result[39] < 0)
  {
    return sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  v3 = *(result + 1);
  *(a2 + 32) = *(result + 4);
  *(a2 + 16) = v3;
  return result;
}

void sub_10043B9B4(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_10043B9C8(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

BOOL sub_10043BA0C(_BOOL8 result, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = *(result + 8);
    sub_10043BAC0((v3 + 280), (result + 16));
    v4 = *(v3 + 72);

    return sub_100436CA4(v4, v3 + 280, @"no_backup/com.apple.commcenter.cellular_plan.transferred.plist", @"transferredBackPairs");
  }

  return result;
}

uint64_t sub_10043BA74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10043BAC0(uint64_t **a1, char *a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000194D8(a1, v3);
  sub_1000DD108((v4 + 4));
  operator delete(v4);
  return 1;
}

void *sub_10043BB1C(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100005C2C(a1, &v6, a2);
  if (!result)
  {
    sub_10043BBC0();
  }

  return result;
}

void sub_10043BC6C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10043A48C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10043BC88(uint64_t a1)
{
  *a1 = off_101E4CED0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10043BCE4(uint64_t a1)
{
  *a1 = off_101E4CED0;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10043BE04(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10043BE24(char *result, uint64_t a2)
{
  *a2 = off_101E4CED0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 3);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  v3 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v3;
  return result;
}

void sub_10043BEA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10043BEC8(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_10043BF04(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 16))
      {
        if (*(a1 + 55) < 0)
        {
          sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
        }

        else
        {
          *__p = *(a1 + 32);
          v6 = *(a1 + 48);
        }

        v7[0] = 0;
        v7[1] = 0;
        sub_100004AA0(v7, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10043C08C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10043C0D8(uint64_t *a1)
{
  v1 = *a1;
  v30 = a1;
  v31 = v1;
  v2 = (v1 + 8);
  v3 = *v1;
  if (!sub_10016FA58(*v1 + 256, (v1 + 8)))
  {
    v6 = *(v3 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    if (*(v1 + 31) < 0)
    {
      v2 = *v2;
    }

    *buf = 136315138;
    *&buf[4] = v2;
    v7 = "#I %s is removed from maybe transferred map";
LABEL_44:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
    goto LABEL_63;
  }

  v4 = *(v3 + 176);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v5 = *v2;
    v36 = *(v1 + 24);
    *__p = v5;
  }

  v8 = (v3 + 184);
  if (v4 != (v3 + 184))
  {
    while (1)
    {
      v9 = *(v4 + 135);
      if (v9 >= 0)
      {
        v10 = *(v4 + 135);
      }

      else
      {
        v10 = v4[15];
      }

      v11 = HIBYTE(v36);
      if (v36 < 0)
      {
        v11 = __p[1];
      }

      if (v10 == v11)
      {
        v12 = v9 >= 0 ? v4 + 14 : v4[14];
        v13 = v36 >= 0 ? __p : __p[0];
        if (!memcmp(v12, v13, v10) && (subscriber::isSimReady() & 1) != 0)
        {
          break;
        }
      }

      v14 = v4[1];
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
          v15 = v4[2];
          v16 = *v15 == v4;
          v4 = v15;
        }

        while (!v16);
      }

      v4 = v15;
      if (v15 == v8)
      {
        v4 = (v3 + 184);
        break;
      }
    }
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == v8)
  {
    v6 = *(v3 + 40);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    if (*(v1 + 31) < 0)
    {
      v2 = *v2;
    }

    *buf = 136315138;
    *&buf[4] = v2;
    v7 = "#I %s is inactive";
    goto LABEL_44;
  }

  v33 = 0;
  v34 = 0;
  (***(v3 + 56))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
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
  v32[0] = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, v32);
  if (!v23)
  {
    v25 = 0;
    goto LABEL_46;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (!v24)
  {
LABEL_46:
    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    goto LABEL_47;
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v24);
  v26 = 0;
LABEL_47:
  (*(*v25 + 8))(&v33, v25, *(v4 + 8));
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v33)
  {
    v41 = 0;
    *v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    memset(buf, 0, sizeof(buf));
    buf[1] = 1;
    buf[3] = 1;
    v32[3] = 0x2000;
    (*(*v33 + 304))(v33, buf);
    if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_DEFAULT))
    {
      sub_1001E9530();
    }

    if (v41 == 1 && SHIBYTE(v40) < 0)
    {
      operator delete(v39[1]);
    }

    if (LOBYTE(v39[0]) == 1 && SHIBYTE(v38) < 0)
    {
      operator delete(*&buf[24]);
    }
  }

  else
  {
    v27 = *(v3 + 40);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = subscriber::asString();
      if (*(v1 + 31) < 0)
      {
        v2 = *v2;
      }

      *buf = 136315394;
      *&buf[4] = v29;
      *&buf[12] = 2080;
      *&buf[14] = v2;
      _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "invalid entitlement controller. slot:%s, iccid:%s", buf, 0x16u);
    }
  }

  if (v34)
  {
    sub_100004A34(v34);
  }

LABEL_63:
  sub_1000EF424(&v31);
  return sub_1000049E0(&v30);
}

void sub_10043C5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_100270CFC(&a26);
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_10043C648(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10043C6A0(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10043C6A0(void *result, char *a2, char *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10043C728(v5, (v5 + 8), v4 + 32, (v4 + 32));
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

void *sub_10043C728(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_100074A00(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10043C7B8();
  }

  return result;
}

void sub_10043C830(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10043A48C(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_10043C84C(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  v7 = *(a2 + 36);
  __dst[74] = *(a2 + 74);
  *(__dst + 36) = v7;
  return __dst;
}

void sub_10043C8FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DDBControlImpl::DDBControlImpl(uint64_t a1, void *a2, NSObject **a3, void *a4, void *a5, char *a6, void *a7)
{
  *a1 = off_101E4D098;
  v13 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, a6);
  sub_1001303E4(v13, a3, buf);
  ctu::OsLogContext::~OsLogContext(buf);
  *(a1 + 56) = 1;
  *a1 = off_101E4CF50;
  *(a1 + 48) = off_101E4D018;
  *(a1 + 64) = &off_101E4D070;
  *(a1 + 72) = *a2;
  v14 = a2[1];
  *(a1 + 80) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v30 = 10;
  v15 = *(a1 + 24);
  v28 = v15;
  strcpy(__p, "DDBControl");
  if (v15)
  {
    dispatch_retain(v15);
  }

  ctu::RestModule::RestModule();
  if (v28)
  {
    dispatch_release(v28);
  }

  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 104) = *a7;
  v16 = a7[1];
  *(a1 + 112) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 120) = *a4;
  v17 = a4[1];
  *(a1 + 128) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = *a5;
  v18 = a5[1];
  *(a1 + 144) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 184) = 0;
  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = PersonalityInfo::logPrefix(***(a1 + 120));
    v21 = ***(a1 + 120);
    v24 = *(v21 + 24);
    v22 = (v21 + 24);
    v23 = v24;
    v25 = *(v22 + 23);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(v22 + 1);
    }

    if (v26 < 0)
    {
      v22 = v23;
    }

    if (!v25)
    {
      v22 = "<invalid>";
    }

    *buf = 136315650;
    v32 = v20;
    v33 = 2080;
    v34 = " ";
    v35 = 2080;
    v36 = v22;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sCreated for %s", buf, 0x20u);
  }

  return a1;
}

void sub_10043CCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1002472DC(v20, *(v18 + 176));
  v22 = *(v18 + 160);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(v18 + 144);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v18 + 128);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v18 + 112);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(v18 + 96);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v18 + 80);
  if (v27)
  {
    sub_100004A34(v27);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544(v19);
  _Unwind_Resume(a1);
}

void DDBControlImpl::~DDBControlImpl(DDBControlImpl *this)
{
  *this = off_101E4CF50;
  *(this + 6) = off_101E4D018;
  *(this + 8) = &off_101E4D070;
  ctu::RestModule::disconnect((this + 88));
  sub_1002472DC(this + 168, *(this + 22));
  v2 = *(this + 20);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 10);
  if (v7)
  {
    sub_100004A34(v7);
  }

  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  DDBControlImpl::~DDBControlImpl(this);

  operator delete();
}

void non-virtual thunk toDDBControlImpl::~DDBControlImpl(DDBControlImpl *this)
{
  DDBControlImpl::~DDBControlImpl((this - 48));
}

{
  DDBControlImpl::~DDBControlImpl((this - 64));
}

{
  DDBControlImpl::~DDBControlImpl((this - 48));

  operator delete();
}

{
  DDBControlImpl::~DDBControlImpl((this - 64));

  operator delete();
}

const void **DDBControlImpl::readAuthTokenForDriver@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *&v19 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v19);
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
  (*(*v12 + 24))(&v17, v12, ***(a1 + 120) + 24, @"service-token", off_101FB1CA0, 0, 4);
  sub_1001B1A54(&v18, &v17);
  sub_10000A1EC(&v17);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v18)
  {
    v19 = 0uLL;
    v20 = 0;
    ctu::cf::assign();
    v14 = v20;
    *a2 = v19;
    *(a2 + 16) = v14;
    v15 = 1;
  }

  else
  {
    v15 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v15;
  return sub_10002D760(&v18);
}

void sub_10043D124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  sub_10002D760(&a10);
  _Unwind_Resume(a1);
}

void DDBControlImpl::saveAuthTokenForDriver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v7 = ServiceMap;
  if (v5 != 1)
  {
    if (v8 < 0)
    {
      v16 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v17 = 5381;
      do
      {
        v8 = v17;
        v18 = *v16++;
        v17 = (33 * v17) ^ v18;
      }

      while (v18);
    }

    std::mutex::lock(ServiceMap);
    __p = v8;
    v19 = sub_100009510(&v7[1].__m_.__sig, &__p);
    if (v19)
    {
      v20 = v19[3];
      v13 = v19[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_26:
        (*(*v20 + 32))(v20, ***(a1 + 120) + 24, @"service-token", off_101FB1CA0, 0, 4);
        goto LABEL_27;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_26;
  }

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
  __p = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &__p);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_15;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_15:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_16;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_16:
  v21 = ***(a1 + 120);
  v25 = 0;
  v26 = 0;
  v24 = 0;
  sub_100034C50(&v24, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  v30 = 0;
  v31 = 0;
  v29 = 0;
  sub_100034C50(&v29, v24, v25, v25 - v24);
  v28 = 0;
  __p = 0;
  v33 = 0;
  v34 = 0;
  sub_100034C50(&__p, v29, v30, v30 - v29);
  v35 = 0;
  if (ctu::cf::convert_copy())
  {
    v22 = v28;
    v28 = v35;
    v36 = v22;
    sub_10002D760(&v36);
  }

  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  v23 = v28;
  v27 = v28;
  v28 = 0;
  sub_10002D760(&v28);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  (*(*v14 + 16))(v14, v21 + 24, @"service-token", v23, off_101FB1CA0, 0, 4, 0);
  sub_10002D760(&v27);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

LABEL_27:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10043D460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, const void *a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  sub_10002D760(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void DDBControlImpl::initialize(DDBControlImpl *this)
{
  sub_100004AA0(&v3, this + 1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, this + 1);
  operator new();
}

void DDBControlImpl::start(DDBControlImpl *this)
{
  sub_100004AA0(&v3, this + 1);
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, this + 1);
  operator new();
}

void DDBControlImpl::init_sync(DDBControlImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 15));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sInitializing Dedicated Bearer Controller", buf, 0x16u);
  }

  v4 = *(this + 15);
  sub_100004AA0(&v6, this + 1);
  if (v6)
  {
    v5 = v6 + 64;
  }

  else
  {
    v5 = 0;
  }

  *buf = v5;
  *&buf[8] = v7;
  v6 = 0;
  v7 = 0;
  sub_100441558(v4, buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10043D808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DDBControlImpl::start_sync(DDBControlImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(***(this + 15));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sStarting Dedicared Bearer Controller", &v5, 0x16u);
  }

  result = *(this + 19);
  if (result)
  {
    return (*(*result + 336))(result, *(***(this + 15) + 48));
  }

  return result;
}

void DDBControlImpl::activate(uint64_t a1, char a2, uint64_t a3, NSObject **a4)
{
  sub_100004AA0(&v8, (a1 + 8));
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v7 = *a4;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  operator new();
}

void DDBControlImpl::personality_recovered(uint64_t a1)
{
  sub_100004AA0(&v3, (a1 + 8));
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, (a1 + 8));
  operator new();
}

void DDBControlImpl::cfg_updated(uint64_t a1)
{
  sub_100004AA0(&v3, (a1 + 8));
  v2 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  v3 = 0;
  v4 = 0;
  sub_100004AA0(&v3, (a1 + 8));
  operator new();
}

void DDBControlImpl::contextChanged(uint64_t a1, int a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void DDBControlImpl::handleEntitlementStatesChanged(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(a1 + 120));
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%shandleEntitlementStatesChanged", &buf, 0x16u);
  }

  v7 = (a1 + 120);
  v6 = *(a1 + 120);
  *__dst = 0u;
  v46 = 0u;
  v8 = sub_100007A6C(a2, (**v6 + 24));
  if (a2 + 8 == v8)
  {
    goto LABEL_70;
  }

  if ((*(v8 + 58) & 2) == 0)
  {
    goto LABEL_70;
  }

  v9 = *(v8 + 72);
  if (!v9)
  {
    goto LABEL_70;
  }

  v10 = v8 + 72;
  do
  {
    if (*(v9 + 28) >= 17)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 28) < 17));
  }

  while (v9);
  if (v10 == v8 + 72 || *(v10 + 28) > 17 || *(v10 + 32) != 2)
  {
    goto LABEL_70;
  }

  v13 = *(v8 + 96);
  v11 = v8 + 96;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_29;
  }

  v14 = v11;
  do
  {
    if (*(v12 + 32) >= 17)
    {
      v14 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < 17));
  }

  while (v12);
  if (v14 == v11 || *(v14 + 32) > 17)
  {
LABEL_29:
    v23 = *(a1 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v24 = PersonalityInfo::logPrefix(***v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v24;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    v20 = "#I %s%sno details given - Allowed with ES url";
LABEL_31:
    v21 = v23;
    v22 = 22;
LABEL_32:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, &buf, v22);
    goto LABEL_33;
  }

  v15 = *(v14 + 64);
  if (!v15 || (*(v15 + 24) & 1) == 0)
  {
    v23 = *(a1 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v40 = PersonalityInfo::logPrefix(***v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v40;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    v20 = "#I %s%sNo alt server given. Allowed with ES url";
    goto LABEL_31;
  }

  v16 = *(v15 + 23);
  if (v16 < 0)
  {
    v16 = *(v15 + 8);
  }

  if (!v16)
  {
    v41 = *(a1 + 40);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = PersonalityInfo::logPrefix(***v7);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v42;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sAllowed with alternative url, which is not yet given - waiting", &buf, 0x16u);
    }

LABEL_70:
    v28 = *(a1 + 40);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v43 = PersonalityInfo::logPrefix(***v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v43;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    v30 = "#I %s%sservice is not allowed";
    goto LABEL_72;
  }

  sub_10012BF3C(__dst, v15);
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PersonalityInfo::logPrefix(***v7);
    v19 = __dst;
    if (SBYTE7(v46) < 0)
    {
      v19 = __dst[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v18;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v50 = v19;
    v20 = "#I %s%sAllowed with alternative url: %s";
    v21 = v17;
    v22 = 32;
    goto LABEL_32;
  }

LABEL_33:
  if (BYTE8(v46))
  {
    goto LABEL_41;
  }

  memset(&buf, 0, sizeof(buf));
  sub_100A8161C(*(a1 + 136), &buf);
  size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  v26 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    sub_1001696A4(__dst, &buf);
    v26 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  if (v26 < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (BYTE8(v46))
  {
LABEL_41:
    v27 = *(a1 + 152);
    if (!v27)
    {
      goto LABEL_59;
    }

    __p[0] = 0;
    __p[1] = 0;
    v48 = 0;
    if (*(v27 + 455) < 0)
    {
      sub_100005F2C(__p, *(v27 + 432), *(v27 + 440));
    }

    else
    {
      *__p = *(v27 + 432);
      v48 = *(v27 + 448);
    }

    if (!sub_100071DF8(__dst, __p))
    {
      v31 = *(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = PersonalityInfo::logPrefix(***v7);
        v33 = __p;
        if (v48 < 0)
        {
          v33 = __p[0];
        }

        v34 = __dst;
        if (SBYTE7(v46) < 0)
        {
          v34 = __dst[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = v32;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v50 = v33;
        v51 = 2080;
        v52 = v34;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%sserver address is changing from %s to %s", &buf, 0x2Au);
      }

      v35 = *(a1 + 160);
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      if (v35)
      {
        sub_100004A34(v35);
      }
    }

    if (SHIBYTE(v48) < 0)
    {
      operator delete(__p[0]);
    }

    if (!*(a1 + 152))
    {
LABEL_59:
      v36 = *(a1 + 40);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = PersonalityInfo::logPrefix(***v7);
        v38 = __dst;
        if (SBYTE7(v46) < 0)
        {
          v38 = __dst[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v37;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v50 = v38;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s%screating driver with url: %s", &buf, 0x20u);
      }

      v39 = *(a1 + 24);
      if (v39)
      {
        dispatch_retain(v39);
      }

      sub_100004AA0(__p, (a1 + 8));
      __p[0] = 0;
      __p[1] = 0;
      entitlements::CEHTTPDriver::create();
    }

    goto LABEL_75;
  }

  v28 = *(a1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = PersonalityInfo::logPrefix(***v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v29;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    v30 = "#W %s%sserver address is missing. Driver is not created";
LABEL_72:
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v30, &buf, 0x16u);
  }

LABEL_73:
  v44 = *(a1 + 160);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (v44)
  {
    sub_100004A34(v44);
  }

LABEL_75:
  if (BYTE8(v46) == 1 && SBYTE7(v46) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_10043E5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 == 1 && a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char **sub_10043E720(char **a1, char **a2)
{
  if (*(a1 + 24) == 1)
  {
    if (a1 != a2)
    {
      sub_1001122C4(a1, *a2, a2[1], a2[1] - *a2);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    sub_100034C50(a1, *a2, a2[1], a2[1] - *a2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void DDBControlImpl::queryGetLinkCharacteristics(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 152))
  {
    v15 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = v15;
      v15 = Mutable;
      *buf = v5;
      sub_1000296E0(buf);
    }

    v6 = v15;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v12, *a2, *(a2 + 8));
    }

    else
    {
      *v12 = *a2;
      v13 = *(a2 + 16);
    }

    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(__p, v12[0], v12[1]);
    }

    else
    {
      *__p = *v12;
      v18 = v13;
    }

    v16 = 0;
    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v18;
    }

    v19 = 0;
    if (ctu::cf::convert_copy())
    {
      v9 = v16;
      v16 = v19;
      v20 = v9;
      sub_100005978(&v20);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v10 = v16;
    v14 = v16;
    v16 = 0;
    sub_100005978(&v16);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionarySetValue(v6, @"service", v10);
    sub_100005978(&v14);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[0]);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100010180(&v20, &v15);
    __p[0] = 0;
    v11 = v20;
    v20 = 0;
    *buf = v11;
    sub_10001021C(__p);
    sub_10001021C(&v20);
    (*(**(a1 + 152) + 200))(*(a1 + 152), 22, buf);
    (*(**(a1 + 152) + 352))(*(a1 + 152));
    sub_10000A1EC(&buf[8]);
    sub_10001021C(buf);
    sub_1000296E0(&v15);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(***(a1 + 120));
      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sDriver is not yet created, maybe carrier doesnt support dedicated bearer", buf, 0x16u);
    }
  }
}

void sub_10043EA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

  sub_1000296E0(&a17);
  _Unwind_Resume(a1);
}

BOOL DDBControlImpl::addSession(uint64_t a1, char *a2, uint64_t a3, const void ****a4)
{
  if (!*(a1 + 152))
  {
    v12 = *(a1 + 40);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v14 = PersonalityInfo::logPrefix(***(a1 + 120));
    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v15 = "#I %s%sDriver is not yet created, maybe carrier doesnt support dedicated bearer";
    v16 = v12;
    v17 = 22;
    goto LABEL_21;
  }

  v8 = sub_100007A6C(a1 + 168, a2);
  if (a1 + 176 == v8)
  {
    v18 = *(a1 + 40);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v19 = PersonalityInfo::logPrefix(***(a1 + 120));
    if (a2[23] >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *buf = 136315650;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v59 = v20;
    v15 = "#I %s%sLink statistics is not yet available for service %s. Rejecting request";
LABEL_20:
    v16 = v18;
    v17 = 32;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    return 0;
  }

  if (!*(v8 + 56))
  {
    v18 = *(a1 + 40);
    result = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v21 = PersonalityInfo::logPrefix(***(a1 + 120));
    if (a2[23] >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    *buf = 136315650;
    *&buf[4] = v21;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v59 = v22;
    v15 = "#I %s%sServer do not support service %s";
    goto LABEL_20;
  }

  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v10 = theDict;
    theDict = Mutable;
    *buf = v10;
    sub_1000296E0(buf);
  }

  CFDictionarySetValue(theDict, @"operation", @"enable");
  v11 = theDict;
  if (a2[23] < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    *__dst = *a2;
    v51 = *(a2 + 2);
  }

  if (SHIBYTE(v51) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v55 = v51;
  }

  v56 = 0;
  if (SHIBYTE(v55) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v55;
  }

  v57 = 0;
  if (ctu::cf::convert_copy())
  {
    v23 = v56;
    v56 = v57;
    v47 = v23;
    sub_100005978(&v47);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  value = v56;
  v56 = 0;
  sub_100005978(&v56);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionarySetValue(v11, @"service", value);
  sub_100005978(&value);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__dst[0]);
  }

  theArray = 0;
  v24 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (v24)
  {
    v25 = theArray;
    theArray = v24;
    *buf = v25;
    sub_1000279DC(buf);
  }

  v26 = *a4;
  v27 = a4[1];
  if (*a4 != v27)
  {
    do
    {
      __p[0] = 0;
      v28 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (v28)
      {
        v29 = __p[0];
        __p[0] = v28;
        *buf = v29;
        sub_1000296E0(buf);
      }

      v30 = *v26;
      v31 = **v26;
      if (v31)
      {
        CFDictionarySetValue(__p[0], @"src-ip", v31);
        v30 = *v26;
      }

      v32 = v30[1];
      if (v32)
      {
        CFDictionarySetValue(__p[0], @"src-port", v32);
        v30 = *v26;
      }

      v33 = v30[2];
      if (v33)
      {
        CFDictionarySetValue(__p[0], @"remote-ip", v33);
        v30 = *v26;
      }

      v34 = v30[3];
      if (v34)
      {
        CFDictionarySetValue(__p[0], @"remote-port", v34);
        v30 = *v26;
      }

      v35 = v30[4];
      if (v35)
      {
        if (v35 == 6)
        {
          v36 = @"tcp";
        }

        else
        {
          if (v35 != 17)
          {
            goto LABEL_57;
          }

          v36 = @"udp";
        }
      }

      else
      {
        v36 = @"ip";
      }

      CFDictionarySetValue(__p[0], @"protocol", v36);
LABEL_57:
      v37 = *v26;
      v38 = (*v26)[5];
      if (v38)
      {
        CFDictionarySetValue(__p[0], @"traffic-class", v38);
        v37 = *v26;
      }

      v39 = v37[6];
      if (!v39)
      {
        v40 = @"UL";
        goto LABEL_63;
      }

      if (v39 == 1)
      {
        v40 = @"DL";
LABEL_63:
        CFDictionarySetValue(__p[0], @"direction", v40);
      }

      CFArrayAppendValue(theArray, __p[0]);
      sub_1000296E0(__p);
      v26 += 2;
    }

    while (v26 != v27);
  }

  CFDictionarySetValue(theDict, @"flow-rules", theArray);
  v47 = 0;
  v48 = 0;
  sub_100010180(__p, &theDict);
  *buf = v47;
  v47 = __p[0];
  __p[0] = 0;
  sub_10001021C(buf);
  sub_10001021C(__p);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v43, *a3, *(a3 + 8));
  }

  else
  {
    *v43 = *a3;
    v44 = *(a3 + 16);
  }

  if (SHIBYTE(v44) < 0)
  {
    sub_100005F2C(__p, v43[0], v43[1]);
  }

  else
  {
    *__p = *v43;
    v55 = v44;
  }

  value = 0;
  if (SHIBYTE(v55) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v55;
  }

  v56 = 0;
  if (ctu::cf::convert_copy())
  {
    v41 = value;
    value = v56;
    v57 = v41;
    sub_100005978(&v57);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v42 = value;
  v45 = value;
  value = 0;
  sub_100005978(&value);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__p[0]);
  }

  v46 = v42;
  if (v42)
  {
    CFRetain(v42);
  }

  *buf = v48;
  v48 = v42;
  v46 = 0;
  sub_10000A1EC(buf);
  sub_10000A1EC(&v46);
  sub_100005978(&v45);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  (*(**(a1 + 152) + 208))(*(a1 + 152), 23, &v47);
  (*(**(a1 + 152) + 352))(*(a1 + 152));
  sub_10000A1EC(&v48);
  sub_10001021C(&v47);
  sub_1000279DC(&theArray);
  sub_1000296E0(&theDict);
  return 1;
}

void sub_10043F258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, const void *a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, const void *a29, const void *a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  sub_100005978(&a30);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_10000A1EC(&a20);
  sub_10001021C(&a19);
  sub_1000279DC(&a21);
  sub_1000296E0(&a29);
  _Unwind_Resume(a1);
}

BOOL DDBControlImpl::removeSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 152);
  if (v5)
  {
    theDict = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v9 = theDict;
      theDict = Mutable;
      *buf = v9;
      sub_1000296E0(buf);
    }

    CFDictionarySetValue(theDict, @"operation", @"delete");
    v10 = theDict;
    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__dst, *a4, *(a4 + 8));
    }

    else
    {
      *__dst = *a4;
      v24 = *(a4 + 16);
    }

    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v28 = v24;
    }

    v29 = 0;
    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v28;
    }

    v30 = 0;
    if (ctu::cf::convert_copy())
    {
      v13 = v29;
      v29 = v30;
      v21 = v13;
      sub_100005978(&v21);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    value = v29;
    v29 = 0;
    sub_100005978(&v29);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionarySetValue(v10, @"session-id", value);
    sub_100005978(&value);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst[0]);
    }

    v21 = 0;
    v22 = 0;
    sub_100010180(__p, &theDict);
    *buf = v21;
    v21 = __p[0];
    __p[0] = 0;
    sub_10001021C(buf);
    sub_10001021C(__p);
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v17, *a3, *(a3 + 8));
    }

    else
    {
      *v17 = *a3;
      v18 = *(a3 + 16);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__p, v17[0], v17[1]);
    }

    else
    {
      *__p = *v17;
      v28 = v18;
    }

    value = 0;
    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v28;
    }

    v29 = 0;
    if (ctu::cf::convert_copy())
    {
      v14 = value;
      value = v29;
      v30 = v14;
      sub_100005978(&v30);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v15 = value;
    v19 = value;
    value = 0;
    sub_100005978(&value);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    v20 = v15;
    if (v15)
    {
      CFRetain(v15);
    }

    *buf = v22;
    v22 = v15;
    v20 = 0;
    sub_10000A1EC(buf);
    sub_10000A1EC(&v20);
    sub_100005978(&v19);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    (*(**(a1 + 152) + 208))(*(a1 + 152), 23, &v21);
    (*(**(a1 + 152) + 352))(*(a1 + 152));
    sub_10000A1EC(&v22);
    sub_10001021C(&v21);
    sub_1000296E0(&theDict);
  }

  else
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(***(a1 + 120));
      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sDriver is not yet created, maybe carrier doesnt support dedicated bearer", buf, 0x16u);
    }
  }

  return v5 != 0;
}

void sub_10043F7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, const void *a27, const void *a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978(&a28);
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_10000A1EC(&a19);
  sub_10001021C(&a18);
  sub_1000296E0(&a27);
  _Unwind_Resume(a1);
}

void sub_10043F8B8(uint64_t a1, int a2, unsigned int **a3)
{
  if (a2 == 3)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(***(a1 + 120));
      v7 = sub_100531604(**a3);
      v8 = 136315650;
      v9 = v6;
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s_____________   Process Authentication response with status: %s", &v8, 0x20u);
    }
  }
}

void sub_10043F9A4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1017707A0(a1, v2);
  }
}

void sub_10043F9E8(uint64_t a1, uint64_t a2, int **a3, CFDictionaryRef *a4)
{
  v6 = a2;
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(***(a1 + 120));
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v48 = sub_100A38E30(v6);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sgetLinkCharacteristics: Event cause is %s", buf, 0x20u);
    v8 = *(a1 + 40);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(***(a1 + 120));
    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%srequest: ", buf, 0x16u);
  }

  *buf = off_101E4D2C0;
  *&buf[8] = a1;
  v48 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  __p[0] = 0;
  __p[1] = 0;
  v45 = 0;
  Value = CFDictionaryGetValue(*a4, @"service");
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v45 = *&buf[16];
  v12 = sub_100007A6C(a1 + 168, __p);
  if (v6 == 3)
  {
    v13 = v12;
    v14 = **a3;
    if (v14 > 6005)
    {
      if (v14 != 6006 && v14 != 6300)
      {
        goto LABEL_53;
      }
    }

    else if ((v14 - 6003) >= 2)
    {
      if (v14 == 6000)
      {
        v15 = **(*a3 + 3);
        v16 = *(a1 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = PersonalityInfo::logPrefix(***(a1 + 120));
          *buf = 136315394;
          *&buf[4] = v17;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sresponse: ", buf, 0x16u);
        }

        *buf = off_101E4D340;
        *&buf[8] = a1;
        v48 = buf;
        logger::CFTypeRefLogger();
        sub_100007E44(buf);
        v18 = CFDictionaryGetValue(v15, @"qos-flow-allowed");
        v20 = v18;
        if (v18)
        {
          v21 = CFGetTypeID(v18);
          if (v21 == CFBooleanGetTypeID())
          {
            v22 = v20;
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        buf[0] = 0;
        ctu::cf::assign(buf, v22, v19);
        if (buf[0] == 1)
        {
          operator new();
        }

        if (a1 + 176 == v13 || *(v13 + 56))
        {
          v35 = *(a1 + 40);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = PersonalityInfo::logPrefix(***(a1 + 120));
            v37 = __p;
            if (v45 < 0)
            {
              v37 = __p[0];
            }

            *buf = 136315650;
            *&buf[4] = v36;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v48 = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%snew link characteristics for %s received", buf, 0x20u);
          }

          *buf = __p;
          v38 = sub_1004428EC((a1 + 168), __p, &unk_101802C98, buf, &v46);
          v39 = *(v38 + 8);
          *(v38 + 7) = 0;
          *(v38 + 8) = 0;
          if (v39)
          {
            sub_100004A34(v39);
          }

          v40 = *(a1 + 112);
          if (v40)
          {
            v41 = std::__shared_weak_count::lock(v40);
            if (v41)
            {
              v42 = v41;
              v43 = *(a1 + 104);
              if (v43)
              {
                (*(*v43 + 16))(v43, ***(a1 + 120) + 24, __p);
              }

              sub_100004A34(v42);
            }
          }
        }
      }

      goto LABEL_53;
    }

    v23 = *(a1 + 40);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(***(a1 + 120));
      v25 = __p;
      if (v45 < 0)
      {
        v25 = __p[0];
      }

      *buf = 136315650;
      *&buf[4] = v24;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v48 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sServer rejects the device. Disable service at least for service %s", buf, 0x20u);
    }

    if (a1 + 176 == v13 || *(v13 + 56))
    {
      v26 = *(a1 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = PersonalityInfo::logPrefix(***(a1 + 120));
        v28 = __p;
        if (v45 < 0)
        {
          v28 = __p[0];
        }

        *buf = 136315650;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v48 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%snew link characteristics for %s received", buf, 0x20u);
      }

      *buf = __p;
      v29 = sub_1004428EC((a1 + 168), __p, &unk_101802C98, buf, &v46);
      v30 = *(v29 + 8);
      *(v29 + 7) = 0;
      *(v29 + 8) = 0;
      if (v30)
      {
        sub_100004A34(v30);
      }

      v31 = *(a1 + 112);
      if (v31)
      {
        v32 = std::__shared_weak_count::lock(v31);
        if (v32)
        {
          v33 = v32;
          v34 = *(a1 + 104);
          if (v34)
          {
            (*(*v34 + 16))(v34, ***(a1 + 120) + 24, __p);
          }

          sub_100004A34(v33);
        }
      }
    }
  }

LABEL_53:
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1004401FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_100004A34(v22);
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_1004402AC(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_100029A48(&v6);
  return a1;
}

void sub_100440300(uint64_t a1, uint64_t a2, int **a3, CFDictionaryRef *a4, const void **a5)
{
  v8 = a2;
  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(***(a1 + 120));
    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v49 = sub_100A38E30(v8);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnhancedSession: Event cause is %s", buf, 0x20u);
    v10 = *(a1 + 40);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(***(a1 + 120));
    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%srequest: ", buf, 0x16u);
  }

  *buf = off_101E4D410;
  *&buf[8] = a1;
  v49 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  Value = CFDictionaryGetValue(*a4, @"operation");
  v14 = Value;
  if (Value)
  {
    v15 = CFGetTypeID(Value);
    if (v15 == CFStringGetTypeID())
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = CFEqual(@"enable", v16);
  v45[0] = 0;
  v45[1] = 0;
  v46 = 0;
  v18 = CFDictionaryGetValue(*a4, @"service");
  if (v18)
  {
    CFGetTypeID(v18);
    CFStringGetTypeID();
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *v45 = *buf;
  v46 = *&buf[16];
  v43[0] = 0;
  v43[1] = 0;
  v44 = 0;
  sub_100060E84(&cf, a5);
  __p = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v47 = 0;
  *buf = 0;
  sub_100060DE8(buf, &__p);
  if (*buf)
  {
    sub_100222570(&v47, buf);
  }

  sub_100005978(buf);
  v42 = v47;
  v47 = 0;
  sub_100005978(&v47);
  sub_10000A1EC(&__p);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *v43 = *buf;
  v44 = *&buf[16];
  sub_100005978(&v42);
  sub_10000A1EC(&cf);
  __p = 0;
  v40 = 0uLL;
  if (v8 == 3)
  {
    v19 = **a3;
    if (v19 > 6005)
    {
      if (v19 != 6006)
      {
        if (v19 == 6201)
        {
          v33 = 0;
LABEL_44:
          v34 = *(a1 + 112);
          if (v34)
          {
            v35 = std::__shared_weak_count::lock(v34);
            if (v35)
            {
              v36 = v35;
              v37 = *(a1 + 104);
              if (v37)
              {
                if (v17 == 1)
                {
                  v38 = (*v37 + 24);
                }

                else
                {
                  v38 = (*v37 + 32);
                }

                (*v38)();
              }

              sub_100004A34(v36);
              v33 = HIBYTE(v40);
            }
          }

          if ((v33 & 0x80) != 0)
          {
            operator delete(__p);
          }

          goto LABEL_54;
        }

        if (v19 != 6300)
        {
          goto LABEL_54;
        }
      }
    }

    else if ((v19 - 6003) >= 2)
    {
      if (v19 != 6000)
      {
        goto LABEL_54;
      }

      v20 = **(*a3 + 3);
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = PersonalityInfo::logPrefix(***(a1 + 120));
        *buf = 136315394;
        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sresponse: ", buf, 0x16u);
      }

      *buf = off_101E4D490;
      *&buf[8] = a1;
      v49 = buf;
      logger::CFTypeRefLogger();
      sub_100007E44(buf);
      v23 = CFDictionaryGetValue(v20, @"session-id");
      if (v23)
      {
        CFGetTypeID(v23);
        CFStringGetTypeID();
      }

      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      __p = *buf;
      *&v40 = *&buf[8];
      *(&v40 + 7) = *&buf[15];
      v33 = buf[23];
      HIBYTE(v40) = buf[23];
      goto LABEL_44;
    }

    v24 = *(a1 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PersonalityInfo::logPrefix(***(a1 + 120));
      v26 = "disable";
      if (v17 == 1)
      {
        v26 = "enable";
      }

      *buf = 136315906;
      v27 = v45;
      *&buf[4] = v25;
      if (v46 < 0)
      {
        v27 = v45[0];
      }

      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v49 = v26;
      v50 = 2080;
      v51 = v27;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sServer rejects the request to %s for service %s", buf, 0x2Au);
    }

    v28 = *(a1 + 112);
    if (v28)
    {
      v29 = std::__shared_weak_count::lock(v28);
      if (v29)
      {
        v30 = v29;
        v31 = *(a1 + 104);
        if (v31)
        {
          v32 = ***(a1 + 120);
          memset(buf, 0, sizeof(buf));
          if (v17 == 1)
          {
            (*(*v31 + 24))(v31, v32 + 24, v43, buf, 0);
          }

          else
          {
            (*(*v31 + 32))(v31, v32 + 24, v43, buf, 0);
          }

          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        sub_100004A34(v30);
      }
    }
  }

LABEL_54:
  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45[0]);
  }
}

void sub_1004409C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_100004A34(v40);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void DDBControlImpl::handleDumpState(DDBControlImpl *this)
{
  v2 = (this + 40);
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(***(this + 15));
    *buf = 136315394;
    v18 = v4;
    v19 = 2080;
    v20 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s |--- Dedicated Bearer Controller:", buf, 0x16u);
    v3 = *(this + 5);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(***(this + 15));
    v6 = asStringBool(*(this + 19) != 0);
    *buf = 136315650;
    v18 = v5;
    v19 = 2080;
    v20 = " ";
    v21 = 2080;
    v22 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s | Has driver: %s", buf, 0x20u);
  }

  if (*(this + 23))
  {
    v7 = *(this + 21);
    if (v7 != (this + 176))
    {
      do
      {
        v8 = *v2;
        if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
        {
          v9 = (v7 + 32);
          v10 = PersonalityInfo::logPrefix(***(this + 15));
          if (*(v7 + 55) < 0)
          {
            v9 = *v9;
          }

          *buf = 136315906;
          v18 = v10;
          v19 = 2080;
          v20 = " ";
          v21 = 2080;
          v22 = v9;
          v23 = 2080;
          v24 = "TBD";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s | links characteristics for '%s': %s", buf, 0x2Au);
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
            v13 = *v12 == v7;
            v7 = v12;
          }

          while (!v13);
        }

        v7 = v12;
      }

      while (v12 != (this + 176));
    }
  }

  else
  {
    v14 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = PersonalityInfo::logPrefix(***(this + 15));
      *buf = 136315394;
      v18 = v15;
      v19 = 2080;
      v20 = " ";
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%s | No link characteristics", buf, 0x16u);
    }
  }

  v16 = *(this + 19);
  if (v16)
  {
    (*(*v16 + 328))(v16);
  }

  sub_1009C4560(*(this + 15), v2);
}

void sub_100440DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, const void **a5, const void **a6)
{
  v7 = a3;
  v9 = a4[1];
  v10 = a1 - 48;
  v13[0] = *a4;
  v13[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v11, a6);
  sub_100440EBC(v10, a2, v7, v13, &v12, &v11);
}

void sub_100440E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100440EBC(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, const void **a5, const void **a6)
{
  v13[0] = a1;
  sub_100004AA0(&v19, (a1 + 8));
  v11 = v20;
  v13[1] = v19;
  v13[2] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
  }

  v14 = a3;
  v12 = a4[1];
  v15 = *a4;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v17, a5);
  sub_100060E84(&v18, a6);
  sub_100442DD8((a1 + 8), v13);
}

void sub_100440F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, const void **a5, const void **a6)
{
  v7 = a3;
  v9 = a4[1];
  v10 = a1 - 48;
  v13[0] = *a4;
  v13[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v11, a6);
  sub_100441068(v10, a2, v7, v13, &v12, &v11);
}

void sub_100441040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100441068(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, const void **a5, const void **a6)
{
  v13[0] = a1;
  sub_100004AA0(&v19, (a1 + 8));
  v11 = v20;
  v13[1] = v19;
  v13[2] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
  }

  v14 = a3;
  v12 = a4[1];
  v15 = *a4;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v17, a5);
  sub_100060E84(&v18, a6);
  sub_1004430A8((a1 + 8), v13);
}

void sub_100441148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, const void **a5, const void **a6)
{
  v7 = a3;
  v9 = a4[1];
  v10 = a1 - 48;
  v13[0] = *a4;
  v13[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v11, a6);
  sub_100441214(v10, a2, v7, v13, &v12, &v11);
}

void sub_1004411EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_100441214(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, const void **a5, const void **a6)
{
  v13[0] = a1;
  sub_100004AA0(&v19, (a1 + 8));
  v11 = v20;
  v13[1] = v19;
  v13[2] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
  }

  v14 = a3;
  v12 = a4[1];
  v15 = *a4;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v17, a5);
  sub_100060E84(&v18, a6);
  sub_10044330C((a1 + 8), v13);
}

void sub_1004412F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, const void **a5, const void **a6)
{
  v7 = a3;
  v9 = a4[1];
  v10 = a1 - 48;
  v13[0] = *a4;
  v13[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v12, a5);
  sub_100060E84(&v11, a6);
  sub_1004413C0(v10, a2, v7, v13, &v12, &v11);
}

void sub_100441398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10000A1EC(&a9);
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1004413C0(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, const void **a5, const void **a6)
{
  v13[0] = a1;
  sub_100004AA0(&v19, (a1 + 8));
  v11 = v20;
  v13[1] = v19;
  v13[2] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
  }

  v14 = a3;
  v12 = a4[1];
  v15 = *a4;
  v16 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100010024(&v17, a5);
  sub_100060E84(&v18, a6);
  sub_100443568((a1 + 8), v13);
}

uint64_t DDBControlImpl::hasDedicatedBearerSupport(DDBControlImpl *this)
{
  v1 = *(this + 19);
  if (v1)
  {
    LOBYTE(v1) = *(***(this + 15) + 48);
  }

  return v1 & 1;
}

void DDBControlImpl::getLinkCharacteristics(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_100007A6C(a1 + 168, a2);
  if (a1 + 176 == v6)
  {
    DDBControlImpl::queryGetLinkCharacteristics(a1, a2);
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
    v7 = *(v6 + 64);
    *a3 = *(v6 + 56);
    a3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }
  }
}

void sub_100441558(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  *&v3 = *a2;
  *(&v3 + 1) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1004415C4((a1 + 544), &v3);
  if (*(&v3 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v3 + 1));
  }
}

void sub_1004415AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1004415C4(void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      sub_1000210A8(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = sub_1004416D8(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}