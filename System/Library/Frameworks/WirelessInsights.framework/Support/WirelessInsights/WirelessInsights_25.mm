off_t sub_1001FA3E0(uint64_t a1, void *a2)
{
  v3 = a1;
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (*(a1 + 23) < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v5) < 0)
  {
    sub_10020C448();
    return -1;
  }

  if ((v5.st_mode & 0xF000) != 0x8000)
  {
    sub_1001F7DC4(78, v3, a2, "boost::filesystem::file_size");
    return -1;
  }

  return v5.st_size;
}

__darwin_time_t sub_1001FA478(const char *a1, void *a2)
{
  if (a2)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if ((stat(a1, &v3) & 0x80000000) == 0)
  {
    return v3.st_mtimespec.tv_sec;
  }

  sub_10020C478();
  return 0x8000000000000000;
}

uint64_t sub_1001FA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1001F7DC4(a1, v5, v4, a4);
}

int *sub_1001FA4FC()
{

  return __error();
}

uint64_t sub_1001FA514(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 23))
    {
      return 0;
    }

    v2 = a1 + v1;
LABEL_6:
    if (*(v2 - 1) != 47)
    {
      std::string::push_back(a1, 47);
      return v1;
    }

    return 0;
  }

  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1 + v1;
    goto LABEL_6;
  }

  return v1;
}

void sub_1001FA574(uint64_t a1, std::string *a2)
{
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v5 = a2;
    if (a1 == a2)
    {
      if (v3 < 0)
      {
        sub_10000FFF8(&__n, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        __n = *a2;
      }

      sub_1001FA574(a1, &__n);
      if (SHIBYTE(__n.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__n.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (v3 >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = a2->__r_.__value_.__r.__words[0];
      }

      __n.__r_.__value_.__r.__words[0] = 0;
      if (sub_1001FA738(v6, size, &__n) < size)
      {
LABEL_25:
        std::string::operator=(a1, v5);
        return;
      }

      v15 = 0;
      v7 = *(a1 + 23);
      if ((v7 & 0x8000000000000000) != 0)
      {
        v8 = *a1;
        v7 = *(a1 + 8);
      }

      else
      {
        v8 = a1;
      }

      sub_1001FA738(v8, v7, &v15);
      v9 = __n.__r_.__value_.__r.__words[0];
      if (__n.__r_.__value_.__r.__words[0])
      {
        if (__n.__r_.__value_.__r.__words[0] != v15)
        {
          goto LABEL_25;
        }

        v10 = a1;
        if (*(a1 + 23) < 0)
        {
          v10 = *a1;
        }

        v11 = SHIBYTE(v5->__r_.__value_.__r.__words[2]);
        v12 = v5->__r_.__value_.__r.__words[0];
        v13 = v11 >= 0 ? v5 : v5->__r_.__value_.__r.__words[0];
        if (memcmp(v10, v13, __n.__r_.__value_.__r.__words[0]))
        {
          goto LABEL_25;
        }
      }

      else
      {
        LOBYTE(v11) = *(&v5->__r_.__value_.__s + 23);
        v12 = v5->__r_.__value_.__r.__words[0];
      }

      if ((v11 & 0x80u) != 0)
      {
        v5 = v12;
      }

      if (v5->__r_.__value_.__s.__data_[v9] != 47)
      {
        sub_1001FA514(a1);
      }

      std::string::append(a1, v5 + v9, size - v9);
    }
  }

  else if (sub_1001FA90C(a1))
  {

    std::string::push_back(a1, 47);
  }
}

void sub_1001FA71C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_1001FA738(_BYTE *__s, size_t a2, size_t *a3)
{
  *a3 = 0;
  if (a2 && *__s == 47)
  {
    if (a2 == 1 || __s[1] != 47)
    {
      return 0;
    }

    v4 = a2 - 2;
    if (a2 != 2)
    {
      v5 = __s + 2;
      if (__s[2] == 47)
      {
        return 0;
      }

      v7 = memchr(v5, 47, v4);
      v8 = v7 - v5;
      if (!v7)
      {
        v8 = v4;
      }

      a2 = v8 + 2;
    }

    *a3 = a2;
  }

  return a2;
}

std::string *sub_1001FA7D4(std::string *a1)
{
  v2 = sub_1001FA82C(a1);
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 < 0)
  {
    v5 = a1->__r_.__value_.__r.__words[0];
    v4 = (a1->__r_.__value_.__r.__words[0] + a1->__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = a1 + v3;
    v5 = a1;
  }

  std::string::erase(a1, v2, v4 - (v5 + v2));
  return a1;
}

size_t sub_1001FA82C(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v16 = 0;
  v3 = sub_1001FA738(a1, v2, &v16);
  v4 = v1[23];
  if (v2 >= v16)
  {
    v5 = v16;
  }

  else
  {
    v5 = v2;
  }

  if (v4 >= 0)
  {
    v6 = v1;
  }

  else
  {
    v6 = *v1;
  }

  v7 = v6 - 1;
  v8 = v2;
  while (v8 > v16)
  {
    v9 = v8 - 1;
    v10 = v7[v8--];
    if (v10 == 47)
    {
      v5 = v9 + 1;
      break;
    }
  }

  if (v5 >= v16)
  {
    v11 = v16;
  }

  else
  {
    v11 = v5;
  }

  if (v4 >= 0)
  {
    v12 = v1;
  }

  else
  {
    v12 = *v1;
  }

  v13 = v12 - 1;
  v14 = v5;
  while (v14 > v16)
  {
    if (v13[v14] != 47)
    {
      return v14;
    }

    if (v3 == --v14)
    {
      if (v2 == v5)
      {
        return v3;
      }

      else
      {
        return v3 + 1;
      }
    }
  }

  if (v2 == v5)
  {
    return 0;
  }

  else
  {
    return v11;
  }
}

size_t sub_1001FA90C(_BYTE *a1)
{
  v1 = a1;
  v2 = a1[23];
  if ((v2 & 0x8000000000000000) != 0)
  {
    a1 = *a1;
    v2 = *(v1 + 1);
  }

  v10 = 0;
  sub_1001FA738(a1, v2, &v10);
  if (v2 >= v10)
  {
    v3 = v10;
  }

  else
  {
    v3 = v2;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  v5 = v4 - 1;
  v6 = v2;
  while (v6 > v10)
  {
    v7 = v6 - 1;
    v8 = v5[v6--];
    if (v8 == 47)
    {
      v3 = v7 + 1;
      return v2 - v3;
    }
  }

  return v2 - v3;
}

uint64_t sub_1001FA9A0(uint64_t a1)
{
  if (qword_1002DBE90)
  {
    std::locale::~locale(qword_1002DBE90);
    operator delete(v2);
  }

  qword_1002DBE90 = 0;
  return a1;
}

uint64_t sub_1001FA9DC()
{
  __cxa_atexit(sub_1001FA9A0, &unk_1002DBE58, &_mh_execute_header);
  sub_1001F86C4(qword_1002DBE60, ".");
  __cxa_atexit(sub_1001F7D90, qword_1002DBE60, &_mh_execute_header);
  sub_1001F86C4(qword_1002DBE78, "..");

  return __cxa_atexit(sub_1001F7D90, qword_1002DBE78, &_mh_execute_header);
}

void sub_1001FAB18()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FAB54()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FABD0()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FAC0C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FACE4()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMBasebandMetricsController]:#D Metric name: %@, payload %@", v2, 0x16u);
}

void sub_1001FADD0()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FAE0C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FAE48()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FAE84(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FAED8()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FAF48(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FAF9C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCongestionModel]:#D Failed to extract FMCongestionCell from cell info for context %@: %@", buf, 0x16u);
}

void sub_1001FB004(uint64_t a1, uint64_t a2)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001FB048()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB0B8()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB128()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB198()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB208()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB278()
{
  sub_100023B60();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1001FB2FC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB36C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB3A8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB3E4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB420()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB45C()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCongestionModel]:Ignoring duplicate congestion metric for cell %@: %@", v2, 0x16u);
}

void sub_1001FB4E4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB520()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB55C()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB5CC()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB63C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB678()
{
  sub_100023B60();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001FB6F8()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB768()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FB84C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB888()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FB8C4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FBAC8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMRegulatoryDomainController]:#D Regulatory domain estimates: %@", &v2, 0xCu);
}

void sub_1001FBBE8(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMUtil]:#D DayOfWeek is larger than INT16_MAX: %ld", &v2, 0xCu);
}

void sub_1001FBD30(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMUtil]:#D TimeOfDay is larger than INT16_MAX: %ld", &v2, 0xCu);
}

void sub_1001FBDA8(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMUtil]:Exception while generating JSON: %@", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1001FBE5C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMUtil]:Failed to convert object %@ to JSON data: %@", &v3, 0x16u);
}

void sub_1001FBEE4()
{
  if (__cxa_guard_acquire(byte_1002D82D8))
  {
    qword_1002D82D0 = dispatch_queue_create("com.apple.wirelessinsightsd.FederatedMobility.FMGEOServicesHandler", 0);

    __cxa_guard_release(byte_1002D82D8);
  }
}

void sub_1001FBF84()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FBFF4()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC064()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC0A0()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC110()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC180()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC1BC()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC1F8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC234()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC2A4()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC2E0()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC31C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatDataUsageMetric:Failed to fetch current data context %@", v5);
}

void sub_1001FC360()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Populating info for context %@", v5);
}

void sub_1001FC3A4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatDataUsageMetric:Failed to fetch registration state: %@", v5);
}

void sub_1001FC3E8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatDataUsageMetric:Failed to fetch low data mode: %@", v5);
}

void sub_1001FC42C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatDataUsageMetric:Failed to fetch interface expensive: %@", v5);
}

void sub_1001FC470()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatDataUsageMetric:Failed to fetch registration display status: %@", v5);
}

void sub_1001FC4B4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC524()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC560()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "RatDataUsageMetric:#D primary interface: %@, secondary interface %@", v2, 0x16u);
}

void sub_1001FC5E4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC620()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC65C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FC698()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Received registration state update for non-data context %@", v5);
}

void sub_1001FC6DC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Received RAT update for non-data context %@", v5);
}

void sub_1001FC720()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Received low data mode update for non-data context %@", v5);
}

void sub_1001FC764()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Received interface expensive update for non-data context %@", v5);
}

void sub_1001FC7A8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatDataUsageMetric:#D Received satellite registration state update for non-data context %@", v5);
}

void sub_1001FC7EC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FC944(os_log_t log, double a2, double a3)
{
  v3 = 134545921;
  v4 = a2;
  v5 = 2053;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D Handling received results for latitude: %{sensitive}lf, longitude: %{sensitive}lf", &v3, 0x16u);
}

void sub_1001FCAD0(int a1, NSObject *a2)
{
  v3[0] = 67109378;
  v3[1] = 0;
  v4 = 2080;
  v5 = sub_100038F0C(a1);
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "metric:#D needsUpdate = %{BOOL}d, srv_status = %s", v3, 0x12u);
}

void sub_1001FCB68(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "metric:#D Unsupported metric id = 0x%x", v2, 8u);
}

void sub_1001FCBE0(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "metric:#D Could not get average_rsrp from the tile for mcc = %u, mnc = %u", v3, 0xEu);
}

void sub_1001FCC68(uint64_t *a1, NSObject *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  v3 = 136315138;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "metric:#D Failed to infer mcc and mnc from serving_plmn = %s", &v3, 0xCu);
}

void sub_1001FCCF0()
{
  sub_10003B714();
  if (v3 != v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = v0;
  }

  LODWORD(v6) = 136315138;
  HIDWORD(v6) = v5;
  sub_10003B724(&_mh_execute_header, v0, v1, "file.helpers:Unable to open metric file %s (fail).", v6);
}

void sub_1001FCD64()
{
  sub_10003B714();
  if (v3 != v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = v0;
  }

  LODWORD(v6) = 136315138;
  HIDWORD(v6) = v5;
  sub_10003B724(&_mh_execute_header, v0, v1, "file.helpers:Unable to open metric file %s for reading (fail)", v6);
}

void sub_1001FCDD8(uint64_t a1, uint64_t a2, NSObject *a3)
{
  sub_10003B714();
  if (v6 != v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  v9 = *__error();
  v10 = 136315394;
  v11 = v8;
  v12 = 1024;
  v13 = v9;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "file.helpers:Delete failed for %s (errno=%d)", &v10, 0x12u);
}

void sub_1001FCE7C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1001FCEDC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+OOSPredictor]:Error while saving OutOfServiceAreas after next visit update: %@", buf, 0xCu);
}

void sub_1001FCFD0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#D Data sim registration status changed to %@", &v2, 0xCu);
}

void sub_1001FD048()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD0B8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD0F4(void *a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Initializing context %@ with home PLMN %@", v5, 0x16u);
}

void sub_1001FD23C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FD300(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Failed to extract FMServingCell from cell info for context %@: %@", v4, 0x16u);
}

void sub_1001FD358()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD3C8()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD438()
{
  sub_100023B60();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001FD4B8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FD504()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD540()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD57C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD5EC()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD628()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD698()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD708(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  v5 = *(a2 + 52);
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMTimeSeriesModel]:#D Updating congestion state for data context %@ to %{BOOL}d", buf, 0x12u);
}

void sub_1001FD774()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FD85C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD8CC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD93C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FD9AC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FDA1C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDA58(char a1, _DWORD *a2)
{
  *a2 = 67109120;
  a2[1] = a1 & 1;
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1001FDAA0(_DWORD *a1, int a2)
{
  *a1 = 67109120;
  a1[1] = a2;
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1001FDAE4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDB20()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDB5C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FDBA8()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FDC4C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FDC98()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FDCE4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDD20(char a1, _DWORD *a2)
{
  *a2 = 67109120;
  a2[1] = a1 & 1;
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1001FDD68()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDDA4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FDE7C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FDEB8()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1001FDF5C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMTimeSeriesModel]:Could not convert event timestamp to date, aborting", buf, 2u);
}

void sub_1001FE0A0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CongestionPredictor]:Error while fetching CongestionArea: %@", v5);
}

void sub_1001FE180(uint8_t *buf, int a2, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 1024;
  *(buf + 10) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+CongestionPredictor]:#D a: %d, b: %d", buf, 0xEu);
}

void sub_1001FE1D8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CongestionPredictor]:Error while fetching bad cells: %@", v5);
}

void sub_1001FE21C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CongestionPredictor]:Error while fetching good cells: %@", v5);
}

void sub_1001FE294()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CongestionPredictor]:Error while fetching CongestionOccurrences: %@", v5);
}

void sub_1001FE2D8(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "main:failed to initialize temporary directory (%d): %s", v5, 0x12u);
}

void sub_1001FE384(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "main:Error setting jetsam priority: %d", v2, 8u);
}

void sub_1001FE51C(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10002FD8C(&_mh_execute_header, a2, a3, "FederatedMobility[FMCoreTelephonyController]:Error while fetching registration status: %@", a2);
}

void sub_1001FE568(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreTelephonyController]:#D Cannot retrieve context for UUID %@", &v2, 0xCu);
}

void sub_1001FE6F8(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10002FD8C(&_mh_execute_header, a2, a3, "FederatedMobility[FMCoreTelephonyController]:Unable to fetch subscription info: %@", a2);
}

void sub_1001FE8A4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "SignalBarMetric:Unable to fetch the subscription info: %@", v5);
}

void sub_1001FE8E8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "SignalBarMetric:Unable to fetch current data subscription context: %@", v5);
}

void sub_1001FE998()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100055970(&_mh_execute_header, v5, v3, "SignalBarMetric:#D Skipping initialization for existing context %@", v4);
}

void sub_1001FE9E8()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100055970(&_mh_execute_header, v5, v3, "SignalBarMetric:#D Initializing data for context %@", v4);
}

void sub_1001FEA38()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100055970(&_mh_execute_header, v5, v3, "SignalBarMetric:#D Ignoring non-SIM context %@", v4);
}

void sub_1001FEABC()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Unable to extract RAT for context %@, setting RAT to default value %@", v4, v5);
}

void sub_1001FEB00(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Successfully received RAT %@ for context %@", v4, v5);
}

void sub_1001FEB4C()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Unable to extract serving cell info for context %@, setting RAT to default value %@", v4, v5);
}

void sub_1001FEB90()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Unable to extract cell info for context %@, setting RAT to default value %@", v4, v5);
}

void sub_1001FEBD4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "SignalBarMetric:Unable to allocate state for context %@", v5);
}

void sub_1001FEC58()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Signal strength of context %@ changed: %@ bars", v4, v5);
}

void sub_1001FEC9C()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Received signal strength change callback. Triggering the metric for old signal strength: %@, setting new signal strength: %@", v4, v5);
}

void sub_1001FECE0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Received signal strength callback for context %@ but signal strength did not change", v5);
}

void sub_1001FED24()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Received signal strength change callback for unknown context: %@", v5);
}

void sub_1001FED9C()
{
  sub_100023B60();
  v3 = 2048;
  v4 = v0;
  v5 = 2048;
  v6 = 100;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "SignalBarMetric:#D Signal bar event duration (%llu ms = (int) %llu s) is less than %llu ms, not submitting a CA event", v2, 0x20u);
}

void sub_1001FEE98()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Received RAT change callback. Triggering the metric for old RAT: %@, setting new RAT: %@", v4, v5);
}

void sub_1001FEEDC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Received RAT change callback for unknown context: %@", v5);
}

void sub_1001FEF88()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "SignalBarMetric:Aborting PLMN change update due to error while converting MNC: %@", v5);
}

void sub_1001FEFCC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "SignalBarMetric:Aborting PLMN change update due to error while converting MCC: %@", v5);
}

void sub_1001FF010()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Received PLMN change callback for unknown context: %@", v5);
}

void sub_1001FF054()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "SignalBarMetric:#D Received display status change callback. Triggering the metric for old display status: %@, setting new display status: %@", v4, v5);
}

void sub_1001FF098()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Received display status change callback for unknown context: %@", v5);
}

void sub_1001FF110()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Current data context changed to %@, but we did not successfully initialize. Running initialization", v5);
}

void sub_1001FF154()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "SignalBarMetric:#D Current data context changed to %@", v5);
}

void sub_1001FF210(uint64_t a1, char *a2, uint8_t *buf, os_log_t log)
{
  if (a2[23] >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = v5;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D Received event : %s, payload = %s", buf, 0x16u);
  if (a2[23] < 0)
  {
    operator delete(*a2);
  }
}

void sub_1001FF2A8(os_log_t log)
{
  v1 = 138412290;
  v2 = off_1002D4F80;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D %@: Initializing WISTrialExperimentsManager", &v1, 0xCu);
}

void sub_1001FF32C(os_log_t log)
{
  v1 = 138412290;
  v2 = off_1002D4F80;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D %@: initialized trialClient for Wireless project ID", &v1, 0xCu);
}

void sub_1001FF3E8(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "file:#D Metric File(%s, %d): skipping because no such file id", buf, 0x12u);
}

void sub_1001FF440(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  if (*(a1 + 23) >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  v5 = (*(*a2 + 16))(a2);
  v6 = 136315394;
  v7 = v4;
  v8 = 2080;
  v9 = v5;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "snapshotter:Error linking log files from '%s': %s", &v6, 0x16u);
}

void sub_1001FF50C(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_10005DDFC())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = (*(*v1 + 16))(v1);
    sub_10005DDDC(&_mh_execute_header, v2, v3, "snapshotter:#E EXCEPT: filesystem_error('%s')", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

void sub_1001FF5B8(NSObject **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_1001FF5F4(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "agg:#D Skipping coverage stats update for primary config profile 0x%x", v2, 8u);
}

void sub_1001FF66C(int *a1, int *a2, os_log_t log)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  v6[0] = 67109632;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  v9 = 1024;
  v10 = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "agg:Error adding new trigger to GeoServicesRequestStatus; already exists! Trigger(cid=0x%x, trid=0x%x, sid=%u)", v6, 0x14u);
}

void sub_1001FF704(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "agg:Unable to create the cellularServiceStatus object, cannot update the CellularCoverage stats", buf, 2u);
}

void sub_1001FF744(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "agg:Unable to get the updated metric buffer, cannot update the CellularCoverage stats", buf, 2u);
}

void sub_1001FF784(int a1, int a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "agg:#D Got trigger from source 0x%x with triggering component id 0x%x (they're different!).  Using triggering component id.", v3, 0xEu);
}

void sub_1001FF80C(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "timer:#D ****** Check in: Existing criteria %s *********", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_1001FF880()
{
  sub_100068B74(__stack_chk_guard);
  sub_100068B98();
  sub_100068BB0(&_mh_execute_header, v0, v1, "config:#D Internal Hotship detected: %d; (%s)", v2, v3);
}

void sub_1001FF8E8()
{
  sub_100068B74(__stack_chk_guard);
  sub_100068B98();
  sub_100068BB0(&_mh_execute_header, v0, v1, "config:#D Carrier Hotship detected: %d; (%s)", v2, v3);
}

void sub_1001FF9F0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "caobserver:Error while parsing received CA event: %@", buf, 0xCu);
}

void sub_1001FFA48(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "caobserver:WISCoreAnalyticsObserver received nil or invalid(%@) event: %@", a3, 0x16u);
}

void sub_1001FFAC0()
{
  sub_10006F7B4();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001FFB34()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FFBA4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1001FFC14()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FFC60()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10006F7DC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FFD2C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:Failed to get tags for events %@", &v3, 0xCu);
}

void sub_1001FFDDC(_BYTE *a1, _BYTE *a2)
{
  sub_10006F7CC(a1, a2);
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1001FFE10(_BYTE *a1, _BYTE *a2)
{
  sub_10006F7CC(a1, a2);
  sub_10006F7DC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1001FFE44()
{
  sub_10006F7B4();
  sub_10006F7DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001FFEB8()
{
  sub_10006F7B4();
  sub_10006F7DC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1001FFF2C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10006F7DC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1001FFF78(uint64_t a1, uint64_t a2)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_100029860();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1001FFFBC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10006F7DC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100200008(uint64_t a1, uint64_t a2)
{
  sub_10002FD64(a1, a2, 5.778e-34);
  *(v2 + 12) = 2048;
  *(v2 + 14) = v3;
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeriesPredictor]:#D Generating tags for anomaly %@, based on %lu events", v4, 0x16u);
}

void sub_10020005C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100200124(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_100200178()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002001B4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002001F0(_BYTE *a1, _BYTE *a2)
{
  sub_10006F7CC(a1, a2);
  sub_10006F7DC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100200224(_BYTE *a1, _BYTE *a2)
{
  sub_10006F7CC(a1, a2);
  sub_10006F7DC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_100200258()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1002002AC()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1002003B8(char a1, char a2, os_log_t log)
{
  v3 = "kOne";
  if (a2)
  {
    v3 = "kTwo";
  }

  if (a1 == 2)
  {
    v4 = "kUnknown";
  }

  else
  {
    v4 = v3;
  }

  v5 = 136315138;
  v6 = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D Received cellular status on simSlot : %s", &v5, 0xCu);
}

void sub_100200460(os_log_t log)
{
  v1 = 136315138;
  v2 = "kUnknown";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#D Simslot in the payload is %s", &v1, 0xCu);
}

void sub_100200518(char a1, NSObject *a2)
{
  v2 = "kOne";
  if (a1 == 1)
  {
    v2 = "kTwo";
  }

  if (a1 == 2)
  {
    v3 = "kUnknown";
  }

  else
  {
    v3 = v2;
  }

  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Timer is found without an active service anomaly on slot : %s", &v4, 0xCu);
}

void sub_1002006C4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100200908(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData]:Error while loading persistent store %@: %@", buf, 0x16u);
}

void sub_100200970()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100200A14()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData]:No or invalid persistent store in coordinator, aborting (%@, %@)", v2, 0x16u);
}

void sub_100200B1C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching configuration: %@", v5);
}

void sub_100200C40()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving Configuration: %@", v5);
}

void sub_100200C84()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error fetching number of Configurations: %@", v5);
}

void sub_100200CC8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching Configurations to delete: %@", v5);
}

void sub_100200D0C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving after removing Configurations: %@", v5);
}

void sub_100200D50()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving updated ServingCell: %@", v5);
}

void sub_100200DC8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving ServingCell: %@", v5);
}

void sub_100200E0C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:#D Fetching ServingCell with predicate %@", v5);
}

void sub_100200E50()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching ServingCell: %@", v5);
}

void sub_100200EFC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching OutOfServiceAreas without nextVisit: %@", v5);
}

void sub_100200F40()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving updated OutOfServiceArea: %@", v5);
}

void sub_100200FEC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving OutOfServiceArea: %@", v5);
}

void sub_100201030()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching OutOfServiceArea: %@", v5);
}

void sub_100201110()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving LocationOfInterest: %@", v5);
}

void sub_100201154()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.9284e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:#D Fetching LocationOfInterest with predicate %{sensitive}@", v5);
}

void sub_100201198()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching location of interest: %@", v5);
}

void sub_100201244()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.9284e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:#D No matching LocationOfInterest found for predicate %{sensitive}@", v5);
}

void sub_100201288()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error fetching number of OOS entities: %@", v5);
}

void sub_1002012CC()
{
  sub_100023B60();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData]:#D Number of OOS areas in database (%lu) is below or at threshold (%lu)", v2, 0x16u);
}

void sub_100201350()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching OOS areas to delete: %@", v5);
}

void sub_1002013C8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching orphaned serving cells: %@", v5);
}

void sub_10020140C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving after removing orphaned serving cells: %@", v5);
}

void sub_100201484()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching orphaned locations of interest: %@", v5);
}

void sub_1002014C8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving after removing orphaned locations of interest: %@", v5);
}

void sub_100201540()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:#D Fetching OOS areas with predicate %@", v5);
}

void sub_100201584()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:#D Fetching OOS durations with predicate %@", v5);
}

void sub_1002015C8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while fetching OOS durations to delete: %@", v5);
}

void sub_10020160C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving after removing OOS durations: %@", v5);
}

void sub_1002016EC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error fetching number of OOS Areas: %@", v5);
}

void sub_100201730()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error fetching number of OOS Durations: %@", v5);
}

void sub_100201774()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error fetching OOS area with highest seen count: %@", v5);
}

void sub_1002017B8(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = *(qword_1002DBE98 + 136);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData]:Got an exception while executing CoreData block: %@", &v3, 0xCu);
  }

  objc_end_catch();
}

void sub_1002018A0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData]:Error while saving after removing OOS areas: %@", v5);
}

void sub_1002018EC()
{
  if (__cxa_guard_acquire(byte_1002D8340))
  {
    qword_1002D8348 = 850045863;
    xmmword_1002D8350 = 0u;
    unk_1002D8360 = 0u;
    xmmword_1002D8370 = 0u;
    qword_1002D8380 = 0;

    __cxa_guard_release(byte_1002D8340);
  }
}

void sub_100201958(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "TelephonyStateRelay:Received unexpected CT notification %@", &v2, 0xCu);
}

void sub_100201AD4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "TelephonyStateRelay:#D Capabilities changed for context %@: %@", v4, 0x16u);
}

void sub_100201C64(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10002FD8C(&_mh_execute_header, a2, a3, "TelephonyStateRelay:Error while copying registration status: %@", a2);
}

void sub_100201D18(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10002FD8C(&_mh_execute_header, a2, a3, "TelephonyStateRelay:Error while fetching airplane mode status after callback: %@", a2);
}

void sub_100201D64(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_10002FD8C(&_mh_execute_header, a2, a3, "TelephonyStateRelay:Error while fetching subscriptions info: %@", a2);
}

void sub_100201E18(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "TelephonyStateRelay:#D Callback for context %@, testing call with localSenderIdentityUUID %@", v4, 0x16u);
}

void sub_100201F18(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMOOSPredictor]:Error while fetching OutOfServiceArea: %@", buf, 0xCu);
}

void sub_100201FD8(uint8_t *buf, int a2, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a2;
  *(buf + 4) = 1024;
  *(buf + 10) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSPredictor]:#D a: %d, b: %d", buf, 0xEu);
}

void sub_100202030(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSPredictor]:#D Sorting next cells using seen count: %{BOOL}d", v2, 8u);
}

void sub_1002020E0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:#D Fetching CellMapNode with predicate %@", v5);
}

void sub_100202124()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100202194()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while fetching CellMapNode: %@", v5);
}

void sub_1002021D8()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+CellMap]:Non-matching GCI while attempting to update node %@ with metric %@", v2, 0x16u);
}

void sub_10020225C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while saving CellMapNode after updating: %@", v5);
}

void sub_1002022A0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while saving CellMapEdge after updating: %@", v5);
}

void sub_1002022E4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:#D Fetching CellMapEdges with predicate %@", v5);
}

void sub_100202328()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100202398()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100202408()
{
  sub_100023B60();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_10008793C(&_mh_execute_header, v0, v1, "FederatedMobility[FMCoreData+CellMap]:#D Number of CellMapNodes in database (%lu) is below or at threshold (%lu)", v2, v3);
}

void sub_10020247C()
{
  sub_100023B60();
  WORD2(v3) = 2048;
  HIWORD(v3) = v0;
  sub_10008793C(&_mh_execute_header, v0, v1, "FederatedMobility[FMCoreData+CellMap]:#D Deleting %lu CellMapNodes over the threshold (%lu)", v2, v3);
}

void sub_1002024F0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:#D Deleting CellMapNodes and associated edges with predicate %@", v5);
}

void sub_100202534()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:#D Deleting CellMapEdges with predicate %@", v5);
}

void sub_100202578(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+CellMap]:Error while deleting %@: %@", v4, 0x16u);
}

void sub_1002025D0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000427FC(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+CellMap]:Error while saving after removing %@: %@", v4, 0x16u);
}

void sub_10020265C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while saving CellMapNode: %@", v5);
}

void sub_1002026D4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while saving CellMapEdge: %@", v5);
}

void sub_100202718()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:#D Fetching CellMapEdge with predicate %@", v5);
}

void sub_10020275C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002027CC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+CellMap]:Error while fetching CellMapEdge: %@", v5);
}

void sub_100202810()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020284C()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002028BC()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002029A4()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002029E0()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100202A1C(void *a1, uint64_t a2)
{
  v3 = __cxa_begin_catch(a1);
  v4 = *(a2 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (*(*v3 + 16))(v3);
    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "conv:#E Runtime error when converting metric to XPC: %s", &v6, 0xCu);
  }
}

void sub_100202AE8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100202B58()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100202C08(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSModel]:#D Updating context %@", buf, 0xCu);
}

void sub_100202E10()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSModel]:#D Received display status change for context %@: %@", v2, 0x16u);
}

void sub_100202E94()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100202F04()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100202F74()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100202FE4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203020()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203090(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMOOSModel]:#D Failed to extract FMServingCell from cell info for context %@: %@", buf, 0x16u);
}

void sub_1002030F8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203134()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002031A4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203214()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203284()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002032F4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203364()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002033A0()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203488()
{
  sub_100098E28();
  *v1 = 136380675;
  *(v1 + 4) = v2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[WISToCAEventSanitizer] Failed to process array of strings: %{private}s", v3, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1002034EC()
{
  sub_100098E28();
  *v1 = 136380675;
  *(v1 + 4) = v2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[WISToCAEventSanitizer] Failed to process array of bytes: %{private}s", v3, 0xCu);
  if (*(v0 + 23) < 0)
  {
    operator delete(*v0);
  }
}

void sub_1002036D0(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreLocationController]:CoreLocation encountered an error: %@ (code %ld)", buf, 0x16u);
}

void sub_100203738()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203774()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002037B0()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002037EC()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203828()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203864()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002038A0(void *a1, NSObject *a2)
{
  v4 = 134218240;
  v5 = [a1 numAirplaneModeToggles];
  v6 = 1024;
  v7 = [a1 isAirplaneModeActive];
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "DailyWirelessUsageMetric:#D handleAirplaneModeStatusChanged: numAirplaneModeToggles %lu, isAirplaneModeActive %{BOOL}d", &v4, 0x12u);
}

void sub_100203950(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  sub_100055954(&_mh_execute_header, "DailyWirelessUsageMetric:#D Registration status changed for context %@: %@", a3, a4);
}

void sub_1002039AC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "DailyWirelessUsageMetric:#D Ignoring registration state for context %@, airplane mode is active", v5);
}

void sub_1002039F0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "DailyWirelessUsageMetric:#D Got registration state change for non-data context %@", v5);
}

void sub_100203A34()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "DailyWirelessUsageMetric:#D Data status changed for context %@: %@", v2, 0x16u);
}

void sub_100203AB8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "DailyWirelessUsageMetric:#D Got data status change for non-data context %@", v5);
}

void sub_100203AFC()
{
  sub_10002FD58();
  sub_10009E280(v1, v2, v3, 3.8521e-34);
  sub_100055954(&_mh_execute_header, "DailyWirelessUsageMetric:#D handleSignalStrengthChanged: numCellularSignalBarChanges %lu, currentCellularSignalBars %@", v4, v5);
}

void sub_100203B44()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "DailyWirelessUsageMetric:#D Received signal strength info without display bars for context %@", v5);
}

void sub_100203B88()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "DailyWirelessUsageMetric:#D Received nil signal strength info for context %@", v5);
}

void sub_100203BCC()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203C08()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203C44()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100203C80()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203CF0()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203D9C()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203E0C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a1 = 134218240;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  sub_100055954(&_mh_execute_header, "DailyWirelessUsageMetric:#D handleBasebandBootStateChangeWithState: numBasebandCrashes %lu, numBasebandMTBFCrashes %lu", a1, a4);
}

void sub_100203E58()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203EC8()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100203F38(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *a1 = 134217984;
  *(a1 + 4) = a2;
  sub_10002FD70(&_mh_execute_header, a2, a3, "DailyWirelessUsageMetric:#D handleABMServerStateChangedWithState: numCommCenterCrashes %lu", a1);
}

void sub_100203F74()
{
  sub_10002FD58();
  sub_10009E280(v1, v2, v3, 3.8521e-34);
  sub_100055954(&_mh_execute_header, "DailyWirelessUsageMetric:#D handleDataIconChanged: numCellularRATIconChanges %lu, currentDataIcon %@", v4, v5);
}

void sub_100203FBC()
{
  sub_100023B60();
  v3 = 1024;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "DailyWirelessUsageMetric:#D %@ changed to %{BOOL}d", v2, 0x12u);
}

void sub_100204044()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002040B4()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020419C()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020420C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020427C()
{
  sub_100023B60();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "DailyWirelessUsageMetric:Failed to retrieve registration status for context %@: %@", v2, 0x16u);
}

void sub_100204388()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002043C4()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204434()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002044A4()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002044E0()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020451C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204558(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1002045AC()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020461C(void *a1, uint64_t a2)
{
  *a2 = 138412290;
  *(a2 + 4) = a1;
  sub_100029860();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100204670()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002046E0()
{
  sub_100023B60();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100204760()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002047D0()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002048B4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204924()
{
  sub_100023B60();
  sub_100029860();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1002049A4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204A14()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204A84()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204AC0()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204AFC()
{
  sub_100023B60();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100204B6C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204C24(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMConfiguration]:Missing configuration value for key %@", &v2, 0xCu);
}

void sub_100204C9C(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMConfiguration]:#D Is internal build: %{BOOL}d", v2, 8u);
}

void sub_100204D18(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMConfiguration]:One or more errors while initializing FMConfiguration: %@. Aborting", buf, 0xCu);
}

void sub_100204D70(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMConfiguration]:#D FedMobility Config: %@: %@", &v3, 0x16u);
}

void sub_100204DF8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMConfiguration]:Key %@ missing in active config during compatibility check", &v2, 0xCu);
}

void sub_100204E70()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204EAC()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204EE8()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100204F24()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205014()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205178(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+CellMapPredictor]:#D No learnings for GCI %@", &v3, 0xCu);
}

void sub_1002051F4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+CellMapPredictor]:CellMapNode does not have as many GCI components than expected: %@", buf, 0xCu);
}

void sub_100205360(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeries]:Can't create TSEvent for unknown type %d", v2, 8u);
}

void sub_1002053D8(__int16 a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeries]:Can't create TSEvent for unknown type %d", buf, 8u);
}

void sub_100205424()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving TSEvent: %@", v5);
}

void sub_100205468(__int16 a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeries]:#D Successfully stored new event of type %d", buf, 8u);
}

void sub_100205528(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeries]:Failed to create TSEvent", buf, 2u);
}

void sub_100205568(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+TimeSeries]:Event timestamp after anomaly timestamp, skipping", buf, 2u);
}

void sub_1002055A8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving TSAnomaly: %@", v5);
}

void sub_1002055EC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100205690()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving TSPrediction: %@", v5);
}

void sub_1002056D4()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002057AC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error fetching number of TSAnomaly entities: %@", v5);
}

void sub_1002057F0()
{
  sub_100023B60();
  v3 = 2048;
  v4 = v0;
  _os_log_debug_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeries]:#D Number of TSAnomalies in database (%lu) is below or at threshold (%lu)", v2, 0x16u);
}

void sub_100205874()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while fetching TSAnomalies to delete: %@", v5);
}

void sub_1002058EC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving after removing TSAnomaly: %@", v5);
}

void sub_100205930()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while fetching orphaned TSPredictions: %@", v5);
}

void sub_100205974()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving after removing orphaned TSPredictions: %@", v5);
}

void sub_1002059B8()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002059F4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while fetching orphaned TSAnomalyTags: %@", v5);
}

void sub_100205A38()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while saving after removing orphaned TSAnomalyTags: %@", v5);
}

void sub_100205A7C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205AB8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+TimeSeries]:#D Fetching anomalies with predicate %@", v4, 0xCu);
}

void sub_100205B08()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+TimeSeries]:Error while fetching anomalies to delete: %@", v5);
}

void sub_100205B80(char *a1, void *a2, NSObject *a3)
{
  if (*a1 < 0)
  {
    a2 = *a2;
  }

  LODWORD(v3) = 136315138;
  HIDWORD(v3) = a2;
  sub_1000C45E0(&_mh_execute_header, a2, a3, "WISABC:#D Event %s has no ABC rule", v3);
}

void sub_100205C70()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205CAC()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205CE8()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205D24()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205D60()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205D9C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205DD8()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205E14(uint64_t a1)
{
  if (__cxa_guard_acquire(byte_1002D8590))
  {
    if (*(a1 + 23) >= 0)
    {
      v2 = a1;
    }

    else
    {
      v2 = *a1;
    }

    qword_1002D8588 = v2;
    __cxa_guard_release(byte_1002D8590);
  }
}

void sub_100205E64()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205EA0(char *a1, uint64_t *a2)
{
  if (__cxa_guard_acquire(&qword_1002D85A0))
  {
    if (*a1 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    qword_1002D8598 = v4;
    __cxa_guard_release(&qword_1002D85A0);
  }
}

void sub_100205EF4()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205F30()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205F6C()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205FA8()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100205FE4()
{
  sub_100023B88();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100206020(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }

  __cxa_end_catch();
}

void sub_1002060B8(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_10020614C(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }

  __cxa_end_catch();
}

void sub_1002061E4(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_100206278(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }

  __cxa_end_catch();
}

void sub_100206310(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 2u);
  }
}

void sub_1002063A4()
{
  sub_1000C4554(__stack_chk_guard);
  sub_1000C45D4();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100206414(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_1002064B8(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100206554(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_1002065F0(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_10020668C(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_100206730(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_1002067D4()
{
  sub_1000C4554(__stack_chk_guard);
  sub_1000C45D4();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100206844(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4590();
    (*(*v1 + 16))(v1);
    sub_1000C45A0();
    sub_1000C4580();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100206918(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4590();
    (*(*v1 + 16))(v1);
    sub_1000C45A0();
    sub_1000C4580();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_1002069EC(void *a1)
{
  v1 = __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C4590();
    (*(*v1 + 16))(v1);
    sub_1000C45A0();
    sub_1000C4580();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

void sub_100206AC0(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_100206B64(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_100206C08()
{
  sub_1000C4554(__stack_chk_guard);
  sub_1000C45D4();
  sub_100029854();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100206C78(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100206D14(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100206DB0(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }
}

void sub_100206E4C(void *a1)
{
  __cxa_begin_catch(a1);
  if (sub_1000C45B8(qword_1002DBE98))
  {
    sub_1000C456C();
    sub_1000C45D4();
    sub_1000C4580();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  __cxa_end_catch();
}

void sub_100206EF0()
{
  sub_1000C4554(__stack_chk_guard);
  sub_1000C45D4();
  _os_log_debug_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEBUG, "WISABC:#D Skipping ABC, for %s for success case", v1, 0xCu);
}

void sub_1002070B8(uint8_t *buf, uint64_t a2, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a2;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMModel]:#D Removing state for %lu contexts, %lu subscriptions in use", buf, 0x16u);
}

void sub_100207178(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleAirplaneModeActiveChanged:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1002071F0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleRegistrationStatusChanged:registrationStatus:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100207268(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleCellMonitorUpdate:info:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1002072E0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleSignalStrengthChanged:bars:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100207358(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleRadioStateChanged:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1002073D0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleLocationUpdate:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100207448(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleLocationAuthorizationUpdate:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1002074C0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleVisitStarted:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100207538(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleVisitEnded:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1002075B0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleRegulatoryDomainEstimateUpdate:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100207628(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FMModel _handleIncomingMetric:withPayload:]";
  sub_1000CA178(&_mh_execute_header, a1, a3, "FederatedMobility[FMModel]:#D Called method not implemented by subclass: %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1002076A0(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "insight_config:#D config = %s", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

float sub_100207714(int **a1, NSObject *a2)
{
  v2 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v7[0] = 67109888;
  v7[1] = v2;
  v8 = 1024;
  v9 = v3;
  v10 = 1024;
  v11 = v5;
  v12 = 1024;
  v13 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "insight_config:#D Crowdsourced learnings PLMN: MCC, MNC, LimitedServiceCount, InServiceCount: %d, %d, %d, %d", v7, 0x1Au);
  return result;
}

void sub_1002077B0(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "insight_config:Crowdsourced OOS learnings: Count is not valid", buf, 2u);
}

void sub_100207828(char *a1, void *a2, os_log_t log)
{
  if (*a1 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "submit:OSAMoveFileForSubmission failed for file '%s'!", &v4, 0xCu);
}

uint64_t sub_100207924(unsigned __int8 **a1)
{
  *(a1 + 3) = vaddq_s64(*(a1 + 3), vdupq_n_s64(1uLL));
  if (*(a1 + 20) == 1)
  {
    *(a1 + 20) = 0;
    v2 = *(a1 + 4);
  }

  else
  {
    v3 = *a1;
    if (*a1 == a1[1])
    {
      v2 = -1;
    }

    else
    {
      v2 = *v3;
      *a1 = v3 + 1;
    }

    *(a1 + 4) = v2;
  }

  if (v2 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v2;
  sub_1000D7488((a1 + 6), &v6);
  result = *(a1 + 4);
  if (result == 10)
  {
    v5 = a1[5] + 1;
    a1[4] = 0;
    a1[5] = v5;
  }

  return result;
}

uint64_t sub_1002079D0(uint64_t a1)
{
  sub_1000D7578(a1);
  while (2)
  {
    while (2)
    {
      v2 = sub_100207924(a1) + 1;
      result = 4;
      v4 = "invalid string: missing closing quote";
      switch(v2)
      {
        case 0:
          goto LABEL_82;
        case 1:
          v4 = "invalid string: control character U+0000 (NUL) must be escaped to \\u0000";
          goto LABEL_82;
        case 2:
          v4 = "invalid string: control character U+0001 (SOH) must be escaped to \\u0001";
          goto LABEL_82;
        case 3:
          v4 = "invalid string: control character U+0002 (STX) must be escaped to \\u0002";
          goto LABEL_82;
        case 4:
          v4 = "invalid string: control character U+0003 (ETX) must be escaped to \\u0003";
          goto LABEL_82;
        case 5:
          v4 = "invalid string: control character U+0004 (EOT) must be escaped to \\u0004";
          goto LABEL_82;
        case 6:
          v4 = "invalid string: control character U+0005 (ENQ) must be escaped to \\u0005";
          goto LABEL_82;
        case 7:
          v4 = "invalid string: control character U+0006 (ACK) must be escaped to \\u0006";
          goto LABEL_82;
        case 8:
          v4 = "invalid string: control character U+0007 (BEL) must be escaped to \\u0007";
          goto LABEL_82;
        case 9:
          v4 = "invalid string: control character U+0008 (BS) must be escaped to \\u0008 or \\b";
          goto LABEL_82;
        case 10:
          v4 = "invalid string: control character U+0009 (HT) must be escaped to \\u0009 or \\t";
          goto LABEL_82;
        case 11:
          v4 = "invalid string: control character U+000A (LF) must be escaped to \\u000A or \\n";
          goto LABEL_82;
        case 12:
          v4 = "invalid string: control character U+000B (VT) must be escaped to \\u000B";
          goto LABEL_82;
        case 13:
          v4 = "invalid string: control character U+000C (FF) must be escaped to \\u000C or \\f";
          goto LABEL_82;
        case 14:
          v4 = "invalid string: control character U+000D (CR) must be escaped to \\u000D or \\r";
          goto LABEL_82;
        case 15:
          v4 = "invalid string: control character U+000E (SO) must be escaped to \\u000E";
          goto LABEL_82;
        case 16:
          v4 = "invalid string: control character U+000F (SI) must be escaped to \\u000F";
          goto LABEL_82;
        case 17:
          v4 = "invalid string: control character U+0010 (DLE) must be escaped to \\u0010";
          goto LABEL_82;
        case 18:
          v4 = "invalid string: control character U+0011 (DC1) must be escaped to \\u0011";
          goto LABEL_82;
        case 19:
          v4 = "invalid string: control character U+0012 (DC2) must be escaped to \\u0012";
          goto LABEL_82;
        case 20:
          v4 = "invalid string: control character U+0013 (DC3) must be escaped to \\u0013";
          goto LABEL_82;
        case 21:
          v4 = "invalid string: control character U+0014 (DC4) must be escaped to \\u0014";
          goto LABEL_82;
        case 22:
          v4 = "invalid string: control character U+0015 (NAK) must be escaped to \\u0015";
          goto LABEL_82;
        case 23:
          v4 = "invalid string: control character U+0016 (SYN) must be escaped to \\u0016";
          goto LABEL_82;
        case 24:
          v4 = "invalid string: control character U+0017 (ETB) must be escaped to \\u0017";
          goto LABEL_82;
        case 25:
          v4 = "invalid string: control character U+0018 (CAN) must be escaped to \\u0018";
          goto LABEL_82;
        case 26:
          v4 = "invalid string: control character U+0019 (EM) must be escaped to \\u0019";
          goto LABEL_82;
        case 27:
          v4 = "invalid string: control character U+001A (SUB) must be escaped to \\u001A";
          goto LABEL_82;
        case 28:
          v4 = "invalid string: control character U+001B (ESC) must be escaped to \\u001B";
          goto LABEL_82;
        case 29:
          v4 = "invalid string: control character U+001C (FS) must be escaped to \\u001C";
          goto LABEL_82;
        case 30:
          v4 = "invalid string: control character U+001D (GS) must be escaped to \\u001D";
          goto LABEL_82;
        case 31:
          v4 = "invalid string: control character U+001E (RS) must be escaped to \\u001E";
          goto LABEL_82;
        case 32:
          v4 = "invalid string: control character U+001F (US) must be escaped to \\u001F";
          goto LABEL_82;
        case 33:
        case 34:
        case 36:
        case 37:
        case 38:
        case 39:
        case 40:
        case 41:
        case 42:
        case 43:
        case 44:
        case 45:
        case 46:
        case 47:
        case 48:
        case 49:
        case 50:
        case 51:
        case 52:
        case 53:
        case 54:
        case 55:
        case 56:
        case 57:
        case 58:
        case 59:
        case 60:
        case 61:
        case 62:
        case 63:
        case 64:
        case 65:
        case 66:
        case 67:
        case 68:
        case 69:
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 75:
        case 76:
        case 77:
        case 78:
        case 79:
        case 80:
        case 81:
        case 82:
        case 83:
        case 84:
        case 85:
        case 86:
        case 87:
        case 88:
        case 89:
        case 90:
        case 91:
        case 92:
        case 94:
        case 95:
        case 96:
        case 97:
        case 98:
        case 99:
        case 100:
        case 101:
        case 102:
        case 103:
        case 104:
        case 105:
        case 106:
        case 107:
        case 108:
        case 109:
        case 110:
        case 111:
        case 112:
        case 113:
        case 114:
        case 115:
        case 116:
        case 117:
        case 118:
        case 119:
        case 120:
        case 121:
        case 122:
        case 123:
        case 124:
        case 125:
        case 126:
        case 127:
        case 128:
          v8 = *(a1 + 16);
          goto LABEL_7;
        case 35:
          return result;
        case 93:
          v10 = sub_100207924(a1);
          v4 = "invalid string: forbidden character after backslash";
          if (!v12 & v11)
          {
            switch(v10)
            {
              case '""':
                LOBYTE(v8) = 34;
                break;
              case '/':
                LOBYTE(v8) = 47;
                break;
              case 'f':
                LOBYTE(v8) = 12;
                break;
              case 'b':
                LOBYTE(v8) = 8;
                break;
              case '\\':
                LOBYTE(v8) = 92;
                break;
              default:
                goto LABEL_82;
            }

            goto LABEL_7;
          }

          break;
        case 195:
        case 196:
        case 197:
        case 198:
        case 199:
        case 200:
        case 201:
        case 202:
        case 203:
        case 204:
        case 205:
        case 206:
        case 207:
        case 208:
        case 209:
        case 210:
        case 211:
        case 212:
        case 213:
        case 214:
        case 215:
        case 216:
        case 217:
        case 218:
        case 219:
        case 220:
        case 221:
        case 222:
        case 223:
        case 224:
          *&v16 = 0xBF00000080;
          v5 = a1;
          v6 = 2;
          goto LABEL_14;
        case 225:
          v7 = xmmword_100243B30;
          goto LABEL_5;
        case 226:
        case 227:
        case 228:
        case 229:
        case 230:
        case 231:
        case 232:
        case 233:
        case 234:
        case 235:
        case 236:
        case 237:
        case 239:
        case 240:
          v7 = xmmword_100243B20;
          goto LABEL_5;
        case 238:
          v7 = xmmword_100243B10;
LABEL_5:
          v16 = v7;
          v5 = a1;
          v6 = 4;
          goto LABEL_14;
        case 241:
          v17 = 0xBF00000080;
          v9 = &xmmword_100244818;
          goto LABEL_13;
        case 242:
        case 243:
        case 244:
          v17 = 0xBF00000080;
          v9 = &xmmword_100244830;
          goto LABEL_13;
        case 245:
          v17 = 0xBF00000080;
          v9 = &xmmword_100244848;
LABEL_13:
          v16 = *v9;
          v5 = a1;
          v6 = 6;
LABEL_14:
          if ((sub_1000D75D0(v5, &v16, v6) & 1) == 0)
          {
            return 14;
          }

          continue;
        default:
          v4 = "invalid string: ill-formed UTF-8 byte";
          goto LABEL_82;
      }

      break;
    }

    switch(v10)
    {
      case 'n':
        LOBYTE(v8) = 10;
        goto LABEL_7;
      case 'o':
      case 'p':
      case 'q':
      case 's':
        goto LABEL_82;
      case 'r':
        LOBYTE(v8) = 13;
        goto LABEL_7;
      case 't':
        LOBYTE(v8) = 9;
        goto LABEL_7;
      case 'u':
        v13 = sub_100207EEC(a1);
        if (v13 == -1)
        {
          goto LABEL_84;
        }

        v14 = v13;
        if ((v13 & 0xFFFFFC00) != 0xD800)
        {
          if ((v13 & 0xFFFFFC00) == 0xDC00)
          {
            v4 = "invalid string: surrogate U+DC00..U+DFFF must follow U+D800..U+DBFF";
            goto LABEL_82;
          }

          if (v13 > 127)
          {
            if (v13 <= 0x7FF)
            {
              std::string::push_back((a1 + 72), (v13 >> 6) | 0xC0);
              goto LABEL_39;
            }

            if (!HIWORD(v13))
            {
              std::string::push_back((a1 + 72), (v13 >> 12) | 0xE0);
              goto LABEL_38;
            }

LABEL_37:
            std::string::push_back((a1 + 72), (v14 >> 18) | 0xF0);
            std::string::push_back((a1 + 72), (v14 >> 12) & 0x3F | 0x80);
LABEL_38:
            std::string::push_back((a1 + 72), (v14 >> 6) & 0x3F | 0x80);
LABEL_39:
            LOBYTE(v8) = v14 & 0x3F | 0x80;
            goto LABEL_7;
          }

          LOBYTE(v8) = v13;
LABEL_7:
          std::string::push_back((a1 + 72), v8);
          continue;
        }

        if (sub_100207924(a1) != 92 || sub_100207924(a1) != 117)
        {
LABEL_85:
          v4 = "invalid string: surrogate U+D800..U+DBFF must be followed by U+DC00..U+DFFF";
          goto LABEL_82;
        }

        v15 = sub_100207EEC(a1);
        if (v15 != -1)
        {
          if (v15 >> 10 != 55)
          {
            goto LABEL_85;
          }

          v14 = v15 + (v14 << 10) - 56613888;
          goto LABEL_37;
        }

LABEL_84:
        v4 = "invalid string: '\\u' must be followed by 4 hex digits";
LABEL_82:
        *(a1 + 96) = v4;
        return 14;
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t sub_100207E9C(uint64_t result)
{
  v1 = (result + 32);
  v2 = *(result + 32);
  *(result + 20) = 1;
  --*(result + 24);
  if (v2 || (v1 = (result + 40), (v2 = *(result + 40)) != 0))
  {
    *v1 = v2 - 1;
  }

  if (*(result + 16) != -1)
  {
    --*(result + 56);
  }

  return result;
}

uint64_t sub_100207EEC(uint64_t a1)
{
  LODWORD(v2) = 0;
  v3 = 0;
  v8 = xmmword_100243B40;
  while (1)
  {
    v4 = *(&v8 + v3);
    sub_100207924(a1);
    v5 = *(a1 + 16);
    v6 = v5 - 48;
    if ((v5 - 48) >= 0xA)
    {
      break;
    }

LABEL_7:
    v2 = ((v6 << v4) + v2);
    v3 += 4;
    if (v3 == 16)
    {
      return v2;
    }
  }

  if ((v5 - 65) <= 5)
  {
    v6 = v5 - 55;
    goto LABEL_7;
  }

  if ((v5 - 97) <= 5)
  {
    v6 = v5 - 87;
    goto LABEL_7;
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_100207FFC(uint64_t a1, uint64_t *a2, void *a3)
{
  sub_100023B88();
  sub_100035910(&_mh_execute_header, v5, v6, "Could not create Insight type Satellite Cell Classifier", v7, v8, v9, v10);
  result = *a2;
  *a3 = 0;
  *a2 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_1002082B0(std::string *a1, std::string::value_type *a2, std::string *this)
{
  std::string::push_back(this, *a2);
  result = sub_100207924(a1);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(a1 + 3, *a2);
      result = sub_100207924(a1);
    }

    while ((result - 48) < 0xA);
  }

  return result;
}

void sub_100208314(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "persist:Unable to create DB with error %d", v2, 8u);
}

void sub_10020838C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "persist:#D Done executing DB command.", buf, 2u);
}

void sub_10020848C(uint64_t a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = sub_1000F6468(a1);
  sub_1000EAD98(&_mh_execute_header, v1, v2, "rule:Equal-to metric rule creation failed due invalid type (type=%u)", v3, v4, v5, v6, v7);
}

void sub_100208C3C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to retrieve battery info: %@", buf, 0xCu);
}

void sub_100208D0C(uint64_t *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  v4 = *a1;
  *buf = 134218240;
  *(buf + 4) = a3;
  *(buf + 6) = 2048;
  *(buf + 14) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "client:#D Client mgr sending msg of type 0x%llx on connection %p", buf, 0x16u);
}

void sub_100208EC8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Unable to fetch subscription info: %@", v5);
}

void sub_100208F0C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Unable to fetch current data subscription context: %@", v5);
}

void sub_100208F50(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a1 = 134218240;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  sub_100055954(&_mh_execute_header, "OOSRecoveryMetric:#D Removing state for %lu contexts, %lu subscriptions in use", a1, a4);
}

void sub_100208F9C()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100055970(&_mh_execute_header, v5, v3, "OOSRecoveryMetric:#D Skipping initialization for existing context %@", v4);
}

void sub_100208FEC()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100055970(&_mh_execute_header, v5, v3, "OOSRecoveryMetric:#D Initializing data for new context %@", v4);
}

void sub_10020907C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Error while fetching registration display status: %@", v5);
}

void sub_1002090C0()
{
  sub_1000F5B54();
  v1 = v0;
  v3 = v2;
  sub_1000427FC(v2, v0, v4, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "OOSRecoveryMetric:Error while fetching cell info for context %@: %@", v5, 0x16u);
}

void sub_10020911C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Successfully received initial cell info for context %@", v5);
}

void sub_100209160()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Cell info is null for context %@", v5);
}

void sub_1002091A4()
{
  sub_1000F5B54();
  v1 = v0;
  sub_1000427FC(v0, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "OOSRecoveryMetric:#D Successfully initialized state for context %@: %@", v4, v5);
}

void sub_1002091EC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Could not allocate state for context %@", v5);
}

void sub_100209264()
{
  sub_1000F5B54();
  v1 = v0;
  sub_1000427FC(v0, v2, v3, 5.778e-34);
  sub_100055954(&_mh_execute_header, "OOSRecoveryMetric:#D Display status of context %@ changed. New display status: %@", v4, v5);
}

void sub_1002092AC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Sending OOS event for context %@", v5);
}

void sub_1002092F0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Registration state for context %@ indicates in service, but cell info not up to date", v5);
}

void sub_100209334()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Starting OOS tracking for context %@", v5);
}

void sub_100209378()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Received display status change callback for context %@, but display status did not change", v5);
}

void sub_1002093BC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Received display status change callback for unknown context: %@", v5);
}

void sub_100209400()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:Received null display status for context %@", v5);
}

void sub_100209444()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Current data context changed to %@", v5);
}

void sub_100209488()
{
  sub_1000F5B54();
  v1 = v0;
  v3 = v2;
  sub_1000427FC(v2, v0, v4, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "OOSRecoveryMetric:Could not extract cell information for context %@: %@", v5, 0x16u);
}

void sub_1002094E4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Received Cell Monitor update for context %@", v5);
}

void sub_100209528()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "OOSRecoveryMetric:#D Received cell monitor update for unknown context: %@", v5);
}

void sub_1002095A0(char a1, NSObject *a2, uint64_t a3)
{
  v3 = @"off";
  if (a1)
  {
    v3 = @"on";
  }

  v4 = 138412290;
  v5 = v3;
  sub_100055970(&_mh_execute_header, a2, a3, "OOSRecoveryMetric:#D Airplane mode status switched to %@", &v4);
}

void sub_100209628(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 138412290;
  v4 = a1;
  sub_100055970(&_mh_execute_header, a2, a3, "OOSRecoveryMetric:#D Sent CA event for state %@", &v3);
}

void sub_1002098F0(int a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "conn:CoreAnalytics shim: Metadata already loaded for 0x%x", v2, 8u);
}

void sub_100209968(int *a1, NSObject *a2)
{
  v2 = *a1;
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "conn:CoreAnalytics shim: Filesytem error on metadata directory! Looking for component 0x%x", v3, 8u);
}

void sub_1002099E4(char *a1, uint8_t *buf, os_log_t log)
{
  if (a1[23] >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  *buf = 136315138;
  *(buf + 4) = v4;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "conn:#D Sending observation for metric: %s.", buf, 0xCu);
  if (a1[23] < 0)
  {
    operator delete(*a1);
  }
}

void sub_100209A58(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "WISABC:#D CTProperty: %@ is disabled", &v2, 0xCu);
}

void sub_100209AD0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "WISABC:#D CTProperty: %@ is enabled", &v2, 0xCu);
}

void sub_100209C4C(_DWORD *a1, NSObject *a2)
{
  v2 = a1[22];
  v3 = a1[23];
  v4 = a1[24];
  v5[0] = 67109632;
  v5[1] = v2;
  v6 = 1024;
  v7 = v3;
  v8 = 1024;
  v9 = v4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "trig:#D handleWisdTrigger: AWD component Trigger(cid=0x%x, trid=0x%x, sid=%u) completed", v5, 0x14u);
}

void sub_100209CE0(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 60);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "trig:#D handleWisdTrigger: Calling callback on metric: 0x%x", v3, 8u);
}

void sub_10020A034(void *a1, uint64_t a2, void *a3)
{
  __cxa_begin_catch(a1);
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  if (v4)
  {
    sub_100008350(v4);
  }
}

void sub_10020A068(uint64_t a1, NSObject *a2)
{
  v2 = 136446210;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#D No build update; build is %{public}s", &v2, 0xCu);
}

void sub_10020A114(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  sub_10013041C(&_mh_execute_header, a2, a3, "Received Trigger for an appID= %d, that does not belong to wirelessinsightsd", a5, a6, a7, a8, v8);
}

void sub_10020A180(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 67109120;
  HIDWORD(v8) = a1;
  sub_10013041C(&_mh_execute_header, a2, a3, "Received Metric for an appID= %d, that does not belong to wirelessinsightsd", a5, a6, a7, a8, v8);
}

void sub_10020A3CC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020A43C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Unable to fetch subscription info: %@", v5);
}

void sub_10020A480()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Unable to fetch current data subscription context: %@", v5);
}

void sub_10020A4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 134218240;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  sub_100136C10();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10020A518()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10020A56C()
{
  sub_10002FD58();
  *v1 = 138412290;
  *v3 = v2;
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_10020A600()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020A670()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020A6AC()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020A71C()
{
  sub_100023B60();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10020A78C()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020A854()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Current data context changed to %@", v5);
}

void sub_10020A898()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received data status change callback for context %@, but data bearer technology and data connection type did not change", v5);
}

void sub_10020A8DC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received data status change callback for unknown context: %@", v5);
}

void sub_10020A920()
{
  sub_10002FD58();
  sub_100136C1C(v1, v2, v3, 1.5047e-36);
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10020A970()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received Cell Monitor update for context %@", v5);
}

void sub_10020A9B4()
{
  sub_100136BFC();
  sub_1000427FC(v2, v3, v4, 5.778e-34);
  sub_10006F7E8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10020AA04()
{
  sub_100136BFC();
  *v2 = 138412547;
  *(v2 + 4) = v3;
  *(v2 + 12) = 2113;
  *(v2 + 14) = v4;
  sub_100136C10();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10020AA64()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Cell monitor for context %@ updated but values did not change", v5);
}

void sub_10020AAA8()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10020AAF4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received cell monitor update for unknown context: %@", v5);
}

void sub_10020AB38()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10020AB84()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received display status change callback for context %@, but display status did not change", v5);
}

void sub_10020ABC8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received display status change callback for unknown context: %@", v5);
}

void sub_10020AC0C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Received null display status for context %@", v5);
}

void sub_10020AC50()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020AC8C()
{
  sub_100055944();
  *v2 = 138412546;
  *(v2 + 4) = v3;
  *(v2 + 12) = 1024;
  *(v2 + 14) = v1 & 1;
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10020ACEC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received satellite status change callback for context %@, but status did not change", v5);
}

void sub_10020AD30()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received satellite status change callback for unknown context: %@", v5);
}

void sub_10020AD74()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10020ADC0()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received satellite provisioning status change callback for context %@, but status did not change", v5);
}

void sub_10020AE04()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Received satellite provisioning status change callback for unknown context: %@", v5);
}

void sub_10020AE48()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Error while fetching registration display status: %@", v5);
}

void sub_10020AE8C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Error while fetching data status: %@", v5);
}

void sub_10020AED0()
{
  sub_100136BFC();
  sub_1000427FC(v2, v3, v4, 5.778e-34);
  sub_10006F7E8();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_10020AF20()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "RatRetentionMetric:#D Successfully received initial cell info for context %@", v5);
}

void sub_10020AF64()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Cell info is null for context %@", v5);
}

void sub_10020AFA8()
{
  sub_100055944();
  sub_1000427FC(v1, v2, v3, 5.778e-34);
  sub_100136C10();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void sub_10020AFF4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "RatRetentionMetric:Could not allocate state for context %@", v5);
}

void sub_10020B038()
{
  sub_10002FD58();
  sub_100136C1C(v1, v2, v3, 1.5047e-36);
  sub_10006F7E8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

void sub_10020B088()
{
  sub_100023B88();
  sub_100023B54();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10020B0C4(uint64_t a1, NSObject *a2)
{
  v2 = 136315138;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "PowerUsageMetric:#D Received event %s", &v2, 0xCu);
}

void sub_10020B13C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "PowerUsageMetric:Failed to convert incoming metric: %@", &v2, 0xCu);
}

void sub_10020B2F8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "PowerUsageMetric:#D Submitting event payload: %@", &v2, 0xCu);
}

void sub_10020B370(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "PowerUsageMetric:Retrieved property is null or of unexpected class (%@, %@)", buf, 0x16u);
}

void sub_10020B418(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "FederatedMobility[FMCoreData+Congestion]:Incoming RAT type of cell (%@) is not equal to existing RAT type (%@)", buf, 0x16u);
}

void sub_10020B488()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving updated CongestionCell: %@", v5);
}

void sub_10020B500()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving CongestionCell: %@", v5);
}

void sub_10020B544()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:#D Fetching CongestionCells with predicate %@", v5);
}

void sub_10020B588()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching CongestionCell: %@", v5);
}

void sub_10020B62C()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving updated CongestionPrevCell: %@", v5);
}

void sub_10020B6A4()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:#D Fetching CongestionPrevCell with predicate %@", v5);
}

void sub_10020B6E8()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching CongestionPrevCell: %@", v5);
}

void sub_10020B7EC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving updated CongestionArea: %@", v5);
}

void sub_10020B898()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving CongestionArea: %@", v5);
}

void sub_10020B8DC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching CongestionArea: %@", v5);
}

void sub_10020B988()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:#D Fetching congestion areas with predicate %@", v5);
}

void sub_10020B9CC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching congestion areas to delete: %@", v5);
}

void sub_10020BA44()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD70(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:#D Fetching congestion occurrences with predicate %@", v5);
}

void sub_10020BA88()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching congestion occurrences to delete: %@", v5);
}

void sub_10020BACC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving after removing congestion occurrences: %@", v5);
}

void sub_10020BB10()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error fetching number of CongestionArea entities: %@", v5);
}

void sub_10020BB54(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "FederatedMobility[FMCoreData+Congestion]:#D Number of congestion areas in database (%lu) is below or at threshold (%lu)", &v3, 0x16u);
}

void sub_10020BBDC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving after removing congestion areas: %@", v5);
}

void sub_10020BC20()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching orphaned congestion cells: %@", v5);
}

void sub_10020BC64()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving after removing orphaned congestion cells: %@", v5);
}

void sub_10020BCDC()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while fetching orphaned congestion prev cells: %@", v5);
}

void sub_10020BD20()
{
  sub_10002FD58();
  sub_10002FD64(v1, v2, 5.7779e-34);
  sub_10002FD8C(&_mh_execute_header, v3, v4, "FederatedMobility[FMCoreData+Congestion]:Error while saving after removing orphaned congestion prev cells: %@", v5);
}

void sub_10020BE20(void *a1, NSObject *a2)
{
  v3 = 136315138;
  v4 = [objc_msgSend(a1 "description")];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "ManagedConfiguration BB profile installed returned error=%s", &v3, 0xCu);
}

void sub_10020BEB0(char a1, NSObject *a2)
{
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#D Notified of effective settings changed, SafetyDataSubmissionAllowed = %{BOOL}d", v2, 8u);
}

void sub_10020BF78()
{
  if (__cxa_guard_acquire(byte_1002D55C0))
  {
    __cxa_atexit(sub_10014898C, &unk_1002D5540, &_mh_execute_header);

    __cxa_guard_release(byte_1002D55C0);
  }
}

void sub_10020BFE0()
{
  v0 = __cxa_guard_acquire(byte_1002D5608);
  if (v0)
  {
    sub_10015E4EC(v0, &stru_1002D55C8, &_mh_execute_header);

    __cxa_guard_release(byte_1002D5608);
  }
}

void sub_10020C038()
{
  if (__cxa_guard_acquire(byte_1002D5640))
  {
    off_1002D5610 = &off_1002D5610;
    off_1002D5618 = &off_1002D5610;
    qword_1002D5638 = 0;
    qword_1002D5630 = 0;
    qword_1002D5620 = 0;
    unk_1002D5628 = &qword_1002D5630;
    __cxa_atexit(sub_10015181C, &off_1002D5610, &_mh_execute_header);

    __cxa_guard_release(byte_1002D5640);
  }
}

void sub_10020C0B4()
{
  v0 = __cxa_guard_acquire(byte_1002D56C8);
  if (v0)
  {
    qword_1002D56B0 = 0;
    *algn_1002D56B8 = 0;
    qword_1002D56C0 = 0;
    sub_10015E50C(v0, &qword_1002D56B0, &_mh_execute_header);
    __cxa_guard_release(byte_1002D56C8);
  }
}

void sub_10020C100()
{
  v0 = __cxa_guard_acquire(byte_1002D5688);
  if (v0)
  {
    sub_10015E4EC(v0, &unk_1002D5648, &_mh_execute_header);

    __cxa_guard_release(byte_1002D5688);
  }
}

void sub_10020C158()
{
  v0 = __cxa_guard_acquire(byte_1002D56A8);
  if (v0)
  {
    qword_1002D5690 = 0;
    *algn_1002D5698 = 0;
    qword_1002D56A0 = 0;
    sub_10015E50C(v0, &qword_1002D5690, &_mh_execute_header);

    __cxa_guard_release(byte_1002D56A8);
  }
}

void sub_10020C1B8()
{
  sub_100160C6C(__stack_chk_guard);
  LODWORD(v3) = 136315138;
  HIDWORD(v3) = v0;
  sub_10003B724(&_mh_execute_header, v1, v2, "cahandler:Unknown CA event: %s", v3);
}

void sub_10020C268(os_log_t log)
{
  v1 = 136315138;
  v2 = "CellularDataDiagnosticsSuite";
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "cahandler:#D Speed is called by: %s", &v1, 0xCu);
}

void sub_10020C2EC()
{
  sub_100160C6C(__stack_chk_guard);
  LODWORD(v3) = 136315138;
  HIDWORD(v3) = v0;
  sub_10003B724(&_mh_execute_header, v1, v2, "cahandler:Failed to open the write log for speed event, %s", v3);
}

void sub_10020C358(void *a1)
{
  __cxa_begin_catch(a1);
  v1 = *(qword_1002DBE98 + 112);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "cahandler:Failed to parse event data to json", v2, 2u);
  }
}

void sub_10020C3CC(void *a1)
{
  sub_1001FA15C();
  if (v2 || ((boost::system::detail::generic_cat_holder<void>::instance[6])(&boost::system::detail::generic_cat_holder<void>::instance, 12) & 1) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  *a1 = 12;
  a1[1] = &boost::system::detail::generic_cat_holder<void>::instance;
  a1[2] = v3;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t MetricFileMetadataHelper::MetricFileMetadataHelper()
{
  return MetricFileMetadataHelper::MetricFileMetadataHelper();
}

{
  return MetricFileMetadataHelper::MetricFileMetadataHelper();
}

uint64_t ctu::path_join_impl()
{
  return ctu::path_join_impl();
}

{
  return ctu::path_join_impl();
}

uint64_t ctu::cf::assign()
{
  return ctu::cf::assign();
}

{
  return ctu::cf::assign();
}

{
  return ctu::cf::assign();
}

uint64_t wis::asString()
{
  return wis::asString();
}

{
  return wis::asString();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__filename(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__extension(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__extension(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__root_directory(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return std::logic_error::logic_error(this, a2);
}

{
  return std::logic_error::logic_error(this, a2);
}

void std::logic_error::~logic_error(std::logic_error *this)
{
  std::logic_error::~logic_error(this);
}

{
  std::logic_error::~logic_error(this);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::runtime_error *a2)
{
  return std::runtime_error::runtime_error(this, a2);
}

{
  return std::runtime_error::runtime_error(this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);
}

{
  std::runtime_error::~runtime_error(this);
}

void std::invalid_argument::~invalid_argument(std::invalid_argument *this)
{
  std::invalid_argument::~invalid_argument(this);
}

{
  std::invalid_argument::~invalid_argument(this);
}

uint64_t std::istream::~istream()
{
  return std::istream::~istream();
}

{
  return std::istream::~istream();
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return std::to_string(retstr, __val);
}

{
  return std::to_string(retstr, __val);
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

lldiv_t lldiv(uint64_t a1, uint64_t a2)
{
  v4 = _lldiv(a1, a2);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}