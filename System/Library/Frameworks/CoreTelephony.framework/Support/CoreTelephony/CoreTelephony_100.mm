void sub_100671588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, xpc_object_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  ATCSMutex::unlock((v26 + 56));
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10067162C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006716E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F0E8;
  a2[1] = v2;
  return result;
}

void sub_100671714(uint64_t a1, uint64_t a2, xpc_object_t *a3)
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
    v5 = xpc_null_create();
    object = v5;
  }

  v6 = *(a1 + 8);
  ATCSMutex::lock((v6 + 56));
  if (!v4 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    __p[0] = &object;
    __p[1] = abm::kKeyBasebandOperatingMode;
    sub_100006354(__p, buf);
    v10 = xpc::dyn_cast_or_default(buf, 8, v9);
    xpc_release(*buf);
    C2KRadioModule::handleBasebandModeChanged_nl(v6, v10);
  }

  else
  {
    v7 = *(v6 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10064CB44(&v12, __p);
      v8 = v16 >= 0 ? __p : __p[0];
      *buf = 136446210;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Failed to get current operating mode: %{public}s", buf, 0xCu);
      if (v16 < 0)
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

void sub_1006718E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  ATCSMutex::unlock((v20 + 56));
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100671964(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1006719B0(void *a1)
{
  *a1 = off_101E6F168;
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

void sub_100671A08(void *a1)
{
  *a1 = off_101E6F168;
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

void sub_100671AF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E6F168;
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

void sub_100671B68(char *a1)
{
  sub_100671F3C((a1 + 8));

  operator delete(a1);
}

void sub_100671BA4(uint64_t a1, int *a2, void **a3)
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
  ATCSMutex::lock((v8 + 56));
  if (v4)
  {
    v9 = abm::kKeyPreFlightError;
    if (xpc_dictionary_get_value(xdict, abm::kKeyPreFlightError))
    {
      __p = &xdict;
      v23 = v9;
      sub_100006354(&__p, object);
      v11 = xpc::dyn_cast_or_default(object, 0, v10);
      xpc_release(object[0]);
      v12 = *(v8 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        ctu::hex(v11, v13);
        v14 = v24 >= 0 ? &__p : __p;
        LODWORD(object[0]) = 136315138;
        *(object + 4) = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Error is found. BB security status= 0x%s", object, 0xCu);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    v15 = abm::kKeyBasebandPKHash;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandPKHash))
    {
      v20[0] = &xdict;
      v20[1] = v15;
      sub_100006354(v20, &v21);
      __p = 0;
      v23 = 0;
      v24 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      v16 = *(v8 + 848);
      if (v16)
      {
        *(v8 + 856) = v16;
        operator delete(v16);
        *(v8 + 848) = 0;
        *(v8 + 856) = 0;
        *(v8 + 864) = 0;
      }

      *(v8 + 848) = *object;
      *(v8 + 864) = v26;
      object[1] = 0;
      v26 = 0;
      object[0] = 0;
      xpc_release(v21);
    }

    v17 = abm::kKeyBasebandCertID;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandCertID))
    {
      __p = &xdict;
      v23 = v17;
      sub_100006354(&__p, object);
      *(v8 + 844) = xpc::dyn_cast_or_default(object, 0, v18);
      xpc_release(object[0]);
    }
  }

  ATCSMutex::unlock((v8 + 56));
  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100671E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  ATCSMutex::unlock((v19 + 56));
  xpc_release(object);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100671EF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100671F3C(uint64_t a1)
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
}

void *sub_100671F8C(void *a1)
{
  *a1 = off_101E6F1E8;
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

void sub_100671FE4(void *a1)
{
  *a1 = off_101E6F1E8;
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

void sub_1006720D4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E6F1E8;
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

void sub_100672144(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_100672180(uint64_t a1, int *a2, void **a3)
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
  ATCSMutex::lock((v8 + 56));
  if (v4)
  {
    v9 = abm::kKeyPreFlightError;
    if (xpc_dictionary_get_value(xdict, abm::kKeyPreFlightError))
    {
      __p = &xdict;
      v33 = v9;
      sub_100006354(&__p, object);
      v11 = xpc::dyn_cast_or_default(object, 0, v10);
      xpc_release(object[0]);
      v12 = *(v8 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        ctu::hex(v11, v13);
        v14 = v34 >= 0 ? &__p : __p;
        LODWORD(object[0]) = 136315138;
        *(object + 4) = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Error is found. BB security status= 0x%s", object, 0xCu);
        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    v15 = abm::kKeyBasebandChipID;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandChipID))
    {
      __p = &xdict;
      v33 = v15;
      sub_100006354(&__p, object);
      *(v8 + 840) = xpc::dyn_cast_or_default(object, 0, v16);
      xpc_release(object[0]);
    }

    v17 = abm::kKeyBasebandSerialNumber;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSerialNumber))
    {
      v30[0] = &xdict;
      v30[1] = v17;
      sub_100006354(v30, &v31);
      __p = 0;
      v33 = 0;
      v34 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v33 = __p;
        operator delete(__p);
      }

      v18 = *(v8 + 816);
      if (v18)
      {
        *(v8 + 824) = v18;
        operator delete(v18);
        *(v8 + 816) = 0;
        *(v8 + 824) = 0;
        *(v8 + 832) = 0;
      }

      *(v8 + 816) = *object;
      *(v8 + 832) = v36;
      object[1] = 0;
      v36 = 0;
      object[0] = 0;
      xpc_release(v31);
    }

    v19 = abm::kKeyBasebandBoardId;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandBoardId))
    {
      __p = &xdict;
      v33 = v19;
      sub_100006354(&__p, object);
      *(v8 + 896) = xpc::dyn_cast_or_default(object, 0, v20);
      xpc_release(object[0]);
    }

    v21 = abm::kKeyBasebandSecurityDomain;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSecurityDomain))
    {
      __p = &xdict;
      v33 = v21;
      sub_100006354(&__p, object);
      *(v8 + 897) = xpc::dyn_cast_or_default(object, 0, v22);
      xpc_release(object[0]);
    }

    v23 = abm::kKeyBasebandProductionMode;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandProductionMode))
    {
      __p = &xdict;
      v33 = v23;
      sub_100006354(&__p, object);
      *(v8 + 900) = xpc::dyn_cast_or_default(object, 0, v24);
      xpc_release(object[0]);
    }

    v25 = abm::kKeyBasebandSecurityMode;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSecurityMode))
    {
      __p = &xdict;
      v33 = v25;
      sub_100006354(&__p, object);
      *(v8 + 904) = xpc::dyn_cast_or_default(object, 0, v26);
      xpc_release(object[0]);
    }

    v27 = abm::kKeyBasebandUidMode;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandUidMode))
    {
      __p = &xdict;
      v33 = v27;
      sub_100006354(&__p, object);
      *(v8 + 905) = xpc::dyn_cast_or_default(object, 0, v28);
      xpc_release(object[0]);
    }
  }

  ATCSMutex::unlock((v8 + 56));
  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_10067256C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  ATCSMutex::unlock((v19 + 56));
  xpc_release(object);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006726D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100672720(void *a1)
{
  *a1 = off_101E6F268;
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

void sub_100672778(void *a1)
{
  *a1 = off_101E6F268;
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

void sub_100672868(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E6F268;
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

void sub_1006728D8(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_100672914(uint64_t a1, int *a2, void **a3)
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
  ATCSMutex::lock((v8 + 56));
  if (v4)
  {
    v9 = abm::kKeyPreFlightError;
    if (xpc_dictionary_get_value(xdict, abm::kKeyPreFlightError))
    {
      __p = &xdict;
      v35 = v9;
      sub_100006354(&__p, object);
      v11 = xpc::dyn_cast_or_default(object, 0, v10);
      xpc_release(object[0]);
      v12 = *(v8 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        ctu::hex(v11, v13);
        v14 = v36 >= 0 ? &__p : __p;
        LODWORD(object[0]) = 136315138;
        *(object + 4) = v14;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Error is found. BB security status= 0x%s", object, 0xCu);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p);
        }
      }
    }
  }

  else
  {
    v15 = abm::kKeyBasebandSerialNumber;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSerialNumber))
    {
      p_xdict = &xdict;
      v32 = v15;
      sub_100006354(&p_xdict, &v33);
      __p = 0;
      v35 = 0;
      v36 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      v16 = *(v8 + 816);
      if (v16)
      {
        *(v8 + 824) = v16;
        operator delete(v16);
        *(v8 + 816) = 0;
        *(v8 + 824) = 0;
        *(v8 + 832) = 0;
      }

      *(v8 + 816) = *object;
      *(v8 + 832) = v38;
      object[1] = 0;
      v38 = 0;
      object[0] = 0;
      xpc_release(v33);
    }

    v17 = abm::kKeyBasebandChipID;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandChipID))
    {
      __p = &xdict;
      v35 = v17;
      sub_100006354(&__p, object);
      *(v8 + 840) = xpc::dyn_cast_or_default(object, 0, v18);
      xpc_release(object[0]);
    }

    v19 = abm::kKeyBasebandCertID;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandCertID))
    {
      __p = &xdict;
      v35 = v19;
      sub_100006354(&__p, object);
      *(v8 + 844) = xpc::dyn_cast_or_default(object, 0, v20);
      xpc_release(object[0]);
    }

    v21 = abm::kKeyBasebandScrtPubK;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandScrtPubK))
    {
      p_xdict = &xdict;
      v32 = v21;
      sub_100006354(&p_xdict, &v33);
      __p = 0;
      v35 = 0;
      v36 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }

      v22 = (v8 + 872);
      v23 = *(v8 + 872);
      if (v23)
      {
        *(v8 + 880) = v23;
        operator delete(v23);
        *v22 = 0;
        *(v8 + 880) = 0;
        *(v8 + 888) = 0;
      }

      *v22 = *object;
      *(v8 + 888) = v38;
      object[1] = 0;
      v38 = 0;
      object[0] = 0;
      xpc_release(v33);
    }

    v24 = abm::kKeyBasebandSecurityDomain;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSecurityDomain))
    {
      __p = &xdict;
      v35 = v24;
      sub_100006354(&__p, object);
      *(v8 + 897) = xpc::dyn_cast_or_default(object, 0, v25);
      xpc_release(object[0]);
    }

    v26 = abm::kKeyBasebandProductionMode;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandProductionMode))
    {
      __p = &xdict;
      v35 = v26;
      sub_100006354(&__p, object);
      *(v8 + 900) = xpc::dyn_cast_or_default(object, 0, v27);
      xpc_release(object[0]);
    }

    v28 = abm::kKeyBasebandSecurityMode;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSecurityMode))
    {
      __p = &xdict;
      v35 = v28;
      sub_100006354(&__p, object);
      *(v8 + 904) = xpc::dyn_cast_or_default(object, 0, v29);
      xpc_release(object[0]);
    }
  }

  ATCSMutex::unlock((v8 + 56));
  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100672D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  ATCSMutex::unlock((v19 + 56));
  xpc_release(object);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100672EC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100672F14(void *a1)
{
  *a1 = off_101E6F2E8;
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

void sub_100672F6C(void *a1)
{
  *a1 = off_101E6F2E8;
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

void sub_10067305C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E6F2E8;
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

void sub_1006730CC(void *a1)
{
  sub_100671F3C(a1 + 8);

  operator delete(a1);
}

void sub_100673108(uint64_t a1, int *a2, void **a3)
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
  ATCSMutex::lock((v8 + 56));
  if (v4)
  {
    v9 = *(v8 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Error is found in getting manifest status", buf, 2u);
    }
  }

  else
  {
    v10 = abm::kKeyBasebandSKeyStatus;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSKeyStatus))
    {
      *buf = &xdict;
      v23 = v10;
      sub_100006354(buf, object);
      *(v8 + 960) = xpc::dyn_cast_or_default(object, 0, v11);
      xpc_release(object[0]);
    }

    v12 = abm::kKeyBasebandAKeyStatus;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandAKeyStatus))
    {
      *buf = &xdict;
      v23 = v12;
      sub_100006354(buf, object);
      *(v8 + 992) = xpc::dyn_cast_or_default(object, 0, v13);
      xpc_release(object[0]);
    }

    v14 = abm::kKeyBasebandSKeyHash;
    if (xpc_dictionary_get_value(xdict, abm::kKeyBasebandSKeyHash))
    {
      v18[0] = &xdict;
      v18[1] = v14;
      sub_100006354(v18, &v19);
      *buf = 0;
      v23 = 0;
      v24 = 0;
      xpc::dyn_cast_or_default();
      if (*buf)
      {
        v23 = *buf;
        operator delete(*buf);
      }

      v15 = (v8 + 968);
      v16 = *(v8 + 968);
      if (v16)
      {
        *(v8 + 976) = v16;
        operator delete(v16);
        *v15 = 0;
        *(v8 + 976) = 0;
        *(v8 + 984) = 0;
      }

      *v15 = *object;
      *(v8 + 984) = v21;
      object[1] = 0;
      v21 = 0;
      object[0] = 0;
      xpc_release(v19);
    }
  }

  ATCSMutex::unlock((v8 + 56));
  xpc_release(xdict);
  xdict = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_10067332C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  xpc_release(object);
  ATCSMutex::unlock((v19 + 56));
  xpc_release(a9);
  if (v20 < 0)
  {
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006733DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100673428(std::mutex *this, uint64_t *a2)
{
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

  std::mutex::lock(this);
  v8 = *a2;
  v9 = a2[1];
  v13 = v8;
  v14 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v15);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v15, &v15, &v13);
  v11 = v10;
  v9 = v14;
  if (v14)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

uint64_t sub_100673504(std::mutex *this, uint64_t *a2)
{
  v4 = "N8dormancy15DormancyServiceE";
  if (("N8dormancy15DormancyServiceE" & 0x8000000000000000) != 0)
  {
    v5 = ("N8dormancy15DormancyServiceE" & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  v8 = *a2;
  if (*a2)
  {
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v8;
    v14 = v9;
    v15 = v4;
    sub_100145BF0(&this[1].__m_.__sig, &v15, &v15, &v13);
    v11 = v10;
    if (v14)
    {
      sub_100004A34(v14);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = v4;
    sub_100145EC4(&this[1].__m_.__sig, &v15);
    v11 = 1;
  }

  std::mutex::unlock(this);
  return v11 & 1;
}

__n128 sub_100673660(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6F368;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void sub_100673698(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v4[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "is not";
    if (v3)
    {
      v6 = "is";
    }

    LODWORD(v8) = 136315138;
    *(&v8 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Airplane mode assertion %s granted for bread pairing status change", &v8, 0xCu);
  }

  if (v3)
  {
    v7 = *(a1 + 16);
    *&v8 = off_101E6F3D8;
    *(&v8 + 1) = v4;
    v9 = &v8;
    C2KRadioModule::updateBreadPairedStatus_sync(v4, v7, &v8);
  }
}

uint64_t sub_1006737B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10067386C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F3D8;
  a2[1] = v2;
  return result;
}

void sub_100673898(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (*(v1 + 1280) >= 2u && *(v1 + 680))
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#N Baseband is in airplane mode; release airplane mode assertion acquired for bread pairing status change", v4, 2u);
    }

    v3 = *(v1 + 688);
    *(v1 + 680) = 0;
    *(v1 + 688) = 0;
    if (v3)
    {
      sub_100004A34(v3);
    }
  }
}

uint64_t sub_10067392C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006739E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F468;
  a2[1] = v2;
  return result;
}

void sub_100673A14(uint64_t a1, uint64_t a2, void **a3)
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
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Failed to update data throttling for operator bundle change. %s", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  xpc_release(v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_100673B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100673B78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100673BC4(void *a1)
{
  *a1 = off_101E6F4E8;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_100673C28(void *a1)
{
  *a1 = off_101E6F4E8;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete();
}

void sub_100673D44(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6F4E8;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a2 + 32);
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void sub_100673DD4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {

    sub_100004A34(v4);
  }
}

void sub_100673E30(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(__p);
}

void sub_100673E88(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  if (v4 || (v8 = *(a1 + 16)) == 0)
  {
    if (os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177755C();
    }
  }

  else
  {
    *v8 = 1;
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_100673F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100673F7C(void *a1)
{
  *a1 = off_101E6F568;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  return a1;
}

void sub_100673FEC(void *a1)
{
  *a1 = off_101E6F568;
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete();
}

void sub_100674124(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = off_101E6F568;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v6 = a2[2];
    if (v6)
    {
      dispatch_group_enter(v6);
    }
  }

  v7 = a1[4];
  a2[3] = a1[3];
  a2[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = a1[6];
  a2[5] = a1[5];
  a2[6] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1006741B0(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[2];
    if (v5)
    {

      dispatch_release(v5);
    }
  }
}

void sub_100674218(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = __p[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = __p[2];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(__p);
}

void sub_10067427C(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  v10 = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    v10 = xpc_null_create();
  }

  if (v4 || !*(a1 + 40))
  {
    if (os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101777160();
    }
  }

  else
  {
    v8 = *(a1 + 24);
    if (v8 && xpc_get_type(*v8) == &_xpc_type_dictionary)
    {
      v11[0] = &v10;
      v11[1] = abm::kKeyTracePropertyValue;
      sub_100006354(v11, &v12);
      __p = 0;
      v18 = 0;
      v19 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p);
      }

      if (v14 >= 0)
      {
        v9 = &v13;
      }

      else
      {
        v9 = v13;
      }

      v15 = xpc_string_create(v9);
      if (!v15)
      {
        v15 = xpc_null_create();
      }

      __p = *(a1 + 24);
      v18 = "kRadioTracePropertyValue";
      sub_10000F688(&__p, &v15, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v15);
      v15 = 0;
      if (v14 < 0)
      {
        operator delete(v13);
      }

      xpc_release(v12);
    }

    **(a1 + 40) = 1;
  }

  xpc_release(v10);
  v10 = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100674450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a9);
  if (v24 < 0)
  {
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006744A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100674560(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F5E8;
  a2[1] = v2;
  return result;
}

void sub_10067458C(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 8);
  v8 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_101777590();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1006746B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100674700(uint64_t *a1)
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
        sub_10000FF50((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *sub_100674774(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_100674808(a1, 0, 0);
  }

  return a1;
}

uint64_t *sub_100674878(uint64_t *a1)
{
  v9 = a1;
  v2 = *a1;
  v3 = *(*a1 + 1280);
  if (v3 > 6 || ((0x67u >> v3) & 1) == 0)
  {
    v7 = *(v2 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Waiting to report radio boot health", buf, 2u);
    }

    sub_100674A04(v2 + 712, 0, 0, (a1 + 1));
  }

  v4 = 0x5Fu >> v3;
  v5 = *(v2 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "is not";
    if (v4)
    {
      v6 = "is";
    }

    *buf = 136315138;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Radio boot state %s healthy", buf, 0xCu);
  }

  sub_10000FFD0((a1 + 1), v4 & 1);
  return sub_100370DE4(&v9);
}

void sub_1006749F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100370DE4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100674A74(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100674B0C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1006647E4(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_100674B5C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100674BDC(uint64_t *a1)
{
  v10 = a1;
  v2 = *a1;
  v3 = *(*a1 + 1280);
  if (v3 > 6 || ((0x67u >> v3) & 1) == 0)
  {
    v8 = *(v2 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Waiting to report radio boot health", &buf, 2u);
    }

    sub_100674808(v2 + 736, 0, 0);
  }

  v4 = 0x20u >> v3;
  v5 = 0x5Fu >> v3;
  v6 = *(v2 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "is not";
    if (v5)
    {
      v7 = "is";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Radio boot state %s healthy", &buf, 0xCu);
  }

  if (v4)
  {
    *&buf = &buf;
    *(&buf + 1) = &buf;
    v12 = 0;
    sub_100674808(&buf, 0, 0);
  }

  sub_1001452E4((a1 + 1), v5 & 1, 0);
  return sub_100674B0C(&v10);
}

void sub_100674DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  sub_100664770(&a10);
  sub_100664770(&a13);
  sub_100674B0C(&a9);
  _Unwind_Resume(a1);
}

void *sub_100674E08(void *a1)
{
  *a1 = off_101E6F668;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_100664770(a1 + 1);
  return a1;
}

void sub_100674E5C(void *a1)
{
  *a1 = off_101E6F668;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_100664770(a1 + 1);

  operator delete();
}

uint64_t *sub_100674F60(uint64_t a1, void *a2)
{
  *a2 = off_101E6F668;
  result = sub_100674774(a2 + 1, a1 + 8);
  v5 = *(a1 + 40);
  a2[4] = *(a1 + 32);
  a2[5] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100674FCC(char *a1)
{
  sub_100675240(a1 + 1);

  operator delete(a1);
}

void sub_100675008(void *a1, int *a2, xpc_object_t *a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  object = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    v7 = xpc_null_create();
    object = v7;
  }

  v8 = a1 + 1;
  v9 = a1[5];
  if (!v9)
  {
    v10 = 0;
LABEL_19:
    for (i = a1[2]; i != v8; i = i[1])
    {
      sub_1001452E4((i + 2), 0, 0);
    }

LABEL_13:
    if (!v10)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = std::__shared_weak_count::lock(v9);
  if (!v10 || !a1[4])
  {
    goto LABEL_19;
  }

  if (!v4 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    v16[0] = &object;
    v16[1] = abm::kKeyHealthEventCauseCode;
    sub_100006354(v16, &v17);
    v11 = xpc::dyn_cast_or_default(&v17, 0, v14);
    xpc_release(v17);
  }

  else
  {
    v11 = 0;
  }

  v12 = a1[2];
  if (v12 != v8)
  {
    do
    {
      sub_1001452E4((v12 + 2), 0, v11);
      v12 = v12[1];
    }

    while (v12 != v8);
    goto LABEL_13;
  }

LABEL_14:
  sub_100004A34(v10);
LABEL_15:
  xpc_release(object);
  object = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100675194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  sub_100004A34(v13);
  xpc_release(a9);
  if (v14 < 0)
  {
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006751F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100675240(uint64_t *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_100664770(a1);
}

uint64_t sub_100675280(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100675318(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100664864(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_100675368(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1006753E8(char **a1)
{
  v9 = a1;
  v2 = *a1;
  v3 = *(*a1 + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v2 + 1128;
    if (v2[1151] < 0)
    {
      v4 = *v4;
    }

    v5 = v2 + 1104;
    if (v2[1127] < 0)
    {
      v5 = *v5;
    }

    v6 = v2 + 1152;
    if (v2[1175] < 0)
    {
      v6 = *v6;
    }

    *buf = 136446722;
    v11 = v4;
    v12 = 2082;
    v13 = v5;
    v14 = 2080;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Report baseband config update info with type:%{public}s time:%{public}s, details:%s", buf, 0x20u);
  }

  v7 = a1[4];
  if (!v7)
  {
    sub_100022DB4();
  }

  (*(*v7 + 48))(v7, v2 + 1104);
  return sub_100675318(&v9);
}

void sub_10067551C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100675318(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1006755A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F6E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006755CC(uint64_t result, _BYTE *a2)
{
  if (*a2 == 1)
  {
    if (*(*(result + 8) + 776))
    {
      C2KRadioModule::handleGetBasebandFirmwarePreflightInfo_sync(*(result + 8));
    }

    v3 = 0;
    ctu::rest::AssertionHandle::setHandler_impl();
    return sub_10000FF50(v2);
  }

  return result;
}

void sub_100675654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100675668(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006756B4(uint64_t a1, uint64_t a2)
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

void *sub_10067574C(void *a1)
{
  *a1 = off_101E6F768;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1006648E4((a1 + 1));
  return a1;
}

void sub_1006757A0(void *a1)
{
  *a1 = off_101E6F768;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1006648E4((a1 + 1));

  operator delete();
}

uint64_t sub_1006758AC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6F768;
  result = sub_1006756B4(a2 + 8, a1 + 8);
  *(a2 + 40) = *(a1 + 40);
  v5 = *(a1 + 56);
  *(a2 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100675920(void *a1)
{
  sub_100661BE0(a1 + 8);

  operator delete(a1);
}

void sub_10067595C(void *a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  object = v7;
  if (v7 && xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = a1[7];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v9 = a1[5];
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10 || !a1[6])
  {
LABEL_20:
    *&v26 = 0;
    DWORD2(v26) = 0;
    v25[0] = 0;
    v25[1] = 0;
    *(&v25[1] + 5) = 0;
    v25[3] = 0;
    v25[4] = 0;
    *(&v25[4] + 5) = 0;
    *v27 = 0u;
    *v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    sub_1001453F8((a1 + 1), 0);
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!v4 && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    *buf = &object;
    v34 = abm::kKeyBasebandRFFEData;
    sub_100006354(buf, &v21);
    memset(v25, 0, 24);
    xpc::dyn_cast_or_default();
    if (v25[0])
    {
      v25[1] = v25[0];
      operator delete(v25[0]);
    }

    xpc_release(v21);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    *v28 = 0u;
    v26 = 0u;
    memset(v25, 0, sizeof(v25));
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (RadioVendor == 1)
    {
      if (v23 != v22 && v23 - v22 == 50)
      {
        v16 = v27;
        v13.i32[0] = *v22;
        *v25 = vmovl_u16(*&vmovl_u8(v13));
        LODWORD(v25[2]) = *(v22 + 4);
        BYTE4(v25[2]) = *(v22 + 5);
        *&v25[3] = vmovl_u16(*(v22 + 6));
        LODWORD(v25[5]) = 0;
        BYTE4(v25[5]) = *(v22 + 14);
        LODWORD(v26) = *(v22 + 15);
        DWORD1(v26) = *(v22 + 16);
        DWORD2(v26) = *(v22 + 17);
        v15 = v22 + 18;
        v17 = v22 + 50;
        v18 = 32;
        goto LABEL_34;
      }

      if (os_log_type_enabled(*(v9 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017775E4();
      }
    }

    else if (RadioVendor == 3)
    {
      v14 = v22;
      if (v23 - v22 == 37)
      {
        LODWORD(v25[0]) = 0;
        *(v25 + 4) = vmovl_u16(*v22);
        BYTE4(v25[2]) = *(v22 + 19);
        LODWORD(v25[3]) = *(v22 + 2);
        HIDWORD(v25[3]) = *(v22 + 16);
        LODWORD(v25[4]) = *(v22 + 3);
        HIDWORD(v25[4]) = *(v22 + 18);
        LODWORD(v25[5]) = *(v22 + 17);
        BYTE4(v25[5]) = *(v22 + 20);
        LODWORD(v26) = *(v22 + 22);
        DWORD1(v26) = *(v22 + 21);
        DWORD2(v26) = *(v22 + 23);
        sub_1001122C4(&v28[1], v22 + 24, v22 + 32, 8uLL);
        v15 = v14 + 36;
        sub_1001122C4(&v30, v14 + 32, v14 + 36, 4uLL);
        v16 = &v31 + 1;
        v17 = v14 + 37;
        v18 = 1;
LABEL_34:
        sub_1001122C4(v16, v15, v17, v18);
        v19 = *(v9 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67110400;
          *&buf[4] = HIDWORD(v25[0]);
          LOWORD(v34) = 1024;
          *(&v34 + 2) = BYTE4(v25[2]);
          HIWORD(v34) = 1024;
          v35 = BYTE4(v25[5]);
          v36 = 1024;
          v37 = v26;
          v38 = 1024;
          v39 = DWORD1(v26);
          v40 = 1024;
          v41 = DWORD2(v26);
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I RFFEScanData: prd_id=%d, rfc_init_pass=%d, rffe_scan_pass=%d num_expected_devices=%d, num_detected_devices=%d, num_missing_devices=%d", buf, 0x26u);
        }

        sub_1001453F8((a1 + 1), 1);
        if (*(&v31 + 1))
        {
          *&v32 = *(&v31 + 1);
          operator delete(*(&v31 + 1));
        }

        if (v30)
        {
          *(&v30 + 1) = v30;
          operator delete(v30);
        }

        if (v28[1])
        {
          *&v29 = v28[1];
          operator delete(v28[1]);
        }

        if (v27[0])
        {
          v27[1] = v27[0];
          operator delete(v27[0]);
        }

        v11 = v22;
        if (!v22)
        {
          goto LABEL_21;
        }

        v23 = v22;
        goto LABEL_18;
      }

      if (os_log_type_enabled(*(v9 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101777658();
      }
    }

    if (*(&v31 + 1))
    {
      *&v32 = *(&v31 + 1);
      operator delete(*(&v31 + 1));
    }

    if (v30)
    {
      *(&v30 + 1) = v30;
      operator delete(v30);
    }

    if (v28[1])
    {
      *&v29 = v28[1];
      operator delete(v28[1]);
    }

    if (v27[0])
    {
      v27[1] = v27[0];
      operator delete(v27[0]);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  *&v26 = 0;
  DWORD2(v26) = 0;
  v25[0] = 0;
  v25[1] = 0;
  *(&v25[1] + 5) = 0;
  v25[3] = 0;
  v25[4] = 0;
  *(&v25[4] + 5) = 0;
  *v27 = 0u;
  *v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  sub_1001453F8((a1 + 1), 0);
  if (*(&v31 + 1))
  {
    *&v32 = *(&v31 + 1);
    operator delete(*(&v31 + 1));
  }

  if (v30)
  {
    *(&v30 + 1) = v30;
    operator delete(v30);
  }

  if (v28[1])
  {
    *&v29 = v28[1];
    operator delete(v28[1]);
  }

  v11 = v27[0];
  if (!v27[0])
  {
    goto LABEL_21;
  }

  v27[1] = v27[0];
LABEL_18:
  operator delete(v11);
LABEL_21:
  sub_100004A34(v10);
LABEL_22:
  xpc_release(object);
  object = 0;
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

uint64_t sub_100675F78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100675FC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1006760B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F7E8;
  a2[1] = v2;
  return result;
}

void sub_1006760E0(uint64_t a1, uint64_t a2, void **a3)
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
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Failed to update Bread Property. %s", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  xpc_release(v5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_100676204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100676244(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1006762AC(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a1;
  v5 = *a3;
  if (v5 != 5 && v5 != 255 && a3[1])
  {
    cf = 0;
    ServiceMap = Registry::getServiceMap(*(v4 + 784));
    v8 = ServiceMap;
    v10 = v9;
    if (v9 < 0)
    {
      v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
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
    v14 = sub_100009510(&v8[1].__m_.__sig, buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v8);
    v15 = 0;
    v17 = 1;
LABEL_15:
    (*(*v16 + 96))(&cf, v16, a2, 1, @"SupportsCellularLoggingAccess", kCFBooleanFalse, 0);
    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    v19 = cf;
    buf[0] = 0;
    if (cf)
    {
      v20 = CFGetTypeID(cf);
      if (v20 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v19, v21);
      }
    }

    v22 = buf[0];
    *a1[1] &= buf[0];
    v41[0] = 0;
    v41[1] = 0;
    v42 = 0;
    v23 = Registry::getServiceMap(*(v4 + 784));
    v24 = v23;
    if (v9 < 0)
    {
      v25 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v26 = 5381;
      do
      {
        v9 = v26;
        v27 = *v25++;
        v26 = (33 * v26) ^ v27;
      }

      while (v27);
    }

    std::mutex::lock(v23);
    *buf = v9;
    v28 = sub_100009510(&v24[1].__m_.__sig, buf);
    if (v28)
    {
      v30 = v28[3];
      v29 = v28[4];
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v24);
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v29);
        v31 = 0;
LABEL_28:
        (*(*v30 + 96))(__p, v30, a2, 1, @"CarrierName", 0, 0);
        memset(buf, 0, sizeof(buf));
        if (ctu::cf::assign())
        {
          *v41 = *buf;
          v42 = *&buf[16];
        }

        else
        {
          sub_10000501C(v41, "");
          if (buf[23] < 0)
          {
            operator delete(*buf);
          }
        }

        sub_10000A1EC(__p);
        if ((v31 & 1) == 0)
        {
          sub_100004A34(v29);
        }

        v32 = subscriber::simSlotAsInstance();
        if (v32 >= 2)
        {
          sub_1000A58E4("array::at");
        }

        v33 = *&byte_101FBA918[8 * v32 + 8];
        sub_10000501C(buf, abm::kTraceBaseband);
        sub_10000501C(__p, v33);
        (*(*v4 + 240))(v4, buf, __p, v41);
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        v34 = *(v4 + 40);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = subscriber::asString();
          v36 = CSIBOOLAsString(v22 & 1);
          v37 = *a1[1];
          v38 = v41;
          if (v42 < 0)
          {
            v38 = v41[0];
          }

          *buf = 136315906;
          *&buf[4] = v35;
          *&buf[12] = 2080;
          *&buf[14] = v36;
          *&buf[22] = 1024;
          v45 = v37;
          v46 = 2080;
          v47 = v38;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Slot: %s, Carrier Bundle for Logging: %s, allowed: %d, Carrier Name: %s", buf, 0x26u);
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(v41[0]);
        }

        sub_10000A1EC(&cf);
        return;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v24);
    v29 = 0;
    v31 = 1;
    goto LABEL_28;
  }

  v18 = *(v4 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Carrier Bundle Error or is not ready. Force the present key as false", buf, 2u);
  }

  *a1[1] = 0;
}

void sub_100676758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10000A1EC(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100676890(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F888;
  a2[1] = v2;
  return result;
}

void sub_1006768BC(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 8);
  v8 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_1017776CC();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1006769E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100676AA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F908;
  a2[1] = v2;
  return result;
}

void sub_100676ACC(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 8);
  v8 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_101777720();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100676BF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100676CB0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6F988;
  a2[1] = v2;
  return result;
}

void sub_100676CDC(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 8);
  v8 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_101777774();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100676E04(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100676EC0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6FA08;
  a2[1] = v2;
  return result;
}

void sub_100676EEC(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 8);
  v8 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_1017777C8();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100677014(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006770D0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6FA88;
  a2[1] = v2;
  return result;
}

void sub_1006770FC(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 8);
  v8 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_10177781C();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100677224(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006772E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E6FB08;
  a2[1] = v2;
  return result;
}

void sub_10067730C(uint64_t a1, uint64_t a2, void **a3)
{
  v6 = *a2;
  v4 = v6;
  *__p = *(a2 + 8);
  v8 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(*(*(a1 + 8) + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10064CB44(&v6, v9);
    sub_101777870();
  }

  xpc_release(v5);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100677434(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100677480(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_100080280(*(a1 + 8), (a1 + 16));
  }

  return a1;
}

__n128 sub_100677534(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6FB88;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100677564(uint64_t a1, int *a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 31);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *a3;
  *a3 = xpc_null_create();
  v8 = *(a1 + 8);
  v9 = *(v8 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v10)
    {
      LODWORD(v11) = 136315138;
      *(&v11 + 4) = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Setting operating mode = %s, failed", &v11, 0xCu);
    }

    ATCSMutex::lock((v8 + 56));
    *&v11 = 1;
    *(&v11 + 1) = v8 + 208;
    v12 = *(v8 + 240);
    LODWORD(v12) = *(a1 + 20);
    (*(**(v8 + 64) + 72))(*(v8 + 64));
    sub_100677480(&v11);
    ATCSMutex::unlock((v8 + 56));
  }

  else if (v10)
  {
    LODWORD(v11) = 136315138;
    *(&v11 + 4) = asString();
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Setting operating mode = %s, succeeded", &v11, 0xCu);
  }

  xpc_release(v7);
  if (v6 < 0)
  {
    operator delete(v5);
  }
}

void sub_100677700(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10067775C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100677824(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6FC08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void sub_10067785C(uint64_t a1, uint64_t a2, void **a3)
{
  v7 = *a2;
  v4 = v7;
  *__p = *(a2 + 8);
  v9 = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(**(a1 + 8), OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 16);
    sub_10064CB44(&v7, v10);
    sub_1017778C4(v6, v10, v11);
  }

  xpc_release(v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100677988(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006779E8()
{
  {
    return __cxa_atexit(sub_100DBA2A0, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100677A28()
{
  sub_10000501C(byte_101FBA858, "/tmp/CommCenter.dumping");

  return __cxa_atexit(&std::string::~string, byte_101FBA858, &_mh_execute_header);
}

void sub_100677A88(uint64_t a1, NSObject **a2, void *a3, __int128 *a4)
{
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "lazuli.msg.mdl");
  sub_100677F28((a1 + 8), a2, &v11);
  ctu::OsLogContext::~OsLogContext(&v11);
  v12[0] = off_101E2B528;
  v12[1] = sub_100677FB4;
  v12[3] = v12;
  sub_100677FE0((a1 + 48), a3, v12);
  sub_1000A8744(v12);
  *a1 = off_101E6FC88;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v8;
  }

  *(a1 + 80) = *a3;
  v9 = a3[1];
  *(a1 + 88) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = SlotIdFromPersonalityId();
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a4 + 7);
  v10 = *(a4 + 8);
  *(a1 + 232) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1006781A4();
}

void sub_100677D7C(_Unwind_Exception *a1)
{
  TMKXPCServer.shutdown()();
  v3 = v1[6];
  v1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_100677F28(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100677F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

const char *sub_100677FB4(int a1)
{
  v1 = "lazuli.msg.mdl.?";
  if (a1 == 2)
  {
    v1 = "lazuli.msg.mdl.2";
  }

  if (a1 == 1)
  {
    return "lazuli.msg.mdl.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_100677FE0(capabilities::ct *a1, uint64_t a2, uint64_t a3)
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

void sub_100678138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

void sub_1006782D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  sub_10177793C((v12 + 8), (v11 + 8), (v10 + 8));
  operator delete();
}

uint64_t *sub_100678308(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1006ADDF8(v2);
    operator delete();
  }

  return a1;
}

void sub_10067835C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = SlotIdFromPersonalityId();
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  buf[0] = v6;
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
    v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_1017779EC();
    }

    goto LABEL_23;
  }

LABEL_11:
  v21 = 0;
  v22 = 0;
  (*(*v12 + 32))(&v21, v12, v2);
  if (v21)
  {
    (*(*v21 + 232))(v21, v2);
    v20[2] = 0;
    v20[3] = 0;
    v15 = *(a1 + 88);
    v20[0] = *(a1 + 80);
    v20[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v19[0] = v21;
    v19[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100004AA0(buf, (a1 + 8));
    v16 = buf[1];
    v18[0] = buf[0];
    v18[1] = buf[1];
    if (buf[1])
    {
      atomic_fetch_add_explicit((buf[1] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
    }

    sub_1000CE5D0(v3, v20, v19, v18);
  }

  v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_1017779B8();
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

LABEL_23:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_100678860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067892C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  v16 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v16);
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

      goto LABEL_11;
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
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Failed to get SD interface while removing delegate", &v16, 2u);
    }

    goto LABEL_20;
  }

LABEL_11:
  v16 = 0;
  v17 = 0;
  v13 = (a1 + 56);
  (*(*v10 + 32))(&v16, v10, a1 + 56);
  if (v16)
  {
    (*(*v16 + 232))(v16, a1 + 56);
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 79) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315138;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I IMS delegate removed: %s", buf, 0xCu);
    }
  }

  else
  {
    v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      sub_101777A20();
    }
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

LABEL_20:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_100678C38(uint64_t a1)
{
  v2 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I slot: %s", &v8, 0xCu);
  }

  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "YES";
    if (*(a1 + 176))
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v6 = *(a1 + 240);
    if (*(a1 + 192))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    v8 = 136315650;
    if (!v6)
    {
      v4 = "NO";
    }

    v9 = v5;
    v10 = 2080;
    v11 = v7;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I sip-stack: %s, ims-client: %s, hub: %s", &v8, 0x20u);
  }

  sub_100B9A980(*(a1 + 240));
}

void sub_100678DCC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_100C16CE4(&v21, a2);
  v5 = *(a1 + 280);
  v6 = *(a1 + 288);
  if (v5 == v6)
  {
LABEL_23:
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = &v21;
      if (v23 < 0)
      {
        v15 = v21;
      }

      LODWORD(__p) = 136380675;
      *(&__p + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I No group model for: %{private}s", &__p, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    if (!*v5)
    {
      v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        sub_101777A54(&v19, v20);
      }

      goto LABEL_22;
    }

    sub_1009CC9A8((*v5 + 48), &__p);
    v7 = v25;
    if ((v25 & 0x80u) == 0)
    {
      v8 = v25;
    }

    else
    {
      v8 = *(&__p + 1);
    }

    v9 = HIBYTE(v23);
    if (v23 < 0)
    {
      v9 = v22;
    }

    if (v8 != v9)
    {
      v12 = 0;
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      operator delete(__p);
      goto LABEL_21;
    }

    if ((v25 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v23 >= 0)
    {
      v11 = &v21;
    }

    else
    {
      v11 = v21;
    }

    v12 = memcmp(p_p, v11, v8) == 0;
    if (v7 < 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v12)
    {
      break;
    }

LABEL_22:
    v5 += 2;
    if (v5 == v6)
    {
      goto LABEL_23;
    }
  }

  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = &v21;
    if (v23 < 0)
    {
      v17 = v21;
    }

    LODWORD(__p) = 136380675;
    *(&__p + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Group model found in memory: %{private}s", &__p, 0xCu);
  }

  v18 = v5[1];
  *a3 = *v5;
  a3[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_28:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v21);
  }
}

void sub_100679094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006790C4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 280);
  for (i = *(a1 + 288); v6 != i; v6 += 2)
  {
    v8 = *v6;
    if (*v6)
    {
      v9 = *(v8 + 191);
      if (v9 >= 0)
      {
        v10 = *(v8 + 191);
      }

      else
      {
        v10 = *(v8 + 176);
      }

      v11 = *(a2 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = a2[1];
      }

      if (v10 == v11)
      {
        v15 = *(v8 + 168);
        v13 = v8 + 168;
        v14 = v15;
        v16 = (v9 >= 0 ? v13 : v14);
        v17 = v12 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
          v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v23 = a2;
            }

            else
            {
              v23 = *a2;
            }

            *buf = 136446210;
            v28 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Group model found in memory for conversationId: %{public}s", buf, 0xCu);
          }

          v24 = v6[1];
          *a3 = *v6;
          a3[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          return;
        }
      }
    }

    else
    {
      v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        sub_101777A80(&v25, v26);
      }
    }
  }

  v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *buf = 136446210;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I No group model found in memory for conversationId: %{public}s", buf, 0xCu);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_100679330(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = 0;
  v18 = 0;
  sub_1006790C4(a1, a2, &v17);
  if (v17)
  {
    memset(buf, 0, sizeof(buf));
    v12 = 0;
    sub_10091665C(v17, __p);
    sub_1009CC9A8(__p, &v13);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&v15, *a2, *(a2 + 1));
    }

    else
    {
      v15 = *a2;
      v16 = *(a2 + 2);
    }

    *a3 = *buf;
    *(a3 + 16) = v12;
    v12 = 0;
    memset(buf, 0, sizeof(buf));
    *(a3 + 24) = v13;
    *(a3 + 40) = v14;
    v13 = 0uLL;
    v14 = 0;
    *(a3 + 64) = v16;
    *(a3 + 48) = v15;
    v16 = 0;
    v15 = 0uLL;
    *(a3 + 72) = 1;
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Group model does not exist, falling back to retired conversations", buf, 2u);
    }

    v7 = sub_100007A6C(a1 + 304, a2);
    if (a1 + 312 == v7)
    {
      v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        sub_101777AAC();
      }

      *a3 = 0;
      *(a3 + 72) = 0;
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v12 = 0;
      sub_1009CC9A8((v7 + 56), &v13);
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v15, *a2, *(a2 + 1));
      }

      else
      {
        v15 = *a2;
        v16 = *(a2 + 2);
      }

      *a3 = *buf;
      *(a3 + 16) = v12;
      *(a3 + 24) = v13;
      *(a3 + 40) = v14;
      *(a3 + 48) = v15;
      *(a3 + 64) = v16;
      *(a3 + 72) = 1;
    }
  }

  if (v18)
  {
    sub_100004A34(v18);
  }
}

void sub_10067958C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v29 = *(v27 - 40);
  if (v29)
  {
    sub_100004A34(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067960C(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_1009CC9A8(a2, &v21);
  v5 = *(a1 + 328);
  v6 = *(a1 + 336);
  if (v5 == v6)
  {
LABEL_23:
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = &v21;
      if (v23 < 0)
      {
        v15 = v21;
      }

      LODWORD(__p) = 136380675;
      *(&__p + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I No 1:1 model for: [%{private}s]", &__p, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    if (!*v5)
    {
      v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        sub_101777A54(&v19, v20);
      }

      goto LABEL_22;
    }

    sub_1009CC9A8((*v5 + 48), &__p);
    v7 = v25;
    if ((v25 & 0x80u) == 0)
    {
      v8 = v25;
    }

    else
    {
      v8 = *(&__p + 1);
    }

    v9 = HIBYTE(v23);
    if (v23 < 0)
    {
      v9 = v22;
    }

    if (v8 != v9)
    {
      v12 = 0;
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      operator delete(__p);
      goto LABEL_21;
    }

    if ((v25 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v23 >= 0)
    {
      v11 = &v21;
    }

    else
    {
      v11 = v21;
    }

    v12 = memcmp(p_p, v11, v8) == 0;
    if (v7 < 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v12)
    {
      break;
    }

LABEL_22:
    v5 += 2;
    if (v5 == v6)
    {
      goto LABEL_23;
    }
  }

  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = &v21;
    if (v23 < 0)
    {
      v17 = v21;
    }

    LODWORD(__p) = 136380675;
    *(&__p + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I 1:1 model found in memory: [%{private}s]", &__p, 0xCu);
  }

  v18 = v5[1];
  *a3 = *v5;
  a3[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_28:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v21);
  }
}

void sub_1006798D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100679904(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  sub_100C16CE4(v20, a2);
  *a3 = 0;
  a3[1] = 0;
  sub_100678DCC(a1, a2, a3);
  if (!*a3)
  {
    v8 = a3[1];
    if (v8)
    {
      sub_100004A34(v8);
    }

    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v20;
      if (v21 < 0)
      {
        v10 = v20[0];
      }

      buf = 136380675;
      *buf_4 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Group model will be created for: [%{private}s]", &buf, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
    v11 = *(a1 + 96);
    v12 = *(a1 + 88);
    v19[0] = *(a1 + 80);
    v19[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v21) < 0)
    {
      sub_100005F2C(__dst, v20[0], v20[1]);
    }

    else
    {
      *__dst = *v20;
      v18 = v21;
    }

    v13 = *(a1 + 184);
    v16[0] = *(a1 + 176);
    v16[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a1 + 200);
    v15[0] = *(a1 + 192);
    v15[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1009CCB38(&buf, v11, v19, __dst, v16, v15, (a1 + 104), (a1 + 152));
    sub_1006AE350();
  }

  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v20;
    if (v21 < 0)
    {
      v7 = v20[0];
    }

    buf = 136380675;
    *buf_4 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Group model exists for: [%{private}s]", &buf, 0xCu);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_100679CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100679D80(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_100679DF8(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  __s[0] = 0;
  __s[1] = 0;
  v20 = 0;
  sub_100C16CE4(__p, a2);
  sub_100C161EC(__s, __p);
  if (v22 < 0)
  {
    operator delete(*__p);
  }

  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  if (!sub_100C173B4(__s))
  {
    sub_100C171EC();
  }

  sub_1009CC9A8(__s, v17);
  *a3 = 0;
  *(a3 + 1) = 0;
  sub_100C161EC(__p, v17);
  sub_10067960C(a1, __p, a3);
  if (v22 < 0)
  {
    operator delete(*__p);
  }

  if (!*a3)
  {
    v5 = *(a3 + 1);
    if (v5)
    {
      sub_100004A34(v5);
    }

    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v17;
      if (v18 < 0)
      {
        v7 = v17[0];
      }

      *__p = 136380675;
      *&__p[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I 1:1 model will be created for: [%{private}s]", __p, 0xCu);
    }

    *a3 = 0;
    *(a3 + 1) = 0;
    v8 = *(a1 + 96);
    v9 = *(a1 + 88);
    v16[0] = *(a1 + 80);
    v16[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__dst, v17[0], v17[1]);
    }

    else
    {
      *__dst = *v17;
      v15 = v18;
    }

    v10 = *(a1 + 184);
    v13[0] = *(a1 + 176);
    v13[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 200);
    v12[0] = *(a1 + 192);
    v12[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1009CCB38(__p, v8, v16, __dst, v13, v12, (a1 + 104), (a1 + 152));
    sub_1006AE4B4();
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__s[0]);
  }
}

void sub_10067A0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067A1B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 232);
  if (v6)
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = *(a1 + 224);
      if (v10)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        sub_100679330(a1, a2, &v39);
        if ((BYTE8(v43) & 1) == 0)
        {
          v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Falling back to deprecated fDestination ctor.", buf, 2u);
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(buf, *a2, *(a2 + 8));
          }

          else
          {
            *buf = *a2;
            v25[0] = *(a2 + 16);
          }

          memset(&v25[1], 0, 48);
          sub_1000D1E08(&v39, buf);
          if (SHIBYTE(v25[6]) < 0)
          {
            operator delete(v25[4]);
          }

          if (SHIBYTE(v25[3]) < 0)
          {
            operator delete(v25[1]);
          }

          if (SHIBYTE(v25[0]) < 0)
          {
            operator delete(*buf);
          }
        }

        v38 = 0;
        v37 = 0u;
        v35 = 0u;
        memset(v36, 0, sizeof(v36));
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        *buf = 0u;
        memset(v25, 0, sizeof(v25));
        v13 = *(a1 + 96);
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(v17, *a3, *(a3 + 8));
        }

        else
        {
          *v17 = *a3;
          v18 = *(a3 + 16);
        }

        v19 = 0;
        v20 = 0;
        LOBYTE(v21) = 0;
        v23 = 0;
        (*(*v10 + 48))(buf, v10, v13, v17, &v39);
        if (v23 == 1 && v22 < 0)
        {
          operator delete(v21);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (v38)
        {
          sub_1006A0A6C(a4, buf);
          *a4 = off_101EC8DD8;
          v14 = (a4 + 248);
          if (SHIBYTE(v36[1]) < 0)
          {
            sub_100005F2C(v14, *(&v36[0] + 1), *&v36[1]);
          }

          else
          {
            *v14 = *(v36 + 8);
            *(a4 + 264) = *(&v36[1] + 1);
          }

          v16 = 1;
        }

        else
        {
          v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
          {
            sub_101777B1C();
          }

          v16 = 0;
          *a4 = 0;
        }

        *(a4 + 272) = v16;
        if (v38 == 1)
        {
          if (*(&v37 + 1))
          {
            sub_100004A34(*(&v37 + 1));
          }

          sub_100C18C58(buf);
        }

        if (BYTE8(v43) == 1)
        {
          if (SBYTE7(v43) < 0)
          {
            operator delete(v42);
          }

          if (SHIBYTE(v41) < 0)
          {
            operator delete(*(&v40 + 1));
          }

          if (SBYTE7(v40) < 0)
          {
            operator delete(v39);
          }
        }

LABEL_48:
        sub_100004A34(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    sub_101777B50();
  }

  *a4 = 0;
  *(a4 + 272) = 0;
  if (v9)
  {
    goto LABEL_48;
  }
}

void sub_10067A570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100C18630(v21);
  sub_10067A63C(va);
  sub_10067A680(v22 - 144);
  sub_100004A34(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_10067A5EC(uint64_t a1)
{
  if (*(a1 + 88) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10067A63C(uint64_t a1)
{
  if (*(a1 + 288) == 1)
  {
    v2 = *(a1 + 280);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100C18C58(a1);
  }

  return a1;
}

uint64_t sub_10067A680(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_10067A6E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 232);
  if (v6)
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = *(a1 + 224);
      if (v10)
      {
        v36 = 0;
        v35 = 0u;
        memset(v34, 0, sizeof(v34));
        v11 = *(a1 + 96);
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__dst, *a2, *(a2 + 8));
        }

        else
        {
          *__dst = *a2;
          v24 = *(a2 + 16);
        }

        v29 = 0;
        v30 = 0;
        v32 = 0;
        v33 = 0;
        v31 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 0;
        v28 = 0;
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(v16, *a3, *(a3 + 8));
        }

        else
        {
          *v16 = *a3;
          v17 = *(a3 + 16);
        }

        v18 = 0;
        v19 = 0;
        LOBYTE(__p) = 0;
        v22 = 0;
        (*(*v10 + 40))(v34, v10, v11, __dst, v16);
        if (v22 == 1 && v21 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16[0]);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(v31);
        }

        if (v30 == 1)
        {
          v16[0] = &v29;
          sub_1000087B4(v16);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v25);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v36)
        {
          sub_1006A0A6C(a4, v34);
          *a4 = off_101EC8DB8;
          v13 = (a4 + 248);
          if (SHIBYTE(v34[16]) < 0)
          {
            sub_100005F2C(v13, *(&v34[15] + 1), *&v34[16]);
          }

          else
          {
            *v13 = *(&v34[15] + 8);
            *(a4 + 264) = *(&v34[16] + 1);
          }

          v15 = 1;
        }

        else
        {
          v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
          {
            sub_101777B84();
          }

          v15 = 0;
          *a4 = 0;
        }

        *(a4 + 272) = v15;
        if (v36 == 1)
        {
          if (*(&v35 + 1))
          {
            sub_100004A34(*(&v35 + 1));
          }

          sub_100C189A8(v34);
        }

LABEL_40:
        sub_100004A34(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    sub_101777B50();
  }

  *a4 = 0;
  *(a4 + 272) = 0;
  if (v9)
  {
    goto LABEL_40;
  }
}

void sub_10067A9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  sub_100C18630(v35);
  sub_10067AAC8(va);
  sub_100004A34(v34);
  _Unwind_Resume(a1);
}

uint64_t sub_10067AA50(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10067AAC8(uint64_t a1)
{
  if (*(a1 + 288) == 1)
  {
    v2 = *(a1 + 280);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100C189A8(a1);
  }

  return a1;
}

BOOL sub_10067AB0C(uint64_t a1, uint64_t *a2)
{
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  sub_100C17FB8(__p, a2);
  sub_100C16CE4(v27, __p);
  if (v30 < 0)
  {
    operator delete(*__p);
  }

  v4 = SHIBYTE(v28);
  v5 = v27[0];
  v6 = v27[1];
  if (v28 >= 0)
  {
    v7 = v27;
  }

  else
  {
    v7 = v27[0];
  }

  if (v28 >= 0)
  {
    v8 = SHIBYTE(v28);
  }

  else
  {
    v8 = v27[1];
  }

  if (v8 >= 11)
  {
    v9 = v7 + v8;
    v10 = v7;
    do
    {
      v11 = memchr(v10, 99, v8 - 10);
      if (!v11)
      {
        break;
      }

      if (*v11 == 0x6E657265666E6F63 && *(v11 + 3) == 0x3D65636E65726566)
      {
        if (v11 == v9 || v11 - v7 == -1)
        {
          break;
        }

        v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v14 = a2;
          }

          else
          {
            v14 = *a2;
          }

          *__p = 136380675;
          *&__p[4] = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Destination is a group (automatic detection): [%{private}s]", __p, 0xCu);
        }

        v15 = 1;
        goto LABEL_41;
      }

      v10 = (v11 + 1);
      v8 = v9 - v10;
    }

    while (v9 - v10 >= 11);
  }

  v16 = *(a1 + 280);
  v17 = *(a1 + 288);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1174405120;
  v23 = sub_10067AE80;
  v24 = &unk_101E6FCC0;
  if (v4 < 0)
  {
    sub_100005F2C(v25, v5, v6);
  }

  else
  {
    *v25 = *v27;
    v26 = v28;
  }

  if (v16 != v17)
  {
    while (((v23)(v22, v16) & 1) == 0)
    {
      v16 += 16;
      if (v16 == v17)
      {
        v16 = v17;
        break;
      }
    }
  }

  v18 = *(a1 + 288);
  v15 = v16 != v18;
  if (v16 != v18)
  {
    v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      *__p = 136380675;
      *&__p[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Destination is a group: [%{private}s]", __p, 0xCu);
    }
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

LABEL_41:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  return v15;
}

void sub_10067AE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10067AE80(uint64_t a1, void *a2)
{
  sub_1009CC9A8((*a2 + 48), __p);
  v3 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 == v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v8 = v10;
    if (v6 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = memcmp(v7, v11, v4) == 0;
    if (v3 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    if (v15 < 0)
    {
LABEL_16:
      operator delete(__p[0]);
    }
  }

  return v12;
}

_BYTE *sub_10067AF34(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_100005F2C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_10067AF60(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_10067AF74(uint64_t a1, void *a2, xpc_object_t *a3)
{
  v11[0] = a3;
  v11[1] = ims::lazuli::kIsGroupChat;
  sub_100006354(v11, &object);
  v7 = xpc::dyn_cast_or_default(&object, 0, v6);
  xpc_release(object);
  v8 = *a3;
  if (v7)
  {
    v10 = *a3;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v10 = xpc_null_create();
    }

    sub_10067B0A0(a1, a2, &v10);
    xpc_release(v10);
  }

  else
  {
    v9 = *a3;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v9 = xpc_null_create();
    }

    sub_10067CD20(a1, a2, &v9);
    xpc_release(v9);
  }
}

void sub_10067B0A0(uint64_t a1, void *a2, void **a3)
{
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Incoming group chat", buf, 2u);
  }

  v8 = 0;
  v7 = 0;
  v9 = 0;
  v10[0] = a3;
  v10[1] = ims::lazuli::kConferenceFocus;
  sub_100006354(v10, object);
  memset(buf, 0, sizeof(buf));
  v13 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object[0]);
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_101777E30();
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }
}

void sub_10067C780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  sub_1006B4EA4(&STACK[0x438]);
  sub_100687218(&a17);
  sub_1006868D0(&a33);
  if (a58 < 0)
  {
    operator delete(__p);
  }

  sub_1006868D0(&STACK[0x5A0]);
  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a66 == 1)
  {
    STACK[0x5A0] = &a65;
    sub_10003CA58(&STACK[0x5A0]);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  sub_1000D45B0(&STACK[0x458]);
  sub_100004A34(v72);
  if (a71 == 1 && a69)
  {
    a70 = a69;
    operator delete(a69);
  }

  if (LOBYTE(STACK[0x218]) == 1 && SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  sub_1006A27BC(&STACK[0x6D0]);
  v74 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v74;
    operator delete(v74);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  sub_100686FD0(&STACK[0x2E0]);
  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(STACK[0x338]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (v71)
  {
    sub_100004A34(v71);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  _Unwind_Resume(a1);
}

void sub_10067CD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Incoming 1:1 chat", buf, 2u);
  }

  v8 = 0;
  v7 = 0;
  v9 = 0;
  *__dst = a3;
  *&__dst[8] = ims::lazuli::kRemoteUri;
  sub_100006354(__dst, object);
  memset(buf, 0, sizeof(buf));
  v13 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object[0]);
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_101777E98();
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }
}

void sub_10067DD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, uint64_t a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_1006B4EA4(&STACK[0x2C0]);
  sub_100260030(&a15);
  sub_1006868D0(&a21);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  sub_1006868D0(&STACK[0x430]);
  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  sub_100004A34(v68);
  if (a56 == 1 && a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  if (a63 == 1 && a62 < 0)
  {
    operator delete(a57);
  }

  sub_1006A27BC(&STACK[0x570]);
  if (a65)
  {
    a66 = a65;
    operator delete(a65);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (STACK[0x228])
  {
    sub_100004A34(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  _Unwind_Resume(a1);
}

void sub_10067E184(uint64_t a1, uint64_t a2, void *a3)
{
  __p[0] = a3;
  __p[1] = ims::lazuli::kIsChatbot;
  sub_100006354(__p, object);
  v6 = xpc::dyn_cast_or_default(object, 0, v5);
  xpc_release(object[0]);
  if (v6)
  {
    object[0] = 0;
    object[1] = 0;
    v25 = 0;
    v22[0] = a3;
    v22[1] = ims::lazuli::kRemoteUri;
    sub_100006354(v22, &v23);
    memset(__p, 0, sizeof(__p));
    xpc::dyn_cast_or_default();
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v23);
    v7 = HIBYTE(v25);
    if (SHIBYTE(v25) < 0)
    {
      v7 = object[1];
    }

    if (!v7)
    {
      v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        sub_101777F00();
      }

      goto LABEL_44;
    }

    sub_100C17E6C(__p, object);
    v8 = sub_100C17440(__p);
    v9 = v8;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else if (v8)
    {
LABEL_9:
      v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = object;
        if (SHIBYTE(v25) < 0)
        {
          v11 = object[0];
        }

        LODWORD(__p[0]) = 141558275;
        *(__p + 4) = 1752392040;
        WORD2(__p[1]) = 2081;
        *(&__p[1] + 6) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Incoming chat from tel uri which is a chatbot: %{private, mask.hash}s", __p, 0x16u);
      }

      v12 = *(a1 + 240);
      if (v12)
      {
        sub_100BA02E0(v12, object);
      }

      else
      {
        v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          sub_101777ECC();
        }
      }

      goto LABEL_44;
    }

    sub_100C17E6C(__p, object);
    v14 = sub_100C1767C(__p);
    v15 = v14;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if (!v15)
      {
        goto LABEL_44;
      }
    }

    else if (!v14)
    {
LABEL_44:
      if (SHIBYTE(v25) < 0)
      {
        operator delete(object[0]);
      }

      return;
    }

    v17 = *(a1 + 400);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = *(a1 + 392);
        if (v19)
        {
          v20 = *(a1 + 96);
          if (SHIBYTE(v25) < 0)
          {
            sub_100005F2C(__p, object[0], object[1]);
          }

          else
          {
            *__p = *object;
            __p[2] = v25;
          }

          v31 = 0;
          v32 = 0;
          v34 = 0;
          v35 = 0;
          v33 = 0;
          v28 = 0;
          v29 = 0;
          v27 = 0;
          v30 = 0;
          (*(*v19 + 104))(v19, v20, __p);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(v33);
          }

          if (v32 == 1)
          {
            v22[0] = &v31;
            sub_1000087B4(v22);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(v27);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

LABEL_43:
          sub_100004A34(v18);
          goto LABEL_44;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v21 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      sub_101777D94();
    }

    if (!v18)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }
}

void sub_10067E588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_100004A34(v23);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10067E654(uint64_t a1, uint64_t a2, void **a3)
{
  object = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    object = xpc_null_create();
  }

  v5 = 0;
  sub_10067E76C(a1);
  xpc_release(object);
}

void sub_10067E718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, int a49, __int16 a50, char a51, char a52)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10067E76C(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v5 = 0;
  v4 = 0;
  v6 = 0;
  v8[0] = v2;
  v8[1] = ims::lazuli::kBody;
  sub_100006354(v8, object);
  v10 = 0;
  __p = 0;
  v11 = 0;
  xpc::dyn_cast_or_default();
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  xpc_release(object[0]);
  v3 = (*(**(v1 + 48) + 16))(*(v1 + 48), *(v1 + 96));
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    sub_101778188();
  }
}

void sub_10068107C(_Unwind_Exception *a1)
{
  if (STACK[0x370])
  {
    std::__shared_weak_count::__release_weak(STACK[0x370]);
  }

  sub_100683490(&STACK[0x390]);
  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  sub_100683490(&STACK[0x2970]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  sub_100682E68(&STACK[0x12E0]);
  v3 = STACK[0x688];
  if (STACK[0x688])
  {
    STACK[0x690] = v3;
    operator delete(v3);
  }

  sub_100683A3C(&STACK[0x24C0]);
  if (SLOBYTE(STACK[0x867]) < 0)
  {
    operator delete(STACK[0x850]);
  }

  if ((STACK[0x890] & 1) != 0 && SLOBYTE(STACK[0x887]) < 0)
  {
    operator delete(STACK[0x870]);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  if (LOBYTE(STACK[0x8B8]) == 1 && SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  sub_1006837A4(&STACK[0x8C8]);
  if (SLOBYTE(STACK[0x987]) < 0)
  {
    operator delete(STACK[0x970]);
  }

  if (LOBYTE(STACK[0x34D0]) == 1)
  {
    sub_1006A27BC(&STACK[0x3108]);
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(STACK[0x990]);
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(STACK[0x9A8]);
  }

  if (SLOBYTE(STACK[0x9D7]) < 0)
  {
    operator delete(STACK[0x9C0]);
  }

  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(STACK[0x9E0]);
  }

  v4 = STACK[0x9F8];
  if (STACK[0x9F8])
  {
    STACK[0xA00] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_100681DF8(uint64_t *a1)
{
  __s = 0uLL;
  v4 = 0;
  v2 = sub_100C161EC(&__s, a1);
  sub_100C174CC(v2);
}

void sub_100681F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a27 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100681FD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 8))
      {
        dispatch_assert_queue_V2(*(v5 + 24));
        v26[0] = 0;
        v26[1] = 0;
        v27 = 0;
        if ((*(a1 + 24) & 1) == 0 && *(a1 + 25) != 1)
        {
          memset(buf, 0, 24);
          sub_100681DF8((a1 + 32));
        }

        v8 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = CSIBOOLAsString(*(a1 + 24));
          v10 = CSIBOOLAsString(*(a1 + 25));
          v11 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v11 = *v11;
          }

          *buf = 136315651;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v10;
          *&buf[22] = 2081;
          *&buf[24] = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Group destination detected [from client: %s, auto-detect-status: %s]: [%{private}s]", buf, 0x20u);
        }

        v24 = 0;
        v25 = 0;
        sub_100686968(buf, a1 + 32);
        sub_100679904(v5, buf, &v24);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v24)
        {
          sub_100914C50(v24, (a1 + 56));
          v50 = 0;
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
          memset(buf, 0, sizeof(buf));
          sub_10091601C(v24, buf);
          v12 = BYTE8(v40);
          if (BYTE8(v40))
          {
            v13 = *(v5 + 240);
            sub_1006A3010(v30, a2);
            sub_100BAA768(v13, buf, a1 + 80, a1 + 104, a1 + 56, v30);
            if (v30[968] == 1)
            {
              sub_1006A27BC(v30);
            }

            v15 = v24;
            v14 = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100C17FB8(&__p, a1 + 32);
            sub_100C16CE4(v22, &__p);
            *v26 = *v22;
            v27 = v23;
            HIBYTE(v23) = 0;
            LOBYTE(v22[0]) = 0;
            if (v29 < 0)
            {
              operator delete(__p);
            }
          }

          else
          {
            v17 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
            if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
            {
              sub_1017781BC();
            }

            v15 = 0;
            v14 = 0;
          }

          sub_1000D45B0(buf);
          if (v25)
          {
            sub_100004A34(v25);
          }

          if (v12)
          {
            if (v15)
            {
              sub_1009CE7A0(v15, (a1 + 152));
              v18 = *(a1 + 79);
              if (v18 < 0)
              {
                v18 = *(a1 + 64);
              }

              if (v18)
              {
                if (*(a2 + 968) == 1 && sub_100A01F04(a2))
                {
                  v19 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_10177830C((a1 + 79), (a1 + 56), v19);
                  }
                }

                else
                {
                  (*(v15->__r_.__value_.__r.__words[0] + 16))(v15, a1 + 56);
                }
              }

              else
              {
                v21 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
                if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
                {
                  sub_1017781F0();
                }
              }
            }

            else
            {
              v20 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
              if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
              {
                sub_101778260();
              }
            }
          }
        }

        else
        {
          v16 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_101778294(a1, (a1 + 32), v16);
          }

          if (v25)
          {
            sub_100004A34(v25);
          }

          v14 = 0;
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        if (v14)
        {
          sub_100004A34(v14);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_100682628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_100004A34(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_100682788(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 968) == 1)
  {
    sub_1006A0C48(a1, a2);
  }

  else
  {
    sub_1006A0E28(a1, a2);
  }

  return a1;
}

void sub_1006827C4(uint64_t *a1)
{
  v5 = 0uLL;
  v6 = 0;
  sub_100C161EC(__p, a1);
  sub_100C171EC();
}

void sub_100682AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a60 == 1)
  {
    sub_1006A291C(&a26);
  }

  if (*(v60 - 73) < 0)
  {
    operator delete(*(v60 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100682B50@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  if (result[120])
  {
    for (i = result[117]; i != result[118]; i += 384)
    {
      if (*(i + 376) == 2)
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
        result = sub_100034C50(a2, *(i + 32), *(i + 40), *(i + 40) - *(i + 32));
        v4 = 1;
        goto LABEL_7;
      }
    }
  }

  v4 = 0;
  *a2 = 0;
LABEL_7:
  *(a2 + 24) = v4;
  return result;
}

_BYTE *sub_100682BC8(_BYTE *a1, _BYTE *a2)
{
  v3 = a1[304];
  *a1 = *a2;
  if (v3 == 1)
  {
    sub_1006ADA1C((a1 + 8), (a2 + 8));
  }

  else
  {
    a1[8] = 0;
    a1[296] = 0;
    if (a2[296] == 1)
    {
      sub_1002AF704((a1 + 16), (a2 + 16));
      a1[296] = 1;
    }

    a1[304] = 1;
  }

  return a1;
}

void sub_100682CF8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_100DC3ED0((v1 + 16));
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100682D24(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

uint64_t *sub_100682D74@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  if (result[120])
  {
    for (i = result[117]; i != result[118]; i += 384)
    {
      if (*(i + 376) == 1)
      {
        *a2 = 0;
        a2[1] = 0;
        a2[2] = 0;
        result = sub_100034C50(a2, *(i + 32), *(i + 40), *(i + 40) - *(i + 32));
        v4 = 1;
        goto LABEL_7;
      }
    }
  }

  v4 = 0;
  *a2 = 0;
LABEL_7:
  *(a2 + 24) = v4;
  return result;
}

uint64_t *sub_100682DEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_1001E0D88(a2, v3, &v3[v4], v4);
}

uint64_t sub_100682E18(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(a1 + 48) = v2;
      operator delete(v2);
    }
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_100682E68(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    sub_1006A2AF0(a1 + 24);
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t sub_100682EB0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 3);
  v5 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 32) = v5;
  *(a2 + 40) = 0uLL;
  *(a2 + 4) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 56) = 0uLL;
  *(a2 + 9) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = a2[5];
  *(a1 + 96) = *(a2 + 12);
  a2[5] = 0uLL;
  *(a2 + 12) = 0;
  sub_1006A29E8(a1 + 104, a2 + 104);
  *(a1 + 208) = 0;
  *(a1 + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    sub_1006A2CE8(a1 + 208, (a2 + 13));
    *(a1 + 280) = 1;
  }

  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  if (*(a2 + 312) == 1)
  {
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 288) = a2[18];
    *(a1 + 304) = *(a2 + 38);
    *(a2 + 36) = 0;
    *(a2 + 37) = 0;
    *(a2 + 38) = 0;
    *(a1 + 312) = 1;
  }

  return a1;
}

void sub_100683160(_Unwind_Exception *a1)
{
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  v4 = *(v1 + 152);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_100DC3ED0(v2);
  v5 = *(v1 + 112);
  if (v5)
  {
    *(v1 + 120) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 104);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100683200(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v2 = *(a1 + 144);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*(a1 + 128));
  *(a1 + 128) = 0;
  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_1006832BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (result[120])
  {
    for (i = result[117]; i != result[118]; i += 384)
    {
      if (*(i + 376) == 8)
      {
        v5 = *(i + 32);
        *(a2 + 12) = *(i + 44);
        *a2 = v5;
        if (*(i + 87) < 0)
        {
          result = sub_100005F2C((a2 + 32), *(i + 64), *(i + 72));
        }

        else
        {
          v6 = *(i + 64);
          *(a2 + 48) = *(i + 80);
          *(a2 + 32) = v6;
        }

        if (*(i + 111) < 0)
        {
          result = sub_100005F2C((a2 + 56), *(i + 88), *(i + 96));
        }

        else
        {
          v7 = *(i + 88);
          *(a2 + 72) = *(i + 104);
          *(a2 + 56) = v7;
        }

        v4 = 1;
        goto LABEL_7;
      }
    }
  }

  v4 = 0;
  *a2 = 0;
LABEL_7:
  *(a2 + 80) = v4;
  return result;
}

void sub_10068337C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100683398(unsigned __int16 a1)
{
  if ((a1 + 1) >= 6u)
  {
    return -1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1006833B0(unsigned __int16 a1)
{
  if (((a1 + 2) & 0xFFF0) != 0)
  {
    return -1;
  }

  else
  {
    return a1;
  }
}

void sub_100683470(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100683490(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1006834E4(unsigned __int16 a1)
{
  if (((a1 + 1) & 0xFFF8) != 0)
  {
    return -1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1006834F8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 96) == 1)
  {
    sub_100015184(a1, a2);
    sub_1006A2E30(a1 + 24, &a2[1].n128_i64[1]);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    sub_1006A2A54(a1 + 24, &a2[1].n128_i64[1]);
    *(a1 + 96) = 1;
  }

  return a1;
}

uint64_t sub_100683580(uint64_t a1)
{
  sub_1006A2AF0(a1 + 24);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1006835BC(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10068360C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = *(a2 + 24);
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

  if (*(a2 + 127) < 0)
  {
    sub_100005F2C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_100034C50((a1 + 128), *(a2 + 128), *(a2 + 136), *(a2 + 136) - *(a2 + 128));
  v9 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_10068372C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006837A4(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    *(a1 + 136) = v3;
    operator delete(v3);
  }

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

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_10068399C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006839E0(uint64_t a1)
{
  if (*(a1 + 1184) == 1)
  {
    sub_1006A27BC(a1 + 216);
  }

  sub_1006837A4(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100683A3C(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

_BYTE *sub_100683A8C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  if (result[960] != 1 || (v3 = *(result + 117), v4 = *(result + 118), v3 == v4))
  {
LABEL_6:
    v7 = 0;
    *a2 = 0;
  }

  else
  {
    v5 = v3 + 328;
    while (*(v5 + 48) != 5)
    {
      v6 = v5 + 56;
      v5 += 384;
      if (v6 == v4)
      {
        goto LABEL_6;
      }
    }

    sub_1006A4688(a2, (v5 - 296));
    sub_1006A47A0(a2 + 144, v5 - 152);
    result = sub_10006F264(a2 + 296, v5);
    v7 = 1;
  }

  a2[328] = v7;
  return result;
}

void sub_100683B20(_Unwind_Exception *a1)
{
  sub_1006A1AB4(v1 + 144);
  sub_1006A1B30(v1);
  _Unwind_Resume(a1);
}

void sub_100683CD4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100683D3C(uint64_t a1)
{
  v2 = *(a1 + 1192);
  if (v2)
  {
    *(a1 + 1200) = v2;
    operator delete(v2);
  }

  if (*(a1 + 1184) == 1)
  {
    sub_1006A27BC(a1 + 216);
  }

  sub_1006837A4(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100683DA8(uint64_t a1, uint64_t *a2, void *a3)
{
  *&v44 = a3;
  *(&v44 + 1) = ims::lazuli::kIsSuccess;
  sub_100006354(&v44, &object);
  v7 = xpc::dyn_cast_or_default(&object, 0, v6);
  xpc_release(object);
  v44 = 0uLL;
  v45 = 0;
  __p = a3;
  v37 = ims::lazuli::kTransactionId;
  sub_100006354(&__p, v39);
  object = 0;
  v42 = 0;
  v43 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v43) < 0)
  {
    operator delete(object);
  }

  xpc_release(v39[0]);
  object = a3;
  v42 = ims::lazuli::kErrorCode;
  sub_100006354(&object, &__p);
  v9 = xpc::dyn_cast_or_default(&__p, 0, v8);
  xpc_release(__p);
  object = 0;
  v42 = 0;
  v43 = 0;
  v39[0] = a3;
  v39[1] = ims::lazuli::kReason;
  sub_100006354(v39, &v40);
  __p = 0;
  v37 = 0;
  v38 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  xpc_release(v40);
  v10 = *(a1 + 280);
  v11 = *(a1 + 288);
  if (v10 != v11)
  {
    while (1)
    {
      v12 = *v10;
      v13 = v10[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = sub_1009CE9A4(v12, a2);
      if (v13)
      {
        sub_100004A34(v13);
      }

      if (v14)
      {
        break;
      }

      v10 += 2;
      if (v10 == v11)
      {
        v10 = v11;
        break;
      }
    }

    v11 = *(a1 + 288);
  }

  if (v10 == v11)
  {
    goto LABEL_43;
  }

  if (v9 == 404)
  {
LABEL_16:
    v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Message send failure (for group) with 404", &__p, 2u);
    }

    v16 = 8;
    goto LABEL_44;
  }

  if (v43 >= 0)
  {
    p_object = &object;
  }

  else
  {
    p_object = object;
  }

  if (v43 >= 0)
  {
    v18 = SHIBYTE(v43);
  }

  else
  {
    v18 = v42;
  }

  if (v18 >= 3)
  {
    v19 = &p_object[v18];
    v20 = v18;
    v21 = p_object;
    do
    {
      v22 = memchr(v21, 52, v20 - 2);
      if (!v22)
      {
        break;
      }

      if (*v22 == 12340 && v22[2] == 52)
      {
        if (v22 != v19 && v22 - p_object != -1)
        {
          goto LABEL_16;
        }

        break;
      }

      v21 = v22 + 1;
      v20 = v19 - v21;
    }

    while (v19 - v21 >= 3);
    if (v9 == 403)
    {
      goto LABEL_39;
    }

    v30 = p_object;
    while (1)
    {
      v31 = memchr(v30, 52, v18 - 2);
      if (!v31)
      {
        goto LABEL_43;
      }

      if (*v31 == 12340 && v31[2] == 51)
      {
        v16 = 3;
        if (v31 != v19 && v31 - p_object != -1)
        {
          goto LABEL_39;
        }

        goto LABEL_44;
      }

      v30 = v31 + 1;
      v18 = v19 - v30;
      v16 = 3;
      if (v19 - v30 < 3)
      {
        goto LABEL_44;
      }
    }
  }

  if (v9 != 403)
  {
LABEL_43:
    v16 = 3;
    goto LABEL_44;
  }

LABEL_39:
  v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Message send failure (for group) with 403", &__p, 2u);
  }

  v16 = 9;
LABEL_44:
  v25 = HIBYTE(v45);
  if (v45 < 0)
  {
    v25 = *(&v44 + 1);
  }

  if (v25)
  {
    v26 = *(a1 + 432);
    if (v26)
    {
      if (SHIBYTE(v45) < 0)
      {
        sub_100005F2C(__dst, v44, *(&v44 + 1));
      }

      else
      {
        *__dst = v44;
        v35 = v45;
      }

      v28 = v7 ? 0 : 5;
      v33[6] = v28;
      (*(*v26 + 24))(v26, __dst, v33);
      sub_1006A6204(v33);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    v29 = *(a1 + 240);
    if (v7)
    {
      sub_100BA1E58(v29, &v44);
    }

    else
    {
      LODWORD(__p) = v16;
      BYTE4(__p) = 1;
      sub_100BA24AC(v29, &v44, &__p);
    }
  }

  else
  {
    v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Dropping incoming message send notification: No transaction ID", &__p, 2u);
    }
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(object);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }
}

void sub_1006842A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t a26, uint64_t a27, xpc_object_t object, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 81) < 0)
  {
    operator delete(*(v34 - 104));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006843A0(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = *(a1 + 328);
  v6 = *(a1 + 336);
  if (v7 == v6)
  {
LABEL_9:
    v8 = v6;
  }

  else
  {
    v8 = *(a1 + 328);
    while (1)
    {
      v9 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = sub_1009CE9A4(v9, a2);
      if (v10)
      {
        sub_100004A34(v10);
      }

      if (v11)
      {
        break;
      }

      v8 += 2;
      if (v8 == v6)
      {
        goto LABEL_9;
      }
    }

    if (v8 != v6)
    {
      for (i = v8 + 2; i != v6; i += 2)
      {
        v26 = *i;
        v27 = i[1];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = sub_1009CE9A4(v26, a2);
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (!v28)
        {
          v29 = *i;
          *i = 0;
          i[1] = 0;
          v30 = v8[1];
          *v8 = v29;
          if (v30)
          {
            sub_100004A34(v30);
          }

          v8 += 2;
        }
      }
    }
  }

  sub_1006A6284(a1 + 328, v8, *(a1 + 336));
  if (v6 - v7 == *(a1 + 336) - *(a1 + 328))
  {
    v13 = *(a1 + 280);
    v12 = *(a1 + 288);
    object[0] = a1;
    object[1] = a2;
    if (v13 == v12)
    {
LABEL_19:
      v17 = v12;
    }

    else
    {
      v14 = v13;
      while (1)
      {
        v15 = *(v14 + 1);
        *buf = *v14;
        *&buf[8] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = sub_1006A6308(object, buf);
        if (v15)
        {
          sub_100004A34(v15);
        }

        if (v16)
        {
          break;
        }

        if (++v14 == v12)
        {
          goto LABEL_19;
        }
      }

      v17 = v12;
      if (v14 != v12)
      {
        v46 = v14 + 1;
        if (v14 + 1 == v12)
        {
          v17 = v14;
        }

        else
        {
          v17 = v14;
          do
          {
            *buf = *v46;
            v47 = *(v46 + 1);
            *&buf[8] = v47;
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v48 = sub_1006A6308(object, buf);
            if (v47)
            {
              sub_100004A34(v47);
            }

            if (!v48)
            {
              v49 = *v46;
              *v46 = 0;
              *(v46 + 1) = 0;
              v50 = *(v17 + 1);
              *v17 = v49;
              if (v50)
              {
                sub_100004A34(v50);
              }

              ++v17;
            }

            ++v46;
          }

          while (v46 != v12);
        }
      }
    }

    sub_1006A6284(a1 + 280, v17, *(a1 + 288));
    v18 = *(a1 + 288) - *(a1 + 280);
    v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v12 - v13 == v18)
    {
      if (!v20)
      {
        goto LABEL_41;
      }

      *buf = 0;
      v21 = "#I No model erased";
      v22 = v19;
      v23 = 2;
      goto LABEL_40;
    }

    if (!v20)
    {
      goto LABEL_41;
    }

    v31 = (*(a1 + 288) - *(a1 + 280)) >> 4;
    *buf = 134217984;
    *&buf[4] = v31;
    v21 = "#I Erased group model - current size: %zu";
  }

  else
  {
    v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    v24 = (*(a1 + 336) - *(a1 + 328)) >> 4;
    *buf = 134217984;
    *&buf[4] = v24;
    v21 = "#I Erased 1:1 model - current size: %zu";
  }

  v22 = v19;
  v23 = 12;
LABEL_40:
  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
LABEL_41:
  *buf = a3;
  *&buf[8] = ims::lazuli::kErrorCode;
  sub_100006354(buf, object);
  v33 = xpc::dyn_cast_or_default(object, 0, v32);
  xpc_release(object[0]);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  object[0] = a3;
  object[1] = ims::lazuli::kReason;
  sub_100006354(object, __p);
  memset(buf, 0, sizeof(buf));
  v85 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v85) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(__p[0]);
  if (v33 == 404)
  {
LABEL_44:
    v34 = *(a1 + 400);
    if (v34)
    {
      v35 = std::__shared_weak_count::lock(v34);
      if (v35)
      {
        v36 = *(a1 + 392);
        if (v36)
        {
          memset(buf, 0, sizeof(buf));
          v85 = 0;
          __p[0] = a3;
          __p[1] = ims::lazuli::kRemoteUri;
          sub_100006354(__p, v74);
          object[0] = 0;
          object[1] = 0;
          *&v72 = 0;
          xpc::dyn_cast_or_default();
          if (SBYTE7(v72) < 0)
          {
            operator delete(object[0]);
          }

          xpc_release(v74[0]);
          if (v85 >= 0)
          {
            v37 = HIBYTE(v85);
          }

          else
          {
            v37 = *&buf[8];
          }

          if (v37)
          {
            v38 = *(a1 + 96);
            sub_100C17E6C(__p, buf);
            sub_100C16CE4(object, __p);
            (*(*v36 + 136))(v36, v38, object);
            if (SBYTE7(v72) < 0)
            {
              operator delete(object[0]);
            }

            if (SHIBYTE(v80) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v51 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
            if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
            {
              sub_101778394();
            }
          }

          if (SHIBYTE(v85) < 0)
          {
            operator delete(*buf);
            if (v37)
            {
              goto LABEL_96;
            }
          }

          else if (v37)
          {
LABEL_96:
            sub_100004A34(v35);
            goto LABEL_97;
          }

          sub_100004A34(v35);
          goto LABEL_161;
        }
      }
    }

    else
    {
      v35 = 0;
    }

    v45 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
    {
      sub_101778404();
    }

    if (v35)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v39 = SHIBYTE(v83);
    if (v83 >= 0)
    {
      v40 = &v81;
    }

    else
    {
      v40 = v81;
    }

    if (v83 < 0)
    {
      v39 = v82;
    }

    if (v39 >= 3)
    {
      v41 = &v40[v39];
      v42 = v40;
      do
      {
        v43 = memchr(v42, 52, v39 - 2);
        if (!v43)
        {
          break;
        }

        if (*v43 == 12340 && v43[2] == 52)
        {
          if (v43 != v41 && v43 - v40 != -1)
          {
            goto LABEL_44;
          }

          break;
        }

        v42 = v43 + 1;
        v39 = v41 - v42;
      }

      while (v41 - v42 >= 3);
    }
  }

LABEL_97:
  *buf = a3;
  *&buf[8] = ims::lazuli::kUserEvictedFromGroup;
  sub_100006354(buf, object);
  v53 = xpc::dyn_cast_or_default(object, 0, v52);
  xpc_release(object[0]);
  if (v53)
  {
    __p[0] = 0;
    __p[1] = 0;
    v80 = 0;
    v76 = a3;
    v77 = ims::lazuli::kConferenceFocus;
    sub_100006354(&v76, &v78);
    v74[0] = 0;
    v74[1] = 0;
    v75 = 0;
    xpc::dyn_cast_or_default();
    sub_100C17FB8(buf, object);
    sub_100C16CE4(__p, buf);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(*buf);
    }

    if (SBYTE7(v72) < 0)
    {
      operator delete(object[0]);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(v74[0]);
    }

    xpc_release(v78);
    v54 = HIBYTE(v80);
    if (v80 < 0)
    {
      v54 = __p[1];
    }

    if (!v54)
    {
      v58 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
      {
        sub_101778438();
      }

      goto LABEL_157;
    }

    v73 = 0;
    *object = 0u;
    v72 = 0u;
    v74[0] = 0;
    v74[1] = 0;
    v75 = 0;
    v76 = a3;
    v77 = ims::lazuli::kReferredBy;
    sub_100006354(&v76, &v78);
    memset(buf, 0, sizeof(buf));
    v85 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v85) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v78);
    v55 = HIBYTE(v75);
    v56 = HIBYTE(v75);
    if (v75 < 0)
    {
      v55 = v74[1];
    }

    if (v55)
    {
      sub_100685200(a1, v74, buf);
      if (v73 == 1)
      {
        if (SBYTE7(v72) < 0)
        {
          operator delete(object[0]);
        }

        *object = *buf;
        *&v72 = v85;
        DWORD2(v72) = v86;
        BYTE12(v72) = BYTE4(v86);
      }

      else
      {
        *object = *buf;
        *&v72 = v85;
        v85 = 0;
        memset(buf, 0, sizeof(buf));
        DWORD2(v72) = v86;
        BYTE12(v72) = BYTE4(v86);
        LOBYTE(v73) = 1;
      }

      v56 = HIBYTE(v75);
    }

    if (v56 < 0)
    {
      operator delete(v74[0]);
    }

    v74[0] = 0;
    v74[1] = 0;
    v75 = 0;
    v76 = a3;
    v77 = ims::lazuli::kConversationId;
    sub_100006354(&v76, &v78);
    memset(buf, 0, sizeof(buf));
    v85 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v85) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v78);
    v59 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Publishing group eviction", buf, 2u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v61 = ServiceMap;
    v62 = "17TMRouterInterface";
    if (("17TMRouterInterface" & 0x8000000000000000) != 0)
    {
      v63 = ("17TMRouterInterface" & 0x7FFFFFFFFFFFFFFFLL);
      v64 = 5381;
      do
      {
        v62 = v64;
        v65 = *v63++;
        v64 = (33 * v64) ^ v65;
      }

      while (v65);
    }

    std::mutex::lock(ServiceMap);
    *buf = v62;
    v66 = sub_100009510(&v61[1].__m_.__sig, buf);
    if (v66)
    {
      v68 = v66[3];
      v67 = v66[4];
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v61);
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v67);
        v69 = 0;
        if (!v68)
        {
          goto LABEL_150;
        }

        goto LABEL_137;
      }
    }

    else
    {
      v68 = 0;
    }

    std::mutex::unlock(v61);
    v67 = 0;
    v69 = 1;
    if (!v68)
    {
LABEL_150:
      if ((v69 & 1) == 0)
      {
        sub_100004A34(v67);
      }

      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74[0]);
      }

      if (v73 == 1 && SBYTE7(v72) < 0)
      {
        operator delete(object[0]);
      }

LABEL_157:
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_161;
    }

LABEL_137:
    v70 = *(a1 + 96);
    if (SHIBYTE(v80) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v80) < 0)
      {
        sub_100005F2C(&v86, __p[0], __p[1]);
        goto LABEL_141;
      }
    }

    else
    {
      *buf = *__p;
      v85 = v80;
    }

    v86 = *__p;
    v87 = v80;
LABEL_141:
    if (SHIBYTE(v75) < 0)
    {
      sub_100005F2C(&v88, v74[0], v74[1]);
    }

    else
    {
      v88 = *v74;
      v89 = v75;
    }

    (*(*v68 + 504))(v68, v70, buf, object);
    if (SHIBYTE(v89) < 0)
    {
      operator delete(v88);
    }

    if (SHIBYTE(v87) < 0)
    {
      operator delete(v86);
    }

    if (SHIBYTE(v85) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_150;
  }

  v57 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I Session terminated (no actions)", buf, 2u);
  }

LABEL_161:
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v81);
  }
}

void sub_100684F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, xpc_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, xpc_object_t a26, xpc_object_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if ((v46 & 1) == 0)
  {
    sub_100004A34(v45);
  }

  if (a23 < 0)
  {
    operator delete(object);
  }

  if (a16 == 1 && a14 < 0)
  {
    operator delete(a9);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_100685200(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
  }

  *(a3 + 24) = -1;
  sub_100C17E6C(v6, a1 + 104);
  sub_100C1704C(__p, v6);
  *(a3 + 28) = sub_10083AF94(__p, a2);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1006852B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006852FC(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Incoming session event", buf, 2u);
  }

  *buf = a3;
  __p = ims::lazuli::kIsGroupChat;
  sub_100006354(buf, &v26);
  v7 = xpc::dyn_cast_or_default(&v26, 0, v6);
  xpc_release(v26);
  if ((v7 & 1) == 0)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = a3;
    v24 = ims::lazuli::kEventName;
    sub_100006354(&v23, object);
    *buf = 0;
    __p = 0;
    v18 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(object[0]);
    v8 = strlen(ims::lazuli::kEventMlsInviteResult);
    v9 = v8;
    v10 = HIBYTE(v28);
    if ((SHIBYTE(v28) & 0x8000000000000000) != 0)
    {
      if (v8 != v27)
      {
        goto LABEL_14;
      }

      if (v8 == -1)
      {
        sub_10013C334();
      }

      v11 = v26;
    }

    else
    {
      if (v8 != SHIBYTE(v28))
      {
        return;
      }

      v11 = &v26;
    }

    if (memcmp(v11, ims::lazuli::kEventMlsInviteResult, v9))
    {
      if ((v10 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    object[0] = a3;
    object[1] = ims::lazuli::kTransactionId;
    sub_100006354(object, &v22);
    *buf = 0;
    __p = 0;
    v18 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v22);
    v12 = HIBYTE(v25);
    if (v25 < 0)
    {
      v12 = v24;
    }

    if (v12)
    {
      v13 = *a3;
      v15 = v13;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v15 = xpc_null_create();
      }

      sub_100685DF8(&v15, buf);
      sub_100685698(a1, &v23, buf);
      object[0] = &v20;
      sub_1000087B4(object);
      if (v19 < 0)
      {
        operator delete(__p);
      }

      xpc_release(v15);
      v15 = 0;
    }

    else
    {
      v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_10177846C();
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v23);
    }

    if (v28 < 0)
    {
LABEL_14:
      operator delete(v26);
    }
  }
}

void sub_1006855C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, uint64_t a22, xpc_object_t a23)
{
  if (*(v23 - 57) < 0)
  {
    operator delete(*(v23 - 80));
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100685698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 432);
  if (!v3)
  {
    return 1;
  }

  if (*a3 == 1)
  {
    *buf = 0u;
    v27 = 0u;
    v6 = *(a3 + 31);
    if (v6 >= 0)
    {
      v7 = *(a3 + 31);
    }

    else
    {
      v7 = *(a3 + 16);
    }

    if (v7)
    {
      if (v6 >= 0)
      {
        v8 = (a3 + 8);
      }

      else
      {
        v8 = *(a3 + 8);
      }

      v22[1].__locale_ = 0;
      *&v23 = 0;
      v22[0].__locale_ = 0;
      sub_1001E0D88(v22, v8, &v8[v7], v7);
      *buf = *&v22[0].__locale_;
      *&v27 = v23;
      v3 = *(a1 + 432);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    DWORD2(v27) = v9;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v21 = *(a2 + 16);
    }

    sub_1006AD704(v19, buf);
    (*(*v3 + 24))(v3, __p, v19);
    sub_1006A6204(v19);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    sub_1006A6204(buf);
    return 1;
  }

  if (*(a3 + 4) != 409)
  {
    v24 = 0u;
    v25 = 0u;
    *&v22[0].__locale_ = 0u;
    v23 = 0u;
    sub_1001C7FB0(v22, "399\\s+\\S+\\s+451 Non-MLS error", 0);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v18 = *(a2 + 16);
  }

  v16 = 3;
  v11 = (*(*v3 + 24))(v3, __dst, v15);
  sub_1006A6204(v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (result)
    {
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I 409 network response was not expected, and we don't have context for this operation (operationId: %s)", buf, 0xCu);
    }

    return 1;
  }

  if (result)
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
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Need to update group version and try again (operationId: %s)", buf, 0xCu);
    return 0;
  }

  return result;
}

void sub_100685D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  sub_1006A6204(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100685DF8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v35 = a1;
  v36 = ims::lazuli::kSipWarningsList;
  sub_100006354(&v35, object);
  v4 = xpc_null_create();
  v5 = object[0];
  if (object[0] && xpc_get_type(object[0]) == &_xpc_type_array)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (xpc_get_type(v5) != &_xpc_type_array)
  {
    if (v4)
    {
      xpc_retain(v4);
      v6 = v4;
    }

    else
    {
      v6 = xpc_null_create();
    }

    xpc_release(v5);
    v5 = v6;
  }

  xpc_release(v4);
  xpc_release(object[0]);
  object[0] = 0;
  object[1] = 0;
  v34 = 0;
  v35 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v35 = xpc_null_create();
  }

  sub_100008EA4(&v31, &v35, 0);
  xpc_release(v35);
  v35 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v35 = xpc_null_create();
  }

  if (xpc_get_type(v5) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v5);
  }

  else
  {
    count = 0;
  }

  v22 = a2;
  sub_100008EA4(v30, &v35, count);
  xpc_release(v35);
  for (i = v32; i != v30[1] || v31 != v30[0]; i = ++v32)
  {
    v29[0] = &v31;
    v29[1] = i;
    sub_100008EF0(v29, &v26);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    xpc::dyn_cast_or_default();
    v9 = object[1];
    if (object[1] >= v34)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((object[1] - object[0]) >> 3);
      v12 = v11 + 1;
      if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1000CE3D4();
      }

      if (0x5555555555555556 * ((v34 - object[0]) >> 3) > v12)
      {
        v12 = 0x5555555555555556 * ((v34 - object[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v34 - object[0]) >> 3) >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v12;
      }

      v39 = object;
      if (v13)
      {
        sub_100005348(object, v13);
      }

      v14 = 8 * ((object[1] - object[0]) >> 3);
      v15 = *__p;
      *(v14 + 16) = v28;
      *v14 = v15;
      __p[1] = 0;
      v28 = 0;
      __p[0] = 0;
      v16 = (24 * v11 + 24);
      v17 = (24 * v11 - (object[1] - object[0]));
      memcpy((v14 - (object[1] - object[0])), object[0], object[1] - object[0]);
      v18 = object[0];
      v19 = v34;
      object[0] = v17;
      object[1] = v16;
      v34 = 0;
      v37 = v18;
      v38 = v19;
      v35 = v18;
      v36 = v18;
      sub_1000054E0(&v35);
      object[1] = v16;
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v10 = *__p;
      *(object[1] + 2) = v28;
      *v9 = v10;
      __p[1] = 0;
      v28 = 0;
      __p[0] = 0;
      object[1] = v9 + 24;
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v23);
    }

    xpc_release(v26);
  }

  xpc_release(v30[0]);
  xpc_release(v31);
  __p[0] = a1;
  __p[1] = ims::lazuli::kIsSuccess;
  sub_100006354(__p, v30);
  *v22 = xpc::dyn_cast_or_default(v30, 0, v20);
  v23 = a1;
  v24 = ims::lazuli::kErrorCode;
  sub_100006354(&v23, v29);
  *(v22 + 4) = xpc::dyn_cast_or_default(v29, 0, v21);
  v31 = a1;
  v32 = ims::lazuli::kMlsOpaqueToken;
  sub_100006354(&v31, &v26);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  xpc::dyn_cast_or_default();
  *(v22 + 32) = *object;
  *(v22 + 48) = v34;
  object[1] = 0;
  v34 = 0;
  object[0] = 0;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  xpc_release(v26);
  xpc_release(v29[0]);
  xpc_release(v30[0]);
  v35 = object;
  sub_1000087B4(&v35);
  xpc_release(v5);
}

void sub_10068620C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t object, xpc_object_t *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t a25, uint64_t a26, xpc_object_t a27, uint64_t a28, xpc_object_t a29, uint64_t a30, xpc_object_t a31)
{
  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  xpc_release(object);
  xpc_release(a25);
  xpc_release(a27);
  __p = &a31;
  sub_1000087B4(&__p);
  xpc_release(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_100686358(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_1000087B4(&v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006863A4(uint64_t a1)
{
  v1 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Incoming participant change", v2, 2u);
  }
}

void sub_100686430(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = *(a1 + 240);
  LOBYTE(v9) = 0;
  v10 = 0;
  v8[0] = 0;
  v8[24] = 0;
  LOBYTE(v6) = 0;
  v7 = 0;
  LOBYTE(__p) = 0;
  v5 = 0;
  sub_100B9F644(v3, a2, a3, &v9, v8, &v6, &__p);
}

void sub_100686518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  if (a29 == 1)
  {
    *(v33 - 24) = &a24;
    sub_10019029C((v33 - 24));
  }

  sub_1006A6678(&a31);
  _Unwind_Resume(a1);
}

BOOL sub_100686580(uint64_t a1, void *a2)
{
  sub_1009CC9A8((*a2 + 48), __p);
  v3 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 == v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v8 = v10;
    if (v6 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = memcmp(v7, v11, v4) == 0;
    if (v3 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    if (v15 < 0)
    {
LABEL_16:
      operator delete(__p[0]);
    }
  }

  return v12;
}

uint64_t sub_100686634(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_100686674(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    xpc_release(*a1);
    *a1 = 0;
  }

  return a1;
}

uint64_t *sub_1006866B4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 23);
  if (v3 >= 0)
  {
    v4 = *(result + 23);
  }

  else
  {
    v4 = result[1];
  }

  if (v4)
  {
    if (v3 >= 0)
    {
      v5 = result;
    }

    else
    {
      v5 = *result;
    }

    v8 = 0;
    v7 = 0uLL;
    result = sub_1001E0D88(&v7, v5, &v5[v4], v4);
    *a2 = v7;
    *(a2 + 16) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v6;
  return result;
}

void sub_1006867E4(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1006868B0(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006868D0(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v6 = (a1 + 80);
  sub_10003CA58(&v6);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100686968(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  sub_100C17FB8(__p, a2);
  sub_100C16CE4(v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100C17FB8(a1, v5);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1006869DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100686A0C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 191);
  if (v3 >= 0)
  {
    v4 = *(*a2 + 191);
  }

  else
  {
    v4 = *(*a2 + 176);
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = *(v2 + 168);
  v7 = (v2 + 168);
  v8 = v9;
  if (v3 < 0)
  {
    v7 = v8;
  }

  v12 = *(a1 + 32);
  v10 = (a1 + 32);
  v11 = v12;
  if (v6 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  return memcmp(v7, v13, v4) == 0;
}

void sub_100686A88(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
LABEL_26:
        sub_100004A34(v5);
        return;
      }

      dispatch_assert_queue_V2(*(v3 + 24));
      v6 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 96));
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1 + 7;
        if (*(a1 + 79) < 0)
        {
          v7 = *v7;
        }

        LODWORD(v21) = 136380675;
        *(&v21 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Finishing request for joining group chat: [%{private}s]", &v21, 0xCu);
      }

      sub_1009CE7A0(a1[5], a1 + 3);
      sub_100914C50(a1[5], (a1 + 7));
      ServiceMap = Registry::getServiceMap(*(v3 + 80));
      v9 = ServiceMap;
      v10 = "17TMRouterInterface";
      if (("17TMRouterInterface" & 0x8000000000000000) != 0)
      {
        v11 = ("17TMRouterInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
      *&v21 = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, &v21);
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
            goto LABEL_14;
          }

          goto LABEL_18;
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
LABEL_14:
        v18 = (*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 96));
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          sub_1017784A0();
        }

LABEL_24:
        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }

LABEL_18:
      v41 = 0;
      v39 = 0u;
      v40 = 0u;
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
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      sub_10091601C(a1[5], &v21);
      v19 = *(&v22 + 1);
      v20 = v23;
      while (v19 != v20)
      {
        if (sub_10083AF94(v19, v3 + 104))
        {
          *(v19 + 28) = 1;
          break;
        }

        v19 += 32;
      }

      (*(*v16 + 400))(v16, *(v3 + 96), &v21);
      sub_1000D45B0(&v21);
      goto LABEL_24;
    }
  }
}

uint64_t sub_100686DC8(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_100686E2C(uint64_t **a1@<X0>, char *a4@<X8>)
{
  v9 = 0;
  v8 = 0u;
  v4 = *a1;
  if (*a1 != a1[1])
  {
    v7 = 0;
    *__p = 0u;
    v6 = 0u;
    sub_1006827C4(v4);
  }

  *a4 = 0uLL;
  *(a4 + 2) = 0;
  v9 = 0;
  v8 = 0uLL;
  a4[24] = 1;
  __p[0] = &v8;
  sub_10003CA58(__p);
}

void sub_100686F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  v18[24] = v20;
  *v18 = v19;
  if (a16 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a18;
  sub_10003CA58(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_100686FD0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_100687124(_Unwind_Exception *a1)
{
  sub_100686FD0(v2);
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1006871F8(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100687218(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_10068728C(uint64_t a1, uint64_t *a2, void **a3)
{
  __src[1] = 0;
  __src[0] = 0;
  v107 = 0;
  v102[0] = a3;
  v102[1] = ims::lazuli::kTransactionId;
  sub_100006354(v102, &object);
  buf = 0uLL;
  v109 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v109) < 0)
  {
    operator delete(buf);
  }

  xpc_release(object);
  v6 = HIBYTE(v107);
  if (v107 < 0)
  {
    v6 = __src[1];
  }

  if (!v6)
  {
    v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      sub_1017785A4();
    }

    goto LABEL_157;
  }

  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  *v102 = 0u;
  v7 = *a3;
  v101 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v101 = xpc_null_create();
  }

  sub_100685DF8(&v101, v102);
  v69 = a2;
  xpc_release(v101);
  v101 = 0;
  if (!sub_100685698(a1, __src, v102))
  {
    goto LABEL_155;
  }

  v10 = *(a1 + 408);
  v9 = *(a1 + 416);
  if (v10 == v9)
  {
LABEL_34:
    v11 = v9;
    goto LABEL_35;
  }

  v11 = *(a1 + 408);
  while (1)
  {
    v12 = *v11;
    v13 = *(v11 + 1);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v107 >= 0)
    {
      v14 = HIBYTE(v107);
    }

    else
    {
      v14 = __src[1];
    }

    v15 = *(v12 + 39);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v12 + 24);
    }

    if (v14 != v15)
    {
      v22 = 0;
      if (!v13)
      {
        goto LABEL_32;
      }

LABEL_31:
      sub_100004A34(v13);
      goto LABEL_32;
    }

    if (v107 >= 0)
    {
      v17 = __src;
    }

    else
    {
      v17 = __src[0];
    }

    v20 = *(v12 + 16);
    v18 = (v12 + 16);
    v19 = v20;
    if (v16 >= 0)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }

    v22 = memcmp(v17, v21, v14) == 0;
    if (v13)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v22)
    {
      break;
    }

    v11 += 16;
    if (v11 == v9)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v9)
  {
    v31 = v11 + 16;
    if (v11 + 16 != v9)
    {
      while (1)
      {
        v32 = *v31;
        v33 = *(v31 + 1);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v107 >= 0)
        {
          v34 = HIBYTE(v107);
        }

        else
        {
          v34 = __src[1];
        }

        v35 = *(v32 + 39);
        v36 = v35;
        if ((v35 & 0x80u) != 0)
        {
          v35 = *(v32 + 24);
        }

        if (v34 == v35)
        {
          break;
        }

        v42 = 0;
        if (v33)
        {
          goto LABEL_78;
        }

LABEL_79:
        if (!v42)
        {
          v43 = *v31;
          *v31 = 0;
          *(v31 + 1) = 0;
          v44 = *(v11 + 1);
          *v11 = v43;
          if (v44)
          {
            sub_100004A34(v44);
          }

          v11 += 16;
        }

        v31 += 16;
        if (v31 == v9)
        {
          goto LABEL_35;
        }
      }

      if (v107 >= 0)
      {
        v37 = __src;
      }

      else
      {
        v37 = __src[0];
      }

      v40 = *(v32 + 16);
      v38 = (v32 + 16);
      v39 = v40;
      if (v36 >= 0)
      {
        v41 = v38;
      }

      else
      {
        v41 = v39;
      }

      v42 = memcmp(v37, v41, v34) == 0;
      if (!v33)
      {
        goto LABEL_79;
      }

LABEL_78:
      sub_100004A34(v33);
      goto LABEL_79;
    }
  }

LABEL_35:
  sub_1006A6284(a1 + 408, v11, *(a1 + 416));
  v23 = *(**(a1 + 48) + 16);
  if (v9 - v10 == *(a1 + 416) - *(a1 + 408))
  {
    v24 = *v23();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Bailing out (group chat creation not requested).", &buf, 2u);
    }

    sub_1006A6A00((a1 + 408), 0, 0, 0);
    goto LABEL_155;
  }

  v25 = *v23();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = __src;
    if (v107 < 0)
    {
      v26 = __src[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Erased ephemeral entry for transactionID : %{public}s", &buf, 0xCu);
  }

  if (v102[0])
  {
    v96 = 0;
    v97 = 0;
    v98 = 0;
    object = a3;
    v71 = ims::lazuli::kConferenceFocus;
    sub_100006354(&object, &v92);
    buf = 0uLL;
    v109 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v109) < 0)
    {
      operator delete(buf);
    }

    xpc_release(v92);
    v27 = HIBYTE(v98);
    if (v98 < 0)
    {
      v27 = v97;
    }

    if (v27)
    {
      v92 = 0uLL;
      v93 = 0;
      object = a3;
      v71 = ims::lazuli::kConversationId;
      sub_100006354(&object, &v86);
      buf = 0uLL;
      v109 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v109) < 0)
      {
        operator delete(buf);
      }

      xpc_release(v86);
      v28 = HIBYTE(v93);
      if (v93 < 0)
      {
        v28 = *(&v92 + 1);
      }

      if (v28)
      {
        if (sub_100912FFC(v69))
        {
          v86 = 0uLL;
          v87 = 0;
          sub_100686968(&buf, &v96);
          sub_1009CC9A8(&buf, &v86);
          if (SHIBYTE(v109) < 0)
          {
            operator delete(buf);
          }

          v29 = *(a1 + 280);
          v30 = *(a1 + 288);
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 1174405120;
          v82 = sub_1006882D4;
          v83 = &unk_101E6FD50;
          if (SHIBYTE(v93) < 0)
          {
            sub_100005F2C(&v84, v92, *(&v92 + 1));
          }

          else
          {
            v84 = v92;
            v85 = v93;
          }

          if (v29 != v30)
          {
            while (((v82)(v81, v29) & 1) == 0)
            {
              v29 += 2;
              if (v29 == v30)
              {
                v29 = v30;
                break;
              }
            }
          }

          if (v29 != *(a1 + 288))
          {
            v59 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = &v86;
              if (v87 < 0)
              {
                v60 = v86;
              }

              LODWORD(buf) = 136380675;
              *(&buf + 4) = v60;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Group model active for: [%{private}s]", &buf, 0xCu);
            }

            sub_1009CE7A0(*v29, v69);
            v61 = *v29;
            sub_100C17FB8(&buf, &v86);
            sub_100915E28(v61, &buf);
            if (SHIBYTE(v109) < 0)
            {
              operator delete(buf);
            }
          }

          if (SHIBYTE(v85) < 0)
          {
            operator delete(v84);
          }

          v79 = 0;
          v80 = 0;
          v62 = *(a1 + 376);
          if (SHIBYTE(v107) < 0)
          {
            sub_100005F2C(v77, __src[0], __src[1]);
          }

          else
          {
            *v77 = *__src;
            v78 = v107;
          }

          v63 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_100688350(v62, v77, v63, &v79);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77[0]);
          }

          if (v79)
          {
            sub_1000D1CC4(v79, &v86, &v92);
            v76[2] = 0;
            v76[3] = 0;
            v64 = *(a1 + 96);
            v65 = *(a1 + 88);
            v76[0] = *(a1 + 80);
            v76[1] = v65;
            if (v65)
            {
              atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v87) < 0)
            {
              sub_100005F2C(v74, v86, *(&v86 + 1));
            }

            else
            {
              *v74 = v86;
              v75 = v87;
            }

            v67 = *(a1 + 184);
            v73[0] = *(a1 + 176);
            v73[1] = v67;
            if (v67)
            {
              atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
            }

            v68 = *(a1 + 200);
            v72[0] = *(a1 + 192);
            v72[1] = v68;
            if (v68)
            {
              atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
            }

            sub_1009CCB38(&buf, v64, v76, v74, v73, v72, (a1 + 104), (a1 + 152));
            sub_1009CCBB8(&object, v69, &v92);
            sub_1006B52AC();
          }

          v66 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I Group model dropped. Can't find operation...", &buf, 2u);
          }

          if (v80)
          {
            sub_100004A34(v80);
          }

          if (SHIBYTE(v87) < 0)
          {
            v56 = v86;
LABEL_149:
            operator delete(v56);
          }
        }

        else
        {
          v52 = *(a1 + 376);
          if (SHIBYTE(v107) < 0)
          {
            sub_100005F2C(v88, __src[0], __src[1]);
          }

          else
          {
            *v88 = *__src;
            v89 = v107;
          }

          v57 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_1000D38F0(v52, v88, 0x100000005, v57);
          if (SHIBYTE(v89) < 0)
          {
            operator delete(v88[0]);
          }

          v58 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
          {
            sub_10177853C();
          }
        }
      }

      else
      {
        v50 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
        {
          sub_1017785A4();
        }

        v51 = *(a1 + 376);
        if (SHIBYTE(v107) < 0)
        {
          sub_100005F2C(&v90, __src[0], __src[1]);
        }

        else
        {
          v90 = *__src;
          v91 = v107;
        }

        v55 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        sub_1000D38F0(v51, &v90, 0x100000005, v55);
        if (SHIBYTE(v91) < 0)
        {
          v56 = v90;
          goto LABEL_149;
        }
      }

      if (SHIBYTE(v93) < 0)
      {
        v54 = v92;
LABEL_152:
        operator delete(v54);
      }
    }

    else
    {
      v48 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
      {
        sub_1017785A4();
      }

      v49 = *(a1 + 376);
      if (SHIBYTE(v107) < 0)
      {
        sub_100005F2C(&__dst, __src[0], __src[1]);
      }

      else
      {
        __dst = *__src;
        v95 = v107;
      }

      v53 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      sub_1000D38F0(v49, &__dst, 0x100000005, v53);
      if (SHIBYTE(v95) < 0)
      {
        v54 = __dst;
        goto LABEL_152;
      }
    }

    if (SHIBYTE(v98) < 0)
    {
      operator delete(v96);
    }
  }

  else
  {
    v45 = *(a1 + 376);
    if (SHIBYTE(v107) < 0)
    {
      sub_100005F2C(__p, __src[0], __src[1]);
    }

    else
    {
      *__p = *__src;
      v100 = v107;
    }

    v46 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    sub_1000D38F0(v45, __p, 0x100000005, v46);
    if (SHIBYTE(v100) < 0)
    {
      operator delete(__p[0]);
    }

    v47 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      sub_1017784D4();
    }
  }

LABEL_155:
  *&buf = &v104;
  sub_1000087B4(&buf);
  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102[1]);
  }

LABEL_157:
  if (SHIBYTE(v107) < 0)
  {
    operator delete(__src[0]);
  }
}