void sub_100295078(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1002951C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100295420(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_100295BF4(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_10029686C(id a1)
{
  if (+[NIPlatformInfo isInternalBuild])
  {
    v1 = +[NSUserDefaults standardUserDefaults];
    byte_1009EBD48 = [v1 BOOLForKey:@"FindingDisableMutualAuth"];

    v2 = qword_1009F9820;
    if (os_log_type_enabled(qword_1009F9820, OS_LOG_TYPE_DEFAULT))
    {
      v3[0] = 67109120;
      v3[1] = byte_1009EBD48;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#find-range,#auth Disable mutual auth: %d", v3, 8u);
    }
  }

  else
  {
    byte_1009EBD48 = 0;
  }
}

char *sub_100296970(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((v9 - v10) < __len)
  {
    v11 = *a1;
    v12 = v10 - *a1 + __len;
    if (v12 < 0)
    {
      sub_100019B38();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if ((v10 - __dst) >= __len)
  {
    v26 = &__dst[__len];
    v27 = (v10 - __len);
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = (v10 + v17);
  *(a1 + 8) = v10 + v17;
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = (v10 + v17);
    if (&v18[-v6] < v10)
    {
      v21 = (a4 - &v7[v6]);
      v22 = (a4 - v7);
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

uint64_t *sub_100296B98(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    sub_100009AC4(result, a4);
  }

  return result;
}

void sub_100296BF0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100296C2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1009A1B80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100296CD4(uint64_t a1)
{

  operator delete();
}

id sub_100296D88(uint64_t a1, void *a2)
{
  *a2 = off_1009A1BD0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100296DD8(id *a1)
{

  operator delete(a1);
}

void sub_100296E14(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _serviceRequestStatusUpdate:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_100296E88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100296EA0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1C30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100296F18(uint64_t a1)
{

  operator delete();
}

id sub_100296FCC(uint64_t a1, void *a2)
{
  *a2 = off_1009A1C50;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_10029701C(id *a1)
{

  operator delete(a1);
}

void sub_100297058(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _didReceiveNewSolution:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_1002970CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002970E4(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1CB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10029715C(uint64_t a1)
{

  operator delete();
}

id sub_100297210(uint64_t a1, void *a2)
{
  *a2 = off_1009A1CD0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_100297260(id *a1)
{

  operator delete(a1);
}

void sub_10029729C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _didReceivePeerData:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_100297310(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100297328(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1D30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002973A0(uint64_t a1)
{

  operator delete();
}

id sub_100297454(uint64_t a1, void *a2)
{
  *a2 = off_1009A1D50;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002974A4(id *a1)
{

  operator delete(a1);
}

void sub_1002974E0(uint64_t a1, void *a2, unsigned int *a3)
{
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v5 = *a3;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _didReceiveInvalidation:v5];
  if (v4)
  {

    sub_10000AD84(v4);
  }
}

void sub_100297554(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10029756C(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1DB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002975E4(uint64_t a1)
{

  operator delete();
}

id sub_100297698(uint64_t a1, void *a2)
{
  *a2 = off_1009A1DD0;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void sub_1002976E8(id *a1)
{

  operator delete(a1);
}

void sub_100297724(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  dispatch_assert_queue_V2(*(*(a1 + 8) + 8));
  [*(a1 + 8) _didReceiveUnsuccessfulSolution:a3];
  if (v5)
  {

    sub_10000AD84(v5);
  }
}

void sub_100297798(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10000AD84(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002977B0(uint64_t a1, uint64_t a2)
{
  if (sub_100023EF4(a2, &off_1009A1E30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100297800(uint64_t a1)
{
  sub_10033B624(a1);

  operator delete();
}

void sub_100297840(uint64_t a1)
{
  sub_10033B624(a1 - 8);

  operator delete();
}

void *sub_100297900(void *a1, void **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10098B6C8;
  sub_10031455C((a1 + 3), *a2);
  return a1;
}

uint64_t sub_100297980(uint64_t result, void *a2, uint64_t a3, float a4)
{
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2080;
  *(a3 + 14) = v5;
  return result;
}

void sub_1002979A4(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

uint64_t sub_1002979D0(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2112;
  *(a4 + 14) = v4;
  return result;
}

void sub_1002979FC()
{
  if ((atomic_load_explicit(&qword_1009E9448, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9448))
  {
    sub_100004A08(qword_1009E9430, "PRRoseProviderNetworkListener");
    __cxa_atexit(&std::string::~string, qword_1009E9430, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9448);
  }
}

void sub_100297AAC()
{
  if ((atomic_load_explicit(&qword_1009E9468, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9468))
  {
    sub_100004A08(&qword_1009E9450, "com.apple.nearbyd.accessory.download");
    __cxa_atexit(&std::string::~string, &qword_1009E9450, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9468);
  }
}

void sub_100297B5C()
{
  if ((atomic_load_explicit(&qword_1009E9488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9488))
  {
    sub_100004A08(&qword_1009E9470, "com.apple.nearbyd.accessory.files");
    __cxa_atexit(&std::string::~string, &qword_1009E9470, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9488);
  }
}

void sub_100297C0C()
{
  if ((atomic_load_explicit(&qword_1009E94A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94A8))
  {
    sub_100004A08(qword_1009E9490, "MA_");
    __cxa_atexit(&std::string::~string, qword_1009E9490, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94A8);
  }
}

void sub_100297CBC()
{
  if ((atomic_load_explicit(&qword_1009E94C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94C8))
  {
    sub_100004A08(qword_1009E94B0, "MB_");
    __cxa_atexit(&std::string::~string, qword_1009E94B0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94C8);
  }
}

void sub_100297D6C()
{
  if ((atomic_load_explicit(&qword_1009E94E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E94E8))
  {
    sub_100004A08(qword_1009E94D0, "D");
    __cxa_atexit(&std::string::~string, qword_1009E94D0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E94E8);
  }
}

void sub_100297E1C()
{
  if ((atomic_load_explicit(&qword_1009E9508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9508))
  {
    sub_100004A08(&qword_1009E94F0, "A");
    __cxa_atexit(&std::string::~string, &qword_1009E94F0, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9508);
  }
}

void sub_100297ECC()
{
  if ((atomic_load_explicit(&qword_1009E9528, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009E9528))
  {
    sub_100004A08(qword_1009E9510, "FAS.bin");
    __cxa_atexit(&std::string::~string, qword_1009E9510, &_mh_execute_header);

    __cxa_guard_release(&qword_1009E9528);
  }
}

void sub_100297F7C()
{
  if ((atomic_load_explicit(&qword_1009E9548, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1009E9548))
    {
      memset(v0, 0, 32);
      v0[2] = xmmword_100568BA0;
      qword_1009E9538 = 0;
      unk_1009E9540 = 0;
      qword_1009E9530 = 0;
      sub_100019AC4(&qword_1009E9530, v0, &v1, 6uLL);
      __cxa_atexit(sub_100017360, &qword_1009E9530, &_mh_execute_header);
      __cxa_guard_release(&qword_1009E9548);
    }
  }
}

void sub_100298070()
{
  v0 = objc_autoreleasePoolPush();
  sub_10041C9CC(0);
  v1 = std::string::insert(&v37, 0, "reverseLUT_A");
  v2 = *&v1->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v1->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v2;
  v1->__r_.__value_.__l.__size_ = 0;
  v1->__r_.__value_.__r.__words[2] = 0;
  v1->__r_.__value_.__r.__words[0] = 0;
  v3 = std::string::append(&v38, ".bin");
  v4 = *&v3->__r_.__value_.__l.__data_;
  qword_1009F2A88 = v3->__r_.__value_.__r.__words[2];
  xmmword_1009F2A78 = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2A78, &_mh_execute_header);
  sub_10041C9CC(1);
  v5 = std::string::insert(&v37, 0, "reverseLUT_A");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v38, ".bin");
  v8 = *&v7->__r_.__value_.__l.__data_;
  qword_1009F2AA0 = v7->__r_.__value_.__r.__words[2];
  xmmword_1009F2A90 = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2A90, &_mh_execute_header);
  sub_10041C9CC(2);
  v9 = std::string::insert(&v37, 0, "reverseLUT_A");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v38, ".bin");
  v12 = *&v11->__r_.__value_.__l.__data_;
  qword_1009F2AB8 = v11->__r_.__value_.__r.__words[2];
  xmmword_1009F2AA8 = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2AA8, &_mh_execute_header);
  sub_10041C9CC(3);
  v13 = std::string::insert(&v37, 0, "reverseLUT_A");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v38, ".bin");
  v16 = *&v15->__r_.__value_.__l.__data_;
  qword_1009F2AD0 = v15->__r_.__value_.__r.__words[2];
  xmmword_1009F2AC0 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2AC0, &_mh_execute_header);
  sub_10041C9CC(4);
  v17 = std::string::insert(&v37, 0, "reverseLUT_A");
  v18 = *&v17->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(&v38, ".bin");
  v20 = *&v19->__r_.__value_.__l.__data_;
  qword_1009F2AE8 = v19->__r_.__value_.__r.__words[2];
  xmmword_1009F2AD8 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2AD8, &_mh_execute_header);
  sub_10041C9CC(5);
  v21 = std::string::insert(&v37, 0, "reverseLUT_A");
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ".bin");
  v24 = *&v23->__r_.__value_.__l.__data_;
  qword_1009F2B00 = v23->__r_.__value_.__r.__words[2];
  xmmword_1009F2AF0 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2AF0, &_mh_execute_header);
  sub_10041C9CC(6);
  v25 = std::string::insert(&v37, 0, "reverseLUT_A");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v38, ".bin");
  v28 = *&v27->__r_.__value_.__l.__data_;
  qword_1009F2B18 = v27->__r_.__value_.__r.__words[2];
  xmmword_1009F2B08 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2B08, &_mh_execute_header);
  sub_10041C9CC(7);
  v29 = std::string::insert(&v37, 0, "reverseLUT_A");
  v30 = *&v29->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v38, ".bin");
  v32 = *&v31->__r_.__value_.__l.__data_;
  qword_1009F2B30 = v31->__r_.__value_.__r.__words[2];
  xmmword_1009F2B20 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2B20, &_mh_execute_header);
  sub_10041C9CC(8);
  v33 = std::string::insert(&v37, 0, "reverseLUT_A");
  v34 = *&v33->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v38, ".bin");
  v36 = *&v35->__r_.__value_.__l.__data_;
  qword_1009F2B48 = v35->__r_.__value_.__r.__words[2];
  xmmword_1009F2B38 = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  __cxa_atexit(&std::string::~string, &xmmword_1009F2B38, &_mh_execute_header);
  objc_autoreleasePoolPop(v0);
}

void sub_1002986B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100298768(id a1)
{
  v1 = [[NIServerUsageAnalyticsAggregator alloc] _initInternal];
  v2 = qword_1009F2B78;
  qword_1009F2B78 = v1;
}

char *sub_100298928(uint64_t a1)
{
  v1 = [*(a1 + 32) _internalPrintableState];
  v2 = sub_10003FA2C(@"Aggregated Usage", v1);

  return v2;
}

void sub_1002989F4(uint64_t a1)
{
  v2 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Notify unlock since boot", buf, 2u);
  }

  *(*(a1 + 32) + 16) = 1;
  v3 = +[BGSystemTaskScheduler sharedScheduler];
  [v3 deregisterTaskWithIdentifier:off_1009EBD50];

  v4 = +[BGSystemTaskScheduler sharedScheduler];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100298C78;
  v16[3] = &unk_1009A2298;
  v16[4] = v5;
  [v4 registerForTaskWithIdentifier:off_1009EBD50 usingQueue:v6 launchHandler:v16];

  v7 = +[BGSystemTaskScheduler sharedScheduler];
  v8 = [v7 taskRequestForIdentifier:off_1009EBD50];

  if (v8)
  {
    v9 = qword_1009F2B70;
    if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Aggregation task previously requested - skip restarting", buf, 2u);
    }
  }

  else
  {
    v10 = [BGRepeatingSystemTaskRequest alloc];
    v11 = [v10 initWithIdentifier:off_1009EBD50];
    [*(a1 + 32) _backgroundTaskInterval];
    [v11 setInterval:?];
    [v11 setPriority:2];
    v12 = +[BGSystemTaskScheduler sharedScheduler];
    v15 = 0;
    [v12 submitTaskRequest:v11 error:&v15];
    v13 = v15;

    v14 = qword_1009F2B70;
    if (v13)
    {
      if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
      {
        sub_1004B73DC();
      }
    }

    else if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Aggregation task started", buf, 2u);
    }
  }
}

void sub_100298D2C(uint64_t a1)
{
  v2 = [*(a1 + 32) _dayNumberFromDate:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (v3[16])
  {
    v4 = [v3 _shouldRecordUsage];
    v5 = qword_1009F2B70;
    v6 = os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        v7 = *(a1 + 48);
        v8 = v5;
        v9 = sub_10029906C(v7);
        v25 = 138412546;
        v26 = v9;
        v27 = 1024;
        v28 = v2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Recording usage %@ (day %d)...", &v25, 0x12u);
      }

      v10 = [*(a1 + 32) _loadUsageRecords];
      v11 = [NSNumber numberWithInt:v2];
      v12 = [v10 objectForKeyedSubscript:v11];
      v13 = v12 == 0;

      if (v13)
      {
        v14 = [[_UWBUsageRecord alloc] initWithDayNumber:v2];
        v15 = [NSNumber numberWithInt:v2];
        [v10 setObject:v14 forKeyedSubscript:v15];
      }

      v16 = [NSNumber numberWithInt:v2];
      v17 = [v10 objectForKeyedSubscript:v16];
      v18 = [v17 recordUsage:*(a1 + 48)];

      if (v18)
      {
        [*(a1 + 32) _saveUsageRecords:v10];
        v19 = qword_1009F2B70;
        if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          v20 = "#ca-aggr,Recording usage done";
LABEL_16:
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, &v25, 2u);
        }
      }

      else
      {
        v19 = qword_1009F2B70;
        if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          v20 = "#ca-aggr,Recording usage skipped, no change";
          goto LABEL_16;
        }
      }

      return;
    }

    if (v6)
    {
      v22 = *(a1 + 48);
      v23 = v5;
      v24 = sub_10029906C(v22);
      v25 = 138412546;
      v26 = v24;
      v27 = 1024;
      v28 = v2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Recording usage %@ (day %d) skipped, not opted in", &v25, 0x12u);
    }
  }

  else
  {
    v21 = qword_1009F2B70;
    if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_ERROR))
    {
      sub_1004B744C(a1, v21, v2);
    }
  }
}

const __CFString *sub_10029906C(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return @"UNKNOWN";
  }

  else
  {
    return *(&off_1009A2460 + a1);
  }
}

uint64_t sub_100299180(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100299198(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalPrintableState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

int64_t sub_100299440(id a1, _UWBUsageRecord *a2, _UWBUsageRecord *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(_UWBUsageRecord *)v4 dayNumber];
  if (v6 >= [(_UWBUsageRecord *)v5 dayNumber])
  {
    v8 = [(_UWBUsageRecord *)v4 dayNumber];
    v7 = v8 > [(_UWBUsageRecord *)v5 dayNumber];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_1002994D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSString stringWithFormat:@"    %@", a2];
  [v2 addObject:?];
}

void sub_100299EA4(id a1)
{
  v1 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#ca-aggr,Aggregation task expiring", v2, 2u);
  }
}

void sub_100299F08(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 intValue] < *(a1 + 64))
  {
    v6 = [v9 intValue];
    if (v6 >= [*(a1 + 32) dayNumber])
    {
      [*(a1 + 32) aggregateUsageWith:v5];
    }

    v7 = [v9 intValue];
    if (v7 >= [*(a1 + 40) dayNumber])
    {
      [*(a1 + 40) aggregateUsageWith:v5];
    }

    v8 = [v9 intValue];
    if (v8 >= [*(a1 + 48) dayNumber])
    {
      [*(a1 + 48) aggregateUsageWith:v5];
      [*(a1 + 56) addObject:v5];
    }
  }
}

int64_t sub_10029A014(id a1, _UWBUsageRecord *a2, _UWBUsageRecord *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(_UWBUsageRecord *)v4 dayNumber];
  if (v6 >= [(_UWBUsageRecord *)v5 dayNumber])
  {
    v8 = [(_UWBUsageRecord *)v4 dayNumber];
    v7 = v8 > [(_UWBUsageRecord *)v5 dayNumber];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

void sub_10029A0AC(id a1, _UWBUsageRecord *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = qword_1009F2B70;
  if (os_log_type_enabled(qword_1009F2B70, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#ca-aggr,        %@", &v6, 0xCu);
  }
}

BOOL sub_10029A16C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 intValue] <= *(a1 + 32) - 33 || objc_msgSend(v3, "intValue") >= *(a1 + 32) + 3;

  return v4;
}

void sub_10029A1E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_1009F2B70;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:v3];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#ca-aggr,    %@", &v6, 0xCu);
  }

  [*(a1 + 32) setObject:0 forKeyedSubscript:v3];
}

void sub_10029A628(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [[_UWBUsageRecord alloc] initWithDictionary:v7];
  v4 = v3;
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = [NSNumber numberWithInt:[(_UWBUsageRecord *)v3 dayNumber]];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }
}

void sub_10029A91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  v20 = v19;

  _Unwind_Resume(a1);
}

void sub_10029A964(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = [a3 convertToDictionary];
  [v3 addObject:?];
}

void sub_10029AA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029B1B0()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F2B70 = os_log_create("com.apple.nearbyd", "Analytics");

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10029B230(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_10002074C(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_10029B27C(uint64_t a1)
{
  sub_10002074C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10029B2E8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *a3;
  sub_10029F1D8((a1 + 24), a3 + 16);
  v5 = *(a3 + 40);
  *(a1 + 60) = *(a3 + 52);
  *(a1 + 48) = v5;
  sub_10029F2B8((a1 + 80), (a3 + 72));
  v6 = *(a3 + 120);
  *(a1 + 112) = *(a3 + 104);
  *(a1 + 128) = v6;
  v7 = *(a3 + 136);
  v8 = *(a3 + 152);
  v9 = *(a3 + 184);
  *(a1 + 176) = *(a3 + 168);
  *(a1 + 192) = v9;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  v10 = *(a3 + 200);
  v11 = *(a3 + 216);
  v12 = *(a3 + 248);
  *(a1 + 240) = *(a3 + 232);
  *(a1 + 256) = v12;
  *(a1 + 208) = v10;
  *(a1 + 224) = v11;
  v13 = *(a3 + 264);
  v14 = *(a3 + 280);
  v15 = *(a3 + 296);
  *(a1 + 320) = *(a3 + 312);
  *(a1 + 288) = v14;
  *(a1 + 304) = v15;
  *(a1 + 272) = v13;
  return a1;
}

uint64_t sub_10029B3B8(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *a3;
  sub_10029F1D8((a1 + 24), a3 + 16);
  v5 = *(a3 + 40);
  *(a1 + 60) = *(a3 + 52);
  *(a1 + 48) = v5;
  sub_10029F2B8((a1 + 80), (a3 + 72));
  v6 = *(a3 + 120);
  *(a1 + 112) = *(a3 + 104);
  *(a1 + 128) = v6;
  v7 = *(a3 + 136);
  v8 = *(a3 + 152);
  v9 = *(a3 + 184);
  *(a1 + 176) = *(a3 + 168);
  *(a1 + 192) = v9;
  *(a1 + 144) = v7;
  *(a1 + 160) = v8;
  v10 = *(a3 + 200);
  v11 = *(a3 + 216);
  v12 = *(a3 + 248);
  *(a1 + 240) = *(a3 + 232);
  *(a1 + 256) = v12;
  *(a1 + 208) = v10;
  *(a1 + 224) = v11;
  v13 = *(a3 + 264);
  v14 = *(a3 + 280);
  v15 = *(a3 + 296);
  *(a1 + 320) = *(a3 + 312);
  *(a1 + 288) = v14;
  *(a1 + 304) = v15;
  *(a1 + 272) = v13;
  return a1;
}

uint64_t sub_10029B488(uint64_t a1)
{
  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  sub_10002074C(a1 + 24, *(a1 + 32));
  return a1;
}

uint64_t sub_10029B500(uint64_t a1)
{
  sub_1002A0818(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10029B540(uint64_t a1)
{
  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_10002074C(a1 + 40, *(a1 + 48));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10029B5F4(uint64_t a1)
{
  sub_10029FE38(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10029B660(uint64_t a1, uint64_t a2, uint64_t *a3, const void **a4, const void **a5, __int128 *a6, __int128 *a7)
{
  v13 = qword_1009FA038;
  if (qword_1009FA038)
  {
    v14 = *a3;
    v15 = &qword_1009FA038;
    do
    {
      if (*(v13 + 32) >= v14)
      {
        v15 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 32) < v14));
    }

    while (v13);
    if (v15 != &qword_1009FA038 && v14 >= *(v15 + 8))
    {
      v86 = a3;
      v16 = sub_1002A1E14(&qword_1009FA030, a3, &unk_100548C50, &v86);
      sub_1002A0EF0(&v88, (v16 + 5));
      if (v89 != sub_1000087BC(&v88, a4))
      {
        v91 = a4;
        v17 = sub_1002A1EF4(&v88, a4, &unk_100548C50, &v91, &v90);
        sub_1002A0BBC(&v86, (v17 + 7));
        if (v87 != sub_1000087BC(&v86, a5))
        {
          v91 = a5;
          v18 = sub_1002A2040(&v86, a5, &unk_100548C50, &v91, &v90);
          v19 = v18;
          *a2 = *(v18 + 7);
          if (v18 + 7 != a2)
          {
            sub_10029EC60((a2 + 16), v18[9], v18 + 10);
          }

          goto LABEL_74;
        }

        sub_1002A0818(&v86, v87[0]);
      }

      sub_1002A0768(&v88, v89[0]);
    }
  }

  v20 = qword_1009FA050;
  if (qword_1009FA050)
  {
    v21 = *a3;
    v22 = &qword_1009FA050;
    do
    {
      if (*(v20 + 32) >= v21)
      {
        v22 = v20;
      }

      v20 = *(v20 + 8 * (*(v20 + 32) < v21));
    }

    while (v20);
    if (v22 != &qword_1009FA050 && v21 >= *(v22 + 8))
    {
      v86 = a3;
      v23 = sub_1002A1E14(&qword_1009FA048, a3, &unk_100548C50, &v86);
      sub_1002A1490(&v88, (v23 + 5));
      v24 = v89[0];
      if (v89[0])
      {
        v25 = *a6;
        v26 = v89;
        v27 = v89[0];
        do
        {
          if (*(v27 + 8) >= v25)
          {
            v26 = v27;
          }

          v27 = v27[*(v27 + 8) < v25];
        }

        while (v27);
        if (v26 != v89 && v25 >= *(v26 + 8))
        {
          v91 = a6;
          v28 = sub_1002A1E14(&v88, a6, &unk_100548C50, &v91);
          sub_1002A0BBC(&v86, (v28 + 5));
          if (v87 != sub_1000087BC(&v86, a5))
          {
            v91 = a5;
            v29 = sub_1002A2040(&v86, a5, &unk_100548C50, &v91, &v90);
            v30 = v29;
            *a2 = *(v29 + 7);
            if (v29 + 7 != a2)
            {
              sub_10029EC60((a2 + 16), v29[9], v29 + 10);
            }

            v31 = *(v30 + 6);
            *(a2 + 52) = *(v30 + 108);
            *(a2 + 40) = v31;
            sub_10029EED4((a2 + 72), (v30 + 16));
            v32 = *(v30 + 10);
            *(a2 + 120) = *(v30 + 11);
            *(a2 + 104) = v32;
            v33 = *(v30 + 12);
            v34 = *(v30 + 13);
            v35 = *(v30 + 14);
            *(a2 + 184) = *(v30 + 15);
            *(a2 + 168) = v35;
            *(a2 + 152) = v34;
            *(a2 + 136) = v33;
            v36 = *(v30 + 16);
            v37 = *(v30 + 17);
            v38 = *(v30 + 18);
            *(a2 + 248) = *(v30 + 19);
            *(a2 + 232) = v38;
            *(a2 + 216) = v37;
            *(a2 + 200) = v36;
            v39 = *(v30 + 20);
            v40 = *(v30 + 21);
            v41 = *(v30 + 22);
            *(a2 + 312) = v30[46];
            *(a2 + 280) = v40;
            *(a2 + 296) = v41;
            *(a2 + 264) = v39;
            sub_1002A0818(&v86, v87[0]);
            sub_1002A1230(&v88, v89[0]);
            return;
          }

          sub_1002A0818(&v86, v87[0]);
          v24 = v89[0];
        }
      }

      sub_1002A1230(&v88, v24);
    }
  }

  v42 = qword_1009FA068;
  if (qword_1009FA068)
  {
    v43 = *a3;
    v44 = &qword_1009FA068;
    do
    {
      if (*(v42 + 32) >= v43)
      {
        v44 = v42;
      }

      v42 = *(v42 + 8 * (*(v42 + 32) < v43));
    }

    while (v42);
    if (v44 != &qword_1009FA068 && v43 >= *(v44 + 8))
    {
      v86 = a3;
      v45 = sub_1002A1E14(&qword_1009FA060, a3, &unk_100548C50, &v86);
      sub_1002A0EF0(&v88, (v45 + 5));
      v91 = &qword_1009F33F8;
      v46 = sub_1002A1EF4(&v88, &qword_1009F33F8, &unk_100548C50, &v91, &v90);
      sub_1002A0BBC(&v86, (v46 + 7));
      if (v87 != sub_1000087BC(&v86, a5))
      {
        v91 = a5;
        v47 = sub_1002A2040(&v86, a5, &unk_100548C50, &v91, &v90);
        v19 = v47;
        *a2 = *(v47 + 7);
        if (v47 + 7 != a2)
        {
          sub_10029EC60((a2 + 16), v47[9], v47 + 10);
        }

        goto LABEL_74;
      }

      sub_1002A0818(&v86, v87[0]);
      sub_1002A0768(&v88, v89[0]);
    }
  }

  v48 = qword_1009FA080;
  if (qword_1009FA080)
  {
    v49 = *a3;
    v50 = &qword_1009FA080;
    do
    {
      if (*(v48 + 32) >= v49)
      {
        v50 = v48;
      }

      v48 = *(v48 + 8 * (*(v48 + 32) < v49));
    }

    while (v48);
    if (v50 != &qword_1009FA080 && v49 >= *(v50 + 8))
    {
      v86 = a3;
      v51 = sub_1002A1E14(&qword_1009FA078, a3, &unk_100548C50, &v86);
      sub_1002A1AD4(&v88, (v51 + 5));
      if (v89 != sub_1000087BC(&v88, a4))
      {
        v91 = a4;
        v52 = sub_1002A2358(&v88, a4, &unk_100548C50, &v91, &v90);
        sub_1002A0148(&v86, (v52 + 7));
        if (v87[0])
        {
          v53 = *a7;
          v54 = v87;
          v55 = v87[0];
          do
          {
            if (*(v55 + 8) >= v53)
            {
              v54 = v55;
            }

            v55 = v55[*(v55 + 8) < v53];
          }

          while (v55);
          if (v54 != v87 && v53 >= *(v54 + 8))
          {
            v91 = a7;
            v73 = sub_1002A24A4(&v86, a7, &unk_100548C50, &v91, &v90);
            v74 = v73;
            *a2 = *(v73 + 5);
            if (v73 + 5 != a2)
            {
              sub_10029EC60((a2 + 16), v73[7], v73 + 8);
            }

            v75 = *(v74 + 5);
            *(a2 + 52) = *(v74 + 92);
            *(a2 + 40) = v75;
            sub_10029EED4((a2 + 72), (v74 + 14));
            v76 = *(v74 + 9);
            *(a2 + 120) = *(v74 + 10);
            *(a2 + 104) = v76;
            v77 = *(v74 + 11);
            v78 = *(v74 + 12);
            v79 = *(v74 + 13);
            *(a2 + 184) = *(v74 + 14);
            *(a2 + 168) = v79;
            *(a2 + 152) = v78;
            *(a2 + 136) = v77;
            v80 = *(v74 + 15);
            v81 = *(v74 + 16);
            v82 = *(v74 + 17);
            *(a2 + 248) = *(v74 + 18);
            *(a2 + 232) = v82;
            *(a2 + 216) = v81;
            *(a2 + 200) = v80;
            v83 = *(v74 + 19);
            v84 = *(v74 + 20);
            v85 = *(v74 + 21);
            *(a2 + 312) = v74[44];
            *(a2 + 280) = v84;
            *(a2 + 296) = v85;
            *(a2 + 264) = v83;
            sub_10029FE38(&v86, v87[0]);
            sub_1002A17D0(&v88, v89[0]);
            return;
          }
        }

        sub_10029FE38(&v86, v87[0]);
      }

      sub_1002A17D0(&v88, v89[0]);
    }
  }

  v56 = qword_1009FA098;
  if (qword_1009FA098)
  {
    v57 = *a3;
    v58 = &qword_1009FA098;
    do
    {
      if (*(v56 + 32) >= v57)
      {
        v58 = v56;
      }

      v56 = *(v56 + 8 * (*(v56 + 32) < v57));
    }

    while (v56);
    if (v58 != &qword_1009FA098 && v57 >= *(v58 + 8))
    {
      v86 = a3;
      v59 = sub_1002A1E14(&qword_1009FA090, a3, &unk_100548C50, &v86);
      sub_1002A0EF0(&v88, (v59 + 5));
      if (v89 == sub_1000087BC(&v88, a4))
      {
LABEL_75:
        sub_1002A0768(&v88, v89[0]);
        return;
      }

      v91 = a4;
      v60 = sub_1002A1EF4(&v88, a4, &unk_100548C50, &v91, &v90);
      sub_1002A0BBC(&v86, (v60 + 7));
      v91 = &qword_1009F33F8;
      v61 = sub_1002A2040(&v86, &qword_1009F33F8, &unk_100548C50, &v91, &v90);
      v19 = v61;
      *a2 = *(v61 + 7);
      if (v61 + 7 != a2)
      {
        sub_10029EC60((a2 + 16), v61[9], v61 + 10);
      }

LABEL_74:
      v62 = *(v19 + 6);
      *(a2 + 52) = *(v19 + 108);
      *(a2 + 40) = v62;
      sub_10029EED4((a2 + 72), (v19 + 16));
      v63 = *(v19 + 10);
      *(a2 + 120) = *(v19 + 11);
      *(a2 + 104) = v63;
      v64 = *(v19 + 12);
      v65 = *(v19 + 13);
      v66 = *(v19 + 14);
      *(a2 + 184) = *(v19 + 15);
      *(a2 + 168) = v66;
      *(a2 + 152) = v65;
      *(a2 + 136) = v64;
      v67 = *(v19 + 16);
      v68 = *(v19 + 17);
      v69 = *(v19 + 18);
      *(a2 + 248) = *(v19 + 19);
      *(a2 + 232) = v69;
      *(a2 + 216) = v68;
      *(a2 + 200) = v67;
      v70 = *(v19 + 20);
      v71 = *(v19 + 21);
      v72 = *(v19 + 22);
      *(a2 + 312) = v19[46];
      *(a2 + 280) = v71;
      *(a2 + 296) = v72;
      *(a2 + 264) = v70;
      sub_1002A0818(&v86, v87[0]);
      goto LABEL_75;
    }
  }
}

void sub_10029BF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char ***a13)
{
  sub_1002A0818(&a9, a10);
  sub_1002A1230(&a12, a13);
  _Unwind_Resume(a1);
}

void sub_10029BFA4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t *a4, uint64_t *a5, _DWORD *a6, _DWORD *a7)
{
  v65 = sub_10029C99C(a3);
  v12 = +[NSUserDefaults standardUserDefaults];
  if (*(a4 + 23) >= 0)
  {
    v13 = a4;
  }

  else
  {
    v13 = *a4;
  }

  v63 = [NSString stringWithUTF8String:v13];
  if (*(a5 + 23) >= 0)
  {
    v14 = a5;
  }

  else
  {
    v14 = *a5;
  }

  v64 = [NSString stringWithUTF8String:v14];
  if (byte_1009F340F >= 0)
  {
    v15 = &qword_1009F33F8;
  }

  else
  {
    v15 = qword_1009F33F8;
  }

  v59 = [NSString stringWithUTF8String:v15];
  v16 = [v12 objectForKey:@"BtThresholdScannerModelAdvertiserModel"];
  v62 = [v12 objectForKey:@"BtThresholdScannerClassAdvertiserModel"];
  v60 = [v12 objectForKey:@"BtThresholdScannerModelAdvertiserClass"];
  v61 = [v12 objectForKey:@"BtThresholdAdvertiserModel"];
  v58 = [v12 objectForKey:@"BtThresholdScannerModel"];
  v17 = [v16 objectForKey:v65];

  if (v17)
  {
    v18 = [v16 objectForKeyedSubscript:v65];
    v19 = [v18 objectForKey:v63];

    if (v19)
    {
      v20 = [v18 objectForKeyedSubscript:v63];
      v21 = [v20 objectForKey:v64];

      if (v21)
      {
        v22 = [v20 objectForKey:v64];
        sub_10029CB68(v22, &v66);
        *a2 = v66;
        v23 = a2 + 24;
        sub_10002074C(a2 + 16, *(a2 + 24));
        v24 = v68;
        *(a2 + 16) = v67;
        *(a2 + 24) = v24;
        v25 = v69;
        *(a2 + 32) = v69;
        if (v25)
        {
          v24[2] = v23;
          v67 = &v68;
          v68 = 0;
          v69 = 0;
        }

        else
        {
          *(a2 + 16) = v23;
        }

LABEL_48:
        *(a2 + 40) = v70[0];
        *(a2 + 52) = *(v70 + 12);
        sub_10029F0B8(a2 + 72, &__p);
        *(a2 + 312) = v87;
        *(a2 + 200) = v80;
        *(a2 + 216) = v81;
        *(a2 + 232) = v82;
        *(a2 + 248) = v83;
        *(a2 + 136) = v76;
        *(a2 + 152) = v77;
        *(a2 + 168) = v78;
        *(a2 + 184) = v79;
        v54 = v75;
        *(a2 + 104) = v74;
        *(a2 + 120) = v54;
        v55 = v85;
        *(a2 + 264) = v84;
        *(a2 + 280) = v55;
        *(a2 + 296) = v86;
        if (v73 == 1 && v72 < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        sub_10002074C(&v67, v68);

LABEL_52:
        goto LABEL_58;
      }
    }
  }

  v26 = [v62 objectForKey:v65];

  if (v26)
  {
    v18 = [v62 objectForKeyedSubscript:v65];
    v27 = sub_10029D078(a6);
    v28 = [v18 objectForKey:v27];

    if (v28)
    {
      v29 = [v18 objectForKeyedSubscript:v27];
      v30 = [v29 objectForKey:v64];

      if (v30)
      {
        v31 = [v29 objectForKey:v64];
        sub_10029CB68(v31, &v66);
        *a2 = v66;
        v32 = a2 + 24;
        sub_10002074C(a2 + 16, *(a2 + 24));
        v33 = v68;
        *(a2 + 16) = v67;
        *(a2 + 24) = v33;
        v34 = v69;
        *(a2 + 32) = v69;
        if (v34)
        {
          v33[2] = v32;
          v67 = &v68;
          v68 = 0;
          v69 = 0;
        }

        else
        {
          *(a2 + 16) = v32;
        }

LABEL_54:
        *(a2 + 40) = v70[0];
        *(a2 + 52) = *(v70 + 12);
        sub_10029F0B8(a2 + 72, &__p);
        *(a2 + 312) = v87;
        *(a2 + 200) = v80;
        *(a2 + 216) = v81;
        *(a2 + 232) = v82;
        *(a2 + 248) = v83;
        *(a2 + 136) = v76;
        *(a2 + 152) = v77;
        *(a2 + 168) = v78;
        *(a2 + 184) = v79;
        v56 = v75;
        *(a2 + 104) = v74;
        *(a2 + 120) = v56;
        v57 = v85;
        *(a2 + 264) = v84;
        *(a2 + 280) = v57;
        *(a2 + 296) = v86;
        if (v73 == 1 && v72 < 0)
        {
          operator delete(__p.n128_u64[0]);
        }

        sub_10002074C(&v67, v68);

        goto LABEL_58;
      }
    }
  }

  v35 = [v61 objectForKey:v65];

  if (v35)
  {
    v36 = [v61 objectForKeyedSubscript:v65];
    v18 = [v36 objectForKeyedSubscript:v59];

    v37 = [v18 objectForKey:v64];

    if (v37)
    {
      v20 = [v18 objectForKey:v64];
      sub_10029CB68(v20, &v66);
      *a2 = v66;
      v38 = a2 + 24;
      sub_10002074C(a2 + 16, *(a2 + 24));
      v39 = v68;
      *(a2 + 16) = v67;
      *(a2 + 24) = v39;
      v40 = v69;
      *(a2 + 32) = v69;
      if (v40)
      {
        v39[2] = v38;
        v67 = &v68;
        v68 = 0;
        v69 = 0;
      }

      else
      {
        *(a2 + 16) = v38;
      }

      *(a2 + 40) = v70[0];
      *(a2 + 52) = *(v70 + 12);
      sub_10029F0B8(a2 + 72, &__p);
      *(a2 + 312) = v87;
      *(a2 + 200) = v80;
      *(a2 + 216) = v81;
      *(a2 + 232) = v82;
      *(a2 + 248) = v83;
      *(a2 + 136) = v76;
      *(a2 + 152) = v77;
      *(a2 + 168) = v78;
      *(a2 + 184) = v79;
      v47 = v75;
      *(a2 + 104) = v74;
      *(a2 + 120) = v47;
      v48 = v85;
      *(a2 + 264) = v84;
      *(a2 + 280) = v48;
      *(a2 + 296) = v86;
      if (v73 == 1 && v72 < 0)
      {
        operator delete(__p.n128_u64[0]);
      }

      sub_10002074C(&v67, v68);
      goto LABEL_52;
    }
  }

  v41 = [v60 objectForKey:v65];

  if (v41)
  {
    v18 = [v60 objectForKeyedSubscript:v65];
    v42 = [v18 objectForKey:v63];

    if (v42)
    {
      v27 = [v18 objectForKeyedSubscript:v63];
      v29 = sub_10029D078(a7);
      v43 = [v27 objectForKey:v29];

      if (v43)
      {
        v31 = [v27 objectForKey:v29];
        sub_10029CB68(v31, &v66);
        *a2 = v66;
        v44 = a2 + 24;
        sub_10002074C(a2 + 16, *(a2 + 24));
        v45 = v68;
        *(a2 + 16) = v67;
        *(a2 + 24) = v45;
        v46 = v69;
        *(a2 + 32) = v69;
        if (v46)
        {
          v45[2] = v44;
          v67 = &v68;
          v68 = 0;
          v69 = 0;
        }

        else
        {
          *(a2 + 16) = v44;
        }

        goto LABEL_54;
      }
    }
  }

  v49 = [v58 objectForKey:v65];

  if (v49)
  {
    v18 = [v58 objectForKeyedSubscript:v65];
    v50 = [v18 objectForKey:v63];

    if (!v50)
    {
LABEL_58:

      goto LABEL_59;
    }

    v20 = [v18 objectForKey:v63];
    v22 = [v20 objectForKeyedSubscript:v59];
    sub_10029CB68(v22, &v66);
    *a2 = v66;
    v51 = a2 + 24;
    sub_10002074C(a2 + 16, *(a2 + 24));
    v52 = v68;
    *(a2 + 16) = v67;
    *(a2 + 24) = v52;
    v53 = v69;
    *(a2 + 32) = v69;
    if (v53)
    {
      v52[2] = v51;
      v67 = &v68;
      v68 = 0;
      v69 = 0;
    }

    else
    {
      *(a2 + 16) = v51;
    }

    goto LABEL_48;
  }

LABEL_59:
}

id sub_10029C99C(_DWORD *a1)
{
  LODWORD(v6[0]) = 1;
  v6[1] = @"unspecified";
  v7 = 2;
  v8 = @"immediate";
  v9 = 8;
  v10 = @"armsReach";
  v11 = 9;
  v12 = @"extendedReach";
  v13 = 3;
  v14 = @"near";
  v15 = 4;
  v16 = @"desk";
  v17 = 5;
  v18 = @"vicinity";
  v19 = 6;
  v20 = @"sensorMax";
  v21 = 7;
  v22 = @"superImmediate";
  sub_10029EF78(v5, v6, 9);
  for (i = 17; i != -1; i -= 2)
  {
  }

  v6[0] = a1;
  v3 = sub_1001BF864(v5, a1, &unk_100548C50, v6)[5];
  sub_1001BF3F8(v5, v5[1]);

  return v3;
}

void sub_10029CB68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 objectForKeyedSubscript:@"threshold"];
  [v4 floatValue];
  v6 = v5;

  if (v6 >= 0.0)
  {
    v9 = qword_1009F9820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v3 objectForKeyedSubscript:@"threshold"];
      *buf = 138412290;
      *&buf[4] = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#btproximitydatabase Invalid OTA threshold value of: %@", buf, 0xCu);
    }
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"custom_threshold_type"];
    v8 = [v7 isEqualToString:@"default_bluetooth_filter"];

    if (v8)
    {
      *a2 = 0x300000008;
      *(a2 + 8) = v6;
      *buf = v6;
      sub_1001BD370((a2 + 16), buf, 1);
LABEL_12:
      *(a2 + 40) = xmmword_100563C70;
      *(a2 + 56) = 0x4024000000000000;
      *(a2 + 64) = 45;
      *(a2 + 72) = 0;
      *(a2 + 96) = 0;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      *(a2 + 116) = 1;
      *(a2 + 120) = 1;
      *(a2 + 128) = xmmword_100563C80;
      *(a2 + 144) = xmmword_100563C90;
      __asm { FMOV            V0.2D, #1.0 }

      *(a2 + 160) = _Q0;
      *(a2 + 176) = 0xC059000000000000;
      *(a2 + 184) = xmmword_100563CA0;
      *(a2 + 200) = vdup_n_s32(0x3DCCCCCDu);
      *(a2 + 208) = xmmword_100563BE0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 0;
      *(a2 + 224) = 0x3FD999999999999ALL;
      *(a2 + 248) = xmmword_100563BF0;
      *(a2 + 264) = 5;
LABEL_13:
      *(a2 + 272) = 0x4000000000000000;
      *(a2 + 280) = 10;
      *(a2 + 288) = 0x4034000000000000;
      *(a2 + 296) = 3;
      *(a2 + 304) = xmmword_100563CB0;
      goto LABEL_14;
    }

    v17 = [v3 objectForKeyedSubscript:@"custom_threshold_type"];
    v18 = [v17 isEqualToString:@"rssi_estimator"];

    if (v18)
    {
      *a2 = 0x200000003;
      *(a2 + 8) = v6;
      *buf = v6;
      sub_1001BD370((a2 + 16), buf, 1);
      goto LABEL_12;
    }

    v19 = [v3 objectForKeyedSubscript:@"custom_threshold_type"];
    v20 = [v19 isEqualToString:@"default_setup"];

    if (v20)
    {
      *a2 = 0x300000010;
      *(a2 + 8) = v6;
      *buf = v6;
      sub_1001BD370((a2 + 16), buf, 1);
      goto LABEL_12;
    }

    v26 = [v3 objectForKeyedSubscript:@"custom_threshold_type"];
    v27 = [v26 isEqualToString:@"high_rate_hysteresis"];

    if (v27)
    {
      *a2 = 0x200000003;
      *(a2 + 8) = v6;
      *buf = v6;
      sub_1001BD370((a2 + 16), buf, 1);
      *(a2 + 40) = xmmword_1005690D0;
      *(a2 + 56) = 0x4000000000000000;
      *(a2 + 64) = 20;
      *(a2 + 72) = 0;
      *(a2 + 96) = 0;
      *(a2 + 104) = 0;
      *(a2 + 112) = 0;
      *(a2 + 116) = 1;
      *(a2 + 120) = 1;
      *(a2 + 128) = xmmword_100563C80;
      *(a2 + 144) = xmmword_100563C90;
      __asm { FMOV            V0.2D, #1.0 }

      *(a2 + 160) = _Q0;
      *(a2 + 184) = xmmword_100563CA0;
      *(a2 + 176) = 0xC059000000000000;
      *(a2 + 200) = vdup_n_s32(0x3DCCCCCDu);
      *(a2 + 208) = xmmword_100563BE0;
      *(a2 + 232) = 0;
      *(a2 + 240) = 0;
      *(a2 + 224) = 0x3FD999999999999ALL;
      *(a2 + 248) = xmmword_100563BF0;
      *(a2 + 264) = 5;
      goto LABEL_13;
    }
  }

  *a2 = xmmword_1009F3428;
  sub_10029F1D8((a2 + 16), qword_1009F3438);
  *(a2 + 40) = xmmword_1009F3450;
  *(a2 + 52) = *(&xmmword_1009F3450 + 12);
  sub_10029F2B8((a2 + 72), &byte_1009F3470);
  v11 = *&dword_1009F3540;
  *(a2 + 264) = xmmword_1009F3530;
  *(a2 + 280) = v11;
  *(a2 + 296) = xmmword_1009F3550;
  v12 = unk_1009F3500;
  *(a2 + 200) = xmmword_1009F34F0;
  *(a2 + 216) = v12;
  v13 = unk_1009F3520;
  *(a2 + 232) = xmmword_1009F3510;
  *(a2 + 248) = v13;
  v14 = unk_1009F34C0;
  *(a2 + 136) = *(&xmmword_1009F34A8 + 8);
  *(a2 + 152) = v14;
  v15 = unk_1009F34E0;
  *(a2 + 168) = *(&xmmword_1009F34C8 + 8);
  *(a2 + 184) = v15;
  v16 = *&byte_1009F34A0;
  *(a2 + 104) = xmmword_1009F3490;
  *(a2 + 312) = qword_1009F3560;
  *(a2 + 120) = v16;
LABEL_14:
}

id sub_10029D078(_DWORD *a1)
{
  v7[1] = @"DeviceClassInvalid";
  v8 = 1;
  v9 = @"DeviceClassMacBook";
  v10 = 2;
  v11 = @"DeviceClassMacBookAir";
  v12 = 3;
  v13 = @"DeviceClassMacBookPro";
  v14 = 4;
  v15 = @"DeviceClassiMac";
  v16 = 5;
  v17 = @"DeviceClassMacMini";
  v18 = 6;
  v19 = @"DeviceClassIpad";
  v20 = 7;
  v21 = @"DeviceClassIphone";
  v22 = 8;
  v23 = @"DeviceClassMax";
  v24 = 9;
  v25 = @"DeviceClassMacPro";
  v26 = 10;
  v27 = @"DeviceClassMacStudio";
  v28 = 11;
  v29 = @"DeviceClassAirTag";
  v30 = 12;
  v31 = @"DeviceClassDefaultMac";
  v32 = 13;
  v33 = @"DeviceClassAudioAccessory";
  v34 = 14;
  v35 = @"DeviceClassHomePod";
  v36 = 15;
  v37 = @"DeviceClassWatch";
  v38 = 16;
  LODWORD(v7[0]) = 0;
  v39 = @"DeviceClassRemote";
  v40 = 18;
  v41 = @"DeviceClassPencil";
  v42 = 19;
  v43 = @"DeviceClassGameController";
  sub_10029F158(v5, v7, 19);
  for (i = 37; i != -1; i -= 2)
  {
  }

  v7[0] = a1;
  v3 = sub_1001BF864(v5, a1, &unk_100548C50, v7)[5];
  sub_1001BF3F8(v5, v6);

  return v3;
}

uint64_t sub_10029D308(uint64_t a1, char *__s)
{
  v2 = __s;
  v3 = __s[23];
  if (v3 < 0)
  {
    v4 = *__s;
    v5 = *(__s + 1);
  }

  else
  {
    v4 = __s;
    v5 = __s[23];
  }

  if (byte_1009F2E87 >= 0)
  {
    v6 = &qword_1009F2E70;
  }

  else
  {
    v6 = qword_1009F2E70;
  }

  if (byte_1009F2E87 >= 0)
  {
    v7 = byte_1009F2E87;
  }

  else
  {
    v7 = unk_1009F2E78;
  }

  if (v7)
  {
    if (v5 >= v7)
    {
      v12 = &v5[v4];
      v13 = *v6;
      a1 = v4;
      do
      {
        v14 = &v5[-v7];
        if (v14 == -1)
        {
          break;
        }

        a1 = memchr(a1, v13, (v14 + 1));
        if (!a1)
        {
          break;
        }

        v15 = a1;
        a1 = memcmp(a1, v6, v7);
        if (!a1)
        {
          if (v15 == v12 || v15 - v4 == -1)
          {
            break;
          }

          goto LABEL_40;
        }

        a1 = v15 + 1;
        v5 = &v12[-v15 - 1];
      }

      while (v5 >= v7);
    }

    v8 = sub_10029D8E4(a1, v2);
    if ((v8 & 1) == 0)
    {
      v9 = v2[23];
      if ((v9 & 0x8000000000000000) != 0)
      {
        v10 = *v2;
        v11 = *(v2 + 1);
      }

      else
      {
        v10 = v2;
        v11 = v2[23];
      }

      if (byte_1009F2ECF >= 0)
      {
        v16 = &qword_1009F2EB8;
      }

      else
      {
        v16 = qword_1009F2EB8;
      }

      if (byte_1009F2ECF >= 0)
      {
        v17 = byte_1009F2ECF;
      }

      else
      {
        v17 = unk_1009F2EC0;
      }

      if (!v17)
      {
        return 4;
      }

      if (v11 >= v17)
      {
        v19 = &v11[v10];
        v20 = *v16;
        v8 = v10;
        do
        {
          v21 = &v11[-v17];
          if (v21 == -1)
          {
            break;
          }

          v8 = memchr(v8, v20, (v21 + 1));
          if (!v8)
          {
            break;
          }

          v22 = v8;
          v8 = memcmp(v8, v16, v17);
          if (!v8)
          {
            if (v22 == v19 || v22 - v10 == -1)
            {
              break;
            }

            return 4;
          }

          v8 = v22 + 1;
          v11 = &v19[-v22 - 1];
        }

        while (v11 >= v17);
      }

      if ((v9 & 0x80000000) != 0)
      {
        v18 = *v2;
        v9 = *(v2 + 1);
      }

      else
      {
        v18 = v2;
      }

      if (byte_1009F2EE7 >= 0)
      {
        v42 = &qword_1009F2ED0;
      }

      else
      {
        v42 = qword_1009F2ED0;
      }

      if (byte_1009F2EE7 >= 0)
      {
        v43 = byte_1009F2EE7;
      }

      else
      {
        v43 = unk_1009F2ED8;
      }

      if (!v43)
      {
        return 5;
      }

      if (v9 >= v43)
      {
        v45 = &v9[v18];
        v46 = *v42;
        v8 = v18;
        do
        {
          if (&v9[-v43] == -1)
          {
            break;
          }

          v8 = memchr(v8, v46, &v9[-v43 + 1]);
          if (!v8)
          {
            break;
          }

          v47 = v8;
          v8 = memcmp(v8, v42, v43);
          if (!v8)
          {
            if (v47 == v45 || v47 - v18 == -1)
            {
              break;
            }

            return 5;
          }

          v8 = v47 + 1;
          v9 = &v45[-v47 - 1];
        }

        while (v9 >= v43);
      }

      v44 = sub_10029DB6C(v8, v2);
      if (v44 || sub_10029DCC8(v44, v2))
      {
        return 5;
      }

      if (sub_10029D814(v2, qword_1009F2EE8, 0) != -1)
      {
        return 9;
      }

      if (sub_10029D814(v2, qword_1009F2F00, 0) != -1)
      {
        return 12;
      }

      if (sub_10029D814(v2, qword_1009F2F18, 0) != -1)
      {
        return 6;
      }

      if (sub_10029D814(v2, qword_1009F2F30, 0) != -1)
      {
        return 7;
      }

      if (sub_10029DF38(-1, v2))
      {
        return 13;
      }

      if (sub_10029D814(v2, qword_1009F2F90, 0) != -1)
      {
        return 14;
      }

      if (sub_10029D814(v2, qword_1009F2FA8, 0) != -1)
      {
        return 15;
      }

      if (sub_10029D814(v2, qword_1009F2FC0, 0) != -1)
      {
        return 16;
      }

      v48 = sub_10029E1E8(-1, v2);
      if (v48)
      {
        return 11;
      }

      if (sub_10029E35C(v48, v2))
      {
        return 18;
      }

      if (sub_10029D814(v2, &xmmword_1009F33C8, 0) != -1)
      {
        return 17;
      }

      if (sub_10029E434(-1, v2))
      {
        return 19;
      }

      return 0;
    }

    return 3;
  }

LABEL_40:
  if ((v3 & 0x80000000) != 0)
  {
    v23 = *v2;
    v24 = *(v2 + 1);
  }

  else
  {
    v23 = v2;
    v24 = v3;
  }

  if (byte_1009F2E9F >= 0)
  {
    v25 = &qword_1009F2E88;
  }

  else
  {
    v25 = qword_1009F2E88;
  }

  if (byte_1009F2E9F >= 0)
  {
    v26 = byte_1009F2E9F;
  }

  else
  {
    v26 = unk_1009F2E90;
  }

  if (!v26)
  {
    return 2;
  }

  if (v24 >= v26)
  {
    v31 = &v23[v24];
    v32 = *v25;
    v33 = v23;
    do
    {
      v34 = v24 - v26;
      if (v34 == -1)
      {
        break;
      }

      v35 = memchr(v33, v32, v34 + 1);
      if (!v35)
      {
        break;
      }

      v36 = v35;
      if (!memcmp(v35, v25, v26))
      {
        if (v36 == v31 || v36 - v23 == -1)
        {
          break;
        }

        return 2;
      }

      v33 = v36 + 1;
      v24 = v31 - (v36 + 1);
    }

    while (v24 >= v26);
  }

  if ((v3 & 0x80000000) != 0)
  {
    v27 = v2;
    v2 = *v2;
    v3 = *(v27 + 1);
  }

  if (byte_1009F2EB7 >= 0)
  {
    v28 = &qword_1009F2EA0;
  }

  else
  {
    v28 = qword_1009F2EA0;
  }

  if (byte_1009F2EB7 >= 0)
  {
    v29 = byte_1009F2EB7;
  }

  else
  {
    v29 = unk_1009F2EA8;
  }

  if (!v29)
  {
    return 3;
  }

  if (v3 >= v29)
  {
    v37 = &v2[v3];
    v38 = *v28;
    v39 = v2;
    do
    {
      if (v3 - v29 == -1)
      {
        break;
      }

      v40 = memchr(v39, v38, v3 - v29 + 1);
      if (!v40)
      {
        break;
      }

      v41 = v40;
      if (!memcmp(v40, v28, v29))
      {
        if (v41 == v37 || v41 - v2 == -1)
        {
          return 1;
        }

        return 3;
      }

      v39 = v41 + 1;
      v3 = v37 - (v41 + 1);
    }

    while (v3 >= v29);
  }

  return 1;
}

unint64_t sub_10029D814(uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v3 = *a1;
    v4 = a1[1];
  }

  v5 = a2[23];
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = a2[23];
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = v4 - a3;
  if (v4 < a3)
  {
    return -1;
  }

  if (v7)
  {
    v9 = v3 + v4;
    if (v8 >= v7)
    {
      v12 = v3 + a3;
      v13 = *v6;
      do
      {
        if (v8 - v7 == -1)
        {
          break;
        }

        v14 = memchr(v12, v13, v8 - v7 + 1);
        if (!v14)
        {
          break;
        }

        v10 = v14;
        if (!memcmp(v14, v6, v7))
        {
          goto LABEL_14;
        }

        v12 = v10 + 1;
        v8 = v9 - (v10 + 1);
      }

      while (v8 >= v7);
    }

    v10 = v9;
LABEL_14:
    if (v10 == v9)
    {
      return -1;
    }

    else
    {
      return v10 - v3;
    }
  }

  return a3;
}

BOOL sub_10029D8E4(uint64_t a1, char **a2)
{
  if ((atomic_load_explicit(&qword_1009F3818, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F3818))
  {
    sub_100004A08(&qword_1009F3800, "Mac14,5");
    __cxa_atexit(&std::string::~string, &qword_1009F3800, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F3818);
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  if (byte_1009F3817 >= 0)
  {
    v5 = &qword_1009F3800;
  }

  else
  {
    v5 = qword_1009F3800;
  }

  if (byte_1009F3817 >= 0)
  {
    v6 = byte_1009F3817;
  }

  else
  {
    v6 = unk_1009F3808;
  }

  if (!v6)
  {
    return 1;
  }

  if (v3 >= v6)
  {
    v12 = &v3[v4];
    v13 = *v5;
    v14 = v4;
    do
    {
      v15 = &v3[-v6];
      if (v15 == -1)
      {
        break;
      }

      v16 = memchr(v14, v13, (v15 + 1));
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (!memcmp(v16, v5, v6))
      {
        if (v17 != v12 && v17 - v4 != -1)
        {
          return 1;
        }

        break;
      }

      v14 = (v17 + 1);
      v3 = (v12 - (v17 + 1));
    }

    while (v3 >= v6);
  }

  if ((atomic_load_explicit(&qword_1009F3838, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F3838))
  {
    sub_100004A08(&qword_1009F3820, "Mac14,6");
    __cxa_atexit(&std::string::~string, &qword_1009F3820, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F3838);
  }

  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 < 0)
  {
    v7 = a2[1];
  }

  v9 = byte_1009F3837 >= 0 ? &qword_1009F3820 : qword_1009F3820;
  v10 = byte_1009F3837 >= 0 ? byte_1009F3837 : unk_1009F3828;
  if (!v10)
  {
    return 1;
  }

  if (v7 >= v10)
  {
    v18 = &v7[v8];
    v19 = *v9;
    v20 = v8;
    do
    {
      v21 = &v7[-v10];
      if (v21 == -1)
      {
        break;
      }

      v22 = memchr(v20, v19, (v21 + 1));
      if (!v22)
      {
        break;
      }

      v23 = v22;
      if (!memcmp(v22, v9, v10))
      {
        return v23 != v18 && v23 - v8 != -1;
      }

      v20 = (v23 + 1);
      v7 = (v18 - (v23 + 1));
    }

    while (v7 >= v10);
  }

  return 0;
}

BOOL sub_10029DB6C(uint64_t a1, char **a2)
{
  if ((atomic_load_explicit(&qword_1009F3898, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F3898))
  {
    sub_100004A08(&qword_1009F3880, "Mac14,3");
    __cxa_atexit(&std::string::~string, &qword_1009F3880, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F3898);
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 < 0)
  {
    v3 = a2[1];
  }

  if (byte_1009F3897 >= 0)
  {
    v5 = &qword_1009F3880;
  }

  else
  {
    v5 = qword_1009F3880;
  }

  if (byte_1009F3897 >= 0)
  {
    v6 = byte_1009F3897;
  }

  else
  {
    v6 = unk_1009F3888;
  }

  if (!v6)
  {
    return 1;
  }

  v7 = &v3[v4];
  if (v3 >= v6)
  {
    v11 = *v5;
    v12 = v4;
    do
    {
      v13 = &v3[-v6];
      if (v13 == -1)
      {
        break;
      }

      v14 = memchr(v12, v11, (v13 + 1));
      if (!v14)
      {
        break;
      }

      v8 = v14;
      if (!memcmp(v14, v5, v6))
      {
        return v8 != v7 && v8 - v4 != -1;
      }

      v12 = (v8 + 1);
      v3 = (v7 - (v8 + 1));
    }

    while (v3 >= v6);
  }

  v8 = v7;
  return v8 != v7 && v8 - v4 != -1;
}

BOOL sub_10029DCC8(uint64_t a1, char **a2)
{
  if ((atomic_load_explicit(&qword_1009F3858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F3858))
  {
    sub_100004A08(&qword_1009F3840, "Mac13,1");
    __cxa_atexit(&std::string::~string, &qword_1009F3840, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F3858);
  }

  if ((atomic_load_explicit(&qword_1009F3878, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1009F3878))
  {
    sub_100004A08(&qword_1009F3860, "Mac13,2");
    __cxa_atexit(&std::string::~string, &qword_1009F3860, &_mh_execute_header);
    __cxa_guard_release(&qword_1009F3878);
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (byte_1009F3857 >= 0)
  {
    v6 = &qword_1009F3840;
  }

  else
  {
    v6 = qword_1009F3840;
  }

  if (byte_1009F3857 >= 0)
  {
    v7 = byte_1009F3857;
  }

  else
  {
    v7 = unk_1009F3848;
  }

  if (!v7)
  {
    return 1;
  }

  v8 = &v5[v4];
  if (v5 >= v7)
  {
    v12 = *v6;
    v13 = v5;
    v14 = v4;
    do
    {
      v15 = &v13[-v7];
      if (v15 == -1)
      {
        break;
      }

      v16 = memchr(v14, v12, (v15 + 1));
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (!memcmp(v16, v6, v7))
      {
        if (v17 != v8 && v17 - v4 != -1)
        {
          return 1;
        }

        break;
      }

      v14 = (v17 + 1);
      v13 = (v8 - (v17 + 1));
    }

    while (v13 >= v7);
  }

  v9 = byte_1009F3877 >= 0 ? &qword_1009F3860 : qword_1009F3860;
  v10 = byte_1009F3877 >= 0 ? byte_1009F3877 : unk_1009F3868;
  if (!v10)
  {
    return 1;
  }

  if (v5 >= v10)
  {
    v18 = *v9;
    v19 = v4;
    do
    {
      if (&v5[-v10] == -1)
      {
        break;
      }

      v20 = memchr(v19, v18, &v5[-v10 + 1]);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      if (!memcmp(v20, v9, v10))
      {
        return v21 != v8 && v21 - v4 != -1;
      }

      v19 = (v21 + 1);
      v5 = (v8 - (v21 + 1));
    }

    while (v5 >= v10);
  }

  return 0;
}

BOOL sub_10029DF38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  if (byte_1009F304F >= 0)
  {
    v5 = &qword_1009F3038;
  }

  else
  {
    v5 = qword_1009F3038;
  }

  if (byte_1009F304F >= 0)
  {
    v6 = byte_1009F304F;
  }

  else
  {
    v6 = unk_1009F3040;
  }

  if (!v6)
  {
    return 1;
  }

  v8 = (v3 + v4);
  if (v4 >= v6)
  {
    v16 = *v5;
    v17 = v4;
    v18 = v3;
    do
    {
      v19 = v17 - v6;
      if (v19 == -1)
      {
        break;
      }

      v20 = memchr(v18, v16, v19 + 1);
      if (!v20)
      {
        break;
      }

      v21 = v20;
      if (!memcmp(v20, v5, v6))
      {
        if (v21 != v8 && &v21[-v3] != -1)
        {
          return 1;
        }

        break;
      }

      v18 = v21 + 1;
      v17 = v8 - (v21 + 1);
    }

    while (v17 >= v6);
  }

  v9 = byte_1009F3067 >= 0 ? &xmmword_1009F3050 : xmmword_1009F3050;
  v10 = byte_1009F3067 >= 0 ? byte_1009F3067 : *(&xmmword_1009F3050 + 1);
  if (!v10)
  {
    return 1;
  }

  if (v4 >= v10)
  {
    v22 = *v9;
    v23 = v4;
    v24 = v3;
    do
    {
      v25 = v23 - v10;
      if (v25 == -1)
      {
        break;
      }

      v26 = memchr(v24, v22, v25 + 1);
      if (!v26)
      {
        break;
      }

      v27 = v26;
      if (!memcmp(v26, v9, v10))
      {
        if (v27 != v8 && &v27[-v3] != -1)
        {
          return 1;
        }

        break;
      }

      v24 = v27 + 1;
      v23 = v8 - (v27 + 1);
    }

    while (v23 >= v10);
  }

  v11 = byte_1009F3007 >= 0 ? &qword_1009F2FF0 : qword_1009F2FF0;
  v12 = byte_1009F3007 >= 0 ? byte_1009F3007 : unk_1009F2FF8;
  if (!v12)
  {
    return 1;
  }

  if (v4 >= v12)
  {
    v28 = *v11;
    v29 = v4;
    v30 = v3;
    do
    {
      v31 = v29 - v12;
      if (v31 == -1)
      {
        break;
      }

      v32 = memchr(v30, v28, v31 + 1);
      if (!v32)
      {
        break;
      }

      v33 = v32;
      if (!memcmp(v32, v11, v12))
      {
        if (v33 != v8 && &v33[-v3] != -1)
        {
          return 1;
        }

        break;
      }

      v30 = v33 + 1;
      v29 = v8 - (v33 + 1);
    }

    while (v29 >= v12);
  }

  v13 = byte_1009F301F >= 0 ? &qword_1009F3008 : qword_1009F3008;
  v14 = byte_1009F301F >= 0 ? byte_1009F301F : unk_1009F3010;
  if (!v14)
  {
    return 1;
  }

  if (v4 >= v14)
  {
    v34 = *v13;
    v35 = v3;
    do
    {
      if (v4 - v14 == -1)
      {
        break;
      }

      v36 = memchr(v35, v34, v4 - v14 + 1);
      if (!v36)
      {
        break;
      }

      v37 = v36;
      if (!memcmp(v36, v13, v14))
      {
        if (v37 == v8 || &v37[-v3] == -1)
        {
          return sub_10029D814(a2, byte_1009F3020, 0) != -1;
        }

        return 1;
      }

      v35 = v37 + 1;
      v4 = v8 - (v37 + 1);
    }

    while (v4 >= v14);
  }

  return sub_10029D814(a2, byte_1009F3020, 0) != -1;
}

BOOL sub_10029E1E8(uint64_t a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (byte_1009F2F77 >= 0)
  {
    v5 = &qword_1009F2F60;
  }

  else
  {
    v5 = qword_1009F2F60;
  }

  if (byte_1009F2F77 >= 0)
  {
    v6 = byte_1009F2F77;
  }

  else
  {
    v6 = unk_1009F2F68;
  }

  if (!v6)
  {
    return 1;
  }

  v7 = &v4[v3];
  if (v4 >= v6)
  {
    v11 = *v5;
    v12 = v4;
    v13 = v3;
    do
    {
      v14 = &v12[-v6];
      if (v14 == -1)
      {
        break;
      }

      v15 = memchr(v13, v11, (v14 + 1));
      if (!v15)
      {
        break;
      }

      v16 = v15;
      if (!memcmp(v15, v5, v6))
      {
        if (v16 != v7 && v16 - v3 != -1)
        {
          return 1;
        }

        break;
      }

      v13 = (v16 + 1);
      v12 = (v7 - (v16 + 1));
    }

    while (v12 >= v6);
  }

  v8 = byte_1009F2F8F >= 0 ? &qword_1009F2F78 : qword_1009F2F78;
  v9 = byte_1009F2F8F >= 0 ? byte_1009F2F8F : unk_1009F2F80;
  if (!v9)
  {
    return 1;
  }

  if (v4 >= v9)
  {
    v17 = *v8;
    v18 = v3;
    do
    {
      if (&v4[-v9] == -1)
      {
        break;
      }

      v19 = memchr(v18, v17, &v4[-v9 + 1]);
      if (!v19)
      {
        break;
      }

      v20 = v19;
      if (!memcmp(v19, v8, v9))
      {
        return v20 != v7 && v20 - v3 != -1;
      }

      v18 = (v20 + 1);
      v4 = (v7 - (v20 + 1));
    }

    while (v4 >= v9);
  }

  return 0;
}

BOOL sub_10029E35C(uint64_t a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 < 0)
  {
    v2 = a2[1];
  }

  if (byte_1009F30AF >= 0)
  {
    v4 = &xmmword_1009F3098;
  }

  else
  {
    v4 = xmmword_1009F3098;
  }

  if (byte_1009F30AF >= 0)
  {
    v5 = byte_1009F30AF;
  }

  else
  {
    v5 = *(&xmmword_1009F3098 + 1);
  }

  if (!v5)
  {
    return 1;
  }

  v6 = &v2[v3];
  if (v2 >= v5)
  {
    v10 = *v4;
    v11 = v3;
    do
    {
      v12 = &v2[-v5];
      if (v12 == -1)
      {
        break;
      }

      v13 = memchr(v11, v10, (v12 + 1));
      if (!v13)
      {
        break;
      }

      v7 = v13;
      if (!memcmp(v13, v4, v5))
      {
        return v7 != v6 && v7 - v3 != -1;
      }

      v11 = (v7 + 1);
      v2 = (v6 - (v7 + 1));
    }

    while (v2 >= v5);
  }

  v7 = v6;
  return v7 != v6 && v7 - v3 != -1;
}

BOOL sub_10029E434(uint64_t a1, char **a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 < 0)
  {
    v2 = a2[1];
  }

  if (byte_1009F33F7 >= 0)
  {
    v4 = &qword_1009F33E0;
  }

  else
  {
    v4 = qword_1009F33E0;
  }

  if (byte_1009F33F7 >= 0)
  {
    v5 = byte_1009F33F7;
  }

  else
  {
    v5 = unk_1009F33E8;
  }

  if (!v5)
  {
    return 1;
  }

  v6 = &v2[v3];
  if (v2 >= v5)
  {
    v10 = *v4;
    v11 = v3;
    do
    {
      v12 = &v2[-v5];
      if (v12 == -1)
      {
        break;
      }

      v13 = memchr(v11, v10, (v12 + 1));
      if (!v13)
      {
        break;
      }

      v7 = v13;
      if (!memcmp(v13, v4, v5))
      {
        return v7 != v6 && v7 - v3 != -1;
      }

      v11 = (v7 + 1);
      v2 = (v6 - (v7 + 1));
    }

    while (v2 >= v5);
  }

  v7 = v6;
  return v7 != v6 && v7 - v3 != -1;
}

uint64_t *sub_10029E50C(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10017C290("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_10029E564(uint64_t a1, const void **a2)
{
  v2 = *sub_10029FC14(a1, &v4, a2);
  if (!v2)
  {
    sub_10017C290("map::at:  key not found");
  }

  return v2 + 56;
}

__n128 sub_10029E5A4(__n128 *a1)
{
  a1[7].n128_u8[0] = 1;
  a1[7].n128_u8[8] = 0;
  a1[7].n128_u32[1] = 2;
  __asm { FMOV            V0.2D, #0.5 }

  a1[19] = result;
  return result;
}

void sub_10029E5C4(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v44) = a2;
  if (*(a3 + 23) < 0)
  {
    sub_1000056BC(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v42 = *(a3 + 16);
  }

  v10 = sub_10029D308(a1, __p);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  v43 = v10;
  if (*(a4 + 23) < 0)
  {
    sub_1000056BC(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v39 = *(a4 + 16);
  }

  v11 = sub_10029D308(a1, __dst);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(__dst[0]);
  }

  v40 = v11;
  v12 = qword_1009FA020;
  if (!qword_1009FA020)
  {
    goto LABEL_18;
  }

  v13 = &qword_1009FA020;
  do
  {
    if (*(v12 + 32) >= a2)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < a2));
  }

  while (v12);
  if (v13 == &qword_1009FA020 || *(v13 + 8) > a2)
  {
LABEL_18:
    LODWORD(v44) = 1;
  }

  v34 = &v44;
  v14 = sub_1002A1E14(&qword_1009FA018, &v44, &unk_100548C50, &v34);
  sub_1002A0428(&v36, (v14 + 5));
  v15 = v37[0];
  if (!v37[0])
  {
    goto LABEL_26;
  }

  v16 = v37;
  do
  {
    if (*(v15 + 8) >= v10)
    {
      v16 = v15;
    }

    v15 = v15[*(v15 + 8) < v10];
  }

  while (v15);
  if (v16 == v37 || v10 < *(v16 + 8))
  {
LABEL_26:
    v43 = 0;
  }

  v45 = &v43;
  v17 = sub_1002A1E14(&v36, &v43, &unk_100548C50, &v45);
  sub_1002A0148(&v34, (v17 + 5));
  v18 = v35[0];
  if (!v35[0])
  {
    goto LABEL_34;
  }

  v19 = v35;
  do
  {
    if (*(v18 + 8) >= v11)
    {
      v19 = v18;
    }

    v18 = v18[*(v18 + 8) < v11];
  }

  while (v18);
  if (v19 == v35 || v11 < *(v19 + 8))
  {
LABEL_34:
    v40 = 0;
  }

  v45 = &v40;
  v20 = sub_1002A24A4(&v34, &v40, &unk_100548C50, &v45, &v44 + 7);
  *a5 = *(v20 + 5);
  sub_10029F1D8((a5 + 16), (v20 + 7));
  v21 = *(v20 + 5);
  *(a5 + 52) = *(v20 + 92);
  *(a5 + 40) = v21;
  v22 = sub_10029F2B8((a5 + 72), v20 + 7);
  v23 = *(v20 + 9);
  *(a5 + 120) = *(v20 + 10);
  *(a5 + 104) = v23;
  v24 = *(v20 + 11);
  v25 = *(v20 + 12);
  v26 = *(v20 + 13);
  *(a5 + 184) = *(v20 + 14);
  *(a5 + 168) = v26;
  *(a5 + 152) = v25;
  *(a5 + 136) = v24;
  v27 = *(v20 + 15);
  v28 = *(v20 + 16);
  v29 = *(v20 + 17);
  *(a5 + 248) = *(v20 + 18);
  *(a5 + 232) = v29;
  *(a5 + 216) = v28;
  *(a5 + 200) = v27;
  v30 = *(v20 + 19);
  v31 = *(v20 + 20);
  v32 = *(v20 + 21);
  *(a5 + 312) = v20[44];
  *(a5 + 280) = v31;
  *(a5 + 296) = v32;
  *(a5 + 264) = v30;
  sub_10029B660(v22, a5, &v44, a3, a4, &v43, &v40);
  sub_10029BFA4(v33, a5, &v44, a3, a4, &v43, &v40);
  sub_10029E970((a5 + 72), a4);
  sub_10029FE38(&v34, v35[0]);
  sub_10029FDD8(&v36, v37[0]);
}

void sub_10029E8F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_10002074C(v27 + 16, *(v27 + 24));
  sub_10029FE38(&a9, a10);
  sub_10029FDD8(&a12, a13);
  _Unwind_Resume(a1);
}

std::string *sub_10029E970(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(__dst, a2);
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

char *sub_10029E9E0(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  sub_10029F7B4(__dst + 3, a3);
  return __dst;
}

void sub_10029EA40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10029EA5C(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 24) = *a3;
  sub_10029F1D8(__dst + 5, a3 + 16);
  v6 = *(a3 + 40);
  *(__dst + 76) = *(a3 + 52);
  *(__dst + 4) = v6;
  sub_10029F2B8(__dst + 96, (a3 + 72));
  v7 = *(a3 + 120);
  *(__dst + 8) = *(a3 + 104);
  *(__dst + 9) = v7;
  v8 = *(a3 + 136);
  v9 = *(a3 + 152);
  v10 = *(a3 + 184);
  *(__dst + 12) = *(a3 + 168);
  *(__dst + 13) = v10;
  *(__dst + 10) = v8;
  *(__dst + 11) = v9;
  v11 = *(a3 + 200);
  v12 = *(a3 + 216);
  v13 = *(a3 + 248);
  *(__dst + 16) = *(a3 + 232);
  *(__dst + 17) = v13;
  *(__dst + 14) = v11;
  *(__dst + 15) = v12;
  v14 = *(a3 + 264);
  v15 = *(a3 + 280);
  v16 = *(a3 + 296);
  *(__dst + 42) = *(a3 + 312);
  *(__dst + 19) = v15;
  *(__dst + 20) = v16;
  *(__dst + 18) = v14;
  return __dst;
}

void sub_10029EB38(_Unwind_Exception *a1)
{
  sub_10002074C(v1 + 40, *(v1 + 48));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

char *sub_10029EB68(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  sub_1002A0BBC(__dst + 3, a3);
  return __dst;
}

void sub_10029EBC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10029EBE4(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  sub_1002A0148(__dst + 3, a3);
  return __dst;
}

void sub_10029EC44(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10029EC60(void *result, double *a2, double *a3)
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
      v13 = sub_10018A270(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = *(v9 + 4);
          sub_10029EDC4(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_10018A270(v13);
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

    result = sub_10018A2C4(&v12);
  }

  if (a2 != a3)
  {
    sub_10029EE34(v5, a2 + 4);
  }

  return result;
}

void sub_10029EDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10018A2C4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10029EDC4(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) <= *(v4 + 4))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = (a1 + 8);
  }

LABEL_8:
  sub_100036FC8(a1, v3, v5, a2);
  return a2;
}

void sub_10029EED4(std::string *__dst, const std::string *a2)
{
  if (__dst[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (__dst[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(__dst, a2);
    }
  }

  else if (__dst[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_1000056BC(__dst, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v3;
    }

    __dst[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

uint64_t **sub_10029EF78(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_10029EFF8(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_10029EFF8(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v4 = *sub_10026D040(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

__n128 sub_10029F0B8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    *(a2 + 8) = 0uLL;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_10029F158(uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_10029EFF8(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t **sub_10029F1D8(uint64_t **a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  sub_10029F230(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t **sub_10029F230(uint64_t **result, double *a2, double *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1001BD3F0(v5, v5 + 1, v4 + 4, v4 + 4);
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

_BYTE *sub_10029F2B8(_BYTE *a1, __int128 *a2)
{
  *a1 = 0;
  a1[24] = 0;
  sub_10029F308(a1, a2);
  return a1;
}

void sub_10029F2E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1004B77A4(v1);
  }

  _Unwind_Resume(exception_object);
}

_OWORD *sub_10029F308(_OWORD *__dst, __int128 *a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = __dst;
    if (*(a2 + 23) < 0)
    {
      __dst = sub_1000056BC(__dst, *a2, *(a2 + 1));
    }

    else
    {
      v3 = *a2;
      *(__dst + 2) = *(a2 + 2);
      *__dst = v3;
    }

    *(v2 + 24) = 1;
  }

  return __dst;
}

uint64_t **sub_10029F36C(uint64_t **a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_10029F3EC(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_10029F3EC(uint64_t **a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  result = *sub_10029F470(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10029F618();
  }

  return result;
}

uint64_t *sub_10029F470(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_10029F6B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10029F6D0(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10029F6D0(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10029F734(uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_10026CFA8(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

void *sub_10029F7B4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10029F80C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_10029F80C(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10026CFA8(v5, (v5 + 8), v4 + 8, v4 + 2);
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

uint64_t **sub_10029F894(uint64_t **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_10029F918(a1, v4, a2, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void *sub_10029F918(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v4 = *sub_10029F9AC(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_10029FB50();
  }

  return v4;
}

uint64_t *sub_10029F9AC(uint64_t **a1, uint64_t *a2, const void ***a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !sub_100008750(a1, a5, a2 + 4))
  {
    if (!sub_100008750(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_100008750(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_100008750(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_10029FC14(a1, a3, a5);
}

char **sub_10029FBC8(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10029FD28(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10029FC14(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_100008750(a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_100008750(a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void *sub_10029FCB0(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_10029F7B4(__dst + 3, a2 + 24);
  return __dst;
}

void sub_10029FD0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10029FD28(uint64_t a1)
{
  sub_10002074C(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_10029FD7C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10029FD7C(a1, *a2);
    sub_10029FD7C(a1, a2[1]);
    sub_10029FD28((a2 + 4));

    operator delete(a2);
  }
}

void sub_10029FDD8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10029FDD8(a1, *a2);
    sub_10029FDD8(a1, a2[1]);
    sub_10029FE38((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_10029FE38(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10029FE38(a1, *a2);
    sub_10029FE38(a1, a2[1]);
    sub_10029FE94((a2 + 4));

    operator delete(a2);
  }
}

void sub_10029FE94(uint64_t a1)
{
  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 32);

  sub_10002074C(a1 + 24, v2);
}

uint64_t **sub_10029FEE8(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 328 * a3;
    do
    {
      sub_10029FF6C(a1, v4, a2, a2);
      a2 += 82;
      v6 -= 328;
    }

    while (v6);
  }

  return a1;
}

void *sub_10029FF6C(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v4 = *sub_10026D040(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_1002A0000();
  }

  return v4;
}

void sub_1002A00D4(_Unwind_Exception *a1)
{
  sub_10002074C(v2 + 56, *(v2 + 64));
  sub_1002A00FC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A00FC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10029FE94(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1002A0148(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A01A0(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1002A01A0(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10029FF6C(v5, v5 + 1, v4 + 8, (v4 + 8));
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

uint64_t **sub_1002A0228(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A02A8(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_1002A02A8(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *sub_10026D040(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1002A032C();
  }

  return result;
}

void sub_1002A03AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A03C8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A03C8(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10029FE38((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_1002A0428(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A0480(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1002A0480(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002A02A8(v5, v5 + 1, v4 + 8, (v4 + 8));
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

uint64_t **sub_1002A0508(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A0588(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_1002A0588(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *sub_10026D040(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1002A060C();
  }

  return result;
}

void sub_1002A068C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A06A8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A06A8(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10029FDD8((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1002A0708(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A0708(a1, *a2);
    sub_1002A0708(a1, a2[1]);
    sub_10029FDD8((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_1002A0768(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A0768(a1, *a2);
    sub_1002A0768(a1, a2[1]);
    sub_1002A07C4((a2 + 4));

    operator delete(a2);
  }
}

void sub_1002A07C4(uint64_t a1)
{
  sub_1002A0818(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1002A0818(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1002A0818(a1, *a2);
    sub_1002A0818(a1, *(a2 + 1));
    if (a2[152] == 1 && a2[151] < 0)
    {
      operator delete(*(a2 + 16));
    }

    sub_10002074C((a2 + 72), *(a2 + 10));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t **sub_1002A08A4(uint64_t **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 344 * a3;
    do
    {
      sub_1002A0928(a1, v4, a2, a2);
      a2 += 43;
      v6 -= 344;
    }

    while (v6);
  }

  return a1;
}

void *sub_1002A0928(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  result = *sub_10029F9AC(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1002A09AC();
  }

  return result;
}

void sub_1002A0A24(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A0B30(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1002A0A40(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  sub_10029F1D8(__dst + 5, a2 + 40);
  v5 = a2[4];
  *(__dst + 76) = *(a2 + 76);
  *(__dst + 4) = v5;
  sub_10029F2B8(__dst + 96, a2 + 6);
  v6 = a2[9];
  *(__dst + 8) = a2[8];
  *(__dst + 9) = v6;
  v7 = a2[10];
  v8 = a2[11];
  v9 = a2[13];
  *(__dst + 12) = a2[12];
  *(__dst + 13) = v9;
  *(__dst + 10) = v7;
  *(__dst + 11) = v8;
  v10 = a2[14];
  v11 = a2[15];
  v12 = a2[17];
  *(__dst + 16) = a2[16];
  *(__dst + 17) = v12;
  *(__dst + 14) = v10;
  *(__dst + 15) = v11;
  v13 = a2[18];
  v14 = a2[19];
  v15 = a2[20];
  *(__dst + 42) = *(a2 + 42);
  *(__dst + 19) = v14;
  *(__dst + 20) = v15;
  *(__dst + 18) = v13;
  return __dst;
}

void sub_1002A0B00(_Unwind_Exception *a1)
{
  sub_10002074C(v1 + 40, *(v1 + 48));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_1002A0B30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    if (*(a2 + 152) == 1 && *(a2 + 151) < 0)
    {
      operator delete(*(a2 + 128));
    }

    sub_10002074C(a2 + 72, *(a2 + 80));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_1002A0BBC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A0C14(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1002A0C14(void *result, const void ***a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002A0928(v5, v5 + 1, v4 + 4, (v4 + 4));
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

uint64_t **sub_1002A0C9C(uint64_t **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_1002A0D20(a1, v4, a2, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void *sub_1002A0D20(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v4 = *sub_10029F9AC(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_1002A0DB4();
  }

  return v4;
}

uint64_t sub_1002A0E2C(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1002A07C4(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1002A0E78(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_1002A0BBC(__dst + 3, a2 + 24);
  return __dst;
}

void sub_1002A0ED4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002A0EF0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A0F48(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1002A0F48(void *result, const void ***a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002A0D20(v5, v5 + 1, v4 + 4, (v4 + 4));
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

uint64_t **sub_1002A0FD0(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A1050(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_1002A1050(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *sub_10026D040(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1002A10D4();
  }

  return result;
}

void sub_1002A1154(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A1170(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A1170(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1002A0768((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1002A11D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A11D0(a1, *a2);
    sub_1002A11D0(a1, a2[1]);
    sub_1002A0768((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_1002A1230(uint64_t a1, char ***a2)
{
  if (a2)
  {
    sub_1002A1230(a1, *a2);
    sub_1002A1230(a1, a2[1]);
    sub_1002A0818((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t **sub_1002A1290(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A1310(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_1002A1310(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *sub_10026D040(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1002A1394();
  }

  return result;
}

void sub_1002A1414(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A1430(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A1430(uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1002A0818((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *sub_1002A1490(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A14E8(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1002A14E8(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002A1310(v5, v5 + 1, v4 + 8, (v4 + 8));
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

uint64_t **sub_1002A1570(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A15F0(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_1002A15F0(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *sub_10026D040(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1002A1674();
  }

  return result;
}

void sub_1002A16F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A1710(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A1710(uint64_t a1, char ***a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1002A1230((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1002A1770(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A1770(a1, *a2);
    sub_1002A1770(a1, a2[1]);
    sub_1002A1230((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_1002A17D0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A17D0(a1, *a2);
    sub_1002A17D0(a1, a2[1]);
    sub_1002A182C((a2 + 4));

    operator delete(a2);
  }
}

void sub_1002A182C(uint64_t a1)
{
  sub_10029FE38(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t **sub_1002A1880(uint64_t **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_1002A1904(a1, v4, a2, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void *sub_1002A1904(uint64_t **a1, uint64_t *a2, const void **a3, uint64_t a4)
{
  v4 = *sub_10029F9AC(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_1002A1998();
  }

  return v4;
}

uint64_t sub_1002A1A10(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1002A182C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1002A1A5C(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_1002A0148(__dst + 3, a2 + 24);
  return __dst;
}

void sub_1002A1AB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002A1AD4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002A1B2C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1002A1B2C(void *result, const void ***a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002A1904(v5, v5 + 1, v4 + 4, (v4 + 4));
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

uint64_t **sub_1002A1BB4(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1002A1C34(a1, v4, a2, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_1002A1C34(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  result = *sub_10026D040(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1002A1CB8();
  }

  return result;
}

void sub_1002A1D38(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A1D54(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002A1D54(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1002A17D0((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1002A1DB4(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002A1DB4(a1, *a2);
    sub_1002A1DB4(a1, a2[1]);
    sub_1002A17D0((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *sub_1002A1E14(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

void *sub_1002A1EF4(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_10029FC14(a1, &v7, a2);
  if (!v5)
  {
    sub_1002A1F9C();
  }

  return v5;
}

void *sub_1002A2040(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_10029FC14(a1, &v6, a2);
  if (!result)
  {
    sub_1002A20D8();
  }

  return result;
}

void sub_1002A2164(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002A0B30(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1002A2180(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 40) = 0u;
  *(__dst + 312) = 0u;
  *(__dst + 328) = 0u;
  *(__dst + 280) = 0u;
  *(__dst + 296) = 0u;
  *(__dst + 248) = 0u;
  *(__dst + 264) = 0u;
  *(__dst + 216) = 0u;
  *(__dst + 232) = 0u;
  *(__dst + 184) = 0u;
  *(__dst + 200) = 0u;
  *(__dst + 152) = 0u;
  *(__dst + 168) = 0u;
  *(__dst + 120) = 0u;
  *(__dst + 136) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 104) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 3) = 0x300000008;
  *(__dst + 4) = 0xC04E800000000000;
  v11 = 0xC04E800000000000;
  sub_1001BD370(__dst + 5, &v11, 1);
  *(__dst + 4) = xmmword_100563C70;
  *(__dst + 10) = 0x4024000000000000;
  *(__dst + 22) = 45;
  __dst[96] = 0;
  __dst[120] = 0;
  *(__dst + 16) = 0;
  __dst[136] = 0;
  *(__dst + 35) = 1;
  __dst[144] = 1;
  *(__dst + 152) = xmmword_100563C80;
  *(__dst + 168) = xmmword_100563C90;
  __asm { FMOV            V0.2D, #1.0 }

  *(__dst + 184) = _Q0;
  *(__dst + 25) = 0xC059000000000000;
  *(__dst + 13) = xmmword_100563CA0;
  *(__dst + 28) = vdup_n_s32(0x3DCCCCCDu);
  *(__dst + 232) = xmmword_100563BE0;
  *(__dst + 32) = 0;
  *(__dst + 33) = 0;
  *(__dst + 31) = 0x3FD999999999999ALL;
  *(__dst + 17) = xmmword_100563BF0;
  *(__dst + 72) = 5;
  *(__dst + 37) = 0x4000000000000000;
  *(__dst + 76) = 10;
  *(__dst + 39) = 0x4034000000000000;
  *(__dst + 80) = 3;
  *(__dst + 41) = 0x3FF0000000000000;
  *(__dst + 42) = 0x4008000000000000;
  return __dst;
}

void sub_1002A233C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002A2358(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *sub_10029FC14(a1, &v7, a2);
  if (!v5)
  {
    sub_1002A2400();
  }

  return v5;
}

uint64_t *sub_1002A24A4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
LABEL_8:
    sub_1002A256C();
  }

  v6 = *a2;
  while (1)
  {
    while (1)
    {
      v7 = v5;
      v8 = *(v5 + 32);
      if (v6 >= v8)
      {
        break;
      }

      v5 = *v7;
      if (!*v7)
      {
        goto LABEL_8;
      }
    }

    if (v8 >= v6)
    {
      return v7;
    }

    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1002A2764(uint64_t a1)
{
  __chkstk_darwin(a1);
  v1702 = 6;
  sub_10029B2E8(v1860, &v1702, &xmmword_1009F3428);
  v1701 = 7;
  sub_10029B2E8(&v1861, &v1701, &xmmword_1009F3428);
  v1700 = 0;
  sub_10029B2E8(v1862, &v1700, &xmmword_1009F3428);
  sub_10029FEE8(v1703, v1860, 3);
  v1863 = 1;
  sub_1002A0148(v1864, v1703);
  v1698 = 6;
  sub_10029B2E8(v1857, &v1698, &xmmword_1009F3428);
  v1697 = 7;
  sub_10029B2E8(&v1858, &v1697, &xmmword_1009F3428);
  v1696 = 0;
  sub_10029B2E8(v1859, &v1696, &xmmword_1009F3428);
  sub_10029FEE8(v1699, v1857, 3);
  v1865 = 2;
  sub_1002A0148(v1866, v1699);
  v1694 = 6;
  sub_10029B2E8(v1853, &v1694, &xmmword_1009F3428);
  v1693 = 4;
  sub_10029B2E8(&v1854, &v1693, &xmmword_1009F3428);
  v1692 = 7;
  sub_10029B2E8(&v1855, &v1692, &xmmword_1009F3428);
  v1691 = 0;
  sub_10029B2E8(v1856, &v1691, &xmmword_1009F3428);
  sub_10029FEE8(v1695, v1853, 4);
  v1867 = 3;
  sub_1002A0148(v1868, v1695);
  v1689 = 6;
  sub_10029B2E8(v1849, &v1689, &xmmword_1009F3428);
  v1688 = 3;
  v1659[0] = 0x300000008;
  v1659[1] = 0xC04F000000000000;
  v1739[0] = -62.0;
  sub_1001BD370(v1660, v1739, 1);
  v1661 = xmmword_100563C70;
  v1662 = 0x4024000000000000;
  v1663 = 45;
  LOBYTE(v1664) = 0;
  v1666 = 0;
  v1667 = 0;
  v1668 = 0;
  v1669 = 1;
  v1670 = 1;
  v1671 = xmmword_100563C80;
  v1672 = xmmword_100563C90;
  __asm { FMOV            V0.2D, #1.0 }

  v59 = _Q0;
  v1673 = _Q0;
  v1674 = 0xC059000000000000;
  v1675 = xmmword_100563CA0;
  v1676 = vdup_n_s32(0x3DCCCCCDu);
  v1677 = xmmword_100563BE0;
  v1679 = 0;
  v1680 = 0;
  v1678 = 0x3FD999999999999ALL;
  v1681 = xmmword_100563BF0;
  v1682 = 5;
  v1683 = 0x4000000000000000;
  v1684 = 10;
  v1685 = 0x4034000000000000;
  v1686 = 3;
  v1687 = xmmword_100563CB0;
  sub_10029B3B8(&v1850, &v1688, v1659);
  v1658 = 7;
  sub_10029B2E8(&v1851, &v1658, &xmmword_1009F3428);
  v1657 = 0;
  v1628[0] = 0x300000008;
  v1628[1] = 0xC04F000000000000;
  v1739[0] = -62.0;
  sub_1001BD370(v1629, v1739, 1);
  v1630 = xmmword_100563C70;
  v1631 = 0x4024000000000000;
  v1632 = 45;
  LOBYTE(v1633) = 0;
  v1635 = 0;
  v1636 = 0;
  v1637 = 0;
  v1638 = 1;
  v1639 = 1;
  v1640 = xmmword_100563C80;
  v1641 = xmmword_100563C90;
  v1642 = v59;
  v1643 = 0xC059000000000000;
  v1644 = xmmword_100563CA0;
  v1645 = vdup_n_s32(0x3DCCCCCDu);
  v1646 = xmmword_100563BE0;
  v1648 = 0;
  v1649 = 0;
  v1647 = 0x3FD999999999999ALL;
  v1650 = xmmword_100563BF0;
  v1651 = 5;
  v1652 = 0x4000000000000000;
  v1653 = 10;
  v1654 = 0x4034000000000000;
  v1655 = 3;
  v1656 = xmmword_100563CB0;
  sub_10029B3B8(v1852, &v1657, v1628);
  sub_10029FEE8(v1690, v1849, 4);
  v1869 = 4;
  sub_1002A0148(v1870, v1690);
  v1626 = 6;
  v1597[0] = 0x300000008;
  v1597[1] = 0xC04F19999999999ALL;
  v1739[0] = -62.2;
  sub_1001BD370(v1598, v1739, 1);
  v1599 = xmmword_100563C70;
  v1600 = 0x4024000000000000;
  v1601 = 45;
  LOBYTE(v1602) = 0;
  v1604 = 0;
  v1605 = 0;
  v1606 = 0;
  v1607 = 1;
  v1608 = 1;
  v1609 = xmmword_100563C80;
  v1610 = xmmword_100563C90;
  v1611 = v59;
  v1612 = 0xC059000000000000;
  v1613 = xmmword_100563CA0;
  v1614 = vdup_n_s32(0x3DCCCCCDu);
  v1615 = xmmword_100563BE0;
  v1617 = 0;
  v1618 = 0;
  v1616 = 0x3FD999999999999ALL;
  v1619 = xmmword_100563BF0;
  v1620 = 5;
  v1621 = 0x4000000000000000;
  v1622 = 10;
  v1623 = 0x4034000000000000;
  v1624 = 3;
  v1625 = xmmword_100563CB0;
  sub_10029B3B8(v1846, &v1626, v1597);
  v1596 = 7;
  sub_10029B2E8(&v1847, &v1596, &xmmword_1009F3428);
  v1595 = 0;
  v1566[0] = 0x300000008;
  v1566[1] = 0xC04F19999999999ALL;
  v1739[0] = -62.2;
  sub_1001BD370(v1567, v1739, 1);
  v1568 = xmmword_100563C70;
  v1569 = 0x4024000000000000;
  v1570 = 45;
  LOBYTE(v1571) = 0;
  v1573 = 0;
  v1574 = 0;
  v1575 = 0;
  v1576 = 1;
  v1577 = 1;
  v1578 = xmmword_100563C80;
  v1579 = xmmword_100563C90;
  v1580 = v59;
  v1581 = 0xC059000000000000;
  v1582 = xmmword_100563CA0;
  v1583 = vdup_n_s32(0x3DCCCCCDu);
  v1584 = xmmword_100563BE0;
  v1586 = 0;
  v1587 = 0;
  v1585 = 0x3FD999999999999ALL;
  v1588 = xmmword_100563BF0;
  v1589 = 5;
  v1590 = 0x4000000000000000;
  v1591 = 10;
  v1592 = 0x4034000000000000;
  v1593 = 3;
  v1594 = xmmword_100563CB0;
  sub_10029B3B8(v1848, &v1595, v1566);
  sub_10029FEE8(v1627, v1846, 3);
  v1871 = 5;
  sub_1002A0148(v1872, v1627);
  v1564 = 6;
  sub_10029B2E8(v1843, &v1564, &xmmword_1009F3428);
  v1563 = 7;
  sub_10029B2E8(&v1844, &v1563, &xmmword_1009F3428);
  v1562 = 0;
  sub_10029B2E8(v1845, &v1562, &xmmword_1009F3428);
  sub_10029FEE8(v1565, v1843, 3);
  v1873 = 9;
  sub_1002A0148(v1874, v1565);
  v1560 = 6;
  sub_10029B2E8(v1840, &v1560, &xmmword_1009F3428);
  v1559 = 7;
  sub_10029B2E8(&v1841, &v1559, &xmmword_1009F3428);
  v1558 = 0;
  sub_10029B2E8(v1842, &v1558, &xmmword_1009F3428);
  sub_10029FEE8(v1561, v1840, 3);
  v1875 = 12;
  sub_1002A0148(v1876, v1561);
  v1556 = 1;
  sub_10029B2E8(v1830, &v1556, &xmmword_1009F3428);
  v1555 = 3;
  v1526[0] = 0x300000008;
  v1526[1] = 0xC050933333333333;
  v1739[0] = -66.3;
  sub_1001BD370(v1527, v1739, 1);
  v1528 = xmmword_100563C70;
  v1529 = 0x4024000000000000;
  v1530 = 45;
  LOBYTE(v1531) = 0;
  v1533 = 0;
  v1534 = 0;
  v1535 = 0;
  v1536 = 1;
  v1537 = 1;
  v1538 = xmmword_100563C80;
  v1539 = xmmword_100563C90;
  v1540 = v59;
  v1541 = 0xC059000000000000;
  v1542 = xmmword_100563CA0;
  v1543 = vdup_n_s32(0x3DCCCCCDu);
  v1544 = xmmword_100563BE0;
  v1546 = 0;
  v1547 = 0;
  v1545 = 0x3FD999999999999ALL;
  v1548 = xmmword_100563BF0;
  v1549 = 5;
  v1550 = 0x4000000000000000;
  v1551 = 10;
  v1552 = 0x4034000000000000;
  v1553 = 3;
  v1554 = xmmword_100563CB0;
  sub_10029B3B8(&v1831, &v1555, v1526);
  v1525 = 2;
  v1496[0] = 0x300000008;
  v1496[1] = 0xC050B9999999999ALL;
  v1739[0] = -66.9;
  sub_1001BD370(v1497, v1739, 1);
  v1498 = xmmword_100563C70;
  v1499 = 0x4024000000000000;
  v1500 = 45;
  LOBYTE(v1501) = 0;
  v1503 = 0;
  v1504 = 0;
  v1505 = 0;
  v1506 = 1;
  v1507 = 1;
  v1508 = xmmword_100563C80;
  v1509 = xmmword_100563C90;
  v1510 = v59;
  v1511 = 0xC059000000000000;
  v1512 = xmmword_100563CA0;
  v1513 = vdup_n_s32(0x3DCCCCCDu);
  v1514 = xmmword_100563BE0;
  v1516 = 0;
  v1517 = 0;
  v1515 = 0x3FD999999999999ALL;
  v1518 = xmmword_100563BF0;
  v1519 = 5;
  v1520 = 0x4000000000000000;
  v1521 = 10;
  v1522 = 0x4034000000000000;
  v1523 = 3;
  v1524 = xmmword_100563CB0;
  sub_10029B3B8(&v1832, &v1525, v1496);
  v1495 = 4;
  v1466[0] = 0x300000008;
  v1466[1] = 0xC05079999999999ALL;
  v1739[0] = -65.9;
  sub_1001BD370(v1467, v1739, 1);
  v1468 = xmmword_100563C70;
  v1469 = 0x4024000000000000;
  v1470 = 45;
  LOBYTE(v1471) = 0;
  v1473 = 0;
  v1474 = 0;
  v1475 = 0;
  v1476 = 1;
  v1477 = 1;
  v1478 = xmmword_100563C80;
  v1479 = xmmword_100563C90;
  v1480 = v59;
  v1481 = 0xC059000000000000;
  v1482 = xmmword_100563CA0;
  v1483 = vdup_n_s32(0x3DCCCCCDu);
  v1484 = xmmword_100563BE0;
  v1486 = 0;
  v1487 = 0;
  v1485 = 0x3FD999999999999ALL;
  v1488 = xmmword_100563BF0;
  v1489 = 5;
  v1490 = 0x4000000000000000;
  v1491 = 10;
  v1492 = 0x4034000000000000;
  v1493 = 3;
  v1494 = xmmword_100563CB0;
  sub_10029B3B8(&v1833, &v1495, v1466);
  v1465 = 5;
  sub_10029B2E8(&v1834, &v1465, &xmmword_1009F3428);
  v1464 = 9;
  v1435[0] = 0x300000008;
  v1435[1] = 0xC04F400000000000;
  v1739[0] = -62.5;
  sub_1001BD370(v1436, v1739, 1);
  v1437 = xmmword_100563C70;
  v1438 = 0x4024000000000000;
  v1439 = 45;
  LOBYTE(v1440) = 0;
  v1442 = 0;
  v1443 = 0;
  v1444 = 0;
  v1445 = 1;
  v1446 = 1;
  v1447 = xmmword_100563C80;
  v1448 = xmmword_100563C90;
  v1449 = v59;
  v1450 = 0xC059000000000000;
  v1451 = xmmword_100563CA0;
  v1452 = vdup_n_s32(0x3DCCCCCDu);
  v1453 = xmmword_100563BE0;
  v1455 = 0;
  v1456 = 0;
  v1454 = 0x3FD999999999999ALL;
  v1457 = xmmword_100563BF0;
  v1458 = 5;
  v1459 = 0x4000000000000000;
  v1460 = 10;
  v1461 = 0x4034000000000000;
  v1462 = 3;
  v1463 = xmmword_100563CB0;
  sub_10029B3B8(&v1835, &v1464, v1435);
  v1434 = 12;
  sub_10029B2E8(&v1836, &v1434, &xmmword_1009F3428);
  v1433 = 6;
  sub_10029B2E8(&v1837, &v1433, &xmmword_1009F3428);
  v1432 = 18;
  v1403[0] = 0x200000003;
  v1403[1] = 0xC04E000000000000;
  v1739[0] = -60.0;
  sub_1001BD370(v1404, v1739, 1);
  v1405 = xmmword_1005690D0;
  v1406 = 0x4000000000000000;
  v1407 = 20;
  LOBYTE(v1408) = 0;
  v1410 = 0;
  v1411 = 0;
  v1412 = 0;
  v1413 = 1;
  v1414 = 1;
  v1415 = xmmword_100563C80;
  v1416 = xmmword_100563C90;
  v1417 = v59;
  v1418 = 0xC059000000000000;
  v1419 = xmmword_100563CA0;
  v1420 = vdup_n_s32(0x3DCCCCCDu);
  v1421 = xmmword_100563BE0;
  v1423 = 0;
  v1424 = 0;
  v1422 = 0x3FD999999999999ALL;
  v1425 = xmmword_100563BF0;
  v1426 = 5;
  v1427 = 0x4000000000000000;
  v1428 = 10;
  v1429 = 0x4034000000000000;
  v1430 = 3;
  v1431 = xmmword_100563CB0;
  sub_10029B3B8(&v1838, &v1432, v1403);
  v1402 = 0;
  v1373[0] = 0x300000008;
  v1373[1] = 0xC050B9999999999ALL;
  v1739[0] = -66.9;
  sub_1001BD370(v1374, v1739, 1);
  v1375 = xmmword_100563C70;
  v1376 = 0x4024000000000000;
  v1377 = 45;
  LOBYTE(v1378) = 0;
  v1380 = 0;
  v1381 = 0;
  v1382 = 0;
  v1383 = 1;
  v1384 = 1;
  v1385 = xmmword_100563C80;
  v1386 = xmmword_100563C90;
  v1387 = v59;
  v1388 = 0xC059000000000000;
  v1389 = xmmword_100563CA0;
  v1390 = vdup_n_s32(0x3DCCCCCDu);
  v1391 = xmmword_100563BE0;
  v1393 = 0;
  v1394 = 0;
  v1392 = 0x3FD999999999999ALL;
  v1395 = xmmword_100563BF0;
  v1396 = 5;
  v1397 = 0x4000000000000000;
  v1398 = 10;
  v1399 = 0x4034000000000000;
  v1400 = 3;
  v1401 = xmmword_100563CB0;
  sub_10029B3B8(v1839, &v1402, v1373);
  sub_10029FEE8(v1557, v1830, 10);
  v1877 = 6;
  sub_1002A0148(v1878, v1557);
  v1371 = 4;
  sub_10029B2E8(v1823, &v1371, &xmmword_1009F3428);
  v1370 = 1;
  sub_10029B2E8(&v1824, &v1370, &xmmword_1009F3428);
  v1369 = 5;
  sub_10029B2E8(&v1825, &v1369, &xmmword_1009F3428);
  v1368 = 12;
  sub_10029B2E8(&v1826, &v1368, &xmmword_1009F3428);
  v1367 = 18;
  v1338[0] = 0x200000003;
  v1338[1] = 0xC04E000000000000;
  v1739[0] = -60.0;
  sub_1001BD370(v1339, v1739, 1);
  v1340 = xmmword_1005690D0;
  v1341 = 0x4000000000000000;
  v1342 = 20;
  LOBYTE(v1343) = 0;
  v1345 = 0;
  v1346 = 0;
  v1347 = 0;
  v1348 = 1;
  v1349 = 1;
  v1350 = xmmword_100563C80;
  v1351 = xmmword_100563C90;
  v1352 = v59;
  v1353 = 0xC059000000000000;
  v1354 = xmmword_100563CA0;
  v1355 = vdup_n_s32(0x3DCCCCCDu);
  v1356 = xmmword_100563BE0;
  v1358 = 0;
  v1359 = 0;
  v1357 = 0x3FD999999999999ALL;
  v1360 = xmmword_100563BF0;
  v1361 = 5;
  v1362 = 0x4000000000000000;
  v1363 = 10;
  v1364 = 0x4034000000000000;
  v1365 = 3;
  v1366 = xmmword_100563CB0;
  sub_10029B3B8(&v1827, &v1367, v1338);
  v1337 = 7;
  v1308[0] = 0x300000008;
  v1308[1] = 0xC050000000000000;
  v1739[0] = -64.0;
  sub_1001BD370(v1309, v1739, 1);
  v1310 = xmmword_100563C70;
  v1311 = 0x4024000000000000;
  v1312 = 45;
  LOBYTE(v1313) = 0;
  v1315 = 0;
  v1316 = 0;
  v1317 = 0;
  v1318 = 1;
  v1319 = 1;
  v1320 = xmmword_100563C80;
  v1321 = xmmword_100563C90;
  v1322 = v59;
  v1323 = 0xC059000000000000;
  v1324 = xmmword_100563CA0;
  v1325 = vdup_n_s32(0x3DCCCCCDu);
  v1326 = xmmword_100563BE0;
  v1328 = 0;
  v1329 = 0;
  v1327 = 0x3FD999999999999ALL;
  v1330 = xmmword_100563BF0;
  v1331 = 5;
  v1332 = 0x4000000000000000;
  v1333 = 10;
  v1334 = 0x4034000000000000;
  v1335 = 3;
  v1336 = xmmword_100563CB0;
  sub_10029B3B8(&v1828, &v1337, v1308);
  v1307 = 0;
  sub_10029B2E8(v1829, &v1307, &xmmword_1009F3428);
  sub_10029FEE8(v1372, v1823, 7);
  v1879 = 7;
  sub_1002A0148(v1880, v1372);
  v1305 = 0;
  v1276[0] = 0x300000008;
  v1276[1] = 0xC050B9999999999ALL;
  v1739[0] = -66.9;
  sub_1001BD370(v1277, v1739, 1);
  v1278 = xmmword_100563C70;
  v1279 = 0x4024000000000000;
  v1280 = 45;
  LOBYTE(v1281) = 0;
  v1283 = 0;
  v1284 = 0;
  v1285 = 0;
  v1286 = 1;
  v1287 = 1;
  v1288 = xmmword_100563C80;
  v1289 = xmmword_100563C90;
  v1290 = v59;
  v1291 = 0xC059000000000000;
  v1292 = xmmword_100563CA0;
  v1293 = vdup_n_s32(0x3DCCCCCDu);
  v1294 = xmmword_100563BE0;
  v1296 = 0;
  v1297 = 0;
  v1295 = 0x3FD999999999999ALL;
  v1298 = xmmword_100563BF0;
  v1299 = 5;
  v1300 = 0x4000000000000000;
  v1301 = 10;
  v1302 = 0x4034000000000000;
  v1303 = 3;
  v1304 = xmmword_100563CB0;
  sub_10029B3B8(v1819, &v1305, v1276);
  sub_10029FEE8(v1306, v1819, 1);
  v1881 = 0;
  sub_1002A0148(v1882, v1306);
  sub_1002A0228(v1704, &v1863, 10);
  v1883 = 4;
  sub_1002A0428(v1884, v1704);
  v1273 = 7;
  v1244[0] = 0x300000008;
  v1244[1] = 0xC04CC00000000000;
  v1739[0] = -57.5;
  sub_1001BD370(v1245, v1739, 1);
  v1246 = xmmword_100563C70;
  v1247 = 0x4024000000000000;
  v1248 = 45;
  LOBYTE(v1249) = 0;
  v1251 = 0;
  v1252 = 0;
  v1253 = 0;
  v1254 = 1;
  v1255 = 1;
  v1256 = xmmword_100563C80;
  v1257 = xmmword_100563C90;
  v1258 = v59;
  v1259 = 0xC059000000000000;
  v1260 = xmmword_100563CA0;
  v1261 = vdup_n_s32(0x3DCCCCCDu);
  v1262 = xmmword_100563BE0;
  v1264 = 0;
  v1265 = 0;
  v1263 = 0x3FD999999999999ALL;
  v1266 = xmmword_100563BF0;
  v1267 = 5;
  v1268 = 0x4000000000000000;
  v1269 = 10;
  v1270 = 0x4034000000000000;
  v1271 = 3;
  v1272 = xmmword_100563CB0;
  sub_10029B3B8(v1799, &v1273, v1244);
  v1243 = 0;
  sub_10029B2E8(v1800, &v1243, &xmmword_1009F3428);
  sub_10029FEE8(v1274, v1799, 2);
  v1801 = 1;
  sub_1002A0148(v1802, v1274);
  v1241 = 7;
  v1212[0] = 0x300000008;
  v1212[1] = 0xC04B800000000000;
  v1739[0] = -55.0;
  sub_1001BD370(v1213, v1739, 1);
  v1214 = xmmword_100563C70;
  v1215 = 0x4024000000000000;
  v1216 = 45;
  LOBYTE(v1217) = 0;
  v1219 = 0;
  v1220 = 0;
  v1221 = 0;
  v1222 = 1;
  v1223 = 1;
  v1224 = xmmword_100563C80;
  v1225 = xmmword_100563C90;
  v1226 = v59;
  v1227 = 0xC059000000000000;
  v1228 = xmmword_100563CA0;
  v1229 = vdup_n_s32(0x3DCCCCCDu);
  v1230 = xmmword_100563BE0;
  v1232 = 0;
  v1233 = 0;
  v1231 = 0x3FD999999999999ALL;
  v1234 = xmmword_100563BF0;
  v1235 = 5;
  v1236 = 0x4000000000000000;
  v1237 = 10;
  v1238 = 0x4034000000000000;
  v1239 = 3;
  v1240 = xmmword_100563CB0;
  sub_10029B3B8(v1797, &v1241, v1212);
  v1211 = 0;
  sub_10029B2E8(v1798, &v1211, &xmmword_1009F3428);
  sub_10029FEE8(v1242, v1797, 2);
  v1803 = 2;
  sub_1002A0148(v1804, v1242);
  v1209 = 7;
  v1180[0] = 0x300000008;
  v1180[1] = 0xC04A000000000000;
  v1739[0] = -52.0;
  sub_1001BD370(v1181, v1739, 1);
  v1182 = xmmword_100563C70;
  v1183 = 0x4024000000000000;
  v1184 = 45;
  LOBYTE(v1185) = 0;
  v1187 = 0;
  v1188 = 0;
  v1189 = 0;
  v1190 = 1;
  v1191 = 1;
  v1192 = xmmword_100563C80;
  v1193 = xmmword_100563C90;
  v1194 = v59;
  v1195 = 0xC059000000000000;
  v1196 = xmmword_100563CA0;
  v1197 = vdup_n_s32(0x3DCCCCCDu);
  v1198 = xmmword_100563BE0;
  v1200 = 0;
  v1201 = 0;
  v1199 = 0x3FD999999999999ALL;
  v1202 = xmmword_100563BF0;
  v1203 = 5;
  v1204 = 0x4000000000000000;
  v1205 = 10;
  v1206 = 0x4034000000000000;
  v1207 = 3;
  v1208 = xmmword_100563CB0;
  sub_10029B3B8(v1795, &v1209, v1180);
  v1179 = 0;
  sub_10029B2E8(v1796, &v1179, &xmmword_1009F3428);
  sub_10029FEE8(v1210, v1795, 2);
  v1805 = 3;
  sub_1002A0148(v1806, v1210);
  v1177 = 7;
  v1148[0] = 0x300000008;
  v1148[1] = 0xC04A400000000000;
  v1739[0] = -52.5;
  sub_1001BD370(v1149, v1739, 1);
  v1150 = xmmword_100563C70;
  v1151 = 0x4024000000000000;
  v1152 = 45;
  LOBYTE(v1153) = 0;
  v1155 = 0;
  v1156 = 0;
  v1157 = 0;
  v1158 = 1;
  v1159 = 1;
  v1160 = xmmword_100563C80;
  v1161 = xmmword_100563C90;
  v1162 = v59;
  v1163 = 0xC059000000000000;
  v1164 = xmmword_100563CA0;
  v1165 = vdup_n_s32(0x3DCCCCCDu);
  v1166 = xmmword_100563BE0;
  v1168 = 0;
  v1169 = 0;
  v1167 = 0x3FD999999999999ALL;
  v1170 = xmmword_100563BF0;
  v1171 = 5;
  v1172 = 0x4000000000000000;
  v1173 = 10;
  v1174 = 0x4034000000000000;
  v1175 = 3;
  v1176 = xmmword_100563CB0;
  sub_10029B3B8(v1793, &v1177, v1148);
  v1147 = 0;
  sub_10029B2E8(v1794, &v1147, &xmmword_1009F3428);
  sub_10029FEE8(v1178, v1793, 2);
  v1807 = 4;
  sub_1002A0148(v1808, v1178);
  v1145 = 7;
  v1116[0] = 0x300000008;
  v1116[1] = 0xC048A66666666666;
  v1739[0] = -49.3;
  sub_1001BD370(v1117, v1739, 1);
  v1118 = xmmword_100563C70;
  v1119 = 0x4024000000000000;
  v1120 = 45;
  LOBYTE(v1121) = 0;
  v1123 = 0;
  v1124 = 0;
  v1125 = 0;
  v1126 = 1;
  v1127 = 1;
  v1128 = xmmword_100563C80;
  v1129 = xmmword_100563C90;
  v1130 = v59;
  v1131 = 0xC059000000000000;
  v1132 = xmmword_100563CA0;
  v1133 = vdup_n_s32(0x3DCCCCCDu);
  v1134 = xmmword_100563BE0;
  v1136 = 0;
  v1137 = 0;
  v1135 = 0x3FD999999999999ALL;
  v1138 = xmmword_100563BF0;
  v1139 = 5;
  v1140 = 0x4000000000000000;
  v1141 = 10;
  v1142 = 0x4034000000000000;
  v1143 = 3;
  v1144 = xmmword_100563CB0;
  sub_10029B3B8(v1791, &v1145, v1116);
  v1115 = 0;
  sub_10029B2E8(v1792, &v1115, &xmmword_1009F3428);
  sub_10029FEE8(v1146, v1791, 2);
  v1809 = 5;
  sub_1002A0148(v1810, v1146);
  v1113 = 7;
  sub_10029B2E8(v1789, &v1113, &xmmword_1009F3428);
  v1112 = 0;
  sub_10029B2E8(v1790, &v1112, &xmmword_1009F3428);
  sub_10029FEE8(v1114, v1789, 2);
  v1811 = 12;
  sub_1002A0148(v1812, v1114);
  v1110 = 4;
  v1081[0] = 0x300000008;
  v1081[1] = 0xC04A000000000000;
  v1739[0] = -52.0;
  sub_1001BD370(v1082, v1739, 1);
  v1083 = xmmword_100563C70;
  v1084 = 0x4024000000000000;
  v1085 = 45;
  LOBYTE(v1086) = 0;
  v1088 = 0;
  v1089 = 0;
  v1090 = 0;
  v1091 = 1;
  v1092 = 1;
  v1093 = xmmword_100563C80;
  v1094 = xmmword_100563C90;
  v1095 = v59;
  v1096 = 0xC059000000000000;
  v1097 = xmmword_100563CA0;
  v1098 = vdup_n_s32(0x3DCCCCCDu);
  v1099 = xmmword_100563BE0;
  v1101 = 0;
  v1102 = 0;
  v1100 = 0x3FD999999999999ALL;
  v1103 = xmmword_100563BF0;
  v1104 = 5;
  v1105 = 0x4000000000000000;
  v1106 = 10;
  v1107 = 0x4034000000000000;
  v1108 = 3;
  v1109 = xmmword_100563CB0;
  sub_10029B3B8(v1779, &v1110, v1081);
  v1080 = 1;
  v1051[0] = 0x300000008;
  v1051[1] = 0xC04B800000000000;
  v1739[0] = -55.0;
  sub_1001BD370(v1052, v1739, 1);
  v1053 = xmmword_100563C70;
  v1054 = 0x4024000000000000;
  v1055 = 45;
  LOBYTE(v1056) = 0;
  v1058 = 0;
  v1059 = 0;
  v1060 = 0;
  v1061 = 1;
  v1062 = 1;
  v1063 = xmmword_100563C80;
  v1064 = xmmword_100563C90;
  v1065 = v59;
  v1066 = 0xC059000000000000;
  v1067 = xmmword_100563CA0;
  v1068 = vdup_n_s32(0x3DCCCCCDu);
  v1069 = xmmword_100563BE0;
  v1071 = 0;
  v1072 = 0;
  v1070 = 0x3FD999999999999ALL;
  v1073 = xmmword_100563BF0;
  v1074 = 5;
  v1075 = 0x4000000000000000;
  v1076 = 10;
  v1077 = 0x4034000000000000;
  v1078 = 3;
  v1079 = xmmword_100563CB0;
  sub_10029B3B8(&v1780, &v1080, v1051);
  v1050 = 2;
  v1021[0] = 0x300000008;
  v1021[1] = 0xC04A800000000000;
  v1739[0] = -53.0;
  sub_1001BD370(v1022, v1739, 1);
  v1023 = xmmword_100563C70;
  v1024 = 0x4024000000000000;
  v1025 = 45;
  LOBYTE(v1026) = 0;
  v1028 = 0;
  v1029 = 0;
  v1030 = 0;
  v1031 = 1;
  v1032 = 1;
  v1033 = xmmword_100563C80;
  v1034 = xmmword_100563C90;
  v1035 = v59;
  v1036 = 0xC059000000000000;
  v1037 = xmmword_100563CA0;
  v1038 = vdup_n_s32(0x3DCCCCCDu);
  v1039 = xmmword_100563BE0;
  v1041 = 0;
  v1042 = 0;
  v1040 = 0x3FD999999999999ALL;
  v1043 = xmmword_100563BF0;
  v1044 = 5;
  v1045 = 0x4000000000000000;
  v1046 = 10;
  v1047 = 0x4034000000000000;
  v1048 = 3;
  v1049 = xmmword_100563CB0;
  sub_10029B3B8(&v1781, &v1050, v1021);
  v1020 = 3;
  v991[0] = 0x300000008;
  v991[1] = 0xC04B800000000000;
  v1739[0] = -55.0;
  sub_1001BD370(v992, v1739, 1);
  v993 = xmmword_100563C70;
  v994 = 0x4024000000000000;
  v995 = 45;
  LOBYTE(v996) = 0;
  v998 = 0;
  v999 = 0;
  v1000 = 0;
  v1001 = 1;
  v1002 = 1;
  v1003 = xmmword_100563C80;
  v1004 = xmmword_100563C90;
  v1005 = v59;
  v1006 = 0xC059000000000000;
  v1007 = xmmword_100563CA0;
  v1008 = vdup_n_s32(0x3DCCCCCDu);
  v1009 = xmmword_100563BE0;
  v1011 = 0;
  v1012 = 0;
  v1010 = 0x3FD999999999999ALL;
  v1013 = xmmword_100563BF0;
  v1014 = 5;
  v1015 = 0x4000000000000000;
  v1016 = 10;
  v1017 = 0x4034000000000000;
  v1018 = 3;
  v1019 = xmmword_100563CB0;
  sub_10029B3B8(&v1782, &v1020, v991);
  v990 = 5;
  v961[0] = 0x300000008;
  v961[1] = 0xC04E000000000000;
  v1739[0] = -60.0;
  sub_1001BD370(v962, v1739, 1);
  v963 = xmmword_100563C70;
  v964 = 0x4024000000000000;
  v965 = 45;
  LOBYTE(v966) = 0;
  v968 = 0;
  v969 = 0;
  v970 = 0;
  v971 = 1;
  v972 = 1;
  v973 = xmmword_100563C80;
  v974 = xmmword_100563C90;
  v975 = v59;
  v976 = 0xC059000000000000;
  v977 = xmmword_100563CA0;
  v978 = vdup_n_s32(0x3DCCCCCDu);
  v979 = xmmword_100563BE0;
  v981 = 0;
  v982 = 0;
  v980 = 0x3FD999999999999ALL;
  v983 = xmmword_100563BF0;
  v984 = 5;
  v985 = 0x4000000000000000;
  v986 = 10;
  v987 = 0x4034000000000000;
  v988 = 3;
  v989 = xmmword_100563CB0;
  sub_10029B3B8(&v1783, &v990, v961);
  v960 = 12;
  sub_10029B2E8(&v1784, &v960, &xmmword_1009F3428);
  v959 = 16;
  v930[0] = 0x300000008;
  v930[1] = 0xC045000000000000;
  v1739[0] = -42.0;
  sub_1001BD370(v931, v1739, 1);
  v932 = xmmword_100563C70;
  v933 = 0x4024000000000000;
  v934 = 45;
  LOBYTE(v935) = 0;
  v937 = 0;
  v938 = 0;
  v939 = 0;
  v940 = 1;
  v941 = 1;
  v942 = xmmword_100563C80;
  v943 = xmmword_100563C90;
  v944 = v59;
  v945 = 0xC059000000000000;
  v946 = xmmword_100563CA0;
  v947 = vdup_n_s32(0x3DCCCCCDu);
  v948 = xmmword_100563BE0;
  v950 = 0;
  v951 = 0;
  v949 = 0x3FD999999999999ALL;
  v952 = xmmword_100563BF0;
  v953 = 5;
  v954 = 0x4000000000000000;
  v955 = 10;
  v956 = 0x4034000000000000;
  v957 = 3;
  v958 = xmmword_100563CB0;
  sub_10029B3B8(&v1785, &v959, v930);
  v929 = 7;
  v900[0] = 0x300000008;
  v900[1] = 0xC046800000000000;
  v1739[0] = -45.0;
  sub_1001BD370(v901, v1739, 1);
  v902 = xmmword_100563C70;
  v903 = 0x4024000000000000;
  v904 = 45;
  LOBYTE(v905) = 0;
  v907 = 0;
  v908 = 0;
  v909 = 0;
  v910 = 1;
  v911 = 1;
  v912 = xmmword_100563C80;
  v913 = xmmword_100563C90;
  v914 = v59;
  v915 = 0xC059000000000000;
  v916 = xmmword_100563CA0;
  v917 = vdup_n_s32(0x3DCCCCCDu);
  v918 = xmmword_100563BE0;
  v920 = 0;
  v921 = 0;
  v919 = 0x3FD999999999999ALL;
  v922 = xmmword_100563BF0;
  v923 = 5;
  v924 = 0x4000000000000000;
  v925 = 10;
  v926 = 0x4034000000000000;
  v927 = 3;
  v928 = xmmword_100563CB0;
  sub_10029B3B8(&v1786, &v929, v900);
  v899 = 6;
  v870[0] = 0x300000008;
  v870[1] = 0xC045800000000000;
  v1739[0] = -43.0;
  sub_1001BD370(v871, v1739, 1);
  v872 = xmmword_100563C70;
  v873 = 0x4024000000000000;
  v874 = 45;
  LOBYTE(v875) = 0;
  v877 = 0;
  v878 = 0;
  v879 = 0;
  v880 = 1;
  v881 = 1;
  v882 = xmmword_100563C80;
  v883 = xmmword_100563C90;
  v884 = v59;
  v885 = 0xC059000000000000;
  v886 = xmmword_100563CA0;
  v887 = vdup_n_s32(0x3DCCCCCDu);
  v888 = xmmword_100563BE0;
  v890 = 0;
  v891 = 0;
  v889 = 0x3FD999999999999ALL;
  v892 = xmmword_100563BF0;
  v893 = 5;
  v894 = 0x4000000000000000;
  v895 = 10;
  v896 = 0x4034000000000000;
  v897 = 3;
  v898 = xmmword_100563CB0;
  sub_10029B3B8(&v1787, &v899, v870);
  v869 = 0;
  sub_10029B2E8(v1788, &v869, &xmmword_1009F3428);
  sub_10029FEE8(v1111, v1779, 10);
  v1813 = 7;
  sub_1002A0148(v1814, v1111);
  v867 = 6;
  v838[0] = 0x300000008;
  v838[1] = 0xC045800000000000;
  v1739[0] = -43.0;
  sub_1001BD370(v839, v1739, 1);
  v840 = xmmword_100563C70;
  v841 = 0x4024000000000000;
  v842 = 45;
  LOBYTE(v843) = 0;
  v845 = 0;
  v846 = 0;
  v847 = 0;
  v848 = 1;
  v849 = 1;
  v850 = xmmword_100563C80;
  v851 = xmmword_100563C90;
  v852 = v59;
  v853 = 0xC059000000000000;
  v854 = xmmword_100563CA0;
  v855 = vdup_n_s32(0x3DCCCCCDu);
  v856 = xmmword_100563BE0;
  v858 = 0;
  v859 = 0;
  v857 = 0x3FD999999999999ALL;
  v860 = xmmword_100563BF0;
  v861 = 5;
  v862 = 0x4000000000000000;
  v863 = 10;
  v864 = 0x4034000000000000;
  v865 = 3;
  v866 = xmmword_100563CB0;
  sub_10029B3B8(v1776, &v867, v838);
  v837 = 7;
  v808[0] = 0x300000008;
  v808[1] = 0xC045800000000000;
  v1739[0] = -43.0;
  sub_1001BD370(v809, v1739, 1);
  v810 = xmmword_100563C70;
  v811 = 0x4024000000000000;
  v812 = 45;
  LOBYTE(v813) = 0;
  v815 = 0;
  v816 = 0;
  v817 = 0;
  v818 = 1;
  v819 = 1;
  v820 = xmmword_100563C80;
  v821 = xmmword_100563C90;
  v822 = v59;
  v823 = 0xC059000000000000;
  v824 = xmmword_100563CA0;
  v825 = vdup_n_s32(0x3DCCCCCDu);
  v826 = xmmword_100563BE0;
  v828 = 0;
  v829 = 0;
  v827 = 0x3FD999999999999ALL;
  v830 = xmmword_100563BF0;
  v831 = 5;
  v832 = 0x4000000000000000;
  v833 = 10;
  v834 = 0x4034000000000000;
  v835 = 3;
  v836 = xmmword_100563CB0;
  sub_10029B3B8(&v1777, &v837, v808);
  v807 = 0;
  v778[0] = 0x300000008;
  v778[1] = 0xC045800000000000;
  v1739[0] = -43.0;
  sub_1001BD370(v779, v1739, 1);
  v780 = xmmword_100563C70;
  v781 = 0x4024000000000000;
  v782 = 45;
  LOBYTE(v783) = 0;
  v785 = 0;
  v786 = 0;
  v787 = 0;
  v788 = 1;
  v789 = 1;
  v790 = xmmword_100563C80;
  v791 = xmmword_100563C90;
  v792 = v59;
  v793 = 0xC059000000000000;
  v794 = xmmword_100563CA0;
  v795 = vdup_n_s32(0x3DCCCCCDu);
  v796 = xmmword_100563BE0;
  v798 = 0;
  v799 = 0;
  v797 = 0x3FD999999999999ALL;
  v800 = xmmword_100563BF0;
  v801 = 5;
  v802 = 0x4000000000000000;
  v803 = 10;
  v804 = 0x4034000000000000;
  v805 = 3;
  v806 = xmmword_100563CB0;
  sub_10029B3B8(v1778, &v807, v778);
  sub_10029FEE8(v868, v1776, 3);
  v1815 = 6;
  sub_1002A0148(v1816, v868);
  v776 = 0;
  sub_10029B2E8(v1772, &v776, &xmmword_1009F3428);
  sub_10029FEE8(v777, v1772, 1);
  v1817 = 0;
  sub_1002A0148(v1818, v777);
  sub_1002A0228(v1275, &v1801, 9);
  v1885 = 3;
  sub_1002A0428(v1886, v1275);
  v773 = 0;
  v744[0] = 0x300000008;
  v744[1] = 0xC050C00000000000;
  v1739[0] = -67.0;
  sub_1001BD370(v745, v1739, 1);
  v746 = xmmword_100563C70;
  v747 = 0x4024000000000000;
  v748 = 45;
  LOBYTE(v749) = 0;
  v751 = 0;
  v752 = 0;
  v753 = 0;
  v754 = 1;
  v755 = 1;
  v756 = xmmword_100563C80;
  v757 = xmmword_100563C90;
  v758 = v59;
  v759 = 0xC059000000000000;
  v760 = xmmword_100563CA0;
  v761 = vdup_n_s32(0x3DCCCCCDu);
  v762 = xmmword_100563BE0;
  v764 = 0;
  v765 = 0;
  v763 = 0x3FD999999999999ALL;
  v766 = xmmword_100563BF0;
  v767 = 5;
  v768 = 0x4000000000000000;
  v769 = 10;
  v770 = 0x4034000000000000;
  v771 = 3;
  v772 = xmmword_100563CB0;
  sub_10029B3B8(v1765, &v773, v744);
  v743 = 16;
  v714[0] = 0x200000003;
  v714[1] = 0xC052000000000000;
  v1739[0] = -72.0;
  sub_1001BD370(v715, v1739, 1);
  v716 = xmmword_1005690D0;
  v717 = 0x4000000000000000;
  v718 = 20;
  LOBYTE(v719) = 0;
  v721 = 0;
  v722 = 0;
  v723 = 0;
  v724 = 1;
  v725 = 1;
  v726 = xmmword_100563C80;
  v727 = xmmword_100563C90;
  v728 = v59;
  v729 = 0xC059000000000000;
  v730 = xmmword_100563CA0;
  v731 = vdup_n_s32(0x3DCCCCCDu);
  v732 = xmmword_100563BE0;
  v734 = 0;
  v735 = 0;
  v733 = 0x3FD999999999999ALL;
  v736 = xmmword_100563BF0;
  v737 = 5;
  v738 = 0x4000000000000000;
  v739 = 10;
  v740 = 0x4034000000000000;
  v741 = 3;
  v742 = xmmword_100563CB0;
  sub_10029B3B8(&v1766, &v743, v714);
  v713 = 18;
  v684[0] = 0x200000003;
  v684[1] = 0xC052000000000000;
  v1739[0] = -72.0;
  sub_1001BD370(v685, v1739, 1);
  v686 = xmmword_1005690D0;
  v687 = 0x4000000000000000;
  v688 = 20;
  LOBYTE(v689) = 0;
  v691 = 0;
  v692 = 0;
  v693 = 0;
  v694 = 1;
  v695 = 1;
  v696 = xmmword_100563C80;
  v697 = xmmword_100563C90;
  v698 = v59;
  v699 = 0xC059000000000000;
  v700 = xmmword_100563CA0;
  v701 = vdup_n_s32(0x3DCCCCCDu);
  v702 = xmmword_100563BE0;
  v704 = 0;
  v705 = 0;
  v703 = 0x3FD999999999999ALL;
  v706 = xmmword_100563BF0;
  v707 = 5;
  v708 = 0x4000000000000000;
  v709 = 10;
  v710 = 0x4034000000000000;
  v711 = 3;
  v712 = xmmword_100563CB0;
  sub_10029B3B8(&v1767, &v713, v684);
  sub_10029FEE8(v774, v1765, 3);
  v1768 = 7;
  sub_1002A0148(v1769, v774);
  v682 = 0;
  v653[0] = 0x300000008;
  v653[1] = 0xC050C00000000000;
  v1739[0] = -67.0;
  sub_1001BD370(v654, v1739, 1);
  v655 = xmmword_100563C70;
  v656 = 0x4024000000000000;
  v657 = 45;
  LOBYTE(v658) = 0;
  v660 = 0;
  v661 = 0;
  v662 = 0;
  v663 = 1;
  v664 = 1;
  v665 = xmmword_100563C80;
  v666 = xmmword_100563C90;
  v667 = v59;
  v668 = 0xC059000000000000;
  v669 = xmmword_100563CA0;
  v670 = vdup_n_s32(0x3DCCCCCDu);
  v671 = xmmword_100563BE0;
  v673 = 0;
  v674 = 0;
  v672 = 0x3FD999999999999ALL;
  v675 = xmmword_100563BF0;
  v676 = 5;
  v677 = 0x4000000000000000;
  v678 = 10;
  v679 = 0x4034000000000000;
  v680 = 3;
  v681 = xmmword_100563CB0;
  sub_10029B3B8(v1763, &v682, v653);
  v652 = 18;
  v623[0] = 0x200000003;
  v623[1] = 0xC051000000000000;
  v1739[0] = -68.0;
  sub_1001BD370(v624, v1739, 1);
  v625 = xmmword_1005690D0;
  v626 = 0x4000000000000000;
  v627 = 20;
  LOBYTE(v628) = 0;
  v630 = 0;
  v631 = 0;
  v632 = 0;
  v633 = 1;
  v634 = 1;
  v635 = xmmword_100563C80;
  v636 = xmmword_100563C90;
  v637 = v59;
  v638 = 0xC059000000000000;
  v639 = xmmword_100563CA0;
  v640 = vdup_n_s32(0x3DCCCCCDu);
  v641 = xmmword_100563BE0;
  v643 = 0;
  v644 = 0;
  v642 = 0x3FD999999999999ALL;
  v645 = xmmword_100563BF0;
  v646 = 5;
  v647 = 0x4000000000000000;
  v648 = 10;
  v649 = 0x4034000000000000;
  v650 = 3;
  v651 = xmmword_100563CB0;
  sub_10029B3B8(v1764, &v652, v623);
  sub_10029FEE8(v683, v1763, 2);
  v1770 = 6;
  sub_1002A0148(v1771, v683);
  sub_1002A0228(v775, &v1768, 2);
  v1887 = 5;
  sub_1002A0428(v1888, v775);
  v620 = 13;
  v591[0] = 0x200000003;
  v591[1] = 0xC04E000000000000;
  v1739[0] = -60.0;
  sub_1001BD370(v592, v1739, 1);
  v593 = xmmword_100563C70;
  v594 = 0x4024000000000000;
  v595 = 45;
  LOBYTE(v596) = 0;
  v598 = 0;
  v599 = 0;
  v600 = 0;
  v601 = 1;
  v602 = 1;
  v603 = xmmword_100563C80;
  v604 = xmmword_100563C90;
  v605 = v59;
  v606 = 0xC059000000000000;
  v607 = xmmword_100563CA0;
  v608 = vdup_n_s32(0x3DCCCCCDu);
  v609 = xmmword_100563BE0;
  v611 = 0;
  v612 = 0;
  v610 = 0x3FD999999999999ALL;
  v613 = xmmword_100563BF0;
  v614 = 5;
  v615 = 0x4000000000000000;
  v616 = 10;
  v617 = 0x4034000000000000;
  v618 = 3;
  v619 = xmmword_100563CB0;
  sub_10029B3B8(v1756, &v620, v591);
  sub_10029FEE8(v621, v1756, 1);
  v1761 = 7;
  sub_1002A0148(v1762, v621);
  sub_1002A0228(v622, &v1761, 1);
  v1889 = 8;
  sub_1002A0428(v1890, v622);
  v588 = 13;
  sub_10029B2E8(v1739, &v588, &qword_1009F36A8);
  v587 = 7;
  sub_10029B2E8(&v1740, &v587, &qword_1009F3568);
  v586 = 11;
  sub_10029B2E8(&v1741, &v586, &qword_1009F36A8);
  v585 = 14;
  v556[0] = 0x300000010;
  v556[1] = 0xC043800000000000;
  v1730[0] = -39.0;
  sub_1001BD370(v557, v1730, 1);
  v558 = xmmword_100563C70;
  v559 = 0x4024000000000000;
  v560 = 45;
  LOBYTE(v561) = 0;
  v563 = 0;
  v564 = 0;
  v565 = 0;
  v566 = 1;
  v567 = 1;
  v568 = xmmword_100563C80;
  v569 = xmmword_100563C90;
  v570 = v59;
  v571 = 0xC059000000000000;
  v572 = xmmword_100563CA0;
  v573 = vdup_n_s32(0x3DCCCCCDu);
  v574 = xmmword_100563BE0;
  v576 = 0;
  v577 = 0;
  v575 = 0x3FD999999999999ALL;
  v578 = xmmword_100563BF0;
  v579 = 5;
  v580 = 0x4000000000000000;
  v581 = 10;
  v582 = 0x4034000000000000;
  v583 = 3;
  v584 = xmmword_100563CB0;
  sub_10029B3B8(&v1742, &v585, v556);
  v555 = 6;
  v526[0] = 0x300000008;
  v526[1] = 0xC044000000000000;
  v1730[0] = -40.0;
  sub_1001BD370(v527, v1730, 1);
  v528 = xmmword_100563C70;
  v529 = 0x4024000000000000;
  v530 = 45;
  LOBYTE(v531) = 0;
  v533 = 0;
  v534 = 0;
  v535 = 0;
  v536 = 1;
  v537 = 1;
  v538 = xmmword_100563C80;
  v539 = xmmword_100563C90;
  v540 = v59;
  v541 = 0xC059000000000000;
  v542 = xmmword_100563CA0;
  v543 = vdup_n_s32(0x3DCCCCCDu);
  v544 = xmmword_100563BE0;
  v546 = 0;
  v547 = 0;
  v545 = 0x3FD999999999999ALL;
  v548 = xmmword_100563BF0;
  v549 = 5;
  v550 = 0x4000000000000000;
  v551 = 10;
  v552 = 0x4034000000000000;
  v553 = 3;
  v554 = xmmword_100563CB0;
  sub_10029B3B8(&v1743, &v555, v526);
  v525 = 15;
  v496[0] = 0x300000010;
  v496[1] = 0xC044000000000000;
  v1730[0] = -40.0;
  sub_1001BD370(v497, v1730, 1);
  v498 = xmmword_100563C70;
  v499 = 0x4024000000000000;
  v500 = 45;
  LOBYTE(v501) = 0;
  v503 = 0;
  v504 = 0;
  v505 = 0;
  v506 = 1;
  v507 = 1;
  v508 = xmmword_100563C80;
  v509 = xmmword_100563C90;
  v510 = v59;
  v511 = 0xC059000000000000;
  v512 = xmmword_100563CA0;
  v513 = vdup_n_s32(0x3DCCCCCDu);
  v514 = xmmword_100563BE0;
  v516 = 0;
  v517 = 0;
  v515 = 0x3FD999999999999ALL;
  v518 = xmmword_100563BF0;
  v519 = 5;
  v520 = 0x4000000000000000;
  v521 = 10;
  v522 = 0x4034000000000000;
  v523 = 3;
  v524 = xmmword_100563CB0;
  sub_10029B3B8(&v1744, &v525, v496);
  v495 = 16;
  v466[0] = 0x300000008;
  v466[1] = 0xC044000000000000;
  v1730[0] = -40.0;
  sub_1001BD370(v467, v1730, 1);
  v468 = xmmword_100563C70;
  v469 = 0x4024000000000000;
  v470 = 45;
  LOBYTE(v471) = 0;
  v473 = 0;
  v474 = 0;
  v475 = 0;
  v476 = 1;
  v477 = 1;
  v478 = xmmword_100563C80;
  v479 = xmmword_100563C90;
  v480 = v59;
  v481 = 0xC059000000000000;
  v482 = xmmword_100563CA0;
  v483 = vdup_n_s32(0x3DCCCCCDu);
  v484 = xmmword_100563BE0;
  v486 = 0;
  v487 = 0;
  v485 = 0x3FD999999999999ALL;
  v488 = xmmword_100563BF0;
  v489 = 5;
  v490 = 0x4000000000000000;
  v491 = 10;
  v492 = 0x4034000000000000;
  v493 = 3;
  v494 = xmmword_100563CB0;
  sub_10029B3B8(&v1745, &v495, v466);
  v465 = 17;
  v436[0] = 0x300000010;
  v436[1] = 0xC044000000000000;
  v1730[0] = -40.0;
  sub_1001BD370(v437, v1730, 1);
  v438 = xmmword_100563C70;
  v439 = 0x4024000000000000;
  v440 = 45;
  LOBYTE(v441) = 0;
  v443 = 0;
  v444 = 0;
  v445 = 0;
  v446 = 1;
  v447 = 1;
  v448 = xmmword_100563C80;
  v449 = xmmword_100563C90;
  v450 = v59;
  v451 = 0xC059000000000000;
  v452 = xmmword_100563CA0;
  v453 = vdup_n_s32(0x3DCCCCCDu);
  v454 = xmmword_100563BE0;
  v456 = 0;
  v457 = 0;
  v455 = 0x3FD999999999999ALL;
  v458 = xmmword_100563BF0;
  v459 = 5;
  v460 = 0x4000000000000000;
  v461 = 10;
  v462 = 0x4034000000000000;
  v463 = 3;
  v464 = xmmword_100563CB0;
  sub_10029B3B8(&v1746, &v465, v436);
  v435 = 18;
  v406[0] = 0x200000003;
  v406[1] = 0xC04B800000000000;
  v1730[0] = -55.0;
  sub_1001BD370(v407, v1730, 1);
  v408 = xmmword_1005690D0;
  v409 = 0x4000000000000000;
  v410 = 20;
  LOBYTE(v411) = 0;
  v413 = 0;
  v414 = 0;
  v415 = 0;
  v416 = 1;
  v417 = 1;
  v418 = xmmword_100563C80;
  v419 = xmmword_100563C90;
  v420 = v59;
  v421 = 0xC059000000000000;
  v422 = xmmword_100563CA0;
  v423 = vdup_n_s32(0x3DCCCCCDu);
  v424 = xmmword_100563BE0;
  v426 = 0;
  v427 = 0;
  v425 = 0x3FD999999999999ALL;
  v428 = xmmword_100563BF0;
  v429 = 5;
  v430 = 0x4000000000000000;
  v431 = 10;
  v432 = 0x4034000000000000;
  v433 = 3;
  v434 = xmmword_100563CB0;
  sub_10029B3B8(&v1747, &v435, v406);
  v405 = 19;
  sub_10029B2E8(&v1748, &v405, &qword_1009F36A8);
  v404 = 0;
  sub_10029B2E8(&v1749, &v404, &qword_1009F36A8);
  sub_10029FEE8(v589, v1739, 11);
  v1750 = 7;
  sub_1002A0148(v1751, v589);
  v402 = 13;
  sub_10029B2E8(v1730, &v402, &qword_1009F36A8);
  v401 = 7;
  v372[0] = 0x300000008;
  v372[1] = 0xC046800000000000;
  v1717[0] = -45.0;
  sub_1001BD370(v373, v1717, 1);
  v374 = xmmword_100563C70;
  v375 = 0x4024000000000000;
  v376 = 45;
  LOBYTE(v377) = 0;
  v379 = 0;
  v380 = 0;
  v381 = 0;
  v382 = 1;
  v383 = 1;
  v384 = xmmword_100563C80;
  v385 = xmmword_100563C90;
  v386 = v59;
  v387 = 0xC059000000000000;
  v388 = xmmword_100563CA0;
  v389 = vdup_n_s32(0x3DCCCCCDu);
  v390 = xmmword_100563BE0;
  v392 = 0;
  v393 = 0;
  v391 = 0x3FD999999999999ALL;
  v394 = xmmword_100563BF0;
  v395 = 5;
  v396 = 0x4000000000000000;
  v397 = 10;
  v398 = 0x4034000000000000;
  v399 = 3;
  v400 = xmmword_100563CB0;
  sub_10029B3B8(&v1731, &v401, v372);
  v371 = 11;
  sub_10029B2E8(&v1732, &v371, &qword_1009F36A8);
  v370 = 14;
  v341[0] = 0x300000008;
  v341[1] = 0xC046000000000000;
  v1717[0] = -44.0;
  sub_1001BD370(v342, v1717, 1);
  v343 = xmmword_100563C70;
  v344 = 0x4024000000000000;
  v345 = 45;
  LOBYTE(v346) = 0;
  v348 = 0;
  v349 = 0;
  v350 = 0;
  v351 = 1;
  v352 = 1;
  v353 = xmmword_100563C80;
  v354 = xmmword_100563C90;
  v355 = v59;
  v356 = 0xC059000000000000;
  v357 = xmmword_100563CA0;
  v358 = vdup_n_s32(0x3DCCCCCDu);
  v359 = xmmword_100563BE0;
  v361 = 0;
  v362 = 0;
  v360 = 0x3FD999999999999ALL;
  v363 = xmmword_100563BF0;
  v364 = 5;
  v365 = 0x4000000000000000;
  v366 = 10;
  v367 = 0x4034000000000000;
  v368 = 3;
  v369 = xmmword_100563CB0;
  sub_10029B3B8(&v1733, &v370, v341);
  v340 = 6;
  v311[0] = 0x300000008;
  v311[1] = 0xC044000000000000;
  v1717[0] = -40.0;
  sub_1001BD370(v312, v1717, 1);
  v313 = xmmword_100563C70;
  v314 = 0x4024000000000000;
  v315 = 45;
  LOBYTE(v316) = 0;
  v318 = 0;
  v319 = 0;
  v320 = 0;
  v321 = 1;
  v322 = 1;
  v323 = xmmword_100563C80;
  v324 = xmmword_100563C90;
  v325 = v59;
  v326 = 0xC059000000000000;
  v327 = xmmword_100563CA0;
  v328 = vdup_n_s32(0x3DCCCCCDu);
  v329 = xmmword_100563BE0;
  v331 = 0;
  v332 = 0;
  v330 = 0x3FD999999999999ALL;
  v333 = xmmword_100563BF0;
  v334 = 5;
  v335 = 0x4000000000000000;
  v336 = 10;
  v337 = 0x4034000000000000;
  v338 = 3;
  v339 = xmmword_100563CB0;
  sub_10029B3B8(&v1734, &v340, v311);
  v310 = 17;
  v281[0] = 0x300000008;
  v281[1] = 0xC042800000000000;
  v1717[0] = -37.0;
  sub_1001BD370(v282, v1717, 1);
  v283 = xmmword_100563C70;
  v284 = 0x4024000000000000;
  v285 = 45;
  LOBYTE(v286) = 0;
  v288 = 0;
  v289 = 0;
  v290 = 0;
  v291 = 1;
  v292 = 1;
  v293 = xmmword_100563C80;
  v294 = xmmword_100563C90;
  v295 = v59;
  v296 = 0xC059000000000000;
  v297 = xmmword_100563CA0;
  v298 = vdup_n_s32(0x3DCCCCCDu);
  v299 = xmmword_100563BE0;
  v301 = 0;
  v302 = 0;
  v300 = 0x3FD999999999999ALL;
  v303 = xmmword_100563BF0;
  v304 = 5;
  v305 = 0x4000000000000000;
  v306 = 10;
  v307 = 0x4034000000000000;
  v308 = 3;
  v309 = xmmword_100563CB0;
  sub_10029B3B8(&v1735, &v310, v281);
  v280 = 18;
  v251[0] = 0x200000003;
  v251[1] = 0xC04B000000000000;
  v1717[0] = -54.0;
  sub_1001BD370(v252, v1717, 1);
  v253 = xmmword_1005690D0;
  v254 = 0x4000000000000000;
  v255 = 20;
  LOBYTE(v256) = 0;
  v258 = 0;
  v259 = 0;
  v260 = 0;
  v261 = 1;
  v262 = 1;
  v263 = xmmword_100563C80;
  v264 = xmmword_100563C90;
  v265 = v59;
  v266 = 0xC059000000000000;
  v267 = xmmword_100563CA0;
  v268 = vdup_n_s32(0x3DCCCCCDu);
  v269 = xmmword_100563BE0;
  v271 = 0;
  v272 = 0;
  v270 = 0x3FD999999999999ALL;
  v273 = xmmword_100563BF0;
  v274 = 5;
  v275 = 0x4000000000000000;
  v276 = 10;
  v277 = 0x4034000000000000;
  v278 = 3;
  v279 = xmmword_100563CB0;
  sub_10029B3B8(&v1736, &v280, v251);
  v250 = 19;
  sub_10029B2E8(&v1737, &v250, &qword_1009F36A8);
  v249 = 0;
  sub_10029B2E8(v1738, &v249, &qword_1009F36A8);
  sub_10029FEE8(v403, v1730, 9);
  v1752 = 6;
  sub_1002A0148(v1753, v403);
  v247 = 0;
  sub_10029B2E8(v1726, &v247, &qword_1009F36A8);
  sub_10029FEE8(v248, v1726, 1);
  v1754 = 0;
  sub_1002A0148(v1755, v248);
  sub_1002A0228(v590, &v1750, 3);
  v1891 = 2;
  sub_1002A0428(v1892, v590);
  v244 = 16;
  v215[0] = 0x300000008;
  v215[1] = 0xC03D000000000000;
  v1715[0] = -29.0;
  sub_1001BD370(v216, v1715, 1);
  v217 = xmmword_100563C70;
  v218 = 0x4024000000000000;
  v219 = 45;
  LOBYTE(v220) = 0;
  v222 = 0;
  v223 = 0;
  v224 = 0;
  v225 = 1;
  v226 = 1;
  v227 = xmmword_100563C80;
  v228 = xmmword_100563C90;
  v229 = v59;
  v230 = 0xC059000000000000;
  v231 = xmmword_100563CA0;
  v232 = vdup_n_s32(0x3DCCCCCDu);
  v233 = xmmword_100563BE0;
  v235 = 0;
  v236 = 0;
  v234 = 0x3FD999999999999ALL;
  v237 = xmmword_100563BF0;
  v238 = 5;
  v239 = 0x4000000000000000;
  v240 = 10;
  v241 = 0x4034000000000000;
  v242 = 3;
  v243 = xmmword_100563CB0;
  sub_10029B3B8(v1717, &v244, v215);
  v214 = 14;
  v185[0] = 0x300000008;
  v185[1] = 0xC03D000000000000;
  v1715[0] = -29.0;
  sub_1001BD370(v186, v1715, 1);
  v187 = xmmword_100563C70;
  v188 = 0x4024000000000000;
  v189 = 45;
  LOBYTE(v190) = 0;
  v192 = 0;
  v193 = 0;
  v194 = 0;
  v195 = 1;
  v196 = 1;
  v197 = xmmword_100563C80;
  v198 = xmmword_100563C90;
  v199 = v59;
  v200 = 0xC059000000000000;
  v201 = xmmword_100563CA0;
  v202 = vdup_n_s32(0x3DCCCCCDu);
  v203 = xmmword_100563BE0;
  v205 = 0;
  v206 = 0;
  v204 = 0x3FD999999999999ALL;
  v207 = xmmword_100563BF0;
  v208 = 5;
  v209 = 0x4000000000000000;
  v210 = 10;
  v211 = 0x4034000000000000;
  v212 = 3;
  v213 = xmmword_100563CB0;
  sub_10029B3B8(&v1718, &v214, v185);
  v184 = 0;
  v155[0] = 0x300000008;
  v155[1] = 0xC03D000000000000;
  v1715[0] = -29.0;
  sub_1001BD370(v156, v1715, 1);
  v157 = xmmword_100563C70;
  v158 = 0x4024000000000000;
  v159 = 45;
  LOBYTE(v160) = 0;
  v162 = 0;
  v163 = 0;
  v164 = 0;
  v165 = 1;
  v166 = 1;
  v167 = xmmword_100563C80;
  v168 = xmmword_100563C90;
  v169 = v59;
  v170 = 0xC059000000000000;
  v171 = xmmword_100563CA0;
  v172 = vdup_n_s32(0x3DCCCCCDu);
  v173 = xmmword_100563BE0;
  v175 = 0;
  v176 = 0;
  v174 = 0x3FD999999999999ALL;
  v177 = xmmword_100563BF0;
  v178 = 5;
  v179 = 0x4000000000000000;
  v180 = 10;
  v181 = 0x4034000000000000;
  v182 = 3;
  v183 = xmmword_100563CB0;
  sub_10029B3B8(&v1719, &v184, v155);
  sub_10029FEE8(v245, v1717, 3);
  v1720 = 7;
  sub_1002A0148(v1721, v245);
  v153 = 14;
  v124[0] = 0x300000008;
  v124[1] = 0xC03D000000000000;
  v1711[0] = -29.0;
  sub_1001BD370(v125, v1711, 1);
  v126 = xmmword_100563C70;
  v127 = 0x4024000000000000;
  v128 = 45;
  LOBYTE(v129) = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v134 = 1;
  v135 = 1;
  v136 = xmmword_100563C80;
  v137 = xmmword_100563C90;
  v138 = v59;
  v139 = 0xC059000000000000;
  v140 = xmmword_100563CA0;
  v141 = vdup_n_s32(0x3DCCCCCDu);
  v142 = xmmword_100563BE0;
  v144 = 0;
  v145 = 0;
  v143 = 0x3FD999999999999ALL;
  v146 = xmmword_100563BF0;
  v147 = 5;
  v148 = 0x4000000000000000;
  v149 = 10;
  v150 = 0x4034000000000000;
  v151 = 3;
  v152 = xmmword_100563CB0;
  sub_10029B3B8(v1715, &v153, v124);
  v123 = 0;
  v94[0] = 0x300000008;
  v94[1] = 0xC03D000000000000;
  v1711[0] = -29.0;
  sub_1001BD370(v95, v1711, 1);
  v96 = xmmword_100563C70;
  v97 = 0x4024000000000000;
  v98 = 45;
  LOBYTE(v99) = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 1;
  v105 = 1;
  v106 = xmmword_100563C80;
  v107 = xmmword_100563C90;
  v108 = v59;
  v109 = 0xC059000000000000;
  v110 = xmmword_100563CA0;
  v111 = vdup_n_s32(0x3DCCCCCDu);
  v112 = xmmword_100563BE0;
  v114 = 0;
  v115 = 0;
  v113 = 0x3FD999999999999ALL;
  v116 = xmmword_100563BF0;
  v117 = 5;
  v118 = 0x4000000000000000;
  v119 = 10;
  v120 = 0x4034000000000000;
  v121 = 3;
  v122 = xmmword_100563CB0;
  sub_10029B3B8(v1716, &v123, v94);
  sub_10029FEE8(v154, v1715, 2);
  v1722 = 6;
  sub_1002A0148(v1723, v154);
  v92 = 0;
  v63[0] = 0x300000008;
  v63[1] = 0xC03D000000000000;
  v1705[0] = -29.0;
  sub_1001BD370(v64, v1705, 1);
  v65 = xmmword_100563C70;
  v66 = 0x4024000000000000;
  v67 = 45;
  LOBYTE(v68) = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 1;
  v74 = 1;
  v75 = xmmword_100563C80;
  v76 = xmmword_100563C90;
  v77 = v59;
  v78 = 0xC059000000000000;
  v79 = xmmword_100563CA0;
  v80 = vdup_n_s32(0x3DCCCCCDu);
  v81 = xmmword_100563BE0;
  v83 = 0;
  v84 = 0;
  v82 = 0x3FD999999999999ALL;
  v85 = xmmword_100563BF0;
  v86 = 5;
  v87 = 0x4000000000000000;
  v88 = 10;
  v89 = 0x4034000000000000;
  v90 = 3;
  v91 = xmmword_100563CB0;
  sub_10029B3B8(v1711, &v92, v63);
  sub_10029FEE8(v93, v1711, 1);
  v1724 = 0;
  sub_1002A0148(v1725, v93);
  sub_1002A0228(v246, &v1720, 3);
  v1893 = 7;
  sub_1002A0428(v1894, v246);
  v60 = 0;
  sub_10029B2E8(v1705, &v60, &xmmword_1009F3428);
  sub_10029FEE8(v61, v1705, 1);
  v1709 = 0;
  sub_1002A0148(v1710, v61);
  sub_1002A0228(v62, &v1709, 1);
  v1895 = 1;
  sub_1002A0428(v1896, v62);
  sub_1002A0508(&qword_1009FA018, &v1883, 7);
  for (i = 0; i != -28; i -= 4)
  {
    sub_10029FDD8(&v1896[i], v1896[i + 1]);
  }

  sub_10029FDD8(v62, v62[1]);
  sub_10029FE38(v1710, v1710[1]);
  sub_10029FE38(v61, v61[1]);
  if (v1708 == 1 && v1707 < 0)
  {
    operator delete(v1706[7]);
  }

  sub_10002074C(v1706, v1706[1]);
  sub_10029FDD8(v246, v246[1]);
  for (j = 0; j != -12; j -= 4)
  {
    sub_10029FE38(&v1725[j], v1725[j + 1]);
  }

  sub_10029FE38(v93, v93[1]);
  if (v1714[0] == 1 && v1713 < 0)
  {
    operator delete(v1712[7]);
  }

  sub_10002074C(v1712, v1712[1]);
  if (v70 == 1 && v69 < 0)
  {
    operator delete(v68);
  }

  sub_10002074C(v64, v64[1]);
  sub_10029FE38(v154, v154[1]);
  v8 = 82;
  do
  {
    v9 = &v1715[v8];
    if (v1714[v8 * 8] == 1 && *(v9 - 225) < 0)
    {
      operator delete(*(v9 - 31));
    }

    sub_10002074C((v9 - 38), *(v9 - 37));
    v8 -= 41;
  }

  while (v8 * 8);
  if (v101 == 1 && v100 < 0)
  {
    operator delete(v99);
  }

  sub_10002074C(v95, v95[1]);
  if (v131 == 1 && v130 < 0)
  {
    operator delete(v129);
  }

  sub_10002074C(v125, v125[1]);
  sub_10029FE38(v245, v245[1]);
  v10 = 123;
  do
  {
    v11 = &v1717[v10];
    if (v1716[v10 * 8 + 104] == 1 && *(v11 - 225) < 0)
    {
      operator delete(*(v11 - 31));
    }

    sub_10002074C((v11 - 38), *(v11 - 37));
    v10 -= 41;
  }

  while (v10 * 8);
  if (v162 == 1 && v161 < 0)
  {
    operator delete(v160);
  }

  sub_10002074C(v156, v156[1]);
  if (v192 == 1 && v191 < 0)
  {
    operator delete(v190);
  }

  sub_10002074C(v186, v186[1]);
  if (v222 == 1 && v221 < 0)
  {
    operator delete(v220);
  }

  sub_10002074C(v216, v216[1]);
  sub_10029FDD8(v590, v590[1]);
  for (k = 0; k != -12; k -= 4)
  {
    sub_10029FE38(&v1755[k], v1755[k + 1]);
  }

  sub_10029FE38(v248, v248[1]);
  if (v1729[0] == 1 && v1728 < 0)
  {
    operator delete(v1727[7]);
  }

  sub_10002074C(v1727, v1727[1]);
  sub_10029FE38(v403, v403[1]);
  v13 = 369;
  do
  {
    v14 = &v1730[v13];
    if (v1729[v13 * 8] == 1 && *(v14 - 225) < 0)
    {
      operator delete(*(v14 - 31));
    }

    sub_10002074C((v14 - 38), *(v14 - 37));
    v13 -= 41;
  }

  while (v13 * 8);
  if (v258 == 1 && v257 < 0)
  {
    operator delete(v256);
  }

  sub_10002074C(v252, v252[1]);
  if (v288 == 1 && v287 < 0)
  {
    operator delete(v286);
  }

  sub_10002074C(v282, v282[1]);
  if (v318 == 1 && v317 < 0)
  {
    operator delete(v316);
  }

  sub_10002074C(v312, v312[1]);
  if (v348 == 1 && v347 < 0)
  {
    operator delete(v346);
  }

  sub_10002074C(v342, v342[1]);
  if (v379 == 1 && v378 < 0)
  {
    operator delete(v377);
  }

  sub_10002074C(v373, v373[1]);
  sub_10029FE38(v589, v589[1]);
  v15 = 451;
  do
  {
    v16 = &v1739[v15];
    if (v1738[v15 * 8 + 104] == 1 && *(v16 - 225) < 0)
    {
      operator delete(*(v16 - 31));
    }

    sub_10002074C((v16 - 38), *(v16 - 37));
    v15 -= 41;
  }

  while (v15 * 8);
  if (v413 == 1 && v412 < 0)
  {
    operator delete(v411);
  }

  sub_10002074C(v407, v407[1]);
  if (v443 == 1 && v442 < 0)
  {
    operator delete(v441);
  }

  sub_10002074C(v437, v437[1]);
  if (v473 == 1 && v472 < 0)
  {
    operator delete(v471);
  }

  sub_10002074C(v467, v467[1]);
  if (v503 == 1 && v502 < 0)
  {
    operator delete(v501);
  }

  sub_10002074C(v497, v497[1]);
  if (v533 == 1 && v532 < 0)
  {
    operator delete(v531);
  }

  sub_10002074C(v527, v527[1]);
  if (v563 == 1 && v562 < 0)
  {
    operator delete(v561);
  }

  sub_10002074C(v557, v557[1]);
  sub_10029FDD8(v622, v622[1]);
  sub_10029FE38(v1762, v1762[1]);
  sub_10029FE38(v621, v621[1]);
  if (v1759 == 1 && v1758 < 0)
  {
    operator delete(v1757[7]);
  }

  sub_10002074C(v1757, v1757[1]);
  if (v598 == 1 && v597 < 0)
  {
    operator delete(v596);
  }

  sub_10002074C(v592, v592[1]);
  sub_10029FDD8(v775, v775[1]);
  for (m = 0; m != -8; m -= 4)
  {
    sub_10029FE38(&v1771[m], v1771[m + 1]);
  }

  sub_10029FE38(v683, v683[1]);
  v18 = 164;
  do
  {
    v19 = &v1763[v18];
    if (v1760[v18 * 4] == 1 && *(v19 - 225) < 0)
    {
      operator delete(*(v19 - 31));
    }

    sub_10002074C((v19 - 76), *(v19 - 37));
    v18 -= 82;
  }

  while (v18 * 4);
  if (v630 == 1 && v629 < 0)
  {
    operator delete(v628);
  }

  sub_10002074C(v624, v624[1]);
  if (v660 == 1 && v659 < 0)
  {
    operator delete(v658);
  }

  sub_10002074C(v654, v654[1]);
  sub_10029FE38(v774, v774[1]);
  v20 = 246;
  do
  {
    v21 = &v1765[v20];
    if (v1764[v20 * 4 + 104] == 1 && *(v21 - 225) < 0)
    {
      operator delete(*(v21 - 31));
    }

    sub_10002074C((v21 - 76), *(v21 - 37));
    v20 -= 82;
  }

  while (v20 * 4);
  if (v691 == 1 && v690 < 0)
  {
    operator delete(v689);
  }

  sub_10002074C(v685, v685[1]);
  if (v721 == 1 && v720 < 0)
  {
    operator delete(v719);
  }

  sub_10002074C(v715, v715[1]);
  if (v751 == 1 && v750 < 0)
  {
    operator delete(v749);
  }

  sub_10002074C(v745, v745[1]);
  sub_10029FDD8(v1275, v1275[1]);
  v22 = 288;
  do
  {
    sub_10029FE38(&v1800[v22 + 304], *&v1800[v22 + 312]);
    v22 -= 32;
  }

  while (v22);
  sub_10029FE38(v777, v777[1]);
  if (v1775[0] == 1 && v1774 < 0)
  {
    operator delete(v1773[7]);
  }

  sub_10002074C(v1773, v1773[1]);
  sub_10029FE38(v868, v868[1]);
  v23 = 246;
  do
  {
    v24 = &v1776[v23];
    if (v1775[v23 * 4] == 1 && *(v24 - 225) < 0)
    {
      operator delete(*(v24 - 31));
    }

    sub_10002074C((v24 - 76), *(v24 - 37));
    v23 -= 82;
  }

  while (v23 * 4);
  if (v785 == 1 && v784 < 0)
  {
    operator delete(v783);
  }

  sub_10002074C(v779, v779[1]);
  if (v815 == 1 && v814 < 0)
  {
    operator delete(v813);
  }

  sub_10002074C(v809, v809[1]);
  if (v845 == 1 && v844 < 0)
  {
    operator delete(v843);
  }

  sub_10002074C(v839, v839[1]);
  sub_10029FE38(v1111, v1111[1]);
  v25 = 820;
  do
  {
    v26 = &v1779[v25];
    if (v1778[v25 * 4 + 104] == 1 && *(v26 - 225) < 0)
    {
      operator delete(*(v26 - 31));
    }

    sub_10002074C((v26 - 76), *(v26 - 37));
    v25 -= 82;
  }

  while (v25 * 4);
  if (v877 == 1 && v876 < 0)
  {
    operator delete(v875);
  }

  sub_10002074C(v871, v871[1]);
  if (v907 == 1 && v906 < 0)
  {
    operator delete(v905);
  }

  sub_10002074C(v901, v901[1]);
  if (v937 == 1 && v936 < 0)
  {
    operator delete(v935);
  }

  sub_10002074C(v931, v931[1]);
  if (v968 == 1 && v967 < 0)
  {
    operator delete(v966);
  }

  sub_10002074C(v962, v962[1]);
  if (v998 == 1 && v997 < 0)
  {
    operator delete(v996);
  }

  sub_10002074C(v992, v992[1]);
  if (v1028 == 1 && v1027 < 0)
  {
    operator delete(v1026);
  }

  sub_10002074C(v1022, v1022[1]);
  if (v1058 == 1 && v1057 < 0)
  {
    operator delete(v1056);
  }

  sub_10002074C(v1052, v1052[1]);
  if (v1088 == 1 && v1087 < 0)
  {
    operator delete(v1086);
  }

  sub_10002074C(v1082, v1082[1]);
  sub_10029FE38(v1114, v1114[1]);
  v27 = 164;
  do
  {
    v28 = &v1789[v27];
    if (v1788[v27 * 4 + 104] == 1 && *(v28 - 225) < 0)
    {
      operator delete(*(v28 - 31));
    }

    sub_10002074C((v28 - 76), *(v28 - 37));
    v27 -= 82;
  }

  while (v27 * 4);
  sub_10029FE38(v1146, v1146[1]);
  v29 = 164;
  do
  {
    v30 = &v1791[v29];
    if (v1790[v29 * 4 + 104] == 1 && *(v30 - 225) < 0)
    {
      operator delete(*(v30 - 31));
    }

    sub_10002074C((v30 - 76), *(v30 - 37));
    v29 -= 82;
  }

  while (v29 * 4);
  if (v1123 == 1 && v1122 < 0)
  {
    operator delete(v1121);
  }

  sub_10002074C(v1117, v1117[1]);
  sub_10029FE38(v1178, v1178[1]);
  v31 = 164;
  do
  {
    v32 = &v1793[v31];
    if (v1792[v31 * 4 + 104] == 1 && *(v32 - 225) < 0)
    {
      operator delete(*(v32 - 31));
    }

    sub_10002074C((v32 - 76), *(v32 - 37));
    v31 -= 82;
  }

  while (v31 * 4);
  if (v1155 == 1 && v1154 < 0)
  {
    operator delete(v1153);
  }

  sub_10002074C(v1149, v1149[1]);
  sub_10029FE38(v1210, v1210[1]);
  v33 = 164;
  do
  {
    v34 = &v1795[v33];
    if (v1794[v33 * 4 + 104] == 1 && *(v34 - 225) < 0)
    {
      operator delete(*(v34 - 31));
    }

    sub_10002074C((v34 - 76), *(v34 - 37));
    v33 -= 82;
  }

  while (v33 * 4);
  if (v1187 == 1 && v1186 < 0)
  {
    operator delete(v1185);
  }

  sub_10002074C(v1181, v1181[1]);
  sub_10029FE38(v1242, v1242[1]);
  v35 = 164;
  do
  {
    v36 = &v1797[v35];
    if (v1796[v35 * 4 + 104] == 1 && *(v36 - 225) < 0)
    {
      operator delete(*(v36 - 31));
    }

    sub_10002074C((v36 - 76), *(v36 - 37));
    v35 -= 82;
  }

  while (v35 * 4);
  if (v1219 == 1 && v1218 < 0)
  {
    operator delete(v1217);
  }

  sub_10002074C(v1213, v1213[1]);
  sub_10029FE38(v1274, v1274[1]);
  v37 = 164;
  do
  {
    v38 = &v1799[v37];
    if (v1798[v37 * 4 + 104] == 1 && *(v38 - 225) < 0)
    {
      operator delete(*(v38 - 31));
    }

    sub_10002074C((v38 - 76), *(v38 - 37));
    v37 -= 82;
  }

  while (v37 * 4);
  if (v1251 == 1 && v1250 < 0)
  {
    operator delete(v1249);
  }

  sub_10002074C(v1245, v1245[1]);
  sub_10029FDD8(v1704, v1704[1]);
  v39 = 320;
  do
  {
    sub_10029FE38(&v1862[v39 + 304], *&v1862[v39 + 312]);
    v39 -= 32;
  }

  while (v39);
  sub_10029FE38(v1306, v1306[1]);
  if (v1822[0] == 1 && v1821 < 0)
  {
    operator delete(v1820[7]);
  }

  sub_10002074C(v1820, v1820[1]);
  if (v1283 == 1 && v1282 < 0)
  {
    operator delete(v1281);
  }

  sub_10002074C(v1277, v1277[1]);
  sub_10029FE38(v1372, v1372[1]);
  v40 = 574;
  do
  {
    v41 = &v1823[v40];
    if (v1822[v40 * 4] == 1 && *(v41 - 225) < 0)
    {
      operator delete(*(v41 - 31));
    }

    sub_10002074C((v41 - 76), *(v41 - 37));
    v40 -= 82;
  }

  while (v40 * 4);
  if (v1315 == 1 && v1314 < 0)
  {
    operator delete(v1313);
  }

  sub_10002074C(v1309, v1309[1]);
  if (v1345 == 1 && v1344 < 0)
  {
    operator delete(v1343);
  }

  sub_10002074C(v1339, v1339[1]);
  sub_10029FE38(v1557, v1557[1]);
  v42 = 820;
  do
  {
    v43 = &v1830[v42];
    if (v1829[v42 * 4 + 104] == 1 && *(v43 - 225) < 0)
    {
      operator delete(*(v43 - 31));
    }

    sub_10002074C((v43 - 76), *(v43 - 37));
    v42 -= 82;
  }

  while (v42 * 4);
  if (v1380 == 1 && v1379 < 0)
  {
    operator delete(v1378);
  }

  sub_10002074C(v1374, v1374[1]);
  if (v1410 == 1 && v1409 < 0)
  {
    operator delete(v1408);
  }

  sub_10002074C(v1404, v1404[1]);
  if (v1442 == 1 && v1441 < 0)
  {
    operator delete(v1440);
  }

  sub_10002074C(v1436, v1436[1]);
  if (v1473 == 1 && v1472 < 0)
  {
    operator delete(v1471);
  }

  sub_10002074C(v1467, v1467[1]);
  if (v1503 == 1 && v1502 < 0)
  {
    operator delete(v1501);
  }

  sub_10002074C(v1497, v1497[1]);
  if (v1533 == 1 && v1532 < 0)
  {
    operator delete(v1531);
  }

  sub_10002074C(v1527, v1527[1]);
  sub_10029FE38(v1561, v1561[1]);
  v44 = 246;
  do
  {
    v45 = &v1840[v44];
    if (v1839[v44 * 4 + 104] == 1 && *(v45 - 225) < 0)
    {
      operator delete(*(v45 - 31));
    }

    sub_10002074C((v45 - 76), *(v45 - 37));
    v44 -= 82;
  }

  while (v44 * 4);
  sub_10029FE38(v1565, v1565[1]);
  v46 = 246;
  do
  {
    v47 = &v1843[v46];
    if (v1842[v46 * 4 + 104] == 1 && *(v47 - 225) < 0)
    {
      operator delete(*(v47 - 31));
    }

    sub_10002074C((v47 - 76), *(v47 - 37));
    v46 -= 82;
  }

  while (v46 * 4);
  sub_10029FE38(v1627, v1627[1]);
  v48 = 246;
  do
  {
    v49 = &v1846[v48];
    if (v1845[v48 * 4 + 104] == 1 && *(v49 - 225) < 0)
    {
      operator delete(*(v49 - 31));
    }

    sub_10002074C((v49 - 76), *(v49 - 37));
    v48 -= 82;
  }

  while (v48 * 4);
  if (v1573 == 1 && v1572 < 0)
  {
    operator delete(v1571);
  }

  sub_10002074C(v1567, v1567[1]);
  if (v1604 == 1 && v1603 < 0)
  {
    operator delete(v1602);
  }

  sub_10002074C(v1598, v1598[1]);
  sub_10029FE38(v1690, v1690[1]);
  v50 = 328;
  do
  {
    v51 = &v1849[v50];
    if (v1848[v50 * 4 + 104] == 1 && *(v51 - 225) < 0)
    {
      operator delete(*(v51 - 31));
    }

    sub_10002074C((v51 - 76), *(v51 - 37));
    v50 -= 82;
  }

  while (v50 * 4);
  if (v1635 == 1 && v1634 < 0)
  {
    operator delete(v1633);
  }

  sub_10002074C(v1629, v1629[1]);
  if (v1666 == 1 && v1665 < 0)
  {
    operator delete(v1664);
  }

  sub_10002074C(v1660, v1660[1]);
  sub_10029FE38(v1695, v1695[1]);
  v52 = 328;
  do
  {
    v53 = &v1853[v52];
    if (v1852[v52 * 4 + 104] == 1 && *(v53 - 225) < 0)
    {
      operator delete(*(v53 - 31));
    }

    sub_10002074C((v53 - 76), *(v53 - 37));
    v52 -= 82;
  }

  while (v52 * 4);
  sub_10029FE38(v1699, v1699[1]);
  v54 = 246;
  do
  {
    v55 = &v1857[v54];
    if (v1856[v54 * 4 + 104] == 1 && *(v55 - 225) < 0)
    {
      operator delete(*(v55 - 31));
    }

    sub_10002074C((v55 - 76), *(v55 - 37));
    v54 -= 82;
  }

  while (v54 * 4);
  sub_10029FE38(v1703, v1703[1]);
  v56 = 246;
  do
  {
    v57 = &v1860[v56];
    if (v1859[v56 * 4 + 104] == 1 && *(v57 - 225) < 0)
    {
      operator delete(*(v57 - 31));
    }

    sub_10002074C((v57 - 76), *(v57 - 37));
    v56 -= 82;
  }

  while (v56 * 4);
  return __cxa_atexit(sub_10029B4D4, &qword_1009FA018, &_mh_execute_header);
}

void sub_1002A8BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _Unwind_Exception *exception_objecta, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, char a44)
{
  v53 = v47 + 200;
  v54 = -224;
  do
  {
    sub_10029FDD8(v53, *(v53 + 8));
    v53 -= 32;
    v54 += 32;
  }

  while (v54);
  sub_10029FDD8(&a40, a41);
  sub_10029FE38(&STACK[0x4978], STACK[0x4980]);
  sub_10029FE38(&a37, a38);
  sub_10029B488(&STACK[0x4828]);
  sub_10029FDD8(&STACK[0x920], STACK[0x928]);
  v55 = &STACK[0x5188];
  v56 = -96;
  do
  {
    sub_10029FE38(v55, v55[1]);
    v55 -= 4;
    v56 += 32;
  }

  while (v56);
  sub_10029FE38(&STACK[0x260], STACK[0x268]);
  sub_10029B488(&STACK[0x4990]);
  sub_10029B230(&a44);
  sub_10029FE38(&STACK[0x510], STACK[0x518]);
  v57 = &STACK[0x4C20];
  v58 = -656;
  do
  {
    v57 = (sub_10029B488(v57) - 328);
    v58 += 328;
  }

  while (v58);
  sub_10029B230(&STACK[0x280]);
  sub_10029B230(&STACK[0x3C8]);
  sub_10029FE38(&STACK[0x908], STACK[0x910]);
  v59 = -984;
  v60 = v50;
  do
  {
    v60 = sub_10029B488(v60) - 328;
    v59 += 328;
  }

  while (v59);
  sub_10029B230(&STACK[0x530]);
  sub_10029B230(&STACK[0x678]);
  sub_10029B230(&STACK[0x7C0]);
  sub_10029FDD8(&STACK[0x17C8], STACK[0x17D0]);
  v61 = &STACK[0x6CD0];
  v62 = -96;
  do
  {
    sub_10029FE38(v61, v61[1]);
    v61 -= 4;
    v62 += 32;
  }

  while (v62);
  sub_10029FE38(&STACK[0x940], STACK[0x948]);
  sub_10029B488(&STACK[0x51A0]);
  sub_10029FE38(&STACK[0xFD0], STACK[0xFD8]);
  v63 = -2952;
  v64 = v51;
  do
  {
    v64 = sub_10029B488(v64) - 328;
    v63 += 328;
  }

  while (v63);
  sub_10029B230(&STACK[0x968]);
  sub_10029B230(&STACK[0xAB0]);
  sub_10029B230(&STACK[0xBF8]);
  sub_10029B230(&STACK[0xD40]);
  sub_10029B230(&STACK[0xE88]);
  sub_10029FE38(&STACK[0x17B0], STACK[0x17B8]);
  v65 = -3608;
  v66 = v52;
  do
  {
    v66 = sub_10029B488(v66) - 328;
    v65 += 328;
  }

  while (v65);
  sub_10029B230(&STACK[0xFF8]);
  sub_10029B230(&STACK[0x1140]);
  sub_10029B230(&STACK[0x1288]);
  sub_10029B230(&STACK[0x13D0]);
  sub_10029B230(&STACK[0x1518]);
  sub_10029B230(&STACK[0x1660]);
  sub_10029FDD8(&STACK[0x1948], STACK[0x1950]);
  sub_10029FE38(&STACK[0x6E38], STACK[0x6E40]);
  sub_10029FE38(&STACK[0x1930], STACK[0x1938]);
  sub_10029B488(&STACK[0x6CE8]);
  sub_10029B230(&STACK[0x17E8]);
  sub_10029FDD8(&STACK[0x2008], STACK[0x2010]);
  v67 = &STACK[0x74E0];
  v68 = -64;
  do
  {
    sub_10029FE38(v67, v67[1]);
    v67 -= 4;
    v68 += 32;
  }

  while (v68);
  sub_10029FE38(&STACK[0x1BF8], STACK[0x1C00]);
  v69 = &STACK[0x6F98];
  v70 = -656;
  do
  {
    v69 = (sub_10029B488(v69) - 328);
    v70 += 328;
  }

  while (v70);
  sub_10029B230(&STACK[0x1968]);
  sub_10029B230(&STACK[0x1AB0]);
  sub_10029FE38(&STACK[0x1FF0], STACK[0x1FF8]);
  v71 = -984;
  do
  {
    a10 = sub_10029B488(a10) - 328;
    v71 += 328;
  }

  while (v71);
  sub_10029B230(&STACK[0x1C18]);
  sub_10029B230(&STACK[0x1D60]);
  sub_10029B230(&STACK[0x1EA8]);
  sub_10029FDD8(&STACK[0x35C8], STACK[0x35D0]);
  v73 = &STACK[0x9750];
  v74 = -288;
  do
  {
    sub_10029FE38(v73, v73[1]);
    v73 -= 4;
    v74 += 32;
  }

  while (v74);
  sub_10029FE38(&STACK[0x2028], STACK[0x2030]);
  sub_10029B488(&STACK[0x74F8]);
  sub_10029FE38(&STACK[0x2420], STACK[0x2428]);
  v75 = -984;
  do
  {
    a11 = sub_10029B488(a11) - 328;
    v75 += 328;
  }

  while (v75);
  sub_10029B230(&STACK[0x2048]);
  sub_10029B230(&STACK[0x2190]);
  sub_10029B230(&STACK[0x22D8]);
  sub_10029FE38(&STACK[0x2E80], STACK[0x2E88]);
  v77 = -3280;
  do
  {
    a13 = sub_10029B488(a13) - 328;
    v77 += 328;
  }

  while (v77);
  sub_10029B230(&STACK[0x2440]);
  sub_10029B230(&STACK[0x2588]);
  sub_10029B230(&STACK[0x26D0]);
  sub_10029B230(&STACK[0x2818]);
  sub_10029B230(&STACK[0x2960]);
  sub_10029B230(&STACK[0x2AA8]);
  sub_10029B230(&STACK[0x2BF0]);
  sub_10029B230(&STACK[0x2D38]);
  sub_10029FE38(&STACK[0x2EA8], STACK[0x2EB0]);
  v79 = &STACK[0x8830];
  v80 = -656;
  do
  {
    v79 = (sub_10029B488(v79) - 328);
    v80 += 328;
  }

  while (v80);
  sub_10029FE38(&STACK[0x3010], STACK[0x3018]);
  v81 = &STACK[0x8AC0];
  v82 = -656;
  do
  {
    v81 = (sub_10029B488(v81) - 328);
    v82 += 328;
  }

  while (v82);
  sub_10029B230(&STACK[0x2EC8]);
  sub_10029FE38(&STACK[0x3178], STACK[0x3180]);
  v83 = &STACK[0x8D50];
  v84 = -656;
  do
  {
    v83 = (sub_10029B488(v83) - 328);
    v84 += 328;
  }

  while (v84);
  sub_10029B230(&STACK[0x3030]);
  sub_10029FE38(&STACK[0x32E0], STACK[0x32E8]);
  v85 = &STACK[0x8FE0];
  v86 = -656;
  do
  {
    v85 = (sub_10029B488(v85) - 328);
    v86 += 328;
  }

  while (v86);
  sub_10029B230(&STACK[0x3198]);
  sub_10029FE38(&STACK[0x3448], STACK[0x3450]);
  v87 = &STACK[0x9270];
  v88 = -656;
  do
  {
    v87 = (sub_10029B488(v87) - 328);
    v88 += 328;
  }

  while (v88);
  sub_10029B230(&STACK[0x3300]);
  sub_10029FE38(&STACK[0x35B0], STACK[0x35B8]);
  for (i = 328; i != -328; i -= 328)
  {
    sub_10029B488(&STACK[0x93B8] + i);
  }

  sub_10029B230(&STACK[0x3468]);
  sub_10029FDD8(&STACK[0x4810], STACK[0x4818]);
  v90 = &STACK[0xCD18];
  v91 = -320;
  do
  {
    sub_10029FE38(v90, v90[1]);
    v90 -= 4;
    v91 += 32;
  }

  while (v91);
  sub_10029FE38(&STACK[0x3730], STACK[0x3738]);
  sub_10029B488(&STACK[0x9768]);
  sub_10029B230(&STACK[0x35E8]);
  sub_10029FE38(&STACK[0x39F0], STACK[0x39F8]);
  v92 = -2296;
  do
  {
    a14 = sub_10029B488(a14) - 328;
    v92 += 328;
  }

  while (v92);
  sub_10029B230(&STACK[0x3750]);
  sub_10029B230(&STACK[0x3898]);
  sub_10029FE38(&STACK[0x41C8], STACK[0x41D0]);
  v94 = -3280;
  do
  {
    a15 = sub_10029B488(a15) - 328;
    v94 += 328;
  }

  while (v94);
  sub_10029B230(&STACK[0x3A10]);
  sub_10029B230(&STACK[0x3B58]);
  sub_10029B230(&STACK[0x3CA8]);
  sub_10029B230(&STACK[0x3DF0]);
  sub_10029B230(&STACK[0x3F38]);
  sub_10029B230(&STACK[0x4080]);
  sub_10029FE38(&STACK[0x41F0], STACK[0x41F8]);
  v96 = -984;
  do
  {
    sub_10029B488(v49);
    v49 -= 328;
    v96 += 328;
  }

  while (v96);
  sub_10029FE38(&STACK[0x4218], STACK[0x4220]);
  v97 = -984;
  do
  {
    sub_10029B488(v48);
    v48 -= 328;
    v97 += 328;
  }

  while (v97);
  sub_10029FE38(&STACK[0x44C8], STACK[0x44D0]);
  v98 = -984;
  do
  {
    a12 = sub_10029B488(a12) - 328;
    v98 += 328;
  }

  while (v98);
  sub_10029B230(&STACK[0x4238]);
  sub_10029B230(&STACK[0x4380]);
  sub_10029FE38(&STACK[0x4778], STACK[0x4780]);
  v100 = -1312;
  v101 = v46;
  do
  {
    v101 = sub_10029B488(v101) - 328;
    v100 += 328;
  }

  while (v100);
  sub_10029B230(&STACK[0x44E8]);
  sub_10029B230(&STACK[0x4630]);
  sub_10029FE38(&STACK[0x47A8], STACK[0x47B0]);
  v102 = -1312;
  do
  {
    sub_10029B488(v45);
    v45 -= 328;
    v102 += 328;
  }

  while (v102);
  sub_10029FE38(&STACK[0x47D0], STACK[0x47D8]);
  v103 = -984;
  do
  {
    sub_10029B488(v44);
    v44 -= 328;
    v103 += 328;
  }

  while (v103);
  sub_10029FE38(&STACK[0x47F8], STACK[0x4800]);
  for (j = 656; j != -328; j -= 328)
  {
    sub_10029B488(&STACK[0xC818] + j);
  }

  _Unwind_Resume(a1);
}

void sub_1002AA268()
{
  sub_10029B230(&STACK[0x2EC8]);
  sub_10029B488(&STACK[0x8978]);
  JUMPOUT(0x1002A9580);
}

void sub_1002AA2E8()
{
  sub_10029B230(&STACK[0x3030]);
  sub_10029B488(&STACK[0x8C08]);
  JUMPOUT(0x1002A95C4);
}

void sub_1002AA368()
{
  sub_10029B230(&STACK[0x3198]);
  sub_10029B488(&STACK[0x8E98]);
  JUMPOUT(0x1002A9608);
}

void sub_1002AA3F4()
{
  sub_10029B230(&STACK[0x3300]);
  sub_10029B488(&STACK[0x9128]);
  JUMPOUT(0x1002A964CLL);
}

void sub_1002AA490()
{
  sub_10029B230(&STACK[0x3468]);
  sub_10029B488(&STACK[0x93B8]);
  JUMPOUT(0x1002A96CCLL);
}

void sub_1002AA858()
{
  do
  {
    v0 -= 41;
    sub_10029B488(v0);
  }

  while (v0 != &STACK[0xAE78]);
  JUMPOUT(0x1002A98B0);
}

void sub_1002AA8E0()
{
  do
  {
    v0 -= 41;
    sub_10029B488(v0);
  }

  while (v0 != &STACK[0xB250]);
  JUMPOUT(0x1002A98E4);
}

void sub_1002AAA88()
{
  do
  {
    v0 -= 41;
    sub_10029B488(v0);
  }

  while (v0 != &STACK[0xBF20]);
  JUMPOUT(0x1002A99F4);
}

void sub_1002AAAF4()
{
  do
  {
    v0 -= 41;
    sub_10029B488(v0);
  }

  while (v0 != &STACK[0xC440]);
  JUMPOUT(0x1002A9A24);
}

void sub_1002AAB74(_Unwind_Exception *a1)
{
  do
  {
    v1 -= 41;
    sub_10029B488(v1);
  }

  while (v1 != &STACK[0xC818]);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AABA4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v1097 = 14;
  v1068[0] = 0x300000010;
  v1068[1] = 0xC042000000000000;
  v1174[0] = 0xC042000000000000;
  sub_1001BD370(v1069, v1174, 1);
  v1070 = xmmword_100563C70;
  v1071 = 0x4024000000000000;
  v1072 = 45;
  LOBYTE(v1073) = 0;
  v1075 = 0;
  v1076 = 0;
  v1077 = 0;
  v1078 = 1;
  v1079 = 1;
  v1080 = xmmword_100563C80;
  v1081 = xmmword_100563C90;
  __asm { FMOV            V0.2D, #1.0 }

  v11 = _Q0;
  v1082 = _Q0;
  v1083 = 0xC059000000000000;
  v1084 = xmmword_100563CA0;
  v1085 = vdup_n_s32(0x3DCCCCCDu);
  v1086 = xmmword_100563BE0;
  v1088 = 0;
  v1089 = 0;
  v1087 = 0x3FD999999999999ALL;
  v1090 = xmmword_100563BF0;
  v1091 = 5;
  v1092 = 0x4000000000000000;
  v1093 = 10;
  v1094 = 0x4034000000000000;
  v1095 = 3;
  v1096 = xmmword_100563CB0;
  sub_10029B3B8(v1266, &v1097, v1068);
  sub_10029FEE8(v1098, v1266, 1);
  sub_10029EBE4(v1271, &xmmword_1009F30B0, v1098);
  v1066 = 14;
  v1037[0] = 0x300000010;
  v1037[1] = 0xC042000000000000;
  v1174[0] = 0xC042000000000000;
  sub_1001BD370(v1038, v1174, 1);
  v1039 = xmmword_100563C70;
  v1040 = 0x4024000000000000;
  v1041 = 45;
  LOBYTE(v1042) = 0;
  v1044 = 0;
  v1045 = 0;
  v1046 = 0;
  v1047 = 1;
  v1048 = 1;
  v1049 = xmmword_100563C80;
  v1050 = xmmword_100563C90;
  v1051 = v11;
  v1052 = 0xC059000000000000;
  v1053 = xmmword_100563CA0;
  v1054 = vdup_n_s32(0x3DCCCCCDu);
  v1055 = xmmword_100563BE0;
  v1057 = 0;
  v1058 = 0;
  v1056 = 0x3FD999999999999ALL;
  v1059 = xmmword_100563BF0;
  v1060 = 5;
  v1061 = 0x4000000000000000;
  v1062 = 10;
  v1063 = 0x4034000000000000;
  v1064 = 3;
  v1065 = xmmword_100563CB0;
  sub_10029B3B8(v1262, &v1066, v1037);
  sub_10029FEE8(v1067, v1262, 1);
  sub_10029EBE4(v1272, &xmmword_1009F30C8, v1067);
  v1035 = 14;
  v1006[0] = 0x300000010;
  v1006[1] = 0xC042000000000000;
  v1174[0] = 0xC042000000000000;
  sub_1001BD370(v1007, v1174, 1);
  v1008 = xmmword_100563C70;
  v1009 = 0x4024000000000000;
  v1010 = 45;
  LOBYTE(v1011) = 0;
  v1013 = 0;
  v1014 = 0;
  v1015 = 0;
  v1016 = 1;
  v1017 = 1;
  v1018 = xmmword_100563C80;
  v1019 = xmmword_100563C90;
  v1020 = v11;
  v1021 = 0xC059000000000000;
  v1022 = xmmword_100563CA0;
  v1023 = vdup_n_s32(0x3DCCCCCDu);
  v1024 = xmmword_100563BE0;
  v1026 = 0;
  v1027 = 0;
  v1025 = 0x3FD999999999999ALL;
  v1028 = xmmword_100563BF0;
  v1029 = 5;
  v1030 = 0x4000000000000000;
  v1031 = 10;
  v1032 = 0x4034000000000000;
  v1033 = 3;
  v1034 = xmmword_100563CB0;
  sub_10029B3B8(v1258, &v1035, v1006);
  sub_10029FEE8(v1036, v1258, 1);
  sub_10029EBE4(v1273, &xmmword_1009F30F8, v1036);
  v1004 = 14;
  v975[0] = 0x300000010;
  v975[1] = 0xC042000000000000;
  v1174[0] = 0xC042000000000000;
  sub_1001BD370(v976, v1174, 1);
  v977 = xmmword_100563C70;
  v978 = 0x4024000000000000;
  v979 = 45;
  LOBYTE(v980) = 0;
  v982 = 0;
  v983 = 0;
  v984 = 0;
  v985 = 1;
  v986 = 1;
  v987 = xmmword_100563C80;
  v988 = xmmword_100563C90;
  v989 = v11;
  v990 = 0xC059000000000000;
  v991 = xmmword_100563CA0;
  v992 = vdup_n_s32(0x3DCCCCCDu);
  v993 = xmmword_100563BE0;
  v995 = 0;
  v996 = 0;
  v994 = 0x3FD999999999999ALL;
  v997 = xmmword_100563BF0;
  v998 = 5;
  v999 = 0x4000000000000000;
  v1000 = 10;
  v1001 = 0x4034000000000000;
  v1002 = 3;
  v1003 = xmmword_100563CB0;
  sub_10029B3B8(v1254, &v1004, v975);
  sub_10029FEE8(v1005, v1254, 1);
  sub_10029EBE4(v1274, &xmmword_1009F30F8, v1005);
  v973 = 14;
  v944[0] = 0x300000010;
  v944[1] = 0xC042000000000000;
  v1174[0] = 0xC042000000000000;
  sub_1001BD370(v945, v1174, 1);
  v946 = xmmword_100563C70;
  v947 = 0x4024000000000000;
  v948 = 45;
  LOBYTE(v949) = 0;
  v951 = 0;
  v952 = 0;
  v953 = 0;
  v954 = 1;
  v955 = 1;
  v956 = xmmword_100563C80;
  v957 = xmmword_100563C90;
  v958 = v11;
  v959 = 0xC059000000000000;
  v960 = xmmword_100563CA0;
  v961 = vdup_n_s32(0x3DCCCCCDu);
  v962 = xmmword_100563BE0;
  v964 = 0;
  v965 = 0;
  v963 = 0x3FD999999999999ALL;
  v966 = xmmword_100563BF0;
  v967 = 5;
  v968 = 0x4000000000000000;
  v969 = 10;
  v970 = 0x4034000000000000;
  v971 = 3;
  v972 = xmmword_100563CB0;
  sub_10029B3B8(v1250, &v973, v944);
  sub_10029FEE8(v974, v1250, 1);
  sub_10029EBE4(v1275, &xmmword_1009F3110, v974);
  v942 = 14;
  v913[0] = 0x300000010;
  v913[1] = 0xC044800000000000;
  v1174[0] = 0xC044800000000000;
  sub_1001BD370(v914, v1174, 1);
  v915 = xmmword_100563C70;
  v916 = 0x4024000000000000;
  v917 = 45;
  LOBYTE(v918) = 0;
  v920 = 0;
  v921 = 0;
  v922 = 0;
  v923 = 1;
  v924 = 1;
  v925 = xmmword_100563C80;
  v926 = xmmword_100563C90;
  v927 = v11;
  v928 = 0xC059000000000000;
  v929 = xmmword_100563CA0;
  v930 = vdup_n_s32(0x3DCCCCCDu);
  v931 = xmmword_100563BE0;
  v933 = 0;
  v934 = 0;
  v932 = 0x3FD999999999999ALL;
  v935 = xmmword_100563BF0;
  v936 = 5;
  v937 = 0x4000000000000000;
  v938 = 10;
  v939 = 0x4034000000000000;
  v940 = 3;
  v941 = xmmword_100563CB0;
  sub_10029B3B8(v1246, &v942, v913);
  sub_10029FEE8(v943, v1246, 1);
  sub_10029EBE4(v1276, &xmmword_1009F3140, v943);
  v911 = 14;
  v882[0] = 0x300000010;
  v882[1] = 0xC044800000000000;
  v1174[0] = 0xC044800000000000;
  sub_1001BD370(v883, v1174, 1);
  v884 = xmmword_100563C70;
  v885 = 0x4024000000000000;
  v886 = 45;
  LOBYTE(v887) = 0;
  v889 = 0;
  v890 = 0;
  v891 = 0;
  v892 = 1;
  v893 = 1;
  v894 = xmmword_100563C80;
  v895 = xmmword_100563C90;
  v896 = v11;
  v897 = 0xC059000000000000;
  v898 = xmmword_100563CA0;
  v899 = vdup_n_s32(0x3DCCCCCDu);
  v900 = xmmword_100563BE0;
  v902 = 0;
  v903 = 0;
  v901 = 0x3FD999999999999ALL;
  v904 = xmmword_100563BF0;
  v905 = 5;
  v906 = 0x4000000000000000;
  v907 = 10;
  v908 = 0x4034000000000000;
  v909 = 3;
  v910 = xmmword_100563CB0;
  sub_10029B3B8(v1242, &v911, v882);
  sub_10029FEE8(v912, v1242, 1);
  sub_10029EBE4(v1277, &xmmword_1009F3158, v912);
  v880 = 14;
  v851[0] = 0x300000010;
  v851[1] = 0xC044800000000000;
  v1174[0] = 0xC044800000000000;
  sub_1001BD370(v852, v1174, 1);
  v853 = xmmword_100563C70;
  v854 = 0x4024000000000000;
  v855 = 45;
  LOBYTE(v856) = 0;
  v858 = 0;
  v859 = 0;
  v860 = 0;
  v861 = 1;
  v862 = 1;
  v863 = xmmword_100563C80;
  v864 = xmmword_100563C90;
  v865 = v11;
  v866 = 0xC059000000000000;
  v867 = xmmword_100563CA0;
  v868 = vdup_n_s32(0x3DCCCCCDu);
  v869 = xmmword_100563BE0;
  v871 = 0;
  v872 = 0;
  v870 = 0x3FD999999999999ALL;
  v873 = xmmword_100563BF0;
  v874 = 5;
  v875 = 0x4000000000000000;
  v876 = 10;
  v877 = 0x4034000000000000;
  v878 = 3;
  v879 = xmmword_100563CB0;
  sub_10029B3B8(v1238, &v880, v851);
  sub_10029FEE8(v881, v1238, 1);
  sub_10029EBE4(v1278, &xmmword_1009F3170, v881);
  sub_1002A1880(v1099, v1271, 8);
  v1279 = 2;
  sub_1002A1AD4(v1280, v1099);
  v848 = 16;
  v819[0] = 0x300000008;
  v819[1] = 0xC043800000000000;
  v1174[0] = 0xC043800000000000;
  sub_1001BD370(v820, v1174, 1);
  v821 = xmmword_100563C70;
  v822 = 0x4024000000000000;
  v823 = 45;
  LOBYTE(v824) = 0;
  v826 = 0;
  v827 = 0;
  v828 = 0;
  v829 = 1;
  v830 = 1;
  v831 = xmmword_100563C80;
  v832 = xmmword_100563C90;
  v833 = v11;
  v834 = 0xC059000000000000;
  v835 = xmmword_100563CA0;
  v836 = vdup_n_s32(0x3DCCCCCDu);
  v837 = xmmword_100563BE0;
  v839 = 0;
  v840 = 0;
  v838 = 0x3FD999999999999ALL;
  v841 = xmmword_100563BF0;
  v842 = 5;
  v843 = 0x4000000000000000;
  v844 = 10;
  v845 = 0x4034000000000000;
  v846 = 3;
  v847 = xmmword_100563CB0;
  sub_10029B3B8(v1224, &v848, v819);
  sub_10029FEE8(v849, v1224, 1);
  sub_10029EBE4(v1229, &xmmword_1009F30B0, v849);
  v817 = 16;
  v788[0] = 0x300000008;
  v788[1] = 0xC043800000000000;
  v1174[0] = 0xC043800000000000;
  sub_1001BD370(v789, v1174, 1);
  v790 = xmmword_100563C70;
  v791 = 0x4024000000000000;
  v792 = 45;
  LOBYTE(v793) = 0;
  v795 = 0;
  v796 = 0;
  v797 = 0;
  v798 = 1;
  v799 = 1;
  v800 = xmmword_100563C80;
  v801 = xmmword_100563C90;
  v802 = v11;
  v803 = 0xC059000000000000;
  v804 = xmmword_100563CA0;
  v805 = vdup_n_s32(0x3DCCCCCDu);
  v806 = xmmword_100563BE0;
  v808 = 0;
  v809 = 0;
  v807 = 0x3FD999999999999ALL;
  v810 = xmmword_100563BF0;
  v811 = 5;
  v812 = 0x4000000000000000;
  v813 = 10;
  v814 = 0x4034000000000000;
  v815 = 3;
  v816 = xmmword_100563CB0;
  sub_10029B3B8(v1220, &v817, v788);
  sub_10029FEE8(v818, v1220, 1);
  sub_10029EBE4(v1230, &xmmword_1009F30C8, v818);
  v786 = 7;
  v757[0] = 8;
  v757[1] = 0xC04A000000000000;
  v1174[0] = 0xC04A000000000000;
  sub_1001BD370(v758, v1174, 1);
  v759 = xmmword_100563C70;
  v760 = 0x4024000000000000;
  v761 = 45;
  LOBYTE(v762) = 0;
  v764 = 0;
  v765 = 0;
  v766 = 0;
  v767 = 1;
  v768 = 1;
  v769 = xmmword_100563C80;
  v770 = xmmword_100563C90;
  v771 = v11;
  v772 = 0xC059000000000000;
  v773 = xmmword_100563CA0;
  v774 = vdup_n_s32(0x3DCCCCCDu);
  v775 = xmmword_100563BE0;
  v777 = 0;
  v778 = 0;
  v776 = 0x3FD999999999999ALL;
  v779 = xmmword_100563BF0;
  v780 = 5;
  v781 = 0x4000000000000000;
  v782 = 10;
  v783 = 0x4034000000000000;
  v784 = 3;
  v785 = xmmword_100563CB0;
  sub_10029B3B8(v1216, &v786, v757);
  sub_10029FEE8(v787, v1216, 1);
  sub_10029EBE4(v1231, &xmmword_1009F32C0, v787);
  v755 = 7;
  v726[0] = 8;
  v726[1] = 0xC04A000000000000;
  v1174[0] = 0xC04A000000000000;
  sub_1001BD370(v727, v1174, 1);
  v728 = xmmword_100563C70;
  v729 = 0x4024000000000000;
  v730 = 45;
  LOBYTE(v731) = 0;
  v733 = 0;
  v734 = 0;
  v735 = 0;
  v736 = 1;
  v737 = 1;
  v738 = xmmword_100563C80;
  v739 = xmmword_100563C90;
  v740 = v11;
  v741 = 0xC059000000000000;
  v742 = xmmword_100563CA0;
  v743 = vdup_n_s32(0x3DCCCCCDu);
  v744 = xmmword_100563BE0;
  v746 = 0;
  v747 = 0;
  v745 = 0x3FD999999999999ALL;
  v748 = xmmword_100563BF0;
  v749 = 5;
  v750 = 0x4000000000000000;
  v751 = 10;
  v752 = 0x4034000000000000;
  v753 = 3;
  v754 = xmmword_100563CB0;
  sub_10029B3B8(v1212, &v755, v726);
  sub_10029FEE8(v756, v1212, 1);
  sub_10029EBE4(v1232, &xmmword_1009F32D8, v756);
  v724 = 7;
  v695[0] = 8;
  v695[1] = 0xC04A000000000000;
  v1174[0] = 0xC04A000000000000;
  sub_1001BD370(v696, v1174, 1);
  v697 = xmmword_100563C70;
  v698 = 0x4024000000000000;
  v699 = 45;
  LOBYTE(v700) = 0;
  v702 = 0;
  v703 = 0;
  v704 = 0;
  v705 = 1;
  v706 = 1;
  v707 = xmmword_100563C80;
  v708 = xmmword_100563C90;
  v709 = v11;
  v710 = 0xC059000000000000;
  v711 = xmmword_100563CA0;
  v712 = vdup_n_s32(0x3DCCCCCDu);
  v713 = xmmword_100563BE0;
  v715 = 0;
  v716 = 0;
  v714 = 0x3FD999999999999ALL;
  v717 = xmmword_100563BF0;
  v718 = 5;
  v719 = 0x4000000000000000;
  v720 = 10;
  v721 = 0x4034000000000000;
  v722 = 3;
  v723 = xmmword_100563CB0;
  sub_10029B3B8(v1208, &v724, v695);
  sub_10029FEE8(v725, v1208, 1);
  sub_10029EBE4(v1233, &xmmword_1009F32F0, v725);
  v693 = 7;
  v664[0] = 8;
  v664[1] = 0xC04A000000000000;
  v1174[0] = 0xC04A000000000000;
  sub_1001BD370(v665, v1174, 1);
  v666 = xmmword_100563C70;
  v667 = 0x4024000000000000;
  v668 = 45;
  LOBYTE(v669) = 0;
  v671 = 0;
  v672 = 0;
  v673 = 0;
  v674 = 1;
  v675 = 1;
  v676 = xmmword_100563C80;
  v677 = xmmword_100563C90;
  v678 = v11;
  v679 = 0xC059000000000000;
  v680 = xmmword_100563CA0;
  v681 = vdup_n_s32(0x3DCCCCCDu);
  v682 = xmmword_100563BE0;
  v684 = 0;
  v685 = 0;
  v683 = 0x3FD999999999999ALL;
  v686 = xmmword_100563BF0;
  v687 = 5;
  v688 = 0x4000000000000000;
  v689 = 10;
  v690 = 0x4034000000000000;
  v691 = 3;
  v692 = xmmword_100563CB0;
  sub_10029B3B8(v1204, &v693, v664);
  sub_10029FEE8(v694, v1204, 1);
  sub_10029EBE4(v1234, &xmmword_1009F3308, v694);
  v662 = 7;
  v633[0] = 8;
  v633[1] = 0xC04A000000000000;
  v1174[0] = 0xC04A000000000000;
  sub_1001BD370(v634, v1174, 1);
  v635 = xmmword_100563C70;
  v636 = 0x4024000000000000;
  v637 = 45;
  LOBYTE(v638) = 0;
  v640 = 0;
  v641 = 0;
  v642 = 0;
  v643 = 1;
  v644 = 1;
  v645 = xmmword_100563C80;
  v646 = xmmword_100563C90;
  v647 = v11;
  v648 = 0xC059000000000000;
  v649 = xmmword_100563CA0;
  v650 = vdup_n_s32(0x3DCCCCCDu);
  v651 = xmmword_100563BE0;
  v653 = 0;
  v654 = 0;
  v652 = 0x3FD999999999999ALL;
  v655 = xmmword_100563BF0;
  v656 = 5;
  v657 = 0x4000000000000000;
  v658 = 10;
  v659 = 0x4034000000000000;
  v660 = 3;
  v661 = xmmword_100563CB0;
  sub_10029B3B8(v1200, &v662, v633);
  sub_10029FEE8(v663, v1200, 1);
  sub_10029EBE4(v1235, &xmmword_1009F3320, v663);
  v631 = 7;
  v602[0] = 8;
  v602[1] = 0xC04A000000000000;
  v1174[0] = 0xC04A000000000000;
  sub_1001BD370(v603, v1174, 1);
  v604 = xmmword_100563C70;
  v605 = 0x4024000000000000;
  v606 = 45;
  LOBYTE(v607) = 0;
  v609 = 0;
  v610 = 0;
  v611 = 0;
  v612 = 1;
  v613 = 1;
  v614 = xmmword_100563C80;
  v615 = xmmword_100563C90;
  v616 = v11;
  v617 = 0xC059000000000000;
  v618 = xmmword_100563CA0;
  v619 = vdup_n_s32(0x3DCCCCCDu);
  v620 = xmmword_100563BE0;
  v622 = 0;
  v623 = 0;
  v621 = 0x3FD999999999999ALL;
  v624 = xmmword_100563BF0;
  v625 = 5;
  v626 = 0x4000000000000000;
  v627 = 10;
  v628 = 0x4034000000000000;
  v629 = 3;
  v630 = xmmword_100563CB0;
  sub_10029B3B8(v1196, &v631, v602);
  sub_10029FEE8(v632, v1196, 1);
  sub_10029EBE4(v1236, &xmmword_1009F3338, v632);
  v600 = 7;
  v571[0] = 8;
  v571[1] = 0xC04A000000000000;
  v1174[0] = 0xC04A000000000000;
  sub_1001BD370(v572, v1174, 1);
  v573 = xmmword_100563C70;
  v574 = 0x4024000000000000;
  v575 = 45;
  LOBYTE(v576) = 0;
  v578 = 0;
  v579 = 0;
  v580 = 0;
  v581 = 1;
  v582 = 1;
  v583 = xmmword_100563C80;
  v584 = xmmword_100563C90;
  v585 = v11;
  v586 = 0xC059000000000000;
  v587 = xmmword_100563CA0;
  v588 = vdup_n_s32(0x3DCCCCCDu);
  v589 = xmmword_100563BE0;
  v591 = 0;
  v592 = 0;
  v590 = 0x3FD999999999999ALL;
  v593 = xmmword_100563BF0;
  v594 = 5;
  v595 = 0x4000000000000000;
  v596 = 10;
  v597 = 0x4034000000000000;
  v598 = 3;
  v599 = xmmword_100563CB0;
  sub_10029B3B8(v1192, &v600, v571);
  sub_10029FEE8(v601, v1192, 1);
  sub_10029EBE4(v1237, &xmmword_1009F3350, v601);
  sub_1002A1880(v850, v1229, 9);
  v1281 = 3;
  sub_1002A1AD4(v1282, v850);
  v568 = 6;
  v539[0] = 8;
  v539[1] = 0xC04E800000000000;
  v1165[0] = -61.0;
  sub_1001BD370(v540, v1165, 1);
  v541 = xmmword_100563C70;
  v542 = 0x4024000000000000;
  v543 = 45;
  LOBYTE(v544) = 0;
  v546 = 0;
  v547 = 0;
  v548 = 0;
  v549 = 1;
  v550 = 1;
  v551 = xmmword_100563C80;
  v552 = xmmword_100563C90;
  v553 = v11;
  v554 = 0xC059000000000000;
  v555 = xmmword_100563CA0;
  v556 = vdup_n_s32(0x3DCCCCCDu);
  v557 = xmmword_100563BE0;
  v559 = 0;
  v560 = 0;
  v558 = 0x3FD999999999999ALL;
  v561 = xmmword_100563BF0;
  v562 = 5;
  v563 = 0x4000000000000000;
  v564 = 10;
  v565 = 0x4034000000000000;
  v566 = 3;
  v567 = xmmword_100563CB0;
  sub_10029B3B8(v1169, &v568, v539);
  sub_10029FEE8(v569, v1169, 1);
  sub_10029EBE4(v1174, &xmmword_1009F32C0, v569);
  v537 = 3;
  v508[0] = 8;
  v508[1] = 0xC04F000000000000;
  v1161[0] = -62.0;
  sub_1001BD370(v509, v1161, 1);
  v510 = xmmword_100563C70;
  v511 = 0x4024000000000000;
  v512 = 45;
  LOBYTE(v513) = 0;
  v515 = 0;
  v516 = 0;
  v517 = 0;
  v518 = 1;
  v519 = 1;
  v520 = xmmword_100563C80;
  v521 = xmmword_100563C90;
  v522 = v11;
  v523 = 0xC059000000000000;
  v524 = xmmword_100563CA0;
  v525 = vdup_n_s32(0x3DCCCCCDu);
  v526 = xmmword_100563BE0;
  v528 = 0;
  v529 = 0;
  v527 = 0x3FD999999999999ALL;
  v530 = xmmword_100563BF0;
  v531 = 5;
  v532 = 0x4000000000000000;
  v533 = 10;
  v534 = 0x4034000000000000;
  v535 = 3;
  v536 = xmmword_100563CB0;
  sub_10029B3B8(v1165, &v537, v508);
  sub_10029FEE8(v538, v1165, 1);
  sub_10029EBE4(v1175, &xmmword_1009F32C0, v538);
  v506 = 7;
  v477[0] = 8;
  v477[1] = 0xC04E800000000000;
  v1157[0] = -61.0;
  sub_1001BD370(v478, v1157, 1);
  v479 = xmmword_100563C70;
  v480 = 0x4024000000000000;
  v481 = 45;
  LOBYTE(v482) = 0;
  v484 = 0;
  v485 = 0;
  v486 = 0;
  v487 = 1;
  v488 = 1;
  v489 = xmmword_100563C80;
  v490 = xmmword_100563C90;
  v491 = v11;
  v492 = 0xC059000000000000;
  v493 = xmmword_100563CA0;
  v494 = vdup_n_s32(0x3DCCCCCDu);
  v495 = xmmword_100563BE0;
  v497 = 0;
  v498 = 0;
  v496 = 0x3FD999999999999ALL;
  v499 = xmmword_100563BF0;
  v500 = 5;
  v501 = 0x4000000000000000;
  v502 = 10;
  v503 = 0x4034000000000000;
  v504 = 3;
  v505 = xmmword_100563CB0;
  sub_10029B3B8(v1161, &v506, v477);
  sub_10029FEE8(v507, v1161, 1);
  sub_10029EBE4(v1176, &xmmword_1009F32C0, v507);
  v475 = 6;
  v446[0] = 8;
  v446[1] = 0xC04E800000000000;
  v1153[0] = -61.0;
  sub_1001BD370(v447, v1153, 1);
  v448 = xmmword_100563C70;
  v449 = 0x4024000000000000;
  v450 = 45;
  LOBYTE(v451) = 0;
  v453 = 0;
  v454 = 0;
  v455 = 0;
  v456 = 1;
  v457 = 1;
  v458 = xmmword_100563C80;
  v459 = xmmword_100563C90;
  v460 = v11;
  v461 = 0xC059000000000000;
  v462 = xmmword_100563CA0;
  v463 = vdup_n_s32(0x3DCCCCCDu);
  v464 = xmmword_100563BE0;
  v466 = 0;
  v467 = 0;
  v465 = 0x3FD999999999999ALL;
  v468 = xmmword_100563BF0;
  v469 = 5;
  v470 = 0x4000000000000000;
  v471 = 10;
  v472 = 0x4034000000000000;
  v473 = 3;
  v474 = xmmword_100563CB0;
  sub_10029B3B8(v1157, &v475, v446);
  sub_10029FEE8(v476, v1157, 1);
  sub_10029EBE4(v1177, &xmmword_1009F32D8, v476);
  v444 = 3;
  v415[0] = 8;
  v415[1] = 0xC04F000000000000;
  v1149[0] = -62.0;
  sub_1001BD370(v416, v1149, 1);
  v417 = xmmword_100563C70;
  v418 = 0x4024000000000000;
  v419 = 45;
  LOBYTE(v420) = 0;
  v422 = 0;
  v423 = 0;
  v424 = 0;
  v425 = 1;
  v426 = 1;
  v427 = xmmword_100563C80;
  v428 = xmmword_100563C90;
  v429 = v11;
  v430 = 0xC059000000000000;
  v431 = xmmword_100563CA0;
  v432 = vdup_n_s32(0x3DCCCCCDu);
  v433 = xmmword_100563BE0;
  v435 = 0;
  v436 = 0;
  v434 = 0x3FD999999999999ALL;
  v437 = xmmword_100563BF0;
  v438 = 5;
  v439 = 0x4000000000000000;
  v440 = 10;
  v441 = 0x4034000000000000;
  v442 = 3;
  v443 = xmmword_100563CB0;
  sub_10029B3B8(v1153, &v444, v415);
  sub_10029FEE8(v445, v1153, 1);
  sub_10029EBE4(v1178, &xmmword_1009F32D8, v445);
  v413 = 7;
  v384[0] = 8;
  v384[1] = 0xC04E800000000000;
  v1145[0] = -61.0;
  sub_1001BD370(v385, v1145, 1);
  v386 = xmmword_100563C70;
  v387 = 0x4024000000000000;
  v388 = 45;
  LOBYTE(v389) = 0;
  v391 = 0;
  v392 = 0;
  v393 = 0;
  v394 = 1;
  v395 = 1;
  v396 = xmmword_100563C80;
  v397 = xmmword_100563C90;
  v398 = v11;
  v399 = 0xC059000000000000;
  v400 = xmmword_100563CA0;
  v401 = vdup_n_s32(0x3DCCCCCDu);
  v402 = xmmword_100563BE0;
  v404 = 0;
  v405 = 0;
  v403 = 0x3FD999999999999ALL;
  v406 = xmmword_100563BF0;
  v407 = 5;
  v408 = 0x4000000000000000;
  v409 = 10;
  v410 = 0x4034000000000000;
  v411 = 3;
  v412 = xmmword_100563CB0;
  sub_10029B3B8(v1149, &v413, v384);
  sub_10029FEE8(v414, v1149, 1);
  sub_10029EBE4(v1179, &xmmword_1009F32D8, v414);
  v382 = 6;
  v353[0] = 8;
  v353[1] = 0xC04E800000000000;
  v1141[0] = -61.0;
  sub_1001BD370(v354, v1141, 1);
  v355 = xmmword_100563C70;
  v356 = 0x4024000000000000;
  v357 = 45;
  LOBYTE(v358) = 0;
  v360 = 0;
  v361 = 0;
  v362 = 0;
  v363 = 1;
  v364 = 1;
  v365 = xmmword_100563C80;
  v366 = xmmword_100563C90;
  v367 = v11;
  v368 = 0xC059000000000000;
  v369 = xmmword_100563CA0;
  v370 = vdup_n_s32(0x3DCCCCCDu);
  v371 = xmmword_100563BE0;
  v373 = 0;
  v374 = 0;
  v372 = 0x3FD999999999999ALL;
  v375 = xmmword_100563BF0;
  v376 = 5;
  v377 = 0x4000000000000000;
  v378 = 10;
  v379 = 0x4034000000000000;
  v380 = 3;
  v381 = xmmword_100563CB0;
  sub_10029B3B8(v1145, &v382, v353);
  sub_10029FEE8(v383, v1145, 1);
  sub_10029EBE4(v1180, &xmmword_1009F32F0, v383);
  v351 = 3;
  v322[0] = 8;
  v322[1] = 0xC04F000000000000;
  v1137[0] = -62.0;
  sub_1001BD370(v323, v1137, 1);
  v324 = xmmword_100563C70;
  v325 = 0x4024000000000000;
  v326 = 45;
  LOBYTE(v327) = 0;
  v329 = 0;
  v330 = 0;
  v331 = 0;
  v332 = 1;
  v333 = 1;
  v334 = xmmword_100563C80;
  v335 = xmmword_100563C90;
  v336 = v11;
  v337 = 0xC059000000000000;
  v338 = xmmword_100563CA0;
  v339 = vdup_n_s32(0x3DCCCCCDu);
  v340 = xmmword_100563BE0;
  v342 = 0;
  v343 = 0;
  v341 = 0x3FD999999999999ALL;
  v344 = xmmword_100563BF0;
  v345 = 5;
  v346 = 0x4000000000000000;
  v347 = 10;
  v348 = 0x4034000000000000;
  v349 = 3;
  v350 = xmmword_100563CB0;
  sub_10029B3B8(v1141, &v351, v322);
  sub_10029FEE8(v352, v1141, 1);
  sub_10029EBE4(v1181, &xmmword_1009F32F0, v352);
  v320 = 7;
  v291[0] = 8;
  v291[1] = 0xC04E800000000000;
  v1133[0] = -61.0;
  sub_1001BD370(v292, v1133, 1);
  v293 = xmmword_100563C70;
  v294 = 0x4024000000000000;
  v295 = 45;
  LOBYTE(v296) = 0;
  v298 = 0;
  v299 = 0;
  v300 = 0;
  v301 = 1;
  v302 = 1;
  v303 = xmmword_100563C80;
  v304 = xmmword_100563C90;
  v305 = v11;
  v306 = 0xC059000000000000;
  v307 = xmmword_100563CA0;
  v308 = vdup_n_s32(0x3DCCCCCDu);
  v309 = xmmword_100563BE0;
  v311 = 0;
  v312 = 0;
  v310 = 0x3FD999999999999ALL;
  v313 = xmmword_100563BF0;
  v314 = 5;
  v315 = 0x4000000000000000;
  v316 = 10;
  v317 = 0x4034000000000000;
  v318 = 3;
  v319 = xmmword_100563CB0;
  sub_10029B3B8(v1137, &v320, v291);
  sub_10029FEE8(v321, v1137, 1);
  sub_10029EBE4(v1182, &xmmword_1009F32F0, v321);
  v289 = 6;
  v260[0] = 8;
  v260[1] = 0xC04E800000000000;
  v1129[0] = -61.0;
  sub_1001BD370(v261, v1129, 1);
  v262 = xmmword_100563C70;
  v263 = 0x4024000000000000;
  v264 = 45;
  LOBYTE(v265) = 0;
  v267 = 0;
  v268 = 0;
  v269 = 0;
  v270 = 1;
  v271 = 1;
  v272 = xmmword_100563C80;
  v273 = xmmword_100563C90;
  v274 = v11;
  v275 = 0xC059000000000000;
  v276 = xmmword_100563CA0;
  v277 = vdup_n_s32(0x3DCCCCCDu);
  v278 = xmmword_100563BE0;
  v280 = 0;
  v281 = 0;
  v279 = 0x3FD999999999999ALL;
  v282 = xmmword_100563BF0;
  v283 = 5;
  v284 = 0x4000000000000000;
  v285 = 10;
  v286 = 0x4034000000000000;
  v287 = 3;
  v288 = xmmword_100563CB0;
  sub_10029B3B8(v1133, &v289, v260);
  sub_10029FEE8(v290, v1133, 1);
  sub_10029EBE4(v1183, &xmmword_1009F3308, v290);
  v258 = 4;
  v229[0] = 8;
  v229[1] = 0xC04E800000000000;
  v1125[0] = -61.0;
  sub_1001BD370(v230, v1125, 1);
  v231 = xmmword_100563C70;
  v232 = 0x4024000000000000;
  v233 = 45;
  LOBYTE(v234) = 0;
  v236 = 0;
  v237 = 0;
  v238 = 0;
  v239 = 1;
  v240 = 1;
  v241 = xmmword_100563C80;
  v242 = xmmword_100563C90;
  v243 = v11;
  v244 = 0xC059000000000000;
  v245 = xmmword_100563CA0;
  v246 = vdup_n_s32(0x3DCCCCCDu);
  v247 = xmmword_100563BE0;
  v249 = 0;
  v250 = 0;
  v248 = 0x3FD999999999999ALL;
  v251 = xmmword_100563BF0;
  v252 = 5;
  v253 = 0x4000000000000000;
  v254 = 10;
  v255 = 0x4034000000000000;
  v256 = 3;
  v257 = xmmword_100563CB0;
  sub_10029B3B8(v1129, &v258, v229);
  sub_10029FEE8(v259, v1129, 1);
  sub_10029EBE4(v1184, &xmmword_1009F3308, v259);
  v227 = 7;
  v198[0] = 8;
  v198[1] = 0xC04E800000000000;
  v1121[0] = -61.0;
  sub_1001BD370(v199, v1121, 1);
  v200 = xmmword_100563C70;
  v201 = 0x4024000000000000;
  v202 = 45;
  LOBYTE(v203) = 0;
  v205 = 0;
  v206 = 0;
  v207 = 0;
  v208 = 1;
  v209 = 1;
  v210 = xmmword_100563C80;
  v211 = xmmword_100563C90;
  v212 = v11;
  v213 = 0xC059000000000000;
  v214 = xmmword_100563CA0;
  v215 = vdup_n_s32(0x3DCCCCCDu);
  v216 = xmmword_100563BE0;
  v218 = 0;
  v219 = 0;
  v217 = 0x3FD999999999999ALL;
  v220 = xmmword_100563BF0;
  v221 = 5;
  v222 = 0x4000000000000000;
  v223 = 10;
  v224 = 0x4034000000000000;
  v225 = 3;
  v226 = xmmword_100563CB0;
  sub_10029B3B8(v1125, &v227, v198);
  sub_10029FEE8(v228, v1125, 1);
  sub_10029EBE4(v1185, &xmmword_1009F3308, v228);
  v196 = 6;
  v167[0] = 8;
  v167[1] = 0xC04E800000000000;
  v1117[0] = -61.0;
  sub_1001BD370(v168, v1117, 1);
  v169 = xmmword_100563C70;
  v170 = 0x4024000000000000;
  v171 = 45;
  LOBYTE(v172) = 0;
  v174 = 0;
  v175 = 0;
  v176 = 0;
  v177 = 1;
  v178 = 1;
  v179 = xmmword_100563C80;
  v180 = xmmword_100563C90;
  v181 = v11;
  v182 = 0xC059000000000000;
  v183 = xmmword_100563CA0;
  v184 = vdup_n_s32(0x3DCCCCCDu);
  v185 = xmmword_100563BE0;
  v187 = 0;
  v188 = 0;
  v186 = 0x3FD999999999999ALL;
  v189 = xmmword_100563BF0;
  v190 = 5;
  v191 = 0x4000000000000000;
  v192 = 10;
  v193 = 0x4034000000000000;
  v194 = 3;
  v195 = xmmword_100563CB0;
  sub_10029B3B8(v1121, &v196, v167);
  sub_10029FEE8(v197, v1121, 1);
  sub_10029EBE4(v1186, &xmmword_1009F3338, v197);
  v165 = 4;
  v136[0] = 8;
  v136[1] = 0xC04E800000000000;
  v1113[0] = -61.0;
  sub_1001BD370(v137, v1113, 1);
  v138 = xmmword_100563C70;
  v139 = 0x4024000000000000;
  v140 = 45;
  LOBYTE(v141) = 0;
  v143 = 0;
  v144 = 0;
  v145 = 0;
  v146 = 1;
  v147 = 1;
  v148 = xmmword_100563C80;
  v149 = xmmword_100563C90;
  v150 = v11;
  v151 = 0xC059000000000000;
  v152 = xmmword_100563CA0;
  v153 = vdup_n_s32(0x3DCCCCCDu);
  v154 = xmmword_100563BE0;
  v156 = 0;
  v157 = 0;
  v155 = 0x3FD999999999999ALL;
  v158 = xmmword_100563BF0;
  v159 = 5;
  v160 = 0x4000000000000000;
  v161 = 10;
  v162 = 0x4034000000000000;
  v163 = 3;
  v164 = xmmword_100563CB0;
  sub_10029B3B8(v1117, &v165, v136);
  sub_10029FEE8(v166, v1117, 1);
  sub_10029EBE4(v1187, &xmmword_1009F3338, v166);
  v134 = 7;
  v105[0] = 8;
  v105[1] = 0xC04E800000000000;
  v1109[0] = -61.0;
  sub_1001BD370(v106, v1109, 1);
  v107 = xmmword_100563C70;
  v108 = 0x4024000000000000;
  v109 = 45;
  LOBYTE(v110) = 0;
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 1;
  v116 = 1;
  v117 = xmmword_100563C80;
  v118 = xmmword_100563C90;
  v119 = v11;
  v120 = 0xC059000000000000;
  v121 = xmmword_100563CA0;
  v122 = vdup_n_s32(0x3DCCCCCDu);
  v123 = xmmword_100563BE0;
  v125 = 0;
  v126 = 0;
  v124 = 0x3FD999999999999ALL;
  v127 = xmmword_100563BF0;
  v128 = 5;
  v129 = 0x4000000000000000;
  v130 = 10;
  v131 = 0x4034000000000000;
  v132 = 3;
  v133 = xmmword_100563CB0;
  sub_10029B3B8(v1113, &v134, v105);
  sub_10029FEE8(v135, v1113, 1);
  sub_10029EBE4(v1188, &xmmword_1009F3338, v135);
  v103 = 6;
  v74[0] = 8;
  v74[1] = 0xC04E800000000000;
  v1105[0] = -61.0;
  sub_1001BD370(v75, v1105, 1);
  v76 = xmmword_100563C70;
  v77 = 0x4024000000000000;
  v78 = 45;
  LOBYTE(v79) = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 1;
  v85 = 1;
  v86 = xmmword_100563C80;
  v87 = xmmword_100563C90;
  v88 = v11;
  v89 = 0xC059000000000000;
  v90 = xmmword_100563CA0;
  v91 = vdup_n_s32(0x3DCCCCCDu);
  v92 = xmmword_100563BE0;
  v94 = 0;
  v95 = 0;
  v93 = 0x3FD999999999999ALL;
  v96 = xmmword_100563BF0;
  v97 = 5;
  v98 = 0x4000000000000000;
  v99 = 10;
  v100 = 0x4034000000000000;
  v101 = 3;
  v102 = xmmword_100563CB0;
  sub_10029B3B8(v1109, &v103, v74);
  sub_10029FEE8(v104, v1109, 1);
  sub_10029EBE4(v1189, &xmmword_1009F3350, v104);
  v72 = 4;
  v43[0] = 8;
  v43[1] = 0xC04E800000000000;
  v1101[0] = -61.0;
  sub_1001BD370(v44, v1101, 1);
  v45 = xmmword_100563C70;
  v46 = 0x4024000000000000;
  v47 = 45;
  LOBYTE(v48) = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 1;
  v54 = 1;
  v55 = xmmword_100563C80;
  v56 = xmmword_100563C90;
  v57 = v11;
  v58 = 0xC059000000000000;
  v59 = xmmword_100563CA0;
  v60 = vdup_n_s32(0x3DCCCCCDu);
  v61 = xmmword_100563BE0;
  v63 = 0;
  v64 = 0;
  v62 = 0x3FD999999999999ALL;
  v65 = xmmword_100563BF0;
  v66 = 5;
  v67 = 0x4000000000000000;
  v68 = 10;
  v69 = 0x4034000000000000;
  v70 = 3;
  v71 = xmmword_100563CB0;
  sub_10029B3B8(v1105, &v72, v43);
  sub_10029FEE8(v73, v1105, 1);
  sub_10029EBE4(v1190, &xmmword_1009F3350, v73);
  v41 = 7;
  v12[0] = 8;
  v12[1] = 0xC04E800000000000;
  v1100 = 0xC04E800000000000;
  sub_1001BD370(v13, &v1100, 1);
  v14 = xmmword_100563C70;
  v15 = 0x4024000000000000;
  v16 = 45;
  LOBYTE(__p) = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 1;
  v23 = 1;
  v24 = xmmword_100563C80;
  v25 = xmmword_100563C90;
  v26 = v11;
  v27 = 0xC059000000000000;
  v28 = xmmword_100563CA0;
  v29 = vdup_n_s32(0x3DCCCCCDu);
  v30 = xmmword_100563BE0;
  v32 = 0;
  v33 = 0;
  v31 = 0x3FD999999999999ALL;
  v34 = xmmword_100563BF0;
  v35 = 5;
  v36 = 0x4000000000000000;
  v37 = 10;
  v38 = 0x4034000000000000;
  v39 = 3;
  v40 = xmmword_100563CB0;
  sub_10029B3B8(v1101, &v41, v12);
  sub_10029FEE8(v42, v1101, 1);
  sub_10029EBE4(v1191, &xmmword_1009F3350, v42);
  sub_1002A1880(v570, v1174, 18);
  v1283 = 4;
  sub_1002A1AD4(v1284, v570);
  sub_1002A1BB4(&qword_1009FA078, &v1279, 3);
  for (i = 0; i != -12; i -= 4)
  {
    sub_1002A17D0(&v1284[i], v1284[i + 1]);
  }

  sub_1002A17D0(v570, v570[1]);
  v7 = 864;
  do
  {
    sub_10029FE38(&v1173[v7 + 24], *&v1173[v7 + 32]);
    if (v1173[v7 + 23] < 0)
    {
      operator delete(*&v1173[v7]);
    }

    v7 -= 48;
  }

  while (v7);
  sub_10029FE38(v42, v42[1]);
  if (v1104 == 1 && v1103 < 0)
  {
    operator delete(v1102[7]);
  }

  sub_10002074C(v1102, v1102[1]);
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p);
  }

  sub_10002074C(v13, v13[1]);
  sub_10029FE38(v73, v73[1]);
  if (v1108 == 1 && v1107 < 0)
  {
    operator delete(v1106[7]);
  }

  sub_10002074C(v1106, v1106[1]);
  if (v50 == 1 && v49 < 0)
  {
    operator delete(v48);
  }

  sub_10002074C(v44, v44[1]);
  sub_10029FE38(v104, v104[1]);
  if (v1112 == 1 && v1111 < 0)
  {
    operator delete(v1110[7]);
  }

  sub_10002074C(v1110, v1110[1]);
  if (v81 == 1 && v80 < 0)
  {
    operator delete(v79);
  }

  sub_10002074C(v75, v75[1]);
  sub_10029FE38(v135, v135[1]);
  if (v1116 == 1 && v1115 < 0)
  {
    operator delete(v1114[7]);
  }

  sub_10002074C(v1114, v1114[1]);
  if (v112 == 1 && v111 < 0)
  {
    operator delete(v110);
  }

  sub_10002074C(v106, v106[1]);
  sub_10029FE38(v166, v166[1]);
  if (v1120 == 1 && v1119 < 0)
  {
    operator delete(v1118[7]);
  }

  sub_10002074C(v1118, v1118[1]);
  if (v143 == 1 && v142 < 0)
  {
    operator delete(v141);
  }

  sub_10002074C(v137, v137[1]);
  sub_10029FE38(v197, v197[1]);
  if (v1124 == 1 && v1123 < 0)
  {
    operator delete(v1122[7]);
  }

  sub_10002074C(v1122, v1122[1]);
  if (v174 == 1 && v173 < 0)
  {
    operator delete(v172);
  }

  sub_10002074C(v168, v168[1]);
  sub_10029FE38(v228, v228[1]);
  if (v1128 == 1 && v1127 < 0)
  {
    operator delete(v1126[7]);
  }

  sub_10002074C(v1126, v1126[1]);
  if (v205 == 1 && v204 < 0)
  {
    operator delete(v203);
  }

  sub_10002074C(v199, v199[1]);
  sub_10029FE38(v259, v259[1]);
  if (v1132 == 1 && v1131 < 0)
  {
    operator delete(v1130[7]);
  }

  sub_10002074C(v1130, v1130[1]);
  if (v236 == 1 && v235 < 0)
  {
    operator delete(v234);
  }

  sub_10002074C(v230, v230[1]);
  sub_10029FE38(v290, v290[1]);
  if (v1136 == 1 && v1135 < 0)
  {
    operator delete(v1134[7]);
  }

  sub_10002074C(v1134, v1134[1]);
  if (v267 == 1 && v266 < 0)
  {
    operator delete(v265);
  }

  sub_10002074C(v261, v261[1]);
  sub_10029FE38(v321, v321[1]);
  if (v1140 == 1 && v1139 < 0)
  {
    operator delete(v1138[7]);
  }

  sub_10002074C(v1138, v1138[1]);
  if (v298 == 1 && v297 < 0)
  {
    operator delete(v296);
  }

  sub_10002074C(v292, v292[1]);
  sub_10029FE38(v352, v352[1]);
  if (v1144 == 1 && v1143 < 0)
  {
    operator delete(v1142[7]);
  }

  sub_10002074C(v1142, v1142[1]);
  if (v329 == 1 && v328 < 0)
  {
    operator delete(v327);
  }

  sub_10002074C(v323, v323[1]);
  sub_10029FE38(v383, v383[1]);
  if (v1148 == 1 && v1147 < 0)
  {
    operator delete(v1146[7]);
  }

  sub_10002074C(v1146, v1146[1]);
  if (v360 == 1 && v359 < 0)
  {
    operator delete(v358);
  }

  sub_10002074C(v354, v354[1]);
  sub_10029FE38(v414, v414[1]);
  if (v1152 == 1 && v1151 < 0)
  {
    operator delete(v1150[7]);
  }

  sub_10002074C(v1150, v1150[1]);
  if (v391 == 1 && v390 < 0)
  {
    operator delete(v389);
  }

  sub_10002074C(v385, v385[1]);
  sub_10029FE38(v445, v445[1]);
  if (v1156 == 1 && v1155 < 0)
  {
    operator delete(v1154[7]);
  }

  sub_10002074C(v1154, v1154[1]);
  if (v422 == 1 && v421 < 0)
  {
    operator delete(v420);
  }

  sub_10002074C(v416, v416[1]);
  sub_10029FE38(v476, v476[1]);
  if (v1160 == 1 && v1159 < 0)
  {
    operator delete(v1158[7]);
  }

  sub_10002074C(v1158, v1158[1]);
  if (v453 == 1 && v452 < 0)
  {
    operator delete(v451);
  }

  sub_10002074C(v447, v447[1]);
  sub_10029FE38(v507, v507[1]);
  if (v1164 == 1 && v1163 < 0)
  {
    operator delete(v1162[7]);
  }

  sub_10002074C(v1162, v1162[1]);
  if (v484 == 1 && v483 < 0)
  {
    operator delete(v482);
  }

  sub_10002074C(v478, v478[1]);
  sub_10029FE38(v538, v538[1]);
  if (v1168 == 1 && v1167 < 0)
  {
    operator delete(v1166[7]);
  }

  sub_10002074C(v1166, v1166[1]);
  if (v515 == 1 && v514 < 0)
  {
    operator delete(v513);
  }

  sub_10002074C(v509, v509[1]);
  sub_10029FE38(v569, v569[1]);
  if (v1172 == 1 && v1171 < 0)
  {
    operator delete(v1170[7]);
  }

  sub_10002074C(v1170, v1170[1]);
  if (v546 == 1 && v545 < 0)
  {
    operator delete(v544);
  }

  sub_10002074C(v540, v540[1]);
  sub_1002A17D0(v850, v850[1]);
  v8 = 432;
  do
  {
    sub_10029FE38(&v1228[v8 + 24], *&v1228[v8 + 32]);
    if (v1228[v8 + 23] < 0)
    {
      operator delete(*&v1228[v8]);
    }

    v8 -= 48;
  }

  while (v8);
  sub_10029FE38(v601, v601[1]);
  if (v1195 == 1 && v1194 < 0)
  {
    operator delete(v1193[7]);
  }

  sub_10002074C(v1193, v1193[1]);
  if (v578 == 1 && v577 < 0)
  {
    operator delete(v576);
  }

  sub_10002074C(v572, v572[1]);
  sub_10029FE38(v632, v632[1]);
  if (v1199 == 1 && v1198 < 0)
  {
    operator delete(v1197[7]);
  }

  sub_10002074C(v1197, v1197[1]);
  if (v609 == 1 && v608 < 0)
  {
    operator delete(v607);
  }

  sub_10002074C(v603, v603[1]);
  sub_10029FE38(v663, v663[1]);
  if (v1203 == 1 && v1202 < 0)
  {
    operator delete(v1201[7]);
  }

  sub_10002074C(v1201, v1201[1]);
  if (v640 == 1 && v639 < 0)
  {
    operator delete(v638);
  }

  sub_10002074C(v634, v634[1]);
  sub_10029FE38(v694, v694[1]);
  if (v1207 == 1 && v1206 < 0)
  {
    operator delete(v1205[7]);
  }

  sub_10002074C(v1205, v1205[1]);
  if (v671 == 1 && v670 < 0)
  {
    operator delete(v669);
  }

  sub_10002074C(v665, v665[1]);
  sub_10029FE38(v725, v725[1]);
  if (v1211 == 1 && v1210 < 0)
  {
    operator delete(v1209[7]);
  }

  sub_10002074C(v1209, v1209[1]);
  if (v702 == 1 && v701 < 0)
  {
    operator delete(v700);
  }

  sub_10002074C(v696, v696[1]);
  sub_10029FE38(v756, v756[1]);
  if (v1215 == 1 && v1214 < 0)
  {
    operator delete(v1213[7]);
  }

  sub_10002074C(v1213, v1213[1]);
  if (v733 == 1 && v732 < 0)
  {
    operator delete(v731);
  }

  sub_10002074C(v727, v727[1]);
  sub_10029FE38(v787, v787[1]);
  if (v1219 == 1 && v1218 < 0)
  {
    operator delete(v1217[7]);
  }

  sub_10002074C(v1217, v1217[1]);
  if (v764 == 1 && v763 < 0)
  {
    operator delete(v762);
  }

  sub_10002074C(v758, v758[1]);
  sub_10029FE38(v818, v818[1]);
  if (v1223 == 1 && v1222 < 0)
  {
    operator delete(v1221[7]);
  }

  sub_10002074C(v1221, v1221[1]);
  if (v795 == 1 && v794 < 0)
  {
    operator delete(v793);
  }

  sub_10002074C(v789, v789[1]);
  sub_10029FE38(v849, v849[1]);
  if (v1227 == 1 && v1226 < 0)
  {
    operator delete(v1225[7]);
  }

  sub_10002074C(v1225, v1225[1]);
  if (v826 == 1 && v825 < 0)
  {
    operator delete(v824);
  }

  sub_10002074C(v820, v820[1]);
  sub_1002A17D0(v1099, v1099[1]);
  v9 = 384;
  do
  {
    sub_10029FE38(&v1270[v9 + 24], *&v1270[v9 + 32]);
    if (v1270[v9 + 23] < 0)
    {
      operator delete(*&v1270[v9]);
    }

    v9 -= 48;
  }

  while (v9);
  sub_10029FE38(v881, v881[1]);
  if (v1241 == 1 && v1240 < 0)
  {
    operator delete(v1239[7]);
  }

  sub_10002074C(v1239, v1239[1]);
  if (v858 == 1 && v857 < 0)
  {
    operator delete(v856);
  }

  sub_10002074C(v852, v852[1]);
  sub_10029FE38(v912, v912[1]);
  if (v1245 == 1 && v1244 < 0)
  {
    operator delete(v1243[7]);
  }

  sub_10002074C(v1243, v1243[1]);
  if (v889 == 1 && v888 < 0)
  {
    operator delete(v887);
  }

  sub_10002074C(v883, v883[1]);
  sub_10029FE38(v943, v943[1]);
  if (v1249 == 1 && v1248 < 0)
  {
    operator delete(v1247[7]);
  }

  sub_10002074C(v1247, v1247[1]);
  if (v920 == 1 && v919 < 0)
  {
    operator delete(v918);
  }

  sub_10002074C(v914, v914[1]);
  sub_10029FE38(v974, v974[1]);
  if (v1253 == 1 && v1252 < 0)
  {
    operator delete(v1251[7]);
  }

  sub_10002074C(v1251, v1251[1]);
  if (v951 == 1 && v950 < 0)
  {
    operator delete(v949);
  }

  sub_10002074C(v945, v945[1]);
  sub_10029FE38(v1005, v1005[1]);
  if (v1257 == 1 && v1256 < 0)
  {
    operator delete(v1255[7]);
  }

  sub_10002074C(v1255, v1255[1]);
  if (v982 == 1 && v981 < 0)
  {
    operator delete(v980);
  }

  sub_10002074C(v976, v976[1]);
  sub_10029FE38(v1036, v1036[1]);
  if (v1261 == 1 && v1260 < 0)
  {
    operator delete(v1259[7]);
  }

  sub_10002074C(v1259, v1259[1]);
  if (v1013 == 1 && v1012 < 0)
  {
    operator delete(v1011);
  }

  sub_10002074C(v1007, v1007[1]);
  sub_10029FE38(v1067, v1067[1]);
  if (v1265 == 1 && v1264 < 0)
  {
    operator delete(v1263[7]);
  }

  sub_10002074C(v1263, v1263[1]);
  if (v1044 == 1 && v1043 < 0)
  {
    operator delete(v1042);
  }

  sub_10002074C(v1038, v1038[1]);
  sub_10029FE38(v1098, v1098[1]);
  if (v1269 == 1 && v1268 < 0)
  {
    operator delete(v1267[7]);
  }

  sub_10002074C(v1267, v1267[1]);
  if (v1075 == 1 && v1074 < 0)
  {
    operator delete(v1073);
  }

  sub_10002074C(v1069, v1069[1]);
  return __cxa_atexit(sub_10029B634, &qword_1009FA078, &_mh_execute_header);
}