void sub_274305CD4(unsigned int *a1, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3)
{
  awd::SimpleMetricHelper::makeSimpleMetric((a1 + 52), a2, &v5);
  if (v5)
  {
    sub_2743056E0(a1, &v5);
    v4 = v5;
    v5 = 0;
    if (v4)
    {
      sub_2742F0E58(&v5, v4);
    }
  }
}

void sub_274305D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = a10;
  a10 = 0;
  if (v11)
  {
    sub_2742F0E58(&a10, v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_274305D50(unsigned int *a1, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_2742ECE78(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v8 = *(a3 + 16);
  }

  awd::SimpleMetricHelper::makeSimpleMetric((a1 + 52), a2, &v6);
  if (v6)
  {
    sub_2743056E0(a1, &v6);
    v5 = v6;
    v6 = 0;
    if (v5)
    {
      sub_2742F0E58(&v6, v5);
    }
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_274305DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v17 = a10;
  a10 = 0;
  if (v17)
  {
    sub_2742F0E58(&a10, v17);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_274305E34(uint64_t a1, unsigned int **a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*(a1 + 4) == 1)
  {
    v4 = *(a1 + 360);
    if (!v4)
    {
      operator new();
    }

    v6 = v4[1];
    v5 = v4[2];
    if (v6 >= v5)
    {
      v9 = *v4;
      v10 = v6 - *v4;
      v11 = (v10 >> 3) + 1;
      if (v11 >> 61)
      {
        sub_2742EAB3C();
      }

      v12 = v5 - v9;
      if (v12 >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
      v14 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v13)
      {
        v14 = v11;
      }

      v24 = *(a1 + 360);
      if (v14)
      {
        sub_2742E9C40(v4, v14);
      }

      v15 = (8 * (v10 >> 3));
      v16 = *a2;
      *a2 = 0;
      *v15 = v16;
      v8 = v15 + 1;
      memcpy(0, v9, v10);
      v17 = *v4;
      *v4 = 0;
      *&v21 = v17;
      *(&v21 + 1) = v17;
      v4[1] = v8;
      v22 = v17;
      v18 = v4[2];
      v4[2] = 0;
      v23 = v18;
      sub_2742E9C88(&v21);
    }

    else
    {
      v7 = *a2;
      *a2 = 0;
      *v6 = v7;
      v8 = v6 + 1;
    }

    v4[1] = v8;
    v19 = **(a1 + 16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = (*(*(a1 + 360) + 8) - **(a1 + 360)) >> 3;
      LODWORD(v21) = 134217984;
      *(&v21 + 4) = v20;
      _os_log_impl(&dword_2742E7000, v19, OS_LOG_TYPE_INFO, "core:#I Configuration not ready yet; buffering a metric until we get it (%zd total buffered)", &v21, 0xCu);
    }
  }

  else
  {

    sub_2743056E0(a1, a2);
  }
}

uint64_t sub_274306070(os_log_t **a1, unsigned int *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_2743063B8(a1, *a2, v13);
  v5 = v13[0];
  if (v13[0])
  {
    awd::AWDTriggerFilter::profileIdForTriggerId((a1 + 3), HIDWORD(v14), &v11);
    v6 = v11;
    v7 = v12;
    if (v11 != v12)
    {
      v8 = v14;
      v9 = v15;
      do
      {
        v2 = v2 & 0xFFFFFFFF00000000 | v9;
        awd::AWDMetricBuffer::pushMetricToDaemon((a1 + 10), v8, v2, *v6++, *a1, a2);
      }

      while (v6 != v7);
      v6 = v11;
    }

    if (v6)
    {
      v12 = v6;
      operator delete(v6);
    }
  }

  else if (os_log_type_enabled(*a1[2], OS_LOG_TYPE_DEBUG))
  {
    sub_27431C848();
  }

  return v5 ^ 1u;
}

void sub_2743061AC(uint64_t a1, unint64_t a2, int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  object = dispatch_group_create();
  awd::AWDMetricBuffer::trigger((a1 + 80), a2, a3, &object);
  v6 = HIDWORD(a2);
  awd::AWDTriggerFilter::getQueriableMetricsForTrigger((a1 + 24), HIDWORD(a2), &__p);
  v7 = __p;
  v8 = v16;
  v9 = **(a1 + 16);
  if (__p == v16)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_27431C8C0();
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v19 = (v8 - v7) >> 2;
    v20 = 1024;
    v21 = HIDWORD(a2);
    _os_log_impl(&dword_2742E7000, v9, OS_LOG_TYPE_INFO, "core:#I setExpectedMetricsForTrigger found %zd queriable metrics for trigger 0x%x", buf, 0x12u);
  }

  v10 = *(a1 + 296);
  for (i = *(a1 + 304); v10 != i; v10 += 2)
  {
    v12 = v10[1];
    if (v12)
    {
      v13 = std::__shared_weak_count::lock(v12);
      if (v13)
      {
        v14 = v13;
        if (*v10)
        {
          v6 = v6 & 0xFFFFFFFF00000000 | a3;
          sub_274306490(a1, *v10, a2, v6, &object, &__p);
        }

        sub_2742E8DB8(v14);
      }
    }
  }

  awd::AWDMetricBuffer::finishSubmissionToDaemon(a1 + 80, a2, a3, *a1, &object);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_2743063B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 328);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = a1 + 328;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 328 && *(v5 + 32) <= a2)
  {
    v10 = *(v5 + 48);
    v11 = *(v5 + 40);
    sub_274308FFC((a1 + 320), v5);
    sub_274308738(v5 + 32);
    operator delete(v5);
    *(a3 + 4) = v11;
    *(a3 + 12) = v10;
    v9 = 1;
  }

  else
  {
LABEL_16:
    if (os_log_type_enabled(**(a1 + 16), OS_LOG_TYPE_DEBUG))
    {
      sub_27431C940();
    }

    v9 = 0;
  }

  *a3 = v9;
}

void sub_274306490(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4, NSObject **a5, unsigned int **a6)
{
  awd::ServerConnectionInfo::trigger_sync(a2, a3, a4, a6, __p);
  v10 = *a5;
  v11 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  sub_274306688(a1, a3, a4, &v11, __p);
  if (v10)
  {
    dispatch_release(v10);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_27430652C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    dispatch_release(v9);
  }

  sub_27431C9B4(va);
  _Unwind_Resume(a1);
}

void sub_27430654C(uint64_t a1, unint64_t a2, int a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = HIDWORD(a2);
  isMetricSetAsTrigger = awd::AWDTriggerFilter::isMetricSetAsTrigger((a1 + 24), HIDWORD(a2));
  v8 = *(a1 + 16);
  v9 = *v8;
  if (isMetricSetAsTrigger)
  {
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v10 = 67109376;
      v11 = v6;
      v12 = 1024;
      v13 = a2;
      _os_log_impl(&dword_2742E7000, v9, OS_LOG_TYPE_INFO, "core:#I Got expected trigger 0x%x from component 0x%x", &v10, 0xEu);
    }

    sub_2743061AC(a1, a2, a3);
  }

  else if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 67109376;
    v11 = v6;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_2742E7000, v9, OS_LOG_TYPE_DEFAULT, "core:#E Got Unexpected trigger 0x%x from component 0x%x", &v10, 0xEu);
  }
}

void sub_274306688(uint64_t a1, uint64_t a2, int a3, NSObject **a4, int **a5)
{
  if (*a5 != a5[1])
  {
    v18 = **a5;
    v15 = a2;
    v16 = a3;
    v10 = *a4;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    sub_274308E90(a1 + 320, &v18, &v15);
  }

  v11 = *(a1 + 352);
  if (v11)
  {
    v12 = std::__shared_weak_count::lock(v11);
    if (v12)
    {
      v13 = *(a1 + 344);
      if (v13 && *a5 != a5[1])
      {
        v18 = **a5;
        v15 = a2;
        v16 = a3;
        v14 = *a4;
        object = v14;
        if (v14)
        {
          dispatch_retain(v14);
        }

        sub_274308E90(v13 + 8, &v18, &v15);
      }

      sub_2742E8DB8(v12);
    }
  }
}

void sub_27430679C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_2742E8DB8(v11);
  _Unwind_Resume(a1);
}

void sub_2743067D0(uint64_t a1, int a2)
{
  v2 = *(a1 + 296);
  for (i = *(a1 + 304); v2 != i; v2 += 16)
  {
    v5 = *(v2 + 8);
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = v6;
        if (a2 == 1)
        {
          if (*v2)
          {
            awd::ServerConnectionInfo::handleNotificationTimer24h_sync(*v2);
          }
        }

        sub_2742E8DB8(v7);
      }
    }
  }
}

uint64_t *sub_274306854(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_2743093F0(v2 + 16, *(v2 + 24));

    JUMPOUT(0x2743E9A90);
  }

  return result;
}

void sub_274306A30(void *a1@<X8>)
{
  std::mutex::lock(&qword_280AC1048);
  v2 = *(&xmmword_280AC0FE0 + 1);
  *a1 = xmmword_280AC0FE0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  std::mutex::unlock(&qword_280AC1048);
}

void sub_274306B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_274306B68(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_274306B84(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

void sub_274306CB4(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_2742E8DB8(v3);
  }

  sub_27431C9E0((v5 + 8), (v4 + 8));
  MEMORY[0x2743E9A90](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_274306CE4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = sub_27430961C(v2);
    MEMORY[0x2743E9A90](v3, 0x10F0C40B57F0170);
  }

  return a1;
}

void sub_274306D2C(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 != a2)
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9[0] = 67109376;
      v9[1] = v2;
      v10 = 1024;
      v11 = a2;
      _os_log_impl(&dword_2742E7000, v5, OS_LOG_TYPE_INFO, "core:#I DeviceConfigurationId changing from %d to %d; marking clients as needing config", v9, 0xEu);
    }

    *(a1 + 56) = a2;
    v6 = *(a1 + 104);
    for (i = *(a1 + 112); v6 != i; *(v8 + 4) = 1)
    {
      v8 = *v6++;
    }
  }
}

void sub_274306E10(void *a1, int a2, int a3, uint64_t *a4)
{
  v4 = a4[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_2742E8D20(&v5, a1);
  operator new();
}

void sub_274306F14(void *a1, int a2, unint64_t a3, int a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a1[13];
  v7 = a1[14];
  if (v6 != v7)
  {
    while (**v6 != a2)
    {
      if (++v6 == v7)
      {
        goto LABEL_10;
      }
    }
  }

  if (v6 == v7 || (v8 = *v6) == 0)
  {
LABEL_10:
    v9 = a1[4];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109632;
      v10[1] = a3;
      v11 = 1024;
      v12 = HIDWORD(a3);
      v13 = 1024;
      v14 = a4;
      _os_log_impl(&dword_2742E7000, v9, OS_LOG_TYPE_DEFAULT, "core:#E Got Unexpected Trigger(cid=0x%x, trid=0x%x, sid=%u) (no component config!)", v10, 0x14u);
    }
  }

  else
  {

    sub_27430654C(v8, a3, a4);
  }
}

void sub_274307328(void *a1, xpc_object_t *a2, int a3)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  sub_2742E8D20(&v4, a1);
  operator new();
}

void *sub_2743075F8(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.awd.framework", a4);
  return a1;
}

void *sub_274307698(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    sub_2742E8DB8(v2);
  }

  v8 = (a1 + 13);
  sub_27430A020(&v8);
  v3 = a1[12];
  if (v3)
  {
    sub_2742E8DB8(v3);
  }

  v4 = a1[10];
  if (v4)
  {
    sub_2742E8DB8(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    sub_2742E8DB8(v6);
  }

  MEMORY[0x2743E9730](a1 + 4);
  return sub_2742ECDA8(a1);
}

void sub_27430771C(void *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_274307AE0, @"AWDD Started", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    if (os_log_type_enabled(a1[4], OS_LOG_TYPE_DEBUG))
    {
      sub_27431CA18();
    }
  }
}

void sub_274307790(void *a1)
{
  sub_2742E8D20(&v2, a1);
  v1 = *(&v2 + 1);
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    sub_2742E8DB8(v1);
  }

  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  awd::AWDServerFacade::create();
}

void sub_274307A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_weak(a36);
  }

  v39 = *(v37 - 112);
  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  v40 = *(v37 - 56);
  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_weak(v36);
  }

  _Unwind_Resume(exception_object);
}

void sub_274307AE0()
{
  sub_274306A30(&v1);
  if (v1)
  {
    sub_274307F40(v1);
  }

  v0 = v2;
  if (v2)
  {

    sub_2742E8DB8(v0);
  }
}

void sub_274307B34(void *a1, int a2, int a3, uint64_t *a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      if (a1[5])
      {
        v11 = *a4;
        v12 = a4[1];
        v13[0] = v11;
        v13[1] = v12;
        if (v12)
        {
          atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
          sub_274306E10(v9, a2, a3, v13);
        }

        sub_274306E10(v9, a2, a3, v13);
      }

      sub_2742E8DB8(v10);
    }
  }
}

uint64_t sub_274307C10(uint64_t result, uint64_t a2)
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

void sub_274307C2C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_274307C3C(void *a1, int a2, uint64_t a3, int a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      if (a1[5])
      {
        sub_274307058(v9, a2, a3, a4);
      }

      sub_2742E8DB8(v10);
    }
  }
}

void sub_274307CD4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        sub_274307150(v3);
      }

      sub_2742E8DB8(v4);
    }
  }
}

void sub_274307D48(void *a1, int a2, char a3, char a4, char a5)
{
  v6 = a1[6];
  if (v6)
  {
    v11 = a1[4];
    v12 = std::__shared_weak_count::lock(v6);
    if (v12)
    {
      if (a1[5])
      {
        sub_274307228(v11, a2, a3, a4, a5);
      }

      sub_2742E8DB8(v12);
    }
  }
}

void sub_274307DF4(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      if (a1[5])
      {
        v9 = *a2;
        v10 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v10 = xpc_null_create();
        }

        sub_274307328(v7, &v10, a3);
      }

      sub_2742E8DB8(v8);
    }
  }
}

void sub_274307EC4(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        sub_274307448(v5, a2);
      }

      sub_2742E8DB8(v6);
    }
  }
}

void sub_274308020(awd *a1, awd **a2)
{
  if (*a2)
  {
    if (!*(*a2 + 1))
    {
      AWDTimestamp = awd::getAWDTimestamp(a1);
      v5 = *a2;
      *(v5 + 1) = AWDTimestamp;
      awd::maybeSetTimestamp(v5, v6);
    }

    *a2 = 0;
    sub_2742E8D20(&v7, a1);
    operator new();
  }
}

void sub_2743083D8(void *a1, int a2, uint64_t *a3)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = a3[1];
  *(v4 + 7) = *(a3 + 15);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_2742E8D20(&v3, a1);
  operator new();
}

void sub_27430851C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_2742EAB54(a1);
  }

  _Unwind_Resume(a1);
}

const void **sub_27430852C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_274308560(uint64_t a1)
{
  v4 = (a1 + 32);
  sub_2742F628C(&v4);
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2743085AC(uint64_t a1)
{
  sub_2742F9950(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743E9730);
}

const void **sub_2743085F8(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_27430862C(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **sub_274308664(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_274308698(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2743086EC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2743086EC(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  a1[1] = v2;
}

void sub_274308738(uint64_t a1)
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
}

void ***sub_274308788(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2;
    sub_2742F628C(&v3);
    return MEMORY[0x2743E9A90](v2, 0x20C40960023A9);
  }

  return result;
}

void sub_2743087DC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_274308830(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_274308830(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; sub_274308884(result, i))
  {
    i -= 40;
  }

  *(result + 8) = a2;
}

void sub_274308884(uint64_t a1, uint64_t a2)
{
  xpc_release(*(a2 + 32));
  *(a2 + 32) = 0;
  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

void sub_2743088FC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2883528A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

void sub_274308954(CFTypeRef ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        sub_2743089DC(v1, --v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_2743089DC(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

void sub_274308A00(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_2742ECF1C();
}

uint64_t sub_274308A48(CFTypeRef **a1, CFTypeRef *a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_2742EAB3C();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_274308A00(a1, v7);
  }

  v14 = 0;
  v15 = 8 * v2;
  sub_27430862C((8 * v2), *a2);
  v16 = (8 * v2 + 8);
  v8 = a1[1];
  v9 = (8 * v2 + *a1 - v8);
  sub_274308B54(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_274308C88(&v14);
  return v13;
}

void sub_274308B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_274308C88(va);
  _Unwind_Resume(a1);
}

uint64_t sub_274308B54(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3, CFTypeRef *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      *a4++ = *v7;
      *v7++ = 0;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      sub_2743089DC(a1, v5++);
    }
  }

  return sub_274308BFC(v9);
}

uint64_t sub_274308BFC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_274308C34(a1);
  }

  return a1;
}

void sub_274308C34(uint64_t *a1)
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
      sub_2743089DC(v5, --v3);
    }

    while (v3 != v4);
  }
}

void **sub_274308C88(void **a1)
{
  sub_274308CBC(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_274308CBC(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 8;
    sub_2743089DC(v4, (i - 8));
  }
}

uint64_t sub_274308D04(uint64_t a1, CFTypeRef *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 3;
  v3 = v2 + 1;
  if ((v2 + 1) >> 61)
  {
    sub_2742EAB3C();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 2 > v3)
  {
    v3 = v6 >> 2;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    v7 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_274308A00(a1, v7);
  }

  v14 = 0;
  v15 = (8 * v2);
  *(&v16 + 1) = 0;
  *v15 = 0;
  *(8 * v2) = *a2;
  *a2 = 0;
  *&v16 = 8 * v2 + 8;
  v8 = *(a1 + 8);
  v9 = (8 * v2 + *a1 - v8);
  sub_274308B54(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_274308C88(&v14);
  return v13;
}

void sub_274308E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_274308C88(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_274308E14(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_2742F9F9C(result, a4);
  }

  return result;
}

void sub_274308E74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_274308F70(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_274308738(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

dispatch_group_t *sub_274308FBC(dispatch_group_t *a1, NSObject **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    dispatch_retain(v3);
    if (*a1)
    {
      dispatch_group_enter(*a1);
    }
  }

  return a1;
}

uint64_t *sub_274308FFC(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_274309070(v6, a2);
  return v3;
}

uint64_t *sub_274309070(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void sub_2743093F0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2743093F0(a1, *a2);
    sub_2743093F0(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void sub_2743094CC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_2743095A0);
  __cxa_rethrow();
}

void sub_27430950C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

uint64_t sub_274309560(uint64_t a1, uint64_t a2)
{
  if (sub_2742F4D8C(a2, &unk_288352938))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_2743095A0(void *result)
{
  if (result)
  {
    sub_274307698(result);

    JUMPOUT(0x2743E9A90);
  }

  return result;
}

uint64_t sub_2743095F0(uint64_t result, uint64_t a2)
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

void sub_27430960C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_2742E8DB8(v1);
  }
}

uint64_t sub_27430961C(uint64_t a1)
{
  v2 = *(a1 + 416);
  if (v2)
  {
    sub_2742E8DB8(v2);
  }

  v3 = *(a1 + 400);
  if (v3)
  {
    CFRelease(v3);
  }

  v12 = (a1 + 376);
  sub_2743087DC(&v12);
  sub_274306854((a1 + 368), 0);
  sub_274308788((a1 + 360), 0);
  v4 = *(a1 + 352);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_2742E9494(a1 + 320, *(a1 + 328));
  v12 = (a1 + 296);
  sub_274308698(&v12);
  v5 = *(a1 + 288);
  if (v5)
  {
    sub_2742E8DB8(v5);
  }

  v6 = *(a1 + 272);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v12 = (a1 + 240);
  sub_2742F628C(&v12);
  v7 = *(a1 + 216);
  if (v7)
  {
    *(a1 + 224) = v7;
    operator delete(v7);
  }

  awd::AWDMetricBuffer::~AWDMetricBuffer((a1 + 80));
  sub_2742F9950(a1 + 56, *(a1 + 64));
  v8 = *(a1 + 48);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  MEMORY[0x2743E9730](a1 + 24);
  v9 = *(a1 + 8);
  if (v9)
  {
    dispatch_group_leave(v9);
    v10 = *(a1 + 8);
    if (v10)
    {
      dispatch_release(v10);
    }
  }

  return a1;
}

uint64_t sub_27430972C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_274306CE4((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_27430977C(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  sub_274306D2C(*v1, *(v1 + 8));
  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  if (v3 != v4)
  {
    while (**v3 != *(v1 + 12))
    {
      if (++v3 == v4)
      {
        goto LABEL_8;
      }
    }
  }

  if (v3 != v4 && *v3)
  {
    sub_274305464(*v3, (v1 + 16));
  }

LABEL_8:
  sub_27430982C(&v7);
  return sub_2742E8D64(&v6);
}

void sub_274309810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27430982C(va);
  sub_2742E8D64(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_27430982C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      sub_2742E8DB8(v3);
    }

    MEMORY[0x2743E9A90](v2, 0x1020C404161829ELL);
  }

  return a1;
}

uint64_t *sub_274309880(void ***a1)
{
  v3 = a1;
  v1 = *a1;
  sub_274306F14(**a1, *(v1 + 2), *(v1 + 12), *(v1 + 5));
  MEMORY[0x2743E9A90](v1, 0x1020C4024DAA5DELL);
  return sub_2742E8D64(&v3);
}

void sub_2743098EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2743E9A90](v4, v3);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27430990C(void **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = v2[4];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2742E7000, v3, OS_LOG_TYPE_INFO, "core:#I ==== BEGIN CLIENT STATE LOG ====", buf, 2u);
  }

  v4 = v2[13];
  for (i = v2[14]; v4 != i; ++v4)
  {
    v6 = v2[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = **v4;
      *buf = 67109120;
      v17 = v7;
      _os_log_impl(&dword_2742E7000, v6, OS_LOG_TYPE_INFO, "core:#I Component is 0x%x", buf, 8u);
    }

    awd::AWDTriggerFilter::debugLog(*v4 + 3);
    awd::AWDMetricBuffer::debugLog(*v4 + 10);
    v8 = *(*v4 + 37);
    v9 = *(*v4 + 38);
    while (v8 != v9)
    {
      v10 = v8[1];
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v11;
          if (*v8)
          {
            awd::AWDLoggingMetric::debugLog((*v8 + 48));
          }

          sub_2742E8DB8(v12);
        }
      }

      v8 += 2;
    }
  }

  v13 = v2[4];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2742E7000, v13, OS_LOG_TYPE_INFO, "core:#I ==== END CLIENT STATE LOG ====", buf, 2u);
  }

  MEMORY[0x2743E9A90](v1, 0x20C4093837F09);
  return sub_2742E8D64(&v15);
}

void sub_274309AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x2743E9A90](v7, 0x20C4093837F09, a3, a4);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_274309B30(void **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  v4 = v2[13];
  v5 = v2[14];
  v6 = v4 == v5;
  if (v3)
  {
    if (v4 != v5)
    {
      while (**v4 != v3)
      {
        if (++v4 == v5)
        {
          goto LABEL_12;
        }
      }
    }

    if (v4 == v5 || !*v4)
    {
LABEL_12:
      v7 = v2[4];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = v3;
        _os_log_impl(&dword_2742E7000, v7, OS_LOG_TYPE_DEFAULT, "core:#E Got Unexpected PII/Location callback for component 0x%x (no component config!)", buf, 8u);
      }
    }

    else
    {
      sub_2743053C4(*v4, *(v1 + 12), *(v1 + 13));
    }
  }

  else
  {
    while (!v6)
    {
      sub_2743053C4(*v4++, *(v1 + 12), *(v1 + 13));
      v6 = v4 == v5;
    }
  }

  MEMORY[0x2743E9A90](v1, 0x1020C4093AC423CLL);
  return sub_2742E8D64(&v9);
}

void sub_274309C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2743E9A90](v3, 0x1020C4093AC423CLL);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_274309CA8(uint64_t *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  value = xpc_dictionary_get_value(*(v1 + 8), "base");
  v4 = xpc_dictionary_get_value(*(v1 + 8), "component");
  if (value)
  {
    LazyMetadataLoader::setBaseMetadata(*(v2 + 128), value);
  }

  else
  {
    v5 = *(v2 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(v1 + 16);
      *buf = 67109120;
      v11 = v6;
      _os_log_impl(&dword_2742E7000, v5, OS_LOG_TYPE_INFO, "core:#I CoreAnalytics shim: No baseline metadata returned (processing metric with cid 0x%x)", buf, 8u);
    }
  }

  LazyMetadataLoader::setMetadataForComponent(*(v2 + 128), v4);
  sub_274309DD4(&v9);
  return sub_2742E8D64(&v8);
}

void sub_274309DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_274309DD4(va);
  sub_2742E8D64(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_274309DD4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x2743E9A90](v2, 0x10A0C4036B0EFECLL);
  }

  return a1;
}

uint64_t *sub_274309E2C(void **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = v2[13];
  for (i = v2[14]; v3 != i; ++v3)
  {
    v5 = *v3;
    v6 = **v3;
    if (v6 == 8 || v6 == 72 || v6 == 34)
    {
      v7 = v2[4];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(v1 + 2);
        *buf = 67109376;
        v12 = v8;
        v13 = 1024;
        v14 = v6;
        _os_log_impl(&dword_2742E7000, v7, OS_LOG_TYPE_INFO, "core:#I Timer(tid=0x%x) notification to clients of cid 0x%x", buf, 0xEu);
        v5 = *v3;
      }

      sub_2743067D0(v5, *(v1 + 2));
    }
  }

  MEMORY[0x2743E9A90](v1, 0x1020C403A5D3213);
  return sub_2742E8D64(&v10);
}

void sub_274309F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x2743E9A90](v7, 0x1020C403A5D3213, a3, a4);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

void sub_274309FC4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288352990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743E9A90);
}

void sub_27430A020(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_274306CE4(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_27430A130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2743E9A90](v3, 0x20C4093837F09);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27430A160(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  ComponentForMetricId = awd::getComponentForMetricId(**(v1 + 8));
  v4 = sub_2742E8FF8(v2, ComponentForMetricId);
  sub_274305E34(v4, (v1 + 8));
  sub_27430A1DC(&v7);
  return sub_2742E8D64(&v6);
}

void sub_27430A1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27430A1DC(va);
  sub_2742E8D64(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_27430A1DC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v3)
    {
      sub_2742F0E58(v2 + 8, v3);
    }

    MEMORY[0x2743E9A90](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

uint64_t *sub_27430A238(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  ComponentForMetricId = awd::getComponentForMetricId(*(*a1 + 2));
  v4 = sub_2742E8FF8(v2, ComponentForMetricId);
  sub_274305BDC(v4, *(v1 + 2));
  MEMORY[0x2743E9A90](v1, 0x1020C403A5D3213);
  return sub_2742E8D64(&v6);
}

void sub_27430A2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2743E9A90](v3, 0x1020C403A5D3213);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27430A2D0(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  ComponentForMetricId = awd::getComponentForMetricId(*(*a1 + 2));
  v4 = sub_2742E8FF8(v2, ComponentForMetricId);
  sub_274305C58(v4, *(v1 + 2), *(v1 + 12));
  MEMORY[0x2743E9A90](v1, 0x1020C4034E03FFCLL);
  return sub_2742E8D64(&v6);
}

void sub_27430A340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2743E9A90](v3, 0x1020C4034E03FFCLL);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27430A36C(uint64_t **a1)
{
  v6 = a1;
  v1 = *a1;
  v2 = **a1;
  ComponentForMetricId = awd::getComponentForMetricId(*(*a1 + 2));
  v4 = sub_2742E8FF8(v2, ComponentForMetricId);
  sub_274305CD4(v4, *(v1 + 2), v1[2]);
  MEMORY[0x2743E9A90](v1, 0x1020C40A122CEF7);
  return sub_2742E8D64(&v6);
}

void sub_27430A3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2743E9A90](v3, 0x1020C40A122CEF7);
  sub_2742E8D64(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_27430A408(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  ComponentForMetricId = awd::getComponentForMetricId(*(v1 + 8));
  v4 = sub_2742E8FF8(v2, ComponentForMetricId);
  sub_274305D50(v4, *(v1 + 8), v1 + 16);
  sub_27430A484(&v7);
  return sub_2742E8D64(&v6);
}

void sub_27430A468(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_27430A484(va);
  sub_2742E8D64(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_27430A484(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    MEMORY[0x2743E9A90](v2, 0x1032C40FADB2794);
  }

  return a1;
}

uint64_t awd::profile::protobuf_ShutdownFile_AwdProfile_2eproto(awd::profile *this)
{
  if (awd::profile::ProcessingRule::default_instance_)
  {
    (*(*awd::profile::ProcessingRule::default_instance_ + 8))(awd::profile::ProcessingRule::default_instance_);
  }

  if (awd::profile::BedfTreeNode::default_instance_)
  {
    (*(*awd::profile::BedfTreeNode::default_instance_ + 8))(awd::profile::BedfTreeNode::default_instance_);
  }

  if (awd::profile::BedfConfig::default_instance_)
  {
    (*(*awd::profile::BedfConfig::default_instance_ + 8))(awd::profile::BedfConfig::default_instance_);
  }

  if (awd::profile::Metric::default_instance_)
  {
    (*(*awd::profile::Metric::default_instance_ + 8))(awd::profile::Metric::default_instance_);
  }

  if (awd::profile::Profile::default_instance_)
  {
    (*(*awd::profile::Profile::default_instance_ + 8))(awd::profile::Profile::default_instance_);
  }

  if (awd::profile::LogParameter::default_instance_)
  {
    (*(*awd::profile::LogParameter::default_instance_ + 8))(awd::profile::LogParameter::default_instance_);
  }

  if (awd::profile::Log::default_instance_)
  {
    (*(*awd::profile::Log::default_instance_ + 8))(awd::profile::Log::default_instance_);
  }

  if (awd::profile::ConfigurationParameter::default_instance_)
  {
    (*(*awd::profile::ConfigurationParameter::default_instance_ + 8))(awd::profile::ConfigurationParameter::default_instance_);
  }

  if (awd::profile::ComponentConfiguration::default_instance_)
  {
    (*(*awd::profile::ComponentConfiguration::default_instance_ + 8))(awd::profile::ComponentConfiguration::default_instance_);
  }

  if (awd::profile::TimerSpec::default_instance_)
  {
    (*(*awd::profile::TimerSpec::default_instance_ + 8))(awd::profile::TimerSpec::default_instance_);
  }

  if (awd::profile::TypeVariant::default_instance_)
  {
    (*(*awd::profile::TypeVariant::default_instance_ + 8))(awd::profile::TypeVariant::default_instance_);
  }

  if (awd::profile::Condition::default_instance_)
  {
    (*(*awd::profile::Condition::default_instance_ + 8))(awd::profile::Condition::default_instance_);
  }

  if (awd::profile::ConditionClause::default_instance_)
  {
    (*(*awd::profile::ConditionClause::default_instance_ + 8))(awd::profile::ConditionClause::default_instance_);
  }

  if (awd::profile::TriggerSource::default_instance_)
  {
    (*(*awd::profile::TriggerSource::default_instance_ + 8))(awd::profile::TriggerSource::default_instance_);
  }

  if (awd::profile::TriggerProcessingRule::default_instance_)
  {
    (*(*awd::profile::TriggerProcessingRule::default_instance_ + 8))(awd::profile::TriggerProcessingRule::default_instance_);
  }

  if (awd::profile::AggregationSpec::default_instance_)
  {
    (*(*awd::profile::AggregationSpec::default_instance_ + 8))(awd::profile::AggregationSpec::default_instance_);
  }

  if (awd::profile::MetricFileSpec::default_instance_)
  {
    (*(*awd::profile::MetricFileSpec::default_instance_ + 8))(awd::profile::MetricFileSpec::default_instance_);
  }

  if (awd::profile::TaskingCriteria::default_instance_)
  {
    (*(*awd::profile::TaskingCriteria::default_instance_ + 8))(awd::profile::TaskingCriteria::default_instance_);
  }

  result = awd::profile::DeviceConfiguration::default_instance_;
  if (awd::profile::DeviceConfiguration::default_instance_)
  {
    v2 = *(*awd::profile::DeviceConfiguration::default_instance_ + 8);

    return v2();
  }

  return result;
}

double awd::profile::ProcessingRule::ProcessingRule(awd::profile::ProcessingRule *this)
{
  *this = &unk_2883529E0;
  *(this + 6) = 0;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

{
  *this = &unk_2883529E0;
  *(this + 6) = 0;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

double awd::profile::BedfTreeNode::BedfTreeNode(awd::profile::BedfTreeNode *this)
{
  *this = &unk_288352A58;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *&result = 0x100000000;
  *(this + 1) = 0x100000000;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return result;
}

{
  *this = &unk_288352A58;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *&result = 0x100000000;
  *(this + 1) = 0x100000000;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return result;
}

double awd::profile::BedfConfig::BedfConfig(awd::profile::BedfConfig *this)
{
  *this = &unk_288352AD0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

{
  *this = &unk_288352AD0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  return result;
}

double awd::profile::Metric::Metric(awd::profile::Metric *this)
{
  *this = &unk_288352B48;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  return result;
}

{
  *this = &unk_288352B48;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  return result;
}

double awd::profile::Profile::Profile(awd::profile::Profile *this)
{
  *this = &unk_288352BC0;
  *(this + 28) = 0;
  *(this + 116) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  *(this + 15) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  return result;
}

{
  *this = &unk_288352BC0;
  *(this + 28) = 0;
  *(this + 116) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  *(this + 15) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  return result;
}

void *awd::profile::LogParameter::LogParameter(void *this)
{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_288352C38;
  this[1] = v1;
  this[2] = v1;
  this[3] = 0;
  return this;
}

{
  v1 = MEMORY[0x277D82C30];
  *this = &unk_288352C38;
  this[1] = v1;
  this[2] = v1;
  this[3] = 0;
  return this;
}

uint64_t awd::profile::Log::Log(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288352CB0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288352CB0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double awd::profile::ConfigurationParameter::ConfigurationParameter(__n128 *this, __n128 a2)
{
  a2.n128_u64[0] = 0;
  v2 = MEMORY[0x277D82C30];
  this->n128_u64[0] = &unk_288352D28;
  this->n128_u64[1] = v2;
  this[1] = a2;
  return a2.n128_f64[0];
}

{
  a2.n128_u64[0] = 0;
  v2 = MEMORY[0x277D82C30];
  this->n128_u64[0] = &unk_288352D28;
  this->n128_u64[1] = v2;
  this[1] = a2;
  return a2.n128_f64[0];
}

uint64_t awd::profile::ComponentConfiguration::ComponentConfiguration(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288352DA0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 88) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288352DA0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 88) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  return this;
}

uint64_t awd::profile::TimerSpec::TimerSpec(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288352E18;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288352E18;
  *(this + 24) = 0;
  return this;
}

double awd::profile::TypeVariant::TypeVariant(awd::profile::TypeVariant *this)
{
  *this = &unk_288352E90;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  v2 = MEMORY[0x277D82C30];
  *(this + 44) = 0;
  *(this + 6) = v2;
  *(this + 7) = v2;
  *(this + 8) = 0;
  *(this + 18) = 0;
  return result;
}

{
  *this = &unk_288352E90;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  v2 = MEMORY[0x277D82C30];
  *(this + 44) = 0;
  *(this + 6) = v2;
  *(this + 7) = v2;
  *(this + 8) = 0;
  *(this + 18) = 0;
  return result;
}

uint64_t awd::profile::Condition::Condition(uint64_t this)
{
  *(this + 64) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288352F08;
  *(this + 21) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 48) = 0;
  *(this + 56) = v1;
  *(this + 29) = 0;
  return this;
}

{
  *(this + 64) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288352F08;
  *(this + 21) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  v1 = MEMORY[0x277D82C30];
  *(this + 48) = 0;
  *(this + 56) = v1;
  *(this + 29) = 0;
  return this;
}

uint64_t awd::profile::ConditionClause::ConditionClause(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288352F80;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288352F80;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double awd::profile::TriggerSource::TriggerSource(awd::profile::TriggerSource *this)
{
  *this = &unk_288352FF8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 6) = MEMORY[0x277D82C30];
  *(this + 7) = 0;
  return result;
}

{
  *this = &unk_288352FF8;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 6) = MEMORY[0x277D82C30];
  *(this + 7) = 0;
  return result;
}

double awd::profile::TriggerProcessingRule::TriggerProcessingRule(awd::profile::TriggerProcessingRule *this)
{
  *this = &unk_288353070;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

{
  *this = &unk_288353070;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  return result;
}

uint64_t awd::profile::AggregationSpec::AggregationSpec(uint64_t this)
{
  *(this + 8) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  *this = &unk_2883530E8;
  *(this + 24) = 0;
  return this;
}

{
  *(this + 8) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  *this = &unk_2883530E8;
  *(this + 24) = 0;
  return this;
}

double awd::profile::MetricFileSpec::MetricFileSpec(awd::profile::MetricFileSpec *this)
{
  *this = &unk_288353160;
  *&result = 0x100000000;
  *(this + 1) = 0x100000000;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  return result;
}

{
  *this = &unk_288353160;
  *&result = 0x100000000;
  *(this + 1) = 0x100000000;
  *(this + 4) = 0;
  *(this + 20) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  return result;
}

void *awd::profile::TaskingCriteria::TaskingCriteria(void *this)
{
  *this = &unk_2883531D8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2883531D8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t awd::profile::DeviceConfiguration::DeviceConfiguration(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288353250;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 168) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 192) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 200) = 0;
  *(this + 64) = MEMORY[0x277D82C30];
  *(this + 72) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 208) = 0;
  return this;
}

{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_288353250;
  *(this + 24) = 0;
  *(this + 40) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = 0;
  *(this + 168) = 0;
  *(this + 160) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 192) = 0;
  *(this + 32) = 0;
  *(this + 36) = 0;
  *(this + 200) = 0;
  *(this + 64) = MEMORY[0x277D82C30];
  *(this + 72) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 208) = 0;
  return this;
}

void awd::profile::ProcessingRule::InitAsDefaultInstance(awd::profile::ProcessingRule *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = awd::profile::ProcessingRule::default_instance_;
  if (!awd::profile::ProcessingRule::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this, a2, a3, a4);
    v5 = awd::profile::ProcessingRule::default_instance_;
  }

  *(this + 4) = v5;
}

void awd::profile::BedfTreeNode::InitAsDefaultInstance(awd::profile::BedfTreeNode *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = awd::profile::BedfTreeNode::default_instance_;
  if (awd::profile::BedfTreeNode::default_instance_)
  {
    *(this + 2) = awd::profile::BedfTreeNode::default_instance_;
  }

  else
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this, a2, a3, a4);
    v5 = awd::profile::BedfTreeNode::default_instance_;
    *(this + 2) = awd::profile::BedfTreeNode::default_instance_;
    if (!v5)
    {
      awd::profile::protobuf_AddDesc_AwdProfile_2eproto(v6, v7, v8, v9);
      v5 = awd::profile::BedfTreeNode::default_instance_;
    }
  }

  *(this + 3) = v5;
}

void awd::profile::BedfConfig::InitAsDefaultInstance(awd::profile::BedfConfig *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = awd::profile::BedfTreeNode::default_instance_;
  if (!awd::profile::BedfTreeNode::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this, a2, a3, a4);
    v5 = awd::profile::BedfTreeNode::default_instance_;
  }

  *(this + 2) = v5;
}

void awd::profile::Profile::InitAsDefaultInstance(awd::profile::Profile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = awd::profile::Log::default_instance_;
  if (!awd::profile::Log::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this, a2, a3, a4);
    v5 = awd::profile::Log::default_instance_;
  }

  *(this + 9) = v5;
}

void awd::profile::ConfigurationParameter::InitAsDefaultInstance(awd::profile::ConfigurationParameter *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = awd::profile::TypeVariant::default_instance_;
  if (!awd::profile::TypeVariant::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this, a2, a3, a4);
    v5 = awd::profile::TypeVariant::default_instance_;
  }

  *(this + 2) = v5;
}

void awd::profile::DeviceConfiguration::InitAsDefaultInstance(awd::profile::DeviceConfiguration *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v5 = awd::profile::TaskingCriteria::default_instance_;
  if (!awd::profile::TaskingCriteria::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(this, a2, a3, a4);
    v5 = awd::profile::TaskingCriteria::default_instance_;
  }

  *(this + 18) = v5;
}

double awd::profile::ProcessingRule::SharedCtor(awd::profile::ProcessingRule *this)
{
  *(this + 6) = 0;
  *(this + 11) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

uint64_t awd::profile::ProcessingRule::default_instance(awd::profile::ProcessingRule *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::ProcessingRule::default_instance_;
  if (!awd::profile::ProcessingRule::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::ProcessingRule::default_instance_;
  }

  return result;
}

awd::profile::ProcessingRule *awd::profile::ProcessingRule::ProcessingRule(awd::profile::ProcessingRule *this, const awd::profile::ProcessingRule *a2)
{
  *this = &unk_2883529E0;
  *(this + 6) = 0;
  *(this + 11) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  awd::profile::ProcessingRule::MergeFrom(this, a2);
  return this;
}

void awd::profile::ProcessingRule::MergeFrom(awd::profile::ProcessingRule *this, const awd::profile::ProcessingRule *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 52);
  if (!v4)
  {
    return;
  }

  if (*(a2 + 52))
  {
    v6 = *(a2 + 4);
    *(this + 13) |= 1u;
    *(this + 4) = v6;
    v4 = *(a2 + 13);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else if ((*(a2 + 52) & 2) == 0)
  {
    goto LABEL_6;
  }

  v7 = *(a2 + 1);
  *(this + 13) |= 2u;
  *(this + 1) = v7;
  v4 = *(a2 + 13);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(a2 + 3);
  *(this + 13) |= 4u;
  *(this + 3) = v8;
  v4 = *(a2 + 13);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v10 = *(a2 + 40);
    *(this + 13) |= 0x10u;
    *(this + 40) = v10;
    v4 = *(a2 + 13);
    if ((v4 & 0x20) == 0)
    {
LABEL_10:
      if ((v4 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_11;
    }

    goto LABEL_18;
  }

LABEL_16:
  v9 = *(a2 + 5);
  *(this + 13) |= 8u;
  *(this + 5) = v9;
  v4 = *(a2 + 13);
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((v4 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_18:
  *(this + 13) |= 0x20u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    v12 = *(awd::profile::ProcessingRule::default_instance_ + 32);
  }

  awd::profile::ProcessingRule::MergeFrom(v11, v12);
  if ((*(a2 + 13) & 0x40) != 0)
  {
LABEL_11:
    v5 = *(a2 + 11);
    *(this + 13) |= 0x40u;
    *(this + 11) = v5;
  }
}

void sub_27430B180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::ProcessingRule::~ProcessingRule(awd::profile::ProcessingRule *this)
{
  *this = &unk_2883529E0;
  if (awd::profile::ProcessingRule::default_instance_ != this)
  {
    v2 = *(this + 4);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::ProcessingRule::~ProcessingRule(this);

  JUMPOUT(0x2743E9A90);
}

void *awd::profile::ProcessingRule::SharedDtor(void *this)
{
  if (awd::profile::ProcessingRule::default_instance_ != this)
  {
    this = this[4];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t awd::profile::ProcessingRule::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 52);
  if (v2)
  {
    *(this + 40) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
    *(this + 8) = 0;
    if ((v2 & 0x20) != 0)
    {
      this = *(this + 32);
      if (this)
      {
        this = awd::profile::ProcessingRule::Clear(this);
      }
    }

    *(v1 + 44) = 0;
  }

  *(v1 + 52) = 0;
  return this;
}

uint64_t awd::profile::ProcessingRule::MergePartialFromCodedStream(awd::profile::ProcessingRule *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 0x11)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v15 = *(a2 + 1);
          v11 = *(a2 + 2);
          if (v15 >= v11 || (v16 = *v15, v16 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v17 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 4) = v16;
            v17 = (v15 + 1);
            *(a2 + 1) = v17;
          }

          *(this + 13) |= 1u;
          if (v11 - v17 >= 2 && *v17 == 128 && v17[1] == 1)
          {
            v19 = (v17 + 2);
            *(a2 + 1) = v19;
            goto LABEL_34;
          }
        }

        else
        {
          if (v7 != 16)
          {
            if (v7 != 17 || (TagFallback & 7) != 0)
            {
              goto LABEL_30;
            }

            v12 = *(a2 + 1);
            v11 = *(a2 + 2);
            goto LABEL_43;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_30;
          }

          v19 = *(a2 + 1);
          v11 = *(a2 + 2);
LABEL_34:
          if (v19 >= v11 || (v20 = *v19, v20 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v11 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v20;
            v21 = (v19 + 1);
            *(a2 + 1) = v21;
          }

          *(this + 13) |= 2u;
          if (v11 - v21 >= 2 && *v21 == 136 && v21[1] == 1)
          {
            v12 = (v21 + 2);
            *(a2 + 1) = v12;
LABEL_43:
            v39[0] = 0;
            if (v12 >= v11 || (v23 = *v12, (v23 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39);
              if (!result)
              {
                return result;
              }

              v23 = v39[0];
              v24 = *(a2 + 1);
              v11 = *(a2 + 2);
            }

            else
            {
              v24 = (v12 + 1);
              *(a2 + 1) = v24;
            }

            *(this + 40) = v23 != 0;
            v18 = *(this + 13) | 0x10;
            *(this + 13) = v18;
            if (v11 - v24 >= 2 && *v24 == 146 && v24[1] == 1)
            {
              *(a2 + 1) = v24 + 2;
              goto LABEL_52;
            }
          }
        }
      }

      if (TagFallback >> 3 > 0x13)
      {
        break;
      }

      if (v7 == 18)
      {
        if (v8 != 2)
        {
          goto LABEL_30;
        }

        v18 = *(this + 13);
LABEL_52:
        *(this + 13) = v18 | 0x20;
        v25 = *(this + 4);
        if (!v25)
        {
          operator new();
        }

        v39[0] = 0;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v39))
          {
            return 0;
          }
        }

        else
        {
          v39[0] = *v26;
          *(a2 + 1) = v26 + 1;
        }

        v27 = *(a2 + 14);
        v28 = *(a2 + 15);
        *(a2 + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::profile::ProcessingRule::MergePartialFromCodedStream(v25, a2, v29) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v30 = *(a2 + 14);
        v31 = __OFSUB__(v30, 1);
        v32 = v30 - 1;
        if (v32 < 0 == v31)
        {
          *(a2 + 14) = v32;
        }

        v33 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v9 - v33 > 1 && *v33 == 152 && v33[1] == 1)
        {
          v10 = (v33 + 2);
          *(a2 + 1) = v10;
LABEL_67:
          if (v10 >= v9 || (v34 = *v10, v34 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v35 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(this + 5) = v34;
            v35 = (v10 + 1);
            *(a2 + 1) = v35;
          }

          *(this + 13) |= 8u;
          if (v9 - v35 >= 2 && *v35 == 161 && v35[1] == 1)
          {
            *(a2 + 1) = v35 + 2;
LABEL_76:
            *v39 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v39) & 1) == 0)
            {
              return 0;
            }

            *(this + 3) = *v39;
            *(this + 13) |= 4u;
            v36 = *(a2 + 1);
            v13 = *(a2 + 2);
            if (v13 - v36 >= 2 && *v36 == 168 && v36[1] == 1)
            {
              v14 = (v36 + 2);
              *(a2 + 1) = v14;
              goto LABEL_81;
            }
          }
        }
      }

      else
      {
        if (v7 == 19 && (TagFallback & 7) == 0)
        {
          v10 = *(a2 + 1);
          v9 = *(a2 + 2);
          goto LABEL_67;
        }

LABEL_30:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v7 == 20)
    {
      if (v8 == 1)
      {
        goto LABEL_76;
      }

      goto LABEL_30;
    }

    if (v7 != 21 || (TagFallback & 7) != 0)
    {
      goto LABEL_30;
    }

    v14 = *(a2 + 1);
    v13 = *(a2 + 2);
LABEL_81:
    if (v14 >= v13 || (v37 = *v14, v37 < 0))
    {
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
      if (!result)
      {
        return result;
      }

      v38 = *(a2 + 1);
      v13 = *(a2 + 2);
    }

    else
    {
      *(this + 11) = v37;
      v38 = v14 + 1;
      *(a2 + 1) = v38;
    }

    *(this + 13) |= 0x40u;
  }

  while (v38 != v13 || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::profile::ProcessingRule::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 16), a2, a4);
    v6 = *(v5 + 52);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(0x10, *(v5 + 8), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 40), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_12:
  v7 = *(v5 + 32);
  if (!v7)
  {
    v7 = *(awd::profile::ProcessingRule::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v7, a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 8) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 24), a3);
    if ((*(v5 + 52) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x13, *(v5 + 20), a2, a4);
  v6 = *(v5 + 52);
  if ((v6 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x15, v8, a2, a4);
}

uint64_t awd::profile::ProcessingRule::ByteSize(awd::profile::ProcessingRule *this, unint64_t a2)
{
  LOBYTE(v3) = *(this + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_33;
  }

  if ((*(this + 52) & 1) == 0)
  {
    LODWORD(v4) = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v5 = *(this + 4);
  if (v5 < 0x80)
  {
    LODWORD(v4) = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  LODWORD(v4) = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
  v3 = *(this + 13);
  if ((v3 & 2) != 0)
  {
LABEL_10:
    LODWORD(v4) = v4 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 2;
    v3 = *(this + 13);
  }

LABEL_11:
  if ((v3 & 4) != 0)
  {
    LODWORD(v4) = v4 + 10;
  }

  if ((v3 & 8) != 0)
  {
    v6 = *(this + 5);
    if (v6 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 2;
      v3 = *(this + 13);
    }

    else
    {
      v7 = 3;
    }

    LODWORD(v4) = v7 + v4;
  }

  if ((v3 & 0x10) != 0)
  {
    v4 = (v4 + 3);
  }

  else
  {
    v4 = v4;
  }

  if ((v3 & 0x20) != 0)
  {
    v8 = *(this + 4);
    if (!v8)
    {
      v8 = *(awd::profile::ProcessingRule::default_instance_ + 32);
    }

    v9 = awd::profile::ProcessingRule::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v4 = (v4 + v10 + v11 + 2);
    v3 = *(this + 13);
  }

  if ((v3 & 0x40) != 0)
  {
    v12 = *(this + 11);
    if (v12 >= 0x80)
    {
      v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 2;
    }

    else
    {
      v13 = 3;
    }

    v4 = (v13 + v4);
  }

LABEL_33:
  *(this + 12) = v4;
  return v4;
}

void awd::profile::ProcessingRule::CopyFrom(awd::profile::ProcessingRule *this, const awd::profile::ProcessingRule *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::ProcessingRule::MergeFrom(this, a2);
  }
}

double awd::profile::ProcessingRule::Swap(awd::profile::ProcessingRule *this, awd::profile::ProcessingRule *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    LODWORD(v3) = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v3;
    LOBYTE(v3) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v3;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
    LODWORD(v5) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
  }

  return result;
}

double awd::profile::BedfTreeNode::SharedCtor(awd::profile::BedfTreeNode *this)
{
  *&result = 0x100000000;
  *(this + 1) = 0x100000000;
  *(this + 7) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  return result;
}

uint64_t awd::profile::BedfTreeNode::default_instance(awd::profile::BedfTreeNode *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::BedfTreeNode::default_instance_;
  if (!awd::profile::BedfTreeNode::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::BedfTreeNode::default_instance_;
  }

  return result;
}

awd::profile::BedfTreeNode *awd::profile::BedfTreeNode::BedfTreeNode(awd::profile::BedfTreeNode *this, const awd::profile::BedfTreeNode *a2)
{
  *this = &unk_288352A58;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 1) = 0x100000000;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  awd::profile::BedfTreeNode::MergeFrom(this, a2);
  return this;
}

void sub_27430BCBC(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x2743E9A70](*v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::BedfTreeNode::MergeFrom(awd::profile::BedfTreeNode *this, const awd::profile::BedfTreeNode *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 12);
  if (v4)
  {
    sub_27431BDF8(this + 10, *(this + 12) + v4);
    memcpy((*(this + 5) + 4 * *(this + 12)), *(a2 + 5), 4 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  LOBYTE(v5) = *(a2 + 60);
  if (v5)
  {
    if (*(a2 + 60))
    {
      v7 = *(a2 + 2);
      *(this + 15) |= 1u;
      *(this + 2) = v7;
      v5 = *(a2 + 15);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else if ((*(a2 + 60) & 2) == 0)
    {
      goto LABEL_8;
    }

    v8 = *(a2 + 3);
    *(this + 15) |= 2u;
    *(this + 3) = v8;
    v5 = *(a2 + 15);
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 8) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_21;
    }

LABEL_16:
    *(this + 15) |= 4u;
    v9 = *(this + 2);
    if (!v9)
    {
      operator new();
    }

    v10 = *(a2 + 2);
    if (!v10)
    {
      v10 = *(awd::profile::BedfTreeNode::default_instance_ + 16);
    }

    awd::profile::BedfTreeNode::MergeFrom(v9, v10);
    v5 = *(a2 + 15);
    if ((v5 & 8) == 0)
    {
LABEL_10:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_26;
    }

LABEL_21:
    *(this + 15) |= 8u;
    v11 = *(this + 3);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 3);
    if (!v12)
    {
      v12 = *(awd::profile::BedfTreeNode::default_instance_ + 24);
    }

    awd::profile::BedfTreeNode::MergeFrom(v11, v12);
    v5 = *(a2 + 15);
    if ((v5 & 0x10) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

LABEL_26:
    v13 = *(a2 + 8);
    *(this + 15) |= 0x10u;
    *(this + 8) = v13;
    if ((*(a2 + 15) & 0x20) == 0)
    {
      return;
    }

LABEL_12:
    v6 = *(a2 + 9);
    *(this + 15) |= 0x20u;
    *(this + 9) = v6;
  }
}

void sub_27430BF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::BedfTreeNode::~BedfTreeNode(awd::profile::BedfTreeNode *this)
{
  *this = &unk_288352A58;
  awd::profile::BedfTreeNode::SharedDtor(this);
  v2 = *(this + 5);
  if (v2)
  {
    MEMORY[0x2743E9A70](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::BedfTreeNode::~BedfTreeNode(this);

  JUMPOUT(0x2743E9A90);
}

void *awd::profile::BedfTreeNode::SharedDtor(void *this)
{
  if (awd::profile::BedfTreeNode::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[3];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t awd::profile::BedfTreeNode::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 60);
  if (v2)
  {
    *(this + 8) = 0x100000000;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::BedfTreeNode::Clear(this);
        v2 = *(v1 + 60);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = awd::profile::BedfTreeNode::Clear(this);
      }
    }

    *(v1 + 32) = 0;
  }

  *(v1 + 48) = 0;
  *(v1 + 60) = 0;
  return this;
}

uint64_t awd::profile::BedfTreeNode::MergePartialFromCodedStream(awd::profile::BedfTreeNode *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 > 3)
        {
          break;
        }

        if (v7 == 1)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v51 = 0;
          v12 = *(a2 + 1);
          if (v12 >= *(a2 + 2) || (v13 = *v12, (v13 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
            if (!result)
            {
              return result;
            }

            v13 = v51;
          }

          else
          {
            *(a2 + 1) = v12 + 1;
          }

          if (v13 <= 3)
          {
            *(this + 15) |= 1u;
            *(this + 2) = v13;
          }

          v18 = *(a2 + 1);
          v15 = *(a2 + 2);
          if (v18 < v15 && *v18 == 16)
          {
            v16 = v18 + 1;
            *(a2 + 1) = v16;
            goto LABEL_44;
          }
        }

        else
        {
          if (v7 != 2)
          {
            if (v7 != 3 || v8 != 2)
            {
              goto LABEL_32;
            }

            goto LABEL_54;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v16 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_44:
          v51 = 0;
          if (v16 >= v15 || (v19 = *v16, (v19 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
            if (!result)
            {
              return result;
            }

            v19 = v51;
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          if (v19 - 1 <= 0xB)
          {
            *(this + 15) |= 2u;
            *(this + 3) = v19;
          }

          v20 = *(a2 + 1);
          if (v20 < *(a2 + 2) && *v20 == 26)
          {
            *(a2 + 1) = v20 + 1;
LABEL_54:
            *(this + 15) |= 4u;
            v21 = *(this + 2);
            if (!v21)
            {
              operator new();
            }

            v51 = 0;
            v22 = *(a2 + 1);
            if (v22 >= *(a2 + 2) || *v22 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
              {
                return 0;
              }
            }

            else
            {
              v51 = *v22;
              *(a2 + 1) = v22 + 1;
            }

            v23 = *(a2 + 14);
            v24 = *(a2 + 15);
            *(a2 + 14) = v23 + 1;
            if (v23 >= v24)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::profile::BedfTreeNode::MergePartialFromCodedStream(v21, a2, v25) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v26 = *(a2 + 14);
            v27 = __OFSUB__(v26, 1);
            v28 = v26 - 1;
            if (v28 < 0 == v27)
            {
              *(a2 + 14) = v28;
            }

            v29 = *(a2 + 1);
            if (v29 < *(a2 + 2) && *v29 == 34)
            {
              *(a2 + 1) = v29 + 1;
              goto LABEL_68;
            }
          }
        }
      }

      if (TagFallback >> 3 > 5)
      {
        if (v7 == 6)
        {
          if ((TagFallback & 7) == 0)
          {
            v14 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_90;
          }
        }

        else if (v7 == 7)
        {
          if ((TagFallback & 7) == 0)
          {
            v17 = *(a2 + 1);
            v9 = *(a2 + 2);
            goto LABEL_98;
          }

          if (v8 == 2)
          {
            result = sub_27430C7C8(a2, this + 5);
            if (!result)
            {
              return result;
            }

            goto LABEL_115;
          }
        }

        goto LABEL_32;
      }

      if (v7 == 4)
      {
        break;
      }

      if (v7 == 5 && (TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_82;
      }

LABEL_32:
      if (v8 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    if (v8 != 2)
    {
      goto LABEL_32;
    }

LABEL_68:
    *(this + 15) |= 8u;
    v30 = *(this + 3);
    if (!v30)
    {
      operator new();
    }

    v51 = 0;
    v31 = *(a2 + 1);
    if (v31 >= *(a2 + 2) || *v31 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51))
      {
        return 0;
      }
    }

    else
    {
      v51 = *v31;
      *(a2 + 1) = v31 + 1;
    }

    v32 = *(a2 + 14);
    v33 = *(a2 + 15);
    *(a2 + 14) = v32 + 1;
    if (v32 >= v33)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::profile::BedfTreeNode::MergePartialFromCodedStream(v30, a2, v34) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v35 = *(a2 + 14);
    v27 = __OFSUB__(v35, 1);
    v36 = v35 - 1;
    if (v36 < 0 == v27)
    {
      *(a2 + 14) = v36;
    }

    v37 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v37 < v9 && *v37 == 40)
    {
      v10 = v37 + 1;
      *(a2 + 1) = v10;
LABEL_82:
      v51 = 0;
      if (v10 >= v9 || (v38 = *v10, (v38 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
        if (!result)
        {
          return result;
        }

        v38 = v51;
        v39 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        v39 = v10 + 1;
        *(a2 + 1) = v39;
      }

      *(this + 8) = v38;
      *(this + 15) |= 0x10u;
      if (v39 < v9 && *v39 == 48)
      {
        v14 = v39 + 1;
        *(a2 + 1) = v14;
LABEL_90:
        v51 = 0;
        if (v14 >= v9 || (v40 = *v14, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
          if (!result)
          {
            return result;
          }

          v40 = v51;
          v41 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v41 = v14 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 9) = v40;
        *(this + 15) |= 0x20u;
        if (v41 < v9 && *v41 == 56)
        {
          do
          {
            v17 = v41 + 1;
            *(a2 + 1) = v17;
LABEL_98:
            v51 = 0;
            if (v17 >= v9 || (v42 = *v17, (v42 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
              if (!result)
              {
                return result;
              }

              v42 = v51;
            }

            else
            {
              *(a2 + 1) = v17 + 1;
            }

            v43 = *(this + 12);
            if (v43 == *(this + 13))
            {
              sub_27431BDF8(this + 10, v43 + 1);
              v43 = *(this + 12);
            }

            v44 = *(this + 5);
            *(this + 12) = v43 + 1;
            *(v44 + 4 * v43) = v42;
            v45 = *(this + 13) - *(this + 12);
            if (v45 >= 1)
            {
              v46 = v45 + 1;
              do
              {
                v47 = *(a2 + 1);
                v48 = *(a2 + 2);
                if (v47 >= v48 || *v47 != 56)
                {
                  break;
                }

                *(a2 + 1) = v47 + 1;
                v51 = 0;
                if ((v47 + 1) >= v48 || (v49 = v47[1], (v49 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v51);
                  if (!result)
                  {
                    return result;
                  }

                  v49 = v51;
                  v44 = *(this + 5);
                }

                else
                {
                  *(a2 + 1) = v47 + 2;
                }

                v50 = *(this + 12);
                *(this + 12) = v50 + 1;
                *(v44 + 4 * v50) = v49;
                --v46;
              }

              while (v46 > 1);
            }

LABEL_115:
            v41 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          while (v41 < v9 && *v41 == 56);
          if (v41 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }
  }
}

uint64_t sub_27430C7C8(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v10 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v11 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
        if (!result)
        {
          return result;
        }

        v7 = v11;
      }

      else
      {
        *(this + 1) = v6 + 1;
      }

      v8 = *(a2 + 2);
      if (v8 == *(a2 + 3))
      {
        sub_27431BDF8(a2, v8 + 1);
        v8 = *(a2 + 2);
      }

      v9 = *a2;
      *(a2 + 2) = v8 + 1;
      *(v9 + 4 * v8) = v7;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::profile::BedfTreeNode::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 60);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_14:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(awd::profile::BedfTreeNode::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_17:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(awd::profile::BedfTreeNode::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_20:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(5, *(v5 + 32), a2, a4);
  if ((*(v5 + 60) & 0x20) != 0)
  {
LABEL_7:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 36), a2, a4);
  }

LABEL_8:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(*(v5 + 40) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  return this;
}

uint64_t awd::profile::BedfTreeNode::ByteSize(awd::profile::BedfTreeNode *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 60);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_48;
  }

  if (*(this + 60))
  {
    v5 = *(this + 2);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 15);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 60) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(this + 3);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(awd::profile::BedfTreeNode::default_instance_ + 16);
    }

    v9 = awd::profile::BedfTreeNode::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v4 += v10 + v11 + 1;
    v3 = *(this + 15);
    if ((v3 & 8) == 0)
    {
LABEL_21:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_36;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_21;
  }

  v12 = *(this + 3);
  if (!v12)
  {
    v12 = *(awd::profile::BedfTreeNode::default_instance_ + 24);
  }

  v13 = awd::profile::BedfTreeNode::ByteSize(v12, a2);
  v14 = v13;
  if (v13 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
  }

  else
  {
    v15 = 1;
  }

  v4 += v14 + v15 + 1;
  v3 = *(this + 15);
  if ((v3 & 0x10) == 0)
  {
LABEL_22:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_42;
  }

LABEL_36:
  v16 = *(this + 8);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 15);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x20) != 0)
  {
LABEL_42:
    v18 = *(this + 9);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
  }

LABEL_48:
  v20 = *(this + 12);
  if (v20 < 1)
  {
    v22 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *(*(this + 5) + 4 * v21);
      if ((v23 & 0x80000000) != 0)
      {
        v24 = 10;
      }

      else if (v23 >= 0x80)
      {
        v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
        v20 = *(this + 12);
      }

      else
      {
        v24 = 1;
      }

      v22 += v24;
      ++v21;
    }

    while (v21 < v20);
  }

  result = (v22 + v4 + v20);
  *(this + 14) = result;
  return result;
}

void awd::profile::BedfTreeNode::CopyFrom(awd::profile::BedfTreeNode *this, const awd::profile::BedfTreeNode *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::BedfTreeNode::MergeFrom(this, a2);
  }
}

double awd::profile::BedfTreeNode::Swap(awd::profile::BedfTreeNode *this, awd::profile::BedfTreeNode *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v5;
    LODWORD(v5) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    result = *(a2 + 6);
    *(a2 + 5) = v6;
    v8 = *(this + 6);
    *(this + 6) = result;
    *(a2 + 6) = v8;
    LODWORD(v6) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v6;
    LODWORD(v6) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v6;
  }

  return result;
}

void *awd::profile::BedfConfig::SharedCtor(void *this)
{
  this[5] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

awd::profile::BedfConfig *awd::profile::BedfConfig::BedfConfig(awd::profile::BedfConfig *this, const awd::profile::BedfConfig *a2)
{
  *this = &unk_288352AD0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  awd::profile::BedfConfig::MergeFrom(this, a2);
  return this;
}

void sub_27430CDDC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 3);
  if (v3)
  {
    MEMORY[0x2743E9A70](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::BedfConfig::MergeFrom(awd::profile::BedfConfig *this, const awd::profile::BedfConfig *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v4 = *(a2 + 8);
  if (v4)
  {
    sub_27431BDF8(this + 6, *(this + 8) + v4);
    memcpy((*(this + 3) + 4 * *(this + 8)), *(a2 + 3), 4 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (v5)
  {
    if (*(a2 + 44))
    {
      v6 = *(a2 + 2);
      *(this + 11) |= 1u;
      *(this + 2) = v6;
      v5 = *(a2 + 11);
      if ((v5 & 2) == 0)
      {
LABEL_8:
        if ((v5 & 4) == 0)
        {
          return;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_8;
    }

    v7 = *(a2 + 3);
    *(this + 11) |= 2u;
    *(this + 3) = v7;
    if ((*(a2 + 11) & 4) == 0)
    {
      return;
    }

LABEL_12:
    *(this + 11) |= 4u;
    v8 = *(this + 2);
    if (!v8)
    {
      operator new();
    }

    v9 = *(a2 + 2);
    if (!v9)
    {
      v9 = *(awd::profile::BedfConfig::default_instance_ + 16);
    }

    awd::profile::BedfTreeNode::MergeFrom(v8, v9);
  }
}

void sub_27430CF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::BedfConfig::~BedfConfig(awd::profile::BedfConfig *this)
{
  *this = &unk_288352AD0;
  if (awd::profile::BedfConfig::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x2743E9A70](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::BedfConfig::~BedfConfig(this);

  JUMPOUT(0x2743E9A90);
}

void *awd::profile::BedfConfig::SharedDtor(void *this)
{
  if (awd::profile::BedfConfig::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t awd::profile::BedfConfig::default_instance(awd::profile::BedfConfig *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::BedfConfig::default_instance_;
  if (!awd::profile::BedfConfig::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::BedfConfig::default_instance_;
  }

  return result;
}

uint64_t awd::profile::BedfConfig::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = awd::profile::BedfTreeNode::Clear(this);
      }
    }
  }

  *(v1 + 32) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t awd::profile::BedfConfig::MergePartialFromCodedStream(awd::profile::BedfConfig *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v7 == 3)
          {
            if (v8 == 2)
            {
              v15 = *(this + 11);
              goto LABEL_40;
            }
          }

          else if (v7 == 4)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v16 = *(a2 + 2);
              goto LABEL_54;
            }

            if (v8 == 2)
            {
              result = sub_27430C7C8(a2, this + 3);
              if (!result)
              {
                return result;
              }

              goto LABEL_71;
            }
          }

LABEL_22:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_22;
        }

        v12 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v12 >= v9 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 11) |= 1u;
        if (v14 < v9 && *v14 == 16)
        {
          v10 = v14 + 1;
          *(a2 + 1) = v10;
          goto LABEL_32;
        }
      }

      if (v7 != 2 || (TagFallback & 7) != 0)
      {
        goto LABEL_22;
      }

      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
LABEL_32:
      if (v10 >= v9 || (v18 = *v10, v18 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
        if (!result)
        {
          return result;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 3) = v18;
        v19 = v10 + 1;
        *(a2 + 1) = v19;
      }

      v15 = *(this + 11) | 2;
      *(this + 11) = v15;
    }

    while (v19 >= v9 || *v19 != 26);
    *(a2 + 1) = v19 + 1;
LABEL_40:
    *(this + 11) = v15 | 4;
    v20 = *(this + 2);
    if (!v20)
    {
      operator new();
    }

    v40 = 0;
    v21 = *(a2 + 1);
    if (v21 >= *(a2 + 2) || *v21 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v40))
      {
        return 0;
      }
    }

    else
    {
      v40 = *v21;
      *(a2 + 1) = v21 + 1;
    }

    v22 = *(a2 + 14);
    v23 = *(a2 + 15);
    *(a2 + 14) = v22 + 1;
    if (v22 >= v23)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!awd::profile::BedfTreeNode::MergePartialFromCodedStream(v20, a2, v24) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v25 = *(a2 + 14);
    v26 = __OFSUB__(v25, 1);
    v27 = v25 - 1;
    if (v27 < 0 == v26)
    {
      *(a2 + 14) = v27;
    }

    v28 = *(a2 + 1);
    v16 = *(a2 + 2);
    if (v28 < v16 && *v28 == 32)
    {
      do
      {
        v17 = v28 + 1;
        *(a2 + 1) = v17;
LABEL_54:
        v39 = 0;
        if (v17 >= v16 || (v29 = *v17, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v29 = v39;
        }

        else
        {
          *(a2 + 1) = v17 + 1;
        }

        v30 = *(this + 8);
        if (v30 == *(this + 9))
        {
          sub_27431BDF8(this + 6, v30 + 1);
          v30 = *(this + 8);
        }

        v31 = *(this + 3);
        *(this + 8) = v30 + 1;
        *(v31 + 4 * v30) = v29;
        v32 = *(this + 9) - *(this + 8);
        if (v32 >= 1)
        {
          v33 = v32 + 1;
          do
          {
            v34 = *(a2 + 1);
            v35 = *(a2 + 2);
            if (v34 >= v35 || *v34 != 32)
            {
              break;
            }

            *(a2 + 1) = v34 + 1;
            v38 = 0;
            if ((v34 + 1) >= v35 || (v36 = v34[1], (v36 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v38);
              if (!result)
              {
                return result;
              }

              v36 = v38;
              v31 = *(this + 3);
            }

            else
            {
              *(a2 + 1) = v34 + 2;
            }

            v37 = *(this + 8);
            *(this + 8) = v37 + 1;
            *(v31 + 4 * v37) = v36;
            --v33;
          }

          while (v33 > 1);
        }

LABEL_71:
        v28 = *(a2 + 1);
        v16 = *(a2 + 2);
      }

      while (v28 < v16 && *v28 == 32);
      if (v28 == v16 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t awd::profile::BedfConfig::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if ((*(v5 + 44) & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(awd::profile::BedfConfig::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
LABEL_10:
  if (*(v5 + 32) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(4, *(*(v5 + 24) + 4 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 32));
  }

  return this;
}

uint64_t awd::profile::BedfConfig::ByteSize(awd::profile::BedfConfig *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 44);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_21;
  }

  if (*(this + 44))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 11);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 11);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(awd::profile::BedfConfig::default_instance_ + 16);
    }

    v9 = awd::profile::BedfTreeNode::ByteSize(v8, a2);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v4 += v10 + v11 + 1;
  }

LABEL_21:
  v12 = *(this + 8);
  if (v12 < 1)
  {
    v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(*(this + 3) + 4 * v13);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 10;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
        v12 = *(this + 8);
      }

      else
      {
        v16 = 1;
      }

      v14 += v16;
      ++v13;
    }

    while (v13 < v12);
  }

  result = (v14 + v4 + v12);
  *(this + 10) = result;
  return result;
}

void awd::profile::BedfConfig::CopyFrom(awd::profile::BedfConfig *this, const awd::profile::BedfConfig *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::BedfConfig::MergeFrom(this, a2);
  }
}

double awd::profile::BedfConfig::Swap(awd::profile::BedfConfig *this, awd::profile::BedfConfig *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    result = *(a2 + 4);
    *(a2 + 3) = v5;
    v7 = *(this + 4);
    *(this + 4) = result;
    *(a2 + 4) = v7;
    LODWORD(v5) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    LODWORD(v5) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
  }

  return result;
}

double awd::profile::Metric::SharedCtor(awd::profile::Metric *this)
{
  *(this + 11) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  return result;
}

awd::profile::Metric *awd::profile::Metric::Metric(awd::profile::Metric *this, const awd::profile::Metric *a2)
{
  *(this + 9) = 0;
  *this = &unk_288352B48;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 15) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0;
  *(this + 44) = 0;
  *(this + 60) = 0;
  *(this + 52) = 0;
  awd::profile::Metric::MergeFrom(this, a2);
  return this;
}

void sub_27430D9CC(_Unwind_Exception *a1)
{
  v4 = v3;
  sub_27431C008(v4);
  sub_27431C008(v2);
  sub_27431C008(v1 + 6);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::Metric::MergeFrom(awd::profile::Metric *this, const awd::profile::Metric *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v31);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
  if (*(a2 + 14) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 6) + 8 * v4);
      v6 = *(this + 15);
      v7 = *(this + 14);
      if (v7 >= v6)
      {
        if (v6 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
          v6 = *(this + 15);
        }

        *(this + 15) = v6 + 1;
        operator new();
      }

      v8 = *(this + 6);
      *(this + 14) = v7 + 1;
      awd::profile::ProcessingRule::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 14));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
  if (*(a2 + 20) >= 1)
  {
    v9 = 0;
    do
    {
      v10 = *(*(a2 + 9) + 8 * v9);
      v11 = *(this + 21);
      v12 = *(this + 20);
      if (v12 >= v11)
      {
        if (v11 == *(this + 22))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
          v11 = *(this + 21);
        }

        *(this + 21) = v11 + 1;
        operator new();
      }

      v13 = *(this + 9);
      *(this + 20) = v12 + 1;
      awd::profile::BedfConfig::MergeFrom(*(v13 + 8 * v12), v10);
      ++v9;
    }

    while (v9 < *(a2 + 20));
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
  if (*(a2 + 26) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(a2 + 12) + 8 * v14);
      v16 = *(this + 27);
      v17 = *(this + 26);
      if (v17 >= v16)
      {
        if (v16 == *(this + 28))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
          v16 = *(this + 27);
        }

        *(this + 27) = v16 + 1;
        operator new();
      }

      v18 = *(this + 12);
      *(this + 26) = v17 + 1;
      awd::profile::ConfigurationParameter::MergeFrom(*(v18 + 8 * v17), v15);
      ++v14;
    }

    while (v14 < *(a2 + 26));
  }

  v19 = *(a2 + 32);
  if (!v19)
  {
    goto LABEL_37;
  }

  if (v19)
  {
    v22 = *(a2 + 2);
    *(this + 32) |= 1u;
    *(this + 2) = v22;
    v19 = *(a2 + 32);
    if ((v19 & 2) == 0)
    {
LABEL_30:
      if ((v19 & 4) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_45;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_30;
  }

  v23 = *(a2 + 3);
  *(this + 32) |= 2u;
  *(this + 3) = v23;
  v19 = *(a2 + 32);
  if ((v19 & 4) == 0)
  {
LABEL_31:
    if ((v19 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_46;
  }

LABEL_45:
  v24 = *(a2 + 4);
  *(this + 32) |= 4u;
  *(this + 4) = v24;
  v19 = *(a2 + 32);
  if ((v19 & 8) == 0)
  {
LABEL_32:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_47;
  }

LABEL_46:
  v25 = *(a2 + 5);
  *(this + 32) |= 8u;
  *(this + 5) = v25;
  v19 = *(a2 + 32);
  if ((v19 & 0x10) == 0)
  {
LABEL_33:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_34;
    }

LABEL_48:
    v27 = *(a2 + 7);
    *(this + 32) |= 0x20u;
    *(this + 7) = v27;
    v19 = *(a2 + 32);
    if ((v19 & 0x40) == 0)
    {
LABEL_35:
      if ((v19 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    goto LABEL_49;
  }

LABEL_47:
  v26 = *(a2 + 6);
  *(this + 32) |= 0x10u;
  *(this + 6) = v26;
  v19 = *(a2 + 32);
  if ((v19 & 0x20) != 0)
  {
    goto LABEL_48;
  }

LABEL_34:
  if ((v19 & 0x40) == 0)
  {
    goto LABEL_35;
  }

LABEL_49:
  v28 = *(a2 + 8);
  *(this + 32) |= 0x40u;
  *(this + 8) = v28;
  v19 = *(a2 + 32);
  if ((v19 & 0x80) != 0)
  {
LABEL_36:
    v20 = *(a2 + 9);
    *(this + 32) |= 0x80u;
    *(this + 9) = v20;
    v19 = *(a2 + 32);
  }

LABEL_37:
  if ((v19 & 0xFF00) == 0)
  {
    return;
  }

  if ((v19 & 0x100) != 0)
  {
    v29 = *(a2 + 40);
    *(this + 32) |= 0x100u;
    *(this + 40) = v29;
    v19 = *(a2 + 32);
    if ((v19 & 0x200) == 0)
    {
LABEL_40:
      if ((v19 & 0x1000) == 0)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  else if ((v19 & 0x200) == 0)
  {
    goto LABEL_40;
  }

  v30 = *(a2 + 11);
  *(this + 32) |= 0x200u;
  *(this + 11) = v30;
  if ((*(a2 + 32) & 0x1000) == 0)
  {
    return;
  }

LABEL_41:
  v21 = *(a2 + 30);
  *(this + 32) |= 0x1000u;
  *(this + 30) = v21;
}

void sub_27430DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::Metric::~Metric(awd::profile::Metric *this)
{
  *this = &unk_288352B48;
  sub_27431C008(this + 12);
  sub_27431C008(this + 9);
  sub_27431C008(this + 6);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Metric::~Metric(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::Metric::default_instance(awd::profile::Metric *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::Metric::default_instance_;
  if (!awd::profile::Metric::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::Metric::default_instance_;
  }

  return result;
}

uint64_t awd::profile::Metric::Clear(awd::profile::Metric *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 40) = 0;
    *(this + 11) = 0;
    *(this + 30) = 0;
  }

  sub_27431BF48(this + 48);
  sub_27431BF48(this + 72);
  result = sub_27431BF48(this + 96);
  *(this + 32) = 0;
  return result;
}

uint64_t awd::profile::Metric::MergePartialFromCodedStream(awd::profile::Metric *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
LABEL_1:
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 >= *(a2 + 2))
    {
      break;
    }

    TagFallback = *v5;
    if ((TagFallback & 0x80000000) != 0)
    {
      break;
    }

    *(a2 + 8) = TagFallback;
    *(a2 + 1) = v5 + 1;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v7 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 32) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v19 = v11 + 1;
          *(a2 + 1) = v19;
          goto LABEL_45;
        }

        continue;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v19 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_45:
        if (v19 >= v8 || (v24 = *v19, v24 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v25 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v24;
          v25 = v19 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 32) |= 2u;
        if (v25 >= v8 || *v25 != 24)
        {
          continue;
        }

        v16 = v25 + 1;
        *(a2 + 1) = v16;
LABEL_53:
        v78 = 0;
        if (v16 >= v8 || (v26 = *v16, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78);
          if (!result)
          {
            return result;
          }

          v26 = v78;
          v27 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v27 = v16 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 4) = -(v26 & 1) ^ (v26 >> 1);
        *(this + 32) |= 4u;
        if (v27 >= v8 || *v27 != 32)
        {
          continue;
        }

        v17 = v27 + 1;
        *(a2 + 1) = v17;
LABEL_61:
        v78 = 0;
        if (v17 >= v8 || (v28 = *v17, (v28 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78);
          if (!result)
          {
            return result;
          }

          v28 = v78;
          v29 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v29 = v17 + 1;
          *(a2 + 1) = v29;
        }

        *(this + 5) = -(v28 & 1) ^ (v28 >> 1);
        *(this + 32) |= 8u;
        if (v29 >= v8 || *v29 != 40)
        {
          continue;
        }

        v12 = v29 + 1;
        *(a2 + 1) = v12;
LABEL_69:
        if (v12 >= v8 || (v30 = *v12, v30 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v31 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v30;
          v31 = v12 + 1;
          *(a2 + 1) = v31;
        }

        *(this + 32) |= 0x10u;
        if (v31 >= v8 || *v31 != 48)
        {
          continue;
        }

        v20 = v31 + 1;
        *(a2 + 1) = v20;
LABEL_77:
        if (v20 >= v8 || (v32 = *v20, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 7);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 7) = v32;
          v33 = v20 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 32) |= 0x20u;
        if (v33 >= v8 || *v33 != 56)
        {
          continue;
        }

        v21 = v33 + 1;
        *(a2 + 1) = v21;
LABEL_85:
        v78 = 0;
        if (v21 >= v8 || (v34 = *v21, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78);
          if (!result)
          {
            return result;
          }

          v34 = v78;
          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v35 = v21 + 1;
          *(a2 + 1) = v35;
        }

        *(this + 8) = v34;
        *(this + 32) |= 0x40u;
        if (v35 >= v8 || *v35 != 64)
        {
          continue;
        }

        v18 = v35 + 1;
        *(a2 + 1) = v18;
LABEL_93:
        v78 = 0;
        if (v18 >= v8 || (v36 = *v18, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78);
          if (!result)
          {
            return result;
          }

          v36 = v78;
          v37 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v37 = v18 + 1;
          *(a2 + 1) = v37;
        }

        *(this + 9) = v36;
        *(this + 32) |= 0x80u;
        if (v37 >= v8 || *v37 != 72)
        {
          continue;
        }

        v22 = v37 + 1;
        *(a2 + 1) = v22;
LABEL_101:
        v78 = 0;
        if (v22 >= v8 || (v38 = *v22, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78);
          if (!result)
          {
            return result;
          }

          v38 = v78;
          v39 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v39 = v22 + 1;
          *(a2 + 1) = v39;
        }

        *(this + 40) = v38 != 0;
        *(this + 32) |= 0x100u;
        if (v39 >= v8 || *v39 != 80)
        {
          continue;
        }

        v15 = v39 + 1;
        *(a2 + 1) = v15;
LABEL_109:
        if (v15 >= v8 || (v40 = *v15, v40 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v41 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v40;
          v41 = v15 + 1;
          *(a2 + 1) = v41;
        }

        *(this + 32) |= 0x200u;
        if (v41 >= v8 || *v41 != 90)
        {
          continue;
        }

        break;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_53;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v17 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_61;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_69;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v20 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_77;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v21 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_85;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v18 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_93;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v22 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_101;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v15 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_109;
      case 0xBu:
        if (v7 == 2)
        {
          goto LABEL_117;
        }

        goto LABEL_36;
      case 0xCu:
        if (v7 == 2)
        {
          goto LABEL_135;
        }

        goto LABEL_36;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_153;
      case 0xEu:
        if (v7 == 2)
        {
          goto LABEL_161;
        }

        goto LABEL_36;
      default:
LABEL_36:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }

    do
    {
      *(a2 + 1) = v41 + 1;
LABEL_117:
      v42 = *(this + 15);
      v43 = *(this + 14);
      if (v43 >= v42)
      {
        if (v42 == *(this + 16))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 48));
          v42 = *(this + 15);
        }

        *(this + 15) = v42 + 1;
        operator new();
      }

      v44 = *(this + 6);
      *(this + 14) = v43 + 1;
      v45 = *(v44 + 8 * v43);
      v78 = 0;
      v46 = *(a2 + 1);
      if (v46 >= *(a2 + 2) || *v46 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
        {
          return 0;
        }
      }

      else
      {
        v78 = *v46;
        *(a2 + 1) = v46 + 1;
      }

      v47 = *(a2 + 14);
      v48 = *(a2 + 15);
      *(a2 + 14) = v47 + 1;
      if (v47 >= v48)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!awd::profile::ProcessingRule::MergePartialFromCodedStream(v45, a2, v49) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v50 = *(a2 + 14);
      v51 = __OFSUB__(v50, 1);
      v52 = v50 - 1;
      if (v52 < 0 == v51)
      {
        *(a2 + 14) = v52;
      }

      v41 = *(a2 + 1);
      if (v41 >= *(a2 + 2))
      {
        goto LABEL_1;
      }

      v53 = *v41;
    }

    while (v53 == 90);
    if (v53 == 98)
    {
      do
      {
        *(a2 + 1) = v41 + 1;
LABEL_135:
        v54 = *(this + 21);
        v55 = *(this + 20);
        if (v55 >= v54)
        {
          if (v54 == *(this + 22))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 72));
            v54 = *(this + 21);
          }

          *(this + 21) = v54 + 1;
          operator new();
        }

        v56 = *(this + 9);
        *(this + 20) = v55 + 1;
        v57 = *(v56 + 8 * v55);
        v78 = 0;
        v58 = *(a2 + 1);
        if (v58 >= *(a2 + 2) || *v58 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
          {
            return 0;
          }
        }

        else
        {
          v78 = *v58;
          *(a2 + 1) = v58 + 1;
        }

        v59 = *(a2 + 14);
        v60 = *(a2 + 15);
        *(a2 + 14) = v59 + 1;
        if (v59 >= v60)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::profile::BedfConfig::MergePartialFromCodedStream(v57, a2, v61) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v62 = *(a2 + 14);
        v51 = __OFSUB__(v62, 1);
        v63 = v62 - 1;
        if (v63 < 0 == v51)
        {
          *(a2 + 14) = v63;
        }

        v41 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v41 >= v13)
        {
          goto LABEL_1;
        }

        v64 = *v41;
      }

      while (v64 == 98);
      if (v64 == 104)
      {
        v14 = v41 + 1;
        *(a2 + 1) = v14;
LABEL_153:
        if (v14 < v13)
        {
          v65 = *v14;
          if ((v65 & 0x80000000) == 0)
          {
            *(this + 30) = v65;
            v66 = v14 + 1;
            *(a2 + 1) = v66;
            goto LABEL_158;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 30);
        if (!result)
        {
          return result;
        }

        v66 = *(a2 + 1);
        v13 = *(a2 + 2);
LABEL_158:
        *(this + 32) |= 0x1000u;
        if (v66 < v13 && *v66 == 114)
        {
          do
          {
            *(a2 + 1) = v66 + 1;
LABEL_161:
            v67 = *(this + 27);
            v68 = *(this + 26);
            if (v68 >= v67)
            {
              if (v67 == *(this + 28))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 96));
                v67 = *(this + 27);
              }

              *(this + 27) = v67 + 1;
              operator new();
            }

            v69 = *(this + 12);
            *(this + 26) = v68 + 1;
            v70 = *(v69 + 8 * v68);
            v78 = 0;
            v71 = *(a2 + 1);
            if (v71 >= *(a2 + 2) || *v71 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v78))
              {
                return 0;
              }
            }

            else
            {
              v78 = *v71;
              *(a2 + 1) = v71 + 1;
            }

            v72 = *(a2 + 14);
            v73 = *(a2 + 15);
            *(a2 + 14) = v72 + 1;
            if (v72 >= v73)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!awd::profile::ConfigurationParameter::MergePartialFromCodedStream(v70, a2, v74) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v75 = *(a2 + 14);
            v51 = __OFSUB__(v75, 1);
            v76 = v75 - 1;
            if (v76 < 0 == v51)
            {
              *(a2 + 14) = v76;
            }

            v66 = *(a2 + 1);
            v77 = *(a2 + 2);
          }

          while (v66 < v77 && *v66 == 114);
          if (v66 == v77 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }
    }
  }

  TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
  *(a2 + 8) = TagFallback;
  if (TagFallback)
  {
    goto LABEL_6;
  }

  return 1;
}

uint64_t awd::profile::Metric::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 128);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 128);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteSInt32(4, *(v5 + 20), a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 24), a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(6, *(v5 + 28), a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 32), a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 128);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 40), a2, a4);
  if ((*(v5 + 128) & 0x200) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 44), a2, a4);
  }

LABEL_12:
  if (*(v5 + 56) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, *(*(v5 + 48) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 56));
  }

  if (*(v5 + 80) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, *(*(v5 + 72) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 80));
  }

  if ((*(v5 + 129) & 0x10) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 120), a2, a4);
  }

  if (*(v5 + 104) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, *(*(v5 + 96) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 104));
  }

  return this;
}

uint64_t awd::profile::Metric::ByteSize(awd::profile::Metric *this, unint64_t a2)
{
  v3 = *(this + 32);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_49;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 32);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 32);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 4) != 0)
  {
    v8 = ((2 * *(this + 4)) ^ (*(this + 4) >> 31));
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 32);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 8) == 0)
    {
LABEL_16:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_16;
  }

  v10 = ((2 * *(this + 5)) ^ (*(this + 5) >> 31));
  if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 32);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x10) == 0)
  {
LABEL_17:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_29:
  v12 = *(this + 6);
  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
    v3 = *(this + 32);
  }

  else
  {
    v13 = 2;
  }

  v4 += v13;
  if ((v3 & 0x20) == 0)
  {
LABEL_18:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_37;
  }

LABEL_33:
  v14 = *(this + 7);
  if (v14 >= 0x80)
  {
    v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
    v3 = *(this + 32);
  }

  else
  {
    v15 = 2;
  }

  v4 += v15;
  if ((v3 & 0x40) == 0)
  {
LABEL_19:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_43;
  }

LABEL_37:
  v16 = *(this + 8);
  if ((v16 & 0x80000000) != 0)
  {
    v17 = 11;
  }

  else if (v16 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16) + 1;
    v3 = *(this + 32);
  }

  else
  {
    v17 = 2;
  }

  v4 += v17;
  if ((v3 & 0x80) != 0)
  {
LABEL_43:
    v18 = *(this + 9);
    if ((v18 & 0x80000000) != 0)
    {
      v19 = 11;
    }

    else if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 32);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
  }

LABEL_49:
  if ((v3 & 0xFF00) != 0)
  {
    v4 += (v3 >> 7) & 2;
    if ((v3 & 0x200) != 0)
    {
      v20 = *(this + 11);
      if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
        v3 = *(this + 32);
      }

      else
      {
        v21 = 2;
      }

      v4 += v21;
    }

    if ((v3 & 0x1000) != 0)
    {
      v22 = *(this + 30);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      }

      else
      {
        v23 = 2;
      }

      v4 += v23;
    }
  }

  v24 = *(this + 14);
  v25 = v24 + v4;
  if (v24 >= 1)
  {
    v26 = 0;
    do
    {
      v27 = awd::profile::ProcessingRule::ByteSize(*(*(this + 6) + 8 * v26), a2);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      }

      else
      {
        v29 = 1;
      }

      v25 += v28 + v29;
      ++v26;
    }

    while (v26 < *(this + 14));
  }

  v30 = *(this + 20);
  v31 = v30 + v25;
  if (v30 >= 1)
  {
    v32 = 0;
    do
    {
      v33 = awd::profile::BedfConfig::ByteSize(*(*(this + 9) + 8 * v32), a2);
      v34 = v33;
      if (v33 >= 0x80)
      {
        v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
      }

      else
      {
        v35 = 1;
      }

      v31 += v34 + v35;
      ++v32;
    }

    while (v32 < *(this + 20));
  }

  v36 = *(this + 26);
  v37 = (v36 + v31);
  if (v36 >= 1)
  {
    v38 = 0;
    do
    {
      v39 = awd::profile::ConfigurationParameter::ByteSize(*(*(this + 12) + 8 * v38), a2);
      v40 = v39;
      if (v39 >= 0x80)
      {
        v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
      }

      else
      {
        v41 = 1;
      }

      v37 = (v40 + v37 + v41);
      ++v38;
    }

    while (v38 < *(this + 26));
  }

  *(this + 31) = v37;
  return v37;
}

void awd::profile::Metric::CopyFrom(const awd::profile::Metric *this, const awd::profile::Metric *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::Metric::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::Metric::Swap(uint64_t this, awd::profile::Metric *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v7;
    v8 = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v8;
    v9 = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v9;
    v10 = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v10;
    v11 = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v11;
    LOBYTE(v11) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v11;
    v12 = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v12;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v13 = v3[30];
    v3[30] = *(a2 + 30);
    *(a2 + 30) = v13;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v14 = v3[32];
    v3[32] = *(a2 + 32);
    *(a2 + 32) = v14;
    v15 = v3[31];
    v3[31] = *(a2 + 31);
    *(a2 + 31) = v15;
  }

  return this;
}

double awd::profile::Profile::SharedCtor(awd::profile::Profile *this)
{
  result = 0.0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 28) = 0;
  *(this + 116) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 8) = 0;
  *(this + 15) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  return result;
}

uint64_t awd::profile::Log::default_instance(awd::profile::Log *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::Log::default_instance_;
  if (!awd::profile::Log::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::Log::default_instance_;
  }

  return result;
}

awd::profile::Profile *awd::profile::Profile::Profile(awd::profile::Profile *this, const awd::profile::Profile *a2)
{
  *this = &unk_288352BC0;
  *(this + 40) = 0u;
  *(this + 28) = 0;
  *(this + 116) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 14) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 92) = 0u;
  *(this + 15) = MEMORY[0x277D82C30];
  *(this + 16) = 0;
  awd::profile::Profile::MergeFrom(this, a2);
  return this;
}

void sub_27430F2B8(_Unwind_Exception *a1)
{
  sub_27431C0AC((v1 + 88));
  sub_27431C008(v2);
  sub_2742E9F44((v1 + 16));
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::profile::Profile::MergeFrom(awd::profile::Profile *this, const awd::profile::Profile *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v29);
  }

  v4 = *(a2 + 6);
  if (v4)
  {
    sub_27431BDF8(this + 4, *(this + 6) + v4);
    memcpy((*(this + 2) + 4 * *(this + 6)), *(a2 + 2), 4 * *(a2 + 6));
    *(this + 6) += *(a2 + 6);
  }

  sub_27431C12C((this + 40), a2 + 40);
  v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
  if (*(a2 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(a2 + 11) + 8 * v6);
      v8 = *(this + 25);
      v9 = *(this + 24);
      if (v9 >= v8)
      {
        if (v8 == *(this + 26))
        {
          v5 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
          v8 = *(this + 25);
        }

        *(this + 25) = v8 + 1;
        v11 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v5);
        v12 = *(this + 11);
        v13 = *(this + 24);
        *(this + 24) = v13 + 1;
        *(v12 + 8 * v13) = v11;
      }

      else
      {
        v10 = *(this + 11);
        *(this + 24) = v9 + 1;
        v11 = *(v10 + 8 * v9);
      }

      v5 = std::string::operator=(v11, v7);
      ++v6;
    }

    while (v6 < *(a2 + 24));
  }

  v14 = *(a2 + 33);
  if (v14)
  {
    if (v14)
    {
      v15 = *(a2 + 2);
      *(this + 33) |= 1u;
      *(this + 2) = v15;
      v14 = *(a2 + 33);
      if ((v14 & 2) == 0)
      {
LABEL_16:
        if ((v14 & 8) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }
    }

    else if ((v14 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 3);
    *(this + 33) |= 2u;
    *(this + 3) = v16;
    v14 = *(a2 + 33);
    if ((v14 & 8) == 0)
    {
LABEL_17:
      if ((v14 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_24;
    }

LABEL_23:
    v17 = *(a2 + 8);
    *(this + 33) |= 8u;
    *(this + 8) = v17;
    v14 = *(a2 + 33);
    if ((v14 & 0x10) == 0)
    {
LABEL_18:
      if ((v14 & 0x20) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_25;
    }

LABEL_24:
    v18 = *(a2 + 9);
    *(this + 33) |= 0x10u;
    *(this + 9) = v18;
    v14 = *(a2 + 33);
    if ((v14 & 0x20) == 0)
    {
LABEL_19:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }

LABEL_25:
    v19 = *(a2 + 16);
    *(this + 33) |= 0x20u;
    *(this + 16) = v19;
    v14 = *(a2 + 33);
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_31;
    }

LABEL_26:
    *(this + 33) |= 0x80u;
    v20 = *(this + 9);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 9);
    if (!v21)
    {
      v21 = *(awd::profile::Profile::default_instance_ + 72);
    }

    awd::profile::Log::MergeFrom(v20, v21);
    v14 = *(a2 + 33);
  }

LABEL_31:
  if ((v14 & 0xFF00) == 0)
  {
    return;
  }

  if ((v14 & 0x100) != 0)
  {
    v22 = *(a2 + 17);
    *(this + 33) |= 0x100u;
    *(this + 17) = v22;
    v14 = *(a2 + 33);
    if ((v14 & 0x200) == 0)
    {
LABEL_34:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_41;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_34;
  }

  v23 = *(a2 + 20);
  *(this + 33) |= 0x200u;
  *(this + 20) = v23;
  v14 = *(a2 + 33);
  if ((v14 & 0x400) == 0)
  {
LABEL_35:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

LABEL_41:
  v24 = *(a2 + 21);
  *(this + 33) |= 0x400u;
  *(this + 21) = v24;
  v14 = *(a2 + 33);
  if ((v14 & 0x800) == 0)
  {
LABEL_36:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_43;
  }

LABEL_42:
  v25 = *(a2 + 28);
  *(this + 33) |= 0x800u;
  *(this + 28) = v25;
  v14 = *(a2 + 33);
  if ((v14 & 0x2000) == 0)
  {
LABEL_37:
    if ((v14 & 0x4000) == 0)
    {
      return;
    }

    goto LABEL_44;
  }

LABEL_43:
  v26 = *(a2 + 116);
  *(this + 33) |= 0x2000u;
  *(this + 116) = v26;
  if ((*(a2 + 33) & 0x4000) == 0)
  {
    return;
  }

LABEL_44:
  v27 = *(a2 + 15);
  *(this + 33) |= 0x4000u;
  v28 = *(this + 15);
  if (v28 == MEMORY[0x277D82C30])
  {
    operator new();
  }

  std::string::operator=(v28, v27);
}

void sub_27430F680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::Profile::~Profile(awd::profile::Profile *this)
{
  *this = &unk_288352BC0;
  v2 = (this + 88);
  awd::profile::Profile::SharedDtor(this);
  sub_27431C0AC(v2);
  sub_27431C008(this + 5);
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x2743E9A70](v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  awd::profile::Profile::~Profile(this);

  JUMPOUT(0x2743E9A90);
}

void *awd::profile::Profile::SharedDtor(void *this)
{
  v1 = this;
  v2 = this[15];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2743E9A90](v2, 0x1012C40EC159624);
  }

  if (awd::profile::Profile::default_instance_ != v1)
  {
    this = v1[9];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t awd::profile::Profile::default_instance(awd::profile::Profile *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::Profile::default_instance_;
  if (!awd::profile::Profile::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::Profile::default_instance_;
  }

  return result;
}

uint64_t awd::profile::Profile::Clear(awd::profile::Profile *this)
{
  v2 = *(this + 33);
  if (v2)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    *(this + 16) = 0;
    if ((v2 & 0x80) != 0)
    {
      v3 = *(this + 9);
      if (v3)
      {
        sub_27431BF48(v3 + 8);
        *(v3 + 36) = 0;
        v2 = *(this + 33);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 17) = 0;
    *(this + 10) = 0;
    *(this + 28) = 0;
    *(this + 116) = 0;
    if ((v2 & 0x4000) != 0)
    {
      v4 = *(this + 15);
      if (v4 != MEMORY[0x277D82C30])
      {
        if (*(v4 + 23) < 0)
        {
          **v4 = 0;
          *(v4 + 8) = 0;
        }

        else
        {
          *v4 = 0;
          *(v4 + 23) = 0;
        }
      }
    }
  }

  *(this + 6) = 0;
  sub_27431BF48(this + 40);
  result = sub_27431BFB8(this + 88);
  *(this + 33) = 0;
  return result;
}

uint64_t awd::profile::Log::Clear(awd::profile::Log *this)
{
  result = sub_27431BF48(this + 8);
  *(this + 9) = 0;
  return result;
}

uint64_t awd::profile::Profile::MergePartialFromCodedStream(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v4 = this;
  v5 = MEMORY[0x277D82C30];
LABEL_2:
  while (2)
  {
    v6 = *(a2 + 1);
    if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
    {
      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      v7 = this;
      *(a2 + 8) = this;
      if (!this)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = v7;
      *(a2 + 1) = v6 + 1;
      if (!v7)
      {
        return 1;
      }
    }

    v8 = v7 & 7;
    switch(v7 >> 3)
    {
      case 1u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_41;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 8));
          if (!this)
          {
            return this;
          }

          v12 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(v4 + 8) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(v4 + 132) |= 1u;
        if (v12 < v9 && *v12 == 24)
        {
          v19 = v12 + 1;
          *(a2 + 1) = v19;
          goto LABEL_51;
        }

        continue;
      case 3u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_41;
        }

        v19 = *(a2 + 1);
        v9 = *(a2 + 2);
LABEL_51:
        if (v19 >= v9 || (v26 = *v19, v26 < 0))
        {
          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 12));
          if (!this)
          {
            return this;
          }

          v27 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(v4 + 12) = v26;
          v27 = (v19 + 1);
          *(a2 + 1) = v27;
        }

        *(v4 + 132) |= 2u;
        if (v27 < v9)
        {
          v28 = *v27;
          goto LABEL_58;
        }

        continue;
      case 4u:
        if ((v7 & 7) == 0)
        {
          v25 = *(a2 + 1);
          v9 = *(a2 + 2);
          while (1)
          {
            v80 = 0;
            if (v25 >= v9 || *v25 < 0)
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80);
              if (!this)
              {
                return 0;
              }
            }

            else
            {
              v80 = *v25;
              *(a2 + 1) = v25 + 1;
            }

            v29 = *(v4 + 24);
            if (v29 == *(v4 + 28))
            {
              this = sub_27431BDF8((v4 + 16), v29 + 1);
              v29 = *(v4 + 24);
            }

            v30 = v80;
            v31 = *(v4 + 16);
            *(v4 + 24) = v29 + 1;
            *(v31 + 4 * v29) = v30;
            v32 = *(v4 + 28) - *(v4 + 24);
            if (v32 >= 1)
            {
              v33 = v32 + 1;
              do
              {
                v34 = *(a2 + 1);
                v35 = *(a2 + 2);
                if (v34 >= v35 || *v34 != 32)
                {
                  break;
                }

                *(a2 + 1) = v34 + 1;
                if ((v34 + 1) >= v35 || (v36 = v34[1], (v36 & 0x80000000) != 0))
                {
                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80);
                  if (!this)
                  {
                    return 0;
                  }

                  v36 = v80;
                  v31 = *(v4 + 16);
                }

                else
                {
                  v80 = v34[1];
                  *(a2 + 1) = v34 + 2;
                }

                v37 = *(v4 + 24);
                *(v4 + 24) = v37 + 1;
                *(v31 + 4 * v37) = v36;
                --v33;
              }

              while (v33 > 1);
            }

LABEL_76:
            v27 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v27 >= v9)
            {
              goto LABEL_2;
            }

            v28 = *v27;
            if (v28 == 40)
            {
              break;
            }

LABEL_58:
            if (v28 != 32)
            {
              goto LABEL_2;
            }

            v25 = (v27 + 1);
            *(a2 + 1) = v25;
          }

          v21 = (v27 + 1);
          *(a2 + 1) = v21;
LABEL_79:
          if (v21 >= v9 || (v38 = *v21, v38 < 0))
          {
            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 32));
            if (!this)
            {
              return this;
            }

            v39 = *(a2 + 1);
            v9 = *(a2 + 2);
          }

          else
          {
            *(v4 + 32) = v38;
            v39 = v21 + 1;
            *(a2 + 1) = v39;
          }

          *(v4 + 132) |= 8u;
          if (v39 < v9 && *v39 == 48)
          {
            v22 = v39 + 1;
            *(a2 + 1) = v22;
LABEL_87:
            v80 = 0;
            if (v22 >= v9 || (v40 = *v22, (v40 & 0x80000000) != 0))
            {
              this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80);
              if (!this)
              {
                return this;
              }

              v40 = v80;
              v41 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              v41 = v22 + 1;
              *(a2 + 1) = v41;
            }

            *(v4 + 36) = v40;
            *(v4 + 132) |= 0x10u;
            if (v41 < v9 && *v41 == 56)
            {
              v17 = v41 + 1;
              *(a2 + 1) = v17;
LABEL_95:
              v80 = 0;
              if (v17 >= v9 || (v42 = *v17, (v42 & 0x80000000) != 0))
              {
                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80);
                if (!this)
                {
                  return this;
                }

                v42 = v80;
                v43 = *(a2 + 1);
                v9 = *(a2 + 2);
              }

              else
              {
                v43 = v17 + 1;
                *(a2 + 1) = v43;
              }

              *(v4 + 64) = v42;
              *(v4 + 132) |= 0x20u;
              if (v43 < v9 && *v43 == 66)
              {
                do
                {
                  *(a2 + 1) = v43 + 1;
LABEL_103:
                  v44 = *(v4 + 52);
                  v45 = *(v4 + 48);
                  if (v45 >= v44)
                  {
                    if (v44 == *(v4 + 56))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 40));
                      v44 = *(v4 + 52);
                    }

                    *(v4 + 52) = v44 + 1;
                    operator new();
                  }

                  v46 = *(v4 + 40);
                  *(v4 + 48) = v45 + 1;
                  v47 = *(v46 + 8 * v45);
                  v80 = 0;
                  v48 = *(a2 + 1);
                  if (v48 >= *(a2 + 2) || *v48 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v80 = *v48;
                    *(a2 + 1) = v48 + 1;
                  }

                  v49 = *(a2 + 14);
                  v50 = *(a2 + 15);
                  *(a2 + 14) = v49 + 1;
                  if (v49 >= v50)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!awd::profile::Metric::MergePartialFromCodedStream(v47, a2, v51) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v52 = *(a2 + 14);
                  v53 = __OFSUB__(v52, 1);
                  v54 = v52 - 1;
                  if (v54 < 0 == v53)
                  {
                    *(a2 + 14) = v54;
                  }

                  v43 = *(a2 + 1);
                  if (v43 >= *(a2 + 2))
                  {
                    goto LABEL_2;
                  }

                  v55 = *v43;
                }

                while (v55 == 66);
                if (v55 == 74)
                {
                  *(a2 + 1) = v43 + 1;
LABEL_121:
                  *(v4 + 132) |= 0x80u;
                  v56 = *(v4 + 72);
                  if (!v56)
                  {
                    operator new();
                  }

                  v80 = 0;
                  v57 = *(a2 + 1);
                  if (v57 >= *(a2 + 2) || *v57 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v80 = *v57;
                    *(a2 + 1) = v57 + 1;
                  }

                  v58 = *(a2 + 14);
                  v59 = *(a2 + 15);
                  *(a2 + 14) = v58 + 1;
                  if (v58 >= v59)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!awd::profile::Log::MergePartialFromCodedStream(v56, a2, v60) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v61 = *(a2 + 14);
                  v53 = __OFSUB__(v61, 1);
                  v62 = v61 - 1;
                  if (v62 < 0 == v53)
                  {
                    *(a2 + 14) = v62;
                  }

                  v63 = *(a2 + 1);
                  v15 = *(a2 + 2);
                  if (v63 < v15 && *v63 == 80)
                  {
                    v24 = v63 + 1;
                    *(a2 + 1) = v24;
LABEL_135:
                    if (v24 >= v15 || (v64 = *v24, v64 < 0))
                    {
                      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 68));
                      if (!this)
                      {
                        return this;
                      }

                      v65 = *(a2 + 1);
                      v15 = *(a2 + 2);
                    }

                    else
                    {
                      *(v4 + 68) = v64;
                      v65 = v24 + 1;
                      *(a2 + 1) = v65;
                    }

                    *(v4 + 132) |= 0x100u;
                    if (v65 < v15 && *v65 == 88)
                    {
                      v23 = v65 + 1;
                      *(a2 + 1) = v23;
LABEL_143:
                      if (v23 >= v15 || (v66 = *v23, v66 < 0))
                      {
                        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 80));
                        if (!this)
                        {
                          return this;
                        }

                        v67 = *(a2 + 1);
                        v15 = *(a2 + 2);
                      }

                      else
                      {
                        *(v4 + 80) = v66;
                        v67 = v23 + 1;
                        *(a2 + 1) = v67;
                      }

                      *(v4 + 132) |= 0x200u;
                      if (v67 < v15 && *v67 == 104)
                      {
                        v16 = v67 + 1;
                        *(a2 + 1) = v16;
LABEL_151:
                        if (v16 >= v15 || (v68 = *v16, v68 < 0))
                        {
                          this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 84));
                          if (!this)
                          {
                            return this;
                          }

                          v69 = *(a2 + 1);
                          v15 = *(a2 + 2);
                        }

                        else
                        {
                          *(v4 + 84) = v68;
                          v69 = (v16 + 1);
                          *(a2 + 1) = v69;
                        }

                        *(v4 + 132) |= 0x400u;
                        if (v15 - v69 >= 2 && *v69 == 160 && v69[1] == 1)
                        {
                          v18 = (v69 + 2);
                          *(a2 + 1) = v18;
LABEL_160:
                          if (v18 >= v15 || (v70 = *v18, v70 < 0))
                          {
                            this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, (v4 + 112));
                            if (!this)
                            {
                              return this;
                            }

                            v71 = *(a2 + 1);
                            v15 = *(a2 + 2);
                          }

                          else
                          {
                            *(v4 + 112) = v70;
                            v71 = (v18 + 1);
                            *(a2 + 1) = v71;
                          }

                          *(v4 + 132) |= 0x800u;
                          if (v15 - v71 >= 2 && *v71 == 130 && v71[1] == 2)
                          {
                            while (1)
                            {
                              *(a2 + 1) = v71 + 2;
LABEL_169:
                              v72 = *(v4 + 100);
                              v73 = *(v4 + 96);
                              if (v73 >= v72)
                              {
                                if (v72 == *(v4 + 104))
                                {
                                  this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 88));
                                  v72 = *(v4 + 100);
                                }

                                *(v4 + 100) = v72 + 1;
                                v74 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(this);
                                v75 = *(v4 + 88);
                                v76 = *(v4 + 96);
                                *(v4 + 96) = v76 + 1;
                                *(v75 + 8 * v76) = v74;
                              }

                              else
                              {
                                *(v4 + 96) = v73 + 1;
                              }

                              this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                              if (!this)
                              {
                                return this;
                              }

                              v71 = *(a2 + 1);
                              v13 = *(a2 + 2);
                              if (v13 - v71 < 2)
                              {
                                goto LABEL_2;
                              }

                              v77 = *v71;
                              if (v77 == 136)
                              {
                                break;
                              }

                              if (v77 != 130 || v71[1] != 2)
                              {
                                goto LABEL_2;
                              }
                            }

                            if (v71[1] == 2)
                            {
                              v14 = (v71 + 2);
                              *(a2 + 1) = v14;
LABEL_182:
                              v80 = 0;
                              if (v14 >= v13 || (v78 = *v14, (v78 & 0x80000000) != 0))
                              {
                                this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v80);
                                if (!this)
                                {
                                  return this;
                                }

                                v78 = v80;
                                v79 = *(a2 + 1);
                                v13 = *(a2 + 2);
                              }

                              else
                              {
                                v79 = (v14 + 1);
                                *(a2 + 1) = v79;
                              }

                              *(v4 + 116) = v78 != 0;
                              v20 = *(v4 + 132) | 0x2000;
                              *(v4 + 132) = v20;
                              if (v13 - v79 >= 2 && *v79 == 146 && v79[1] == 2)
                              {
                                *(a2 + 1) = v79 + 2;
LABEL_191:
                                *(v4 + 132) = v20 | 0x4000;
                                if (*(v4 + 120) == v5)
                                {
                                  operator new();
                                }

                                this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                                if (!this)
                                {
                                  return this;
                                }

                                if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                                {
                                  *(a2 + 8) = 0;
                                  this = 1;
                                  *(a2 + 36) = 1;
                                  return this;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          continue;
        }

        if (v8 != 2)
        {
LABEL_41:
          if (v8 == 4)
          {
            return 1;
          }

          this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v7);
          if ((this & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        this = sub_274310430(a2, (v4 + 16));
        if (this)
        {
          goto LABEL_76;
        }

        return this;
      case 5u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_41;
        }

        v21 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_79;
      case 6u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_41;
        }

        v22 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_87;
      case 7u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_41;
        }

        v17 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_95;
      case 8u:
        if (v8 == 2)
        {
          goto LABEL_103;
        }

        goto LABEL_41;
      case 9u:
        if (v8 == 2)
        {
          goto LABEL_121;
        }

        goto LABEL_41;
      case 0xAu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_41;
        }

        v24 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_135;
      case 0xBu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_41;
        }

        v23 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_143;
      case 0xDu:
        if ((v7 & 7) != 0)
        {
          goto LABEL_41;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_151;
      case 0x14u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_41;
        }

        v18 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_160;
      case 0x20u:
        if (v8 == 2)
        {
          goto LABEL_169;
        }

        goto LABEL_41;
      case 0x21u:
        if ((v7 & 7) != 0)
        {
          goto LABEL_41;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_182;
      case 0x22u:
        if (v8 != 2)
        {
          goto LABEL_41;
        }

        v20 = *(v4 + 132);
        goto LABEL_191;
      default:
        goto LABEL_41;
    }
  }
}

uint64_t sub_274310430(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v11 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v11);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v11 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v10 = 0;
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || *v6 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v10);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v10 = *v6;
        *(this + 1) = v6 + 1;
      }

      v7 = *(a2 + 2);
      if (v7 == *(a2 + 3))
      {
        sub_27431BDF8(a2, v7 + 1);
        v7 = *(a2 + 2);
      }

      v8 = v10;
      v9 = *a2;
      *(a2 + 2) = v7 + 1;
      *(v9 + 4 * v7) = v8;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
  return 1;
}

uint64_t awd::profile::Profile::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 132);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 132);
  }

  if ((v6 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 12), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(*(v5 + 16) + 4 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  v8 = *(v5 + 132);
  if ((v8 & 8) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 32), a2, a4);
    v8 = *(v5 + 132);
    if ((v8 & 0x10) == 0)
    {
LABEL_10:
      if ((v8 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((v8 & 0x10) == 0)
  {
    goto LABEL_10;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(6, *(v5 + 36), a2, a4);
  if ((*(v5 + 132) & 0x20) != 0)
  {
LABEL_11:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(7, *(v5 + 64), a2, a4);
  }

LABEL_12:
  if (*(v5 + 48) >= 1)
  {
    v9 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, *(*(v5 + 40) + 8 * v9++), a2, a4);
    }

    while (v9 < *(v5 + 48));
  }

  v10 = *(v5 + 132);
  if ((v10 & 0x80) != 0)
  {
    v13 = *(v5 + 72);
    if (!v13)
    {
      v13 = *(awd::profile::Profile::default_instance_ + 72);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v13, a2, a4);
    v10 = *(v5 + 132);
    if ((v10 & 0x100) == 0)
    {
LABEL_17:
      if ((v10 & 0x200) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_35;
    }
  }

  else if ((v10 & 0x100) == 0)
  {
    goto LABEL_17;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, *(v5 + 68), a2, a4);
  v10 = *(v5 + 132);
  if ((v10 & 0x200) == 0)
  {
LABEL_18:
    if ((v10 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xB, *(v5 + 80), a2, a4);
  v10 = *(v5 + 132);
  if ((v10 & 0x400) == 0)
  {
LABEL_19:
    if ((v10 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xD, *(v5 + 84), a2, a4);
  if ((*(v5 + 132) & 0x800) != 0)
  {
LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0x14, *(v5 + 112), a2, a4);
  }

LABEL_21:
  if (*(v5 + 96) >= 1)
  {
    v11 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      ++v11;
    }

    while (v11 < *(v5 + 96));
  }

  v12 = *(v5 + 132);
  if ((v12 & 0x2000) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x21, *(v5 + 116), a2, a4);
    v12 = *(v5 + 132);
  }

  if ((v12 & 0x4000) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::Profile::ByteSize(awd::profile::Profile *this, unint64_t a2)
{
  v3 = *(this + 33);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_41;
  }

  if (v3)
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v3 = *(this + 33);
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v7 = 2;
  }

  v4 += v7;
LABEL_14:
  if ((v3 & 8) != 0)
  {
    v8 = *(this + 8);
    if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v9 = 2;
    }

    v4 += v9;
    if ((v3 & 0x10) == 0)
    {
LABEL_16:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_17;
      }

LABEL_29:
      v12 = *(this + 16);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 11;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
        v3 = *(this + 33);
      }

      else
      {
        v13 = 2;
      }

      v4 += v13;
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_35;
    }
  }

  else if ((v3 & 0x10) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(this + 9);
  if ((v10 & 0x80000000) != 0)
  {
    v11 = 11;
  }

  else if (v10 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v11 = 2;
  }

  v4 += v11;
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_29;
  }

LABEL_17:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_41;
  }

LABEL_35:
  v14 = *(this + 9);
  if (!v14)
  {
    v14 = *(awd::profile::Profile::default_instance_ + 72);
  }

  v15 = awd::profile::Log::ByteSize(v14, a2);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
  }

  else
  {
    v17 = 1;
  }

  v4 += v16 + v17 + 1;
  v3 = *(this + 33);
LABEL_41:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_75;
  }

  if ((v3 & 0x100) != 0)
  {
    v18 = *(this + 17);
    if (v18 >= 0x80)
    {
      v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18) + 1;
      v3 = *(this + 33);
    }

    else
    {
      v19 = 2;
    }

    v4 += v19;
    if ((v3 & 0x200) == 0)
    {
LABEL_44:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_45;
      }

LABEL_55:
      v22 = *(this + 21);
      if (v22 >= 0x80)
      {
        v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
        v3 = *(this + 33);
      }

      else
      {
        v23 = 2;
      }

      v4 += v23;
      if ((v3 & 0x800) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_59;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v20 = *(this + 20);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v3 = *(this + 33);
  }

  else
  {
    v21 = 2;
  }

  v4 += v21;
  if ((v3 & 0x400) != 0)
  {
    goto LABEL_55;
  }

LABEL_45:
  if ((v3 & 0x800) != 0)
  {
LABEL_59:
    v24 = *(this + 28);
    if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 2;
      v3 = *(this + 33);
    }

    else
    {
      v25 = 3;
    }

    v4 += v25;
  }

LABEL_63:
  if ((v3 & 0x2000) != 0)
  {
    v4 += 3;
  }

  if ((v3 & 0x4000) != 0)
  {
    v26 = *(this + 15);
    v27 = *(v26 + 23);
    v28 = v27;
    v29 = *(v26 + 8);
    if ((v27 & 0x80u) == 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = v29;
    }

    if (v30 >= 0x80)
    {
      v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30);
      v27 = *(v26 + 23);
      v29 = *(v26 + 8);
      v28 = *(v26 + 23);
    }

    else
    {
      v31 = 1;
    }

    if (v28 < 0)
    {
      v27 = v29;
    }

    v4 += v31 + v27 + 2;
  }

LABEL_75:
  v32 = *(this + 6);
  if (v32 < 1)
  {
    v34 = 0;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    do
    {
      v35 = *(*(this + 2) + 4 * v33);
      if (v35 >= 0x80)
      {
        v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
        v32 = *(this + 6);
      }

      else
      {
        v36 = 1;
      }

      v34 += v36;
      ++v33;
    }

    while (v33 < v32);
  }

  v37 = *(this + 12);
  v38 = v34 + v4 + v32 + v37;
  if (v37 >= 1)
  {
    v39 = 0;
    do
    {
      v40 = awd::profile::Metric::ByteSize(*(*(this + 5) + 8 * v39), a2);
      v41 = v40;
      if (v40 >= 0x80)
      {
        v42 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v40);
      }

      else
      {
        v42 = 1;
      }

      v38 += v41 + v42;
      ++v39;
    }

    while (v39 < *(this + 12));
  }

  v43 = *(this + 24);
  v44 = (v38 + 2 * v43);
  if (v43 >= 1)
  {
    for (i = 0; i < v43; ++i)
    {
      v46 = *(*(this + 11) + 8 * i);
      v47 = *(v46 + 23);
      v48 = v47;
      v49 = *(v46 + 8);
      if ((v47 & 0x80u) == 0)
      {
        v50 = *(v46 + 23);
      }

      else
      {
        v50 = v49;
      }

      if (v50 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50);
        v47 = *(v46 + 23);
        v49 = *(v46 + 8);
        v43 = *(this + 24);
        v48 = *(v46 + 23);
      }

      else
      {
        v51 = 1;
      }

      if (v48 < 0)
      {
        v47 = v49;
      }

      v44 = (v51 + v44 + v47);
    }
  }

  *(this + 32) = v44;
  return v44;
}

void awd::profile::Log::MergeFrom(awd::profile::Log *this, const awd::profile::Log *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
  if (*(a2 + 4) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(a2 + 1) + 8 * v4);
      v6 = *(this + 5);
      v7 = *(this + 4);
      if (v7 >= v6)
      {
        if (v6 == *(this + 6))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
          v6 = *(this + 5);
        }

        *(this + 5) = v6 + 1;
        operator new();
      }

      v8 = *(this + 1);
      *(this + 4) = v7 + 1;
      awd::profile::LogParameter::MergeFrom(*(v8 + 8 * v7), v5);
      ++v4;
    }

    while (v4 < *(a2 + 4));
  }
}

void sub_274310C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::Profile::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    (*(this->__r_.__value_.__r.__words[0] + 32))(this);

    awd::profile::Profile::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::Profile::Swap(uint64_t this, awd::profile::Profile *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    v7 = *(a2 + 3);
    *(a2 + 2) = v6;
    v8 = *(this + 24);
    *(this + 24) = v7;
    *(a2 + 3) = v8;
    LODWORD(v6) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v6;
    LODWORD(v6) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v6;
    LODWORD(v6) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v6;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v9 = *(v3 + 72);
    *(v3 + 72) = *(a2 + 9);
    *(a2 + 9) = v9;
    LODWORD(v9) = *(v3 + 68);
    *(v3 + 68) = *(a2 + 17);
    *(a2 + 17) = v9;
    LODWORD(v9) = *(v3 + 80);
    *(v3 + 80) = *(a2 + 20);
    *(a2 + 20) = v9;
    LODWORD(v9) = *(v3 + 84);
    *(v3 + 84) = *(a2 + 21);
    *(a2 + 21) = v9;
    LODWORD(v9) = *(v3 + 112);
    *(v3 + 112) = *(a2 + 28);
    *(a2 + 28) = v9;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v10 = *(v3 + 116);
    *(v3 + 116) = *(a2 + 116);
    *(a2 + 116) = v10;
    v11 = *(v3 + 120);
    *(v3 + 120) = *(a2 + 15);
    *(a2 + 15) = v11;
    LODWORD(v11) = *(v3 + 132);
    *(v3 + 132) = *(a2 + 33);
    *(a2 + 33) = v11;
    LODWORD(v11) = *(v3 + 128);
    *(v3 + 128) = *(a2 + 32);
    *(a2 + 32) = v11;
  }

  return this;
}

void *awd::profile::LogParameter::SharedCtor(void *this)
{
  v1 = MEMORY[0x277D82C30];
  this[1] = MEMORY[0x277D82C30];
  this[2] = v1;
  this[3] = 0;
  return this;
}

awd::profile::LogParameter *awd::profile::LogParameter::LogParameter(awd::profile::LogParameter *this, const awd::profile::LogParameter *a2)
{
  v3 = MEMORY[0x277D82C30];
  *this = &unk_288352C38;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  awd::profile::LogParameter::MergeFrom(this, a2);
  return this;
}

void awd::profile::LogParameter::MergeFrom(awd::profile::LogParameter *this, const awd::profile::LogParameter *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    v5 = MEMORY[0x277D82C30];
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 7) |= 1u;
      v7 = *(this + 1);
      if (v7 == v5)
      {
        operator new();
      }

      std::string::operator=(v7, v6);
      v4 = *(a2 + 7);
    }

    if ((v4 & 2) != 0)
    {
      v8 = *(a2 + 2);
      *(this + 7) |= 2u;
      v9 = *(this + 2);
      if (v9 == v5)
      {
        operator new();
      }

      std::string::operator=(v9, v8);
    }
  }
}

void sub_274311048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::profile::LogParameter::~LogParameter(awd::profile::LogParameter *this)
{
  *this = &unk_288352C38;
  awd::profile::LogParameter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288352C38;
  awd::profile::LogParameter::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_288352C38;
  awd::profile::LogParameter::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x2743E9A90);
}

uint64_t awd::profile::LogParameter::SharedDtor(uint64_t this)
{
  v1 = this;
  v2 = *(this + 8);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x2743E9A90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 16);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    JUMPOUT(0x2743E9A90);
  }

  return this;
}

uint64_t awd::profile::LogParameter::default_instance(awd::profile::LogParameter *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::profile::LogParameter::default_instance_;
  if (!awd::profile::LogParameter::default_instance_)
  {
    awd::profile::protobuf_AddDesc_AwdProfile_2eproto(0, a2, a3, a4);
    return awd::profile::LogParameter::default_instance_;
  }

  return result;
}

uint64_t awd::profile::LogParameter::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    v1 = MEMORY[0x277D82C30];
    if (*(this + 28))
    {
      v2 = *(this + 8);
      if (v2 != MEMORY[0x277D82C30])
      {
        if (*(v2 + 23) < 0)
        {
          **v2 = 0;
          *(v2 + 8) = 0;
        }

        else
        {
          *v2 = 0;
          *(v2 + 23) = 0;
        }
      }
    }

    if ((*(this + 28) & 2) != 0)
    {
      v3 = *(this + 16);
      if (v3 != v1)
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
        }

        else
        {
          *v3 = 0;
          *(v3 + 23) = 0;
        }
      }
    }
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::profile::LogParameter::MergePartialFromCodedStream(awd::profile::LogParameter *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2, unsigned int a3)
{
  v5 = MEMORY[0x277D82C30];
  while (1)
  {
    while (1)
    {
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v8 != 2)
      {
        goto LABEL_17;
      }

      *(this + 7) |= 1u;
      if (*(this + 1) == v5)
      {
        operator new();
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 18)
      {
        *(a2 + 1) = v10 + 1;
LABEL_20:
        *(this + 7) |= 2u;
        if (*(this + 2) == v5)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v8 == 2)
    {
      goto LABEL_20;
    }

LABEL_17:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::profile::LogParameter::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2)
{
  v2 = this;
  v3 = *(this + 28);
  if (v3)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v3 = *(v2 + 28);
  }

  if ((v3 & 2) != 0)
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  }

  return this;
}

uint64_t awd::profile::LogParameter::ByteSize(awd::profile::LogParameter *this, unsigned int a2)
{
  LOBYTE(v3) = *(this + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_24;
  }

  if ((*(this + 28) & 1) == 0)
  {
    v4 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 1);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v10 = v11 + 1;
    v3 = *(this + 7);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 2;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v10 + v6);
  if ((v3 & 2) != 0)
  {
LABEL_15:
    v12 = *(this + 2);
    v13 = *(v12 + 23);
    v14 = v13;
    v15 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v16 = *(v12 + 23);
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 0x80)
    {
      v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
      v13 = *(v12 + 23);
      v15 = *(v12 + 8);
      v14 = *(v12 + 23);
    }

    else
    {
      v17 = 1;
    }

    if (v14 < 0)
    {
      v13 = v15;
    }

    v4 = (v4 + v17 + v13 + 1);
  }

LABEL_24:
  *(this + 6) = v4;
  return v4;
}

void awd::profile::LogParameter::CopyFrom(awd::profile::LogParameter *this, const awd::profile::LogParameter *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    awd::profile::LogParameter::MergeFrom(this, a2);
  }
}

uint64_t awd::profile::LogParameter::Swap(uint64_t this, awd::profile::LogParameter *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return this;
}

awd::profile::Log *awd::profile::Log::Log(awd::profile::Log *this, const awd::profile::Log *a2)
{
  *this = &unk_288352CB0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  awd::profile::Log::MergeFrom(this, a2);
  return this;
}