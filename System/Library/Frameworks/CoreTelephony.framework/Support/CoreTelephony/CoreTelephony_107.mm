void sub_100703B0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (!a12)
  {
    JUMPOUT(0x100703A60);
  }

  JUMPOUT(0x100703A5CLL);
}

void sub_100703B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_1000A8744(va);
  JUMPOUT(0x100703AECLL);
}

void sub_100703B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x100703AFCLL);
}

capabilities::ct *sub_100703B60(capabilities::ct *a1, uint64_t a2, uint64_t a3)
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

void sub_100703CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

uint64_t sub_100703D24(uint64_t a1)
{
  sub_10006DCAC(a1 + 40, *(a1 + 48));

  return sub_10070C834(a1);
}

void BasebandSettings::~BasebandSettings(BasebandSettings *this)
{
  *this = off_101E74328;
  v2 = *(this + 104);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10006DCAC(this + 800, *(this + 101));
  sub_10070CF14(this + 760);
  sub_10006DCAC(this + 736, *(this + 93));
  sub_10070C834(this + 696);
  sub_10006DCAC(this + 672, *(this + 85));
  sub_10006EC28(this + 648, *(this + 82));
  sub_10006EC28(this + 624, *(this + 79));
  v3 = *(this + 77);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 75);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 73);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 71);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 68);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 66);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 64);
  if (v9)
  {
    sub_100004A34(v9);
  }

  PersonalitiesTracker::~PersonalitiesTracker((this + 320));
  sub_100077CD4(this + 288, *(this + 37));
  v19 = (this + 264);
  sub_1000B2AF8(&v19);
  sub_10006DCAC(this + 240, *(this + 31));
  sub_10000FF50(this + 208);
  sub_10070CE94(this + 176);
  v10 = *(this + 21);
  if (v10)
  {
    dispatch_group_leave(v10);
    v11 = *(this + 21);
    if (v11)
    {
      dispatch_release(v11);
    }
  }

  v12 = *(this + 19);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(this + 17);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(this + 15);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(this + 13);
  if (v15)
  {
    sub_100004A34(v15);
  }

  sub_1000FEFCC(this + 9);
  v16 = *(this + 8);
  *(this + 8) = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v17 = *(this + 7);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 6);
  *(this + 6) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  BasebandSettingsInterface::~BasebandSettingsInterface(this);
}

{
  BasebandSettings::~BasebandSettings(this);

  operator delete();
}

void BasebandSettings::notifyServiceShutdown(NSObject *a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, &a1[1].isa);
  operator new();
}

void BasebandSettings::notifyServiceStart(BasebandSettings *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void BasebandSettings::notifyServiceBootstrap(BasebandSettings *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void BasebandSettings::notifyServiceMigration(BasebandSettings *this, dict a2, group_session a3)
{
  v4 = *a3.var0.fObj;
  if (*a3.var0.fObj)
  {
    dispatch_retain(*a3.var0.fObj);
    dispatch_group_enter(v4);
  }

  v5 = 0uLL;
  sub_100004AA0(&v5, this + 1);
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  v5 = 0uLL;
  operator new();
}

void BasebandSettings::basebandSettingsDriverStatus(BasebandSettings *this, char a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, this + 1);
  operator new();
}

uint64_t BasebandSettings::isFileLinedUp_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = 0;
  BasebandSettings::getModel_sync(a1, a2, &v10);
  if (v10)
  {
    v6 = (*(*v10 + 80))(v10, a3);
  }

  else
  {
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v8 = asString(a3);
      sub_10177BF00(v8, v12);
    }

    v6 = 0;
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return v6;
}

uint64_t BasebandSettings::getModel_sync@<X0>(uint64_t result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = *(result + 632);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = result + 632;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 != result + 632 && *(v4 + 32) <= a2)
  {
    v6 = *(v4 + 40);
    v5 = *(v4 + 48);
    *a3 = v6;
    a3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
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

void BasebandSettings::compareAndLineupFile_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((BasebandSettings::isFileLinedUp_sync(a1, a2, a3) & 1) == 0)
  {
    v13 = 0;
    v14 = 0;
    v8 = *(a1 + 64);
    isFileLinedUp_sync = BasebandSettings::isFileLinedUp_sync(a1, a2, 0);
    (*(*v8 + 48))(&v13, v8, a3, a4, isFileLinedUp_sync);
    v10 = v13;
    if (!v13)
    {
      goto LABEL_15;
    }

    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100004AA0(&v16, (a1 + 8));
    sub_10070C8B4(v18, a1 + 760);
    v12 = (*(*v10 + 32))(v10, a1 + 96, a2, &v16, v18);
    sub_10070CF14(v18);
    if (v17)
    {
      sub_100004A34(v17);
    }

    if (v12 && (*(*v10 + 24))(v10))
    {
      v15[0] = v10;
      v15[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BasebandSettings::addFileToPush_sync(a1, a2, v15);
      if (!v11)
      {
        goto LABEL_15;
      }

      sub_100004A34(v11);
    }

    else if (!v11)
    {
      goto LABEL_15;
    }

    sub_100004A34(v11);
LABEL_15:
    if (v14)
    {
      sub_100004A34(v14);
    }
  }
}

void sub_100704824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
    sub_100004A34(v16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::lineupFile(uint64_t a1, char a2, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
    v5 = *(a3 + 2);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void BasebandSettings::lineupFile_sync(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a1;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      sub_10071223C();
    }

    if (a2 == 4)
    {
      sub_100712560();
    }
  }

  else
  {
    if (a2 == 1)
    {
      sub_100712804();
    }

    if (a2 == 2)
    {
      sub_100711FC4();
    }
  }
}

void sub_100704ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  v17 = v16;
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100704B10(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  sub_100004AA0(&v8, (*a1 + 8));
  sub_10070C8B4(v10, v3 + 760);
  (*(*v4 + 32))(v4, v3 + 96, 1, &v8, v10);
  sub_10070CF14(v10);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v5 = *a2;
  v6 = a2[1];
  v7[0] = v5;
  v7[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  BasebandSettings::addFileToPush_sync(v3, 1, v7);
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100704C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::lineupFile_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((BasebandSettings::isFileLinedUp_sync(a1, a2, a3) & 1) == 0)
  {
    v13 = 0;
    v14 = 0;
    v8 = *(a1 + 64);
    isFileLinedUp_sync = BasebandSettings::isFileLinedUp_sync(a1, a2, 0);
    (*(*v8 + 48))(&v13, v8, a3, a4, isFileLinedUp_sync);
    v10 = v13;
    if (!v13)
    {
      goto LABEL_14;
    }

    v11 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100004AA0(&v16, (a1 + 8));
    sub_10070C8B4(v18, a1 + 760);
    v12 = (*(*v10 + 32))(v10, a1 + 96, a2, &v16, v18);
    sub_10070CF14(v18);
    if (v17)
    {
      sub_100004A34(v17);
    }

    if (v12)
    {
      v15[0] = v10;
      v15[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BasebandSettings::addFileToPush_sync(a1, a2, v15);
      if (!v11)
      {
        goto LABEL_14;
      }

      sub_100004A34(v11);
    }

    else if (!v11)
    {
      goto LABEL_14;
    }

    sub_100004A34(v11);
LABEL_14:
    if (v14)
    {
      sub_100004A34(v14);
    }
  }
}

void sub_100704DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
    sub_100004A34(v16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::addFileToPush_sync(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v13 = 0;
    v14 = 0;
    BasebandSettings::getModel_sync(a1, a2, &v13);
    v6 = v13;
    if (v13)
    {
      v7 = a3[1];
      v8 = *(*a3 + 84);
      v11 = *a3;
      v12 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = (*(*v6 + 48))(v6, v8, &v11);
      if (v12)
      {
        sub_100004A34(v12);
      }

      if (v9)
      {
        BasebandSettings::prepareFilePushTransaction_sync(a1, a2);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v10 = subscriber::asString();
      sub_10177BF38(v10, v15);
    }

    if (v14)
    {
      sub_100004A34(v14);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177BF70();
  }
}

void sub_100704F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::prepareFilePushTransaction_sync(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v23 = 0;
  v24 = 0;
  BasebandSettings::getModel_sync(a1, a2, &v23);
  v4 = v23;
  if (!v23)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v10 = subscriber::asString();
      sub_10177BFA4(v10, buf);
    }

    goto LABEL_28;
  }

  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v6 = (*(*v4 + 88))(v4);
  if (v6 != 1)
  {
    if (v6)
    {
      goto LABEL_28;
    }

    v7 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v8 = "#E Attempt to prepare file push transaction with no file to push";
    v9 = v7;
    goto LABEL_6;
  }

  v11 = *(a1 + 656);
  if (!v11)
  {
    goto LABEL_22;
  }

  v12 = a1 + 656;
  do
  {
    if (*(v11 + 32) >= a2)
    {
      v12 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < a2));
  }

  while (v11);
  if (v12 == a1 + 656 || *(v12 + 32) > a2)
  {
LABEL_22:
    v16 = *(a1 + 264);
      ;
    }

    v21 = 0;
    v22 = 0;
    sub_100004AA0(buf, (a1 + 8));
    v19 = *buf;
    v18 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v18);
    }

    v26[0] = off_101E752E8;
    v26[1] = v19;
    v26[2] = v18;
    v26[3] = v26;
    BasebandSettingsDriver::prepareFilePushTransaction();
    sub_100712E84(v26);
    v20 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E Failed to create file push transaction", buf, 2u);
    }

    goto LABEL_28;
  }

  v13 = *(v12 + 40);
  v14 = *v5;
  v15 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E Pruning pending file push transaction", buf, 2u);
    }

    sub_1001FE8C8((a1 + 648), v12);
    goto LABEL_22;
  }

  if (v15)
  {
    *buf = 0;
    v8 = "#E Attempt to prepare multiple file push transactions";
    v9 = v14;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
  }

LABEL_28:
  if (v24)
  {
    sub_100004A34(v24);
  }
}

void sub_100705308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, char a15)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::handleFilePushTransactionResult_sync(uint64_t a1, int a2, uint64_t a3)
{
  v35 = a2;
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v7 = *(a1 + 656);
  if (v7)
  {
    v8 = v6;
    v9 = (a1 + 648);
    v10 = (a1 + 656);
    v11 = a1 + 656;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v11 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v11 != v10 && *(v11 + 32) <= a2)
    {
      v12 = a3 == 0;
      v13 = *(v11 + 40);
      v14 = *v6;
      v15 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        if (!v15)
        {
          goto LABEL_23;
        }

        *buf = 136315138;
        *&buf[4] = asString();
        v16 = "#I Ignoring stale file transfer transaction result: %s";
        v17 = v14;
        v18 = 12;
        goto LABEL_22;
      }

      if (v15)
      {
        *buf = 136315138;
        *&buf[4] = asString();
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N File transfer transaction result: %s", buf, 0xCu);
      }

      if (a3)
      {
        BasebandSettings::maybeAbortPendingTransactionsAndClearCache_sync(a1, 3);
        sub_10006EC28(a1 + 648, *(a1 + 656));
        *(a1 + 648) = v10;
        *(a1 + 656) = 0u;
      }

      else
      {
        v19 = sub_1001FE8C8((a1 + 648), v11);
        if (capabilities::ct::supportsNVRAMUpdateWithoutBasebandReboot(v19))
        {
          v20 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N Triggering PRI refresh complete", buf, 2u);
          }

          sub_10070584C(a1 + 144, &v35);
        }
      }

      v21 = *(a1 + 664);
      v22 = *(a1 + 40);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (!v23)
        {
          goto LABEL_23;
        }

        *buf = 0;
        v16 = "#N Waiting for all pending transactions(s) to complete";
        v17 = v22;
        v18 = 2;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_23:
        v24 = *(a1 + 664);
        if (v24)
        {
          v25 = *v9;
          if (*v9 == v10)
          {
            v26 = 0;
          }

          else
          {
            v26 = 0;
            do
            {
              memset(buf, 0, sizeof(buf));
              BasebandSettings::getModel_sync(a1, *(v25 + 8), buf);
              if (*buf)
              {
                v27 = (*(**buf + 88))(*buf) != 0;
              }

              else
              {
                v27 = 0;
              }

              if (*&buf[8])
              {
                sub_100004A34(*&buf[8]);
              }

              v28 = v25[1];
              if (v28)
              {
                do
                {
                  v29 = v28;
                  v28 = *v28;
                }

                while (v28);
              }

              else
              {
                do
                {
                  v29 = v25[2];
                  v30 = *v29 == v25;
                  v25 = v29;
                }

                while (!v30);
              }

              v26 += v27;
              v25 = v29;
            }

            while (v29 != v10);
          }

          if (v26 == v24)
          {
            v33 = *(a1 + 40);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *&buf[4] = v24;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %zu uncommenced transaction(s) remaining. Triggering push again", buf, 0xCu);
            }

            *buf = 0u;
            v37 = 0u;
            sub_100712FEC(buf, (a1 + 176));
            BasebandSettings::fileTransferCleanup_sync(a1, v12);
            (*(**(a1 + 608) + 48))(*(a1 + 608), 0);
            BasebandSettings::sendLinedupFiles_sync(a1, buf);
            sub_10070CE94(buf);
          }
        }

        else
        {
          v31 = *v8;
          if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
          {
            v32 = asString();
            *buf = 136315138;
            *&buf[4] = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I No pending transaction. Cleaning up with result: %s", buf, 0xCu);
          }

          BasebandSettings::fileTransferCleanup_sync(a1, 1);
          (*(**(a1 + 608) + 48))(*(a1 + 608), 0);
        }

        return;
      }

      if (v23)
      {
        v34 = asString();
        *buf = 136315138;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Final file transfer result: %s", buf, 0xCu);
      }

      if (a3)
      {
        BasebandSettings::resetBBAfterFileTransferComplete_sync(a1, a3 == 1);
      }

      else if ((a3 & 0x100000000) != 0)
      {
        BasebandSettings::triggerRFSSync_sync(a1);
      }

      BasebandSettings::fileTransferCleanup_sync(a1, a3 == 0);
    }
  }
}

void sub_10070581C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10070CE94(va);
  _Unwind_Resume(a1);
}

void sub_10070584C(uint64_t a1, unsigned int *a2)
{
  v8 = 0;
  v2 = *a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/baseband_refresh_complete");
  object = v8;
  v8 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_1007058F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void BasebandSettings::maybeAbortPendingTransactionsAndClearCache_sync(uint64_t a1, uint64_t a2)
{
  if (capabilities::ct::supportsCompleteCleanupOnFilePushFailure(a1))
  {
    v3 = *(a1 + 624);
    if (v3 != (a1 + 632))
    {
      do
      {
        v4 = v3[5];
        v5 = v3[6];
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v4 + 64))(v4);
        if (v5)
        {
          sub_100004A34(v5);
        }

        v6 = v3[1];
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
            v7 = v3[2];
            v8 = *v7 == v3;
            v3 = v7;
          }

          while (!v8);
        }

        v3 = v7;
      }

      while (v7 != (a1 + 632));
    }

    v9 = *(a1 + 648);
    if (v9 != (a1 + 656))
    {
      do
      {
        v10 = v9[5] == 0;
        v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v9 + 8));
        v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v12)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Clearing pending transaction", buf, 2u);
          }

          v16 = sub_1001FE8C8((a1 + 648), v9);
        }

        else
        {
          if (v12)
          {
            v13 = asString();
            *buf = 136315138;
            v18 = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Aborting transaction with result: %s", buf, 0xCu);
          }

          FilePushTransaction::markFailureWithResult();
          v14 = v9[6];
          v9[5] = 0;
          v9[6] = 0;
          if (v14)
          {
            sub_100004A34(v14);
          }

          v15 = v9[1];
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
              v16 = v9[2];
              v8 = *v16 == v9;
              v9 = v16;
            }

            while (!v8);
          }
        }

        v9 = v16;
      }

      while (v16 != (a1 + 656));
    }
  }
}

void sub_100705B80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::fileTransferCleanup_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  (*(**(a1 + 608) + 40))(*(a1 + 608), 128, 0);
  if (v2)
  {
    (*(**(a1 + 608) + 48))(*(a1 + 608), 0);
  }

  v4 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  *(a1 + 316) = 3;
  if (*(a1 + 200))
  {
    sub_100706AC8(a1 + 176, v2);
  }

  v8 = 0;
  sub_100713A8C(a1 + 176, v7);
  sub_10070CE94(v7);
  v5 = *(a1 + 528);
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 512);
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100705CD4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void BasebandSettings::sendLinedupFiles_sync(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v4 = *(a1 + 624);
  v5 = (a1 + 632);
  if (v4 != (a1 + 632))
  {
    do
    {
      if ((*(*v4[5] + 80))(v4[5], 0))
      {
        v6 = *(v4 + 8);
        v7 = v4[6];
        v31[0] = v4[5];
        v31[1] = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10070650C(&v32, v6, v31);
        if (v7)
        {
          sub_100004A34(v7);
        }
      }

      if ((*(*v4[5] + 80))(v4[5], 8))
      {
        v8 = *(v4 + 8);
        v9 = v4[6];
        v30[0] = v4[5];
        v30[1] = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10070650C(&v32, v8, v30);
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      if ((*(*v4[5] + 80))(v4[5], 6))
      {
        v10 = (*(*v4[5] + 80))(v4[5], 0);
        if ((v10 & 1) == 0)
        {
          if (capabilities::ct::requiresMultipleFilesPush(v10))
          {
            BasebandSettings::lineupFile_sync(a1, *(v4 + 8), 0, 0);
          }
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
    }

    while (v12 != v5);
  }

  if ((*(**(a1 + 608) + 56))(*(a1 + 608)))
  {
    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v28) = 0;
    v15 = "#E File transfer is already in progress";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v28, 2u);
    return;
  }

  if (*(a2 + 24))
  {
    sub_100706668((a1 + 176), a2);
  }

  if (*(a1 + 496) == 1)
  {
    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v28) = 0;
    v15 = "#I Radio is down. Pending file transfer until it's ready";
    goto LABEL_30;
  }

  v16 = dispatch_group_create();
  v17 = v16;
  if (v16)
  {
    dispatch_retain(v16);
    dispatch_group_enter(v17);
  }

  v18 = *(a1 + 168);
  *(a1 + 168) = v17;
  if (v18)
  {
    dispatch_group_leave(v18);
    dispatch_release(v18);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  v19 = *(a1 + 624);
  if (v19 == v5)
  {
LABEL_57:
    v27 = *(a1 + 40);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I No files to push after all", &v28, 2u);
    }

    BasebandSettings::fileTransferCleanup_sync(a1, 1);
  }

  else
  {
    v20 = 0;
    while (1)
    {
      (*(*v19[5] + 96))(&v28);
      v21 = v28;
      if (v29)
      {
        sub_100004A34(v29);
      }

      if (v21)
      {
        break;
      }

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
          v13 = *v23 == v19;
          v19 = v23;
        }

        while (!v13);
      }

      v20 |= v21 != 0;
      v19 = v23;
      if (v23 == v5)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_57;
        }

        break;
      }
    }

    (*(**(a1 + 608) + 48))(*(a1 + 608), 1);
    v24 = *(a1 + 624);
    if (v24 != v5)
    {
      do
      {
        (*(*v24[5] + 104))(v24[5], a1 + 96, *(a1 + 316));
        v25 = v24[1];
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
            v26 = v24[2];
            v13 = *v26 == v24;
            v24 = v26;
          }

          while (!v13);
        }

        v24 = v26;
      }

      while (v26 != v5);
    }

    BasebandSettings::acquireResourceAndSendFiles_sync(a1);
  }
}

void sub_10070612C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::resetLastBasebandPriVersions_sync(BasebandSettings *this)
{
  v1 = *(this + 78);
  v2 = this + 632;
  if (v1 != this + 632)
  {
    do
    {
      v3 = *(v1 + 5);
      v4 = *(v1 + 6);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v3 + 72))(v3);
      if (v4)
      {
        sub_100004A34(v4);
      }

      v5 = *(v1 + 1);
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
          v6 = *(v1 + 2);
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v1 = v6;
    }

    while (v6 != v2);
  }
}

void sub_1007061F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::handleLastFilePushComplete_sync(BasebandSettings *this)
{
  (*(**(this + 76) + 40))(*(this + 76), 32, 0);
  BasebandSettingsDriver::handleFileTransferComplete(*(this + 16));
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 83);
    LODWORD(v13) = 134217984;
    *(&v13 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#N All files have been pushed. Resetting %lu transaction(s)", &v13, 0xCu);
  }

  (*(**(this + 76) + 40))(*(this + 76), 64, 0);
  v4 = *(this + 81);
  if (v4 != (this + 656))
  {
    do
    {
      BasebandSettings::getModel_sync(this, *(v4 + 8), &v13);
      v5 = (*(*v13 + 88))(v13);
      v6 = *(&v13 + 1);
      if (*(&v13 + 1))
      {
        sub_100004A34(*(&v13 + 1));
      }

      if (v5)
      {
        v7 = *(*(**(this + 6) + 16))(*(this + 6), *(v4 + 8));
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v13) = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Found uncommenced transaction. Will have to be handled next time", &v13, 2u);
        }
      }

      else
      {
        if (capabilities::ct::supportsNVRAMUpdateWithoutBasebandReboot(v6))
        {
          v8 = *(v4 + 5);
          if (v8)
          {
            if ((FilePushTransaction::hasFailed(v8) & 1) == 0)
            {
              BasebandSettings::triggerPriRefreshStart_sync(this, *(v4 + 8));
            }
          }
        }

        v9 = *(v4 + 6);
        *(v4 + 5) = 0;
        *(v4 + 6) = 0;
        if (v9)
        {
          sub_100004A34(v9);
        }
      }

      v10 = *(v4 + 1);
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
          v11 = *(v4 + 2);
          v12 = *v11 == v4;
          v4 = v11;
        }

        while (!v12);
      }

      v4 = v11;
    }

    while (v11 != (this + 656));
  }
}

void sub_100706464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::sendLinedupFiles(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_100713258;
  block[3] = &unk_101E75368;
  block[4] = a1 + 8;
  block[5] = v4;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void sub_10070650C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  if (((*(**a3 + 80))(*a3, 6) & 1) == 0)
  {
    BasebandSettings::lineupFile_sync(v5, a2, 6, 0);
  }

  if (((*(**a3 + 80))(*a3, 8) & 1) == 0)
  {
    BasebandSettings::lineupFile_sync(v5, a2, 8, 0);
  }

  if (((*(**a3 + 80))(*a3, 9) & 1) == 0)
  {
    BasebandSettings::lineupFile_sync(v5, a2, 9, 0);
  }

  if (((*(**a3 + 80))(*a3, 10) & 1) == 0)
  {

    BasebandSettings::lineupFile_sync(v5, a2, 10, 0);
  }
}

void *sub_100706668(void *a1, uint64_t a2)
{
  sub_100713264(v4, a2);
  sub_100712FEC(v4, a1);
  sub_10070CE94(v4);
  return a1;
}

void BasebandSettings::acquireResourceAndSendFiles_sync(BasebandSettings *this)
{
  if ((*(**(this + 76) + 56))(*(this + 76)))
  {
    v2 = dispatch_group_create();
    if (!*(this + 63))
    {
      sub_10000501C(&__p, "/cc/exclusive_assertions/baseband_operation");
      ctu::rest::AssertionHandle::create();
      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p);
      }

      v3 = *(this + 64);
      *(this + 504) = v13;
      if (v3)
      {
        sub_100004A34(v3);
      }

      if (v2)
      {
        dispatch_retain(v2);
        dispatch_group_enter(v2);
      }

      v13 = this;
      *&__p = off_101E75398;
      *(&__p + 1) = this;
      v15 = v2;
      p_p = &__p;
      ctu::rest::AssertionHandle::setHandler_impl();
      sub_10000FF50(&__p);
    }

    if (!*(this + 65))
    {
      v4 = *(this + 68);
      if (v4 && (v4 = std::__shared_weak_count::lock(v4)) != 0)
      {
        v5 = *(this + 67);
      }

      else
      {
        v5 = 0;
      }

      *(this + 65) = v5;
      v6 = *(this + 66);
      *(this + 66) = v4;
      if (v6)
      {
        sub_100004A34(v6);
        v5 = *(this + 65);
      }

      if (v5)
      {
        v7 = *(this + 5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = CSIBOOLAsString(*(v5 + 68) == 2);
          LODWORD(__p) = 136315138;
          *(&__p + 4) = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Shared prevent baseband reset assertion used. Acquired: %s", &__p, 0xCu);
        }

        (*(**(this + 76) + 40))(*(this + 76), 8, "Prevent baseband reset assertion shared");
      }

      else
      {
        sub_10000501C(&__p, "/cc/assertions/prevent_baseband_reset");
        ctu::rest::AssertionHandle::create();
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p);
        }

        v9 = *(&v13 + 1);
        *(this + 65) = v13;
        v10 = *(this + 66);
        *(this + 66) = *(&v13 + 1);
        if (v10)
        {
          sub_100004A34(v10);
          v9 = *(this + 66);
        }

        v11 = *(this + 65);
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
        }

        *(this + 67) = v11;
        v12 = *(this + 68);
        *(this + 68) = v9;
        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }

        if (capabilities::ct::supportsCompleteCleanupOnFilePushFailure(v12) && *(*(this + 65) + 68) != 2)
        {
          if (v2)
          {
            dispatch_retain(v2);
            dispatch_group_enter(v2);
          }

          *&__p = off_101E75418;
          *(&__p + 1) = this;
          v15 = v2;
          p_p = &__p;
          ctu::rest::AssertionHandle::setHandler_impl();
          sub_10000FF50(&__p);
        }
      }
    }

    operator new();
  }
}

void sub_100706A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_10000FF50(&__p);
  sub_10065F7C8(&a11);
  sub_10065F7C8(&a9);
  if (v18)
  {
    dispatch_release(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100706AC8(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void BasebandSettings::sendNextLinedUpFile_sync(BasebandSettings *this)
{
  v2 = *(this + 78);
  v3 = this + 632;
  if (v2 == this + 632)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      (*(**(v2 + 5) + 96))(&v13);
      v6 = v13;
      v5 = v14;
      v13 = 0;
      v14 = 0;
      if (v4)
      {
        sub_100004A34(v4);
        if (v14)
        {
          sub_100004A34(v14);
        }
      }

      if (v6)
      {
        v11 = *(this + 76);
        v12 = asString(*(v6 + 84));
        (*(*v11 + 40))(v11, 16, v12);
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = 0;
        operator new();
      }

      v7 = *(v2 + 1);
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
          v8 = *(v2 + 2);
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v4 = v5;
      v2 = v8;
    }

    while (v8 != v3);
  }

  v10 = *(this + 5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No more files to push", &v13, 2u);
  }

  BasebandSettings::handleLastFilePushComplete_sync(this);
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_100706D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000FF50(va);
  if (v7)
  {
    sub_100004A34(v7);
  }

  _Unwind_Resume(a1);
}

void BasebandSettings::handleFilePushCompletion(uint64_t a1, int a2, char a3, char a4)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void BasebandSettings::basebandSettingsDriverEnterLowPower(BasebandSettings *this, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void BasebandSettings::applicationProcessorStatus(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N AP %s status failed", &v4, 0xCu);
    }
  }
}

void BasebandSettings::registerCallbacks_sync(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[12]);
  v3 = ServiceMap;
  v4 = "11CCXpcServer";
  if (("11CCXpcServer" & 0x8000000000000000) != 0)
  {
    v5 = ("11CCXpcServer" & 0x7FFFFFFFFFFFFFFFLL);
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
        goto LABEL_7;
      }

      goto LABEL_12;
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
    v12 = this[5];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Could not get XPC Server to register tethering assertion status", buf, 2u);
      if (v11)
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (v11)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_12:
  TetheringAssertion::name(buf);
  v13 = this[3];
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_100707280;
  aBlock[3] = &unk_101E74428;
  aBlock[4] = this;
  v15 = _Block_copy(aBlock);
  sub_100A5FBA8(buf, &object, &v15, &v19);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(*buf);
  if (v11)
  {
    return;
  }

LABEL_22:
  sub_100004A34(v9);
}

void sub_10070722C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandSettings::sendAPTetheringStatus_sync(BasebandSettings *this, uint64_t a2)
{
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = CSIBOOLAsString(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received call on tethering up: %s", &v6, 0xCu);
  }

  return (*(**(this + 16) + 112))(*(this + 16), a2);
}

void BasebandSettings::sendAPTetheringStatus(BasebandSettings *this, char a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, this + 1);
  operator new();
}

void BasebandSettings::activateTurboMode(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1000224C8(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void sub_100707574(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t BasebandSettings::activateTurboMode_sync(NSObject **a1, uint64_t a2)
{
  v4 = capabilities::ct::supportsTurboMode(a1);
  v5 = a1[5];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Activating turbo mode.", v9, 2u);
    }

    v7 = a1[16];
    sub_1000224C8(v10, a2);
    (*(v7->isa + 23))(v7, v10);
    return sub_10000FF50(v10);
  }

  else
  {
    if (v6)
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I This device does not support turbo mode.", v9, 2u);
    }

    return sub_10000FFD0(a2, 0);
  }
}

void sub_1007076B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

void BasebandSettings::getSupportsTARandomization(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10071472C(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_100707810(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t BasebandSettings::getSupportsTARandomizationFromDeviceAndCarrierBundle_sync(uint64_t a1, uint64_t a2)
{
  Registry::getTelephonyCapabilities(buf, *(a1 + 96));
  v4 = (*(**buf + 88))(*buf);
  if (v25)
  {
    sub_100004A34(v25);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
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
        goto LABEL_9;
      }

LABEL_15:
      *buf = 0;
      (*(*v13 + 96))(&v23, v13, a2, 1, @"ShowTARandomizationSwitch", kCFBooleanTrue, 0);
      sub_10002FE1C(buf, &v23);
      sub_10000A1EC(&v23);
      LOBYTE(v23) = 1;
      ctu::cf::assign(&v23, *buf, v17);
      v16 = v23;
      sub_100045C8C(buf);
      if (v14)
      {
        goto LABEL_17;
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
  if (v13)
  {
    goto LABEL_15;
  }

LABEL_9:
  v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
  {
    sub_10177BFDC();
  }

  v16 = 1;
  if ((v14 & 1) == 0)
  {
LABEL_16:
    sub_100004A34(v12);
  }

LABEL_17:
  if (v13)
  {
    v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if ((v4 & v16) == 0)
    {
      if (v19)
      {
        *buf = 67109376;
        *&buf[4] = v4;
        LOWORD(v25) = 1024;
        *(&v25 + 2) = v16 & 1;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I This device (%{BOOL}d) or carrier (%{BOOL}d) does not support TA randomization", buf, 0xEu);
      }

      v20 = 0;
      goto LABEL_25;
    }

    v20 = 1;
    v21 = 1;
    if (v19)
    {
      *buf = 67109376;
      *&buf[4] = 1;
      LOWORD(v25) = 1024;
      *(&v25 + 2) = 1;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I This device (%{BOOL}d) and carrier (%{BOOL}d) supports TA randomization", buf, 0xEu);
LABEL_25:
      v21 = 1;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  return v20 | (v21 << 8);
}

void sub_100707B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandSettings::getSupportsTARandomization_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SupportsTARandomizationFromDeviceAndCarrierBundle_sync = BasebandSettings::getSupportsTARandomizationFromDeviceAndCarrierBundle_sync(a1, a2);
  if ((SupportsTARandomizationFromDeviceAndCarrierBundle_sync & 0x100) != 0)
  {
    v6 = SupportsTARandomizationFromDeviceAndCarrierBundle_sync & 1;
    v5 = a3;
    v7 = 0;
  }

  else
  {
    v5 = a3;
    v6 = 0;
    v7 = 0x2D00000001;
  }

  return sub_100707C10(v5, v6, v7);
}

uint64_t sub_100707C10(uint64_t a1, char a2, uint64_t a3)
{
  v6 = a3;
  v5 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v5, &v6);
}

uint64_t BasebandSettings::getTARandomizationSetting(uint64_t a1, int a2)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_100714954;
  v7[3] = &unk_101E75538;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1007149CC;
    v12 = &unk_101E75578;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_100714990;
    v12 = &unk_101E75558;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15;
}

uint64_t BasebandSettings::getTARandomizationSettingFromUserPrefOrCarrierBundle_sync(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 96);
  Registry::getTelephonyCapabilities(&__p, *(a1 + 96));
  v5 = (*(*__p + 88))(__p);
  if (v40)
  {
    sub_100004A34(v40);
  }

  if (v5)
  {
    ServiceMap = Registry::getServiceMap(*v4);
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
    __p = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &__p);
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
LABEL_10:
          v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
          {
            sub_10177C044();
          }

          TARandomizationSettingUsingImeiPopulation_sync = 0;
          v18 = 0;
LABEL_44:
          if ((v15 & 1) == 0)
          {
            sub_100004A34(v13);
          }

          return TARandomizationSettingUsingImeiPopulation_sync | (v18 << 8);
        }

LABEL_18:
        __p = 0;
        v40 = 0;
        v41 = 0;
        PersonalityIdFromSlotId();
        v38 = 0;
        (*(*v14 + 64))(buf, v14, &__p, @"kTARandomizationSwitchStateKey", 0, 0, 1);
        sub_10002FE1C(&v38, buf);
        sub_10000A1EC(buf);
        if (v38)
        {
          buf[0] = 0;
          ctu::cf::assign(buf, v38, v20);
          TARandomizationSettingUsingImeiPopulation_sync = buf[0];
          v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = CSIBOOLAsString(TARandomizationSettingUsingImeiPopulation_sync);
            *buf = 136315138;
            *&buf[4] = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I TA randomization preference set by user to %s", buf, 0xCu);
          }

LABEL_41:
          v18 = 1;
LABEL_42:
          sub_100045C8C(&v38);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_44;
        }

        v23 = Registry::getServiceMap(*v4);
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
            if (!v31)
            {
              sub_100004A34(v30);
LABEL_29:
              v32 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
              if (os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
              {
                sub_10177BFDC();
              }

              TARandomizationSettingUsingImeiPopulation_sync = 0;
              v18 = 0;
              goto LABEL_42;
            }
          }

          else
          {
            std::mutex::unlock(v24);
            if (!v31)
            {
              goto LABEL_29;
            }
          }

          v37 = 0;
          (*(*v31 + 96))(buf, v31, a2, 1, @"EnableTARandomizationByDefault", 0, 0);
          sub_10002FE1C(&v37, buf);
          sub_10000A1EC(buf);
          if (v37)
          {
            buf[0] = 0;
            ctu::cf::assign(buf, v37, v33);
            TARandomizationSettingUsingImeiPopulation_sync = buf[0];
            v34 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = "disabled";
              if (TARandomizationSettingUsingImeiPopulation_sync)
              {
                v35 = "enabled";
              }

              *buf = 136315138;
              *&buf[4] = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I TA randomization %s by default", buf, 0xCu);
            }
          }

          else
          {
            TARandomizationSettingUsingImeiPopulation_sync = BasebandSettings::getTARandomizationSettingUsingImeiPopulation_sync(a1, a2);
          }

          sub_100045C8C(&v37);
          if (v30)
          {
            sub_100004A34(v30);
          }

          goto LABEL_41;
        }

        std::mutex::unlock(v24);
        goto LABEL_29;
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
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
  {
    sub_10177C010();
  }

  TARandomizationSettingUsingImeiPopulation_sync = 0;
  v18 = 0;
  return TARandomizationSettingUsingImeiPopulation_sync | (v18 << 8);
}

void sub_1007082F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_100045C8C(&a10);
  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_100045C8C(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandSettings::getTARandomizationSettingUsingImeiPopulation_sync(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
  __str.__r_.__value_.__r.__words[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &__str);
  if (!v10)
  {
    std::mutex::unlock(v5);
    return 0;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    std::mutex::unlock(v5);
    if (v12)
    {
      goto LABEL_11;
    }

    return 0;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  if (!v12)
  {
    v13 = 0;
LABEL_21:
    sub_100004A34(v11);
    return v13;
  }

LABEL_11:
  v35 = 0;
  (*(*v12 + 96))(&__str, v12, a2, 1, @"EnableTARandomizationForPopulation", 0, 0);
  sub_10010B240(&v35, &__str.__r_.__value_.__l.__data_);
  sub_10000A1EC(&__str.__r_.__value_.__l.__data_);
  __str.__r_.__value_.__r.__words[0] = 0;
  ctu::cf::assign(&__str, v35, v14);
  v15 = __str.__r_.__value_.__r.__words[0];
  if (!__str.__r_.__value_.__r.__words[0])
  {
    goto LABEL_20;
  }

  v16 = *(a1 + 296);
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = a1 + 296;
  do
  {
    if (*(v16 + 32) >= a2)
    {
      v17 = v16;
    }

    v16 = *(v16 + 8 * (*(v16 + 32) < a2));
  }

  while (v16);
  if (v17 == a1 + 296 || *(v17 + 32) > a2)
  {
LABEL_19:
    v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_20;
    }

    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    v30 = "Could not find IMEI";
    goto LABEL_43;
  }

  v20 = (v17 + 40);
  v21 = *(v17 + 63);
  if (v21 < 0)
  {
    v22 = *(v17 + 40);
    v23 = *(v17 + 48);
    if (v23)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v22 = (v17 + 40);
    v23 = *(v17 + 63);
    if (*(v17 + 63))
    {
LABEL_27:
      while (1)
      {
        v24 = *v22;
        if (v24 < 0 || (_DefaultRuneLocale.__runetype[v24] & 0x400) == 0)
        {
          break;
        }

        ++v22;
        if (!--v23)
        {
          goto LABEL_30;
        }
      }

      v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        if (*(v17 + 63) < 0)
        {
          v20 = *v20;
        }

        LODWORD(__str.__r_.__value_.__l.__data_) = 136380675;
        *(__str.__r_.__value_.__r.__words + 4) = v20;
        v30 = "Could not convert IMEI %{private}s to an unsigned integer";
        v31 = v29;
        v32 = 12;
        goto LABEL_44;
      }

      goto LABEL_20;
    }
  }

LABEL_30:
  if ((v21 & 0x80000000) != 0)
  {
    v21 = *(v17 + 48);
    if (v21)
    {
LABEL_32:
      memset(&__str, 0, sizeof(__str));
      std::string::basic_string(&__str, (v17 + 40), 0, v21 - 1, buf);
      v25 = std::stoul(&__str, 0, 10) % 0x64;
      v26 = *(**(a1 + 48) + 16);
      if (v25 <= v15)
      {
        v33 = *v26();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          p_str = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          *buf = 136380931;
          v37 = p_str;
          v38 = 2048;
          v39 = v15;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Enabling TA randomization due to IMEI %{private}s included in population enablement %zu", buf, 0x16u);
        }

        v13 = 1;
      }

      else
      {
        v27 = *v26();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v28 = __str.__r_.__value_.__r.__words[0];
          }

          *buf = 136380931;
          v37 = v28;
          v38 = 2048;
          v39 = v15;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Leaving TA randomization disabled due to IMEI %{private}s above population enablement %zu", buf, 0x16u);
        }

        v13 = 0;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      sub_100029A48(&v35);
      if (v11)
      {
        goto LABEL_21;
      }

      return v13;
    }
  }

  else if (*(v17 + 63))
  {
    goto LABEL_32;
  }

  v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__str.__r_.__value_.__l.__data_) = 0;
    v30 = "IMEI is empty";
LABEL_43:
    v31 = v18;
    v32 = 2;
LABEL_44:
    _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v30, &__str, v32);
  }

LABEL_20:
  sub_100029A48(&v35);
  v13 = 0;
  if (v11)
  {
    goto LABEL_21;
  }

  return v13;
}

void sub_1007088D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2 == 2)
  {
    v24 = __cxa_begin_catch(a1);
    v25 = *(*(**(v22 + 48) + 16))(*(v22 + 48), v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_10177C078(&__p, v24, v25);
    }

    __cxa_end_catch();
    JUMPOUT(0x100708720);
  }

  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100029A48(&a10);
  if (v20)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void BasebandSettings::setTARandomizationUserSetting(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  sub_100014110(&v8, a4);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100708B1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void BasebandSettings::setTARandomizationUserSetting_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 96);
  Registry::getTelephonyCapabilities(&__p, *(a1 + 96));
  v9 = (*(*__p + 88))(__p);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (v9)
  {
    ServiceMap = Registry::getServiceMap(*v8);
    v11 = ServiceMap;
    if (v12 < 0)
    {
      v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
      v14 = 5381;
      do
      {
        v12 = v14;
        v15 = *v13++;
        v14 = (33 * v14) ^ v15;
      }

      while (v15);
    }

    std::mutex::lock(ServiceMap);
    __p = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &__p);
    if (v16)
    {
      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v19 = 0;
        if (!v18)
        {
LABEL_10:
          v20 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
          {
            sub_10177C044();
          }

          sub_100022FB0(a4, 0x2D00000001);
LABEL_41:
          if ((v19 & 1) == 0)
          {
            sub_100004A34(v17);
          }

          return;
        }

LABEL_18:
        __p = 0;
        v38 = 0;
        v39 = 0;
        PersonalityIdFromSlotId();
        v36 = 0;
        (*(*v18 + 64))(buf, v18, &__p, @"kTARandomizationSwitchStateKey", 0, 0, 1);
        sub_10002FE1C(&v36, buf);
        sub_10000A1EC(buf);
        if (!v36)
        {
          goto LABEL_22;
        }

        buf[0] = 0;
        ctu::cf::assign(buf, v36, v22);
        v23 = buf[0];
        v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = CSIBOOLAsString(v23);
          v26 = CSIBOOLAsString(a3);
          *buf = 136315394;
          v41 = v25;
          v42 = 2080;
          v43 = v26;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I TA randomization preference previously set by user to %s, new preference: %s", buf, 0x16u);
        }

        if (v23 == a3)
        {
          v30 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I TA randomization preference is not changing", buf, 2u);
          }
        }

        else
        {
LABEL_22:
          v27 = &kCFBooleanTrue;
          if (!a3)
          {
            v27 = &kCFBooleanFalse;
          }

          if ((*(*v18 + 48))(v18, &__p, @"kTARandomizationSwitchStateKey", *v27, 0, 0, 1, 0))
          {
            v28 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
            {
              v29 = CSIBOOLAsString(a3);
              sub_10177C178(v29, buf);
            }

            sub_100022FB0(a4, 0x2D00000001);
            goto LABEL_39;
          }

          v31 = *(a1 + 112);
          if (v31)
          {
            (*(*v31 + 48))(v31, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
            v32 = *(a1 + 40);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Finished synchronizing TA randomization user preference", buf, 2u);
            }
          }

          else
          {
            v33 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(*v33, OS_LOG_TYPE_ERROR))
            {
              sub_10177C1B0();
            }
          }

          (*(**(a1 + 128) + 192))(*(a1 + 128), a2, a3);
          BasebandSettings::sendTARandomizationSwitchState_sync(a1, a2, 1, a3);
          v34 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = CSIBOOLAsString(a3);
            *buf = 136315138;
            v41 = v35;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Successfully saved user preference for TA randomization: %s", buf, 0xCu);
          }
        }

        sub_100022FB0(a4, 0);
LABEL_39:
        sub_100045C8C(&v36);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v21 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
  {
    sub_10177C144();
  }

  sub_100022FB0(a4, 0x2D00000001);
}

void sub_100709184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  sub_100045C8C(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(a1);
}

void BasebandSettings::sendTARandomizationSwitchState_sync(uint64_t a1, uint64_t a2, analytics *a3, BOOL a4)
{
  if (a2)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
    v13 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v13);
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
        if (!v12)
        {
          sub_100004A34(v11);
          return;
        }

LABEL_11:
        operator new();
      }

      std::mutex::unlock(v5);
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      std::mutex::unlock(v5);
    }
  }
}

void sub_1007093DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  (*(*v15 + 8))(v15, a2, a3, a4, a5, a6, a7, a8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t BasebandSettings::significantTimeChange_sync(BasebandSettings *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Time is being set on baseband", v5, 2u);
  }

  v3 = *(this + 16);
  v5[0] = off_101E755A8;
  v5[3] = v5;
  (*(*v3 + 64))(v3, v5);
  return sub_100714C10(v5);
}

uint64_t BasebandSettings::handleBatterySaverMode_sync(uint64_t this, int a2)
{
  if (*(this + 312) != a2)
  {
    return (*(**(this + 128) + 152))();
  }

  return this;
}

uint64_t BasebandSettings::handleInMetroStatus_sync(uint64_t this, int a2)
{
  if (*(this + 313) != a2)
  {
    return (*(**(this + 128) + 176))();
  }

  return this;
}

void BasebandSettings::handleRadioRFDisablingEvent_sync(BasebandSettings *this)
{
  *(this + 162) = 1;
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = CSIBOOLAsString(1);
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I RF is being disabled, setting user initiated airplane mode on to %s", &v2, 0xCu);
  }
}

void BasebandSettings::handleRadioRFDisabledEvent_sync(BasebandSettings *this)
{
  *(this + 161) = 1;
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315138;
    v3 = CSIBOOLAsString(1);
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I RF has been disabled, setting airplane mode on to %s", &v2, 0xCu);
  }
}

uint64_t BasebandSettings::handleRadioOn_sync(BasebandSettings *this)
{
  *(this + 161) = 0;
  result = capabilities::ct::supportsBatterySaverMode(this);
  if (result)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sending battery saver mode since BB came online", v4, 2u);
    }

    return (*(**(this + 16) + 152))(*(this + 16), *(this + 312));
  }

  return result;
}

void BasebandSettings::handleRadioModeChanged_sync(uint64_t a1, uint64_t a2)
{
  if ((operator==() & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = asString();
      v5 = CSIBOOLAsString(*(a1 + 492));
      v7 = 136315394;
      v8 = v4;
      v9 = 2080;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received radio mode update (%s) with in reset (%s)", &v7, 0x16u);
    }

    v6 = *(a1 + 488);
    if (v6)
    {
      if (v6 == 2)
      {
        BasebandSettings::handleRadioOn_sync(a1);
      }
    }

    else
    {
      BasebandSettings::handleRadioRFDisabledEvent_sync(a1);
    }
  }
}

uint64_t BasebandSettings::handleRadioDownChanged_sync(uint64_t this, int a2)
{
  v2 = *(this + 496);
  if (v2 != a2)
  {
    v3 = this;
    v4 = *(this + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "up";
      if (v2)
      {
        v5 = "down";
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received radio going '%s'", &v6, 0xCu);
    }

    (*(**(v3 + 76) + 48))(*(v3 + 76), 0);
    if (v2)
    {
      BasebandSettings::maybeAbortPendingTransactionsAndClearCache_sync(v3, 3);
      BasebandSettings::resetLastBasebandPriVersions_sync(v3);
      return (*(**(v3 + 16) + 200))(*(v3 + 16));
    }

    else
    {
      v8 = 0;
      BasebandSettings::sendLinedupFiles_sync(v3, &v6);
      return sub_10070CE94(&v6);
    }
  }

  return this;
}

void BasebandSettings::handleSaveDataModeChanged_sync(void *result, void *a2)
{
  if (a2[2] == result[102])
  {
    v4 = a2 + 1;
    v5 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v6 = result[100];
    while (*(v5 + 7) == *(v6 + 7) && rest::operator==())
    {
      v7 = v5[1];
      v8 = v5;
      if (v7)
      {
        do
        {
          v5 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v5 = v8[2];
          v9 = *v5 == v8;
          v8 = v5;
        }

        while (!v9);
      }

      v10 = v6[1];
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
          v11 = v6[2];
          v9 = *v11 == v6;
          v6 = v11;
        }

        while (!v9);
      }

      v6 = v11;
      if (v5 == v4)
      {
        return;
      }
    }
  }

  v12 = result[100];
  if (v12 != result + 101)
  {
    v13 = a2 + 1;
    while (1)
    {
      v14 = *v13;
      v15 = *(v12 + 7);
      if (!*v13)
      {
        goto LABEL_29;
      }

      v16 = v13;
      do
      {
        if (*(v14 + 28) >= v15)
        {
          v16 = v14;
        }

        v14 = *(v14 + 8 * (*(v14 + 28) < v15));
      }

      while (v14);
      if (v16 == v13 || v15 < *(v16 + 7))
      {
        goto LABEL_29;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_30:
      v17 = v12[1];
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
          v18 = v12[2];
          v9 = *v18 == v12;
          v12 = v18;
        }

        while (!v9);
      }

      v12 = v18;
      if (v18 == result + 101)
      {
        return;
      }
    }

    v15 = *(v12 + 7);
LABEL_29:
    BasebandSettings::sendSmartDataModeToBB_sync(result, v15);
    goto LABEL_30;
  }
}

void BasebandSettings::sendSmartDataModeToBB_sync(uint64_t a1, uint64_t a2)
{
  if (capabilities::ct::supports5G(a1))
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sending smart data mode settings for %s to baseband", &buf, 0xCu);
    }

    subscriber::makeSimSlotRange();
    v5 = *(&buf + 1);
    v4 = buf;
    if (buf != *(&buf + 1))
    {
      v6 = v15;
      do
      {
        if (v6(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != v5);
      v7 = *(&buf + 1);
      if (v4 != *(&buf + 1))
      {
        v8 = (a1 + 808);
        do
        {
          v9 = *v4;
          v10 = *v8;
          if (!*v8)
          {
            goto LABEL_17;
          }

          v11 = a1 + 808;
          do
          {
            if (*(v10 + 28) >= v9)
            {
              v11 = v10;
            }

            v10 = *(v10 + 8 * (*(v10 + 28) < v9));
          }

          while (v10);
          if (v11 != v8 && v9 >= *(v11 + 28))
          {
            (*(**(a1 + 128) + 160))(*(a1 + 128));
          }

          else
          {
LABEL_17:
            v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *v13 = 0;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Smart data mode settings unavailable", v13, 2u);
            }
          }

          do
          {
            ++v4;
          }

          while (v4 != v5 && (v6(*v4) & 1) == 0);
        }

        while (v4 != v7);
      }
    }
  }
}

void BasebandSettings::lteWithCDRXState(uint64_t a1, int a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void BasebandSettings::copyBundleSignature_sync(NSObject **a1@<X0>, const void **a3@<X8>)
{
  *a3 = 0;
  MyInstance = CBSignUtilityLogger::getMyInstance(a1);
  CBSignUtilityLogger::setLogFunction(MyInstance, sub_10070A198);
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  ctu::path_split();
  v18[0] = v21;
  v18[1] = v19;
  v6 = sub_1004EE0B4(v18, buf);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(*buf);
  }

  v7 = capabilities::ct::supportsECDSASignatures(v6);
  if (v7)
  {
    v8 = a1[5];
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v10 = v19;
      if (v20 < 0)
      {
        v10 = v19[0];
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Extracting version 3 of the %s signature", buf, 0xCu);
    }
  }

  else
  {
    v11 = capabilities::ct::supportsSHA2Signature(v7);
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = a1[5];
    v9 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      v13 = v19;
      if (v20 < 0)
      {
        v13 = v19[0];
      }

      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Extracting version 2 of the %s signature", buf, 0xCu);
    }
  }

  capabilities::ct::compatibleHardwareConfigurationString(v9);
  copyPRISignatureForDeviceNameOnSHA();
  if (&v17 != a3)
  {
    v14 = *a3;
    *a3 = v17;
    v17 = 0;
    v18[0] = v14;
    sub_10002D760(v18);
  }

  v11 = sub_10002D760(&v17);
  if (v24 < 0)
  {
    operator delete(*buf);
  }

LABEL_20:
  if (!*a3)
  {
    v15 = a1[5];
    v11 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_10177C1E4(v21, v19, v15);
    }
  }

  v16 = CBSignUtilityLogger::getMyInstance(v11);
  CBSignUtilityLogger::destroyMyInstance(v16);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }
}

void sub_10070A198(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_101FBAA28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAA28))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FBAA20, kCtLoggingSystemName, "set.bb");
    __cxa_guard_release(&qword_101FBAA28);
  }

  v2 = qword_101FBAA20;
  if (os_log_type_enabled(qword_101FBAA20, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s", &v3, 0xCu);
  }
}

void BasebandSettings::sendFile_sync(uint64_t a1, uint64_t a2, FileType a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v25 = *(a4 + 16);
  }

  ctu::path_join_impl();
  cf = 0;
  BasebandSettings::copyBundleSignature_sync(a1, &cf);
  v14 = sub_100322918();
  sub_1001210EC((a1 + 208), a8);
  v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a5 + 23) >= 0)
    {
      v16 = a5;
    }

    else
    {
      v16 = *a5;
    }

    v17 = a3;
    v18 = asString(a3);
    v19 = asString();
    if (*(a4 + 23) >= 0)
    {
      v20 = a4;
    }

    else
    {
      v20 = *a4;
    }

    *buf = 136315906;
    v27 = v16;
    v28 = 2080;
    v29 = v18;
    v30 = 2080;
    v31 = v19;
    v32 = 2082;
    v33 = v20;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Preparing to send the file %s (%s) format %s from %{public}s", buf, 0x2Au);
    a3 = v17;
  }

  BasebandSettingsDriver::sendFile(*(a1 + 128));
  SendFileProxy::fileType(buf, a3);
  SendFileProxy::fileName();
  SendFileProxy::bundlePath();
  SendFileProxy::filePathToBaseband();
  SendFileProxy::fileFormat();
  v22 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v21 = SendFileProxy::signature();
  SendFileProxy::bypassValidation(v21, v14);
  SendFileProxy::simInstance();
  sub_10002D760(&v22);
  SendFileProxy::~SendFileProxy(buf);
  sub_10002D760(&cf);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t BasebandSettings::handleDumpState_sync(BasebandSettings *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(this + 160));
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fRegisteredForCallbacks: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*(this + 161));
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fAirplaneModeOn: %s", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CSIBOOLAsString(*(this + 162));
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fUserInitiatedAirplaneMode: %s", buf, 0xCu);
  }

  v6 = *(this + 31);
  if (v6)
  {
    v7 = (this + 248);
    do
    {
      if (v6[7] >= 1)
      {
        v7 = v6;
      }

      v6 = *&v6[2 * (v6[7] < 1)];
    }

    while (v6);
    if (v7 != (this + 248) && v7[7] <= 1)
    {
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = asString();
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I fRegStatus: %s", buf, 0xCu);
      }
    }
  }

  v10 = *(this + 5);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = asString();
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I fFilePushReason: %s", buf, 0xCu);
    v10 = *(this + 5);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(this + 65);
    if (v12)
    {
      if (*(v12 + 68) == 2)
      {
        v13 = "granted";
      }

      else
      {
        v13 = "waiting";
      }
    }

    else
    {
      v13 = "none";
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Prevent baseband reset assertion: %s", buf, 0xCu);
    v10 = *(this + 5);
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(this + 63);
    if (v14)
    {
      if (*(v14 + 68) == 2)
      {
        v15 = "granted";
      }

      else
      {
        v15 = "waiting";
      }
    }

    else
    {
      v15 = "none";
    }

    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Exclusive baseband operation assertion: %s", buf, 0xCu);
  }

  v16 = *(this + 81);
  if (v16 != (this + 656))
  {
    do
    {
      v17 = *(*(**(this + 6) + 16))(*(this + 6), *(v16 + 8));
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v16 + 5))
        {
          v18 = "Active";
        }

        else
        {
          v18 = "Pending";
        }

        *buf = 136315138;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s file push transaction", buf, 0xCu);
      }

      v19 = *(v16 + 1);
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
          v20 = *(v16 + 2);
          v21 = *v20 == v16;
          v16 = v20;
        }

        while (!v21);
      }

      v16 = v20;
    }

    while (v20 != (this + 656));
  }

  v22 = *(this + 5);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = asString();
    *buf = 136315138;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I fLTEWithCDRXState: %s", buf, 0xCu);
  }

  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v50 = 0u;
  *__src = 0u;
  *__p = 0u;
  v46 = 0u;
  v47 = 0u;
  *buf = 0u;
  v45 = 0u;
  sub_10000C320(buf);
  v24 = *(this + 84);
  if (v24 != (this + 680))
  {
    do
    {
      v25 = subscriber::asString();
      v26 = strlen(v25);
      v27 = sub_10000C030(&v45, v25, v26);
      sub_10000C030(v27, ", ", 2);
      v28 = *(v24 + 1);
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = *(v24 + 2);
          v21 = *v29 == v24;
          v24 = v29;
        }

        while (!v21);
      }

      v24 = v29;
    }

    while (v29 != (this + 680));
  }

  v30 = *(this + 5);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    if ((BYTE8(v51) & 0x10) != 0)
    {
      v32 = v51;
      if (v51 < __src[1])
      {
        *&v51 = __src[1];
        v32 = __src[1];
      }

      v33 = __src[0];
    }

    else
    {
      if ((BYTE8(v51) & 8) == 0)
      {
        v31 = 0;
        v41 = 0;
LABEL_67:
        *(&__dst + v31) = 0;
        p_dst = &__dst;
        if (v41 < 0)
        {
          p_dst = __dst;
        }

        *v42 = 136446210;
        v43 = p_dst;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I fTurnedOffCellular: [%{public}s]", v42, 0xCu);
        if (v41 < 0)
        {
          operator delete(__dst);
        }

        goto LABEL_71;
      }

      v33 = *(&v46 + 1);
      v32 = *(&v47 + 1);
    }

    v31 = v32 - v33;
    if ((v32 - v33) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v31 >= 0x17)
    {
      operator new();
    }

    v41 = v32 - v33;
    if (v31)
    {
      memmove(&__dst, v33, v31);
    }

    goto LABEL_67;
  }

LABEL_71:
  v35 = *(this + 78);
  if (v35 != (this + 632))
  {
    do
    {
      (*(**(v35 + 5) + 16))(*(v35 + 5));
      v36 = *(v35 + 1);
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = *(v35 + 2);
          v21 = *v37 == v35;
          v35 = v37;
        }

        while (!v21);
      }

      v35 = v37;
    }

    while (v37 != (this + 632));
  }

  (*(**(this + 76) + 32))(*(this + 76));
  (*(**(this + 16) + 208))(*(this + 16));
  *&v45 = v38;
  if (SHIBYTE(v50) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v46);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10070ADCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t BasebandSettings::attachAPNSettingFromUIAllowed(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[74];
  if (v3)
  {
    sub_1000224C8(v15, a3);
    v5 = v15;
    (*(*v3 + 32))(v3, a2, v15);
  }

  else
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1174405120;
    v13[2] = sub_10070AFE0;
    v13[3] = &unk_101E74448;
    v13[4] = a1;
    v5 = v14;
    sub_1000224C8(v14, a3);
    v11 = 0;
    v12 = 0;
    sub_100004AA0(&v11, a1 + 1);
    v7 = a1[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_100714CE8;
    block[3] = &unk_101E75630;
    block[5] = v11;
    v10 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v13;
    dispatch_async(v7, block);
    if (v10)
    {
      sub_100004A34(v10);
    }

    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  return sub_10000FF50(v5);
}

void sub_10070AFB4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10070AFE0(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Attach APN module is not present, editing not allowed", v4, 2u);
  }

  return sub_10000FFD0(a1 + 40, 0);
}

void BasebandSettings::setAttachAPNSettingsType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 592);
  if (v4)
  {
    sub_10009CF40(v9, a4);
    (*(*v4 + 64))(v4, a2, a3, v9);
    sub_10002B644(v9);
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No Attach APN Manager", v8, 2u);
    }
  }
}

void sub_10070B144(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

uint64_t BasebandSettings::isAttachAPNTypeSupported(uint64_t a1)
{
  result = *(a1 + 592);
  if (result)
  {
    return AttachApnModuleInterface::isAttachAPNTypeSupported();
  }

  return result;
}

uint64_t BasebandSettings::triggerAttachApnBundleCheck(uint64_t a1)
{
  result = *(a1 + 592);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void BasebandSettings::resetNetworkSettings(BasebandSettings *this, group_session a2)
{
  v3 = *a2.var0.fObj;
  if (*a2.var0.fObj)
  {
    dispatch_retain(*a2.var0.fObj);
    dispatch_group_enter(v3);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void BasebandSettings::fileTransferComplete(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "failure";
    if (a3)
    {
      v6 = "success";
    }

    v7 = 136315138;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I File transfer complete: %s", &v7, 0xCu);
  }

  if (*(a1 + 232))
  {
    sub_10000FFD0(a1 + 208, a3);
    v9 = 0;
    sub_10027E8B4(a1 + 208, &v7);
    sub_10000FF50(&v7);
  }
}

void sub_10070B3D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void BasebandSettings::fileTransferWaitingForConfirmation(BasebandSettings *this)
{
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I File transfer waiting for confirmation", v2, 2u);
  }
}

void BasebandSettings::prepareForFilePush(uint64_t a1, uint64_t a2)
{
  sub_100714E00(&v3 + 1, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void BasebandSettings::prepareForFileTransfer_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5, CFDictionaryRef *a6)
{
  v8 = a4;
  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v13 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = asString();
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle setup with bundle type (%s) and change type (%s)", buf, 0x16u);
  }

  if (*a6)
  {
    Value = CFDictionaryGetValue(*a6, kCTPostponementInfoAvailable);
    v15 = Value;
    if (Value && (v16 = CFGetTypeID(Value), v16 == CFStringGetTypeID()))
    {
      if (CFEqual(v15, @"CarrierInfo"))
      {
        sub_100010024(&v26, a5);
        sub_100010024(&v25, a6);
        BasebandSettings::handleCarrierInfo_sync(a1, a2, a3, v8, &v26, &v25);
        sub_10001021C(&v25);
        v17 = &v26;
LABEL_16:
        sub_10001021C(v17);
        return;
      }

      if (CFEqual(v15, @"DefaultCarrierInfo"))
      {
        sub_100010024(&v24, a5);
        sub_100010024(&v23, a6);
        BasebandSettings::handleDefaultCarrierInfo_sync(a1, a2, a3, v8, &v24, &v23);
        sub_10001021C(&v23);
        v17 = &v24;
        goto LABEL_16;
      }

      if (CFEqual(v15, @"SIMCarrierInfo"))
      {
        sub_100010024(&v22, a5);
        sub_100010024(&v21, a6);
        BasebandSettings::handleSIMCarrierInfo_sync(a1, a2, a3, v8, &v22, &v21);
        sub_10001021C(&v21);
        v17 = &v22;
        goto LABEL_16;
      }

      v19 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        memset(buf, 0, sizeof(buf));
        ctu::cf::assign();
        sub_10177C28C(v20, buf, v27, v19);
      }
    }

    else if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      sub_10177C314();
    }
  }

  else
  {
    v18 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N Missing activation info dictionary", buf, 2u);
    }
  }
}

void sub_10070B874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BasebandSettings::triggerFileTransferForAnySim_sync(uint64_t result, uint64_t a2)
{
  if (*a2 != a2 + 8)
  {
    v2 = result;
    (*(**(result + 48) + 16))(*(result + 48), *(*a2 + 32));
    v3[0] = off_101E75670;
    v3[1] = v2;
    v3[3] = v3;
    BasebandSettings::sendLinedupFiles_sync(v2, v3);
    return sub_10070CE94(v3);
  }

  return result;
}

void sub_10070B99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10070CE94(va);
  _Unwind_Resume(a1);
}

void BasebandSettings::sendActiveSubsToBB_sync(BasebandSettings *this)
{
  if (_os_feature_enabled_impl())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    subscriber::makeSimSlotRange();
    v4 = 0;
    v5 = 0;
    v3 = &v4;
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Sending %zu active subs to baseband", buf, 0xCu);
    }

    (*(**(this + 16) + 168))(*(this + 16), &v3);
    sub_10006DCAC(&v3, v4);
  }
}

void BasebandSettings::turnOffCellular(uint64_t a1, int a2, char a3)
{
  if (_os_feature_enabled_impl())
  {
    v4[0] = 0;
    v4[1] = 0;
    sub_100004AA0(v4, (a1 + 8));
    operator new();
  }
}

uint64_t BasebandSettings::isTurnedOffCellular(uint64_t a1, int a2)
{
  if (_os_feature_enabled_impl())
  {
    v7 = a1;
    v8 = a2;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 0x40000000;
    v9[2] = sub_1007159D0;
    v9[3] = &unk_101E756F0;
    v9[4] = a1 + 8;
    v9[5] = &v7;
    v10 = v9;
    v4 = *(a1 + 24);
    if (*(a1 + 32))
    {
      v17 = 0;
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_100069DB0;
      v14 = &unk_101E75730;
      v15 = &v17;
      v16 = &v10;
      dispatch_async_and_wait(v4, &block);
    }

    else
    {
      v17 = 0;
      block = _NSConcreteStackBlock;
      v12 = 0x40000000;
      v13 = sub_100058E54;
      v14 = &unk_101E75710;
      v15 = &v17;
      v16 = &v10;
      dispatch_sync(v4, &block);
    }

    v5 = v17;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t BasebandSettings::handlePersonalityEvent_sync(uint64_t a1, uint64_t a2, PersonalityInfo **a3)
{
  v6 = (a1 + 96);
  Registry::getTelephonyCapabilities(__p, *(a1 + 96));
  v7 = (*(**__p + 88))(*__p);
  if (*&__p[8])
  {
    sub_100004A34(*&__p[8]);
  }

  if (v7)
  {
    v8 = *(a2 + 24);
    if (v8 == 1 || v8 == 4)
    {
      v9 = *a3;
      if (!*(*a3 + 49))
      {
        v10 = isReal();
        v9 = *a3;
        if (v10)
        {
          v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v9 + 13));
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            asString();
            v12 = __p[23] >= 0 ? __p : *__p;
            *buf = 136446210;
            *&buf[4] = v12;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Handling personality event %{public}s for TAR", buf, 0xCu);
            if ((__p[23] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          subscriber::makeSimSlotRange();
          v13 = *__p;
          v14 = *&__p[8];
          if (*__p != *&__p[8])
          {
            v15 = *&__p[16];
            do
            {
              if (v15(*v13))
              {
                break;
              }

              ++v13;
            }

            while (v13 != v14);
            v16 = *&__p[8];
            while (v13 != v16)
            {
              v17 = *v13;
              TARandomizationSettingFromUserPrefOrCarrierBundle_sync = BasebandSettings::getTARandomizationSettingFromUserPrefOrCarrierBundle_sync(a1, v17);
              (*(**(a1 + 128) + 192))(*(a1 + 128), v17, *&TARandomizationSettingFromUserPrefOrCarrierBundle_sync & ((TARandomizationSettingFromUserPrefOrCarrierBundle_sync & 0x100) >> 8));
              do
              {
                ++v13;
              }

              while (v13 != v14 && (v15(*v13) & 1) == 0);
            }
          }

          goto LABEL_36;
        }
      }

      v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v9 + 13));
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      asString();
      if (__p[23] >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = *__p;
      }

      *buf = 136446210;
      *&buf[4] = v20;
      v21 = "#I Ignoring personality event %{public}s for TAR";
    }

    else
    {
      v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*a3 + 13));
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_36;
      }

      asString();
      if (__p[23] >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = *__p;
      }

      *buf = 136446210;
      *&buf[4] = v22;
      v21 = "#I Skipping personality event %{public}s for TAR";
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }
  }

LABEL_36:
  result = _os_feature_enabled_impl();
  if (result)
  {
    result = isReal();
    if (result)
    {
      v24 = *a3;
      if (!*(*a3 + 49))
      {
        v25 = *(a2 + 24);
        if (*(a2 + 24))
        {
          if (v25 == 6)
          {
            v36 = *(a1 + 40);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = PersonalityInfo::logPrefix(v24);
              v38 = asString();
              *__p = 136315394;
              *&__p[4] = v37;
              *&__p[12] = 2080;
              *&__p[14] = v38;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I %s %s: turnOffCellular reset to OFF", __p, 0x16u);
              v24 = *a3;
            }

            sub_10012B6B8(a1 + 672, v24 + 13);
            v39 = 0;
LABEL_61:
            BasebandSettings::notifyTurnedOffCellularChanged_sync(a1, a3, v39);
            return BasebandSettings::updateTurnedOffCellularProperty_sync(a1);
          }

          if (v25 != 5)
          {
            return BasebandSettings::updateTurnedOffCellularProperty_sync(a1);
          }
        }

        ServiceMap = Registry::getServiceMap(*v6);
        v27 = ServiceMap;
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

        std::mutex::lock(ServiceMap);
        *__p = v28;
        v32 = sub_100009510(&v27[1].__m_.__sig, __p);
        if (v32)
        {
          v34 = v32[3];
          v33 = v32[4];
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v27);
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v33);
            v35 = 0;
LABEL_53:
            (*(*v34 + 64))(buf, v34, a2, @"TurnedOffCellular", 0, 0, 1);
            v40 = *buf;
            sub_10000A1EC(buf);
            if ((v35 & 1) == 0)
            {
              sub_100004A34(v33);
            }

            v41 = *(a1 + 40);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = PersonalityInfo::logPrefix(*a3);
              v43 = asString();
              v44 = "ON";
              *__p = 136315650;
              *&__p[4] = v42;
              *&__p[12] = 2080;
              if (!v40)
              {
                v44 = "OFF";
              }

              *&__p[14] = v43;
              *&__p[22] = 2080;
              v46 = v44;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s %s: turnOffCellular is %s", __p, 0x20u);
            }

            if (!v40)
            {
              return BasebandSettings::updateTurnedOffCellularProperty_sync(a1);
            }

            sub_1000C4284(a1 + 672, *a3 + 13, *a3 + 13);
            v39 = 1;
            goto LABEL_61;
          }
        }

        else
        {
          v34 = 0;
        }

        std::mutex::unlock(v27);
        v33 = 0;
        v35 = 1;
        goto LABEL_53;
      }
    }
  }

  return result;
}

void sub_10070C40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

const void **BasebandSettings::notifyTurnedOffCellularChanged_sync(uint64_t a1, PersonalityInfo **a2, int a3)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v13 = 0;
    sub_1000296E0(&v13);
    Mutable = theDict;
  }

  CFDictionarySetValue(Mutable, kCTCapabilityCanSet, kCFBooleanTrue);
  if (a3)
  {
    v7 = kCFBooleanTrue;
  }

  else
  {
    v7 = kCFBooleanFalse;
  }

  CFDictionarySetValue(theDict, kCTCapabilityStatus, v7);
  v11 = 0;
  v8 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v8)
  {
    v11 = v8;
    v13 = 0;
    sub_1000296E0(&v13);
    v8 = v11;
  }

  CFDictionarySetValue(v8, kCTCapabilityTurnOffCellular, theDict);
  v9 = *(a1 + 824);
  PersonalityInfo::uuid(&v13, *a2);
  (*(*v9 + 16))(v9, v13, v11);
  sub_1000475BC(&v13);
  sub_1000296E0(&v11);
  return sub_1000296E0(&theDict);
}

void sub_10070C5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  sub_1000475BC(va2);
  sub_1000296E0(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

uint64_t BasebandSettings::updateTurnedOffCellularProperty_sync(BasebandSettings *this)
{
  memset(&v4[7], 0, 24);
  subscriber::makeSimSlotRange();
  v4[0] = 1;
  memset(&v4[2], 0, 32);
  v4[1] = this + 696;
  v2 = sub_100715A28(&v4[3], this + 736);
  if (v2 != (this + 672))
  {
    sub_100715C7C(v2, *(this + 84), this + 170);
  }

  return sub_100715BA4(v4);
}

uint64_t sub_10070C834(uint64_t a1)
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

uint64_t sub_10070C8B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10070C94C(uint64_t a1)
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

void sub_10070C9CC(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10070C9CC(a1, *a2);
    sub_10070C9CC(a1, *(a2 + 1));
    sub_10001021C(a2 + 33);
    sub_10001021C(a2 + 32);
    if (a2[239] < 0)
    {
      operator delete(*(a2 + 27));
    }

    if (a2[215] < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (a2[191] < 0)
    {
      operator delete(*(a2 + 21));
    }

    if (a2[159] < 0)
    {
      operator delete(*(a2 + 17));
    }

    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    if (a2[111] < 0)
    {
      operator delete(*(a2 + 11));
    }

    if (a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void sub_10070CB30(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10070CC04);
  __cxa_rethrow();
}

void sub_10070CB70(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10070CBC4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10070CC04(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10070CC30(ServiceManager::Service *this)
{
  *this = off_101E74668;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10070CC8C(ServiceManager::Service *this)
{
  *this = off_101E74668;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_10070CD0C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10070CD50(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v6 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v4.var0.fObj = &v6;
    BasebandSettings::notifyServiceBootstrap(v2, v4);
  }

  v5.var0.fObj = &v6;
  BasebandSettings::notifyServiceBootstrap(v2, v5);
}

void sub_10070CDD8(uint64_t a1, xpc_object_t *x1_0, NSObject **a3)
{
  v4 = *(a1 + 8);
  if (*x1_0)
  {
    xpc_retain(*x1_0);
  }

  else
  {
    xpc_null_create();
  }

  v6 = *a3;
  v9 = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(v6);
    v7.var0.fObj = &v9;
    BasebandSettings::notifyServiceMigration(v4, v10, v7);
  }

  v8.var0.fObj = &v9;
  BasebandSettings::notifyServiceMigration(v4, v5, v8);
}

uint64_t sub_10070CE94(uint64_t a1)
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

uint64_t sub_10070CF14(uint64_t a1)
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

uint64_t *sub_10070CF94(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 128);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 32))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  (*(**(v2 + 608) + 24))(*(v2 + 608));
  ctu::RestModule::disconnect((v2 + 144));
  for (i = *(v2 + 80); i != v2 + 72; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC((v2 + 72));
  sub_1000FF844(&v9);
  return sub_1000049E0(&v8);
}

void sub_10070D0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10070D114(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  (*(**(v1 + 128) + 24))(*(v1 + 128));
  operator delete();
}

void sub_10070D1F4(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v6 = 0;
  v7 = 0;
  sub_100004AA0(buf, (v2 + 8));
  sub_10070E1B0();
}

void sub_10070D968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10070DA74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10070EF68;
  aBlock[3] = &unk_101E74970;
  aBlock[4] = a1;
  aBlock[5] = a3;
  aBlock[6] = a4;
  v8 = _Block_copy(aBlock);
  sub_100004AA0(&v6, a1);
  sub_10070EFB4(a2, &v6, a1[2], &v8);
}

void sub_10070DB50(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/prefs-nb/imeis");
  v5[0] = off_101E74B58;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10070DC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10070DC30(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/registration_status");
  v5[0] = off_101E74CD8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10070DCE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10070DD10(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/is_postponement_ticket_available");
  v5[0] = off_101E74F68;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10070DDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10070DDF0(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/suppress_sim_alerts");
  v5[0] = off_101E74FE8;
  v5[1] = a1;
  v5[3] = v5;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v5);
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10070DEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10070DED0(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_10071156C(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_10070DF34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, dispatch_object_t *a5, void *aBlock)
{
  if (a2 && aBlock && *a5)
  {
    v11 = _Block_copy(aBlock);
    v12 = v11;
    object = *a5;
    *a5 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_100711A44;
    v15[3] = &unk_101E75168;
    v13 = a4[1];
    v15[4] = *a4;
    v16 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v14 = _Block_copy(v11);
    }

    else
    {
      v14 = 0;
    }

    aBlocka = v14;
    (*(*a1 + 40))(a1, a2, a3, &object, v15);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlocka)
    {
      _Block_release(aBlocka);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v12)
    {
      _Block_release(v12);
    }
  }
}

void sub_10070E08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070E0D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  subscriber::makeSimSlotRange();
  v2 = v7;
  if (v7 != v8)
  {
    do
    {
      if (v9(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v8);
    while (v2 != v8)
    {
      v3 = *v2++;
      SupportsTARandomizationFromDeviceAndCarrierBundle_sync = BasebandSettings::getSupportsTARandomizationFromDeviceAndCarrierBundle_sync(v1, v3);
      v5 = (*&SupportsTARandomizationFromDeviceAndCarrierBundle_sync & ((SupportsTARandomizationFromDeviceAndCarrierBundle_sync & 0x100) >> 8));
      TARandomizationSettingFromUserPrefOrCarrierBundle_sync = BasebandSettings::getTARandomizationSettingFromUserPrefOrCarrierBundle_sync(v1, v3);
      BasebandSettings::sendTARandomizationSwitchState_sync(v1, v3, v5, TARandomizationSettingFromUserPrefOrCarrierBundle_sync & ((TARandomizationSettingFromUserPrefOrCarrierBundle_sync & 0x100) >> 8));
      while (v2 != v8 && (v9(*v2) & 1) == 0)
      {
        ++v2;
      }
    }
  }
}

void *sub_10070E21C(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E74730;
  sub_10070E314(a1 + 3, a2);
  return a1;
}

void sub_10070E298(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E74730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10070E314(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *a1 = off_101E74780;
    a1[1] = v4;
    a1[2] = v3;
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v3);
  }

  else
  {
    *a1 = off_101E74780;
    a1[1] = v4;
    a1[2] = 0;
  }

  return a1;
}

void sub_10070E398(BasebandSettingsDriverEventHandlerInterface *this)
{
  *this = off_101E74780;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  BasebandSettingsDriverEventHandlerInterface::~BasebandSettingsDriverEventHandlerInterface(this);
}

void sub_10070E3F4(BasebandSettingsDriverEventHandlerInterface *this)
{
  *this = off_101E74780;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  BasebandSettingsDriverEventHandlerInterface::~BasebandSettingsDriverEventHandlerInterface(this);

  operator delete();
}

void sub_10070E464(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        BasebandSettings::basebandSettingsDriverStatus(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_10070E4D8(uint64_t a1, NSObject *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        BasebandSettings::basebandSettingsDriverEnterLowPower(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_10070E54C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        sub_1002B0DA4(&v9, a3);
        BasebandSettings::bandCapability(v8, a2, &v9);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10070E5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_10006DCAC(&a10, a11);
  sub_100004A34(v11);
  _Unwind_Resume(a1);
}

void sub_10070E5F8(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        sub_1002B0DA4(&v9, a3);
        BasebandSettings::activeBands(v8, a2, &v9);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10070E67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_10006DCAC(&a10, a11);
  sub_100004A34(v11);
  _Unwind_Resume(a1);
}

void sub_10070E6A4(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        BasebandSettings::lteWithCDRXState(v7, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_10070E718(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        BasebandSettings::fileTransferComplete(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10070E7A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        BasebandSettings::applicationProcessorStatus(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10070E838(uint64_t a1)
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
        BasebandSettings::fileTransferWaitingForConfirmation(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10070E984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10070EA34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74800;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10070EA6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10070EB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10070EC44(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74880;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10070EC7C(void *a1)
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

uint64_t sub_10070ECC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10070EDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10070EE9C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74900;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10070EED4(void *a1)
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

uint64_t sub_10070EF1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10070EF68(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 8);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void sub_10070EFB4(uint64_t a1, uint64_t *a2, NSObject *a3, NSObject **a4)
{
  sub_10070F24C(v5, a4, a3);
  sub_10070F294(v6, v5);
  sub_10070F074(v6, a2);
}

void sub_10070F074(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10070F1E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

dispatch_object_t *sub_10070F24C(dispatch_object_t *a1, NSObject **a2, dispatch_object_t object)
{
  *a1 = object;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
    object = *a1;
  }

  a1[1] = v4;
  dispatch_retain(object);
  return a1;
}

_OWORD *sub_10070F294(_OWORD *a1, NSObject **a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_10070F2EC(a1, a2);
  return a1;
}

void sub_10070F2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100082A40((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10070F2EC(uint64_t a1, NSObject **a2)
{
  sub_10070F3C8(v4, a2);
  sub_10070F344((a1 + 24), v4);
  return sub_10070F9E8(v4);
}

void (***sub_10070F344(void (***a1)(void, void, uint64_t), NSObject **a2))(void, void, uint64_t)
{
  sub_10070F3C8(v4, a2);
  sub_10070F414(v5, v4);
  sub_1007E9928(v5, a1);
  sub_100082A40(v5);
  sub_10070F9E8(v4);
  return a1;
}

void sub_10070F3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void, void, uint64_t))
{
  sub_100082A40(&a11);
  sub_10070F9E8(&a9);
  _Unwind_Resume(a1);
}

NSObject **sub_10070F3C8(NSObject **a1, NSObject **a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  if (v4)
  {
    v4 = _Block_copy(v4);
    v3 = *a1;
  }

  a1[1] = v4;
  dispatch_retain(v3);
  return a1;
}

NSObject **sub_10070F414(NSObject **a1, NSObject **a2)
{
  sub_10070F3C8(v4, a2);
  sub_10070F474(a1, v4);
  sub_10070F9E8(v4);
  return a1;
}

NSObject **sub_10070F474(NSObject **a1, NSObject **a2)
{
  *a1 = 0;
  sub_10070F3C8(v4, a2);
  sub_10070F4D4(a1, v4);
  sub_10070F9E8(v4);
  return a1;
}

uint64_t sub_10070F4D4(NSObject **a1, NSObject **a2)
{
  sub_10070F3C8(v6, a2);
  v3 = sub_10070F628(off_101E749D8, v6, a1 + 1);
  result = sub_10070F9E8(v6);
  if (v3)
  {
    v5 = off_101E749D8;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_10070F550(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v5 = result;
  if (a3 <= 1)
  {
    result = sub_10070F3C8(a2, result);
    if (a3 != 1)
    {
      return result;
    }

    v6 = v5;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return result;
    }

    v6 = a2;
LABEL_10:

    return sub_10070F9E8(v6);
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvvEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvvEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10070F628(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_10070F3C8(v7, a2);
  v5 = sub_10070F690(a1, v7, a3);
  sub_10070F9E8(v7);
  return v5;
}

uint64_t sub_10070F690(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_10070F3C8(v5, a2);
  sub_10070F3C8(a3, v5);
  sub_10070F9E8(v5);
  return 1;
}

void *sub_10070F6D8(void *a1)
{
  *a1 = off_101E74A48;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10070F724(void *a1)
{
  *a1 = off_101E74A48;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10070F790(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_10070F840(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10070F8C4(void *a1)
{
  *a1 = off_101E74A98;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10070F910(void *a1)
{
  *a1 = off_101E74A98;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_10070F9E8(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10070FB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10070FBC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74AD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10070FC00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10070FC4C(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_10070FD38(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E74B58;
  a2[1] = v2;
  return result;
}

uint64_t sub_10070FD6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10070FEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10070FF54(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74BD8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10070FF8C(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_100710024(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10071015C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10071020C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74C58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100710244(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_1007102DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100710398(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E74CD8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007103CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100710488(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E74D58;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007104B4(uint64_t a1, unsigned int *a2, unsigned __int8 *a3, uint64_t a4, uint64_t *a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8)
{
  v12 = *a2;
  v13 = *a3;
  v14 = *a7;
  sub_10000FED0(v17, a8);
  v15 = *(a1 + 8);
  sub_1000224C8(v18, v17);
  BasebandSettings::sendFile_sync(v15, v12, v13, a4, a5, a6, v14, v18);
  sub_10000FF50(v18);
  return sub_10000FF50(v17);
}

void sub_100710588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10000FF50(va1);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007105AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007105F8(void *result, void *a2)
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

void sub_100710858(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100710950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_100249B60(va);
  sub_100249BE0(va1);
  sub_100249C60(va2);
  _Unwind_Resume(a1);
}

__n128 sub_1007109F0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74DE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100710A28(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = (a1[1] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a3, a4);
}

uint64_t sub_100710A78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100710BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100710C60(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74E68;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100710C98(uint64_t a1)
{
  v2 = **(a1 + 8);
  read_rest_value();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, v2);
}

uint64_t sub_100710D1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100710E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100710F04(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E74EE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100710F3C(void *a1, xpc *this, uint64_t a3)
{
  v4 = a1[1];
  result = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = *v4;
  v7 = 0x10101000000uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v7) = 1;
  }

  *v4 = v7;
  if (v6 != (v7 & 1))
  {
    v8 = a1[3];
    v9 = a1[4];
    v10 = (a1[2] + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    return v8(v10);
  }

  return result;
}

uint64_t sub_100710FF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007110B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E74F68;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007110E0(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_100711110(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007111CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E74FE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007111F8(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_100711228(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100711360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100711410(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E75068;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100711448(void *a1, xpc_object_t *a2)
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

  sub_10062D478(v3, a2);
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

uint64_t sub_100711520(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10071156C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E750E8;
  v5[1] = v3;
  v5[3] = v5;
  sub_1007117D8(v5, a1);
  sub_10070C834(v5);
  return a1;
}

uint64_t sub_100711670(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E750E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007116A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007116F0(uint64_t *a1, uint64_t a2)
{
  v5 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/cc/props/turned_off_cellular");
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

void sub_100711794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1007117D8(void *result, void *a2)
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

void sub_100711A38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_100711A44(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100135ED0(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void *sub_100711AD0(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_100711B1C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t *sub_100711B70(uint64_t a1)
{
  v2 = a1;
  (*(**(*a1 + 112) + 16))(*(*a1 + 112), @"ICCID", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  return sub_100146328(&v2);
}

void sub_100711BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100146328(va);
  _Unwind_Resume(a1);
}

void sub_100711C0C(Registry ****a1)
{
  v1 = **a1;
  if ((*a1)[1])
  {
    if ((*(v1 + 160) & 1) == 0)
    {
      BasebandSettings::registerCallbacks_sync(**a1);
      *(v1 + 160) = 1;
    }

    (*(**(v1 + 128) + 120))(*(v1 + 128));
    (*(**(v1 + 128) + 48))(*(v1 + 128), 3);
    BasebandSettings::significantTimeChange_sync(v1);
    (*(**(v1 + 128) + 96))(*(v1 + 128), *(v1 + 497));
    BasebandSettings::sendSmartDataModeToBB_sync(v1, 3);
    BasebandSettings::sendActiveSubsToBB_sync(v1);
    Registry::getTelephonyCapabilities(buf, *(v1 + 96));
    v2 = (*(**buf + 88))(*buf);
    if (v11)
    {
      sub_100004A34(v11);
    }

    if (v2)
    {
      subscriber::makeSimSlotRange();
      v3 = *buf;
      v4 = v11;
      if (*buf != v11)
      {
        v5 = v12;
        do
        {
          if (v5(LODWORD(v3->__vftable)))
          {
            break;
          }

          v3 = (v3 + 4);
        }

        while (v3 != v4);
        v6 = v11;
        while (v3 != v6)
        {
          v7 = LODWORD(v3->__vftable);
          TARandomizationSettingFromUserPrefOrCarrierBundle_sync = BasebandSettings::getTARandomizationSettingFromUserPrefOrCarrierBundle_sync(v1, v7);
          (*(**(v1 + 128) + 192))(*(v1 + 128), v7, *&TARandomizationSettingFromUserPrefOrCarrierBundle_sync & ((TARandomizationSettingFromUserPrefOrCarrierBundle_sync & 0x100) >> 8));
          do
          {
            v3 = (v3 + 4);
          }

          while (v3 != v4 && (v5(LODWORD(v3->__vftable)) & 1) == 0);
        }
      }
    }
  }

  else
  {
    v9 = *(v1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Device Config Driver went down", buf, 2u);
    }
  }

  operator delete();
}

void sub_100711E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

uint64_t *sub_100711EAC(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 39) < 0)
  {
    sub_100005F2C(__p, *(v1 + 16), *(v1 + 24));
  }

  else
  {
    *__p = *(v1 + 16);
    v8 = *(v1 + 32);
  }

  BasebandSettings::lineupFile_sync(v2, v3, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100711F6C(&v6);
  return sub_1000049E0(&v5);
}

void sub_100711F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_100711F6C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100711F6C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return a1;
}

void sub_100712030(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E751A8;
  sub_100712128(a1 + 3, a2);
}

void sub_1007120AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E751A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100712128(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_1007121B8(a1, __p);
}

void sub_10071219C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007122A8(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E751F8;
  sub_1007123A0(a1 + 3, a2);
}

void sub_100712324(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E751F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007123A0(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_100712430(a1, __p);
}

void sub_100712414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100712430(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_1007124E0(a1, 3, __p);
}

void sub_1007124C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007125CC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E75248;
  sub_1007126C4(a1 + 3, a2);
}

void sub_100712648(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E75248;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007126C4(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_100712754(a1, __p);
}

void sub_100712738(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100712754(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_1007124E0(a1, 4, __p);
}

void sub_1007127E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100712870(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E75298;
  sub_100712968(a1 + 3, a2);
}

void sub_1007128EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E75298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100712968(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_1007129F8(a1, __p);
}

void sub_1007129DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007129F8(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  sub_1007124E0(a1, 1, __p);
}

void sub_100712A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100712AA8(void *a1)
{
  *a1 = off_101E752E8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100712AF4(void *a1)
{
  *a1 = off_101E752E8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100712BCC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101E752E8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100712C04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100712C14(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100712C54(uint64_t a1, int *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        v7[0] = 0;
        v7[1] = 0;
        sub_100004AA0(v7, (v6 + 8));
        operator new();
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_100712D7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100712DC8(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  BasebandSettings::handleFilePushTransactionResult_sync(*v1, *(v1 + 16), *(v1 + 20));
  sub_100712E30(&v4);
  return sub_1000049E0(&v3);
}

void sub_100712E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100712E30(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100712E30(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_100712E84(uint64_t a1)
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

uint64_t *sub_100712F04(uint64_t a1, int *a2, _DWORD *a3, void *a4)
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

void *sub_100712FEC(void *result, void *a2)
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

void sub_10071324C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_100713264(uint64_t a1, uint64_t a2)
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

void *sub_1007132FC(void *a1)
{
  *a1 = off_101E75398;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_100713354(void *a1)
{
  *a1 = off_101E75398;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_100713444(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E75398;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v5 = a2[2];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_1007134B4(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_1007134F0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not granted";
    if (v2)
    {
      v5 = "granted";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Exclusive baseband operation assertion %s", &v6, 0xCu);
  }

  if (v2)
  {
    v8 = 0;
    ctu::rest::AssertionHandle::setHandler_impl();
    sub_10000FF50(&v6);
    (*(**(v3 + 608) + 40))(*(v3 + 608), 4, "Exclusive baseband assertion acquired");
  }
}

uint64_t sub_10071361C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100713668(void *a1)
{
  *a1 = off_101E75418;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_1007136C0(void *a1)
{
  *a1 = off_101E75418;
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_1007137B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E75418;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v5 = a2[2];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_100713820(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_10071385C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not granted";
    if (v2)
    {
      v5 = "granted";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Prevent baseband reset assertion %s", &v6, 0xCu);
  }

  if (v2)
  {
    v8 = 0;
    ctu::rest::AssertionHandle::setHandler_impl();
    sub_10000FF50(&v6);
    (*(**(v3 + 608) + 40))(*(v3 + 608), 8, "Prevent baseband reset assertion acquired");
  }
}

uint64_t sub_100713988(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007139D4(os_log_t **a1)
{
  v1 = *a1;
  if ((*((*a1)[76]->isa + 7))((*a1)[76]))
  {
    BasebandSettings::sendNextLinedUpFile_sync(v1);
  }

  else if (os_log_type_enabled(v1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177C348();
  }

  operator delete();
}

uint64_t sub_100713A8C(uint64_t a1, uint64_t a2)
{
  sub_100713B10(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100713B10(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *sub_100713B94(void *a1)
{
  *a1 = off_101E75498;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100713BE0(void *a1)
{
  *a1 = off_101E75498;
  v1 = a1[4];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_100713CC4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E75498;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  v3 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100713D0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100713D1C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

uint64_t sub_100713D78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100713DC4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  v4 = v3;
  if ((*(v1 + 12) & 1) == 0)
  {
    v5 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asString(*(v1 + 13));
      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#E Pushing %s failed, soldiering on", buf, 0xCu);
    }

    BasebandSettings::maybeAbortPendingTransactionsAndClearCache_sync(v2, 1);
  }

  if (!*(v1 + 13))
  {
    v7 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I PRI was pushed. Notify AttachAPN manager", buf, 2u);
    }

    v8 = *(v2 + 592);
    if (v8)
    {
      (*(*v8 + 80))(v8, *(v1 + 2));
    }
  }

  *buf = 0uLL;
  BasebandSettings::getModel_sync(v2, *(v1 + 2), buf);
  if (*buf)
  {
    (*(**buf + 56))(*buf, *(v1 + 13), *(v1 + 12));
  }

  else if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
  {
    v9 = subscriber::asString();
    sub_10177BF38(v9, v24);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(v1 + 12))
  {
    goto LABEL_34;
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 96));
  v11 = ServiceMap;
  if (v12 < 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
LABEL_25:
      v19 = (*(*v18 + 16))(v18);
      v20 = v19;
      if (v17)
      {
        sub_100004A34(v17);
        if ((v20 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else if (!v19)
      {
        goto LABEL_34;
      }

      if (capabilities::ct::supportsLogDumpForFailedBundlePush(v19))
      {
        sub_10000501C(&__p, "Carrier Bundle file push failed");
        RequestDumpStatePayload::RequestDumpStatePayload();
        sub_1007141CC(v2 + 144, buf);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v22 < 0)
        {
          operator delete(__p);
        }
      }

LABEL_34:
      BasebandSettings::sendNextLinedUpFile_sync(v2);
      operator delete();
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  goto LABEL_25;
}

void sub_100714130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  operator delete();
}

void sub_1007141CC(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  write_rest_value();
  sub_10000501C(&__p, "/cc/events/request_dump_state");
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

void sub_100714260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t *sub_1007142A4(void *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *(v1 + 8);
  v3 = *(v2 + 168);
  if (v3)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I File transfer in progress while sleep-cycle starts; delaying sleep until file transfer complete.", buf, 2u);
      v3 = *(v2 + 168);
    }

    v5 = *(v2 + 24);
    *buf = _NSConcreteStackBlock;
    v11 = 1174405120;
    v12 = sub_100714470;
    v13 = &unk_101E75508;
    v14 = v2;
    v6 = *v1;
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      if (group)
      {
        dispatch_group_enter(group);
      }
    }

    dispatch_group_notify(v3, v5, buf);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  else
  {
    (*(**(v2 + 128) + 104))(*(v2 + 128), 0);
  }

  sub_100714410(&v9);
  return sub_1000049E0(&v8);
}

void sub_1007143F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100714410(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

dispatch_group_t **sub_100714410(dispatch_group_t **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*v1)
    {
      dispatch_group_leave(*v1);
      if (*v1)
      {
        dispatch_release(*v1);
      }
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_100714470(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I File transfer complete; letting sleep cycle continue", v4, 2u);
  }

  return (*(**(v1 + 128) + 104))(*(v1 + 128), 0);
}

void sub_100714500(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_100714554(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void sub_1007145A4(BasebandSettings ***a1)
{
  v1 = a1;
  BasebandSettings::sendAPTetheringStatus_sync(**a1, *(*a1 + 8));
  operator delete();
}

uint64_t *sub_100714628(NSObject ****a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_1000224C8(v6, (v1 + 1));
  BasebandSettings::activateTurboMode_sync(v2, v6);
  sub_10000FF50(v6);
  sub_1007146DC(&v5);
  return sub_1000049E0(&v4);
}

void sub_1007146B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_10000FF50(va2);
  sub_1007146DC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007146DC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_10071472C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007147C4(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100714844(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_10071472C(v7, v1 + 16);
  BasebandSettings::getSupportsTARandomization_sync(v2, v3, v7);
  sub_10070C94C(v7);
  sub_100714904(&v6);
  return sub_1000049E0(&v5);
}

void sub_1007148D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_10070C94C(va2);
  sub_100714904(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100714904(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10070C94C(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_100714990(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1007149CC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_100714A08(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  sub_100014110(v8, v1 + 16);
  BasebandSettings::setTARandomizationUserSetting_sync(v2, v3, v4, v8);
  sub_100014380(v8);
  sub_100714AD8(&v7);
  return sub_1000049E0(&v6);
}

void sub_100714AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_100014380(va2);
  sub_100714AD8(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100714AD8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100014380(v1 + 16);
    operator delete();
  }

  return a1;
}

uint64_t sub_100714BB0@<X0>(_OWORD *a1@<X8>)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return CSIGetGmtTime(a1);
}

uint64_t sub_100714BC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100714C10(uint64_t a1)
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

void sub_100714C90(_DWORD **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = v1[2];
  if (v2 != *(*v1 + 552))
  {
    *(*v1 + 552) = v2;
  }

  operator delete();
}

uint64_t sub_100714CF8(uint64_t result, uint64_t a2)
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

void sub_100714D14(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_100714D24(void **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 592);
  if (v2)
  {
    v3 = v1[1];
    group = v3;
    if (v3)
    {
      dispatch_retain(v3);
      dispatch_group_enter(v3);
    }

    (*(*v2 + 48))(v2, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_100714DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void *sub_100714E00(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100714E58(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100714E58(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100714EE0(v5, (v5 + 8), v4 + 8, (v4 + 8));
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

void *sub_100714EE0(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_10002E2F4(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_100714F70();
  }

  return result;
}

void sub_100714FF0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100715060(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10071500C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100049564(a1, a2);
  *(v4 + 200) = *(a2 + 200);
  *(v4 + 208) = *(a2 + 208);
  sub_100010024((v4 + 216), (a2 + 216));
  sub_100010024((a1 + 224), (a2 + 224));
  return a1;
}

void sub_100715060(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10001021C((a2 + 264));
    sub_10001021C((a2 + 256));
    if (*(a2 + 239) < 0)
    {
      operator delete(*(a2 + 216));
    }

    if (*(a2 + 215) < 0)
    {
      operator delete(*(a2 + 192));
    }

    if (*(a2 + 191) < 0)
    {
      operator delete(*(a2 + 168));
    }

    if (*(a2 + 159) < 0)
    {
      operator delete(*(a2 + 136));
    }

    if (*(a2 + 135) < 0)
    {
      operator delete(*(a2 + 112));
    }

    if (*(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

    if (*(a2 + 63) < 0)
    {
      operator delete(*(a2 + 40));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *sub_100715144(uint64_t **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v4 = v1 + 2;
  v3 = v1[2];
  if (!v3)
  {
    goto LABEL_27;
  }

  v5 = v1 + 2;
  v6 = v1[2];
  do
  {
    if (*(v6 + 32) >= 2)
    {
      v5 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < 2));
  }

  while (v6);
  if (v5 != v4 && *(v5 + 8) <= 2)
  {
    if (*(v5 + 240) == 2)
    {
      BasebandSettings::lineupFile_sync(*v1, 2, 0, 0);
      BasebandSettings::compareAndLineupFile_sync(v2, 2, 6, 0);
      BasebandSettings::lineupFile_sync(v2, 2, 8, 0);
    }

    else
    {
      BasebandSettings::bbset_checkForCBFilesUpdate_sync(*v1, 2, 0);
    }

    v18 = 0;
    v19 = 0;
    BasebandSettings::getModel_sync(v2, 2, &v18);
    v7 = v18;
    if (v18)
    {
      sub_100010024(&v17, v5 + 33);
      v8 = (*(*v7 + 112))(v7, &v17);
      sub_10001021C(&v17);
      if ((v8 & 0x100) != 0)
      {
        BasebandSettings::lineupFile_sync(v2, 2, 0, 0);
      }
    }

    else
    {
      v9 = (*(**(v2 + 48) + 16))(*(v2 + 48), 2);
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        sub_10177C37C();
      }
    }

    if (v19)
    {
      sub_100004A34(v19);
    }

    v3 = *v4;
  }

  if (!v3)
  {
    goto LABEL_27;
  }

  v10 = v1 + 2;
  do
  {
    if (*(v3 + 32) >= 1)
    {
      v10 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < 1));
  }

  while (v3);
  if (v10 != v4 && *(v10 + 8) <= 1)
  {
    v11 = *(v10 + 160);
    v12 = *(v10 + 240);
    sub_100010024(&v18, v10 + 32);
    sub_100010024(&v16, v10 + 33);
    BasebandSettings::prepareForFileTransfer_sync(v2, 1, v11, v12, &v18, &v16);
    sub_10001021C(&v16);
    sub_10001021C(&v18);
  }

  else
  {
LABEL_27:
    BasebandSettings::triggerFileTransferForAnySim_sync(v2, (v1 + 1));
  }

  sub_1007153F4(&v15);
  return sub_1000049E0(&v14);
}

void sub_100715398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1007153F4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007153F4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10070C9CC(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return a1;
}

uint64_t sub_1007154B8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E75670;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007154EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100715538(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1 + 1);
  v3 = **a1;
  v4 = (*(**(v3 + 48) + 16))(*(v3 + 48), *v2);
  v32 = 0;
  v33 = 0;
  v5 = *(v3 + 472);
  v6 = *v5;
  v7 = v5[1];
  if (v6 != v7)
  {
    while (*(*v6 + 49) || *(*v6 + 13) != *v2)
    {
      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_22;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_22:
    v9 = 0;
  }

  else
  {
    v8 = *v6;
    v9 = v6[1];
    v32 = *v6;
    v33 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8 && isReal())
    {
      v10 = *v4;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(v8);
        v12 = "OFF";
        if (*(v1 + 12))
        {
          v12 = "ON";
        }

        *buf = 136315394;
        *&buf[4] = v11;
        v35 = 2080;
        v36 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: setting turnOffCellular to %s", buf, 0x16u);
      }

      if (*(v1 + 12) == 1)
      {
        sub_1000C4284(v3 + 672, v2, v2);
        ServiceMap = Registry::getServiceMap(*(v3 + 96));
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
LABEL_36:
            (*(*v21 + 48))(v21, v8 + 24, @"TurnedOffCellular", kCFBooleanTrue, 0, 0, 1, 0);
            goto LABEL_40;
          }
        }

        else
        {
          v21 = 0;
        }

        std::mutex::unlock(v14);
        v20 = 0;
        v22 = 1;
        goto LABEL_36;
      }

      sub_10012B6B8(v3 + 672, v2);
      v24 = Registry::getServiceMap(*(v3 + 96));
      v25 = v24;
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

      std::mutex::lock(v24);
      *buf = v26;
      v30 = sub_100009510(&v25[1].__m_.__sig, buf);
      if (v30)
      {
        v31 = v30[3];
        v20 = v30[4];
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v25);
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v20);
          v22 = 0;
LABEL_39:
          (*(*v31 + 72))(v31, v8 + 24, @"TurnedOffCellular", 0, 0, 1);
LABEL_40:
          if ((v22 & 1) == 0)
          {
            sub_100004A34(v20);
          }

          BasebandSettings::updateTurnedOffCellularProperty_sync(v3);
          BasebandSettings::sendActiveSubsToBB_sync(v3);
          BasebandSettings::notifyTurnedOffCellularChanged_sync(v3, &v32, *(v1 + 12));
          v9 = v33;
          if (!v33)
          {
LABEL_27:
            operator delete();
          }

LABEL_26:
          sub_100004A34(v9);
          goto LABEL_27;
        }
      }

      else
      {
        v31 = 0;
      }

      std::mutex::unlock(v25);
      v20 = 0;
      v22 = 1;
      goto LABEL_39;
    }
  }

  v23 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I turnOffCellular: failed to find persona", buf, 2u);
  }

  if (!v9)
  {
    goto LABEL_27;
  }

  goto LABEL_26;
}

void sub_100715958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

BOOL sub_1007159D0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = (*v1 + 680);
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_8;
  }

  v4 = v1[2];
  v5 = *v1 + 680;
  do
  {
    if (*(v3 + 28) >= v4)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 28) < v4));
  }

  while (v3);
  if (v5 == v2 || v4 < *(v5 + 28))
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

void *sub_100715A28(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100715A80(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100715A80(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100715B08(v5, (v5 + 8), v4 + 7, v4 + 7);
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

uint64_t sub_100715B08(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_1000504CC(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_100715BA4(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (rest::operator!=())
    {
      sub_100715C04(v2, a1 + 16);
    }
  }

  sub_10006DCAC(a1 + 24, *(a1 + 32));
  return a1;
}

uint64_t sub_100715C04(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *a2;
  v2 = a1 + 32;
  sub_10004645C((a1 + 40), (a2 + 8));
  result = *(v2 - 8);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

void *sub_100715C7C(void *result, int *a2, int *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = v9[7];
          sub_1001720F4(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = *(v9 + 1);
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = *(v9 + 2);
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_100715DE0(v5, a2 + 7);
  }

  return result;
}

void sub_100715DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

void sub_100715E80(void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a2)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    initially_inactive = dispatch_queue_attr_make_initially_inactive(v4);
    v6 = dispatch_queue_create_with_target_V2("TMKXPCServer", initially_inactive, 0);
    dispatch_set_qos_class_floor(v6, QOS_CLASS_UTILITY, 0);
    dispatch_activate(v6);
    *a3 = 0;
    a3[1] = 0;
    operator new();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "TMK server not supported since message router is not present", &v7, 2u);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_100716054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, dispatch_object_t object, uint64_t a12)
{
  if (a12)
  {
    sub_101760EE4(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007160E8(void *a1, void *a2, NSObject **a3, void *a4)
{
  *a1 = off_101E30090;
  v8 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "tmk.server.wrapper");
  sub_100716244(v8, a3, &v11);
  ctu::OsLogContext::~OsLogContext(&v11);
  *a1 = off_101E75760;
  v9 = a2[1];
  a1[6] = *a2;
  a1[7] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  a1[8] = *a4;
  a1[9] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1007161F0(_Unwind_Exception *a1)
{
  v4 = v1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = v1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v2);
  TMKXPCServerInterface::~TMKXPCServerInterface(v1);
  _Unwind_Resume(a1);
}

void *sub_100716244(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1007162AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_1007162D0(void *a1)
{
  *a1 = off_101E75760;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    sub_1007169A4(v2, 0);
    operator delete();
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

  TMKXPCServerInterface::~TMKXPCServerInterface(a1);
}

void sub_10071637C(void *a1)
{
  sub_1007162D0(a1);

  operator delete();
}

void sub_1007163B4(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v2[0] = 0;
    v2[1] = 0;
    sub_100004AA0(v2, (a1 + 8));
    operator new();
  }
}

void sub_100716498(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_100716574(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_1007166D0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1007167A4);
  __cxa_rethrow();
}

void sub_100716710(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100716764(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007167A4(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1007167D0(ServiceManager::Service *this)
{
  *this = off_101E75888;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10071682C(ServiceManager::Service *this)
{
  *this = off_101E75888;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1007168C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10071690C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    dispatch_retain(*a2);
    sub_100716498(v2);
  }

  v3 = *(a1 + 8);

  sub_100716498(v3);
}

void *sub_1007169A4(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    operator delete();
  }

  return result;
}

void sub_100716A04(uint64_t a1)
{
  v1 = a1;
  if (**(**a1 + 80))
  {
    TMKXPCServer.shutdown()();
  }

  operator delete();
}

void sub_100716A68(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping TMK server", buf, 2u);
  }

  operator delete();
}

void sub_100716AF4(uint64_t **a1)
{
  v5 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting TMK server", buf, 2u);
  }

  v7[0] = 0;
  v7[1] = 0;
  (*(**(v1 + 64) + 16))(v7);
  v6 = 0;
  v3 = *v7[0];

  v4 = *(v1 + 72);
  *buf = *(v1 + 64);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  type metadata accessor for TMKXPCServer();
  v6 = TMKXPCServer.__allocating_init(messageRouter:messageRouterPtr:)(v3, buf);
  sub_100716C90(*(v1 + 80), &v6);
}

void sub_100716C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{

  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void *sub_100716DA8(void *a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "DATA.tech.cnf");
  sub_100716E84((a1 + 1), &v6);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = off_101E75A98;
  v4 = a2[1];
  a1[5] = *a2;
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[7] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void sub_100716E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TechDataConfigServiceInterface::~TechDataConfigServiceInterface(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_100716E84(uint64_t a1, const OsLogContext *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogLogger::OsLogLogger(v4, a2);
  ctu::OsLogLogger::OsLogLogger((a1 + 24), v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  return a1;
}

void sub_100716ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  v5 = *(v3 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void sub_100716EFC(uint64_t a1)
{
  *a1 = off_101E75A98;
  v4 = (a1 + 56);
  sub_1000212F4(&v4);
  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  TechDataConfigServiceInterface::~TechDataConfigServiceInterface(a1);
}

void sub_100716F7C(uint64_t a1)
{
  sub_100716EFC(a1);

  operator delete();
}

void sub_100716FB4(uint64_t a1, __int128 *a2)
{
  v33 = *a2;
  v3 = *(a2 + 1);
  if (v3)
  {
    atomic_fetch_add_explicit((*(a2 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 24));
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  (*(*v33 + 16))(v39, v33);
  v4 = (*(*v33 + 32))(v33);
  v5 = *(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HIBYTE(v40);
    v7 = v39[0];
    v8 = v39[1];
    v9 = subscriber::asString();
    if (v6 >= 0)
    {
      v10 = v6;
    }

    else
    {
      v10 = v8;
    }

    v11 = v39;
    if (v6 < 0)
    {
      v11 = v7;
    }

    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Adding config for personalityId: %s, slot=%s", buf, 0x16u);
  }

  *__dst = 0u;
  v38 = 0u;
  if (SHIBYTE(v40) < 0)
  {
    sub_100005F2C(__dst, v39[0], v39[1]);
  }

  else
  {
    *__dst = *v39;
    *&v38 = v40;
  }

  DWORD2(v38) = v4;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v13 = (a1 + 56);
  if (SBYTE7(v38) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
    v4 = DWORD2(v38);
  }

  else
  {
    *__p = *__dst;
    v35 = v38;
  }

  v36 = v4;
  if (v14 != v15)
  {
    while (1)
    {
      (*(**v14 + 16))(buf);
      v16 = sub_100071DF8(buf, __p) && (*(**v14 + 32))() == v36;
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v16)
      {
        break;
      }

      if (++v14 == v15)
      {
        v14 = v15;
        break;
      }
    }
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *(a1 + 64);
  if (v17 != v14)
  {
    sub_100422B44(buf, v14 + 1, *(a1 + 64), v14);
    v17 = v18;
    for (i = *(a1 + 64); i != v17; --i)
    {
      v20 = *(i - 1);
      if (v20)
      {
        sub_100004A34(v20);
      }
    }

    *(a1 + 64) = v17;
  }

  v21 = *(a1 + 72);
  if (v17 >= v21)
  {
    v23 = (v17 - *v13) >> 4;
    if ((v23 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v24 = v21 - *v13;
    v25 = v24 >> 3;
    if (v24 >> 3 <= (v23 + 1))
    {
      v25 = v23 + 1;
    }

    if (v24 >= 0x7FFFFFFFFFFFFFF0)
    {
      v26 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v25;
    }

    v43 = a1 + 56;
    if (v26)
    {
      sub_10009A550(a1 + 56, v26);
    }

    v27 = 16 * v23;
    *(16 * v23) = v33;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = (v27 + 16);
    v28 = *(a1 + 56);
    v29 = *(a1 + 64) - v28;
    v30 = v27 - v29;
    memcpy((v27 - v29), v28, v29);
    v31 = *(a1 + 56);
    *(a1 + 56) = v30;
    *(a1 + 64) = v22;
    v32 = *(a1 + 72);
    *(a1 + 72) = 0;
    *&buf[16] = v31;
    v42 = v32;
    *buf = v31;
    *&buf[8] = v31;
    sub_1000210F0(buf);
  }

  else
  {
    *v17 = v33;
    *(v17 + 1) = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v22 = v17 + 1;
  }

  *(a1 + 64) = v22;
  if (SBYTE7(v38) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  os_unfair_lock_unlock((a1 + 24));
  if (v3)
  {
    sub_100004A34(v3);
  }
}