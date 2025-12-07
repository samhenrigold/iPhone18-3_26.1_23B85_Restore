void CellularPlanDeliveryModel::getEnabledIccids(CellularPlanDeliveryModel *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 38);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = *(this + 37);
      if (v8)
      {
        (*(*v8 + 160))(v8, a2);
LABEL_9:
        sub_100004A34(v7);
        return;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (v7)
  {
    goto LABEL_9;
  }
}

void CellularPlanDeliveryModel::setEnableIccids(void *a1, char *a2)
{
  v3 = a1[38];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[37];
      if (v6)
      {
        sub_100074920(v7, a2);
        v8[0] = off_101E7FBB0;
        v8[3] = v8;
        (*(*v6 + 168))(v6, v7, v8);
        sub_10039D5CC(v8);
        sub_100009970(v7, v7[1]);
LABEL_9:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  if (v5)
  {
    goto LABEL_9;
  }
}

void sub_1007CAAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10039D5CC(va);
  sub_100009970(&a9, a10);
  sub_100004A34(v11);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::isESimDisableAllowed_sync(void *a1, uint64_t a2)
{
  bzero(&v10, 0x508uLL);
  (*(*a1 + 168))(&v10, a1, a2);
  if (v12 == 1 && v11 != 1)
  {
    v8 = 1;
  }

  else
  {
    v4 = a1[38];
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = a1[37];
        if (v6)
        {
          v7 = (*(*v6 + 176))(v6, a2, 1);
LABEL_11:
          sub_100004A34(v5);
          v8 = v7;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    v7 = 0;
    v8 = 0;
    if (v5)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  if (v12 == 1)
  {
    sub_1002813D0(&v10);
  }

  return v8;
}

void sub_1007CAC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100004A34(v9);
  if (LOBYTE(STACK[0x500]) == 1)
  {
    sub_1002813D0(&a9);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::sendTransferConfirmation_sync(CellularPlanDeliveryModel *a1, __int128 **a2)
{
  if (*(a1 + 18))
  {
    v4 = *(a1 + 38);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = *(a1 + 37);
        if (v6)
        {
          memset(v51, 0, sizeof(v51));
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          (*(*v6 + 96))(&v39);
          v38 = 20;
          v7 = *a2;
          if (*a2 != a2[1])
          {
            *v37 = 0;
            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (Mutable)
            {
              v9 = *v37;
              *v37 = Mutable;
              *&buf = v9;
              sub_1000296E0(&buf);
            }

            v36 = 0;
            if (*(v7 + 23) < 0)
            {
              sub_100005F2C(__p, *v7, *(v7 + 1));
            }

            else
            {
              v10 = *v7;
              v35 = *(v7 + 2);
              *__p = v10;
            }

            if (SHIBYTE(v35) < 0)
            {
              sub_100005F2C(&__dst, __p[0], __p[1]);
            }

            else
            {
              __dst = *__p;
              v54 = v35;
            }

            v52 = 0;
            if (SHIBYTE(v54) < 0)
            {
              sub_100005F2C(&buf, __dst, *(&__dst + 1));
            }

            else
            {
              buf = __dst;
              v58 = v54;
            }

            v55 = 0;
            if (ctu::cf::convert_copy())
            {
              v11 = v52;
              v52 = v55;
              v56[0] = v11;
              sub_100005978(v56);
            }

            if (SHIBYTE(v58) < 0)
            {
              operator delete(buf);
            }

            v36 = v52;
            v52 = 0;
            sub_100005978(&v52);
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__dst);
            }

            if (SHIBYTE(v35) < 0)
            {
              operator delete(__p[0]);
            }

            v33 = 0;
            if (SBYTE7(v42) < 0)
            {
              sub_100005F2C(v31, v41, *(&v41 + 1));
            }

            else
            {
              *v31 = v41;
              v32 = v42;
            }

            if (SHIBYTE(v32) < 0)
            {
              sub_100005F2C(&__dst, v31[0], v31[1]);
            }

            else
            {
              __dst = *v31;
              v54 = v32;
            }

            v52 = 0;
            if (SHIBYTE(v54) < 0)
            {
              sub_100005F2C(&buf, __dst, *(&__dst + 1));
            }

            else
            {
              buf = __dst;
              v58 = v54;
            }

            v55 = 0;
            if (ctu::cf::convert_copy())
            {
              v12 = v52;
              v52 = v55;
              v56[0] = v12;
              sub_100005978(v56);
            }

            if (SHIBYTE(v58) < 0)
            {
              operator delete(buf);
            }

            v33 = v52;
            v52 = 0;
            sub_100005978(&v52);
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__dst);
            }

            if (SHIBYTE(v32) < 0)
            {
              operator delete(v31[0]);
            }

            v30 = 0;
            if (SHIBYTE(v51[3]) < 0)
            {
              sub_100005F2C(v28, v51[1], v51[2]);
            }

            else
            {
              *v28 = *&v51[1];
              v29 = v51[3];
            }

            if (SHIBYTE(v29) < 0)
            {
              sub_100005F2C(&__dst, v28[0], v28[1]);
            }

            else
            {
              __dst = *v28;
              v54 = v29;
            }

            v52 = 0;
            if (SHIBYTE(v54) < 0)
            {
              sub_100005F2C(&buf, __dst, *(&__dst + 1));
            }

            else
            {
              buf = __dst;
              v58 = v54;
            }

            v55 = 0;
            if (ctu::cf::convert_copy())
            {
              v13 = v52;
              v52 = v55;
              v56[0] = v13;
              sub_100005978(v56);
            }

            if (SHIBYTE(v58) < 0)
            {
              operator delete(buf);
            }

            v30 = v52;
            v52 = 0;
            sub_100005978(&v52);
            if (SHIBYTE(v54) < 0)
            {
              operator delete(__dst);
            }

            if (SHIBYTE(v29) < 0)
            {
              operator delete(v28[0]);
            }

            sub_1001768B8(*v37, @"kSourceIccid", v36);
            sub_1001768B8(*v37, @"kTargetEid", v33);
            sub_1001768B8(*v37, @"kTargetName", v30);
            v14 = *(a1 + 5);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v7;
              if (*(v7 + 23) < 0)
              {
                v15 = *v7;
              }

              LODWORD(buf) = 136315138;
              *(&buf + 4) = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I send transfer confirmation for source iccid: %s", &buf, 0xCu);
            }

            v16 = sub_100649C38(2);
            sub_10000501C(&buf, v16);
            sub_100010180(&v27, v37);
            if (*(v7 + 23) < 0)
            {
              sub_100005F2C(v26, *v7, *(v7 + 1));
            }

            else
            {
              v17 = *v7;
              v26[2] = *(v7 + 2);
              *v26 = v17;
            }

            v56[4] = 0;
            operator new();
          }

          sub_100FBB8C8(&v39);
LABEL_68:
          if (v5)
          {
            sub_100004A34(v5);
          }

          return;
        }
      }
    }

    else
    {
      v5 = 0;
    }

    if (os_log_type_enabled(*(a1 + 5), OS_LOG_TYPE_ERROR))
    {
      sub_101761510();
    }

    v23 = *a2;
    v24 = a2[1];
    while (v23 != v24)
    {
      *&v40 = 0;
      v39 = 0uLL;
      if (*(v23 + 23) < 0)
      {
        sub_100005F2C(&v39, *v23, *(v23 + 1));
      }

      else
      {
        v25 = *v23;
        *&v40 = *(v23 + 2);
        v39 = v25;
      }

      CellularPlanDeliveryModel::clearTransferringStatus_sync(a1, &v39);
      if (SBYTE7(v40) < 0)
      {
        operator delete(v39);
      }

      v23 = (v23 + 24);
    }

    goto LABEL_68;
  }

  v18 = *a2;
  v19 = a2[1];
  if (*a2 != v19)
  {
    do
    {
      *&v40 = 0;
      v39 = 0uLL;
      if (*(v18 + 23) < 0)
      {
        sub_100005F2C(&v39, *v18, *(v18 + 1));
      }

      else
      {
        v20 = *v18;
        *&v40 = *(v18 + 2);
        v39 = v20;
      }

      v21 = *(a1 + 5);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if ((SBYTE7(v40) & 0x80u) == 0)
        {
          v22 = &v39;
        }

        else
        {
          v22 = v39;
        }

        LODWORD(buf) = 136315138;
        *(&buf + 4) = v22;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "cumessage is invalid, skip send transfer confirmation for %s", &buf, 0xCu);
      }

      CellularPlanDeliveryModel::clearTransferringStatus_sync(a1, &v39);
      if (SBYTE7(v40) < 0)
      {
        operator delete(v39);
      }

      v18 = (v18 + 24);
    }

    while (v18 != v19);
  }
}

void sub_1007CB470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007CB644(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1007CB63CLL);
}

void sub_1007CB65C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1007CB62CLL);
}

uint64_t (***CellularPlanDeliveryModel::isMonitorModeInProgress(uint64_t a1, __int128 *a2))(void, void **)
{
  v2 = *(a1 + 504);
  if (v2)
  {
    sub_10006F264(__p, a2);
    v2 = (**v2)(v2, __p);
    if (v6 == 1 && v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

void sub_1007CB704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::isMonitorModeIccid(uint64_t a1)
{
  result = *(a1 + 504);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t non-virtual thunk toCellularPlanDeliveryModel::isMonitorModeIccid(uint64_t a1)
{
  result = *(a1 + 424);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void CellularPlanDeliveryModel::stopMonitorMode_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 504);
  if (v2)
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

    (*(*v2 + 16))(v2, __p, 256);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1007CB824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::personalityChanged_sync(uint64_t a1)
{
  result = *(a1 + 504);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

void CellularPlanDeliveryModel::configureMonitorMode_sync(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 504);
  if (v7)
  {
    sub_100074920(v13, a2);
    (*(*v7 + 24))(v7, v13, a3, a4, a5, a6, a7);
    sub_100009970(v13, v13[1]);
  }
}

void CellularPlanDeliveryModel::setMonitorModeInterfaceDelegate(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 504);
  if (v3)
  {
    v4 = a2[1];
    v11 = *a2;
    v12 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 32))(v3, &v11);
    if (v12)
    {
      sub_100004A34(v12);
    }

    v5 = *(a1 + 504);
    sub_100004AA0(&v7, (a1 + 8));
    if (v7)
    {
      v6 = v7 + 88;
    }

    else
    {
      v6 = 0;
    }

    v9 = v6;
    v10 = v8;
    v7 = 0;
    v8 = 0;
    (*(*v5 + 40))(v5, &v9);
    if (v10)
    {
      sub_100004A34(v10);
    }

    if (v8)
    {
      sub_100004A34(v8);
    }
  }
}

void sub_1007CBA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14)
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

void CellularPlanDeliveryModel::updateMonitorModeStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 176);
  if (v6)
  {
    (*(*v6 + 64))(v6, a2, a3);
  }

  (***(a1 + 112))(&v25);
  ServiceMap = Registry::getServiceMap(v25);
  v8 = ServiceMap;
  v9 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v10 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
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
      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_11:
  if (v26)
  {
    sub_100004A34(v26);
  }

  if (v15)
  {
    if (v17)
    {
      if ((v16 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = *(*v17 + 136);
      if (v3 == 3)
      {
        v18();
        bzero(&v25, 0x508uLL);
        (*(*a1 + 168))(&v25, a1, a2);
        if (v28 == 1)
        {
          Current = CFAbsoluteTimeGetCurrent();
          sub_10000501C(__p, "MonitorModeStartTime");
          v24[1] = *&Current;
          v24[0] = sub_1002983F8;
          memset(v20, 0, sizeof(v20));
          sub_1001762DC(v20, __p, &v25, 1uLL);
          (*(*a1 + 120))(a1, &v27, v20);
          v21 = v20;
          sub_100176578(&v21);
          sub_100176638(v24);
          if (v23 < 0)
          {
            operator delete(__p[0]);
          }

          if (v28)
          {
            sub_1002813D0(&v25);
          }
        }
      }

      else
      {
        v18();
      }

      if (v14)
      {
        sub_100004A34(v14);
      }
    }
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_1007CBD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void **);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v21 = va_arg(va2, void);
  sub_100176578(va);
  sub_1001765FC(va1);
  if (LOBYTE(STACK[0x560]) == 1)
  {
    sub_1002813D0(va2);
    if (!v9)
    {
LABEL_3:
      if (v10)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      sub_100004A34(v9);
      goto LABEL_8;
    }
  }

  else if (!v9)
  {
    goto LABEL_3;
  }

  sub_100004A34(v9);
  if (v10)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1007CBE4C(uint64_t a1)
{
  sub_1007CD400(a1);

  operator delete();
}

void sub_1007CBE8C(uint64_t a1)
{
  sub_1007CD400(a1 - 48);

  operator delete();
}

void sub_1007CBED0(uint64_t a1)
{
  sub_1007CD400(a1 - 56);

  operator delete();
}

void sub_1007CBF14(uint64_t a1)
{
  sub_1007CD400(a1 - 64);

  operator delete();
}

void sub_1007CBF58(uint64_t a1)
{
  sub_1007CD400(a1 - 72);

  operator delete();
}

void sub_1007CBF9C(uint64_t a1)
{
  sub_1007CD400(a1 - 80);

  operator delete();
}

void sub_1007CBFE0(uint64_t a1)
{
  sub_1007CD400(a1 - 88);

  operator delete();
}

uint64_t sub_1007CC01C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(result + 8);
  v8 = (a2 + v7 - a4);
  if (v8 >= a3)
  {
    v10 = *(result + 8);
  }

  else
  {
    v10 = *(result + 8);
    do
    {
      result = sub_1002939FC(v10, v8);
      v8 += 80;
      v10 += 1280;
    }

    while (v8 < a3);
  }

  *(v6 + 8) = v10;
  if (v7 != a4)
  {
    v11 = v7 - 1280;
    v12 = a4 - v7;
    v13 = (a2 + v7 - 1280 - a4);
    do
    {
      result = sub_1007CC0DC(v11, v13);
      v11 -= 1280;
      v13 -= 80;
      v12 += 1280;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1007CC0DC(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 4);
  *a1 = v4;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v7 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v7;
  *(a2 + 95) = 0;
  *(a2 + 72) = 0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v8 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v8;
  *(a2 + 119) = 0;
  *(a2 + 96) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v9;
  *(a2 + 143) = 0;
  *(a2 + 120) = 0;
  std::string::operator=((a1 + 144), a2 + 6);
  std::string::operator=((a1 + 168), a2 + 7);
  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  v10 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v10;
  *(a2 + 215) = 0;
  *(a2 + 192) = 0;
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v11 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v11;
  *(a2 + 239) = 0;
  *(a2 + 216) = 0;
  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  v12 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v12;
  *(a2 + 263) = 0;
  *(a2 + 240) = 0;
  v13 = (a1 + 264);
  if (*(a1 + 287) < 0)
  {
    operator delete(*v13);
  }

  v14 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 35);
  *v13 = v14;
  *(a2 + 287) = 0;
  *(a2 + 264) = 0;
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  v15 = a2[18];
  *(a1 + 304) = *(a2 + 38);
  *(a1 + 288) = v15;
  *(a2 + 311) = 0;
  *(a2 + 288) = 0;
  v16 = (a1 + 312);
  if (*(a1 + 335) < 0)
  {
    operator delete(*v16);
  }

  v17 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 41);
  *v16 = v17;
  *(a2 + 335) = 0;
  *(a2 + 312) = 0;
  if (*(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  v18 = a2[21];
  *(a1 + 352) = *(a2 + 44);
  *(a1 + 336) = v18;
  *(a2 + 359) = 0;
  *(a2 + 336) = 0;
  v19 = (a1 + 360);
  if (*(a1 + 383) < 0)
  {
    operator delete(*v19);
  }

  v20 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 47);
  *v19 = v20;
  *(a2 + 383) = 0;
  *(a2 + 360) = 0;
  if (*(a1 + 407) < 0)
  {
    operator delete(*(a1 + 384));
  }

  v21 = a2[24];
  *(a1 + 400) = *(a2 + 50);
  *(a1 + 384) = v21;
  *(a2 + 407) = 0;
  *(a2 + 384) = 0;
  v22 = (a1 + 408);
  if (*(a1 + 431) < 0)
  {
    operator delete(*v22);
  }

  v23 = *(a2 + 408);
  *(a1 + 424) = *(a2 + 53);
  *v22 = v23;
  *(a2 + 431) = 0;
  *(a2 + 408) = 0;
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  v24 = a2[27];
  *(a1 + 448) = *(a2 + 56);
  *(a1 + 432) = v24;
  *(a2 + 455) = 0;
  *(a2 + 432) = 0;
  v25 = (a1 + 456);
  if (*(a1 + 479) < 0)
  {
    operator delete(*v25);
  }

  v26 = *(a2 + 456);
  *(a1 + 472) = *(a2 + 59);
  *v25 = v26;
  *(a2 + 479) = 0;
  *(a2 + 456) = 0;
  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  v27 = a2[30];
  *(a1 + 496) = *(a2 + 62);
  *(a1 + 480) = v27;
  *(a2 + 503) = 0;
  *(a2 + 480) = 0;
  v28 = (a1 + 504);
  if (*(a1 + 527) < 0)
  {
    operator delete(*v28);
  }

  v29 = *(a2 + 504);
  *(a1 + 520) = *(a2 + 65);
  *v28 = v29;
  *(a2 + 527) = 0;
  *(a2 + 504) = 0;
  sub_10016D4E8(a1 + 528, (a2 + 33));
  sub_10016D7BC(a1 + 688, (a2 + 43));
  v30 = (a1 + 856);
  if (*(a1 + 879) < 0)
  {
    operator delete(*v30);
  }

  v31 = *(a2 + 856);
  *(a1 + 872) = *(a2 + 109);
  *v30 = v31;
  *(a2 + 879) = 0;
  *(a2 + 856) = 0;
  sub_10016A270(a1 + 880, a2 + 55);
  v32 = a2[57];
  *(a1 + 928) = *(a2 + 464);
  *(a1 + 912) = v32;
  v33 = (a1 + 936);
  if (*(a1 + 959) < 0)
  {
    operator delete(*v33);
  }

  v34 = *(a2 + 936);
  *(a1 + 952) = *(a2 + 119);
  *v33 = v34;
  *(a2 + 959) = 0;
  *(a2 + 936) = 0;
  v35 = (a1 + 960);
  if (*(a1 + 983) < 0)
  {
    operator delete(*v35);
  }

  v36 = a2[60];
  *(a1 + 976) = *(a2 + 122);
  *v35 = v36;
  *(a2 + 983) = 0;
  *(a2 + 960) = 0;
  *(a1 + 984) = *(a2 + 984);
  sub_10016DA50(a1 + 992, a2 + 62);
  v37 = a2[70];
  v38 = a2[71];
  *(a1 + 1152) = *(a2 + 1152);
  *(a1 + 1136) = v38;
  *(a1 + 1120) = v37;
  v39 = *(a2 + 1160);
  *(a2 + 145) = 0;
  *(a2 + 146) = 0;
  v40 = *(a1 + 1168);
  *(a1 + 1160) = v39;
  if (v40)
  {
    sub_100004A34(v40);
  }

  v41 = *(a2 + 1176);
  *(a2 + 147) = 0;
  *(a2 + 148) = 0;
  v42 = *(a1 + 1184);
  *(a1 + 1176) = v41;
  if (v42)
  {
    sub_100004A34(v42);
  }

  v43 = *(a2 + 1192);
  *(a2 + 149) = 0;
  *(a2 + 150) = 0;
  v44 = *(a1 + 1200);
  *(a1 + 1192) = v43;
  if (v44)
  {
    sub_100004A34(v44);
  }

  v45 = *(a2 + 1208);
  *(a2 + 151) = 0;
  *(a2 + 152) = 0;
  v46 = *(a1 + 1216);
  *(a1 + 1208) = v45;
  if (v46)
  {
    sub_100004A34(v46);
  }

  v47 = *(a2 + 612);
  *(a1 + 1226) = *(a2 + 1226);
  *(a1 + 1224) = v47;
  v48 = a2[77];
  a2[77] = 0u;
  v49 = *(a1 + 1240);
  *(a1 + 1232) = v48;
  if (v49)
  {
    sub_100004A34(v49);
  }

  sub_10016DB50(a1 + 1248, (a2 + 78));
  return a1;
}

uint64_t sub_1007CC600(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x999999999999999ALL * ((v4 - *a1) >> 8);
      }

      v10 = a1[4];
      v12 = a1[4];
      sub_10027B5B4(v10, v9);
    }

    v8 = (0xCCCCCCCCCCCCCCCDLL * (v7 >> 8) + 1) / -2;
    v5 = &v6[-80 * ((0xCCCCCCCCCCCCCCCDLL * (v7 >> 8) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        sub_1007CC0DC(v5, v6);
        v6 += 80;
        v5 += 1280;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[80 * v8];
    a1[2] = v5;
  }

  result = sub_10027B690(v5, a2);
  a1[2] += 1280;
  return result;
}

void sub_1007CC780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CC798(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = a2[1];
  sub_1002812DC(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  sub_1002812DC(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

void sub_1007CC854(unint64_t *a1)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    v5 = v4 - *a1;
    if (v4 <= *a1)
    {
      if (v2 == *a1)
      {
        v7 = 1;
      }

      else
      {
        v7 = 0x999999999999999ALL * ((v2 - *a1) >> 8);
      }

      v8 = a1[4];
      v9 = a1[4];
      sub_10027B5B4(v8, v7);
    }

    v6 = (0xCCCCCCCCCCCCCCCDLL * (v5 >> 8) + 1) / -2;
    v3 = &v4[-80 * ((0xCCCCCCCCCCCCCCCDLL * (v5 >> 8) + 1) / 2)];
    if (v4 != v2)
    {
      do
      {
        sub_1007CC0DC(v3, v4);
        v4 += 80;
        v3 += 80;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = &v4[80 * v6];
    a1[2] = v3;
  }

  bzero(v3, 0x500uLL);
  a1[2] += 1280;
}

void sub_1007CC9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CC9E8(unint64_t *a1, __int128 *a2)
{
  v4 = a1[2];
  v5 = v4;
  if (v4 == a1[3])
  {
    v6 = a1[1];
    v7 = v6 - *a1;
    if (v6 <= *a1)
    {
      if (v4 == *a1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0x999999999999999ALL * ((v4 - *a1) >> 8);
      }

      v10 = a1[4];
      v12 = a1[4];
      sub_10027B5B4(v10, v9);
    }

    v8 = (0xCCCCCCCCCCCCCCCDLL * (v7 >> 8) + 1) / -2;
    v5 = &v6[-80 * ((0xCCCCCCCCCCCCCCCDLL * (v7 >> 8) + 1) / 2)];
    if (v6 != v4)
    {
      do
      {
        sub_1007CC0DC(v5, v6);
        v6 += 80;
        v5 += 1280;
      }

      while (v6 != v4);
      v6 = a1[1];
    }

    a1[1] = &v6[80 * v8];
    a1[2] = v5;
  }

  result = sub_10027B690(v5, a2);
  a1[2] += 1280;
  return result;
}

void sub_1007CCB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CCB80(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 8);
  v3 = v2 + 1;
  if (v2 + 1 > 0x33333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 8) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 8);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 8) >= 0x19999999999999)
  {
    v6 = 0x33333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10027B5B4(a1, v6);
  }

  v13 = 0;
  v14 = 1280 * v2;
  sub_10027B690(1280 * v2, a2);
  v15 = 1280 * v2 + 1280;
  v7 = *(a1 + 8);
  v8 = 1280 * v2 + *a1 - v7;
  sub_1002812DC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100281380(&v13);
  return v12;
}

void sub_1007CCC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CCCB0(unint64_t *a1, _BYTE *a2, __int128 *a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 6);
  v4 = v3 + 1;
  if (v3 + 1 > 0xCCCCCCCCCCCCCCLL)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 6) > v4)
  {
    v4 = 0x999999999999999ALL * ((a1[2] - *a1) >> 6);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 6) >= 0x66666666666666)
  {
    v7 = 0xCCCCCCCCCCCCCCLL;
  }

  else
  {
    v7 = v4;
  }

  v23 = a1;
  if (v7)
  {
    sub_1007CCE68(a1, v7);
  }

  v8 = 320 * v3;
  v20 = 0;
  v21 = v8;
  *(&v22 + 1) = 0;
  *v8 = *a2;
  v9 = *a3;
  *(v8 + 24) = *(a3 + 2);
  *(v8 + 8) = v9;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  v10 = *(a3 + 24);
  *(v8 + 48) = *(a3 + 5);
  *(v8 + 32) = v10;
  a3[2] = 0uLL;
  *(a3 + 3) = 0;
  v11 = a3[3];
  *(v8 + 72) = *(a3 + 8);
  *(v8 + 56) = v11;
  *(a3 + 56) = 0uLL;
  *(a3 + 6) = 0;
  v12 = *(a3 + 72);
  *(v8 + 96) = *(a3 + 11);
  *(v8 + 80) = v12;
  *(a3 + 72) = 0uLL;
  *(a3 + 11) = 0;
  v13 = a3[6];
  *(v8 + 120) = *(a3 + 14);
  *(v8 + 104) = v13;
  a3[6] = 0uLL;
  *(a3 + 14) = 0;
  *(v8 + 128) = *(a3 + 60);
  sub_1000DE908(v8 + 136, a3 + 8);
  *&v22 = v8 + 320;
  v14 = a1[1];
  v15 = v8 + *a1 - v14;
  sub_1007CCEC0(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_1007CD138(&v20);
  return v19;
}

void sub_1007CCE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007CD138(va);
  _Unwind_Resume(a1);
}

void sub_1007CCE68(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1007CCEC0(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 == a3)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    v5 = a2;
    v7 = (a2 + 136);
    do
    {
      *a4 = *(v7 - 136);
      v8 = *(v7 - 8);
      *(a4 + 24) = *(v7 - 14);
      *(a4 + 8) = v8;
      *(v7 - 15) = 0;
      *(v7 - 14) = 0;
      *(v7 - 16) = 0;
      v9 = *(v7 - 104);
      *(a4 + 48) = *(v7 - 11);
      *(a4 + 32) = v9;
      *(v7 - 12) = 0;
      *(v7 - 11) = 0;
      *(v7 - 13) = 0;
      v10 = *(v7 - 5);
      *(a4 + 72) = *(v7 - 8);
      *(a4 + 56) = v10;
      *(v7 - 9) = 0;
      *(v7 - 8) = 0;
      *(v7 - 10) = 0;
      v11 = *(v7 - 56);
      *(a4 + 96) = *(v7 - 5);
      *(a4 + 80) = v11;
      *(v7 - 7) = 0;
      *(v7 - 6) = 0;
      *(v7 - 5) = 0;
      v12 = *(v7 - 2);
      *(a4 + 120) = *(v7 - 2);
      *(a4 + 104) = v12;
      *(v7 - 4) = 0;
      *(v7 - 3) = 0;
      *(v7 - 2) = 0;
      *(a4 + 128) = *(v7 - 4);
      sub_1000DE908(a4 + 136, v7);
      a4 = v18 + 320;
      v18 += 320;
      v13 = v7 + 184;
      v7 += 20;
    }

    while (v13 != a3);
    LOBYTE(v16) = 1;
    while (v5 != a3)
    {
      sub_1007CD010(a1, v5);
      v5 += 320;
    }
  }

  return sub_1007CD0AC(v15);
}

void sub_1007CD010(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 312) == 1)
  {
    sub_1013A800C(a2 + 136);
  }

  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

uint64_t sub_1007CD0AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007CD0E4(a1);
  }

  return a1;
}

void sub_1007CD0E4(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 320;
      sub_1007CD010(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1007CD138(uint64_t a1)
{
  sub_1007CD170(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007CD170(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 320;
    sub_1007CD010(v5, v4 - 320);
  }
}

void sub_1007CD1B8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1007CD20C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1007CD20C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1007CD010(a1, i))
  {
    i -= 320;
  }

  *(a1 + 8) = a2;
}

uint64_t *sub_1007CD260(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10005B39C(a1, a2);
  }

  return a1;
}

void sub_1007CD2BC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007CD2D8(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    sub_10027EBE0(result, a4);
  }

  return result;
}

void sub_1007CD340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10027EE48(&a9);
  _Unwind_Resume(a1);
}

char *sub_1007CD360(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10027E9BC(v4, v6);
      v6 += 10;
      v4 = v11 + 160;
      v11 += 160;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_10027ED24(v8);
  return v4;
}

void sub_1007CD400(uint64_t a1)
{
  *a1 = off_101E7EC10;
  *(a1 + 48) = off_101E7EEA0;
  v2 = (a1 + 56);
  *(a1 + 56) = off_101E7EEC8;
  v3 = (a1 + 64);
  *(a1 + 64) = off_101E7EEF0;
  v4 = (a1 + 72);
  *(a1 + 72) = off_101E7EF28;
  v5 = (a1 + 80);
  *(a1 + 80) = off_101E7EF60;
  v6 = (a1 + 88);
  *(a1 + 88) = off_101E7EFB8;
  v7 = *(a1 + 512);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (*(a1 + 503) < 0)
  {
    operator delete(*(a1 + 480));
  }

  sub_100643184(a1 + 432);
  if (*(a1 + 424) == 1)
  {
    sub_100009970(a1 + 400, *(a1 + 408));
  }

  sub_100009970(a1 + 376, *(a1 + 384));
  v8 = *(a1 + 368);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 344);
  *(a1 + 344) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 336);
  *(a1 + 336) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v19 = (a1 + 312);
  sub_10005C284(&v19);
  v11 = *(a1 + 304);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  sub_1000DD0AC(a1 + 264, *(a1 + 272));
  v19 = (a1 + 232);
  sub_1000B2AF8(&v19);
  v19 = (a1 + 208);
  sub_100112048(&v19);
  v12 = *(a1 + 200);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 184);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 168);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(a1 + 152);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(a1 + 136);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(a1 + 120);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(a1 + 104);
  if (v18)
  {
    sub_100004A34(v18);
  }

  MonitorModeStatusDelegate::~MonitorModeStatusDelegate(v6);
  CellularPlanMultiplePlanInstallSchedulerDelegateInterface::~CellularPlanMultiplePlanInstallSchedulerDelegateInterface(v5);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(v4);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(v3);
  CoreUtilsMessageSessionDelegateInterface::~CoreUtilsMessageSessionDelegateInterface(v2);
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  CellularPlanDeliveryModelInterface::~CellularPlanDeliveryModelInterface(a1);
}

void sub_1007CD750(void *a1, uint64_t a2, NSObject **a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E7F1A8;
  sub_1007CD848(a1 + 3, a2, a3, a4);
}

void sub_1007CD7CC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7F1A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007CD848(void *a1, uint64_t a2, NSObject **a3, uint64_t a4)
{
  *v4 = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  CellularPlanDeliveryModel::CellularPlanDeliveryModel(a1, a2, a3, v4);
}

void sub_1007CD970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007CD98C(uint64_t a1)
{
  sub_1007CD400(a1);

  operator delete();
}

void sub_1007CD9CC(uint64_t a1)
{
  sub_1007CD400(a1 - 48);

  operator delete();
}

void sub_1007CDA10(uint64_t a1)
{
  sub_1007CD400(a1 - 56);

  operator delete();
}

void sub_1007CDA54(uint64_t a1)
{
  sub_1007CD400(a1 - 64);

  operator delete();
}

void sub_1007CDA98(uint64_t a1)
{
  sub_1007CD400(a1 - 72);

  operator delete();
}

void sub_1007CDADC(uint64_t a1)
{
  sub_1007CD400(a1 - 80);

  operator delete();
}

void sub_1007CDB20(uint64_t a1)
{
  sub_1007CD400(a1 - 88);

  operator delete();
}

void sub_1007CDB5C(Registry ****a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  CellularPlanDeliveryModel::init_sync(*v1);
}

void sub_1007CDBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1007CDC30(void *a1, void *a2, const ctu::OsLogLogger **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E7F5E0;
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

void sub_1007CDCCC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E7F5E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007CDE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007CDEC8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7F630;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007CDF08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007CDF54(uint64_t a1, xpc_object_t *a2)
{
  sub_10011D868(*a1, a2);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = (*(a1 + 8) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_1007CE0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007CE16C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7F6B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007CE1AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007CE1F8(uint64_t a1, xpc_object_t *a2)
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

void sub_1007CE350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007CE400(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7F730;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007CE438(void *a1)
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

uint64_t sub_1007CE480(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007CE5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007CE668(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E7F7B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007CE6A0(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11);
}

uint64_t sub_1007CE790(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007CE84C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E7F830;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007CE880(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007CE8CC(void *a1)
{
  *a1 = off_101E7F8B0;
  sub_10039D5CC((a1 + 1));
  return a1;
}

void sub_1007CE910(void *a1)
{
  *a1 = off_101E7F8B0;
  sub_10039D5CC((a1 + 1));

  operator delete();
}

void sub_1007CEA20(void *a1)
{
  sub_10039D5CC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1007CEA5C(uint64_t a1, _BYTE *a2)
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

uint64_t sub_1007CEA74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007CEAC0(uint64_t ***a1)
{
  v1 = ***a1;
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (v1 + 8));
  operator new();
}

void sub_1007CEBA4(CellularPlanDeliveryModel ***a1)
{
  v1 = a1;
  CellularPlanDeliveryModel::startPushListenerForPendingPlans_sync(**a1);
  operator delete();
}

uint64_t sub_1007CEC24(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007CECBC(uint64_t a1)
{
  *a1 = off_101E7F930;
  sub_100643184(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1007CED10(uint64_t a1)
{
  *a1 = off_101E7F930;
  sub_100643184(a1 + 40);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

uint64_t sub_1007CEE44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E7F930;
  *(a2 + 8) = v4;
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C((a2 + 16), *(a1 + 16), *(a1 + 24));
  }

  else
  {
    v5 = *(a1 + 16);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 16) = v5;
  }

  return sub_1007CEC24(a2 + 40, a1 + 40);
}

void sub_1007CEEBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007CEEE0(char *a1)
{
  sub_1007CF0E0((a1 + 8));

  operator delete(a1);
}

const void **sub_1007CEF1C(uint64_t a1, char *a2, const void **a3, const void **a4, unsigned __int8 *a5)
{
  v6 = *a2;
  v7 = *a3;
  *a3 = 0;
  v8 = *a4;
  v12 = *a4;
  v13 = v7;
  *a4 = 0;
  v9 = *a5;
  v10 = *(a1 + 8);
  v15 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v14 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  sub_1007BF334(a1 + 40, v6, &v15, &v14, v9);
  sub_10001021C(&v14);
  sub_100005978(&v15);
  CellularPlanDeliveryModel::handleActivateResult(v10, a1 + 16, v9);
  sub_10001021C(&v12);
  return sub_100005978(&v13);
}

void sub_1007CEFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CF014(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007CF060(uint64_t a1, uint64_t a2)
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

void sub_1007CF0E0(uint64_t a1)
{
  sub_100643184(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void *sub_1007CF130(void *result, void *a2)
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

void sub_1007CF390(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t (**sub_1007CF39C(uint64_t (**result)(uint64_t, void, void, _UNKNOWN **, void *)))(uint64_t, void, void, _UNKNOWN **, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1007CF3E8()
{
  exception = __cxa_allocate_exception(8uLL);
  exception->__vftable = 0;
  v1 = sub_101170F74(exception);
}

uint64_t (**sub_1007CF420(uint64_t (**result)(uint64_t, void, void, _UNKNOWN **, void *)))(uint64_t, void, void, _UNKNOWN **, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**sub_1007CF46C(uint64_t (**result)(uint64_t, void, void, _UNKNOWN **, void *)))(uint64_t, void, void, _UNKNOWN **, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**sub_1007CF4B8(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**sub_1007CF504(uint64_t (**result)(uint64_t, void, void, void *, void *)))(uint64_t, void, void, void *, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**sub_1007CF550(uint64_t (**result)(uint64_t, void, void, _UNKNOWN **, void *)))(uint64_t, void, void, _UNKNOWN **, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**sub_1007CF59C(uint64_t (**result)(uint64_t, void, void, _UNKNOWN **, void *)))(uint64_t, void, void, _UNKNOWN **, void *)
{
  if (result)
  {
    if (*result)
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *sub_1007CF5E8(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = 0;
  result = *sub_100005C2C(a1, &v4, a2);
  if (!result)
  {
    sub_1007CF674();
  }

  return result;
}

void sub_1007CF708(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1007CF7B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007CF7FC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 304);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(v1 + 296);
      if (v4)
      {
        v5 = *(v1 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I notifying pending transfer plans update", buf, 2u);
        }

        (*(*v4 + 56))(v4, v1 + 312);
        goto LABEL_11;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  if (!v3)
  {
LABEL_12:
    operator delete();
  }

LABEL_11:
  sub_100004A34(v3);
  goto LABEL_12;
}

uint64_t *sub_1007CF940(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  v4 = *(*v1 + 312);
  v3 = *(*v1 + 320);
  v5 = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v6 = *v5;
    v24 = *(v1 + 24);
    *__p = v6;
  }

  v7 = HIBYTE(v24);
  if (v4 == v3)
  {
    v3 = v4;
LABEL_22:
    if (v7 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v24 >= 0)
    {
      v8 = HIBYTE(v24);
    }

    else
    {
      v8 = __p[1];
    }

    if (v24 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    v10 = v4 + 432;
    while (1)
    {
      v11 = *(v10 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v10 + 8);
      }

      if (v8 == v11)
      {
        v13 = v12 >= 0 ? v10 : *v10;
        if (!memcmp(v9, v13, v8))
        {
          break;
        }
      }

      v14 = v10 + 848;
      v10 += 1280;
      if (v14 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v10 - 432;
    if (v7 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v3 == *(v2 + 320))
  {
    v18 = *(v2 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 31) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I plan : %s is done. ignore transfer push notification", buf, 0xCu);
    }
  }

  else
  {
    v15 = *(v2 + 304);
    if (v15)
    {
      v16 = std::__shared_weak_count::lock(v15);
      if (v16)
      {
        v17 = *(v2 + 296);
        if (v17)
        {
          *buf = 0u;
          v26 = 0u;
          if ((*(v3 + 479) & 0x8000000000000000) != 0)
          {
            if (!*(v3 + 464))
            {
LABEL_44:
              (*(*v17 + 40))(v17, v3, 1, 0);
              v19 = *(v3 + 1272);
              if (v19)
              {
                (*(*v19 + 48))(v19);
                sub_10016DBD4(v3 + 1248);
              }

              if (BYTE8(v26) == 1 && SBYTE7(v26) < 0)
              {
                operator delete(*buf);
              }

LABEL_49:
              sub_100004A34(v16);
              goto LABEL_50;
            }
          }

          else if (!*(v3 + 479))
          {
            goto LABEL_44;
          }

          sub_1001696A4(buf, (v3 + 456));
          goto LABEL_44;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    if (v16)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  sub_1000EF424(&v22);
  return sub_1000049E0(&v21);
}

void sub_1007CFC38(void **a1)
{
  v1 = **a1;
  if (v1[18])
  {
    v2 = v1[5];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I session invalidate", buf, 2u);
    }

    v3 = v1[38];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = v1[37];
        if (v6)
        {
          (*(*v6 + 88))(v6);
        }

        sub_100004A34(v5);
      }
    }

    v7 = v1[19];
    v1[18] = 0;
    v1[19] = 0;
    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  operator delete();
}

uint64_t sub_1007CFD58(uint64_t **a1, uint64_t ***a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  v4 = *sub_100005C2C(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_1007CFE14(uint64_t a1)
{
  *a1 = off_101E7FA30;
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

void sub_1007CFE70(uint64_t a1)
{
  *a1 = off_101E7FA30;
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

void sub_1007CFFA0(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_1007CFFC0(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101E7FA30;
  *(a2 + 8) = *(result + 8);
  v4 = *(result + 3);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  else
  {
    v5 = *(result + 2);
    *(a2 + 48) = *(result + 6);
    *(a2 + 32) = v5;
  }

  *(a2 + 56) = v3[56];
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1007D0058(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D0078(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_1007D00B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 16))
      {
LABEL_47:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = asString(*(a1 + 56));
        v8 = a1 + 32;
        if (*(a1 + 55) < 0)
        {
          v8 = *(a1 + 32);
        }

        *__p = 136315394;
        *&__p[4] = v7;
        *&__p[12] = 2080;
        *&__p[14] = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I retry transfer monitor mode completed with status: %s for sourceIccid: %s", __p, 0x16u);
      }

      v10 = *(v3 + 39);
      v9 = *(v3 + 40);
      if (*(a1 + 55) < 0)
      {
        sub_100005F2C(__p, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        *__p = *(a1 + 32);
        *&__p[16] = *(a1 + 48);
      }

      v11 = __p[23];
      if (v10 == v9)
      {
        v9 = v10;
        if ((__p[23] & 0x80) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (__p[23] >= 0)
        {
          v12 = __p[23];
        }

        else
        {
          v12 = *&__p[8];
        }

        if (__p[23] >= 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = *__p;
        }

        v14 = v10 + 432;
        while (1)
        {
          v15 = *(v14 + 23);
          v16 = v15;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(v14 + 8);
          }

          if (v15 == v12)
          {
            v17 = v16 >= 0 ? v14 : *v14;
            if (!memcmp(v17, v13, v12))
            {
              break;
            }
          }

          v18 = v14 + 848;
          v14 += 1280;
          if (v18 == v9)
          {
            if (v11 < 0)
            {
              goto LABEL_39;
            }

            goto LABEL_28;
          }
        }

        v9 = v14 - 432;
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_28;
        }
      }

LABEL_39:
      operator delete(*__p);
LABEL_28:
      if (v9 != *(v3 + 40))
      {
        v19 = *(v9 + 1216);
        *(v9 + 1208) = 0u;
        if (v19)
        {
          sub_100004A34(v19);
        }

        *(v9 + 1226) = 1;
        *(v9 + 16) = 0;
        if (*(v9 + 1152) == 1 && *(v9 + 1136) > 0.0)
        {
          v20 = *(v3 + 38);
          if (v20)
          {
            v21 = std::__shared_weak_count::lock(v20);
            if (v21)
            {
              v22 = v21;
              v23 = *(v3 + 37);
              if (v23)
              {
                v24 = *(a1 + 56);
                Current = CFAbsoluteTimeGetCurrent();
                v26 = *(v9 + 1136);
                v27 = *(v3 + 22);
                if (v27)
                {
                  v28 = (*(*v27 + 72))(v27);
                }

                else
                {
                  v28 = 0;
                }

                (*(*v23 + 136))(v23, 4, v9 + 240, v24, (Current - v26), v9 + 456, v28);
              }

              sub_100004A34(v22);
            }
          }

          *(v9 + 1136) = 0;
        }

        CellularPlanDeliveryModel::notifyPlansUpdate(v3);
      }

      goto LABEL_47;
    }
  }
}

void sub_1007D0380(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D03A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007D03F4(uint64_t a1)
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

void *sub_1007D0478(void *a1)
{
  *a1 = off_101E7FAB0;
  sub_1007CA434((a1 + 1));
  return a1;
}

void sub_1007D04BC(void *a1)
{
  *a1 = off_101E7FAB0;
  sub_1007CA434((a1 + 1));

  operator delete();
}

void sub_1007D05AC(_Unwind_Exception *a1)
{
  sub_100643184(v1 + 16);
  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_1007D05D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E7FAB0;
  *(a2 + 8) = v4;
  sub_1007CEC24(a2 + 16, a1 + 16);
  result = sub_10027E9BC((a2 + 48), (a1 + 48));
  v6 = *(a1 + 216);
  *(a2 + 208) = *(a1 + 208);
  *(a2 + 216) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1007D0660(void *a1)
{
  sub_1007CA434(a1 + 8);

  operator delete(a1);
}

const void **sub_1007D069C(void *a1, char *a2, const void **a3, CFTypeRef *a4, unsigned __int8 *a5)
{
  v6 = *a2;
  v7 = *a3;
  *a3 = 0;
  cf = *a4;
  v16 = v7;
  *a4 = 0;
  v8 = a1[27];
  if (v8)
  {
    v9 = *a5;
    v10 = a1[1];
    v11 = std::__shared_weak_count::lock(v8);
    if (v11 && a1[26])
    {
      if (v9)
      {
        v12 = *(v10 + 176);
        sub_10000501C(__p, "");
        LOBYTE(v17) = 11;
        (*(*v12 + 40))(v12, a1 + 11, __p, &v17);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = v16;
      }

      __p[0] = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      v17 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      sub_1007BF334((a1 + 2), v6, __p, &v17, v9);
      sub_10001021C(&v17);
      sub_100005978(__p);
      goto LABEL_16;
    }
  }

  else
  {
    v11 = 0;
  }

  ctu::OsLogContext::OsLogContext(__p, kCtLoggingSystemName, "cp.p.tr");
  v13 = __p[1];
  ctu::OsLogContext::~OsLogContext(__p);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_10177F24C();
    if (!v11)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v11)
  {
LABEL_16:
    sub_100004A34(v11);
  }

LABEL_17:
  sub_10001021C(&cf);
  return sub_100005978(&v16);
}

void sub_1007D0834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v19);
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D0894(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007D08E0(void *a1)
{
  *a1 = off_101E7FB30;
  sub_10028ED7C((a1 + 1));
  return a1;
}

void sub_1007D0924(void *a1)
{
  *a1 = off_101E7FB30;
  sub_10028ED7C((a1 + 1));

  operator delete();
}

void sub_1007D0A34(void *a1)
{
  sub_10028ED7C(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1007D0A7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007D0B54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007D0BA0(uint64_t a1)
{
  *a1 = off_101E7FC30;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_1007D0BF0(uint64_t a1)
{
  *a1 = off_101E7FC30;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_1007D0CFC(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_101E7FC30;
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

void sub_1007D0D48(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1007D0D5C(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

const void **sub_1007D0DA0(uint64_t a1, unsigned __int8 *a2, const void **a3)
{
  v4 = *a2;
  v7 = *a3;
  *a3 = 0;
  v5 = *(a1 + 8);
  if (v4 == 1 && os_log_type_enabled(v5[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177F280();
  }

  CellularPlanDeliveryModel::clearTransferringStatus_sync(v5, a1 + 16);
  return sub_10001021C(&v7);
}

void sub_1007D0E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D0E38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007D0E98()
{
  v1 = xmmword_10183AC70;
  v2 = unk_10183AC80;
  *&v3 = 120;
  qword_101FBABC0 = 0;
  unk_101FBABC8 = 0;
  qword_101FBABB8 = 0;
  sub_1002F3248(&qword_101FBABB8, &v1, &v3 + 1, 5uLL);
  __cxa_atexit(sub_1007BA1E0, &qword_101FBABB8, &_mh_execute_header);
  v1 = xmmword_10183AC98;
  v2 = unk_10183ACA8;
  v3 = xmmword_10183ACB8;
  v4 = 300;
  qword_101FBABD8 = 0;
  unk_101FBABE0 = 0;
  qword_101FBABD0 = 0;
  sub_1002F3248(&qword_101FBABD0, &v1, &v5, 7uLL);
  return __cxa_atexit(sub_1007BA1E0, &qword_101FBABD0, &_mh_execute_header);
}

const char *sub_1007D0FAC(unint64_t a1)
{
  if (a1 > 0xD)
  {
    return "???";
  }

  else
  {
    return off_101E7FD28[a1];
  }
}

const char *sub_1007D0FD0(unint64_t a1)
{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_101E7FD98[a1];
  }
}

uint64_t sub_1007D0FF4(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t *a4, const char **a5)
{
  v7 = a2;
  v9 = *a3;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a4[1];
  v12 = *a4;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A83CAC(a1, v7, &object, &v12, a5);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E7FCB0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_1007D10B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D10DC(uint64_t a1)
{
  *a1 = off_101E7FCB0;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  return sub_100A83DC4(a1);
}

void sub_1007D114C(uint64_t a1, int a2, BOOL a3)
{
  (***(a1 + 56))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
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
  v69 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v69);
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
  if (v68)
  {
    sub_100004A34(v68);
  }

  if (v14)
  {
    v69 = 0;
    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = v16;
    if (v16)
    {
      v69 = v16;
    }

    else
    {
      v17 = xpc_null_create();
      v69 = v17;
      if (!v17)
      {
        v19 = xpc_null_create();
        v17 = 0;
        goto LABEL_21;
      }
    }

    if (xpc_get_type(v17) == &_xpc_type_dictionary)
    {
      xpc_retain(v17);
LABEL_22:
      xpc_release(v17);
      v20 = *(a1 + 88);
      if (v20)
      {
        v21 = [v20 carrierName];
        v65 = xpc_string_create([v21 UTF8String]);
        if (!v65)
        {
          v65 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "carrierName";
        sub_10000F688(buf, &v65, &v66);
        xpc_release(v66);
        v66 = 0;
        xpc_release(v65);
        v65 = 0;

        v22 = [*(a1 + 88) gid1];
        v63 = xpc_string_create([v22 UTF8String]);
        if (!v63)
        {
          v63 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "gid1";
        sub_10000F688(buf, &v63, &v64);
        xpc_release(v64);
        v64 = 0;
        xpc_release(v63);
        v63 = 0;

        v23 = [*(a1 + 88) gid2];
        v61 = xpc_string_create([v23 UTF8String]);
        if (!v61)
        {
          v61 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "gid1";
        sub_10000F688(buf, &v61, &v62);
        xpc_release(v62);
        v62 = 0;
        xpc_release(v61);
        v61 = 0;

        v24 = [*(a1 + 88) imsi];
        object = xpc_BOOL_create([v24 length] != 0);
        if (!object)
        {
          object = xpc_null_create();
        }

        *buf = &v69;
        v68 = "hasImsi";
        sub_10000F688(buf, &object, &v60);
        xpc_release(v60);
        v60 = 0;
        xpc_release(object);
        object = 0;

        v25 = [*(a1 + 88) imei];
        v57 = xpc_BOOL_create([v25 length] != 0);
        if (!v57)
        {
          v57 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "hasImei";
        sub_10000F688(buf, &v57, &v58);
        xpc_release(v58);
        v58 = 0;
        xpc_release(v57);
        v57 = 0;

        v26 = [*(a1 + 88) phoneNumber];
        v55 = xpc_BOOL_create([v26 length] != 0);
        if (!v55)
        {
          v55 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "hasPhoneNumber";
        sub_10000F688(buf, &v55, &v56);
        xpc_release(v56);
        v56 = 0;
        xpc_release(v55);
        v55 = 0;

        v27 = [*(a1 + 88) token];
        v28 = [v27 token];
        v53 = xpc_BOOL_create([v28 length] != 0);
        if (!v53)
        {
          v53 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "hasToken";
        sub_10000F688(buf, &v53, &v54);
        xpc_release(v54);
        v54 = 0;
        xpc_release(v53);
        v53 = 0;

        v51 = xpc_BOOL_create([*(a1 + 88) simType] != 2);
        if (!v51)
        {
          v51 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "isPsim";
        sub_10000F688(buf, &v51, &v52);
        xpc_release(v52);
        v52 = 0;
        xpc_release(v51);
        v51 = 0;
        v29 = [*(a1 + 88) mcc];
        v49 = xpc_string_create([v29 UTF8String]);
        if (!v49)
        {
          v49 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "mcc";
        sub_10000F688(buf, &v49, &v50);
        xpc_release(v50);
        v50 = 0;
        xpc_release(v49);
        v49 = 0;

        v30 = [*(a1 + 88) mnc];
        v47 = xpc_string_create([v30 UTF8String]);
        if (!v47)
        {
          v47 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "mnc";
        sub_10000F688(buf, &v47, &v48);
        xpc_release(v48);
        v48 = 0;
        xpc_release(v47);
        v47 = 0;
      }

      v31 = *(a1 + 120);
      v32 = a3;
      if (v31)
      {
        v33 = sub_1007D0FD0(v31);
        v45 = xpc_string_create(v33);
        if (!v45)
        {
          v45 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "messageError";
        sub_10000F688(buf, &v45, &v46);
        xpc_release(v46);
        v46 = 0;
        xpc_release(v45);
        v32 = 0;
        v45 = 0;
      }

      v34 = *(a1 + 128);
      if (v34)
      {
        v35 = sub_1007D0FAC(v34);
        v43 = xpc_string_create(v35);
        if (!v43)
        {
          v43 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "SIMTransferErrorCode";
        sub_10000F688(buf, &v43, &v44);
        xpc_release(v44);
        v44 = 0;
        xpc_release(v43);
        v43 = 0;
        v32 = *(a1 + 128) == 1;
      }

      v41 = xpc_BOOL_create(a3);
      if (!v41)
      {
        v41 = xpc_null_create();
      }

      *buf = &v69;
      v68 = "dctConnectionStateCode";
      sub_10000F688(buf, &v41, &v42);
      xpc_release(v42);
      v42 = 0;
      xpc_release(v41);
      v41 = 0;
      if (!v32)
      {
        v36 = (a1 + 96);
        if (*(a1 + 119) < 0)
        {
          v36 = *v36;
        }

        v39 = xpc_string_create(v36);
        if (!v39)
        {
          v39 = xpc_null_create();
        }

        *buf = &v69;
        v68 = "phase";
        sub_10000F688(buf, &v39, &v40);
        xpc_release(v40);
        v40 = 0;
        xpc_release(v39);
        v39 = 0;
      }

      if (a2)
      {
        v38 = v69;
        if (v69)
        {
          xpc_retain(v69);
        }

        else
        {
          v38 = xpc_null_create();
        }

        (*(*v14 + 16))(v14, "crossPlatformTransferSourceMetrics", &v38);
        xpc_release(v38);
        v38 = 0;
      }

      else
      {
        v37 = v69;
        if (v69)
        {
          xpc_retain(v69);
        }

        else
        {
          v37 = xpc_null_create();
        }

        (*(*v14 + 16))(v14, "crossPlatformTransferTargetMetrics", &v37);
        xpc_release(v37);
        v37 = 0;
      }

      xpc_release(v69);
      goto LABEL_70;
    }

    v19 = xpc_null_create();
LABEL_21:
    v69 = v19;
    goto LABEL_22;
  }

  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Couldn't get analytics handler", buf, 2u);
  }

LABEL_70:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_1007D19CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(*(v12 - 88));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1007D1B2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007D1B68(a1, a2);

  sub_100A84B0C(a1, v3);
}

uint64_t sub_1007D1B68(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) > 0x14)
  {
    return 0;
  }

  else
  {
    return qword_10183C518[a2 - 1];
  }
}

void sub_1007D1BB4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_1007D1BDC(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_101E7FDE8;
  return result;
}

void sub_1007D1C00(uint64_t a1)
{
  *a1 = off_101E7FDE8;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_100140928((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_1007D1C90(uint64_t a1)
{
  sub_1007D1C00(a1);

  operator delete();
}

uint64_t sub_1007D1CC8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "details");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007D1D5C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_31;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) == 4)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

      if ((PB::Reader::skip(this, v21, v9 & 7, 0) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_1007D1FD8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 16);
  if (v5)
  {

    return PB::Writer::writeSubmessage(this, v5, 4u);
  }

  return result;
}

void *sub_1007D203C(void *result)
{
  if (!result[2])
  {
    operator new();
  }

  return result;
}

void sub_1007D20CC(int32x2_t **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D5AC8(a2, 0xCCCCCCCCCCCCCCCDLL * (a1[1] - *a1));
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 40)
  {
    sub_10006F264(__p, v4);
    v6 = *(v4 + 32);
    v7 = vceq_s32(v6, 0x200000002);
    v14 = vsub_s32(vbic_s8(vmvn_s8(vceq_s32(v6, 0x100000001)), v7), v7);
    v8 = a2[1];
    if (v8 >= a2[2])
    {
      v10 = sub_1007D5D34(a2, __p);
    }

    else
    {
      v8->i8[0] = 0;
      v8[3].i8[0] = 0;
      if (v13 == 1)
      {
        v9 = *__p;
        v8[2] = v12;
        *v8->i8 = v9;
        __p[1] = 0;
        v12 = 0;
        __p[0] = 0;
        v8[3].i8[0] = 1;
      }

      v8[4] = v14;
      v10 = &v8[5];
    }

    a2[1] = v10;
    if (v13 == 1 && v12.i8[7] < 0)
    {
      operator delete(__p[0]);
    }
  }
}

char *sub_1007D2234@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_100005F2C(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  if (v2[47] < 0)
  {
    result = sub_100005F2C((a2 + 24), *(v2 + 3), *(v2 + 4));
  }

  else
  {
    *(a2 + 24) = *(v2 + 24);
    *(a2 + 40) = *(v2 + 5);
  }

  if (v2[71] < 0)
  {
    return sub_100005F2C((a2 + 48), *(v2 + 6), *(v2 + 7));
  }

  *(a2 + 48) = *(v2 + 3);
  *(a2 + 64) = *(v2 + 8);
  return result;
}

void sub_1007D22D0(_Unwind_Exception *exception_object)
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

char *sub_1007D234C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_100005F2C(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  *(a2 + 24) = 1;
  if (*(v2 + 6))
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  *(a2 + 32) = v4;
  return result;
}

void sub_1007D23B0(char **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D5E90(a2, (a1[1] - *a1) >> 5);
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 32)
  {
    sub_1007D234C(v4, __p);
    v6 = a2[1];
    if (v6 >= a2[2])
    {
      v8 = sub_1007D605C(a2, __p);
    }

    else
    {
      *v6 = 0;
      *(v6 + 24) = 0;
      if (v11 == 1)
      {
        v7 = *__p;
        *(v6 + 16) = v10;
        *v6 = v7;
        __p[1] = 0;
        v10 = 0;
        __p[0] = 0;
        *(v6 + 24) = 1;
      }

      *(v6 + 32) = v12;
      v8 = v6 + 40;
    }

    a2[1] = v8;
    if (v11 == 1 && SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1007D24E0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__p, *a1, *(a1 + 8));
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }
  }

  else
  {
    *__p = *a1;
    v11 = *(a1 + 16);
  }

  *a2 = *__p;
  *(a2 + 16) = v11;
  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 24);
    v5 = a1 + 24;
    v4 = v6;
    v7 = *(v5 + 23);
    if (v7 >= 0)
    {
      v8 = v5;
    }

    else
    {
      v8 = v4;
    }

    if (v7 >= 0)
    {
      v9 = *(v5 + 23);
    }

    else
    {
      v9 = *(v5 + 8);
    }

    __p[1] = 0;
    v11 = 0;
    __p[0] = 0;
    sub_1001E0D88(__p, v8, &v8[v9], v9);
    sub_1001E9734(a2 + 24, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1007D25EC(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1 + 2;
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = -1;
  }

  *a2 = v6;
  sub_1007D24E0(v4, &v10);
  *(a2 + 8) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 0;
  *(a2 + 56) = 0;
  if (v14 == 1)
  {
    *(a2 + 32) = v12;
    *(a2 + 48) = v13;
    *(a2 + 56) = 1;
  }

  *(a2 + 64) = 1;
  v7 = a1[16];
  if (v7 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v7 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  *(a2 + 72) = v9;
}

void sub_1007D268C(char **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D61B8(a2, 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 72)
  {
    sub_1007D25EC(v4, &v8);
    v6 = a2[1];
    if (v6 >= a2[2])
    {
      v7 = sub_1007D649C(a2, &v8);
    }

    else
    {
      *v6 = v8;
      sub_1007D6378((v6 + 8), &v9);
      *(v6 + 72) = v15;
      v7 = v6 + 80;
    }

    a2[1] = v7;
    if (v14 == 1)
    {
      if (v13 == 1 && __p)
      {
        v12 = __p;
        operator delete(__p);
      }

      if (v10 < 0)
      {
        operator delete(v9);
      }
    }
  }
}

char *sub_1007D27C4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_100005F2C(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  if (v2[47] < 0)
  {
    return sub_100005F2C((a2 + 24), *(v2 + 3), *(v2 + 4));
  }

  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = *(v2 + 5);
  return result;
}

void sub_1007D2838(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D2854(char **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D65D8(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 48)
  {
    sub_1007D27C4(v4, v19);
    v6 = a2[1];
    v7 = a2[2];
    if (v6 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);
      v11 = v10 + 1;
      if (v10 + 1 > 0x555555555555555)
      {
        sub_1000CE3D4();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 4);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x2AAAAAAAAAAAAAALL)
      {
        v13 = 0x555555555555555;
      }

      else
      {
        v13 = v11;
      }

      v23[4] = a2;
      if (v13)
      {
        sub_1001904B4(a2, v13);
      }

      v14 = 48 * v10;
      v23[0] = 0;
      v23[1] = v14;
      v23[3] = 0;
      v15 = *v19;
      *(v14 + 16) = v20;
      *v14 = v15;
      v19[1] = 0;
      v20 = 0;
      v19[0] = 0;
      v16 = __p;
      *(v14 + 40) = v22;
      *(v14 + 24) = v16;
      v22 = 0;
      __p = 0uLL;
      v23[2] = 48 * v10 + 48;
      sub_1006FAE88(a2, v23);
      v17 = a2[1];
      sub_1001C7794(v23);
      v18 = SHIBYTE(v22);
      a2[1] = v17;
      if (v18 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v8 = *v19;
      *(v6 + 16) = v20;
      *v6 = v8;
      v19[1] = 0;
      v20 = 0;
      v19[0] = 0;
      v9 = v22;
      *(v6 + 24) = __p;
      *(v6 + 40) = v9;
      v22 = 0;
      __p = 0uLL;
      a2[1] = v6 + 48;
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void sub_1007D2A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C6984(va);
  _Unwind_Resume(a1);
}

void sub_1007D2A74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 96))
  {
    sub_1007D2304(a1, v8);
    *a2 = *v8;
    *(a2 + 16) = v9;
    v8[0] = 0;
    v8[1] = 0;
    *(a2 + 24) = *v10;
    *(a2 + 40) = v11;
    v9 = 0;
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    *(a2 + 64) = v13;
    *(a2 + 48) = *__p;
    __p[0] = 0;
    __p[1] = 0;
    *(a2 + 72) = v14;
    *(a2 + 88) = v15;
    v13 = 0;
    v14 = 0uLL;
    v15 = 0;
    *(a2 + 96) = 1;
    *&v16 = &v14;
    sub_1006FA290(&v16);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 96) = 0;
  }

  if (*(a1 + 128))
  {
    sub_1007D268C((a1 + 104), v8);
    *(a2 + 104) = *v8;
    *(a2 + 120) = v9;
    v8[1] = 0;
    v9 = 0;
    v8[0] = 0;
    *&v16 = v8;
    sub_1006FA34C(&v16);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *(a2 + 104) = 0;
  }

  *(a2 + 128) = v4;
  if (*(a1 + 160))
  {
    sub_1007D23B0((a1 + 136), v8);
    *(a2 + 136) = *v8;
    *(a2 + 152) = v9;
    v8[1] = 0;
    v9 = 0;
    v8[0] = 0;
    *&v16 = v8;
    sub_1006FA290(&v16);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *(a2 + 136) = 0;
  }

  *(a2 + 160) = v5;
  sub_10006F264(v8, (a1 + 168));
  *(a2 + 168) = 0;
  *(a2 + 192) = 0;
  if (LOBYTE(v10[0]) == 1)
  {
    *(a2 + 168) = *v8;
    *(a2 + 184) = v9;
    v8[1] = 0;
    v9 = 0;
    v8[0] = 0;
    *(a2 + 192) = 1;
  }

  *(a2 + 200) = 1;
  if (*(a1 + 224))
  {
    v16 = 0uLL;
    v17 = 0;
    sub_10004EFD0(&v16, *(a1 + 200), *(a1 + 208), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 208) - *(a1 + 200)) >> 3));
    *(a2 + 208) = v16;
    *(a2 + 224) = v17;
    v17 = 0;
    v16 = 0uLL;
    v18 = &v16;
    sub_1000087B4(&v18);
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *(a2 + 208) = 0;
  }

  *(a2 + 232) = v6;
  if (*(a1 + 256))
  {
    sub_1007D2854((a1 + 232), &v16);
    *(a2 + 240) = v16;
    *(a2 + 256) = v17;
    v17 = 0;
    v16 = 0uLL;
    v18 = &v16;
    sub_1001C6984(&v18);
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *(a2 + 240) = 0;
  }

  *(a2 + 264) = v7;
  if (LOBYTE(v10[0]) == 1 && SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_1007D2D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (*(v15 + 232) == 1)
  {
    *(v18 - 56) = v17;
    sub_1000087B4((v18 - 56));
  }

  if (*(v15 + 200) == 1 && *(v15 + 192) == 1 && *(v15 + 191) < 0)
  {
    operator delete(*(v15 + 168));
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 160) == 1)
  {
    sub_1006FA290(&__p);
  }

  if (*(v15 + 128) == 1)
  {
    *(v18 - 56) = v16;
    sub_1006FA34C((v18 - 56));
  }

  sub_100733E3C(v15);
  _Unwind_Resume(a1);
}

_BYTE *sub_1007D2E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 264))
  {
    sub_1007D2A74(a1, &v6);
    *a2 = 0;
    *(a2 + 96) = 0;
    if (v14 == 1)
    {
      *a2 = v6;
      *(a2 + 16) = v7;
      v6 = 0uLL;
      v4 = v8;
      v7 = 0;
      *&v8 = 0;
      *(a2 + 24) = v4;
      *(a2 + 40) = v9;
      *(&v8 + 1) = 0;
      v9 = 0;
      *(a2 + 64) = v11;
      *(a2 + 48) = v10;
      v10 = 0uLL;
      *(a2 + 72) = v12;
      *(a2 + 88) = v13;
      v11 = 0;
      v12 = 0uLL;
      v13 = 0;
      *(a2 + 96) = 1;
    }

    *(a2 + 104) = 0;
    *(a2 + 128) = 0;
    if (v17 == 1)
    {
      *(a2 + 104) = v15;
      *(a2 + 120) = v16;
      v16 = 0;
      v15 = 0uLL;
      *(a2 + 128) = 1;
    }

    *(a2 + 136) = 0;
    *(a2 + 160) = 0;
    if (v20 == 1)
    {
      *(a2 + 136) = v18;
      *(a2 + 152) = v19;
      v19 = 0;
      v18 = 0uLL;
      *(a2 + 160) = 1;
    }

    *(a2 + 168) = 0;
    *(a2 + 200) = 0;
    if (v24 == 1)
    {
      *(a2 + 192) = 0;
      if (v23 == 1)
      {
        *(a2 + 168) = v21;
        *(a2 + 184) = v22;
        v22 = 0;
        v21 = 0uLL;
        *(a2 + 192) = 1;
      }

      *(a2 + 200) = 1;
    }

    *(a2 + 208) = 0;
    *(a2 + 232) = 0;
    if (v27 == 1)
    {
      *(a2 + 208) = v25;
      *(a2 + 224) = v26;
      v26 = 0;
      v25 = 0uLL;
      *(a2 + 232) = 1;
    }

    *(a2 + 240) = 0;
    *(a2 + 264) = 0;
    if (v30 == 1)
    {
      *(a2 + 240) = v28;
      *(a2 + 256) = v29;
      v29 = 0;
      v28 = 0uLL;
      *(a2 + 264) = 1;
    }

    *(a2 + 272) = 1;
    sub_1006FA180(&v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 272) = 0;
  }

  return sub_10006F264((a2 + 280), (a1 + 272));
}

void sub_1007D3008(_Unwind_Exception *exception_object)
{
  if (*(v1 + 272) == 1)
  {
    sub_1006FA180(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1007D3028@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_100005F2C(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  if (v2[47] < 0)
  {
    return sub_100005F2C((a2 + 24), *(v2 + 3), *(v2 + 4));
  }

  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = *(v2 + 5);
  return result;
}

void sub_1007D309C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D30B8(char **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D6688(a2, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
  v4 = *a1;
  for (i = a1[1]; v4 != i; v4 += 48)
  {
    sub_1007D3028(v4, v19);
    v6 = a2[1];
    v7 = a2[2];
    if (v6 >= v7)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);
      v11 = v10 + 1;
      if (v10 + 1 > 0x555555555555555)
      {
        sub_1000CE3D4();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 4);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x2AAAAAAAAAAAAAALL)
      {
        v13 = 0x555555555555555;
      }

      else
      {
        v13 = v11;
      }

      v23[4] = a2;
      if (v13)
      {
        sub_1001904B4(a2, v13);
      }

      v14 = 48 * v10;
      v23[0] = 0;
      v23[1] = v14;
      v23[3] = 0;
      v15 = *v19;
      *(v14 + 16) = v20;
      *v14 = v15;
      v19[1] = 0;
      v20 = 0;
      v19[0] = 0;
      v16 = __p;
      *(v14 + 40) = v22;
      *(v14 + 24) = v16;
      v22 = 0;
      __p = 0uLL;
      v23[2] = 48 * v10 + 48;
      sub_1006FAE88(a2, v23);
      v17 = a2[1];
      sub_1001C7794(v23);
      v18 = SHIBYTE(v22);
      a2[1] = v17;
      if (v18 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      v8 = *v19;
      *(v6 + 16) = v20;
      *v6 = v8;
      v19[1] = 0;
      v20 = 0;
      v19[0] = 0;
      v9 = v22;
      *(v6 + 24) = __p;
      *(v6 + 40) = v9;
      v22 = 0;
      __p = 0uLL;
      a2[1] = v6 + 48;
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }
  }
}

void sub_1007D3298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C6984(va);
  _Unwind_Resume(a1);
}

void sub_1007D32D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007D2E00(a1, a2);
  sub_10006F264((a2 + 312), (a1 + 304));
  sub_10006F264((a2 + 344), (a1 + 336));
  sub_10006F264((a2 + 376), (a1 + 368));
  sub_10006F264((a2 + 408), (a1 + 400));
  sub_10006F264((a2 + 440), (a1 + 432));
  sub_10006F264((a2 + 472), (a1 + 464));
  sub_10006F264((a2 + 504), (a1 + 496));
  v4 = (a2 + 536);
  if (*(a1 + 552))
  {
    sub_1007D30B8((a1 + 528), &v6);
    *v4 = v6;
    *(a2 + 552) = v7;
    v7 = 0;
    v6 = 0uLL;
    v8 = &v6;
    sub_1001C6984(&v8);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *v4 = 0;
  }

  *(a2 + 560) = v5;
}

void sub_1007D33B8(_Unwind_Exception *a1)
{
  if (*(v1 + 528) == 1 && *(v1 + 527) < 0)
  {
    operator delete(*(v1 + 504));
  }

  if (*(v1 + 496) == 1 && *(v1 + 495) < 0)
  {
    operator delete(*(v1 + 472));
  }

  if (*(v1 + 464) == 1 && *(v1 + 463) < 0)
  {
    operator delete(*(v1 + 440));
  }

  if (*(v1 + 432) == 1 && *(v1 + 431) < 0)
  {
    operator delete(*(v1 + 408));
  }

  if (*(v1 + 400) == 1 && *(v1 + 399) < 0)
  {
    operator delete(*(v1 + 376));
  }

  if (*(v1 + 368) == 1 && *(v1 + 367) < 0)
  {
    operator delete(*(v1 + 344));
  }

  if (*(v1 + 336) == 1 && *(v1 + 335) < 0)
  {
    operator delete(*(v1 + 312));
  }

  sub_1007340F4(v1);
  _Unwind_Resume(a1);
}

double sub_1007D34C8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 1));
  }

  else
  {
    v4 = *a1;
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 2);
  }

  if (a1[3])
  {
    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(&v6, *(a1 + 3), *(a1 + 4));
    }

    else
    {
      v6 = *(a1 + 24);
      v7 = *(a1 + 5);
    }

    *&v4 = v6;
    *(a2 + 24) = v6;
    *(a2 + 40) = v7;
    *(a2 + 48) = 1;
  }

  else
  {
    *(a2 + 24) = 0;
    *(a2 + 48) = 0;
  }

  return *&v4;
}

void sub_1007D3570(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D358C(int a1)
{
  if ((a1 - 1) >= 0xD)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (a1 - 1);
  }
}

char *sub_1007D359C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *result - 1;
  if (v4 >= 3)
  {
    v4 = -1;
  }

  *a2 = v4;
  if (result[31] < 0)
  {
    result = sub_100005F2C((a2 + 8), *(result + 1), *(result + 2));
  }

  else
  {
    *(a2 + 8) = *(result + 8);
    *(a2 + 24) = *(result + 3);
  }

  if (v2[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(v2 + 4), *(v2 + 5));
  }

  *(a2 + 32) = *(v2 + 2);
  *(a2 + 48) = *(v2 + 6);
  return result;
}

void sub_1007D3630(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1007D364C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result[23] < 0)
  {
    result = sub_100005F2C(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
    *(a2 + 16) = *(result + 2);
  }

  if (v2[47] < 0)
  {
    return sub_100005F2C((a2 + 24), *(v2 + 3), *(v2 + 4));
  }

  *(a2 + 24) = *(v2 + 24);
  *(a2 + 40) = *(v2 + 5);
  return result;
}

void sub_1007D36C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1007D36DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    *a2 = *a1;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v4;
  if (*(a1 + 48))
  {
    if (*(a1 + 47) < 0)
    {
      sub_100005F2C(&v6, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v6 = *(a1 + 24);
      v7 = *(a1 + 40);
    }

    *(a2 + 24) = v6;
    *(a2 + 40) = v7;
    *(a2 + 48) = 1;
    *(a2 + 56) = 1;
  }

  else
  {
    *(a2 + 24) = 0;
    *(a2 + 56) = 0;
  }

  sub_10006F264((a2 + 64), (a1 + 56));
  return sub_10006F264((a2 + 96), (a1 + 88));
}

void sub_1007D379C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1007D37F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  if (*(a1 + 47) < 0)
  {
    sub_100005F2C((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
  }

  if (*(a1 + 71) < 0)
  {
    sub_100005F2C((a2 + 48), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *(a2 + 48) = *(a1 + 48);
    *(a2 + 64) = *(a1 + 64);
  }

  sub_10006F264((a2 + 72), (a1 + 72));
  return sub_10006F264((a2 + 104), (a1 + 104));
}

void sub_1007D38A8(_Unwind_Exception *exception_object)
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

_BYTE *sub_1007D3918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return sub_10006F264((a2 + 24), (a1 + 24));
}

void sub_1007D3970(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1007D398C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  sub_10006F264((a2 + 24), (a1 + 24));
  return sub_10006F264((a2 + 56), (a1 + 56));
}

void sub_1007D39F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1007D3A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return sub_10006F264((a2 + 24), (a1 + 24));
}

void sub_1007D3A88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D3AA4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = sub_1007D358C(*a1);
  v4 = sub_1007D34C8((a1 + 8), (a2 + 2));
  v5 = *(a1 + 208);
  if (v5 == -1)
  {
    sub_10058114C();
  }

  v8 = &v7;
  return (off_101E7FE28[v5])(&v8, a1 + 72, v4);
}

uint64_t sub_1007D3B40@<X0>(_DWORD *a1@<X0>, int *a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  v4 = a1[56];
  if (v4 == -1)
  {
    sub_10058114C();
  }

  v7 = &v6;
  return (off_101E7FE90[v4])(&v7, a1 + 2);
}

uint64_t sub_1007D3BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return sub_1007D3C20((a1 + 24), (a2 + 24));
}

void sub_1007D3C04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D3C20@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_1007D6738(a2, 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      sub_1007D3B40(v5, &v9);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v8 = sub_1007D68F0(a2, &v9);
      }

      else
      {
        *v7 = v9;
        v8 = (v7 + 58);
        sub_1007D5910((v7 + 2), v10);
      }

      a2[1] = v8;
      result = sub_10018FAC8(v10);
      v5 += 58;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_1007D3D50@<X0>(_DWORD *a1@<X0>, int *a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  v4 = a1[60];
  if (v4 == -1)
  {
    sub_10058114C();
  }

  v7 = &v6;
  return (off_101E7FEA0[v4])(&v7, a1 + 2);
}

uint64_t sub_1007D3DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return sub_1007D3E30((a1 + 24), (a2 + 24));
}

void sub_1007D3E14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007D3E30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_1007D6A3C(a2, 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      sub_1007D3D50(v5, &v9);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v8 = sub_1007D6CE0(a2, &v9);
      }

      else
      {
        *v7 = v9;
        v8 = (v7 + 62);
        sub_1007D6BA0((v7 + 2), v10);
      }

      a2[1] = v8;
      result = sub_1001918CC(v10);
      v5 += 62;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_1007D3F60@<X0>(_DWORD *a1@<X0>, int *a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  v4 = a1[60];
  if (v4 == -1)
  {
    sub_10058114C();
  }

  v7 = &v6;
  return (off_101E7FEC0[v4])(&v7, a1 + 2);
}

uint64_t sub_1007D3FCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_1007D6E2C(a2, 0xEF7BDEF7BDEF7BDFLL * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      sub_1007D3F60(v5, &v9);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v8 = sub_1007D7080(a2, &v9);
      }

      else
      {
        *v7 = v9;
        v8 = (v7 + 62);
        sub_1007D6F90((v7 + 2), v10);
      }

      a2[1] = v8;
      result = sub_100191D80(v10);
      v5 += 62;
    }

    while (v5 != v6);
  }

  return result;
}

char *sub_1007D40FC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  *a2 = *result;
  v4 = (a2 + 8);
  if (result[31] < 0)
  {
    result = sub_100005F2C(v4, *(result + 1), *(result + 2));
  }

  else
  {
    *v4 = *(result + 8);
    *(a2 + 24) = *(result + 3);
  }

  if (v2[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(v2 + 4), *(v2 + 5));
  }

  *(a2 + 32) = *(v2 + 2);
  *(a2 + 48) = *(v2 + 6);
  return result;
}

void sub_1007D4184(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_1007D41A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  bzero(a2, 0x2B0uLL);
  sub_1007D32D8(a1, __p);
  sub_10073454C(a2, __p);
  sub_1006FA044(__p);
  if (*(a1 + 584))
  {
    sub_1007D3FCC((a1 + 560), &v14);
    *__p = v14;
    *&__p[16] = v15;
    v15 = 0;
    v14 = 0uLL;
    v16 = &v14;
    sub_100191E28(&v16);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    __p[0] = 0;
  }

  LOBYTE(v11) = v4;
  sub_100734D90(a2 + 568, __p);
  if (v11 == 1)
  {
    *&v14 = __p;
    sub_100191E28(&v14);
  }

  sub_1007D40FC((a1 + 592), __p);
  v5 = (a2 + 608);
  *(a2 + 600) = __p[0];
  if (*(a2 + 631) < 0)
  {
    operator delete(*v5);
  }

  v6 = (a2 + 632);
  *v5 = *&__p[8];
  *(a2 + 624) = v11;
  HIBYTE(v11) = 0;
  __p[8] = 0;
  if (*(a2 + 655) < 0)
  {
    operator delete(*v6);
    v8 = SHIBYTE(v11);
    result = *&v12;
    *v6 = v12;
    *(a2 + 648) = v13;
    HIBYTE(v13) = 0;
    LOBYTE(v12) = 0;
    if (v8 < 0)
    {
      operator delete(*&__p[8]);
    }
  }

  else
  {
    result = *&v12;
    *v6 = v12;
    *(a2 + 648) = v13;
  }

  if (*(a1 + 672) == 1)
  {
    if (*(a1 + 671) < 0)
    {
      sub_100005F2C(__p, *(a1 + 648), *(a1 + 656));
    }

    else
    {
      *__p = *(a1 + 648);
      *&__p[16] = *(a1 + 664);
    }

    v9 = (a2 + 656);
    if (*(a2 + 680) == 1)
    {
      if (*(a2 + 679) < 0)
      {
        operator delete(*v9);
      }

      result = *__p;
      *v9 = *__p;
      *(a2 + 672) = *&__p[16];
    }

    else
    {
      result = *__p;
      *v9 = *__p;
      *(a2 + 672) = *&__p[16];
      *(a2 + 680) = 1;
    }
  }

  return result;
}

uint64_t sub_1007D43C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_1007D71CC(a2, 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3));
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      sub_1007D3B40(v5, &v9);
      v7 = a2[1];
      if (v7 >= a2[2])
      {
        v8 = sub_1007D72B4(a2, &v9);
      }

      else
      {
        *v7 = v9;
        v8 = (v7 + 58);
        sub_1007D5910((v7 + 2), v10);
      }

      a2[1] = v8;
      result = sub_10018FAC8(v10);
      v5 += 58;
    }

    while (v5 != v6);
  }

  return result;
}

int32x2_t sub_1007D44F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = vceq_s32(*a1, 0x200000002);
  result = vsub_s32(vbic_s8(vmvn_s8(vceq_s32(*a1, 0x100000001)), v3), v3);
  *a2 = result;
  if (*(a1 + 11) == 1)
  {
    v5 = *(a1 + 8) | (*(a1 + 10) << 16) | 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  *(a2 + 8) = v5;
  if (*(a1 + 15) == 1)
  {
    v6 = *(a1 + 12) | (*(a1 + 14) << 16) | 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 12) = v6;
  if (*(a1 + 40))
  {
    if (*(a1 + 39) < 0)
    {
      sub_100005F2C(&v7, *(a1 + 16), *(a1 + 24));
    }

    else
    {
      v7 = *(a1 + 16);
      v8 = *(a1 + 32);
    }

    result = v7;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = 1;
  }

  else
  {
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
  }

  return result;
}

_BYTE *sub_1007D45E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  if (*(a1 + 47) < 0)
  {
    sub_100005F2C((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
  }

  *(a2 + 48) = *(a1 + 48);
  sub_10006F264((a2 + 56), (a1 + 56));
  sub_10006F264((a2 + 88), (a1 + 88));
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 128) = *(a1 + 128);
  v4 = *(a1 + 136) - 1;
  if (v4 >= 3)
  {
    v4 = -1;
  }

  *(a2 + 136) = v4;
  return sub_10006F264((a2 + 144), (a1 + 144));
}

void sub_1007D46A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D4724(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007D48B0(a1, a2);
  if (*(a1 + 208))
  {
    if (*(a1 + 207) < 0)
    {
      sub_100005F2C(&v5, *(a1 + 184), *(a1 + 192));
    }

    else
    {
      v5 = *(a1 + 184);
      v6 = *(a1 + 200);
    }

    *(a2 + 184) = v5;
    *(a2 + 200) = v6;
    *(a2 + 208) = 1;
  }

  else
  {
    *(a2 + 184) = 0;
    *(a2 + 208) = 0;
  }

  if (*(a1 + 240))
  {
    if (*(a1 + 239) < 0)
    {
      sub_100005F2C(&v5, *(a1 + 216), *(a1 + 224));
    }

    else
    {
      v5 = *(a1 + 216);
      v6 = *(a1 + 232);
    }

    *(a2 + 216) = v5;
    *(a2 + 232) = v6;
    *(a2 + 240) = 1;
  }

  else
  {
    *(a2 + 216) = 0;
    *(a2 + 240) = 0;
  }

  if (*(a1 + 272))
  {
    sub_1007D43C4((a1 + 248), &v5);
    *(a2 + 248) = v5;
    *(a2 + 264) = v6;
    v6 = 0;
    v5 = 0uLL;
    v7 = &v5;
    sub_10019029C(&v7);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *(a2 + 248) = 0;
  }

  *(a2 + 272) = v4;
}

void sub_1007D4854(_Unwind_Exception *a1)
{
  if (*(v1 + 208) == 1 && *(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100191184(v1);
  _Unwind_Resume(a1);
}

void sub_1007D48B0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 176))
  {
    sub_1007D45E4(a1, v8);
    *a2 = *v8;
    *(a2 + 16) = v9;
    v8[0] = 0;
    v8[1] = 0;
    *(a2 + 24) = *v10;
    v9 = 0;
    v10[0] = 0;
    v3 = v11;
    v4 = v12;
    v10[1] = 0;
    v11 = 0;
    *(a2 + 40) = v3;
    *(a2 + 48) = v4;
    *(a2 + 56) = 0;
    *(a2 + 80) = 0;
    v5 = v15;
    if (v15 == 1)
    {
      *(a2 + 56) = *v13;
      *(a2 + 72) = v14;
      v13[1] = 0;
      v14 = 0;
      v13[0] = 0;
      *(a2 + 80) = 1;
    }

    *(a2 + 88) = 0;
    *(a2 + 112) = 0;
    v6 = v18;
    if (v18 == 1)
    {
      *(a2 + 88) = *__p;
      *(a2 + 104) = v17;
      __p[1] = 0;
      v17 = 0;
      __p[0] = 0;
      *(a2 + 112) = 1;
    }

    v7 = v19;
    *(a2 + 144) = 0;
    *(a2 + 120) = v7;
    *(a2 + 136) = v20;
    *(a2 + 168) = 0;
    if (v23 == 1)
    {
      *(a2 + 144) = v21;
      *(a2 + 160) = v22;
      v22 = 0;
      v21 = 0uLL;
      *(a2 + 168) = 1;
    }

    *(a2 + 176) = 1;
    if (v6 && SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
      v5 = v15;
    }

    if ((v5 & 1) != 0 && SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(v8[0]);
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 176) = 0;
  }
}

void sub_1007D4A60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1 && *(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

double sub_1007D4A88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = NAN;
  *a2 = -1;
  if (*a1 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (*a1 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  *(a2 + 8) = v5;
  if (*(a1 + 7) == 1)
  {
    v6 = *(a1 + 4) | (*(a1 + 6) << 16) | 0x1000000;
  }

  else
  {
    v6 = 0;
  }

  *(a2 + 12) = v6;
  if (*(a1 + 11) == 1)
  {
    v7 = *(a1 + 8) | (*(a1 + 10) << 16) | 0x1000000;
  }

  else
  {
    v7 = 0;
  }

  *(a2 + 16) = v7;
  if (*(a1 + 40))
  {
    if (*(a1 + 39) < 0)
    {
      sub_100005F2C(&v8, *(a1 + 16), *(a1 + 24));
    }

    else
    {
      v8 = *(a1 + 16);
      v9 = *(a1 + 32);
    }

    result = *&v8;
    *(a2 + 24) = v8;
    *(a2 + 40) = v9;
    *(a2 + 48) = 1;
  }

  else
  {
    *(a2 + 24) = 0;
    *(a2 + 48) = 0;
  }

  return result;
}

void sub_1007D4B74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007D48B0(a1, a2);
  if (*(a1 + 208))
  {
    if (*(a1 + 207) < 0)
    {
      sub_100005F2C(&v5, *(a1 + 184), *(a1 + 192));
    }

    else
    {
      v5 = *(a1 + 184);
      v6 = *(a1 + 200);
    }

    *(a2 + 184) = v5;
    *(a2 + 200) = v6;
    *(a2 + 208) = 1;
  }

  else
  {
    *(a2 + 184) = 0;
    *(a2 + 208) = 0;
  }

  if (*(a1 + 240))
  {
    if (*(a1 + 239) < 0)
    {
      sub_100005F2C(&v5, *(a1 + 216), *(a1 + 224));
    }

    else
    {
      v5 = *(a1 + 216);
      v6 = *(a1 + 232);
    }

    *(a2 + 216) = v5;
    *(a2 + 232) = v6;
    *(a2 + 240) = 1;
  }

  else
  {
    *(a2 + 216) = 0;
    *(a2 + 240) = 0;
  }

  if (*(a1 + 272))
  {
    sub_1007D43C4((a1 + 248), &v5);
    *(a2 + 248) = v5;
    *(a2 + 264) = v6;
    v6 = 0;
    v5 = 0uLL;
    v7 = &v5;
    sub_10019029C(&v7);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *(a2 + 248) = 0;
  }

  *(a2 + 272) = v4;
}

void sub_1007D4CA4(_Unwind_Exception *a1)
{
  if (*(v1 + 208) == 1 && *(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100191184(v1);
  _Unwind_Resume(a1);
}

void sub_1007D4D00(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007D4A88(a1, a2);
  sub_1007D4D64((a1 + 48), (a2 + 56));
  *(a2 + 80) = 0;
  *(a2 + 104) = 0;
}

void sub_1007D4D3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007D4D64(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1007D7400(a2, 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 3));
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      sub_1007D4B74(v4, v8);
      v6 = a2[1];
      if (v6 >= a2[2])
      {
        v7 = sub_1007D797C(a2, v8);
      }

      else
      {
        sub_1007D75B4(a2, a2[1], v8);
        v7 = v6 + 280;
      }

      a2[1] = v7;
      if (v28[24] == 1)
      {
        v29 = v28;
        sub_10019029C(&v29);
      }

      if (v27 == 1 && v26 < 0)
      {
        operator delete(__p);
      }

      if (v24 == 1 && v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 == 1)
      {
        if (v20 == 1 && v19 < 0)
        {
          operator delete(v18);
        }

        if (v17 == 1 && v16 < 0)
        {
          operator delete(v15);
        }

        if (v14 == 1 && v13 < 0)
        {
          operator delete(v12);
        }

        if (v11 < 0)
        {
          operator delete(v10);
        }

        if (v9 < 0)
        {
          operator delete(v8[0]);
        }
      }

      v4 += 280;
    }

    while (v4 != v5);
  }
}

void sub_1007D4F38(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; sub_1007D4F8C(result, i))
  {
    i -= 80;
  }

  *(result + 8) = a2;
}

void sub_1007D4F8C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 64) == 1)
  {
    if (*(a2 + 56) == 1)
    {
      v3 = *(a2 + 32);
      if (v3)
      {
        *(a2 + 40) = v3;
        operator delete(v3);
      }
    }

    if (*(a2 + 31) < 0)
    {
      v4 = *(a2 + 8);

      operator delete(v4);
    }
  }
}

uint64_t sub_1007D4FFC(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 56) == 1)
    {
      v2 = *(a1 + 32);
      if (v2)
      {
        *(a1 + 40) = v2;
        operator delete(v2);
      }
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

double sub_1007D5058@<D0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D359C(a1, &v4);
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  result = *&v7;
  *(a2 + 40) = v7;
  *(a2 + 56) = v8;
  *(a2 + 144) = 0;
  return result;
}

double sub_1007D50B8@<D0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&v4, *a1, *(a1 + 1));
  }

  else
  {
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  result = *&v4;
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  *(a2 + 144) = 1;
  return result;
}

double sub_1007D5124@<D0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D364C(a1, &v4);
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 144) = 2;
  return result;
}

double sub_1007D5180@<D0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&v4, *a1, *(a1 + 1));
  }

  else
  {
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  result = *&v4;
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  *(a2 + 144) = 3;
  return result;
}

double sub_1007D51EC@<D0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&v4, *a1, *(a1 + 1));
  }

  else
  {
    v4 = *a1;
    v5 = *(a1 + 2);
  }

  result = *&v4;
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  *(a2 + 144) = 4;
  return result;
}

void sub_1007D5258(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D36DC(a1, v3);
  sub_1007D5540((a2 + 8), v3);
  *(a2 + 144) = 5;
  if (v13 == 1 && v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 == 1 && v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 == 1 && v6 == 1 && v5 < 0)
  {
    operator delete(v4);
  }
}

_BYTE *sub_1007D5320@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1007D3918(a1, &v5);
  v4 = v5;
  *(a2 + 32) = 0;
  *(a2 + 8) = v4;
  *(a2 + 24) = v6;
  *(a2 + 56) = 0;
  if (v9 == 1)
  {
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
    *(a2 + 56) = 1;
  }

  *(a2 + 144) = 8;
  return result;
}

void sub_1007D539C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D398C(a1, v5);
  v3 = *v5;
  *(a2 + 32) = 0;
  *(a2 + 8) = v3;
  *(a2 + 24) = v6;
  v5[1] = 0;
  v6 = 0;
  v5[0] = 0;
  *(a2 + 56) = 0;
  v4 = v9;
  if (v9 == 1)
  {
    *(a2 + 32) = *__p;
    *(a2 + 48) = v8;
    __p[1] = 0;
    v8 = 0;
    __p[0] = 0;
    *(a2 + 56) = 1;
  }

  *(a2 + 64) = 0;
  *(a2 + 88) = 0;
  if (v12 == 1)
  {
    *(a2 + 64) = v10;
    *(a2 + 80) = v11;
    v11 = 0;
    v10 = 0uLL;
    *(a2 + 88) = 1;
  }

  *(a2 + 144) = 9;
  if (v4 && SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }
}

_BYTE *sub_1007D5484@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1007D3A30(a1, &v5);
  v4 = v5;
  *(a2 + 32) = 0;
  *(a2 + 8) = v4;
  *(a2 + 24) = v6;
  *(a2 + 56) = 0;
  if (v9 == 1)
  {
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
    *(a2 + 56) = 1;
  }

  *(a2 + 144) = 10;
  return result;
}

void sub_1007D5500(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  *(a2 + 8) = v2;
  *(a2 + 144) = 11;
}

void sub_1007D551C(_DWORD *a1@<X1>, uint64_t a2@<X8>)
{
  if (*a1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  *(a2 + 8) = v3;
  *(a2 + 144) = 12;
}

__n128 sub_1007D5540(__n128 *a1, uint64_t a2)
{
  result = *a2;
  a1[1].n128_u64[0] = *(a2 + 16);
  *a1 = result;
  a1[1].n128_u8[8] = 0;
  a1[3].n128_u8[8] = 0;
  if (*(a2 + 56) == 1)
  {
    a1[3].n128_u8[0] = 0;
    if (*(a2 + 48) == 1)
    {
      result = *(a2 + 24);
      a1[2].n128_u64[1] = *(a2 + 40);
      *(a1 + 24) = result;
      *(a2 + 32) = 0;
      *(a2 + 40) = 0;
      *(a2 + 24) = 0;
      a1[3].n128_u8[0] = 1;
    }

    a1[3].n128_u8[8] = 1;
  }

  a1[4].n128_u8[0] = 0;
  a1[5].n128_u8[8] = 0;
  if (*(a2 + 88) == 1)
  {
    result = *(a2 + 64);
    a1[5].n128_u64[0] = *(a2 + 80);
    a1[4] = result;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    a1[5].n128_u8[8] = 1;
  }

  a1[6].n128_u8[0] = 0;
  a1[7].n128_u8[8] = 0;
  if (*(a2 + 120) == 1)
  {
    result = *(a2 + 96);
    a1[7].n128_u64[0] = *(a2 + 112);
    a1[6] = result;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    *(a2 + 96) = 0;
    a1[7].n128_u8[8] = 1;
  }

  return result;
}

void sub_1007D5614(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D37F4(a1, v3);
  sub_1006A9260(a2 + 8, v3);
  *(a2 + 144) = 7;
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p);
  }

  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5);
  }

  if (v4 < 0)
  {
    operator delete(v3[0]);
  }
}

void sub_1007D56C4(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D3AA4(a1, &v3);
  sub_1006A980C(a2, &v3);
  *(a2 + 216) = 0;
  sub_10018FBF0(&v9);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

void sub_1007D5778(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D34C8(a1, &v3);
  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = 0;
  *(a2 + 48) = 0;
  if (v7 == 1)
  {
    *(a2 + 24) = v5;
    *(a2 + 40) = v6;
    *(a2 + 48) = 1;
  }

  *(a2 + 216) = 1;
}

uint64_t sub_1007D57F4@<X0>(_DWORD *a1@<X1>, _DWORD *a2@<X8>)
{
  sub_1007D3B40(a1, &v4);
  *a2 = v4;
  sub_1007D5910((a2 + 2), v5);
  a2[58] = 0;
  return sub_10018FAC8(v5);
}

void sub_1007D5884(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D3BAC(a1, __p);
  *a2 = *__p;
  *(a2 + 16) = v4;
  __p[0] = 0;
  __p[1] = 0;
  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  v4 = 0;
  v5 = 0uLL;
  v6 = 0;
  *(a2 + 232) = 1;
  v7 = &v5;
  sub_100191974(&v7);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1007D5910(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 216) = -1;
  sub_1007D5948(a1, a2);
  return a1;
}

uint64_t sub_1007D5948(uint64_t a1, uint64_t a2)
{
  result = sub_10018FAC8(a1);
  v5 = *(a2 + 216);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E7FEB0[v5])(&v6, a2);
    *(a1 + 216) = v5;
  }

  return result;
}

uint64_t sub_1007D59AC@<X0>(_DWORD *a1@<X1>, _DWORD *a2@<X8>)
{
  sub_1007D3B40(a1, &v4);
  *a2 = v4;
  sub_1007D5910((a2 + 2), v5);
  a2[58] = 0;
  return sub_10018FAC8(v5);
}

void sub_1007D5A3C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1007D3DBC(a1, __p);
  *a2 = *__p;
  *(a2 + 16) = v4;
  __p[0] = 0;
  __p[1] = 0;
  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  v4 = 0;
  v5 = 0uLL;
  v6 = 0;
  *(a2 + 232) = 1;
  v7 = &v5;
  sub_100191B24(&v7);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t *sub_1007D5AC8(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_100733198(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D5B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007D5C94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D5BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v12 = 0;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a4 + v6;
      v8 = (a2 + v6);
      *v7 = 0;
      *(v7 + 24) = 0;
      if (*(a2 + v6 + 24) == 1)
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = 0;
        *(v7 + 24) = 1;
      }

      *(v7 + 32) = *(v8 + 4);
      v6 += 40;
    }

    while (a2 + v6 != a3);
    v14 = a4 + v6;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 24) == 1 && *(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 40;
    }
  }

  return sub_100733298(v11);
}

uint64_t sub_1007D5C94(uint64_t a1)
{
  sub_1007D5CCC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007D5CCC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 16) == 1 && *(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1007D5D34(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100733198(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 0uLL;
  *v7 = 0;
  *(v7 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v8 = *a2;
    *(40 * v2 + 0x10) = *(a2 + 2);
    *v7 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(40 * v2 + 0x18) = 1;
  }

  *(40 * v2 + 0x20) = *(a2 + 4);
  *&v17 = v7 + 40;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_1007D5BA4(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1007D5C94(&v15);
  return v14;
}

void sub_1007D5E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007D5C94(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007D5E90(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      sub_100733A00(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D5F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007D5C94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D5F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v12 = 0;
  v13 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v7 = a4 + v6;
      v8 = (a2 + v6);
      *v7 = 0;
      *(v7 + 24) = 0;
      if (*(a2 + v6 + 24) == 1)
      {
        v9 = *v8;
        *(v7 + 16) = *(v8 + 2);
        *v7 = v9;
        *(v8 + 1) = 0;
        *(v8 + 2) = 0;
        *v8 = 0;
        *(v7 + 24) = 1;
      }

      *(v7 + 32) = *(v8 + 8);
      v6 += 40;
    }

    while (a2 + v6 != a3);
    v14 = a4 + v6;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      if (*(v5 + 24) == 1 && *(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 40;
    }
  }

  return sub_100733B00(v11);
}

uint64_t sub_1007D605C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100733A00(a1, v6);
  }

  v7 = 40 * v2;
  v15 = 0;
  v16 = v7;
  v17 = 0uLL;
  *v7 = 0;
  *(v7 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    v8 = *a2;
    *(40 * v2 + 0x10) = *(a2 + 2);
    *v7 = v8;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    *(40 * v2 + 0x18) = 1;
  }

  *(40 * v2 + 0x20) = *(a2 + 8);
  *&v17 = v7 + 40;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  sub_1007D5F6C(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1007D5C94(&v15);
  return v14;
}

void sub_1007D61A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007D5C94(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007D61B8(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      sub_100733524(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D6280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007D641C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D6294(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 8;
    do
    {
      *v4 = *(v8 - 8);
      sub_1007D6378(v4 + 8, v8);
      v4[18] = *(v8 + 64);
      v4 = v14 + 20;
      v14 += 20;
      v9 = v8 + 72;
      v8 += 80;
    }

    while (v9 != a3);
    LOBYTE(v12) = 1;
    while (v6 != a3)
    {
      sub_1007D4F8C(a1, v6);
      v6 += 80;
    }
  }

  return sub_1007337B0(v11);
}

_BYTE *sub_1007D6378(_BYTE *a1, __int128 *a2)
{
  *a1 = 0;
  a1[56] = 0;
  sub_1007D63AC(a1, a2);
  return a1;
}

uint64_t sub_1007D63AC(uint64_t result, __int128 *a2)
{
  if (*(a2 + 56) == 1)
  {
    v2 = *a2;
    *(result + 16) = *(a2 + 2);
    *result = v2;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    *(result + 24) = 0;
    *(result + 48) = 0;
    if (*(a2 + 48) == 1)
    {
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 40) = 0;
      *(result + 24) = *(a2 + 24);
      *(result + 40) = *(a2 + 5);
      *(a2 + 24) = 0uLL;
      *(a2 + 5) = 0;
      *(result + 48) = 1;
    }

    *(result + 56) = 1;
  }

  return result;
}

uint64_t sub_1007D641C(uint64_t a1)
{
  sub_1007D6454(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007D6454(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 80;
    sub_1007D4F8C(v5, v4 - 80);
  }
}

uint64_t sub_1007D649C(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100733524(a1, v6);
  }

  v7 = 80 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  sub_1007D6378((v7 + 8), (a2 + 2));
  *(v7 + 72) = a2[18];
  *&v16 = v7 + 80;
  v8 = a1[1];
  v9 = (v7 + *a1 - v8);
  sub_1007D6294(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007D641C(&v14);
  return v13;
}

void sub_1007D65C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007D641C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007D65D8(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_1001904B4(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D6674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C7794(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007D6688(uint64_t *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      sub_1001904B4(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D6724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C7794(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007D6738(uint64_t *result, unint64_t a2)
{
  if (0x34F72C234F72C235 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x11A7B9611A7B962)
    {
      sub_10018F920(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D680C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007D689C(va);
  _Unwind_Resume(a1);
}

void sub_1007D6820(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 8;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      v8 += 58;
      *(v6 - 8) = v9;
      v6 = sub_1007D5910(v6, (v7 + 2)) + 232;
      v7 = v8;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      sub_10018FAC8((v5 + 2));
      v5 += 58;
    }
  }
}

uint64_t sub_1007D689C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    sub_10018FAC8(i - 224);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007D68F0(uint64_t a1, int *a2)
{
  v2 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1000CE3D4();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_10018F920(a1, v6);
  }

  v7 = 232 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  sub_1007D5910(v7 + 8, (a2 + 2));
  *&v16 = v7 + 232;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  sub_1007D6820(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007D689C(&v14);
  return v13;
}

void sub_1007D6A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007D689C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007D6A3C(uint64_t *result, unint64_t a2)
{
  if (0xEF7BDEF7BDEF7BDFLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x108421084210843)
    {
      sub_100191724(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D6B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007D6C8C(va);
  _Unwind_Resume(a1);
}

void sub_1007D6B24(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 8;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      v8 += 62;
      *(v6 - 8) = v9;
      v6 = sub_1007D6BA0(v6, (v7 + 2)) + 248;
      v7 = v8;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      sub_1001918CC((v5 + 2));
      v5 += 62;
    }
  }
}

uint64_t sub_1007D6BA0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 232) = -1;
  sub_1007D6BD8(a1, a2);
  return a1;
}

uint64_t sub_1007D6BD8(uint64_t a1, uint64_t a2)
{
  result = sub_1001918CC(a1);
  v5 = *(a2 + 232);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E7FED0[v5])(&v6, a2);
    *(a1 + 232) = v5;
  }

  return result;
}

uint64_t sub_1007D6C3C(_DWORD **a1, _DWORD *a2)
{
  v2 = *a1;
  *v2 = *a2;
  return sub_1007D5910((v2 + 2), (a2 + 2));
}

__n128 sub_1007D6C4C(uint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v3 = *a2;
  *(v2 + 16) = *(a2 + 2);
  *v2 = v3;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  result = *(a2 + 24);
  *(v2 + 24) = result;
  *(v2 + 40) = *(a2 + 5);
  *(a2 + 24) = 0uLL;
  *(a2 + 5) = 0;
  return result;
}

uint64_t sub_1007D6C8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    sub_1001918CC(i - 240);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007D6CE0(uint64_t a1, _DWORD *a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1000CE3D4();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x84210842108421)
  {
    v6 = 0x108421084210842;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100191724(a1, v6);
  }

  v7 = 248 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  sub_1007D6BA0(v7 + 8, (a2 + 2));
  *&v16 = v7 + 248;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  sub_1007D6B24(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007D6C8C(&v14);
  return v13;
}

void sub_1007D6E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007D6C8C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007D6E2C(uint64_t *result, unint64_t a2)
{
  if (0xEF7BDEF7BDEF7BDFLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x108421084210843)
    {
      sub_100191724(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D6F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007D702C(va);
  _Unwind_Resume(a1);
}

void sub_1007D6F14(uint64_t a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a4 + 8;
    v7 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      v8 += 62;
      *(v6 - 8) = v9;
      v6 = sub_1007D6F90(v6, (v7 + 2)) + 248;
      v7 = v8;
    }

    while (v8 != a3);
    while (v5 != a3)
    {
      sub_100191D80((v5 + 2));
      v5 += 62;
    }
  }
}

uint64_t sub_1007D6F90(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 232) = -1;
  sub_1007D6FC8(a1, a2);
  return a1;
}

uint64_t sub_1007D6FC8(uint64_t a1, uint64_t a2)
{
  result = sub_100191D80(a1);
  v5 = *(a2 + 232);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E7FEE0[v5])(&v6, a2);
    *(a1 + 232) = v5;
  }

  return result;
}

uint64_t sub_1007D702C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    sub_100191D80(i - 240);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007D7080(uint64_t a1, _DWORD *a2)
{
  v2 = 0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x108421084210842)
  {
    sub_1000CE3D4();
  }

  if (0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDEF7BDEF7BDEF7BELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xEF7BDEF7BDEF7BDFLL * ((*(a1 + 16) - *a1) >> 3) >= 0x84210842108421)
  {
    v6 = 0x108421084210842;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_100191724(a1, v6);
  }

  v7 = 248 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  sub_1007D6F90(v7 + 8, (a2 + 2));
  *&v16 = v7 + 248;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  sub_1007D6F14(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007D702C(&v14);
  return v13;
}

void sub_1007D71B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007D702C(va);
  _Unwind_Resume(a1);
}

void *sub_1007D71CC(void *result, unint64_t a2)
{
  if (0x34F72C234F72C235 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x11A7B9611A7B962)
    {
      sub_10018F920(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D72A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007D689C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D72B4(uint64_t a1, int *a2)
{
  v2 = 0x34F72C234F72C235 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1000CE3D4();
  }

  if (0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((*(a1 + 16) - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    sub_10018F920(a1, v6);
  }

  v7 = 232 * v2;
  v14 = 0;
  v15 = v7;
  *(&v16 + 1) = 0;
  *v7 = *a2;
  sub_1007D5910(v7 + 8, (a2 + 2));
  *&v16 = v7 + 232;
  v8 = *(a1 + 8);
  v9 = v7 + *a1 - v8;
  sub_1007D6820(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1007D689C(&v14);
  return v13;
}

void sub_1007D73EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007D689C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007D7400(uint64_t *result, unint64_t a2)
{
  if (0xAF8AF8AF8AF8AF8BLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xEA0EA0EA0EA0EBLL)
    {
      sub_100191448(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_1007D74D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007D78FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D74E8(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1007D75B4(a1, a4, v7);
      v7 = (v7 + 280);
      a4 = v12 + 280;
      v12 += 280;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_1007D7774(a1, v5);
      v5 += 280;
    }
  }

  return sub_1007D7870(v9);
}

__n128 sub_1007D75B4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a2 = 0;
  *(a2 + 176) = 0;
  if (*(a3 + 176) == 1)
  {
    v3 = *a3;
    *(a2 + 16) = *(a3 + 2);
    *a2 = v3;
    *(a3 + 8) = 0uLL;
    *a3 = 0;
    v4 = *(a3 + 24);
    *(a2 + 40) = *(a3 + 5);
    *(a2 + 24) = v4;
    a3[2] = 0uLL;
    *(a3 + 3) = 0;
    v5 = *(a3 + 6);
    *(a2 + 56) = 0;
    *(a2 + 48) = v5;
    *(a2 + 80) = 0;
    if (*(a3 + 80) == 1)
    {
      v6 = *(a3 + 56);
      *(a2 + 72) = *(a3 + 9);
      *(a2 + 56) = v6;
      a3[4] = 0uLL;
      *(a3 + 7) = 0;
      *(a2 + 80) = 1;
    }

    *(a2 + 88) = 0;
    *(a2 + 112) = 0;
    if (*(a3 + 112) == 1)
    {
      v7 = *(a3 + 88);
      *(a2 + 104) = *(a3 + 13);
      *(a2 + 88) = v7;
      a3[6] = 0uLL;
      *(a3 + 11) = 0;
      *(a2 + 112) = 1;
    }

    result = *(a3 + 120);
    v9 = *(a3 + 34);
    *(a2 + 144) = 0;
    *(a2 + 136) = v9;
    *(a2 + 120) = result;
    *(a2 + 168) = 0;
    if (*(a3 + 168) == 1)
    {
      result = a3[9];
      *(a2 + 160) = *(a3 + 20);
      *(a2 + 144) = result;
      *(a3 + 152) = 0uLL;
      *(a3 + 18) = 0;
      *(a2 + 168) = 1;
    }

    *(a2 + 176) = 1;
  }

  *(a2 + 184) = 0;
  *(a2 + 208) = 0;
  if (*(a3 + 208) == 1)
  {
    result = *(a3 + 184);
    *(a2 + 200) = *(a3 + 25);
    *(a2 + 184) = result;
    a3[12] = 0uLL;
    *(a3 + 23) = 0;
    *(a2 + 208) = 1;
  }

  *(a2 + 216) = 0;
  *(a2 + 240) = 0;
  if (*(a3 + 240) == 1)
  {
    result = *(a3 + 216);
    *(a2 + 232) = *(a3 + 29);
    *(a2 + 216) = result;
    a3[14] = 0uLL;
    *(a3 + 27) = 0;
    *(a2 + 240) = 1;
  }

  *(a2 + 248) = 0;
  *(a2 + 272) = 0;
  if (*(a3 + 272) == 1)
  {
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a2 + 264) = 0;
    result = *(a3 + 248);
    *(a2 + 248) = result;
    *(a2 + 264) = *(a3 + 33);
    *(a3 + 248) = 0uLL;
    *(a3 + 33) = 0;
    *(a2 + 272) = 1;
  }

  return result;
}

void sub_1007D7774(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 272) == 1)
  {
    v3 = (a2 + 248);
    sub_10019029C(&v3);
  }

  if (*(a2 + 240) == 1 && *(a2 + 239) < 0)
  {
    operator delete(*(a2 + 216));
  }

  if (*(a2 + 208) == 1 && *(a2 + 207) < 0)
  {
    operator delete(*(a2 + 184));
  }

  if (*(a2 + 176) == 1)
  {
    if (*(a2 + 168) == 1 && *(a2 + 167) < 0)
    {
      operator delete(*(a2 + 144));
    }

    if (*(a2 + 112) == 1 && *(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }
  }
}

uint64_t sub_1007D7870(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007D78A8(a1);
  }

  return a1;
}

void sub_1007D78A8(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 280;
      sub_1007D7774(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_1007D78FC(uint64_t a1)
{
  sub_1007D7934(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007D7934(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 280;
    sub_1007D7774(v5, v4 - 280);
  }
}

uint64_t sub_1007D797C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xEA0EA0EA0EA0EALL)
  {
    sub_1000CE3D4();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 3);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 3) >= 0x75075075075075)
  {
    v6 = 0xEA0EA0EA0EA0EALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100191448(a1, v6);
  }

  v13 = 0;
  v14 = 280 * v2;
  sub_1007D75B4(a1, 280 * v2, a2);
  v15 = 280 * v2 + 280;
  v7 = a1[1];
  v8 = 280 * v2 + *a1 - v7;
  sub_1007D74E8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1007D78FC(&v13);
  return v12;
}

void sub_1007D7AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007D78FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007D7AC8(uint64_t a1)
{
  if (*(a1 + 272) == 1)
  {
    v3 = (a1 + 248);
    sub_10019029C(&v3);
  }

  if (*(a1 + 240) == 1 && *(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 208) == 1 && *(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  return sub_100191184(a1);
}

void *sub_1007D7B4C(void *result)
{
  *result = off_101E7FF00;
  result[1] = 0;
  return result;
}

void sub_1007D7B6C(void ***a1)
{
  *a1 = off_101E7FF00;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007D7BC4(void ***a1)
{
  *a1 = off_101E7FF00;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

void *sub_1007D7C30(void *a1, uint64_t a2)
{
  *a1 = off_101E7FF00;
  a1[1] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_1007D7CDC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007D7D38(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_29;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

      if (!PB::Reader::skip(this, v9 >> 3, v9 & 7, 0))
      {
        v21 = 0;
        return v21 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_29:
  v21 = v4 ^ 1;
  return v21 & 1;
}

uint64_t sub_1007D7EF8(uint64_t result, PB::Writer *this)
{
  v2 = *(result + 8);
  if (v2)
  {
    return PB::Writer::write(this, v2, 1u);
  }

  return result;
}

void *sub_1007D7F14(void *result)
{
  result[1] = 0;
  result[2] = 0;
  *result = off_101E7FF50;
  return result;
}

void sub_1007D7F38(uint64_t a1)
{
  *a1 = off_101E7FF50;
  v4 = *(a1 + 16);
  v2 = (a1 + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  sub_100140928((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_1007D7FA8(uint64_t a1)
{
  sub_1007D7F38(a1);

  operator delete();
}

void *sub_1007D7FE0(void *a1, uint64_t a2)
{
  *a1 = off_101E7FF50;
  a1[1] = 0;
  a1[2] = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  return a1;
}

uint64_t sub_1007D8100(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007D8174(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v16 = v3 >= v2;
        v17 = v3 - v2;
        if (!v16)
        {
          v17 = 0;
        }

        v18 = (v6 + v2);
        v19 = v2 + 1;
        while (1)
        {
          if (!v17)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_31;
          }

          v20 = *v18;
          *(this + 1) = v19;
          v9 |= (v20 & 0x7F) << v14;
          if ((v20 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v17;
          ++v18;
          ++v19;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v9 = 0;
        }
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

      if (!PB::Reader::skip(this, v21, v9 & 7, 0))
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_31:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sub_1007D839C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 16))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_1007D8400(uint64_t result)
{
  *result = off_101E7FFA0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1007D8424(void ***a1)
{
  *a1 = off_101E7FFA0;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007D847C(void ***a1)
{
  *a1 = off_101E7FFA0;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1007D84E8(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 16));
    v6 = *(a1 + 24);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 20));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007D857C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_55;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(a1 + 24) |= 1u;
        v28 = *(this + 1);
        v27 = *(this + 2);
        v29 = *this;
        if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
        {
          v36 = 0;
          v37 = 0;
          v32 = 0;
          v17 = v27 >= v28;
          v38 = v27 - v28;
          if (!v17)
          {
            v38 = 0;
          }

          v39 = (v29 + v28);
          v40 = v28 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v32) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v41 = *v39;
            *(this + 1) = v40;
            v32 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            --v38;
            ++v39;
            ++v40;
            v14 = v37++ > 8;
            if (v14)
            {
LABEL_46:
              LODWORD(v32) = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v32) = 0;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          while (1)
          {
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
            if (v14)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_50:
        *(a1 + 16) = v32;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          v26 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*this + v23);
          *(this + 1) = v24;
          v26 = v25 != 0;
        }

        *(a1 + 20) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v43 = 0;
          return v43 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1007D8884(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 20), 2u);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v6, 3u);
  }

  return result;
}

uint64_t LazuliProvisioningWebHelper::LazuliProvisioningWebHelper(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  ctu::OsLogContext::OsLogContext(&v22, kCtLoggingSystemName, "lazuli.prov.web");
  sub_1001303E4((a1 + 8), v4, &v22);
  ctu::OsLogContext::~OsLogContext(&v22);
  v23[0] = off_101E2B528;
  v23[1] = sub_1007D8D94;
  v23[3] = v23;
  sub_1007D8DC0((a1 + 48), a2 + 8, v23);
  sub_1000A8744(v23);
  *a1 = &off_101E7FFF0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 100) = *a2;
  v5 = *(a2 + 8);
  *(a1 + 104) = v5;
  v6 = *(a2 + 16);
  *(a1 + 112) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 104);
  }

  ServiceMap = Registry::getServiceMap(v5);
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
  v22.var0 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v22);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  std::mutex::unlock(v8);
  *(a1 + 120) = v15;
  *(a1 + 128) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  v16 = *(a2 + 48);
  if (*(v16 + 23) < 0)
  {
    sub_100005F2C((a1 + 136), *v16, *(v16 + 1));
  }

  else
  {
    v17 = *v16;
    *(a1 + 152) = *(v16 + 2);
    *(a1 + 136) = v17;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  sub_1000DF684((a1 + 184), 0, 0);
  *(a1 + 248) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 328) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 289) = 0u;
  *(a1 + 336) = *(a2 + 32);
  v18 = *(a2 + 40);
  *(a1 + 344) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10006F264((a1 + 352), (a2 + 56));
  *(a1 + 384) = *(a2 + 88);
  sub_10006F264((a1 + 392), (a2 + 136));
  v19 = *(a2 + 168);
  *(a1 + 424) = v19;
  v20 = *(a2 + 176);
  *(a1 + 432) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    v19 = *(a1 + 424);
  }

  if (!v19)
  {
    __TUAssertTrigger("fFactoryInterface");
  }

  return a1;
}

void sub_1007D8BC0(_Unwind_Exception *a1)
{
  v6 = *(v1 + 432);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*(v1 + 416) == 1 && *(v1 + 415) < 0)
  {
    operator delete(*(v1 + 392));
  }

  if (*(v1 + 376) == 1 && *(v1 + 375) < 0)
  {
    operator delete(*(v1 + 352));
  }

  v7 = *(v1 + 344);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (*(v1 + 328) == 1 && *(v1 + 327) < 0)
  {
    operator delete(*(v1 + 304));
  }

  v8 = v2 - 24;
  if (*(v1 + 303) < 0)
  {
    operator delete(*(v1 + 280));
  }

  if (*(v1 + 279) < 0)
  {
    operator delete(*(v1 + 256));
  }

  sub_100416C34(v8);
  v9 = *(v1 + 216);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1000DD0AC((v3 + 3), *(v1 + 192));
  if (*(v1 + 183) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 159) < 0)
  {
    operator delete(*(v1 + 136));
  }

  v10 = *(v1 + 128);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(v1 + 112);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(v1 + 80);
  *(v1 + 80) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*v4);
  }

  v13 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 40));
  sub_1000C0544((v1 + 8));
  _Unwind_Resume(a1);
}

const char *sub_1007D8D94(int a1)
{
  v1 = "lazuli.prov.mdl";
  if (a1 == 2)
  {
    v1 = "lazuli.prov.web.2";
  }

  if (a1 == 1)
  {
    return "lazuli.prov.web.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_1007D8DC0(capabilities::ct *a1, uint64_t a2, uint64_t a3)
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

void sub_1007D8F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

void LazuliProvisioningWebHelper::~LazuliProvisioningWebHelper(LazuliProvisioningWebHelper *this)
{
  *this = &off_101E7FFF0;
  v2 = *(this + 54);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(this + 416) == 1 && *(this + 415) < 0)
  {
    operator delete(*(this + 49));
  }

  if (*(this + 376) == 1 && *(this + 375) < 0)
  {
    operator delete(*(this + 44));
  }

  v3 = *(this + 43);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(this + 328) == 1 && *(this + 327) < 0)
  {
    operator delete(*(this + 38));
  }

  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
  }

  if (*(this + 279) < 0)
  {
    operator delete(*(this + 32));
  }

  sub_100416C34(this + 224);
  v4 = *(this + 27);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1000DD0AC(this + 184, *(this + 24));
  if (*(this + 183) < 0)
  {
    operator delete(*(this + 20));
  }

  if (*(this + 159) < 0)
  {
    operator delete(*(this + 17));
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

  v7 = *(this + 10);
  *(this + 10) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  v8 = *(this + 6);
  *(this + 6) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

void *LazuliProvisioningWebHelper::getCurrentConfig(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 42);
      if (v5)
      {
        CurrentConfig = LazuliProvisioningServerWrapper::getCurrentConfig(v5);
        sub_100004A34(v4);
        return CurrentConfig;
      }

      sub_100004A34(v4);
    }
  }

  return GetDefaultLazuliProvisioningInitializer();
}

uint64_t LazuliProvisioningWebHelper::isPushEnabled(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 42);
  if (v5)
  {
    isPushEnabled = LazuliProvisioningServerWrapper::isPushEnabled(v5);
  }

  else
  {
    isPushEnabled = 0;
  }

  sub_100004A34(v4);
  return isPushEnabled;
}

void LazuliProvisioningWebHelper::getHeaders(uint64_t **__return_ptr a1@<X8>, LazuliProvisioningWebHelper *this@<X0>, const unint64_t *a3@<X1>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(this);
  v7 = CurrentConfig;
  size = HIBYTE(CurrentConfig[2].__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = CurrentConfig[2].__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v9 = *a3;
    if ((*a3 & 0x20) != 0)
    {
      sub_10000501C(&__str, "imei");
      __p.__r_.__value_.__r.__words[0] = &__str;
      v10 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
      std::string::operator=((v10 + 56), v7 + 1);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v9 = *a3;
    }

    if ((v9 & 0x40) != 0)
    {
      sub_10000501C(&__str, "imsi");
      __p.__r_.__value_.__r.__words[0] = &__str;
      v11 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
      std::string::operator=((v11 + 56), v7);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v9 = *a3;
    }

    if ((v9 & 0x200000) != 0)
    {
      sub_10000501C(&__str, "client_pushkey_upload");
      __p.__r_.__value_.__r.__words[0] = &__str;
      v12 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
      if (*(v12 + 79) < 0)
      {
        *(v12 + 64) = 13;
        v13 = *(v12 + 56);
      }

      else
      {
        v13 = (v12 + 56);
        *(v12 + 79) = 13;
      }

      strcpy(v13, "clientpushkey");
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v9 = *a3;
    }

    if (v9)
    {
      if ((*(this + 388) & 1) == 0)
      {
        sub_10000501C(&__str, "vers");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v18 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        if (*(v18 + 79) < 0)
        {
          *(v18 + 64) = 1;
          v19 = *(v18 + 56);
        }

        else
        {
          v19 = (v18 + 56);
          *(v18 + 79) = 1;
        }

        *v19 = 48;
LABEL_31:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_33;
      }

      std::to_string(&__str, *(this + 96));
      sub_10000501C(&__p, "vers");
      v137.__r_.__value_.__r.__words[0] = &__p;
      v16 = sub_100416DA4(a1, &__p, &unk_101802C98, &v137);
      v17 = v16;
      if (*(v16 + 79) < 0)
      {
        operator delete(*(v16 + 56));
      }

      *(v17 + 56) = __str;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        goto LABEL_31;
      }
    }

LABEL_33:
    v20 = *a3;
    if ((*a3 & 0x200) != 0)
    {
      if (*(this + 376) == 1)
      {
        if (*(this + 375) < 0)
        {
          sub_100005F2C(&__str, *(this + 44), *(this + 45));
        }

        else
        {
          __str = *(this + 352);
        }
      }

      else
      {
        sub_10000501C(&__str, "");
      }

      sub_10000501C(&__p, "token");
      v137.__r_.__value_.__r.__words[0] = &__p;
      v21 = sub_100416DA4(a1, &__p, &unk_101802C98, &v137);
      std::string::operator=((v21 + 56), &__str);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v20 = *a3;
    }

    if ((v20 & 2) != 0)
    {
      sub_10000501C(&__str, "provisioning_version");
      __p.__r_.__value_.__r.__words[0] = &__str;
      v22 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
      if (*(v22 + 79) < 0)
      {
        *(v22 + 64) = 3;
        v23 = *(v22 + 56);
      }

      else
      {
        v23 = (v22 + 56);
        *(v22 + 79) = 3;
      }

      *v23 = 3157557;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v20 = *a3;
    }

    if ((v20 & 4) != 0)
    {
      sub_10000501C(&__str, "terminal_vendor");
      __p.__r_.__value_.__r.__words[0] = &__str;
      v24 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
      if (*(v24 + 79) < 0)
      {
        *(v24 + 64) = 4;
        v25 = *(v24 + 56);
      }

      else
      {
        v25 = (v24 + 56);
        *(v24 + 79) = 4;
      }

      strcpy(v25, "Appl");
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v20 = *a3;
    }

    if ((v20 & 8) != 0)
    {
      v26 = *(this + 14);
      v131[0] = *(this + 13);
      v131[1] = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1007DACD0(v131, &__str);
      sub_10000501C(&__p, "terminal_model");
      v137.__r_.__value_.__r.__words[0] = &__p;
      v27 = sub_100416DA4(a1, &__p, &unk_101802C98, &v137);
      v28 = v27;
      if (*(v27 + 79) < 0)
      {
        operator delete(*(v27 + 56));
      }

      *(v28 + 56) = __str;
      *(&__str.__r_.__value_.__s + 23) = 0;
      __str.__r_.__value_.__s.__data_[0] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }
      }

      if (v26)
      {
        sub_100004A34(v26);
      }

      v20 = *a3;
    }

    if ((v20 & 0x100000) != 0)
    {
      if (*(this + 79) < 0)
      {
        sub_100005F2C(&__dst, *(this + 7), *(this + 8));
      }

      else
      {
        __dst = *(this + 56);
      }

      sub_1007DAE84(&__dst, &__str);
      sub_10000501C(&__p, "participant_key_signed_nonce");
      v137.__r_.__value_.__r.__words[0] = &__p;
      v29 = sub_100416DA4(a1, &__p, &unk_101802C98, &v137);
      v30 = v29;
      if (*(v29 + 79) < 0)
      {
        operator delete(*(v29 + 56));
      }

      *(v30 + 56) = __str;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v20 = *a3;
    }

    if ((v20 & 0x10) == 0)
    {
      goto LABEL_195;
    }

    ServiceMap = Registry::getServiceMap(*(this + 13));
    v32 = ServiceMap;
    if ((v33 & 0x8000000000000000) != 0)
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
    __str.__r_.__value_.__r.__words[0] = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, &__str);
    if (!v37)
    {
      std::mutex::unlock(v32);
      goto LABEL_195;
    }

    v39 = v37[3];
    v38 = v37[4];
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v32);
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v38);
      if (!v39)
      {
LABEL_194:
        sub_100004A34(v38);
        goto LABEL_195;
      }
    }

    else
    {
      std::mutex::unlock(v32);
      if (!v39)
      {
        goto LABEL_195;
      }
    }

    memset(&__str, 0, sizeof(__str));
    (*(*v39 + 224))(&__str, v39);
    v40 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = __str.__r_.__value_.__l.__size_;
    }

    if (!v40)
    {
      v47 = (*(**(this + 6) + 16))(*(this + 6), *(this + 25));
      if (os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
      {
        v48 = (*(*this + 72))(this);
        sub_10177F300(v48, &v137);
      }

LABEL_191:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v38)
      {
        goto LABEL_194;
      }

LABEL_195:
      v83 = *a3;
      if ((*a3 & 0x100) != 0)
      {
        sub_10000501C(&__str, "app");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v84 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        sub_1000167D4((v84 + 56), "ap2001&app=ap2002&app=urn%3Aoma%3Amo%3Aext-3gpp-ims%3A1.0&app=urn%3Aoma%3Amo%3Aext-3gpp-nas-config%3A1.0", 0x68uLL);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v83 = *a3;
      }

      if ((v83 & 0x400) != 0)
      {
        sub_10000501C(&__str, "SMS_port");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v85 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        if (*(v85 + 79) < 0)
        {
          *(v85 + 64) = 5;
          v86 = *(v85 + 56);
        }

        else
        {
          v86 = (v85 + 56);
          *(v85 + 79) = 5;
        }

        strcpy(v86, "37273");
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v83 = *a3;
      }

      if ((v83 & 0x80) != 0)
      {
        sub_100A978EC(&v7[3], &__str);
        sub_10000501C(&__p, "msisdn");
        v129.__r_.__value_.__r.__words[0] = &__p;
        v87 = sub_100416DA4(a1, &__p, &unk_101802C98, &v129);
        v88 = v87;
        if (*(v87 + 79) < 0)
        {
          operator delete(*(v87 + 56));
        }

        *(v88 + 56) = __str;
        *(&__str.__r_.__value_.__s + 23) = 0;
        __str.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        v83 = *a3;
      }

      if ((v83 & 0x40000) != 0)
      {
        sub_10000501C(&__str, "GID1");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v89 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        std::string::operator=((v89 + 56), v7 + 5);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v83 = *a3;
      }

      if ((v83 & 0x80000) != 0)
      {
        sub_10000501C(&__str, "GID2");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v90 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        std::string::operator=((v90 + 56), v7 + 6);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v83 = *a3;
      }

      if ((v83 & 0x800) == 0)
      {
        goto LABEL_233;
      }

      if (*(this + 388))
      {
        std::to_string(&__str, *(this + 96));
        sub_10000501C(&__p, "rcs_state");
        v129.__r_.__value_.__r.__words[0] = &__p;
        v91 = sub_100416DA4(a1, &__p, &unk_101802C98, &v129);
        v92 = v91;
        if (*(v91 + 79) < 0)
        {
          operator delete(*(v91 + 56));
        }

        *(v92 + 56) = __str;
        *(&__str.__r_.__value_.__s + 23) = 0;
        __str.__r_.__value_.__s.__data_[0] = 0;
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_233;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
      }

      else
      {
        sub_10000501C(&__str, "rcs_state");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v93 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        if (*(v93 + 79) < 0)
        {
          *(v93 + 64) = 1;
          v94 = *(v93 + 56);
        }

        else
        {
          v94 = (v93 + 56);
          *(v93 + 79) = 1;
        }

        *v94 = 48;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_233:
      v95 = *a3;
      if ((*a3 & 0x1000) != 0)
      {
        sub_10000501C(&__str, "client_vendor");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v96 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        if (*(v96 + 79) < 0)
        {
          *(v96 + 64) = 4;
          v97 = *(v96 + 56);
        }

        else
        {
          v97 = (v96 + 56);
          *(v96 + 79) = 4;
        }

        strcpy(v97, "Appl");
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v95 = *a3;
      }

      if ((v95 & 0x2000) != 0)
      {
        v98 = v7[8].__r_.__value_.__s.__data_[4];
        isPushEnabled = LazuliProvisioningWebHelper::isPushEnabled(this);
        v100 = "2.4";
        if (v98)
        {
          v100 = "3.0";
        }

        if (isPushEnabled)
        {
          v101 = "3.1";
        }

        else
        {
          v101 = v100;
        }

        sub_10000501C(&__str, "client_version");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v102 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        sub_100016890((v102 + 56), v101);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v95 = *a3;
      }

      if ((v95 & 0x4000) != 0)
      {
        v103 = v7[8].__r_.__value_.__s.__data_[4];
        v104 = LazuliProvisioningWebHelper::isPushEnabled(this);
        v105 = "UP_2.4";
        if (v103)
        {
          v105 = "UP_3.0";
        }

        if (v104)
        {
          v106 = "UP_3.1";
        }

        else
        {
          v106 = v105;
        }

        sub_10000501C(&__str, "rcs_profile");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v107 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        sub_100016890((v107 + 56), v106);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v95 = *a3;
      }

      if ((v95 & 0x8000) != 0)
      {
        sub_10000501C(&__str, "client_authenticity_support");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v108 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        if (*(v108 + 79) < 0)
        {
          *(v108 + 64) = 15;
          v109 = *(v108 + 56);
        }

        else
        {
          v109 = (v108 + 56);
          *(v108 + 79) = 15;
        }

        strcpy(v109, "apple-appattest");
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        (*(**(this + 53) + 72))(&__p);
        if ((*(*__p.__r_.__value_.__l.__data_ + 24))(__p.__r_.__value_.__r.__words[0]))
        {
          sub_10000501C(&__str, "client_certificate_upload");
          v129.__r_.__value_.__r.__words[0] = &__str;
          v110 = sub_100416DA4(a1, &__str, &unk_101802C98, &v129);
          if (*(v110 + 79) < 0)
          {
            *(v110 + 64) = 16;
            v111 = *(v110 + 56);
          }

          else
          {
            v111 = (v110 + 56);
            *(v110 + 79) = 16;
          }

          strcpy(v111, "applecertificate");
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          sub_100004A34(__p.__r_.__value_.__l.__size_);
        }

        v95 = *a3;
      }

      if ((v95 & 0x10000) != 0)
      {
        sub_10000501C(&__str, "config_client_vendor");
        __p.__r_.__value_.__r.__words[0] = &__str;
        v112 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
        if (*(v112 + 79) < 0)
        {
          *(v112 + 64) = 4;
          v113 = *(v112 + 56);
        }

        else
        {
          v113 = (v112 + 56);
          *(v112 + 79) = 4;
        }

        strcpy(v113, "Appl");
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v95 = *a3;
      }

      if ((v95 & 0x20000) != 0)
      {
        v114 = *(this + 14);
        v125[0] = *(this + 13);
        v125[1] = v114;
        if (v114)
        {
          atomic_fetch_add_explicit((v114 + 8), 1uLL, memory_order_relaxed);
        }

        sub_1007DACD0(v125, &__str);
        sub_10000501C(&__p, "config_client_version");
        v129.__r_.__value_.__r.__words[0] = &__p;
        v115 = sub_100416DA4(a1, &__p, &unk_101802C98, &v129);
        v116 = v115;
        if (*(v115 + 79) < 0)
        {
          operator delete(*(v115 + 56));
        }

        *(v116 + 56) = __str;
        *(&__str.__r_.__value_.__s + 23) = 0;
        __str.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        if (v114)
        {
          sub_100004A34(v114);
        }
      }

      v117 = *(this + 43);
      if (v117)
      {
        v118 = std::__shared_weak_count::lock(v117);
        if (v118)
        {
          v119 = v118;
          if (*(this + 42) && *(this + 416) == 1)
          {
            if (*(this + 415) < 0)
            {
              sub_100005F2C(&v124, *(this + 49), *(this + 50));
            }

            else
            {
              v124 = *(this + 392);
            }

            sub_1007DAE84(&v124, &__str);
            sub_10000501C(&__p, "participant_public_key");
            v129.__r_.__value_.__r.__words[0] = &__p;
            v120 = sub_100416DA4(a1, &__p, &unk_101802C98, &v129);
            v121 = v120;
            if (*(v120 + 79) < 0)
            {
              operator delete(*(v120 + 56));
            }

            *(v121 + 56) = __str;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v124.__r_.__value_.__l.__data_);
            }

            sub_10000501C(&__str, "home_kds");
            __p.__r_.__value_.__r.__words[0] = &__str;
            v122 = sub_100416DA4(a1, &__str, &unk_101802C98, &__p);
            if (*(v122 + 79) < 0)
            {
              *(v122 + 64) = 1;
              v123 = *(v122 + 56);
            }

            else
            {
              v123 = (v122 + 56);
              *(v122 + 79) = 1;
            }

            *v123 = 49;
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          sub_100004A34(v119);
        }
      }

      return;
    }

    memset(&__p, 0, sizeof(__p));
    sub_10000501C(&__p, "");
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v42 = __str.__r_.__value_.__l.__size_;
    }

    if (v42 >= 1)
    {
      v43 = p_str + v42;
      v44 = v42;
      v45 = p_str;
      do
      {
        v46 = memchr(v45, 46, v44);
        if (!v46)
        {
          break;
        }

        if (*v46 == 46)
        {
          if (v46 == v43 || v46 - p_str == -1)
          {
            break;
          }

          memset(&v137, 0, sizeof(v137));
          v49 = p_str;
          do
          {
            v50 = memchr(v49, 46, v42);
            if (!v50)
            {
              break;
            }

            if (*v50 == 46)
            {
              goto LABEL_114;
            }

            v49 = (v50 + 1);
            v42 = v43 - v49;
          }

          while (v43 - v49 > 0);
          v50 = v43;
LABEL_114:
          if (v50 == v43)
          {
            v51 = -1;
          }

          else
          {
            v51 = v50 - p_str;
          }

          v52 = std::string::basic_string(&v137, &__str, 0, v51, &v129);
          v53 = std::stoi(v52, 0, 10);
          memset(&v129, 0, sizeof(v129));
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v54 = &__str;
          }

          else
          {
            v54 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v55 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v55 = __str.__r_.__value_.__l.__size_;
          }

          v56 = v54 + v55;
          if (v55 >= 1)
          {
            v57 = v54;
            do
            {
              v58 = memchr(v57, 46, v55);
              if (!v58)
              {
                break;
              }

              if (*v58 == 46)
              {
                goto LABEL_129;
              }

              v57 = (v58 + 1);
              v55 = v56 - v57;
            }

            while (v56 - v57 > 0);
          }

          v58 = v56;
LABEL_129:
          if (v58 == v56)
          {
            v59 = 0;
          }

          else
          {
            v59 = v58 - v54 + 1;
          }

          std::string::basic_string(&v129, &__str, v59, 0xFFFFFFFFFFFFFFFFLL, &v128);
          v60 = std::stoi(&v129, 0, 10);
          std::to_string(&v127, v53);
          v61 = std::string::append(&v127, ".", 1uLL);
          v62 = *&v61->__r_.__value_.__l.__data_;
          v128.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
          *&v128.__r_.__value_.__l.__data_ = v62;
          v61->__r_.__value_.__l.__size_ = 0;
          v61->__r_.__value_.__r.__words[2] = 0;
          v61->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v126, v60);
          if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v63 = &v126;
          }

          else
          {
            v63 = v126.__r_.__value_.__r.__words[0];
          }

          if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v64 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v64 = v126.__r_.__value_.__l.__size_;
          }

          v65 = std::string::append(&v128, v63, v64);
          v66 = v65->__r_.__value_.__r.__words[0];
          *v134 = v65->__r_.__value_.__l.__size_;
          *&v134[7] = *(&v65->__r_.__value_.__r.__words[1] + 7);
          v67 = HIBYTE(v65->__r_.__value_.__r.__words[2]);
          v65->__r_.__value_.__l.__size_ = 0;
          v65->__r_.__value_.__r.__words[2] = 0;
          v65->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p.__r_.__value_.__r.__words[0] = v66;
          __p.__r_.__value_.__l.__size_ = *v134;
          *(&__p.__r_.__value_.__r.__words[1] + 7) = *&v134[7];
          *(&__p.__r_.__value_.__s + 23) = v67;
          if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v126.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v128.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v129.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v137.__r_.__value_.__l.__data_);
          }

          goto LABEL_160;
        }

        v45 = (v46 + 1);
        v44 = v43 - v45;
      }

      while (v43 - v45 >= 1);
    }

    memset(&v137, 0, sizeof(v137));
    v68 = &v137;
    sub_1000677C4(&v137, v42 + 2);
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v68 = v137.__r_.__value_.__r.__words[0];
    }

    if (v42)
    {
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v69 = &__str;
      }

      else
      {
        v69 = __str.__r_.__value_.__r.__words[0];
      }

      memmove(v68, v69, v42);
    }

    strcpy(v68 + v42, ".0");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v137;
LABEL_160:
    if ((*(*v39 + 64))(v39))
    {
      memset(&v137, 0, sizeof(v137));
      (*(*v39 + 216))(&v137, v39);
      memset(&v129, 0, sizeof(v129));
      std::string::basic_string(&v129, &v137, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v128);
      v70 = std::stoi(&v129, 0, 10);
      memset(&v128, 0, sizeof(v128));
      sub_10000501C(&v128, "0");
      if (v70 >= 1)
      {
        std::to_string(&v127, v70);
        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }

        v128 = v127;
      }

      std::operator+<char>();
      v71 = std::string::append(&v126, "-", 1uLL);
      v72 = *&v71->__r_.__value_.__l.__data_;
      v127.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
      *&v127.__r_.__value_.__l.__data_ = v72;
      v71->__r_.__value_.__l.__size_ = 0;
      v71->__r_.__value_.__r.__words[2] = 0;
      v71->__r_.__value_.__r.__words[0] = 0;
      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v128;
      }

      else
      {
        v73 = v128.__r_.__value_.__r.__words[0];
      }

      if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v74 = HIBYTE(v128.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v74 = v128.__r_.__value_.__l.__size_;
      }

      v75 = std::string::append(&v127, v73, v74);
      v76 = v75->__r_.__value_.__r.__words[0];
      v136[0] = v75->__r_.__value_.__l.__size_;
      *(v136 + 7) = *(&v75->__r_.__value_.__r.__words[1] + 7);
      v77 = HIBYTE(v75->__r_.__value_.__r.__words[2]);
      v75->__r_.__value_.__l.__size_ = 0;
      v75->__r_.__value_.__r.__words[2] = 0;
      v75->__r_.__value_.__r.__words[0] = 0;
      sub_10000501C(v134, "terminal_sw_version");
      v133 = v134;
      v78 = sub_100416DA4(a1, v134, &unk_101802C98, &v133);
      v79 = v78;
      if (*(v78 + 79) < 0)
      {
        operator delete(*(v78 + 56));
      }

      v80 = v136[0];
      *(v79 + 56) = v76;
      *(v79 + 64) = v80;
      *(v79 + 71) = *(v136 + 7);
      *(v79 + 79) = v77;
      if (v135 < 0)
      {
        operator delete(*v134);
      }

      if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v127.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v126.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v128.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_187;
      }
    }

    else
    {
      (*(*v39 + 16))(v39);
      std::operator+<char>();
      sub_10000501C(&v129, "terminal_sw_version");
      v128.__r_.__value_.__r.__words[0] = &v129;
      v81 = sub_100416DA4(a1, &v129, &unk_101802C98, &v128);
      v82 = v81;
      if (*(v81 + 79) < 0)
      {
        operator delete(*(v81 + 56));
      }

      *(v82 + 56) = v137;
      *(&v137.__r_.__value_.__s + 23) = 0;
      v137.__r_.__value_.__s.__data_[0] = 0;
      if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_189;
      }
    }

    operator delete(v129.__r_.__value_.__l.__data_);
LABEL_187:
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v137.__r_.__value_.__l.__data_);
    }

LABEL_189:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_191;
  }

  v14 = (*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
  {
    v15 = (*(*this + 72))(this);
    sub_10177F350(v15, &__str);
  }
}