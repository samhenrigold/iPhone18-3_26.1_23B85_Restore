void sub_1007ECA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B644(va);

  _Unwind_Resume(a1);
}

BOOL sub_1007ECA90(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a1[5];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Get Error Start SessionResponse", v10, 2u);
    }

    a1[15] = a2;
    sub_1007ECBA0(a1, a2);
    v7 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v7 setSessionID:a1[25]];
    v8 = [v5 encodeEndSessionRequest:v7];
    sub_1007EC9B4(a1, v8);
  }

  return a2 != 0;
}

void sub_1007ECBA0(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 7)
  {
    v2 = 0;
  }

  else
  {
    v2 = 8 - a2;
  }

  sub_1007ECF24(a1, v2);
}

uint64_t sub_1007ECBB8(void *a1, void *a2, void *a3)
{
  v19 = a2;
  v20 = a3;
  v5 = [v19 items];
  v6 = [v5 count];

  if (v6 >= 2)
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177FC7C();
    }

    (*(a1[23] + 16))();
    sub_1007ECF24(a1, 9);
    v7 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v7 setSessionID:a1[25]];
    v8 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v19 items];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = *v22;
      do
      {
        v12 = 0;
        do
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v21 + 1) + 8 * v12);
          v14 = objc_alloc_init(ObjcSimTransferStatus);
          v15 = [v13 iccid];
          [(ObjcSimTransferStatus *)v14 setIccid:v15];

          [(ObjcSimTransferStatus *)v14 setStatus:11];
          [v8 addObject:v14];

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    a1[16] = 11;
    [(ObjcSimTransferEndSessionRequest *)v7 setStatus:v8];
    v16 = [v20 encodeEndSessionRequest:v7];
    sub_1007EC9B4(a1, v16);

LABEL_17:
    v17 = 1;
    goto LABEL_18;
  }

  if (!v6)
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177FC48();
    }

    a1[16] = 11;
    sub_1007ECF24(a1, 8);
    v7 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v7 setSessionID:a1[25]];
    v8 = [v20 encodeEndSessionRequest:v7];
    sub_1007EC9B4(a1, v8);
    goto LABEL_17;
  }

  v17 = 0;
LABEL_18:

  return v17;
}

void sub_1007ECF24(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v19 = 0;
  (***(a1 + 56))(&v14);
  Registry::getNotificationSenderFactory(&v16, v14);
  v4 = v16;
  (***(a1 + 56))(&v10);
  Registry::getTimerService(&v12, v10);
  (*(*v4 + 168))(&v18, v4, &v12, a1 + 24);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v18)
  {
    v5 = objc_opt_new();
    v6 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v5 setObject:v6 forKey:@"kCrossTransferEndpoint"];

    v7 = [NSNumber numberWithInteger:a2];
    [v5 setObject:v7 forKey:@"kCrossTransferSessionError"];

    v8 = v18;
    v9 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    (*(*v8 + 40))(v8, &v9);
    sub_10001021C(&v9);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FCB0();
  }

  if (v19)
  {
    sub_100004A34(v19);
  }
}

void sub_1007ED140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);

  v6 = *(v4 - 40);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007ED1D0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[7];
  v8 = [v5 mcc];
  sub_10000501C(buf, [v8 UTF8String]);
  v9 = [v5 mnc];
  v10 = v9;
  sub_10000501C(v46, [v9 UTF8String]);
  v11 = [v5 gid1];
  v12 = v11;
  sub_10000501C(v44, [v11 UTF8String]);
  v13 = [v5 gid2];
  v14 = v13;
  sub_10000501C(v42, [v13 UTF8String]);
  v15 = [v5 iccid];
  v16 = v15;
  sub_10000501C(__p, [v15 UTF8String]);
  v17 = (*(*v7 + 256))(v7, buf, v46, v44, v42, __p);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  if (v47 < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(*buf);
  }

  if ((v17 & 1) == 0)
  {
    v18 = a1[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v39 = [v5 mcc];
      v25 = v39;
      v37 = [v39 UTF8String];
      v38 = [v5 mnc];
      v26 = v38;
      v36 = [v38 UTF8String];
      v27 = [v5 gid1];
      v28 = v27;
      v29 = [v27 UTF8String];
      v30 = [v5 gid2];
      v31 = v30;
      v32 = [v30 UTF8String];
      v33 = [v5 iccid];
      v34 = v33;
      v35 = [v33 UTF8String];
      *buf = 136316162;
      *&buf[4] = v37;
      v50 = 2080;
      v51 = v36;
      v52 = 2080;
      v53 = v29;
      v54 = 2080;
      v55 = v32;
      v56 = 2080;
      v57 = v35;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "(mcc:%s, mnc:%s, gid1:%s, gid2:%s, iccid:%s) does not support cross platform SIM transfer on target", buf, 0x34u);
    }

    a1[16] = 11;
    sub_1007ECF24(a1, 13);
    v19 = objc_alloc_init(ObjcSimTransferStatus);
    v20 = [v5 iccid];
    [(ObjcSimTransferStatus *)v19 setIccid:v20];

    [(ObjcSimTransferStatus *)v19 setStatus:11];
    v21 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v21 setSessionID:a1[25]];
    v48 = v19;
    v22 = [NSArray arrayWithObjects:&v48 count:1];
    [(ObjcSimTransferEndSessionRequest *)v21 setStatus:v22];

    v23 = [v6 encodeEndSessionRequest:v21];
    sub_1007EC9B4(a1, v23);
  }

  return v17 ^ 1u;
}

void sub_1007ED730(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 40);
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

    *buf = 136315138;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s is not eligible for cross platform transfer", buf, 0xCu);
  }

  v10 = objc_alloc_init(ObjcSimTransferStatus);
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v12 = [NSString stringWithUTF8String:v11];
  [(ObjcSimTransferStatus *)v10 setIccid:v12];

  [(ObjcSimTransferStatus *)v10 setStatus:a3];
  v13 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
  [(ObjcSimTransferEndSessionRequest *)v13 setSessionID:*(a1 + 200)];
  v16 = v10;
  v14 = [NSArray arrayWithObjects:&v16 count:1];
  [(ObjcSimTransferEndSessionRequest *)v13 setStatus:v14];

  v15 = [v7 encodeEndSessionRequest:v13];
  sub_1007EC9B4(a1, v15);
}

void sub_1007ED91C(uint64_t a1, void *a2, void *a3, const void **a4)
{
  v7 = a2;
  v8 = a3;
  v23 = 0;
  v24 = 0;
  (***(a1 + 56))(&v19);
  Registry::getNotificationSenderFactory(&v21, v19);
  v9 = v21;
  (***(a1 + 56))(&v15);
  Registry::getTimerService(&v17, v15);
  (*(*v9 + 168))(&v23, v9, &v17, a1 + 24);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v23)
  {
    sub_10006F22C(&v14, a4);
    v10 = v7;
    v11 = v8;
    v25 = 0;
    operator new();
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FCB0();
  }

  v12 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
  [(ObjcSimTransferEndSessionRequest *)v12 setSessionID:*(a1 + 200)];
  v13 = [v8 encodeEndSessionRequest:v12];
  sub_1007EC9B4(a1, v13);

  if (v24)
  {
    sub_100004A34(v24);
  }
}

void sub_1007EDBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1007EDC5C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I receive session response : %@", buf, 0xCu);
  }

  v8 = a1[25];
  v9 = [v5 sessionID];
  LOBYTE(v8) = v8 == [v9 longLongValue];

  if (v8)
  {
    if (!sub_1007ECA90(a1, [v5 msgError], v6) && (sub_1007ECBB8(a1, v5, v6) & 1) == 0)
    {
      v10 = [v5 items];
      v11 = [v10 objectAtIndexedSubscript:0];
      v12 = a1[11];
      a1[11] = v11;

      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
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
      *buf = 0u;
      v13 = a1[24];
      if (v13 && (objc_msgSend_getTransferDeviceInfoFromSessionResponse_(v13), v14 = a1[24], v19 = 0, v14))
      {
        objc_msgSend_serializeDeviceInfo_(v14);
      }

      else
      {
        v19 = 0;
      }

      if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
      {
        sub_10177FCE4();
      }

      (*(a1[23] + 16))();
      a1[15] = 2;
      sub_1007ECF24(a1, 11);
      v17 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
      [(ObjcSimTransferEndSessionRequest *)v17 setSessionID:a1[25]];
      v18 = [v6 encodeEndSessionRequest:v17];
      sub_1007EC9B4(a1, v18);

      sub_10001021C(&v19);
      sub_100111C2C(buf);
    }
  }

  else
  {
    sub_1007ECF24(a1, 7);
    a1[15] = 1;
    v15 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v15 setSessionID:a1[25]];
    v16 = [v6 encodeEndSessionRequest:v15];
    sub_1007EC9B4(a1, v16);
  }
}

void sub_1007EE1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, const void *a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  sub_10001021C(&a33);
  sub_100111C2C(&a42);

  _Unwind_Resume(a1);
}

void sub_1007EE308(uint64_t a1, __int128 *a2, uint64_t a3)
{
  (***(a1 + 56))(&v13);
  ServiceMap = Registry::getServiceMap(v13);
  v6 = ServiceMap;
  v7 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v8 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  v14 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v14);
  if (v11 && (v12 = v11[4]) != 0)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v6);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
  }

  else
  {
    std::mutex::unlock(v6);
  }

  sub_1007F15F4(v15, a3);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  __p[6] = 0;
  operator new();
}

void sub_1007EE554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1007F1574(v10 + 8);
  operator delete(v10);
  sub_1007EF090(va);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (a8)
  {
    sub_100004A34(a8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007EE5E8(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1007EE63C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Receive profile response : %@", buf, 0xCu);
  }

  v5 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
  v6 = [v3 sessionID];
  if ([v3 sessionID] == *(a1 + 200))
  {
    if ([v3 msgError])
    {
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10177FD74(buf, [v3 msgError], v7);
      }

      *(a1 + 120) = [v3 msgError];
      (*(*(a1 + 184) + 16))();
      sub_1007ECBA0(a1, [v3 msgError]);
      v8 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
      [(ObjcSimTransferEndSessionRequest *)v8 setSessionID:v6];
      v9 = [(CellularPlanCrossPlatformTransferMessageCodec *)v5 encodeEndSessionRequest:v8];
      sub_1007EC9B4(a1, v9);
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
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
      v19 = 0u;
      v20 = 0u;
      *buf = 0u;
      v13 = *(a1 + 192);
      if (v13 && (objc_msgSend_getTransferDeviceInfoFromProfileResponse_(v13), v14 = *(a1 + 192), v17 = 0, v14))
      {
        objc_msgSend_serializeDeviceInfo_(v14);
      }

      else
      {
        v17 = 0;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177FE24();
      }

      *(a1 + 120) = 2;
      (*(*(a1 + 184) + 16))();
      sub_1007ECF24(a1, 11);
      v15 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
      [(ObjcSimTransferEndSessionRequest *)v15 setSessionID:v6];
      v16 = [(CellularPlanCrossPlatformTransferMessageCodec *)v5 encodeEndSessionRequest:v15];
      sub_1007EC9B4(a1, v16);

      sub_10001021C(&v17);
      sub_100111C2C(buf);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10177FD18((a1 + 200), buf, [v3 sessionID], v10);
    }

    *(a1 + 120) = 1;
    (*(*(a1 + 184) + 16))();
    sub_1007ECF24(a1, 7);
    v11 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v11 setSessionID:v6];
    v12 = [(CellularPlanCrossPlatformTransferMessageCodec *)v5 encodeEndSessionRequest:v11];
    sub_1007EC9B4(a1, v12);
  }
}

void sub_1007EEC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EEE20(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 184))
  {
    v4 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
    v5 = [(CellularPlanCrossPlatformTransferMessageCodec *)v4 decodeMessage:v3];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p[0]) = 138412290;
      *(__p + 4) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Timer received: %@", __p, 0xCu);
    }

    v9 = v7;
    sub_10000501C(__p, [v7 UTF8String]);
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    *(a1 + 96) = *__p;
    *(a1 + 112) = v13;
    v10 = *(a1 + 152);
    v11 = v7;
    sub_10000501C(__p, [v7 UTF8String]);
    (*(*v10 + 24))(v10, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_1007EDC5C(a1, v5, v4);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        sub_1007EE63C(a1, v5);
      }
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FE58();
  }
}

void sub_1007EF02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007EF090(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return sub_1007F1574(a1);
}

void sub_1007EF0D4(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FE8C();
  }
}

void sub_1007EF16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EF190(uint64_t a1, uint64_t a2)
{
  sub_1007D1B2C(a1, a2);

  sub_1007D114C(a1, 0, 0);
}

void sub_1007EF1D0(uint64_t a1, uint64_t a2)
{
  v2 = a1 - 136;
  sub_1007D1B2C(a1 - 136, a2);

  sub_1007D114C(v2, 0, 0);
}

id sub_1007EF214(uint64_t a1)
{
  v1 = *(a1 + 144);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1007EF288;
  v3[3] = &unk_101E81030;
  v3[4] = a1;
  return [v1 getDCTCodeWithCompletion:v3];
}

void sub_1007EF288(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3 && [(__CFString *)v3 length])
  {
    sub_100016890((v5 + 216), [(__CFString *)v4 UTF8String]);
  }

  else if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FEC0();
  }

  if (*(v5 + 48) != 2)
  {
    __assert_rtn("onCodeReady_block_invoke", "CellularPlanCrossPlatformTargetTransportController.mm", 688, "cellplan::PlanTransferEndpoint::kTarget == fEndpoint");
  }

  v6 = *(v5 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (v5 + 216);
    if (*(v5 + 239) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I getQRCode in onCodeReady %s will send notification", buf, 0xCu);
  }

  *buf = 0uLL;
  (***(v5 + 56))(&v20);
  Registry::getNotificationSenderFactory(&v22, v20);
  v8 = v22;
  (***(v5 + 56))(&v16);
  Registry::getTimerService(&v18, v16);
  (*(*v8 + 168))(buf, v8, &v18, v5 + 24);
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (*(&v22 + 1))
  {
    sub_100004A34(*(&v22 + 1));
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (*buf)
  {
    v9 = objc_opt_new();
    v10 = [NSString stringWithUTF8String:sub_100649BE0(*(v5 + 48))];
    [v9 setObject:v10 forKey:@"kCrossTransferEndpoint"];

    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = &stru_101F6AFB8;
    }

    [v9 setObject:v11 forKey:@"kCrossTransferDCTCode"];
    v12 = *(v5 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = (v5 + 216);
      if (*(v5 + 239) < 0)
      {
        v13 = *v13;
      }

      LODWORD(v22) = 136315138;
      *(&v22 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Send update with %s", &v22, 0xCu);
    }

    v14 = *buf;
    v15 = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    (*(*v14 + 40))(v14, &v15);
    sub_10001021C(&v15);
  }

  else if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FDF0();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1007EF5FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

id sub_1007EF6B4(uint64_t a1)
{
  v1 = a1 - 136;
  v2 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007EF288;
  v4[3] = &unk_101E81030;
  v4[4] = v1;
  return [v2 getDCTCodeWithCompletion:v4];
}

void sub_1007EF728(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v56 = a2;
  v50 = a3;
  cf = a4;
  v52 = a5;
  v9 = objc_retainBlock(v52);
  v10 = *(a1 + 184);
  *(a1 + 184) = v9;

  if ((atomic_load_explicit(&qword_101FBABF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBABF0))
  {
    qword_101FBABE8 = [NSString stringWithUTF8String:sub_100649C38(0), v50, v52];
    __cxa_guard_release(&qword_101FBABF0);
  }

  if ((atomic_load_explicit(&qword_101FBAC00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAC00))
  {
    qword_101FBABF8 = [NSString stringWithUTF8String:sub_100649C38(1)];
    __cxa_guard_release(&qword_101FBAC00);
  }

  v54 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
  v71 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if ([v56 isEqualToString:{qword_101FBABE8, v50}])
  {
    *__p = 0u;
    *v66 = 0u;
    v63 = 0u;
    *v64 = 0u;
    *v62 = 0u;
    sub_10092DF68(&v71, v62);
    v11 = objc_alloc_init(ObjcSimTransferStartSessionRequest);
    v12 = [*(a1 + 192) getSupportVersions];
    [(ObjcSimTransferStartSessionRequest *)v11 setVersions:v12];

    v13 = sub_1007F0064();
    *(a1 + 200) = v13;
    [(ObjcSimTransferStartSessionRequest *)v11 setSessionID:v13];
    v70 = 0;
    (***(a1 + 56))(buf);
    ServiceMap = Registry::getServiceMap(*buf);
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
    v72 = v16;
    v20 = sub_100009510(&v15[1].__m_.__sig, &v72);
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
LABEL_35:
        (*(*v22 + 152))(&v70, v22);
        if ((v23 & 1) == 0)
        {
          sub_100004A34(v21);
        }

        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        [(ObjcSimTransferStartSessionRequest *)v11 setFriendlyDeviceName:v70];
        v39 = *(a1 + 40);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = SHIBYTE(__p[0]);
          v41 = v64[0];
          v42 = [(ObjcSimTransferStartSessionRequest *)v11 versions];
          v43 = v42;
          v44 = *(a1 + 200);
          v45 = v64;
          *buf = 136315650;
          if (v40 < 0)
          {
            v45 = v41;
          }

          *&buf[4] = v45;
          *&buf[12] = 2112;
          *&buf[14] = v42;
          v76 = 2048;
          v77 = v44;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I send listing request from: %s, with supported versions: %@, session:%lld", buf, 0x20u);
        }

        v28 = [(CellularPlanCrossPlatformTransferMessageCodec *)v54 encodeStartSessionRequest:v11];
        sub_100005978(&v70);

        if (SHIBYTE(v66[1]) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v64[0]);
        }

        if (SHIBYTE(v63) < 0)
        {
          operator delete(*&v62[8]);
        }

        v29 = @"ObjcSimTransferStartSessionRequest";
LABEL_61:
        if (v28)
        {
          v73[0] = off_101E814A0;
          v73[3] = v73;
          sub_1007EBD70(a1, v28, v29, v73);
          sub_10002B644(v73);
        }

        goto LABEL_67;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    goto LABEL_35;
  }

  if ([v56 isEqualToString:qword_101FBABF8])
  {
    v61 = v71;
    if (v71)
    {
      CFRetain(v71);
    }

    sub_1009217EC(&v61, v62);
    sub_10001021C(&v61);
    v24 = objc_alloc_init(ObjcSimTransferProfileRequest);
    v25 = *(&v63 + 1);
    if (v64[0] == *(&v63 + 1))
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177FEF4();
      }
    }

    else
    {
      v26 = *(a1 + 88);
      if (!v26)
      {
LABEL_19:
        if (*(v25 + 23) < 0)
        {
          v25 = *v25;
        }

        v27 = [NSString stringWithUTF8String:v25];
        [(ObjcSimTransferProfileRequest *)v24 setIccid:v27];

        [(ObjcSimTransferProfileRequest *)v24 setSessionID:*(a1 + 200)];
        v28 = [(CellularPlanCrossPlatformTransferMessageCodec *)v54 encodeProfileRequest:v24];
        v29 = @"ObjcSimTransferProfileRequest";
        v30 = 1;
LABEL_53:

        if (v69 < 0)
        {
          operator delete(v68);
        }

        if (v67 < 0)
        {
          operator delete(v66[1]);
        }

        *buf = __p;
        sub_1000087B4(buf);
        *buf = &v63 + 8;
        sub_1000087B4(buf);
        if (SBYTE7(v63) < 0)
        {
          operator delete(*v62);
          if ((v30 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else if ((v30 & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_61;
      }

      if ((sub_1007ED1D0(a1, v26, v54) & 1) == 0)
      {
        v25 = *(&v63 + 1);
        goto LABEL_19;
      }
    }

    v30 = 0;
    v29 = 0;
    v28 = 0;
    goto LABEL_53;
  }

  if ([v56 isEqualToString:@"TransferResults"])
  {
    v31 = v71;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    obj = [v31 objectForKeyedSubscript:@"Results"];
    v32 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
    if (v32)
    {
      v33 = *v58;
      while (2)
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v58 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v57 + 1) + 8 * i);
          v36 = [v31 objectForKeyedSubscript:@"Results"];
          v37 = [v36 objectForKeyedSubscript:v35];
          v38 = [v37 intValue];

          if (v38 == 10002 && *(a1 + 128) == 4)
          {
            v46 = *(a1 + 40);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *v62 = 0;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I Delayed Downlaod ECS, timeout", v62, 2u);
            }

            v47 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
            [(ObjcSimTransferEndSessionRequest *)v47 setSessionID:*(a1 + 200)];
            v48 = [*(a1 + 208) allValues];
            [(ObjcSimTransferEndSessionRequest *)v47 setStatus:v48];

            v49 = [(CellularPlanCrossPlatformTransferMessageCodec *)v54 encodeEndSessionRequest:v47];
            sub_1007EC9B4(a1, v49);

            goto LABEL_66;
          }
        }

        v32 = [obj countByEnumeratingWithState:&v57 objects:v74 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_66:
  v28 = 0;
LABEL_67:
  sub_10001021C(&v71);
}

void sub_1007EFEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14)
{
  __cxa_guard_abort(&qword_101FBAC00);

  _Unwind_Resume(a1);
}

unint64_t sub_1007F0064()
{
  v7.__padding_ = 0;
  sub_100344DA8(&v7);
  bzero(v6, 0x9B8uLL);
  v0 = std::random_device::operator()(&v7);
  v5 = v0;
  for (i = 1; i != 312; ++i)
  {
    v0 = i + 0x5851F42D4C957F2DLL * (v0 ^ (v0 >> 62));
    v6[i - 1] = v0;
  }

  v6[311] = 0;
  v4 = xmmword_10183D830;
  v2 = sub_1007F1EA8(&v4, &v5, &v4);
  std::random_device::~random_device(&v7);
  return v2;
}

uint64_t sub_1007F0128(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = (a1 + 48);
  sub_1000087B4(&v3);
  v3 = (a1 + 24);
  sub_1000087B4(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007F0240(void *a1, unsigned __int8 *a2, NSObject **a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E810B0;
  sub_1007F0338((a1 + 3), a2, a3, a4);
}

void sub_1007F02BC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E810B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1007F0338(uint64_t a1, unsigned __int8 *a2, NSObject **a3, uint64_t *a4)
{
  v6 = *a2;
  v7 = *a3;
  v11 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a4;
  v9 = a4[1];
  v10[0] = v8;
  v10[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1007EB67C(a1, v6, &v11, v10);
}

void sub_1007F03CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007F0460(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E81100;
  a2[1] = v2;
  return result;
}

void sub_1007F048C(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 8);
  v6 = *(v5 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *a3;
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = 136315394;
    v10 = v8;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I last received event: %s timeout in %d", &v9, 0x12u);
  }

  sub_1007EC4EC(v5, a2);
}

uint64_t sub_1007F0564(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007F05DC(uint64_t a1)
{

  operator delete();
}

id sub_1007F06A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = off_101E81180;
  *(a2 + 8) = v4;
  result = v5;
  *(a2 + 16) = result;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 28) = 0;
  *(a2 + 25) = 0;
  return result;
}

void sub_1007F0704(id *a1)
{

  operator delete(a1);
}

void sub_1007F0740(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Send EndSessionRequest", v7, 2u);
    }

    v4 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v4 setSessionID:*(v2 + 200)];
    v5 = [*(v2 + 208) allValues];
    [(ObjcSimTransferEndSessionRequest *)v4 setStatus:v5];

    v6 = [*(a1 + 16) encodeEndSessionRequest:v4];
    sub_1007EC9B4(v2, v6);
  }
}

uint64_t sub_1007F0844(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007F0890(uint64_t a1)
{
  (***(**a1 + 56))(&v11);
  ServiceMap = Registry::getServiceMap(v11);
  v2 = ServiceMap;
  v3 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v4 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  v13[0] = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, v13);
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
  v13[0] = off_101E81200;
  v13[3] = v13;
  (*(*v9 + 1016))(v9, 2, v13);
  sub_10039D5CC(v13);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  operator delete();
}

void sub_1007F0A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, ...)
{
  va_start(va, a11);
  sub_10039D5CC(va);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  operator delete();
}

uint64_t sub_1007F0B58(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E81260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F0C14(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E81280;
  a2[1] = v2;
  return result;
}

uint64_t sub_1007F0C48(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007F0CC8(uint64_t a1)
{

  operator delete();
}

id sub_1007F0D90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  *a2 = off_101E81300;
  a2[1] = v4;
  a2[2] = v5;
  result = *(a1 + 24);
  a2[3] = result;
  return result;
}

void sub_1007F0DE8(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_1007F0E24(id *a1)
{

  operator delete(a1);
}

void sub_1007F0E68(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 8);
  v7 = *(v6 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 136315394;
    *&v16[4] = asString(v4);
    v17 = 2080;
    v18 = asString(v5);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I handle callback %s, %s", v16, 0x16u);
  }

  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v9 = objc_alloc_init(ObjcSimTransferStatus);
    v10 = [*(a1 + 16) items];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 iccid];
    [(ObjcSimTransferStatus *)v9 setIccid:v12];

    [(ObjcSimTransferStatus *)v9 setStatus:2];
    v13 = objc_alloc_init(ObjcSimTransferEndSessionRequest);
    [(ObjcSimTransferEndSessionRequest *)v13 setSessionID:*(v6 + 200)];
    *v16 = v9;
    v14 = [NSArray arrayWithObjects:v16 count:1];
    [(ObjcSimTransferEndSessionRequest *)v13 setStatus:v14];

    v15 = [*(a1 + 24) encodeEndSessionRequest:v13];
    sub_1007EC9B4(v6, v15);
  }
}

uint64_t sub_1007F1084(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F10D0(uint64_t a1)
{
  *a1 = off_101E81380;

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

void sub_1007F1140(uint64_t a1)
{
  *a1 = off_101E81380;

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

void sub_1007F1298(_Unwind_Exception *a1)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

id sub_1007F12C4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E81380;
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

  if (*(a1 + 63) < 0)
  {
    sub_100005F2C((a2 + 40), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v6 = *(a1 + 40);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 40) = v6;
  }

  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  return result;
}

void sub_1007F1370(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F138C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_1007F13F4(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

const void **sub_1007F1458(uint64_t a1, char *a2, const void **a3)
{
  v4 = *a2;
  v5 = *a3;
  v11 = *a3;
  *a3 = 0;
  v6 = *(a1 + 8);
  if (v4)
  {
    v9 = a1 + 64;
    v7 = *(a1 + 64);
    v8 = *(v9 + 8);
    v12 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    sub_1007ED91C(v6, v8, v7, &v12);
    sub_100010250(&v12);
  }

  else
  {
    *(v6 + 128) = 11;
    sub_1007ECF24(v6, 10);
    sub_1007ED730(v6, (a1 + 16), 11, *(a1 + 64));
  }

  return sub_100010250(&v11);
}

void sub_1007F1504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100010250(&a10);
  sub_100010250(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F1528(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F1574(uint64_t a1)
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

uint64_t sub_1007F15F4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007F168C(uint64_t a1)
{
  *a1 = off_101E81410;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  sub_1007F1574(a1 + 8);
  return a1;
}

void sub_1007F16E4(uint64_t a1)
{
  *a1 = off_101E81410;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  sub_1007F1574(a1 + 8);

  operator delete();
}

void sub_1007F17F8(_Unwind_Exception *a1)
{
  sub_1007F1574(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *sub_1007F181C(uint64_t a1, void *a2)
{
  *a2 = off_101E81410;
  v3 = a2 + 5;
  result = sub_1007F15F4((a2 + 1), a1 + 8);
  if (*(a1 + 63) < 0)
  {
    return sub_100005F2C(v3, *(a1 + 40), *(a1 + 48));
  }

  v5 = *(a1 + 40);
  v3[2] = *(a1 + 56);
  *v3 = v5;
  return result;
}

void sub_1007F18B8(void *a1)
{
  sub_1007EF090(a1 + 8);

  operator delete(a1);
}

const void **sub_1007F18F4(uint64_t a1, CFTypeRef *a2)
{
  cf = *a2;
  v3 = cf;
  *a2 = 0;
  v4 = v3;
  v5 = v4;
  v29 = v4;
  if (!v4)
  {
    v42[0] = 0;
    sub_1007F1D7C(a1 + 8, 0);
    v23 = v42;
    goto LABEL_40;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v4;
  v25 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (!v25)
  {
    goto LABEL_35;
  }

  v26 = *v38;
  do
  {
    for (i = 0; i != v25; i = i + 1)
    {
      if (*v38 != v26)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v37 + 1) + 8 * i);
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v7 = [v6 remotePlans];
      v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (!v8)
      {
        goto LABEL_33;
      }

      v9 = *v34;
      while (2)
      {
        for (j = 0; j != v8; j = j + 1)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v33 + 1) + 8 * j);
          v12 = [v11 iccid];
          v13 = v12;
          sub_10000501C(__p, [v12 UTF8String]);
          v14 = v32;
          if ((v32 & 0x80u) == 0)
          {
            v15 = v32;
          }

          else
          {
            v15 = __p[1];
          }

          v16 = *(a1 + 63);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(a1 + 48);
          }

          if (v15 == v16)
          {
            if ((v32 & 0x80u) == 0)
            {
              v18 = __p;
            }

            else
            {
              v18 = __p[0];
            }

            if (v17 >= 0)
            {
              v19 = (a1 + 40);
            }

            else
            {
              v19 = *(a1 + 40);
            }

            v20 = memcmp(v18, v19, v15) == 0;
            if (v14 < 0)
            {
LABEL_27:
              operator delete(__p[0]);
            }
          }

          else
          {
            v20 = 0;
            if (v32 < 0)
            {
              goto LABEL_27;
            }
          }

          v5 = v29;
          if (v20)
          {
            v21 = [v11 transferAttributes];
            v22 = [v21 transferCapability];

            if (v22 <= 0xB && ((1 << v22) & 0x914) != 0)
            {
              __p[0] = cf;
              if (cf)
              {
                CFRetain(cf);
              }

              sub_1007F1D7C(a1 + 8, 1);
              sub_100010250(__p);

              goto LABEL_41;
            }
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }

LABEL_33:
    }

    v25 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  }

  while (v25);
LABEL_35:

  __p[0] = 0;
  sub_1007F1D7C(a1 + 8, 0);
  v23 = __p;
LABEL_40:
  sub_100010250(v23);
LABEL_41:

  return sub_100010250(&cf);
}

void sub_1007F1C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, ...)
{
  va_start(va, a13);

  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F1CB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F1CFC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1007F1D7C(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1007F1E5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1007F1EA8(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v4 = result - *a3;
  if (result != *a3)
  {
    v6 = v4 + 1;
    if (v4 == -1)
    {

      return sub_1007F1F64(a2);
    }

    else
    {
      v8 = __clz(v6);
      v9 = 63;
      if (((v6 << v8) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = 64;
      }

      v10 = v9 - v8;
      v11 = v10 >> 6;
      if ((v10 & 0x3F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFFFFFFFFFFLL >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = sub_1007F1F64(a2) & v12;
      }

      while (v13 >= v6);
      return *a3 + v13;
    }
  }

  return result;
}

unint64_t sub_1007F1F64(uint64_t a1)
{
  v1 = *(a1 + 2496);
  v2 = (v1 + 1) % 0x138uLL;
  v3 = 0xB5026F5AA96619E9;
  if ((*(a1 + 8 * v2) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ *(a1 + 8 * ((v1 + 156) % 0x138uLL)) ^ ((*(a1 + 8 * v2) & 0x7FFFFFFELL | *(a1 + 8 * v1) & 0xFFFFFFFF80000000) >> 1);
  *(a1 + 8 * v1) = v4;
  *(a1 + 2496) = v2;
  v5 = (((v4 >> 29) & 0x5555555555555555 ^ v4) << 17) & 0x71D67FFFEDA60000 ^ (v4 >> 29) & 0x5555555555555555 ^ v4;
  return (v5 << 37) & 0xFFF7EEE000000000 ^ v5 ^ (((v5 << 37) & 0xFFF7EEE000000000 ^ v5) >> 43);
}

void sub_1007F201C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1007F2968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_1006EE2D8(&STACK[0x260]);
  if (a58)
  {
    operator delete(a58);
  }

  sub_1007F2DE4(&a65);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F2B30@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v31 = 0;
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
  *v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  sub_10000C320(&v16);
  sub_10000C030(&v17, "geo:", 4);
  v4 = std::ostream::operator<<();
  sub_10000C030(v4, ",", 1);
  v5 = std::ostream::operator<<();
  v7 = sub_10000C030(v5, ";u=10;rcs-l=", 12);
  if (*(a1 + 40) == 1)
  {
    sub_100A97768((a1 + 16), &__p);
    v8 = HIBYTE(v15);
    v6 = v14;
  }

  else
  {
    v8 = 0;
    HIBYTE(v15) = 0;
    LOBYTE(__p) = 0;
  }

  if ((v8 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v8 & 0x80u) == 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  sub_10000C030(v7, p_p, v10);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v14 = 0;
  v15 = 0;
  sub_100061574(&v16, &__p);
  sub_100C180E0(a2, &__p);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  *&v17 = v11;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1007F2DE4(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    sub_100004A34(locale);
  }

  std::locale::~locale(this);
}

uint64_t sub_1007F2E24(unsigned __int8 **a1, double *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_8;
  }

  v5 = *v3;
  if (v5 == 45 || v5 == 43)
  {
    ++v3;
  }

  v7 = v4 - v3;
  if (v4 - v3 < 3)
  {
    goto LABEL_8;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v3[v10];
    if (v12 != aNan_0[v10] && v12 != aNan[v10])
    {
      break;
    }

    v11 = v10++ > 1;
  }

  while (v10 != 3);
  if (!v11)
  {
    if (v7 == 3)
    {
      v20 = 0;
      v18 = 0;
      do
      {
        v21 = v3[v20];
        if (v21 != aInfinity_0[v20] && v21 != aInfinity[v20])
        {
          break;
        }

        v18 = v20++ > 1;
      }

      while (v20 != 3);
    }

    else
    {
      if (v7 != 8)
      {
        goto LABEL_8;
      }

      v17 = 0;
      v18 = 0;
      do
      {
        v19 = v3[v17];
        if (v19 != aInfinity_0[v17] && v19 != aInfinity[v17])
        {
          break;
        }

        v18 = v17++ > 6;
      }

      while (v17 != 8);
    }

    if (v18)
    {
      v14 = v5 == 45;
      v15 = INFINITY;
      v16 = -INFINITY;
      goto LABEL_34;
    }

LABEL_8:
    result = sub_1007F300C(a1, a2);
    if (result)
    {
      v9 = *(a1[1] - 1) - 43;
      if (v9 <= 0x3A)
      {
        return result & ((0x400000004000005uLL >> v9) ^ 1);
      }
    }

    return result;
  }

  v13 = v3 + 3;
  if (v13 != v4 && (v4 - v13 < 2 || *v13 != 40 || *(v4 - 1) != 41))
  {
    goto LABEL_8;
  }

  v14 = v5 == 45;
  v15 = NAN;
  v16 = NAN;
LABEL_34:
  if (v14)
  {
    v15 = v16;
  }

  *a2 = v15;
  return 1;
}

BOOL sub_1007F300C(uint64_t *a1, uint64_t a2)
{
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  std::locale::locale(&v14);
  v16 = 0uLL;
  v17 = 0;
  v3 = *a1;
  v4 = a1[1];
  __sb = off_101E81520;
  *(&v14 + 1) = v3;
  *&v15 = v3;
  *(&v15 + 1) = v4;
  v12 = 0u;
  memset(&v11.__fmtflags_, 0, 128);
  v10[1] = 0;
  std::ios_base::init(&v11, &__sb);
  *&v12 = 0;
  DWORD2(v12) = -1;
  v5->__exceptions_ = 1;
  std::ios_base::clear(v5, v5->__rdstate_);
  v6 = v10[0];
  *(&v10[1] + *(v10[0] - 24)) &= ~0x1000u;
  *(&v10[2] + *(v6 - 24)) = 17;
  v7 = std::istream::operator>>();
  v8 = (*(v7 + *(*v7 - 24) + 32) & 5) == 0 && std::istream::get() == -1;
  std::istream::~istream();
  std::locale::~locale(&v14);
  return v8;
}

void sub_1007F3218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  std::istream::~istream();
  *(v4 - 112) = v2;
  std::locale::~locale(v3 + 1);
  _Unwind_Resume(a1);
}

void *sub_1007F3268(void *result, uint64_t a2, uint64_t a3)
{
  result[2] = a2;
  result[3] = a2;
  result[4] = a2 + a3;
  return result;
}

std::locale *sub_1007F3278(std::locale *a1)
{
  std::locale::~locale(a1 + 1);
  return a1;
}

void sub_1007F32BC(std::locale *a1)
{
  std::locale::~locale(a1 + 1);

  operator delete();
}

double sub_1007F3320@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if ((a4 & 0x10) != 0)
  {
    v7 = -1;
    goto LABEL_19;
  }

  v5 = a1[2];
  v6 = a1[4] - v5;
  if (!a3)
  {
    v7 = -1;
    if (a2 < 0 || v6 < a2)
    {
      goto LABEL_19;
    }

    v9 = v5 + a2;
LABEL_15:
    v8 = a1[4];
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v7 = -1;
    v10 = a1[3] - v5 + a2;
    if (v10 < 0 || v10 > v6)
    {
      goto LABEL_19;
    }

    v9 = a1[3] + a2;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    v9 = a1[3];
    goto LABEL_18;
  }

  v7 = -1;
  if ((a2 & 0x8000000000000000) == 0 && v6 >= a2)
  {
    v8 = a1[4];
    v9 = v8 - a2;
LABEL_16:
    a1[3] = v9;
    a1[4] = v8;
LABEL_18:
    v7 = v9 - v5;
  }

LABEL_19:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v7;
  return result;
}

double sub_1007F33D0@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if ((a3 & 0x10) == 0)
  {
    v4 = a1[2];
    v5 = *(a2 + 128);
    if (v5 <= a1[4] - v4)
    {
      v6 = v4 + v5;
      v7 = a1[4];
      a1[3] = v6;
      a1[4] = v7;
    }
  }

  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = -1;
  return result;
}

void sub_1007F3418(void *a1)
{
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "cu.policy.ne");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger(v2, v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  *a1 = off_101E815D0;
  v5 = 0;
  sub_100805FE8();
}

void sub_1007F3524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1007F3D5C(va);
  ctu::OsLogLogger::~OsLogLogger(v8);
  NetworkPolicyDriverInterface::~NetworkPolicyDriverInterface(v7);
  _Unwind_Resume(a1);
}

void sub_1007F3574(uint64_t *a1)
{
  *a1 = off_101E815D0;
  sub_1007F35F4(a1);
  sub_100246FAC((a1 + 7), a1[8]);
  sub_1007F3DDC(a1 + 2, 0);
  sub_1007F3D5C((a1 + 3));
  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  NetworkPolicyDriverInterface::~NetworkPolicyDriverInterface(a1);
}

void sub_1007F35F4(uint64_t a1)
{
  v1 = a1;
  (*(**(a1 + 16) + 24))(*(a1 + 16));
  (*(**(v1 + 16) + 40))(*(v1 + 16));
  v2 = *(v1 + 64);
  v1 += 64;
  sub_100246FAC(v1 - 8, v2);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 - 8) = v1;
}

void sub_1007F367C(uint64_t *a1)
{
  sub_1007F3574(a1);

  operator delete();
}

void sub_1007F36B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100074B94(*a2, (a2 + 8), ", ", 2, &__p);
    v5 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 136446210;
    v19 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Denying network access to %{public}s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v8 = *a2;
  v6 = (a2 + 8);
  v7 = v8;
  if (v8 == v6)
  {
    goto LABEL_24;
  }

  v9 = 0;
  do
  {
    p_size = &v7[1].__r_.__value_.__l.__size_;
    (*(**(a1 + 16) + 16))(&__p);
    v11 = __p.__r_.__value_.__r.__words[2];
    sub_10006DCAC(&__p, __p.__r_.__value_.__l.__size_);
    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v12 = *(a1 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        if (v7[2].__r_.__value_.__s.__data_[7] < 0)
        {
          p_size = *p_size;
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136446210;
        *(__p.__r_.__value_.__r.__words + 4) = p_size;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Condition not added for %{public}s", &__p, 0xCu);
      }
    }

    size = v7->__r_.__value_.__l.__size_;
    if (size)
    {
      do
      {
        v14 = size;
        size = size->__r_.__value_.__r.__words[0];
      }

      while (size);
    }

    else
    {
      do
      {
        v14 = v7->__r_.__value_.__r.__words[2];
        v15 = v14->__r_.__value_.__r.__words[0] == v7;
        v7 = v14;
      }

      while (!v15);
    }

    v7 = v14;
  }

  while (v14 != v6);
  if ((v9 & 1) == 0)
  {
LABEL_24:
    v16 = *(a1 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10178013C(v16);
    }
  }

  else
  {
    (*(**(a1 + 16) + 40))(*(a1 + 16));
  }
}

BOOL sub_1007F38FC(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v7 = *(a2 + 16);
    }

    v5 = sub_1007F39B8(a1, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    return v5;
  }

  else
  {

    return sub_1007F3C0C(a1, a2);
  }
}

void sub_1007F399C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007F39B8(uint64_t a1, char *a2)
{
  v4 = sub_100007A6C(a1 + 56, a2);
  if (a1 + 64 == v4)
  {
    return 0;
  }

  v5 = v4;
  v16 = 0;
  v17[0] = 0;
  v17[1] = 0;
  sub_1004C0AD4(&v16, v4 + 56);
  v6 = v16;
  if (v16 == v17)
  {
    goto LABEL_19;
  }

  v7 = 0;
  do
  {
    v15 = *(v6 + 7);
    if ((*(**(a1 + 16) + 32))(*(a1 + 16)))
    {
      sub_1007F3E0C((v5 + 7), &v15);
      v7 = 1;
    }

    else
    {
      v8 = *(a1 + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v12 = a2;
        if (a2[23] < 0)
        {
          v12 = *a2;
        }

        *buf = 67109378;
        v19 = v15;
        v20 = 2080;
        v21 = v12;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unable to remove policy id %u for %s", buf, 0x12u);
      }
    }

    v9 = v6[1];
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
        v10 = v6[2];
        v11 = *v10 == v6;
        v6 = v10;
      }

      while (!v11);
    }

    v6 = v10;
  }

  while (v10 != v17);
  if ((v7 & 1) == 0)
  {
LABEL_19:
    v13 = 0;
  }

  else
  {
    (*(**(a1 + 16) + 40))(*(a1 + 16));
    v13 = 1;
  }

  if (!v5[9])
  {
    sub_1000194D8((a1 + 56), v5);
    sub_100247008((v5 + 4));
    operator delete(v5);
  }

  sub_10006DCAC(&v16, v17[0]);
  return v13;
}

BOOL sub_1007F3C0C(uint64_t a1, char *a2)
{
  if (a1 + 64 != sub_100007A6C(a1 + 56, a2))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(**(a1 + 16) + 16))(&v8);
  v4 = v10 != 0;
  if (v10)
  {
    v12 = a2;
    v5 = (sub_1007F3E90((a1 + 56), a2, &unk_101802C98, &v12, &v11) + 7);
    if (v5 != &v8)
    {
      sub_1004C08D0(v5, v8, &v9);
    }

    (*(**(a1 + 16) + 40))(*(a1 + 16));
  }

  else
  {
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_101780180(a2, v6);
    }
  }

  sub_10006DCAC(&v8, v9);
  return v4;
}

uint64_t sub_1007F3D5C(uint64_t a1)
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

uint64_t *sub_1007F3DDC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_100805EB8((result + 1), v3);
  }

  return result;
}

uint64_t sub_1007F3E0C(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_1000194D8(a1, v4);
  operator delete(v4);
  return 1;
}

void *sub_1007F3E90(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_1007F3F44();
  }

  return v5;
}

double sub_1007F3FE8(uint64_t a1)
{
  *a1 = &off_101E81658;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_1007F4014(void **this)
{
  *this = &off_101E81658;
  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v2 = this[1];
  this[1] = 0;
  if (v2)
  {
    sub_100140988((this + 1), v2);
  }

  PB::Base::~Base(this);
}

void sub_1007F408C(void **a1)
{
  sub_1007F4014(a1);

  operator delete();
}

uint64_t sub_1007F40C4(uint64_t a1, uint64_t a2)
{
  *a1 = &off_101E81658;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  std::string::operator=((a1 + 16), (a2 + 16));
  if (*(a2 + 8))
  {
    operator new();
  }

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t sub_1007F41A0(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  PB::TextFormatter::format(this, "isAltEmAddressUpdateUrl", *(a1 + 40));
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  PB::TextFormatter::format();

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007F4224(uint64_t a1, PB::Reader *this)
{
  v3 = *(this + 1);
  v2 = *(this + 2);
  v4 = *(this + 24);
  if (v3 < v2 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        v16 = 0;
        v17 = 0;
        v10 = 0;
        v18 = v2 - v3;
        if (v2 < v3)
        {
          v18 = 0;
        }

        v19 = (v7 + v3);
        v20 = v3 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_37;
          }

          v13 = v20;
          v21 = *v19;
          *(this + 1) = v13;
          v10 |= (v21 & 0x7F) << v16;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v18;
          ++v19;
          v20 = v13 + 1;
          v15 = v17++ > 8;
          if (v15)
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
        v11 = (v7 + v3);
        v12 = v3 + 1;
        while (1)
        {
          v13 = v12;
          *(this + 1) = v12;
          v14 = *v11++;
          v10 |= (v14 & 0x7F) << v8;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v15 = v9++ > 8;
          if (v15)
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
        if (v13 >= v2)
        {
          v24 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v23 = *(v7 + v13);
          *(this + 1) = v13 + 1;
          v24 = v23 != 0;
        }

        *(a1 + 40) = v24;
      }

      else
      {
        if (v22 == 2)
        {
          operator new();
        }

        if (v22 == 1)
        {
          PB::Reader::read();
        }

        else if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v26 = 0;
          return v26 & 1;
        }
      }

      v3 = *(this + 1);
      v2 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v3 < v2 && (*(this + 24) & 1) == 0);
  }

LABEL_37:
  v26 = v4 ^ 1;
  return v26 & 1;
}

uint64_t sub_1007F444C(uint64_t a1, PB::Writer *a2)
{
  PB::Writer::write();
  if (*(a1 + 8))
  {
    PB::Writer::write();
  }

  v4 = *(a1 + 40);

  return PB::Writer::write(a2, v4, 3u);
}

uint64_t sub_1007F44B0(uint64_t a1, dispatch_object_t *a2, void *a3)
{
  v13 = *a2;
  if (v13)
  {
    dispatch_retain(v13);
  }

  sub_1005ABE1C(a1, &v13, a3, "cp.rch.reg");
  if (v13)
  {
    dispatch_release(v13);
  }

  *a1 = off_101E816A8;
  *(a1 + 8) = &off_101E817D8;
  sub_10000501C(&__p, "CellularPlanRegisteredCommandHandler");
  v6 = *a2;
  object = 0;
  v10 = v6;
  *a2 = 0;
  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 264) = a1 + 272;
  *(a1 + 272) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0;
  v8 = 1;
  sub_1000C4284(a1 + 72, &v8, &v8);
  return a1;
}

void sub_1007F45FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, dispatch_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 + 391) < 0)
  {
    operator delete(*(v18 + 368));
  }

  v20 = *(v18 + 360);
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = *(v18 + 344);
  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_1000DD0AC(v18 + 312, *(v18 + 320));
  sub_100045B14(v18 + 288, *(v18 + 296));
  sub_100077CD4(v18 + 264, *(v18 + 272));
  v22 = *(v18 + 256);
  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_1005AC00C(v18);
  _Unwind_Resume(a1);
}

void sub_1007F46A0()
{
  v1 = *(v0 - 40);
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x1007F4698);
}

void sub_1007F46C4(uint64_t a1)
{
  if (*(a1 + 336))
  {
    return;
  }

  sub_100004AA0(&v24, (a1 + 16));
  v2 = v24;
  if (*(&v24 + 1))
  {
    atomic_fetch_add_explicit((*(&v24 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v2 + 1));
  }

  (***(a1 + 56))(&v22);
  ServiceMap = Registry::getServiceMap(v22);
  v4 = ServiceMap;
  v5 = "38CellularPlanIDSServiceManagerInterface";
  if (("38CellularPlanIDSServiceManagerInterface" & 0x8000000000000000) != 0)
  {
    v6 = ("38CellularPlanIDSServiceManagerInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v25 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v25);
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
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_12:
  (*(*v11 + 24))(&v24, v11);
  v13 = v24;
  v24 = 0uLL;
  v14 = *(a1 + 344);
  *(a1 + 336) = v13;
  if (v14)
  {
    sub_100004A34(v14);
    if (*(&v24 + 1))
    {
      sub_100004A34(*(&v24 + 1));
    }
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  v15 = *(a1 + 336);
  if (v15)
  {
    v22 = 32;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1174405120;
    v20[2] = sub_1007F4CB4;
    v20[3] = &unk_101E81848;
    v20[4] = a1;
    v21 = v2;
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1174405120;
    v18[2] = sub_1007F4E90;
    v18[3] = &unk_101E81878;
    v18[4] = a1;
    v19 = v2;
    if (*(&v2 + 1))
    {
      atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if ((*(*v15 + 40))(v15, "CellularPlanRegisteredCommandHandler", &v22, &stru_101E81828, v20, v18))
    {
      (***(a1 + 56))(&v24);
      Registry::createRestModuleOneTimeUseConnection(&v16, v24);
      ctu::RestModule::connect();
      if (v17)
      {
        sub_100004A34(v17);
      }

      if (*(&v24 + 1))
      {
        sub_100004A34(*(&v24 + 1));
      }

      sub_10070DB50(a1 + 264, a1 + 248);
      *&v24 = sub_1007F5104;
      *(&v24 + 1) = 0;
      sub_1007F6B10(a1 + 288, a1 + 248, a1, &v24);
    }

    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_101780208();
    }

    if (*(&v19 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v19 + 1));
    }

    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v21 + 1));
    }
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_10178023C();
  }

  if (*(&v2 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v2 + 1));
  }
}

void sub_1007F4ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1007F4B7C(id a1, const void *a2)
{
  v3 = *(a2 + 55);
  if (v3 >= 0)
  {
    v4 = a2 + 32;
  }

  else
  {
    v4 = *(a2 + 4);
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 55);
  }

  else
  {
    v5 = *(a2 + 5);
  }

  v6 = &v4[v5];
  if (v5 > 4)
  {
    v7 = v5;
    v8 = v4;
    do
    {
      v9 = memchr(v8, 80, v7 - 4);
      if (!v9)
      {
        break;
      }

      if (*v9 == 1852794960 && v9[4] == 101)
      {
        if (v9 != v6 && v9 - v4 != -1)
        {
          goto LABEL_26;
        }

        break;
      }

      v8 = v9 + 1;
      v7 = v6 - v8;
    }

    while (v6 - v8 > 4);
  }

  if (v5 >= 4)
  {
    v11 = v4;
    do
    {
      v12 = memchr(v11, 105, v5 - 3);
      if (!v12)
      {
        break;
      }

      if (*v12 == 1684099177)
      {
        goto LABEL_24;
      }

      v11 = v12 + 1;
      v5 = v6 - v11;
    }

    while (v6 - v11 > 3);
  }

  v12 = v6;
LABEL_24:
  if (v12 != v6 && v12 - v4 != -1)
  {
LABEL_26:
    if (*(a2 + 14) > 0xCFFFFu)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1007F4CB4(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = 0uLL;
  v7 = 0;
  sub_1005F1008(&v6, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  v8 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (v5 + 16));
  operator new();
}

void sub_1007F4E48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007F4E64(uint64_t result, uint64_t a2)
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

void sub_1007F4E80(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007F4E90(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v5, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 2);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    __p = *(a2 + 24);
    v8 = *(a2 + 5);
  }

  v9 = *(a2 + 24);
  sub_10002D728(&v10, a2 + 7);
  sub_1002030F8(&v10 + 1, a2 + 8);
  v11[0] = *(a2 + 9);
  *(v11 + 6) = *(a2 + 78);
  v12[0] = 0;
  v12[1] = 0;
  sub_100004AA0(v12, (v4 + 16));
  operator new();
}

void sub_1007F50CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F5104(uint64_t a1)
{
  v1 = *(a1 + 288);
  v2 = (a1 + 296);
  if (v1 != (a1 + 296))
  {
    do
    {
      memset(&v18, 0, sizeof(v18));
      v17 = *(v1 + 2);
      if (*(v1 + 71) < 0)
      {
        sub_100005F2C(&v18, v1[6], v1[7]);
      }

      else
      {
        v18 = *(v1 + 2);
      }

      v4 = *(a1 + 48);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        sCardSerialNumberAsString();
        v5 = __p;
        if (v12 < 0)
        {
          v5 = __p[0];
        }

        if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v18;
        }

        else
        {
          v6 = v18.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        v14 = v5;
        v15 = 2080;
        v16 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Adding csn: [%s] -> device [%s]", buf, 0x16u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      __p[0] = &v17;
      v7 = sub_100289074((a1 + 120), &v17, &unk_101802C98, __p);
      std::string::operator=(v7 + 2, &v18);
      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      v8 = v1[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v1[2];
          v10 = *v9 == v1;
          v1 = v9;
        }

        while (!v10);
      }

      v1 = v9;
    }

    while (v9 != v2);
  }
}

void sub_1007F530C(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v5 = v3 + 4;
      v6 = v3 + 7;
      *buf = v3 + 4;
      v7 = sub_100173F08((a1 + 312), v3 + 4, &unk_101802C98, buf, &v12);
      std::string::operator=((v7 + 7), (v3 + 7));
      v8 = *(a1 + 48);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 55) < 0)
        {
          v5 = *v5;
        }

        if (*(v3 + 79) < 0)
        {
          v6 = *v6;
        }

        *buf = 136315394;
        *&buf[4] = v5;
        v14 = 2080;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Adding iccid: [%s] -> device [%s]", buf, 0x16u);
      }

      v9 = v3[1];
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
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v2);
  }
}

uint64_t sub_1007F547C(uint64_t a1)
{
  sub_1007F54D0(a1 + 248);
  sub_1007F5540(a1 + 288, a1 + 248);
  sub_1007F55B0(a1 + 264, a1 + 248);

  return ctu::RestModule::disconnect((a1 + 248));
}

void sub_1007F54D0(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/events/iccid_to_ids_device_id_updated");
  ctu::RestModule::unobserveEvent();
  if (v2 < 0)
  {
    operator delete(__p);
  }
}

void sub_1007F5524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F5540(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/csn_to_ids_device_id_map");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1007F5594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F55B0(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/prefs-nb/imeis");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1007F5604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F5628(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_10016FA58(a1 + 312, a2))
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v6 = sub_1000E20F0(a1 + 312, a2);
    if (*(v6 + 23) < 0)
    {
      v10 = *v6;
      v11 = *(v6 + 8);

      sub_100005F2C(a3, v10, v11);
    }

    else
    {
      v7 = *v6;
      *(a3 + 16) = *(v6 + 16);
      *a3 = v7;
    }
  }

  else
  {
    v8 = *(a1 + 48);
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

      v12 = 136315138;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I (%s) not in map", &v12, 0xCu);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

void sub_1007F576C(uint64_t a1, const std::string **a2, uint64_t a3)
{
  if (*(a1 + 352))
  {
    if (*a2)
    {
      if ((*(a1 + 391) & 0x8000000000000000) != 0)
      {
        if (*(a1 + 376))
        {
          goto LABEL_5;
        }
      }

      else if (*(a1 + 391))
      {
        goto LABEL_5;
      }

      std::string::operator=((a1 + 368), *a2 + 4);
LABEL_5:
      v5 = *(a1 + 48);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Fetching device info from cloud", buf, 2u);
      }

      v6[0] = 0;
      v6[1] = 0;
      *buf = "CellularPlanRegisteredCommandHandler";
      sub_1001048A4();
    }

    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_101780270();
    }
  }

  else if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1017802A4();
  }

  *buf = 0;
  v8 = 0;
  v9 = 0;
  sub_10010E44C(a3, buf, 1);
  v6[0] = buf;
  sub_100111BA8(v6);
}

uint64_t sub_1007F5AE0(uint64_t a1)
{
  sub_1007F6394(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007F5B18(uint64_t a1, uint64_t *a2, void *a3)
{
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  sub_100288F04(v61, a1 + 264);
  sub_100934714(v61, &v62);
  sub_100077CD4(v61, v61[1]);
  memset(&v60, 0, sizeof(v60));
  v6 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v8 = 0uLL;
    do
    {
      v81 = 0;
      v79 = v8;
      v80 = v8;
      v77 = v8;
      v78 = v8;
      *&v75[16] = v8;
      v76 = v8;
      v74[17] = v8;
      *v75 = v8;
      v74[15] = v8;
      v74[16] = v8;
      v74[13] = v8;
      v74[14] = v8;
      v74[11] = v8;
      v74[12] = v8;
      v74[9] = v8;
      v74[10] = v8;
      v74[7] = v8;
      v74[8] = v8;
      v74[5] = v8;
      v74[6] = v8;
      v74[3] = v8;
      v74[4] = v8;
      v74[1] = v8;
      v74[2] = v8;
      v74[0] = v8;
      *&__str_16[32] = 0;
      *__str_16 = v8;
      *&__str_16[16] = v8;
      __str = v8;
      memset(v59, 0, sizeof(v59));
      sub_100074920(v58, &v62);
      v68 = 0uLL;
      *&v69 = 0;
      memset(v57, 0, sizeof(v57));
      v9 = sub_10092DB68((a1 + 48), v6 + 24, v58, &v68, v57, v59, v74, &__str);
      v51[0] = v57;
      sub_1000087B4(v51);
      v51[0] = &v68;
      sub_10027B2AC(v51);
      sub_100009970(v58, v58[1]);
      if (v9)
      {
        v68 = 0uLL;
        if (*&__str_16[24] != 0)
        {
          v10 = __str_16[7];
          if (__str_16[7] < 0)
          {
            v10 = *(&__str + 1);
          }

          if (v10)
          {
            v51[0] = &__str_16[24];
            v11 = sub_100289074((a1 + 120), &__str_16[24], &unk_101802C98, v51);
            std::string::operator=(v11 + 2, &__str);
          }
        }

        v12 = v66;
        if (v66 >= v67)
        {
          v14 = sub_10027D444(&v65, &__str);
        }

        else
        {
          if ((__str_16[7] & 0x80000000) != 0)
          {
            sub_100005F2C(v66, __str, *(&__str + 1));
          }

          else
          {
            v13 = __str;
            *(v66 + 2) = *__str_16;
            *v12 = v13;
          }

          v15 = *&__str_16[8];
          *(v12 + 40) = *&__str_16[24];
          *(v12 + 24) = v15;
          v14 = (v12 + 56);
        }

        v66 = v14;
        __dst = 0uLL;
        v56 = 0;
        if ((v75[31] & 0x80000000) != 0)
        {
          sub_100005F2C(&__dst, *&v75[8], *&v75[16]);
        }

        else
        {
          __dst = *&v75[8];
          v56 = *&v75[24];
        }

        v16 = HIBYTE(v56);
        if (v56 >= 0)
        {
          v17 = HIBYTE(v56);
        }

        else
        {
          v17 = *(&__dst + 1);
        }

        if (!v17)
        {
          goto LABEL_32;
        }

        v18 = *(a1 + 391);
        v19 = v18;
        if ((v18 & 0x80u) != 0)
        {
          v18 = *(a1 + 376);
        }

        if (v17 != v18 || (v56 >= 0 ? (p_dst = &__dst) : (p_dst = __dst), v19 >= 0 ? (v21 = (a1 + 368)) : (v21 = *(a1 + 368)), memcmp(p_dst, v21, v17)))
        {
LABEL_32:
          v81 = *(v6 + 48);
          v22 = a3[1];
          if (v22 >= a3[2])
          {
            v23 = sub_1007F6488(a3, v74);
          }

          else
          {
            sub_1007F6414(a3, v74);
            v23 = v22 + 408;
          }

          a3[1] = v23;
          memset(&v54, 0, sizeof(v54));
          sub_1003162A0(v74, &v54);
          size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
          v25 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
          if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v54.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            v52 = 0;
            v53[0] = 0;
            v53[1] = 0;
            sub_1003162E0(v74, &v52);
            v26 = v52;
            if (v52 != v53)
            {
              do
              {
                v51[0] = (v26 + 4);
                v27 = sub_100173F08((a1 + 312), v26 + 4, &unk_101802C98, v51, &__p);
                std::string::operator=((v27 + 7), &v54);
                v28 = v26[1];
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
                    v29 = v26[2];
                    v30 = *v29 == v26;
                    v26 = v29;
                  }

                  while (!v30);
                }

                v26 = v29;
              }

              while (v29 != v53);
            }

            v31 = *(v6 + 32);
            if (v31 != *(v6 + 24))
            {
              memset(v51, 0, sizeof(v51));
              PB::Reader::Reader(v51, *(v6 + 24), v31 - *(v6 + 24));
              v70 = 0u;
              v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              sub_1006E0F18(&v68);
              sub_1006E1534(&v68, v51);
              ctu::hex();
              v32 = std::string::append(&v46, "\n\n", 2uLL);
              v33 = *&v32->__r_.__value_.__l.__data_;
              v47.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
              *&v47.__r_.__value_.__l.__data_ = v33;
              v32->__r_.__value_.__l.__size_ = 0;
              v32->__r_.__value_.__r.__words[2] = 0;
              v32->__r_.__value_.__r.__words[0] = 0;
              PB::Base::formattedText(v44, &v68);
              if ((v45 & 0x80u) == 0)
              {
                v34 = v44;
              }

              else
              {
                v34 = v44[0];
              }

              if ((v45 & 0x80u) == 0)
              {
                v35 = v45;
              }

              else
              {
                v35 = v44[1];
              }

              v36 = std::string::append(&v47, v34, v35);
              v37 = *&v36->__r_.__value_.__l.__data_;
              v48.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
              *&v48.__r_.__value_.__l.__data_ = v37;
              v36->__r_.__value_.__l.__size_ = 0;
              v36->__r_.__value_.__r.__words[2] = 0;
              v36->__r_.__value_.__r.__words[0] = 0;
              v38 = std::string::append(&v48, "\n\n", 2uLL);
              v39 = *&v38->__r_.__value_.__l.__data_;
              v50 = v38->__r_.__value_.__r.__words[2];
              __p = v39;
              v38->__r_.__value_.__l.__size_ = 0;
              v38->__r_.__value_.__r.__words[2] = 0;
              v38->__r_.__value_.__r.__words[0] = 0;
              if (v50 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p;
              }

              if (v50 >= 0)
              {
                v41 = HIBYTE(v50);
              }

              else
              {
                v41 = *(&__p + 1);
              }

              std::string::append(&v60, p_p, v41);
              if (SHIBYTE(v50) < 0)
              {
                operator delete(__p);
              }

              if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v48.__r_.__value_.__l.__data_);
              }

              if (v45 < 0)
              {
                operator delete(v44[0]);
              }

              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v47.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v46.__r_.__value_.__l.__data_);
              }

              sub_1006E1008(&v68);
            }

            sub_100009970(&v52, v53[0]);
            v25 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
          }

          if (v25 < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          v16 = HIBYTE(v56);
        }

        if (v16 < 0)
        {
          operator delete(__dst);
        }
      }

      *&v68 = v59;
      sub_10027B454(&v68);
      if ((__str_16[7] & 0x80000000) != 0)
      {
        operator delete(__str);
      }

      sub_100111C2C(v74);
      v6 += 56;
      v8 = 0uLL;
    }

    while (v6 != v7);
  }

  sub_10000501C(v42, "Manatee_DownloadData_");
  sub_10092C778((a1 + 48), v42, &v60, &v65);
  if (v43 < 0)
  {
    operator delete(v42[0]);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  sub_100009970(&v62, v63);
  *&v74[0] = &v65;
  sub_10027E27C(v74);
}

void sub_1007F6128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  sub_100009970(&a65, a66);
  STACK[0x250] = &a67;
  sub_10027E27C(&STACK[0x250]);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F62E8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 344);
  *a2 = *(result + 336);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1007F6318(uint64_t a1)
{
  sub_1007F6718(a1);

  operator delete();
}

void sub_1007F6358(uint64_t a1)
{
  sub_1007F6718(a1 - 8);

  operator delete();
}

uint64_t sub_1007F6394(uint64_t a1)
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

double sub_1007F6414(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  sub_10031A3B0(v4, a2);
  sub_10027F834((v4 + 248), (a2 + 248));
  result = *(a2 + 400);
  *(v4 + 400) = result;
  *(a1 + 8) = v4 + 408;
  return result;
}

void sub_1007F6468(_Unwind_Exception *a1)
{
  sub_1003A371C(v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t sub_1007F6488(void *a1, uint64_t a2)
{
  v2 = 0xFAFAFAFAFAFAFAFBLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xA0A0A0A0A0A0A0)
  {
    sub_1000CE3D4();
  }

  if (0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xF5F5F5F5F5F5F5F6 * ((a1[2] - *a1) >> 3);
  }

  if (0xFAFAFAFAFAFAFAFBLL * ((a1[2] - *a1) >> 3) >= 0x50505050505050)
  {
    v6 = 0xA0A0A0A0A0A0A0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10079C3B0(a1, v6);
  }

  v13 = 0;
  v14 = 408 * v2;
  v15 = 408 * v2;
  sub_10031A3B0((408 * v2), a2);
  sub_10027F834((408 * v2 + 248), (a2 + 248));
  *(v14 + 400) = *(a2 + 400);
  *&v15 = v15 + 408;
  v7 = a1[1];
  v8 = v14 + *a1 - v7;
  sub_1007F65F4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1007F66C8(&v13);
  return v12;
}

void sub_1007F65D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1003A371C(v7);
  sub_1007F66C8(va);
  _Unwind_Resume(a1);
}

void sub_1007F65F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = sub_10031A3B0((a4 + v7), v6 + v7);
      sub_10027F834(v8 + 248, (v6 + v7 + 248));
      *(a4 + v7 + 400) = *(v6 + v7 + 400);
      v7 += 408;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      sub_100111C2C(v6);
      v6 += 408;
    }
  }
}

void sub_1007F668C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 408;
    v5 = -v2;
    do
    {
      v4 = sub_100111C2C(v4) - 408;
      v5 += 408;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007F66C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 408;
    sub_100111C2C(i - 408);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1007F6718(uint64_t a1)
{
  *a1 = off_101E816A8;
  *(a1 + 8) = &off_101E817D8;
  if (*(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  v2 = *(a1 + 360);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1000DD0AC(a1 + 312, *(a1 + 320));
  sub_100045B14(a1 + 288, *(a1 + 296));
  sub_100077CD4(a1 + 264, *(a1 + 272));
  v4 = *(a1 + 256);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1005AC00C(a1);
}

uint64_t *sub_1007F67E0(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        memset(v17, 0, sizeof(v17));
        sub_1005F1008(v17, *(v1 + 24), *(v1 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(v1 + 32) - *(v1 + 24)) >> 5));
        sub_1005BF6A0(v3, v17);
        v15 = v17;
        sub_1005C0EBC(&v15);
        v6 = *(v3 + 152);
        if (v6)
        {
          v7 = std::__shared_weak_count::lock(v6);
          if (v7)
          {
            v8 = v7;
            v9 = *(v3 + 144);
            if (v9)
            {
              v16[0] = 0;
              v16[1] = 0;
              v15 = v16;
              v10 = *(v1 + 24);
              v11 = *(v1 + 32);
              while (v10 != v11)
              {
                sub_100005BA0(&v15, v10, v10);
                v10 += 12;
              }

              (*(*v9 + 64))(v9, &v15, *(v1 + 48));
              sub_100009970(&v15, v16[0]);
            }

            sub_100004A34(v8);
          }
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_1007F6984(&v14);
  return sub_1000049E0(&v13);
}

void sub_1007F692C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12)
{
  sub_100009970(&a11, a12);
  sub_100004A34(v13);
  sub_100004A34(v12);
  sub_1007F6984(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007F6984(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v3 = (v1 + 24);
    sub_1005C0EBC(&v3);
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1007F69F0(const std::string **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1->__r_.__value_.__r.__words[2];
  if (v2)
  {
    v3 = v1->__r_.__value_.__r.__words[0];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (v1->__r_.__value_.__l.__size_)
      {
        sub_1005BCB80(v3, v1 + 1);
      }

      sub_100004A34(v5);
    }
  }

  sub_1007F6A8C(&v8);
  return sub_1000049E0(&v7);
}

void sub_1007F6A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_1007F6A8C(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007F6A8C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1002030AC((v1 + 88));
    sub_10002D760((v1 + 80));
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_1007F6BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007F6CAC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E818D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1007F6CEC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F6D38(uint64_t *a1, xpc_object_t *a2)
{
  sub_1007F6DB4(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_1007F6DB4(uint64_t a1, xpc_object_t *a2)
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

  sub_100045B14(a1, *(a1 + 8));
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

    sub_100008EA4(&v9, object, 0);
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

    sub_100008EA4(v8, object, count);
    xpc_release(object[0]);
    for (i = v10; i != v8[1] || v9 != v8[0]; i = ++v10)
    {
      v7 = 0;
      object[0] = &v9;
      object[1] = i;
      sub_10003EAD4(object, &v7);
      if (xpc_get_type(v7) == &_xpc_type_dictionary)
      {
        v13 = 0;
        *object = 0u;
        *__p = 0u;
        v6 = v7;
        if (v7)
        {
          xpc_retain(v7);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1007F709C(object, &v6);
        xpc_release(v6);
        sub_1007F7234(a1, object, object);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }
      }

      xpc_release(v7);
    }

    xpc_release(v8[0]);
    xpc_release(v9);
  }

  xpc_release(v3);
}

void sub_1007F6FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1007F709C(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v7 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v7 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    __p = &v7;
    v11 = "first";
    sub_100006354(&__p, object);
    ctu::rest::detail::read_raw_binary_value(a1, 0x10, object, v4);
    xpc_release(object[0]);
    v5[0] = &v7;
    v5[1] = "second";
    sub_100006354(v5, &v6);
    __p = 0;
    v11 = 0;
    v12 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 16) = *object;
    *(a1 + 32) = v9;
    xpc_release(v6);
    v3 = v7;
  }

  xpc_release(v3);
}

void sub_1007F71D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F7234(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = 0;
  v3 = *sub_100175454(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_1007F73B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1007F7468(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E81950;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1007F74A0(void *a1, xpc_object_t *a2)
{
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  sub_100645F00(&v6, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  v3(v5, &v6);
  sub_1000DD0AC(&v6, v7[0]);
}

uint64_t sub_1007F7550(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F759C(uint64_t a1, uint64_t a2)
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

void *sub_1007F7634(void *a1)
{
  *a1 = off_101E819D0;
  sub_1007F6394((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007F7684(void *a1)
{
  *a1 = off_101E819D0;
  sub_1007F6394((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1007F777C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007F779C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E819D0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_1007F759C(a2 + 32, a1 + 32);
}

void sub_1007F7808(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007F7828(char *a1)
{
  sub_1007F7B8C((a1 + 8));

  operator delete(a1);
}

void sub_1007F7864(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 1);
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v8 = *(a1 + 8);
  v10 = v8;
  v7 = *(a1 + 24);
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v5;
  v13 = 0uLL;
  v14 = 0;
  sub_10045B0C8(&v13, v4, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v4) >> 3));
  sub_1007F759C(&v15, a1 + 32);
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (v8 + 16));
  operator new();
}

void sub_1007F7A70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1007F7AC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F7B0C(uint64_t a1, uint64_t a2)
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

void sub_1007F7B8C(uint64_t a1)
{
  sub_1007F6394(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *sub_1007F7BD8(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        if (*(v1 + 24))
        {
          v9 = 0;
          v10 = 0;
          v11 = 0;
          sub_1007F5B18(v3, (v1 + 32), &v9);
          sub_10010E44C(v1 + 56, &v9, 0);
          v12 = &v9;
        }

        else
        {
          if (os_log_type_enabled(*(v3 + 48), OS_LOG_TYPE_ERROR))
          {
            sub_1017802D8();
          }

          v9 = 0;
          v10 = 0;
          v11 = 0;
          sub_10010E44C(v1 + 56, &v9, 1);
          v12 = &v9;
        }

        sub_100111BA8(&v12);
      }

      sub_100004A34(v5);
    }
  }

  sub_1007F7D00(&v8);
  return sub_1000049E0(&v7);
}

void sub_1007F7CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_100111BA8(&a14);
  sub_100004A34(v14);
  sub_1007F7D00(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1007F7D00(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1007F6394(v1 + 56);
    v3 = (v1 + 32);
    sub_10027B3D0(&v3);
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

double sub_1007F7D74(uint64_t a1)
{
  *a1 = off_101E81A50;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_1007F7DA4(uint64_t a1)
{
  *a1 = off_101E81A50;
  v4 = *(a1 + 32);
  v2 = (a1 + 32);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  sub_100140928((a1 + 24), 0);
  sub_100140928((a1 + 16), 0);
  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    sub_100140988(a1 + 8, v5);
  }

  PB::Base::~Base(a1);
}

void sub_1007F7E34(uint64_t a1)
{
  sub_1007F7DA4(a1);

  operator delete();
}

uint64_t sub_1007F7E6C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 44))
  {
    PB::TextFormatter::format(this, "consentState", *(a1 + 40));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    PB::TextFormatter::format(this, "sourceCsn", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "targetCsn", v6);
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007F7F2C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_57;
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            operator new();
          case 4:
            *(a1 + 44) |= 1u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v32 = 0;
              v33 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v34 = v23 - v24;
              if (!v17)
              {
                v34 = 0;
              }

              v35 = (v25 + v24);
              v36 = v24 + 1;
              while (1)
              {
                if (!v34)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_52;
                }

                v37 = *v35;
                *(this + 1) = v36;
                v28 |= (v37 & 0x7F) << v32;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                --v34;
                ++v35;
                ++v36;
                v14 = v33++ > 8;
                if (v14)
                {
LABEL_48:
                  LODWORD(v28) = 0;
                  goto LABEL_52;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_48;
                }
              }
            }

LABEL_52:
            *(a1 + 40) = v28;
            goto LABEL_53;
          case 5:
            operator new();
        }
      }

      if (!PB::Reader::skip(this, v22, v10 & 7, 0))
      {
        v39 = 0;
        return v39 & 1;
      }

LABEL_53:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_57:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1007F82EC(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if (v5)
  {
    result = PB::Writer::write(this, v5, 2u);
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 44))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 40), 4u);
  }

  if (*(v3 + 32))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_1007F8390(uint64_t result)
{
  *result = off_101E81AA0;
  *(result + 8) = 0;
  *(result + 20) = 0;
  return result;
}

void sub_1007F83B4(void ***a1)
{
  *a1 = off_101E81AA0;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007F840C(void ***a1)
{
  *a1 = off_101E81AA0;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1007F8478(uint64_t a1, uint64_t a2)
{
  *a1 = off_101E81AA0;
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 20))
  {
    v2 = *(a2 + 16);
    *(a1 + 20) |= 1u;
    *(a1 + 16) = v2;
  }

  return a1;
}

uint64_t sub_1007F8544(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 20))
  {
    PB::TextFormatter::format(this, "userConsent", *(a1 + 16));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007F85BC(uint64_t a1, PB::Reader *this)
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
            goto LABEL_50;
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
      if ((v10 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_45;
            }

            v37 = *v35;
            *(this + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_41:
              LODWORD(v28) = 0;
              goto LABEL_45;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_45:
        *(a1 + 16) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_50:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1007F8878(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v5, 2u);
  }

  return result;
}

uint64_t sub_1007F88E0(uint64_t a1, os_log_t *a2)
{
  v3 = sub_10018A6D0(a1, a2);
  *v3 = &off_101E81AF0;
  *(v3 + 192) = 0u;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  v4 = **(v3 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10178030C(v4);
  }

  return a1;
}

uint64_t sub_1007F8954(uint64_t a1)
{
  *a1 = &off_101E2DE48;
  v3 = (a1 + 168);
  sub_1000087B4(&v3);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v3 = (a1 + 88);
  sub_1000087B4(&v3);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = off_101EA6458;
  sub_10018D34C(a1 + 16);
  return a1;
}

uint64_t sub_1007F8A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10018A758(a1, a2);
  *v4 = &off_101E81AF0;
  *(v4 + 192) = 0u;
  v5 = (v4 + 192);
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0u;
  std::string::operator=((v4 + 192), (a2 + 192));
  if (a1 != a2)
  {
    sub_1001122C4((a1 + 216), *(a2 + 216), *(a2 + 224), *(a2 + 224) - *(a2 + 216));
  }

  v6 = **(a1 + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = (*(*a1 + 32))(a1);
    v9 = v5;
    if (*(a1 + 215) < 0)
    {
      v9 = *v5;
    }

    ctu::hex();
    if (v12 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    v14 = v8;
    v15 = 2080;
    v16 = ", ";
    v17 = 2080;
    v18 = v9;
    v19 = 2080;
    v20 = p_p;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#D %s%scloned StandardDigestAuthScheme, nonce:%s, password:%s", buf, 0x2Au);
    if (v12 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1007F8BB4(_Unwind_Exception *a1)
{
  v4 = *(v1 + 216);
  if (v4)
  {
    *(v1 + 224) = v4;
    operator delete(v4);
  }

  if (*(v1 + 215) < 0)
  {
    operator delete(*v2);
  }

  sub_1007F8954(v1);
  _Unwind_Resume(a1);
}

BOOL sub_1007F8C38(uint64_t a1)
{
  v1 = *(a1 + 215);
  if (v1 < 0)
  {
    v1 = *(a1 + 200);
  }

  return v1 != 0;
}

uint64_t sub_1007F8C80(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1[1];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = ((*a1)[4])(a1);
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v13 = a4;
    }

    else
    {
      v13 = *a4;
    }

    v14 = 136316162;
    v15 = v10;
    v16 = 2080;
    v17 = ", ";
    v18 = 2080;
    v19 = v11;
    v20 = 2080;
    v21 = v12;
    v22 = 2080;
    v23 = v13;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#D %s%scomputeResponse, '%s', '%s', '%s'", &v14, 0x34u);
  }

  return sub_10018CA14(a1, a2, a3, a4, a1[27], (a1[28] - a1[27]));
}

uint64_t sub_1007F8DE0(uint64_t a1)
{
  *a1 = &off_101E81AF0;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  return sub_1007F8954(a1);
}

void sub_1007F8E50(uint64_t a1)
{
  *a1 = &off_101E81AF0;
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  *a1 = &off_101E2DE48;
  v3 = (a1 + 168);
  sub_1000087B4(&v3);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v3 = (a1 + 88);
  sub_1000087B4(&v3);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = off_101EA6458;
  sub_10018D34C(a1 + 16);
  operator delete();
}

uint64_t sub_1007F8FD4(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &off_101E81BA0;
  return result;
}

void sub_1007F8FFC(PB::Base *this)
{
  *this = &off_101E81BA0;
  v4 = *(this + 2);
  v2 = (this + 16);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5)
  {
    sub_100140988(this + 8, v5);
  }

  PB::Base::~Base(this);
}

void sub_1007F9074(PB::Base *a1)
{
  sub_1007F8FFC(a1);

  operator delete();
}

uint64_t sub_1007F90AC(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 28))
  {
    PB::TextFormatter::format(this, "error", *(a1 + 24));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007F913C(uint64_t a1, PB::Reader *this)
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
            goto LABEL_52;
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
        operator new();
      }

      if (v22 == 2)
      {
        *(a1 + 28) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v34 = v23 - v24;
          if (!v17)
          {
            v34 = 0;
          }

          v35 = (v25 + v24);
          v36 = v24 + 1;
          while (1)
          {
            if (!v34)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_47;
            }

            v37 = *v35;
            *(this + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            --v34;
            ++v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_43:
              LODWORD(v28) = 0;
              goto LABEL_47;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_43;
            }
          }
        }

LABEL_47:
        *(a1 + 24) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v39 = 0;
          return v39 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_52:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1007F945C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 28))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 24), 2u);
  }

  if (*(v3 + 16))
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_1007F94D8(uint64_t result)
{
  *result = off_101E81BF0;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1007F94FC(void ***a1)
{
  *a1 = off_101E81BF0;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007F9554(void ***a1)
{
  *a1 = off_101E81BF0;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1007F95C0(uint64_t a1, PB::TextFormatter *this, char *a3)
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

uint64_t sub_1007F9654(uint64_t a1, PB::Reader *this)
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

uint64_t sub_1007F995C(uint64_t result, PB::Writer *this)
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

uint64_t sub_1007F99DC(uint64_t result)
{
  *result = off_101E81C40;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1007F9A00(void ***a1)
{
  *a1 = off_101E81C40;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1007F9A58(void ***a1)
{
  *a1 = off_101E81C40;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1007F9AC4(uint64_t a1, PB::TextFormatter *this, char *a3)
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

uint64_t sub_1007F9B58(uint64_t a1, PB::Reader *this)
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

uint64_t sub_1007F9E60(uint64_t result, PB::Writer *this)
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

uint64_t sub_1007F9EE0(uint64_t result)
{
  *(result + 40) = 0;
  *result = &off_101E81C90;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1007F9F08(PB::Base *this)
{
  *this = &off_101E81C90;
  v4 = *(this + 3);
  v2 = (this + 24);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5)
  {
    sub_100140988(this + 16, v5);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    sub_100140988(this + 8, v6);
  }

  PB::Base::~Base(this);
}

void sub_1007F9F94(PB::Base *a1)
{
  sub_1007F9F08(a1);

  operator delete();
}

uint64_t sub_1007F9FCC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &off_101E81C90;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  if (*(a2 + 40))
  {
    v2 = *(a2 + 32);
    *(a1 + 40) = 1;
    *(a1 + 32) = v2;
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  if ((*(a2 + 40) & 2) != 0)
  {
    v3 = *(a2 + 36);
    *(a1 + 40) |= 2u;
    *(a1 + 36) = v3;
  }

  return a1;
}

uint64_t sub_1007FA1A4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "status", *(a1 + 32));
    v5 = *(a1 + 40);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "type", *(a1 + 36));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007FA268(uint64_t a1, PB::Reader *this)
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
            goto LABEL_75;
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
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          *(a1 + 40) |= 1u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v41 = 0;
            v42 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v43 = v32 - v33;
            if (!v17)
            {
              v43 = 0;
            }

            v44 = (v34 + v33);
            v45 = v33 + 1;
            while (1)
            {
              if (!v43)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_67;
              }

              v46 = *v44;
              *(this + 1) = v45;
              v37 |= (v46 & 0x7F) << v41;
              if ((v46 & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              --v43;
              ++v44;
              ++v45;
              v14 = v42++ > 8;
              if (v14)
              {
LABEL_54:
                LODWORD(v37) = 0;
                goto LABEL_67;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v37) = 0;
            }
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            while (1)
            {
              *(this + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
              if (v14)
              {
                goto LABEL_54;
              }
            }
          }

LABEL_67:
          *(a1 + 32) = v37;
          goto LABEL_71;
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
            *(a1 + 40) |= 2u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v47 = 0;
              v48 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v49 = v23 - v24;
              if (!v17)
              {
                v49 = 0;
              }

              v50 = (v25 + v24);
              v51 = v24 + 1;
              while (1)
              {
                if (!v49)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_70;
                }

                v52 = *v50;
                *(this + 1) = v51;
                v28 |= (v52 & 0x7F) << v47;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v47 += 7;
                --v49;
                ++v50;
                ++v51;
                v14 = v48++ > 8;
                if (v14)
                {
LABEL_62:
                  LODWORD(v28) = 0;
                  goto LABEL_70;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_62;
                }
              }
            }

LABEL_70:
            *(a1 + 36) = v28;
            goto LABEL_71;
        }
      }

      if (!PB::Reader::skip(this, v22, v10 & 7, 0))
      {
        v54 = 0;
        return v54 & 1;
      }

LABEL_71:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_75:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_1007FA6D8(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 40))
  {
    result = PB::Writer::writeVarInt(this, *(result + 32), 1u);
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    result = PB::Writer::write();
  }

  if ((*(v3 + 40) & 2) != 0)
  {
    v4 = *(v3 + 36);

    return PB::Writer::writeVarInt(this, v4, 5u);
  }

  return result;
}

double sub_1007FA780(uint64_t a1)
{
  *a1 = off_101E81CE0;
  *(a1 + 76) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  return result;
}

void sub_1007FA7B8(uint64_t a1)
{
  *a1 = off_101E81CE0;
  v4 = *(a1 + 64);
  v2 = (a1 + 64);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v5)
  {
    sub_100140988(a1 + 56, v5);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6)
  {
    sub_100140988(a1 + 48, v6);
  }

  v8 = (a1 + 24);
  sub_1000087B4(&v8);
  sub_100140928((a1 + 16), 0);
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v7)
  {
    sub_100140988(a1 + 8, v7);
  }

  PB::Base::~Base(a1);
}

void sub_1007FA870(uint64_t a1)
{
  sub_1007FA7B8(a1);

  operator delete();
}

uint64_t sub_1007FA8A8(uint64_t a1, uint64_t a2)
{
  *a1 = off_101E81CE0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 76) = 0;
  *(a1 + 40) = 0u;
  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 64))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    operator new();
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (a1 != a2)
  {
    sub_100008234((a1 + 24), *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  }

  v4 = *(a2 + 76);
  if ((v4 & 2) != 0)
  {
    v5 = *(a2 + 73);
    *(a1 + 76) |= 2u;
    *(a1 + 73) = v5;
    v4 = *(a2 + 76);
  }

  if (v4)
  {
    v6 = *(a2 + 72);
    *(a1 + 76) |= 1u;
    *(a1 + 72) = v6;
  }

  return a1;
}

uint64_t sub_1007FAB80(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  if (*(a1 + 76))
  {
    PB::TextFormatter::format(this, "forceUserConsent", *(a1 + 72));
  }

  v6 = *(a1 + 24);
  for (i = *(a1 + 32); v6 != i; v6 += 24)
  {
    PB::TextFormatter::format();
  }

  if ((*(a1 + 76) & 2) != 0)
  {
    PB::TextFormatter::format(this, "localErrorRecovery", *(a1 + 73));
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 56))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 64))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007FACB4(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    v7 = (a1 + 24);
    do
    {
      v8 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v16 = 0;
        v17 = 0;
        v11 = 0;
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = (v8 + v2);
        v21 = v2 + 1;
        while (1)
        {
          if (!v19)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_64;
          }

          v22 = *v20;
          *(this + 1) = v21;
          v11 |= (v22 & 0x7F) << v16;
          if ((v22 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          --v19;
          ++v20;
          ++v21;
          v15 = v17++ > 8;
          if (v15)
          {
LABEL_18:
            v11 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v11 = 0;
        }
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = (v8 + v2);
        v13 = v2 + 1;
        while (1)
        {
          *(this + 1) = v13;
          v14 = *v12++;
          v11 |= (v14 & 0x7F) << v9;
          if ((v14 & 0x80) == 0)
          {
            break;
          }

          v9 += 7;
          ++v13;
          v15 = v10++ > 8;
          if (v15)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v11 & 7) == 4))
      {
        break;
      }

      v23 = v11 >> 3;
      if ((v11 >> 3) > 5)
      {
        if (v23 > 7)
        {
          if (v23 == 8)
          {
            *(a1 + 76) |= 2u;
            v31 = *(this + 1);
            if (v31 >= *(this + 2))
            {
              v34 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v32 = v31 + 1;
              v33 = *(*this + v31);
              *(this + 1) = v32;
              v34 = v33 != 0;
            }

            *(a1 + 73) = v34;
            goto LABEL_42;
          }

          if (v23 == 9)
          {
            *(a1 + 76) |= 1u;
            v27 = *(this + 1);
            if (v27 >= *(this + 2))
            {
              v30 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v28 = v27 + 1;
              v29 = *(*this + v27);
              *(this + 1) = v28;
              v30 = v29 != 0;
            }

            *(a1 + 72) = v30;
            goto LABEL_42;
          }
        }

        else
        {
          if (v23 == 6)
          {
            operator new();
          }

          if (v23 == 7)
          {
            v24 = *(a1 + 32);
            v25 = *(a1 + 40);
            if (v24 >= v25)
            {
              v35 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v7) >> 3);
              v36 = v35 + 1;
              if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                sub_1000CE3D4();
              }

              v37 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *v7) >> 3);
              if (2 * v37 > v36)
              {
                v36 = 2 * v37;
              }

              if (v37 >= 0x555555555555555)
              {
                v38 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v38 = v36;
              }

              v47[4] = v7;
              if (v38)
              {
                sub_100005348(v7, v38);
              }

              v39 = 24 * v35;
              *v39 = 0;
              *(v39 + 8) = 0;
              *(v39 + 16) = 0;
              v26 = 24 * v35 + 24;
              v40 = *(a1 + 24);
              v41 = *(a1 + 32) - v40;
              v42 = 24 * v35 - v41;
              memcpy((v39 - v41), v40, v41);
              v43 = *(a1 + 24);
              *(a1 + 24) = v42;
              *(a1 + 32) = v26;
              v44 = *(a1 + 40);
              *(a1 + 40) = 0;
              v47[2] = v43;
              v47[3] = v44;
              v47[0] = v43;
              v47[1] = v43;
              sub_1000054E0(v47);
            }

            else
            {
              *v24 = 0;
              v24[1] = 0;
              v26 = (v24 + 3);
              v24[2] = 0;
            }

            *(a1 + 32) = v26;
            PB::Reader::read();
            goto LABEL_42;
          }
        }
      }

      else if (v23 > 3)
      {
        if (v23 == 4)
        {
          operator new();
        }

        if (v23 == 5)
        {
          operator new();
        }
      }

      else
      {
        if (v23 == 1)
        {
          operator new();
        }

        if (v23 == 3)
        {
          operator new();
        }
      }

      if (!PB::Reader::skip(this, v23, v11 & 7, 0))
      {
        v46 = 0;
        return v46 & 1;
      }

LABEL_42:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_64:
  v46 = v4 ^ 1;
  return v46 & 1;
}

uint64_t sub_1007FB1A0(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  if (*(v3 + 64))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 56))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 48))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  while (v5 != v6)
  {
    result = PB::Writer::write();
    v5 += 24;
  }

  v7 = *(v3 + 76);
  if ((v7 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 73), 8u);
    v7 = *(v3 + 76);
  }

  if (v7)
  {
    v8 = *(v3 + 72);

    return PB::Writer::write(this, v8, 9u);
  }

  return result;
}

double sub_1007FB2A0(uint64_t a1)
{
  *a1 = off_101E81D30;
  *(a1 + 68) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_1007FB2D4(uint64_t a1)
{
  *a1 = off_101E81D30;
  v4 = (a1 + 24);
  sub_100140868(&v4);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    sub_100140988(a1 + 16, v2);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    sub_100140988(a1 + 8, v3);
  }

  PB::Base::~Base(a1);
}

void sub_1007FB35C(uint64_t a1)
{
  sub_1007FB2D4(a1);

  operator delete();
}

uint64_t sub_1007FB394(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 68);
  if (v5)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 48));
    v5 = *(a1 + 68);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "gsmaSgp22Version", *(a1 + 52));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 16))
  {
    PB::TextFormatter::format();
  }

  v6 = *(a1 + 68);
  if ((v6 & 4) != 0)
  {
    PB::TextFormatter::format(this, "pendingInstallStatus", *(a1 + 56));
    v6 = *(a1 + 68);
    if ((v6 & 8) == 0)
    {
LABEL_11:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a1 + 68) & 8) == 0)
  {
    goto LABEL_11;
  }

  PB::TextFormatter::format(this, "radio_sku", *(a1 + 60));
  if ((*(a1 + 68) & 0x10) != 0)
  {
LABEL_12:
    PB::TextFormatter::format(this, "simAllianceProfileVersion", *(a1 + 64));
  }

LABEL_13:
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, this, "slotInfo");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007FB4F4(uint64_t a1, PB::Reader *this)
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
            goto LABEL_137;
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
      if ((v10 >> 3) > 5)
      {
        if (v22 > 7)
        {
          if (v22 == 8)
          {
            *(a1 + 68) |= 2u;
            v60 = *(this + 1);
            v59 = *(this + 2);
            v61 = *this;
            if (v60 > 0xFFFFFFFFFFFFFFF5 || v60 + 10 > v59)
            {
              v74 = 0;
              v75 = 0;
              v64 = 0;
              v17 = v59 >= v60;
              v76 = v59 - v60;
              if (!v17)
              {
                v76 = 0;
              }

              v77 = (v61 + v60);
              v78 = v60 + 1;
              while (1)
              {
                if (!v76)
                {
                  LODWORD(v64) = 0;
                  *(this + 24) = 1;
                  goto LABEL_123;
                }

                v79 = *v77;
                *(this + 1) = v78;
                v64 |= (v79 & 0x7F) << v74;
                if ((v79 & 0x80) == 0)
                {
                  break;
                }

                v74 += 7;
                --v76;
                ++v77;
                ++v78;
                v14 = v75++ > 8;
                if (v14)
                {
LABEL_88:
                  LODWORD(v64) = 0;
                  goto LABEL_123;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v64) = 0;
              }
            }

            else
            {
              v62 = 0;
              v63 = 0;
              v64 = 0;
              v65 = (v61 + v60);
              v66 = v60 + 1;
              while (1)
              {
                *(this + 1) = v66;
                v67 = *v65++;
                v64 |= (v67 & 0x7F) << v62;
                if ((v67 & 0x80) == 0)
                {
                  break;
                }

                v62 += 7;
                ++v66;
                v14 = v63++ > 8;
                if (v14)
                {
                  goto LABEL_88;
                }
              }
            }

LABEL_123:
            *(a1 + 52) = v64;
            goto LABEL_133;
          }

          if (v22 == 9)
          {
            *(a1 + 68) |= 0x10u;
            v42 = *(this + 1);
            v41 = *(this + 2);
            v43 = *this;
            if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
            {
              v92 = 0;
              v93 = 0;
              v46 = 0;
              v17 = v41 >= v42;
              v94 = v41 - v42;
              if (!v17)
              {
                v94 = 0;
              }

              v95 = (v43 + v42);
              v96 = v42 + 1;
              while (1)
              {
                if (!v94)
                {
                  LODWORD(v46) = 0;
                  *(this + 24) = 1;
                  goto LABEL_132;
                }

                v97 = *v95;
                *(this + 1) = v96;
                v46 |= (v97 & 0x7F) << v92;
                if ((v97 & 0x80) == 0)
                {
                  break;
                }

                v92 += 7;
                --v94;
                ++v95;
                ++v96;
                v14 = v93++ > 8;
                if (v14)
                {
LABEL_112:
                  LODWORD(v46) = 0;
                  goto LABEL_132;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v46) = 0;
              }
            }

            else
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
              v47 = (v43 + v42);
              v48 = v42 + 1;
              while (1)
              {
                *(this + 1) = v48;
                v49 = *v47++;
                v46 |= (v49 & 0x7F) << v44;
                if ((v49 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                ++v48;
                v14 = v45++ > 8;
                if (v14)
                {
                  goto LABEL_112;
                }
              }
            }

LABEL_132:
            *(a1 + 64) = v46;
            goto LABEL_133;
          }
        }

        else
        {
          if (v22 == 6)
          {
            operator new();
          }

          if (v22 == 7)
          {
            *(a1 + 68) |= 8u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v80 = 0;
              v81 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v82 = v23 - v24;
              if (!v17)
              {
                v82 = 0;
              }

              v83 = (v25 + v24);
              v84 = v24 + 1;
              while (1)
              {
                if (!v82)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_126;
                }

                v85 = *v83;
                *(this + 1) = v84;
                v28 |= (v85 & 0x7F) << v80;
                if ((v85 & 0x80) == 0)
                {
                  break;
                }

                v80 += 7;
                --v82;
                ++v83;
                ++v84;
                v14 = v81++ > 8;
                if (v14)
                {
LABEL_96:
                  LODWORD(v28) = 0;
                  goto LABEL_126;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_96;
                }
              }
            }

LABEL_126:
            *(a1 + 60) = v28;
            goto LABEL_133;
          }
        }
      }

      else if (v22 > 3)
      {
        if (v22 == 4)
        {
          *(a1 + 68) |= 1u;
          v51 = *(this + 1);
          v50 = *(this + 2);
          v52 = *this;
          if (v51 > 0xFFFFFFFFFFFFFFF5 || v51 + 10 > v50)
          {
            v68 = 0;
            v69 = 0;
            v55 = 0;
            v17 = v50 >= v51;
            v70 = v50 - v51;
            if (!v17)
            {
              v70 = 0;
            }

            v71 = (v52 + v51);
            v72 = v51 + 1;
            while (1)
            {
              if (!v70)
              {
                LODWORD(v55) = 0;
                *(this + 24) = 1;
                goto LABEL_120;
              }

              v73 = *v71;
              *(this + 1) = v72;
              v55 |= (v73 & 0x7F) << v68;
              if ((v73 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              --v70;
              ++v71;
              ++v72;
              v14 = v69++ > 8;
              if (v14)
              {
LABEL_80:
                LODWORD(v55) = 0;
                goto LABEL_120;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v55) = 0;
            }
          }

          else
          {
            v53 = 0;
            v54 = 0;
            v55 = 0;
            v56 = (v52 + v51);
            v57 = v51 + 1;
            while (1)
            {
              *(this + 1) = v57;
              v58 = *v56++;
              v55 |= (v58 & 0x7F) << v53;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v53 += 7;
              ++v57;
              v14 = v54++ > 8;
              if (v14)
              {
                goto LABEL_80;
              }
            }
          }

LABEL_120:
          *(a1 + 48) = v55;
          goto LABEL_133;
        }

        if (v22 == 5)
        {
          *(a1 + 68) |= 4u;
          v33 = *(this + 1);
          v32 = *(this + 2);
          v34 = *this;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v86 = 0;
            v87 = 0;
            v37 = 0;
            v17 = v32 >= v33;
            v88 = v32 - v33;
            if (!v17)
            {
              v88 = 0;
            }

            v89 = (v34 + v33);
            v90 = v33 + 1;
            while (1)
            {
              if (!v88)
              {
                LODWORD(v37) = 0;
                *(this + 24) = 1;
                goto LABEL_129;
              }

              v91 = *v89;
              *(this + 1) = v90;
              v37 |= (v91 & 0x7F) << v86;
              if ((v91 & 0x80) == 0)
              {
                break;
              }

              v86 += 7;
              --v88;
              ++v89;
              ++v90;
              v14 = v87++ > 8;
              if (v14)
              {
LABEL_104:
                LODWORD(v37) = 0;
                goto LABEL_129;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v37) = 0;
            }
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            while (1)
            {
              *(this + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v14 = v36++ > 8;
              if (v14)
              {
                goto LABEL_104;
              }
            }
          }

LABEL_129:
          *(a1 + 56) = v37;
          goto LABEL_133;
        }
      }

      else
      {
        if (v22 == 2)
        {
          operator new();
        }

        if (v22 == 3)
        {
          sub_1007E22A8((a1 + 24));
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v99 = 0;
        return v99 & 1;
      }

LABEL_133:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_137:
  v99 = v4 ^ 1;
  return v99 & 1;
}

uint64_t sub_1007FBC80(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 8))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6, 3u);
  }

  v7 = *(v3 + 68);
  if (v7)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 48), 4u);
    v7 = *(v3 + 68);
  }

  if ((v7 & 4) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 56), 5u);
  }

  if (*(v3 + 16))
  {
    result = PB::Writer::write();
  }

  v8 = *(v3 + 68);
  if ((v8 & 8) == 0)
  {
    if ((*(v3 + 68) & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_17:
    result = PB::Writer::writeVarInt(this, *(v3 + 52), 8u);
    if ((*(v3 + 68) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_18;
  }

  result = PB::Writer::writeVarInt(this, *(v3 + 60), 7u);
  v8 = *(v3 + 68);
  if ((v8 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  if ((v8 & 0x10) == 0)
  {
    return result;
  }

LABEL_18:
  v9 = *(v3 + 64);

  return PB::Writer::writeVarInt(this, v9, 9u);
}

void sub_1007FBD98(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v8 = v3;
  v4 = [v3 dataUsingEncoding:4];
  v5 = [v4 bytes];
  v6 = [v8 length];
  v7 = v6;
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v6;
  if (v6)
  {
    memmove(a2, v5, v6);
  }

  v7[a2] = 0;
}

id sub_1007FBEB4(uint64_t *a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3)];
  v3 = *a1;
  if (a1[1] != *a1)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = (v3 + 24 * v4);
      if (*(v6 + 23) >= 0)
      {
        v7 = v6;
      }

      else
      {
        v7 = *v6;
      }

      v8 = [NSString stringWithUTF8String:v7];
      [v2 setObject:v8 atIndexedSubscript:v4];

      v4 = v5;
      v3 = *a1;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v5++);
  }

  return v2;
}

void sub_1007FC188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10001021C(&a9);

  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v19);

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::handleWebPushConnected(WebPushControllerImpl *this, char a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, this + 1);
  operator new();
}

void sub_1007FC468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_100004A34(v23);

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::handleURLTokenUpdate(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v5, *a2, *(a2 + 1));
  }

  else
  {
    *v5 = *a2;
    v5[2] = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 2);
  }

  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_1007FC688(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v17);
  }

  sub_10004F058(a1);
}

void sub_1007FC7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v23);

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::handleURLTokenError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    v8 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  v11 = a4;
  v12[0] = 0;
  v12[1] = 0;
  sub_100004AA0(v12, (a1 + 8));
  operator new();
}

void sub_1007FCA20(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  sub_10004F058(a1);
}

void sub_1007FCB38(_Unwind_Exception *a1)
{
  sub_100004A34(v3);

  _Unwind_Resume(a1);
}

void WebPushControllerImpl::handlePublicTokenUpdate(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void WebPushController::WebPushController(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v5, kCtLoggingSystemName, "apns.webpush");
  sub_1000F0604(v4, "WebPushController", QOS_CLASS_USER_INITIATED, &v5);
  ctu::OsLogContext::~OsLogContext(&v5);
  *a1 = off_101E81FE0;
  sub_1008005D4();
}

void sub_1007FCD14(_Unwind_Exception *a1)
{
  ctu::OsLogLogger::~OsLogLogger((v1 + 40));
  sub_1000C0544(v2);
  WebPushControllerInterface::~WebPushControllerInterface(v1);
  _Unwind_Resume(a1);
}

void WebPushController::~WebPushController(WebPushController *this)
{
  *this = off_101E81FE0;
  v2 = *(this + 7);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);

  WebPushControllerInterface::~WebPushControllerInterface(this);
}

{
  WebPushController::~WebPushController(this);

  operator delete();
}

void WebPushController::create(uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void sub_1007FCF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a12)
  {
    sub_101760EE4(a12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebPushControllerImpl::WebPushControllerImpl(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t *a4)
{
  v8 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v18, kCtLoggingSystemName, "apns.webpush");
  sub_1001303E4(v8, a2, &v18);
  ctu::OsLogContext::~OsLogContext(&v18);
  *a1 = off_101E82028;
  *(a1 + 48) = *a3;
  v9 = *(a3 + 8);
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "WebPushController");
  v10 = *(a1 + 24);
  v15 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  ctu::RestModule::RestModule();
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v17 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v11 = *a4;
  v12 = *(a3 + 8);
  v18.var0 = *a3;
  v18.var1.fRef = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 24))(v11, &v18);
  if (v18.var1.fRef)
  {
    sub_100004A34(v18.var1.fRef);
  }

  *(a1 + 112) = *a4;
  v13 = a4[1];
  *(a1 + 120) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 208) = 0;
  *(a1 + 216) = 1;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  return a1;
}

void sub_1007FD160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  v22 = v19[11];
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v19[9];
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = v19[7];
  if (v24)
  {
    sub_100004A34(v24);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 5));
  sub_1000C0544(v20);
  WebPushListenerInterface::~WebPushListenerInterface(v19);
  _Unwind_Resume(a1);
}

void WebPushControllerImpl::dumpState_sync(WebPushControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 224))
    {
      v3 = "";
    }

    else
    {
      v3 = "NOT ";
    }

    *buf = 136315138;
    v34 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I APSd connection: %sconnected", buf, 0xCu);
    v2 = *(this + 5);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(this + 17) enabledTopics];
    v5 = [v4 count];
    *buf = 134217984;
    v34 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Listening to %zu webpush topics", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [*(this + 17) enabledTopics];
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v9 = *v28;
    *&v8 = 138543362;
    v22 = v8;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(this + 5);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(&v27 + 1) + 8 * i);
          *buf = v22;
          v34 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Persisted webpush topic[enabled]: %{public}@", buf, 0xCu);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  v13 = *(this + 5);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(this + 17) ignoredTopics];
    v15 = [v14 count];
    *buf = 134217984;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Ignoring %zu webpush topics", buf, 0xCu);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = [*(this + 17) ignoredTopics];
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(this + 5);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(*(&v23 + 1) + 8 * j);
          *buf = 138543362;
          v34 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Persisted webpush topic[ignored]: %{public}@", buf, 0xCu);
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }
}

void WebPushControllerImpl::~WebPushControllerImpl(WebPushControllerImpl *this)
{
  *this = off_101E82028;
  v2 = *(this + 29);
  *(this + 29) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1002FED80(this + 184);
  sub_100800A28(this + 144);

  v3 = *(this + 15);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    sub_100004A34(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);

  WebPushListenerInterface::~WebPushListenerInterface(this);
}

{
  WebPushControllerImpl::~WebPushControllerImpl(this);

  operator delete();
}

void WebPushControllerImpl::bootstrap_sync(WebPushControllerImpl *this)
{
  Registry::createRestModuleOneTimeUseConnection(&v3, *(this + 6));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  v2[0] = WebPushControllerImpl::dumpState_sync;
  v2[1] = 0;
  sub_100800AA8(this + 64, this, v2);
}

void sub_1007FD754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007FD76C(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_100800D00(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void WebPushControllerImpl::startup_sync(WebPushControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting WebPush connection", buf, 2u);
  }

  v3 = [APSDelegate alloc];
  sub_100004AA0(&v14, this + 1);
  if (v14)
  {
    *buf = v14;
    v17 = v15;
    v4 = &v14;
  }

  else
  {
    v4 = buf;
  }

  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = v17;
  v18 = *buf;
  v19 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = [(APSDelegate *)v3 initWithPushController:&v18];
  v7 = *(this + 16);
  *(this + 16) = v6;

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  v8 = *(this + 14);
  v9 = APSEnvironmentProduction;
  v10 = *(this + 3);
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = (*(*v8 + 16))(v8, v9, @"com.apple.aps.CommCenter.webpush", &object);
  v12 = *(this + 17);
  *(this + 17) = v11;

  if (object)
  {
    dispatch_release(object);
  }

  [*(this + 17) setDelegate:*(this + 16)];
  WebPushControllerImpl::initIdsServerBagPoller_sync(this);
}

void sub_1007FD950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void WebPushControllerImpl::initIdsServerBagPoller_sync(WebPushControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing IDS Server Bag poller", buf, 2u);
  }

  v4 = this;
  v5 = 0;
  *buf = off_101E82438;
  v6 = buf;
  sub_1008014DC(this + 1, buf);
}

void sub_1007FDB68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_10002B644(&a18);
  _Unwind_Resume(a1);
}

uint64_t WebPushControllerImpl::shutdown_sync(WebPushControllerImpl *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Shutting down WebPush connection", v5, 2u);
  }

  v3 = *(this + 17);
  if (v3)
  {
    [v3 shutdown];
  }

  return ctu::RestModule::disconnect((this + 64));
}

void WebPushController::notifyServiceBootstrap(WebPushController *this, const group *a2)
{
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, this + 1);
  operator new();
}

void WebPushController::notifyServiceStart(WebPushController *this)
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

void WebPushController::notifyServiceShutdown(NSObject *a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, &a1[1].isa);
  operator new();
}

void WebPushController::registerObserver(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void WebPushController::deregisterObserver(WebPushController *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void WebPushController::subscribe(uint64_t a1, uint64_t a2, uint64_t a3, char a4, std::__shared_weak_count **a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v10, *a2, *(a2 + 8));
  }

  else
  {
    *v10 = *a2;
    v11 = *(a2 + 16);
  }

  memset(__p, 0, sizeof(__p));
  sub_100034C50(__p, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  v13 = a4;
  v9 = a5[1];
  v14[0] = *a5;
  v14[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15[0] = 0;
  v15[1] = 0;
  sub_100004AA0(v15, (a1 + 8));
  operator new();
}

void sub_1007FE2F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  sub_10004F058(a1);
}

void WebPushController::unsubscribe(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v5, *a2, *(a2 + 1));
  }

  else
  {
    *v5 = *a2;
    v5[2] = *(a2 + 2);
  }

  memset(__p, 0, sizeof(__p));
  sub_100034C50(__p, *a3, *(a3 + 8), *(a3 + 8) - *a3);
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_1007FE4CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 31) < 0)
  {
    operator delete(*v17);
  }

  sub_10004F058(a1);
}

void WebPushController::ignoreAllPushTopics(WebPushController *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void WebPushControllerImpl::checkPushEnabled_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Check PushEnabled called", buf, 2u);
  }

  v3 = 0;
  v4 = 0;
  *buf = "WebPushController";
  sub_100801D28();
}