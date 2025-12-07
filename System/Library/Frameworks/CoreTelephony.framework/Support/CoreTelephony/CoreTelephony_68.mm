void *sub_100453B08(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      sub_10027CA44(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_100453BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10027CC90(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100453BF0(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *v1;
      if (*v1)
      {
        if (*(v1 + 24) == *(v1 + 16))
        {
          v19 = *(v5 + 48);
          sub_100444744(&v32);
          v20 = std::string::append(&v32, "com.apple.CommCenter.TransferDevicePlanInfo.plist", 0x31uLL);
          v21 = *&v20->__r_.__value_.__l.__data_;
          v29 = v20->__r_.__value_.__r.__words[2];
          *__p = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          (*(*v19 + 912))(v19, __p);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          *(v5 + 88) = *(v5 + 80);
          if (*(v5 + 127) < 0)
          {
            **(v5 + 104) = 0;
            *(v5 + 112) = 0;
          }

          else
          {
            *(v5 + 104) = 0;
            *(v5 + 127) = 0;
          }
        }

        else
        {
          v6 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
          v7 = [NSNumber numberWithInt:4];
          [v6 encodeObject:v7 forKey:@"version"];

          v8 = objc_alloc_init(NSMutableArray);
          v9 = *(v1 + 16);
          v10 = *(v1 + 24);
          __p[0] = _NSConcreteStackBlock;
          __p[1] = 3221225472;
          v29 = sub_100454138;
          v30 = &unk_101E4D728;
          v11 = v8;
          v31 = v11;
          v12 = sub_1004540A8(v9, v10, __p);
          [v6 encodeObject:v11 forKey:@"transferDeviceInfo"];
          v13 = v1 + 40;
          if (*(v1 + 63) < 0)
          {
            v13 = *(v1 + 40);
          }

          v14 = [NSString stringWithUTF8String:v13];
          [v6 encodeObject:v14 forKey:@"uuid"];

          v15 = [v6 encodedData];
          cf = v15;
          if (v15)
          {
            CFRetain(v15);
          }

          v16 = *(v5 + 48);
          sub_100444744(&v26);
          v17 = std::string::append(&v26, "com.apple.CommCenter.TransferDevicePlanInfo.plist", 0x31uLL);
          v18 = *&v17->__r_.__value_.__l.__data_;
          v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
          *&v32.__r_.__value_.__l.__data_ = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          v25 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          (*(*v16 + 888))(v16, &v32, &v25);
          sub_10002D760(&v25);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }

          if (v5 + 80 != v1 + 16)
          {
            sub_1001122C4((v5 + 80), *(v1 + 16), *(v1 + 24), *(v1 + 24) - *(v1 + 16));
          }

          std::string::operator=((v5 + 104), (v1 + 40));
          sub_10002D760(&cf);
        }
      }

      sub_100004A34(v4);
    }
  }

  sub_100454034(&v24);
  return sub_1000049E0(&v23);
}

void sub_100453F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  sub_100004A34(v29);
  sub_100454034(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100454034(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      *(v1 + 24) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

void (**sub_1004540A8(unsigned __int8 *a1, unsigned __int8 *a2, void *a3))(id, void)
{
  for (i = a3; a1 != a2; ++a1)
  {
    i[2](i, *a1);
  }

  v6 = objc_retainBlock(i);

  return v6;
}

void sub_100454138(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithInt:a2];
  [v2 addObject:?];
}

uint64_t sub_1004541AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_100454244(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1004542C4(void **a1)
{
  v1 = *a1;
  v35 = a1;
  v36 = v1;
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *v1;
      if (*v1)
      {
        memset(&__str, 0, sizeof(__str));
        v5 = *(v4 + 48);
        sub_100444744(&__dst);
        v6 = std::string::append(&__dst, "com.apple.CommCenter.TransferDevicePlanInfo.plist", 0x31uLL);
        v7 = *&v6->__r_.__value_.__l.__data_;
        v45 = v6->__r_.__value_.__r.__words[2];
        *v44 = v7;
        v6->__r_.__value_.__l.__size_ = 0;
        v6->__r_.__value_.__r.__words[2] = 0;
        v6->__r_.__value_.__r.__words[0] = 0;
        (*(*v5 + 904))(buf, v5, v44);
        v8 = *buf;
        sub_10002D760(buf);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(*v44);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if (v8)
          {
LABEL_8:
            v9 = [NSKeyedUnarchiver alloc];
            v41 = 0;
            v10 = [v9 initForReadingFromData:v8 error:&v41];
            v11 = v41;
            v12 = v11;
            if (!v10 || v11)
            {
              v24 = *(v4 + 40);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *v44 = 0;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I No unarchiver or error", v44, 2u);
              }

              memset(v44, 0, sizeof(v44));
              v45 = 0;
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                __dst = __str;
              }

              v26 = v1[5];
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, v44, &__dst);
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              if (*v44)
              {
                *&v44[8] = *v44;
                operator delete(*v44);
              }

              v13 = 0;
            }

            else
            {
              v13 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
              if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                if ([v13 intValue] == 4)
                {
                  v14 = objc_opt_class();
                  v15 = objc_opt_class();
                  v34 = [NSSet setWithObjects:v14, v15, objc_opt_class(), 0];
                  v16 = [v10 decodeObjectOfClasses:? forKey:?];
                  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    *v44 = 0;
                    *&v44[8] = v44;
                    v45 = 0x4812000000;
                    v46 = sub_100454EE8;
                    v47 = sub_100454F0C;
                    v48 = &unk_101CF8E15;
                    v50 = 0;
                    v51 = 0;
                    v49 = 0;
                    __dst.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
                    __dst.__r_.__value_.__l.__size_ = 3221225472;
                    __dst.__r_.__value_.__r.__words[2] = sub_100454F24;
                    v39 = &unk_101E4D750;
                    v40 = v44;
                    [v16 enumerateObjectsUsingBlock:&__dst];
                    if (v4 + 80 != *&v44[8] + 48)
                    {
                      sub_1001122C4((v4 + 80), *(*&v44[8] + 48), *(*&v44[8] + 56), *(*&v44[8] + 56) - *(*&v44[8] + 48));
                    }

                    v17 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
                    if (v17)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v18 = v17;
                        sub_100016890(&__str, [v17 UTF8String]);
                      }
                    }

                    std::string::operator=((v4 + 104), &__str);
                    [v10 finishDecoding];
                    v19 = *(v4 + 40);
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                    {
                      v20 = [v16 count];
                      p_str = &__str;
                      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        p_str = __str.__r_.__value_.__r.__words[0];
                      }

                      *buf = 134218242;
                      *&buf[4] = v20;
                      *&buf[12] = 2080;
                      *&buf[14] = p_str;
                      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Loaded %lu bytes for %s", buf, 0x16u);
                    }

                    memset(buf, 0, 24);
                    sub_100034C50(buf, *(*&v44[8] + 48), *(*&v44[8] + 56), *(*&v44[8] + 56) - *(*&v44[8] + 48));
                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      __p = __str;
                    }

                    sub_100454EA0((v1 + 2));
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (*buf)
                    {
                      *&buf[8] = *buf;
                      operator delete(*buf);
                    }

                    _Block_object_dispose(v44, 8);
                    if (v49)
                    {
                      v50 = v49;
                      operator delete(v49);
                    }
                  }

                  else
                  {
                    [v10 finishDecoding];
                    memset(v44, 0, sizeof(v44));
                    v45 = 0;
                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      __dst = __str;
                    }

                    sub_100454EA0((v1 + 2));
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }

                    if (*v44)
                    {
                      *&v44[8] = *v44;
                      operator delete(*v44);
                    }

                    v32 = *(v4 + 40);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Failed to decode (kTransferDeviceInfoKey)", buf, 2u);
                    }
                  }
                }

                else
                {
                  [v10 finishDecoding];
                  v29 = *(v4 + 40);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = [v13 intValue];
                    *v44 = 67109120;
                    *&v44[4] = v30;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Version mismatch [%d]", v44, 8u);
                  }

                  memset(v44, 0, sizeof(v44));
                  v45 = 0;
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    __dst = __str;
                  }

                  v31 = v1[5];
                  if (!v31)
                  {
                    sub_100022DB4();
                  }

                  (*(*v31 + 48))(v31, v44, &__dst);
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }

                  if (*v44)
                  {
                    *&v44[8] = *v44;
                    operator delete(*v44);
                  }
                }
              }

              else
              {
                [v10 finishDecoding];
                memset(v44, 0, sizeof(v44));
                v45 = 0;
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                }

                else
                {
                  __dst = __str;
                }

                v27 = v1[5];
                if (!v27)
                {
                  sub_100022DB4();
                }

                (*(*v27 + 48))(v27, v44, &__dst);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                if (*v44)
                {
                  *&v44[8] = *v44;
                  operator delete(*v44);
                }

                v28 = *(v4 + 40);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Version decoding failure", buf, 2u);
                }
              }
            }

LABEL_94:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

LABEL_96:
            sub_100004A34(v3);
            goto LABEL_97;
          }
        }

        else if (v8)
        {
          goto LABEL_8;
        }

        v23 = *(v4 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I No data", v44, 2u);
        }

        memset(v44, 0, sizeof(v44));
        v45 = 0;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = __str;
        }

        v25 = v1[5];
        if (!v25)
        {
          sub_100022DB4();
        }

        (*(*v25 + 48))(v25, v44, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (*v44)
        {
          *&v44[8] = *v44;
          operator delete(*v44);
        }

        goto LABEL_94;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  memset(v44, 0, sizeof(v44));
  v45 = 0;
  memset(&__dst, 0, sizeof(__dst));
  v22 = v1[5];
  if (!v22)
  {
    sub_100022DB4();
  }

  (*(*v22 + 48))(v22, v44, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (*v44)
  {
    *&v44[8] = *v44;
    operator delete(*v44);
  }

  if (v3)
  {
    goto LABEL_96;
  }

LABEL_97:
  sub_100454E44(&v36);
  return sub_1000049E0(&v35);
}

void sub_100454C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *__p, uint64_t a41)
{
  if (__p)
  {
    a41 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v45 - 176), 8);
  v47 = *(v45 - 128);
  if (v47)
  {
    *(v45 - 120) = v47;
    operator delete(v47);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_100004A34(v39);
  sub_100454E44(&a14);
  sub_1000049E0(&a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_100454E44(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10044F418(v1 + 16);
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_100454EA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

__n128 sub_100454EE8(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_100454F0C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_100454F24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v15 = v3;
  v5 = [v3 intValue];
  v7 = v4[7];
  v6 = v4[8];
  if (v7 >= v6)
  {
    v9 = v4[6];
    v10 = (v7 - v9);
    v11 = v7 - v9 + 1;
    if (v11 < 0)
    {
      sub_1000CE3D4();
    }

    v12 = v6 - v9;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      operator new();
    }

    v14 = v7 - v9;
    *v10 = v5;
    v8 = v10 + 1;
    memcpy(0, v9, v14);
    v4[6] = 0;
    v4[7] = v10 + 1;
    v4[8] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v5;
    v8 = v7 + 1;
  }

  v4[7] = v8;
}

uint64_t *sub_100455054(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *(v1 + 8);
  sub_100444744(&v9);
  v3 = std::string::append(&v9, "com.apple.CommCenter.PendingTransfer.plist", 0x2AuLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v11 = v3->__r_.__value_.__r.__words[2];
  *__p = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_10002D728(&v8, v1);
  (*(*v2 + 896))(v2, __p, &v8);
  sub_10002D760(&v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  sub_100455194(&v7);
  return sub_1000049E0(&v6);
}

void sub_100455140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10002D760(&a12);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  sub_100455194(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100455194(uint64_t *a1)
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

    sub_10002D760(v1);
    operator delete();
  }

  return a1;
}

uint64_t sub_1004551EC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10045526C(void **a1)
{
  v1 = *a1;
  v33 = a1;
  v34 = v1;
  v2 = *v1;
  v37 = 0uLL;
  v38 = 0;
  v3 = *(v2 + 48);
  sub_100444744(&v35);
  v4 = std::string::append(&v35, "com.apple.CommCenter.PendingTransfer.plist", 0x2AuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v41 = v4->__r_.__value_.__r.__words[2];
  *buf = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(*v3 + 904))(&v36, v3, buf);
  v6 = v36;
  sub_10002D760(&v36);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else if (v6)
  {
LABEL_5:
    v7 = [NSKeyedUnarchiver alloc];
    v36 = 0;
    v8 = [v7 initForReadingFromData:v6 error:&v36];
    v9 = v36;
    v10 = v9;
    if (!v8 || v9)
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101770AAC();
      }

      memset(buf, 0, sizeof(buf));
      v41 = 0;
      sub_10005A388(buf, v37, *(&v37 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v37 + 1) - v37) >> 8));
      v24 = v1[4];
      if (!v24)
      {
        sub_100022DB4();
      }

      (*(*v24 + 48))(v24, buf);
      v35.__r_.__value_.__r.__words[0] = buf;
      sub_10005C284(&v35);
      goto LABEL_40;
    }

    v11 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v11 intValue] == 4)
      {
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = objc_opt_class();
        v15 = [NSSet setWithObjects:v12, v13, v14, objc_opt_class(), 0, v33, v34];
        v16 = [v8 decodeObjectOfClasses:v15 forKey:@"pendingTransferInfo"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!sub_100455B44(&v37, v16))
          {
            if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101770A10();
            }

            *&buf[8] = 0;
            v41 = 0;
            *buf = &buf[8];
            if (sub_100455D98(buf, v16))
            {
              v17 = *buf;
              if (*buf != &buf[8])
              {
                do
                {
                  std::string::operator=((v17 + 488), (v17 + 32));
                  v18 = *(&v37 + 1);
                  if (*(&v37 + 1) >= v38)
                  {
                    v19 = sub_100456554(&v37, (v17 + 56));
                  }

                  else
                  {
                    sub_1002939FC(*(&v37 + 1), (v17 + 56));
                    v19 = v18 + 1280;
                  }

                  *(&v37 + 1) = v19;
                  v20 = *(v17 + 1);
                  if (v20)
                  {
                    do
                    {
                      v21 = v20;
                      v20 = *v20;
                    }

                    while (v20);
                  }

                  else
                  {
                    do
                    {
                      v21 = *(v17 + 2);
                      v22 = *v21 == v17;
                      v17 = v21;
                    }

                    while (!v22);
                  }

                  v17 = v21;
                }

                while (v21 != &buf[8]);
              }
            }

            else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101770A44();
            }

            sub_100456120(buf, *&buf[8]);
          }

          [v8 finishDecoding];
          *buf = v37;
          v41 = v38;
          v38 = 0;
          v37 = 0uLL;
          v29 = v1[4];
          if (!v29)
          {
            sub_100022DB4();
          }
        }

        else
        {
          v28 = *(v2 + 40);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v30 = [@"pendingTransferInfo" description];
            v31 = v30;
            v32 = [v30 UTF8String];
            *buf = 136315138;
            *&buf[4] = v32;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to decode object for key %s", buf, 0xCu);
          }

          [v8 finishDecoding];
          memset(buf, 0, sizeof(buf));
          v41 = 0;
          sub_10005A388(buf, v37, *(&v37 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v37 + 1) - v37) >> 8));
          v29 = v1[4];
          if (!v29)
          {
            sub_100022DB4();
          }
        }

        (*(*v29 + 48))(v29, buf);
        v35.__r_.__value_.__r.__words[0] = buf;
        sub_10005C284(&v35);

        goto LABEL_39;
      }

      v27 = *(v2 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1017709C8(v39, [v11 intValue], v27);
      }

      [v8 finishDecoding];
      memset(buf, 0, sizeof(buf));
      v41 = 0;
      sub_10005A388(buf, v37, *(&v37 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v37 + 1) - v37) >> 8));
      v25 = v1[4];
      if (!v25)
      {
        sub_100022DB4();
      }
    }

    else
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101770A78();
      }

      [v8 finishDecoding];
      memset(buf, 0, sizeof(buf));
      v41 = 0;
      sub_10005A388(buf, v37, *(&v37 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v37 + 1) - v37) >> 8));
      v25 = v1[4];
      if (!v25)
      {
        sub_100022DB4();
      }
    }

    (*(*v25 + 48))(v25, buf);
    v35.__r_.__value_.__r.__words[0] = buf;
    sub_10005C284(&v35);
LABEL_39:

LABEL_40:
    goto LABEL_41;
  }

  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101770AE0();
  }

  memset(buf, 0, sizeof(buf));
  v41 = 0;
  sub_10005A388(buf, v37, *(&v37 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v37 + 1) - v37) >> 8));
  v23 = v1[4];
  if (!v23)
  {
    sub_100022DB4();
  }

  (*(*v23 + 48))(v23, buf);
  v35.__r_.__value_.__r.__words[0] = buf;
  sub_10005C284(&v35);
LABEL_41:

  v35.__r_.__value_.__r.__words[0] = &v37;
  sub_10005C284(&v35);
  sub_100455AF4(&v34);
  return sub_1000049E0(&v33);
}

void sub_1004559A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25)
{
  sub_100456120(v28 - 112, *(v28 - 104));

  __p = &a24;
  sub_10005C284(&__p);
  sub_100455AF4(&a14);
  sub_1000049E0(&a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_100455AF4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10044F498(v1 + 8);
    operator delete();
  }

  return a1;
}

BOOL sub_100455B44(uint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = *a1;
    ;
  }

  a1[1] = v5;
  v6 = [NSArray typecast:v3];
  v7 = v6;
  if (v6)
  {
    sub_100455FB8(a1, [v6 count]);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          bzero(v21, 0x500uLL);
          if (!sub_100736304(v21, v12))
          {
            sub_1002813D0(v21);

            goto LABEL_18;
          }

          v13 = a1[1];
          if (v13 >= a1[2])
          {
            v14 = sub_100456554(a1, v21);
          }

          else
          {
            sub_1002939FC(a1[1], v21);
            v14 = v13 + 1280;
            a1[1] = v13 + 1280;
          }

          a1[1] = v14;
          sub_1002813D0(v21);

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = [v8 count] == (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 8));
  }

  else
  {
LABEL_18:
    v15 = 0;
  }

  return v15;
}

BOOL sub_100455D98(uint64_t **a1, void *a2)
{
  v3 = a2;
  sub_100456120(a1, a1[1]);
  *a1 = (a1 + 1);
  a1[2] = 0;
  a1[1] = 0;
  v4 = [NSArray typecast:v3];
  v5 = v4;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          bzero(&__p, 0x518uLL);
          if (!sub_100456094(&__p, v10))
          {
            sub_1002813D0(v18);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_16;
          }

          sub_10045635C(a1, &__p, &__p);
          sub_1002813D0(v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = [v6 count] == a1[2];
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  return v11;
}

void *sub_100455FB8(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 8) < a2)
  {
    if (a2 < 0x33333333333334)
    {
      sub_10027B5B4(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_100456080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

BOOL sub_100456094(std::string *a1, uint64_t a2)
{
  v3 = [NSDictionary typecast:a2];
  v4 = v3 && (sub_1004561CC(a1, @"key", v3) & 1) != 0 && sub_1004562B4(&a1[1], @"value", v3);

  return v4;
}

void sub_100456120(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100456120(a1, *a2);
    sub_100456120(a1, a2[1]);
    sub_10045617C((a2 + 4));

    operator delete(a2);
  }
}

void sub_10045617C(uint64_t a1)
{
  sub_1002813D0(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1004561CC(std::string *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      sub_100016890(a1, [v7 UTF8String]);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_1004562B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100736304(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void *sub_10045635C(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v8 = 0;
  v3 = *sub_100005C2C(a1, &v8, a2);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_1004563F8();
  }

  return v3;
}

uint64_t sub_100456470(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10045617C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1004564BC(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  sub_1002939FC(a1 + 24, (a2 + 24));
  return a1;
}

void sub_1004564FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100456518(uint64_t a1)
{
  sub_1002813D0(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100456554(uint64_t a1, __int128 *a2)
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
  sub_1002939FC(1280 * v2, a2);
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

void sub_100456670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100456684(uint64_t a1, uint64_t a2)
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

void *sub_10045671C(void *a1)
{
  *a1 = off_101E4D780;
  sub_100446FF0((a1 + 1));
  return a1;
}

void sub_100456760(void *a1)
{
  *a1 = off_101E4D780;
  sub_100446FF0((a1 + 1));

  operator delete();
}

void sub_100456870(void *a1)
{
  sub_100446FF0(a1 + 8);

  operator delete(a1);
}

void sub_1004568AC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v6 = 0;
LABEL_10:
    sub_100456F04(a1 + 208, v3);
    goto LABEL_14;
  }

  v5 = *(a1 + 24);
  v6 = std::__shared_weak_count::lock(v4);
  if (!v6 || !*(a1 + 8))
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v3 & 1;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Upload to cloud complete: %d", buf, 8u);
  }

  if (v3)
  {
    *buf = 0;
    v11 = 0;
    v12 = 0;
    sub_100034C50(buf, *(a1 + 104), *(a1 + 112), *(a1 + 112) - *(a1 + 104));
    if (*(a1 + 151) < 0)
    {
      sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
    }

    else
    {
      *__p = *(a1 + 128);
      v9 = *(a1 + 144);
    }

    sub_1004462B4(v5, buf, __p);
  }

  sub_100456F04(a1 + 208, v3);
LABEL_14:
  if (v6)
  {
    sub_100004A34(v6);
  }
}

uint64_t sub_100456C6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100456CB8(uint64_t a1, uint64_t a2)
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

uint64_t sub_100456D38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_100034C50((a1 + 48), *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_100034C50((a1 + 96), *(a2 + 96), *(a2 + 104), *(a2 + 104) - *(a2 + 96));
  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v8 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v8;
  }

  v9 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v9;
  sub_100456684(a1 + 200, a2 + 200);
  return a1;
}

void sub_100456E70(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1001DE0AC(v1 + 24);
  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

void sub_100456EEC()
{
  if (*(v0 + 47) < 0)
  {
    operator delete(*(v0 + 24));
  }

  JUMPOUT(0x100456ED8);
}

uint64_t sub_100456F04(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

BOOL sub_100456F58(void *a1, CFAbsoluteTime a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = CFDateCreate(kCFAllocatorDefault, a2);
    (*(**a1 + 16))(*a1, @"kLastUploadTimestamp", v5, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1003EC530(&v5);
  }

  return v2 != 0;
}

void sub_100457004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1003EC530(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100457018(uint64_t a1, uint64_t a2)
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

void *sub_100457098(void *a1)
{
  *a1 = off_101E4D800;
  sub_1003F2928((a1 + 1));
  return a1;
}

void sub_1004570DC(void *a1)
{
  *a1 = off_101E4D800;
  sub_1003F2928((a1 + 1));

  operator delete();
}

void sub_1004571EC(void *a1)
{
  sub_1003F2928(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100457238(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100457284(uint64_t a1, uint64_t a2)
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

void sub_10045731C(void **a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  v4 = 0uLL;
  v5[0] = "CellularPlanPersistenceControllerImpl";
  sub_1001048A4();
}

void sub_100457530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  sub_10000FF50(v18 - 72);
  sub_1004575CC(&a15);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100370DE4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1004575CC(uint64_t a1)
{
  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *sub_100457610(void *a1)
{
  *a1 = off_101E4D880;
  sub_10000FF50((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10045766C(void *a1)
{
  *a1 = off_101E4D880;
  sub_10000FF50((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_100457780(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004577AC(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = off_101E4D880;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  a2[3] = a1[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 5), (a1 + 5));
}

void sub_100457828(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045784C(uint64_t a1)
{
  sub_10000FF50(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1004578A4(void *a1)
{
  sub_10000FF50((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_1004578F8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v4 = *a2;
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5 || (v6 = *(a1 + 8)) == 0)
  {
LABEL_8:
    sub_10000FFD0(a1 + 40, 0);
    if (!v5)
    {
      return;
    }

    goto LABEL_9;
  }

  v7 = *(v6 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I isZoneExisted: %d", v8, 8u);
  }

  sub_10000FFD0(a1 + 40, v4);
LABEL_9:
  sub_100004A34(v5);
}

uint64_t sub_100457A08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100457A54(uint64_t a1, uint64_t a2)
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

uint64_t sub_100457AEC(uint64_t a1, uint64_t a2)
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

void sub_100457B6C(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  v4 = 0;
  v5 = 0;
  v6[0] = "CellularPlanPersistenceControllerImpl";
  sub_1001048A4();
}

void sub_100457D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, ...)
{
  va_start(va, a14);
  sub_10000FF50(v14 - 88);
  sub_100457E74(va);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100457E18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100457E18(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10044F9DC(v1 + 32);
    sub_100009970(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return a1;
}

uint64_t sub_100457E74(uint64_t a1)
{
  sub_10044F9DC(a1 + 48);
  sub_100009970(a1 + 24, *(a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_100457EB8(uint64_t a1)
{
  *a1 = off_101E4D900;
  sub_10044F9DC(a1 + 56);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100457F14(uint64_t a1)
{
  *a1 = off_101E4D900;
  sub_10044F9DC(a1 + 56);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_100458024(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 32, *(v1 + 40));
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100458058(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4D900;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100074920((a2 + 32), (a1 + 32));
  return sub_100457A54(a2 + 56, a1 + 56);
}

void sub_1004580D0(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 32, *(v1 + 40));
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1004580FC(uint64_t a1)
{
  sub_10044F9DC(a1 + 56);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_100458154(uint64_t a1)
{
  sub_10044F9DC(a1 + 56);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(a1);
}

void sub_1004581A8(char *a1, _BYTE *a2)
{
  v3 = *(a1 + 1);
  if (*a2)
  {
    *buf = *(a1 + 1);
    sub_100004AA0(&v17, (v3 + 8));
    v4 = v18;
    *&buf[8] = v17;
    v11 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
    }

    v5 = *(a1 + 3);
    v12 = *(a1 + 2);
    v13 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100074920(&v14, a1 + 32);
    v15 = 0;
    sub_100457A54(&v16, (a1 + 56));
    v19 = 0;
    operator new();
  }

  v6 = *(v3 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Zone not existed, skip cleanup", buf, 2u);
  }

  sub_10000501C(buf, "");
  v9 = 1;
  LODWORD(v17) = 0;
  v8 = 0;
  v7 = *(a1 + 10);
  if (!v7)
  {
    sub_100022DB4();
  }

  (*(*v7 + 48))(v7, &v9, buf, &v17, &v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*buf);
  }
}

void sub_100458464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_10028B224(v17 - 104);
  sub_100458528(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1004584DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100458528(uint64_t a1)
{
  sub_10044F9DC(a1 + 72);
  sub_100009970(a1 + 40, *(a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_100458578(uint64_t a1)
{
  *a1 = off_101E4D970;
  sub_10044F9DC(a1 + 80);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1004585E0(uint64_t a1)
{
  *a1 = off_101E4D970;
  sub_10044F9DC(a1 + 80);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10045871C(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 48, *(v1 + 56));
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10045875C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4D970;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100074920((a2 + 48), (a1 + 48));
  *(a2 + 72) = *(a1 + 72);
  return sub_100457A54(a2 + 80, a1 + 80);
}

void sub_1004587F4(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 48, *(v1 + 56));
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10045882C(uint64_t a1)
{
  sub_10044F9DC(a1 + 80);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100458890(uint64_t a1)
{
  sub_10044F9DC(a1 + 80);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_1004588F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v19 = *(a2 + 1);
  v20 = a2[3];
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = *(a1 + 16);
      if (v7)
      {
        if (v3)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          sub_100447084(v5, a1 + 48, &v19, &v22);
          v8 = v22;
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3);
          if (v9 == 1)
          {
            v15 = *(v5 + 40);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I One matching recordID/uuid, keep it.", buf, 2u);
              v8 = v22;
            }

            if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(buf, v8->__r_.__value_.__l.__data_, v8->__r_.__value_.__l.__size_);
            }

            else
            {
              v16 = *&v8->__r_.__value_.__l.__data_;
              v28 = v8->__r_.__value_.__r.__words[2];
              *buf = v16;
            }

            v18 = *(a1 + 72);
            LOBYTE(v21[0]) = 1;
            v30[0] = v18;
            v25 = 0;
            v12 = *(a1 + 104);
            if (!v12)
            {
              sub_100022DB4();
            }
          }

          else
          {
            if (v9)
            {
              v17 = *(a1 + 40);
              v21[0] = *(a1 + 32);
              v21[1] = v17;
              if (v17)
              {
                atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              }

              *buf = v5;
              *&buf[8] = v7;
              v28 = v6;
              atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100457A54(&v29, a1 + 80);
              v31 = 0;
              operator new();
            }

            v10 = *(v5 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No matching recordID/uuid, abort cleanup.", buf, 2u);
            }

            sub_10000501C(buf, "");
            v11 = *(a1 + 72);
            LOBYTE(v21[0]) = 1;
            v30[0] = v11;
            v25 = 0;
            v12 = *(a1 + 104);
            if (!v12)
            {
              sub_100022DB4();
            }
          }

          (*(*v12 + 48))(v12, v21, buf, v30, &v25);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(*buf);
          }

          v26 = &v22;
          sub_1000087B4(&v26);
LABEL_16:
          sub_100004A34(v6);
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10000501C(buf, "");
  v13 = *(a1 + 72);
  LOBYTE(v21[0]) = 0;
  v30[0] = v13;
  LOBYTE(v26) = 0;
  v14 = *(a1 + 104);
  if (!v14)
  {
    sub_100022DB4();
  }

  (*(*v14 + 48))(v14, v21, buf, v30, &v26);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:
  *buf = &v19;
  sub_10027B3D0(buf);
}

void sub_100458CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, void *__p, uint64_t a22, uint64_t a23)
{
  sub_1003F2928(v25 - 104);
  sub_100458DE8(&__p);
  if (v24)
  {
    sub_100004A34(v24);
  }

  a20 = &a16;
  sub_1000087B4(&a20);
  sub_100004A34(v23);
  sub_10027B3D0(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100458D9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100458DE8(uint64_t a1)
{
  sub_10044F9DC(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void *sub_100458E20(void *a1)
{
  *a1 = off_101E4D9E0;
  sub_10044F9DC((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100458E70(void *a1)
{
  *a1 = off_101E4D9E0;
  sub_10044F9DC((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_100458F68(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100458F88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4D9E0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_100457A54(a2 + 32, a1 + 32);
}

void sub_100458FF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100459014(char *a1)
{
  sub_1004591F0((a1 + 8));

  operator delete(a1);
}

void sub_100459050(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Remove records result: %d, ckModified: %d", buf, 0xEu);
  }

  sub_10000501C(buf, "");
  v10 = v4;
  v9 = 8;
  v8 = v5;
  v7 = *(a1 + 56);
  if (!v7)
  {
    sub_100022DB4();
  }

  (*(*v7 + 48))(v7, &v10, buf, &v9, &v8);
  if (v14 < 0)
  {
    operator delete(*buf);
  }
}

uint64_t sub_1004591A4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4DA40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004591F0(uint64_t a1)
{
  sub_10044F9DC(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t sub_10045923C(uint64_t a1, uint64_t a2)
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

void *sub_1004592BC(void *a1)
{
  *a1 = off_101E4DA80;
  sub_100448164((a1 + 1));
  return a1;
}

void sub_100459300(void *a1)
{
  *a1 = off_101E4DA80;
  sub_100448164((a1 + 1));

  operator delete();
}

void sub_100459410(void *a1)
{
  sub_100448164(a1 + 8);

  operator delete(a1);
}

void sub_10045944C(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 256);
  v6 = *(a1 + 264);
  v7 = v6 - v5;
  if (v6 != v5)
  {
    v8 = v4[10];
    v9 = v4[11] - v8;
    v10 = v9 && v9 == v7;
    if (!v10 || memcmp(v8, v5, v7))
    {
      sub_10092F704((a1 + 64), &v13);
      *buf = v4;
      *&buf[8] = 0;
      v15 = 0uLL;
      sub_100034C50(&buf[8], *(a1 + 256), *(a1 + 264), *(a1 + 264) - *(a1 + 256));
      if (*(a1 + 191) < 0)
      {
        sub_100005F2C(&__p, *(a1 + 168), *(a1 + 176));
      }

      else
      {
        __p = *(a1 + 168);
        v17 = *(a1 + 184);
      }

      v12 = *(a1 + 208);
      v18 = *(a1 + 192);
      v19 = v12;
      v20 = v3;
      sub_100459828(v21, a1 + 224);
      v21[8] = 0;
      operator new();
    }
  }

  v11 = v4[5];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I No data change, abort uploading.", buf, 2u);
  }

  sub_1004598C0(a1 + 224, 0x1388000000000, v3, 0);
}

void sub_100459690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, char a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  sub_100009970(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_100459700(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045974C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 160;
  sub_10044FA5C(a1 + 8, a2 + 8);
  if (*(a2 + 183) < 0)
  {
    sub_100005F2C(v4, *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v5 = *(a2 + 160);
    *(v4 + 16) = *(a2 + 176);
    *v4 = v5;
  }

  v6 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v6;
  sub_100459828(a1 + 216, a2 + 216);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  sub_100034C50((a1 + 248), *(a2 + 248), *(a2 + 256), *(a2 + 256) - *(a2 + 248));
  return a1;
}

uint64_t sub_100459828(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004598C0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_100459920(uint64_t a1)
{
  sub_10044FE7C(a1 + 96);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10045996C(uint64_t a1)
{
  *a1 = off_101E4DB00;
  sub_10044FE7C(a1 + 104);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1004599D0(uint64_t a1)
{
  *a1 = off_101E4DB00;
  sub_10044FE7C(a1 + 104);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_100459B1C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100459B60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *(a2 + 16) = 0;
  *a2 = off_101E4DB00;
  *(a2 + 8) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  sub_100034C50((a2 + 16), *(a1 + 16), *(a1 + 24), *(a1 + 24) - *(a1 + 16));
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C((a2 + 40), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v5 = *(a1 + 40);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 40) = v5;
  }

  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  *(a2 + 96) = *(a1 + 96);
  return sub_100459828(a2 + 104, a1 + 104);
}

void sub_100459C0C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100459C40(uint64_t a1)
{
  sub_10044FE7C(a1 + 104);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;

    operator delete(v2);
  }
}

void sub_100459CA0(uint64_t a1)
{
  sub_10044FE7C(a1 + 104);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  operator delete(a1);
}

void sub_100459CFC(uint64_t a1, char *a2, std::string *a3, int *a4, unsigned __int8 *a5)
{
  v6 = *a2;
  v21 = *a3;
  *&a3->__r_.__value_.__r.__words[1] = 0uLL;
  a3->__r_.__value_.__r.__words[0] = 0;
  v7 = *a4;
  v8 = *(a1 + 8);
  if (v6)
  {
    v9 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
LABEL_29:
      v22 = 0;
      v23 = 0;
      *buf = "CellularPlanPersistenceControllerImpl";
      sub_1001048A4();
    }

    v11 = (v8 + 104);
    v12 = *(v8 + 127);
    if (v12 < 0)
    {
      if (!*(v8 + 112))
      {
LABEL_28:
        std::string::operator=((v8 + 104), &v21);
        goto LABEL_29;
      }
    }

    else if (!*(v8 + 127))
    {
      goto LABEL_28;
    }

    v15 = *(v8 + 112);
    if (v12 >= 0)
    {
      v15 = *(v8 + 127);
    }

    if (v15 != size || (v12 >= 0 ? (v16 = (v8 + 104)) : (v16 = *v11), (v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v17 = &v21) : (v17 = v21.__r_.__value_.__r.__words[0]), memcmp(v16, v17, size)))
    {
      v18 = *(v8 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = (v8 + 104);
        if ((v12 & 0x80000000) != 0)
        {
          v19 = *v11;
        }

        v20 = v21.__r_.__value_.__r.__words[0];
        if (v9 >= 0)
        {
          v20 = &v21;
        }

        *buf = 136315394;
        *&buf[4] = v19;
        buf_12 = 2080;
        buf_14 = v20;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Clobering cached UUID: [%s] with UUID found on cloud: [%s]", buf, 0x16u);
      }
    }

    goto LABEL_28;
  }

  v13 = *a5;
  if (os_log_type_enabled(*(v8 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101770B48();
  }

  if (v13)
  {
    v14 = 0x1388000000100;
  }

  else
  {
    v14 = 0x1388000000000;
  }

  sub_1004598C0(a1 + 104, v14, *(a1 + 96), v7);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_10045A190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045A250(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10045A29C(void *a1)
{
  *a1 = off_101E4DB80;
  sub_10044FE7C((a1 + 1));
  return a1;
}

void sub_10045A2E0(void *a1)
{
  *a1 = off_101E4DB80;
  sub_10044FE7C((a1 + 1));

  operator delete();
}

uint64_t sub_10045A3C4(uint64_t a1, void *a2)
{
  *a2 = off_101E4DB80;
  result = sub_100459828((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void sub_10045A420(void *a1)
{
  sub_10044FE7C(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10045A46C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10045A4B8(void *a1)
{
  *a1 = off_101E4DC00;
  sub_10044FE7C((a1 + 1));
  return a1;
}

void sub_10045A4FC(void *a1)
{
  *a1 = off_101E4DC00;
  sub_10044FE7C((a1 + 1));

  operator delete();
}

uint64_t sub_10045A5E0(uint64_t a1, void *a2)
{
  *a2 = off_101E4DC00;
  result = sub_100459828((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void sub_10045A63C(void *a1)
{
  sub_10044FE7C(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10045A688(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045A6D4(uint64_t a1)
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

uint64_t sub_10045A754(uint64_t a1, uint64_t a2)
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

uint64_t sub_10045A7EC(uint64_t a1, uint64_t a2)
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

void sub_10045A86C(void **a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  v4 = 0uLL;
  v5[0] = "CellularPlanPersistenceControllerImpl";
  sub_1001048A4();
}

void sub_10045AA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  sub_10028B224(v18 - 72);
  sub_10045AB6C(&a15);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10045AB1C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045AB1C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10028B224(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_10045AB6C(uint64_t a1)
{
  sub_10028B224(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *sub_10045ABB0(void *a1)
{
  *a1 = off_101E4DCA0;
  sub_10028B224((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10045AC0C(void *a1)
{
  *a1 = off_101E4DCA0;
  sub_10028B224((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10045AD20(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10045AD4C(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = off_101E4DCA0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  a2[3] = a1[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10045A754((a2 + 5), (a1 + 5));
}

void sub_10045ADC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045ADEC(uint64_t a1)
{
  sub_10028B224(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10045AE44(void *a1)
{
  sub_10028B224((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_10045AE98(void *a1, unint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v12 = v3;
  v5 = *(a2 + 1);
  v13 = v5;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v6 = a1[2];
  if (v6)
  {
    v11 = v5;
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = a1[1];
      if (v8)
      {
        v9 = *(v8 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = 0x6DB6DB6DB6DB6DB7 * ((v11 - v3) >> 3);
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I fetched %ld records from cloud", &buf, 0xCu);
        }
      }
    }

    *&v5 = v11;
  }

  else
  {
    v7 = 0;
  }

  buf = v4;
  v16 = 0;
  v17 = 0;
  sub_10045B0C8(&buf + 1, v3, v5, 0x6DB6DB6DB6DB6DB7 * ((v5 - v3) >> 3));
  v10 = a1[8];
  if (!v10)
  {
    sub_100022DB4();
  }

  (*(*v10 + 48))(v10, &buf);
  v14 = &buf + 1;
  sub_10027B3D0(&v14);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *&buf = &v12;
  sub_10027B3D0(&buf);
}

void sub_10045B044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (v15)
  {
    sub_100004A34(v15);
  }

  sub_10027B3D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10045B07C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10045B0C8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10028A1D4(result, a4);
  }

  return result;
}

void sub_10045B130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10027B3D0(&a9);
  _Unwind_Resume(a1);
}

void sub_10045B150(std::string::size_type **a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  v4 = 0uLL;
  v5.__r_.__value_.__r.__words[0] = "CellularPlanPersistenceControllerImpl";
  sub_1001048A4();
}

void sub_10045B4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, void *__p, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_10028B224(v23 - 120);
  sub_10045B62C(&__p);
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_10045B5D0(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045B5D0(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1003F2928(v1 + 32);
    sub_100009970(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return a1;
}

uint64_t sub_10045B62C(uint64_t a1)
{
  sub_1003F2928(a1 + 64);
  sub_100009970(a1 + 40, *(a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_10045B67C(uint64_t a1)
{
  *a1 = off_101E4DD20;
  sub_1003F2928(a1 + 72);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10045B6E4(uint64_t a1)
{
  *a1 = off_101E4DD20;
  sub_1003F2928(a1 + 72);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10045B818(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 48, *(v1 + 56));
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10045B858(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4DD20;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100074920((a2 + 48), (a1 + 48));
  return sub_100457284(a2 + 72, a1 + 72);
}

void sub_10045B8E8(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 48, *(v1 + 56));
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10045B920(uint64_t a1)
{
  sub_1003F2928(a1 + 72);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10045B984(uint64_t a1)
{
  sub_1003F2928(a1 + 72);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_10045B9E4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v9 = *(a2 + 1);
  v10 = a2[3];
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = a1[2];
      if (v7)
      {
        if (v3)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          sub_100447084(v5, (a1 + 6), &v9, &v13);
          if (v13 != v14)
          {
            v8 = a1[5];
            v11 = a1[4];
            v12 = v8;
            if (v8)
            {
              atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
            }

            v17[0] = v5;
            v17[1] = v7;
            v17[2] = &v6->__vftable;
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100457284(v18, (a1 + 9));
            v18[7] = 0;
            operator new();
          }

          if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101770BB0();
          }

          sub_100447630((a1 + 9), 0, 0);
          v16 = &v13;
          sub_1000087B4(&v16);
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100447630((a1 + 9), 0, 0);
  if (v6)
  {
LABEL_11:
    sub_100004A34(v6);
  }

  v17[0] = &v9;
  sub_10027B3D0(v17);
}

uint64_t sub_10045BC9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045BCE8(uint64_t a1)
{
  sub_1003F2928(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void *sub_10045BD20(void *a1)
{
  *a1 = off_101E4DD90;
  sub_1003F2928((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10045BD70(void *a1)
{
  *a1 = off_101E4DD90;
  sub_1003F2928((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_10045BE68(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10045BE88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4DD90;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_100457284(a2 + 32, a1 + 32);
}

void sub_10045BEF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045BF14(char *a1)
{
  sub_10045C068((a1 + 8));

  operator delete(a1);
}

uint64_t sub_10045BF50(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Remove records result: %d, CK modifiled: %d", v8, 0xEu);
  }

  return sub_100447630(a1 + 32, v4, v5);
}

uint64_t sub_10045C01C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10045C068(uint64_t a1)
{
  sub_1003F2928(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t *sub_10045C0B4(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    v4 = *(v1 + 16);
    if (v4 != 1)
    {
      if (v4 != 3)
      {
        goto LABEL_12;
      }

      v3 = *v2;
      goto LABEL_8;
    }

    v8 = **v2;
LABEL_17:
    if ((v8 - 48) >= 3)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = 0;
    v13 = 0;
    v14 = "CellularPlanPersistenceControllerImpl";
    sub_1001048A4();
  }

  if (*(v1 + 31) == 1)
  {
    v8 = *v2;
    goto LABEL_17;
  }

  v3 = (v1 + 8);
  if (*(v1 + 31) == 3)
  {
LABEL_8:
    v5 = *v3;
    v6 = *(v3 + 2);
    if (v5 != 27745 || v6 != 108)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_12:
  if (os_log_type_enabled(*(*v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101770BE4();
  }

  sub_10000FFD0(v1 + 32, 0);
  sub_10045C408(&v11);
  return sub_1000049E0(&v10);
}

void sub_10045C358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, char a28)
{
  sub_10000FF50(v28 - 72);
  sub_10000FF50(&a28);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  sub_10045C408(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045C408(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

void *sub_10045C468(void *a1)
{
  *a1 = off_101E4DE20;
  sub_10000FF50((a1 + 1));
  return a1;
}

void sub_10045C4AC(void *a1)
{
  *a1 = off_101E4DE20;
  sub_10000FF50((a1 + 1));

  operator delete();
}

void sub_10045C5BC(void *a1)
{
  sub_10000FF50(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10045C604(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10045C650(uint64_t *a1)
{
  v15 = a1;
  v16 = *a1;
  v1 = *v16;
  if (v16[2] == v16[1])
  {
    v11 = *(v1 + 6);
    sub_100444744(&v20);
    v12 = std::string::append(&v20, "com.apple.CommCenter.SubscriptionDetails.plist", 0x2EuLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v22 = v12->__r_.__value_.__r.__words[2];
    *buf = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v19 = 0;
    (*(*v11 + 896))(v11, buf, &v19);
    sub_10002D760(&v19);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = 0;
    sub_1009242DC(v16 + 1, &v19);
    v2 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:{1, v15}];
    v3 = [NSNumber numberWithInt:4];
    [v2 encodeObject:v3 forKey:@"version"];

    v4 = v19;
    [v2 encodeObject:v4 forKey:@"kSubscriptionDetailsKey"];
    v5 = [v2 encodedData];
    cf = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    v6 = *(v1 + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 count];
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I saveSubscriptionDetails: Saved [%lu] subscription info", buf, 0xCu);
    }

    v8 = *(v1 + 6);
    sub_100444744(&v20);
    v9 = std::string::append(&v20, "com.apple.CommCenter.SubscriptionDetails.plist", 0x2EuLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v22 = v9->__r_.__value_.__r.__words[2];
    *buf = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v17 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v8 + 896))(v8, buf, &v17);
    sub_10002D760(&v17);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    sub_10002D760(&cf);

    sub_100010250(&v19);
  }

  sub_10045CA10(&v16);
  return sub_1000049E0(&v15);
}

void sub_10045C91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a12, char a13, char a14, int a15, const void *a16, const void *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_10002D760(&a16);

  sub_100010250(&a17);
  sub_10045CA10(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045CA10(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_1000E2698(&v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10045CA70(uint64_t a1, uint64_t a2)
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

uint64_t sub_10045CB08(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10045CB88(void **a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  v34 = 0uLL;
  v35 = 0;
  v3 = *(v2 + 48);
  sub_100444744(&v32);
  v4 = std::string::append(&v32, "com.apple.CommCenter.SubscriptionDetails.plist", 0x2EuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v37 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(*v3 + 904))(&v33, v3, __p);
  v6 = v33;
  sub_10002D760(&v33);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
    if (v6)
    {
LABEL_5:
      v7 = [NSKeyedUnarchiver alloc];
      v33 = 0;
      v8 = [v7 initForReadingFromData:v6 error:&v33];
      v9 = v33;
      v10 = v9;
      if (!v8 || v9)
      {
        v19 = *(v2 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: No unarchiver or error", __p, 2u);
        }

        __p[0] = 0;
        __p[1] = 0;
        v37 = 0;
        sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
        v20 = v1[4];
        if (!v20)
        {
          sub_100022DB4();
        }

        (*(*v20 + 48))(v20, __p);
        v32.__r_.__value_.__r.__words[0] = __p;
        sub_1000E2698(&v32);
        v11 = 0;
      }

      else
      {
        v11 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
        if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if ([v11 intValue] == 4)
          {
            v12 = objc_opt_class();
            v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
            v14 = [v8 decodeObjectOfClasses:v13 forKey:@"kSubscriptionDetailsKey"];

            if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v8 finishDecoding];
              v15 = *(v2 + 40);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = [v14 count];
                LODWORD(__p[0]) = 134217984;
                *(__p + 4) = v16;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: Loaded %lu items", __p, 0xCu);
              }

              v31 = v14;
              CFRetain(v14);
              sub_100926660(&v31, __p);
              sub_10045D4E4(&v34);
              v34 = *__p;
              v35 = v37;
              __p[1] = 0;
              v37 = 0;
              __p[0] = 0;
              v32.__r_.__value_.__r.__words[0] = __p;
              sub_1000E2698(&v32);
              sub_100010250(&v31);
              __p[1] = 0;
              v37 = 0;
              __p[0] = 0;
              sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
              sub_10045D49C((v1 + 1));
              v32.__r_.__value_.__r.__words[0] = __p;
              sub_1000E2698(&v32);
            }

            else
            {
              [v8 finishDecoding];
              __p[0] = 0;
              __p[1] = 0;
              v37 = 0;
              sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
              v26 = v1[4];
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, __p);
              v32.__r_.__value_.__r.__words[0] = __p;
              sub_1000E2698(&v32);
              v27 = *(v2 + 40);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v32.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: Failed to decode (CTCellularPlanSubscription)", &v32, 2u);
              }
            }
          }

          else
          {
            [v8 finishDecoding];
            v23 = *(v2 + 40);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v11 intValue];
              LODWORD(__p[0]) = 67109120;
              HIDWORD(__p[0]) = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: Version mismatch [%d]", __p, 8u);
            }

            __p[0] = 0;
            __p[1] = 0;
            v37 = 0;
            sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
            v25 = v1[4];
            if (!v25)
            {
              sub_100022DB4();
            }

            (*(*v25 + 48))(v25, __p);
            v32.__r_.__value_.__r.__words[0] = __p;
            sub_1000E2698(&v32);
          }
        }

        else
        {
          [v8 finishDecoding];
          __p[0] = 0;
          __p[1] = 0;
          v37 = 0;
          sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
          v21 = v1[4];
          if (!v21)
          {
            sub_100022DB4();
          }

          (*(*v21 + 48))(v21, __p);
          v32.__r_.__value_.__r.__words[0] = __p;
          sub_1000E2698(&v32);
          v22 = *(v2 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v32.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: Version decoding failure", &v32, 2u);
          }
        }
      }

      goto LABEL_36;
    }
  }

  else if (v6)
  {
    goto LABEL_5;
  }

  v17 = *(v2 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: No data", __p, 2u);
  }

  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
  v18 = v1[4];
  if (!v18)
  {
    sub_100022DB4();
  }

  (*(*v18 + 48))(v18, __p);
  v32.__r_.__value_.__r.__words[0] = __p;
  sub_1000E2698(&v32);
LABEL_36:

  v32.__r_.__value_.__r.__words[0] = &v34;
  sub_1000E2698(&v32);
  sub_10045D44C(&v30);
  return sub_1000049E0(&v29);
}

void sub_10045D300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int16 a17, char a18, char a19, char *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  a20 = &a27;
  sub_1000E2698(&a20);
  sub_10045D44C(&a13);
  sub_1000049E0(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045D44C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10044FFCC(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_10045D49C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_10045D4E4(uint64_t *a1)
{
  if (*a1)
  {
    sub_1000E26EC(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_10045D524(void **a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  if (v1[2] == v1[1])
  {
    v15 = *(v2 + 48);
    sub_100444744(&v23);
    v16 = std::string::append(&v23, "com.apple.CommCenter.EntitlementSubscriptionDetails.plist", 0x39uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    *&v25 = *(&v16->__r_.__value_.__l + 2);
    *buf = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    cf = 0;
    (*(*v15 + 896))(v15, buf, &cf);
    sub_10002D760(&cf);
    if (SBYTE7(v25) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v3 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    v4 = [NSNumber numberWithInt:4];
    [v3 encodeObject:v4 forKey:@"version"];

    v5 = objc_opt_new();
    v6 = v1[1];
    for (i = v1[2]; v6 != i; v6 += 8)
    {
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      *buf = 0u;
      sub_100633230(buf);
      sub_10039F83C(v6, buf);
      memset(&v23, 0, sizeof(v23));
      PB::Writer::Writer(&v23);
      sub_100633CF8(buf, &v23);
      cf = 0;
      cf = CFDataCreate(kCFAllocatorDefault, v23.__r_.__value_.__l.__size_, v23.__r_.__value_.__r.__words[0] - v23.__r_.__value_.__l.__size_);
      v8 = cf;
      [v5 addObject:v8];

      sub_10002D760(&cf);
      PB::Writer::~Writer(&v23);
      sub_100633334(buf);
    }

    [v3 encodeObject:v5 forKey:@"kEntitlementSubscriptionsKey"];
    v9 = [v3 encodedData];
    cf = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    v10 = *(v2 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 count];
      *buf = 134217984;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I saveEntitlementSubscriptionDetails: Saved [%lu] subscription info", buf, 0xCu);
    }

    v12 = *(v2 + 48);
    sub_100444744(&v23);
    v13 = std::string::append(&v23, "com.apple.CommCenter.EntitlementSubscriptionDetails.plist", 0x39uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    *&v25 = *(&v13->__r_.__value_.__l + 2);
    *buf = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v21 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v12 + 896))(v12, buf, &v21);
    sub_10002D760(&v21);
    if (SBYTE7(v25) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    sub_10002D760(&cf);
  }

  sub_100171CB8(&v20);
  return sub_1000049E0(&v19);
}

void sub_10045D898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, int a15, const void *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10002D760(&a16);

  sub_100171CB8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10045D9B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10045DA4C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10045DACC(void **a1)
{
  v1 = *a1;
  v40 = a1;
  v41 = v1;
  v2 = *v1;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v3 = *(v2 + 48);
  sub_100444744(&v66);
  v4 = std::string::append(&v66, "com.apple.CommCenter.EntitlementSubscriptionDetails.plist", 0x39uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  *&v55 = *(&v4->__r_.__value_.__l + 2);
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(*v3 + 904))(v42, v3, __p);
  v6 = *&v42[0];
  sub_10002D760(v42);
  if (SBYTE7(v55) < 0)
  {
    operator delete(__p[0]);
  }

  if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_41:
    v24 = *(v2 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: No data", __p, 2u);
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v55 = 0;
    sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
    v25 = v1[4];
    if (!v25)
    {
      sub_100022DB4();
    }

    (*(*v25 + 48))(v25, __p);
    v66.__r_.__value_.__r.__words[0] = __p;
    sub_10016BF8C(&v66);
    goto LABEL_65;
  }

  operator delete(v66.__r_.__value_.__l.__data_);
  if (!v6)
  {
    goto LABEL_41;
  }

LABEL_5:
  v7 = [NSKeyedUnarchiver alloc];
  v49 = 0;
  v8 = [v7 initForReadingFromData:v6 error:&v49];
  v9 = v49;
  v10 = v9;
  if (!v8 || v9)
  {
    v26 = *(v2 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: No unarchiver or error", __p, 2u);
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v55 = 0;
    sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
    v27 = v1[4];
    if (!v27)
    {
      sub_100022DB4();
    }

    (*(*v27 + 48))(v27, __p);
    v66.__r_.__value_.__r.__words[0] = __p;
    sub_10016BF8C(&v66);
    v11 = 0;
  }

  else
  {
    v11 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v11 intValue] == 4)
      {
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = [NSSet setWithObjects:v12, v13, objc_opt_class(), 0];
        v38 = [v8 decodeObjectOfClasses:v14 forKey:@"kEntitlementSubscriptionsKey"];

        if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          obj = v38;
          v15 = [obj countByEnumeratingWithState:&v45 objects:&v66 count:16];
          if (v15)
          {
            v39 = *v46;
            while (2)
            {
              for (i = 0; i != v15; i = i + 1)
              {
                if (*v46 != v39)
                {
                  objc_enumerationMutation(obj);
                }

                v17 = *(*(&v45 + 1) + 8 * i);
                memset(v44, 0, sizeof(v44));
                BytePtr = CFDataGetBytePtr(v17);
                Length = CFDataGetLength(v17);
                PB::Reader::Reader(v44, BytePtr, Length);
                v43 = 0;
                memset(v42, 0, sizeof(v42));
                sub_100633230(v42);
                if ((sub_10063371C(v42, v44) & 1) == 0)
                {
                  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
                  {
                    sub_101770C18();
                  }

                  __p[0] = 0;
                  __p[1] = 0;
                  *&v55 = 0;
                  sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
                  v35 = v1[4];
                  if (!v35)
                  {
                    sub_100022DB4();
                  }

                  (*(*v35 + 48))(v35, __p);
                  v53 = __p;
                  sub_10016BF8C(&v53);
                  sub_100633334(v42);

                  goto LABEL_63;
                }

                *v64 = 0u;
                v65 = 0u;
                *v62 = 0u;
                v63 = 0u;
                v60 = 0u;
                *v61 = 0u;
                *v58 = 0u;
                *v59 = 0u;
                *v56 = 0u;
                v57 = 0u;
                *__p = 0u;
                v55 = 0u;
                BYTE9(v65) = 1;
                sub_10039FA34(v42, __p);
                v20 = v51;
                if (v51 >= v52)
                {
                  v21 = sub_1001E013C(&v50, __p);
                }

                else
                {
                  sub_10016A078(v51, __p);
                  v21 = v20 + 192;
                }

                v51 = v21;
                if (SBYTE7(v65) < 0)
                {
                  operator delete(v64[0]);
                }

                if (SHIBYTE(v63) < 0)
                {
                  operator delete(v62[1]);
                }

                if (SHIBYTE(v62[0]) < 0)
                {
                  operator delete(v61[0]);
                }

                if (SHIBYTE(v60) < 0)
                {
                  operator delete(v59[1]);
                }

                if (SHIBYTE(v59[0]) < 0)
                {
                  operator delete(v58[0]);
                }

                if (SBYTE7(v57) < 0)
                {
                  operator delete(v56[0]);
                }

                if (SHIBYTE(v55) < 0)
                {
                  operator delete(__p[1]);
                }

                sub_100633334(v42);
              }

              v15 = [obj countByEnumeratingWithState:&v45 objects:&v66 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          [v8 finishDecoding];
          v22 = *(v2 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [obj count];
            LODWORD(__p[0]) = 134217984;
            *(__p + 4) = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: Loaded %lu items", __p, 0xCu);
          }

          __p[0] = 0;
          __p[1] = 0;
          *&v55 = 0;
          sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
          sub_10045E644((v1 + 1));
          *&v42[0] = __p;
          sub_10016BF8C(v42);
        }

        else
        {
          [v8 finishDecoding];
          __p[0] = 0;
          __p[1] = 0;
          *&v55 = 0;
          sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
          v33 = v1[4];
          if (!v33)
          {
            sub_100022DB4();
          }

          (*(*v33 + 48))(v33, __p);
          v66.__r_.__value_.__r.__words[0] = __p;
          sub_10016BF8C(&v66);
          v34 = *(v2 + 40);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v66.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: Failed to decode kEntitlementSubscriptionsKey", &v66, 2u);
          }
        }

LABEL_63:
      }

      else
      {
        [v8 finishDecoding];
        v30 = *(v2 + 40);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [v11 intValue];
          LODWORD(__p[0]) = 67109120;
          HIDWORD(__p[0]) = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: Version mismatch [%d]", __p, 8u);
        }

        __p[0] = 0;
        __p[1] = 0;
        *&v55 = 0;
        sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
        v32 = v1[4];
        if (!v32)
        {
          sub_100022DB4();
        }

        (*(*v32 + 48))(v32, __p);
        v66.__r_.__value_.__r.__words[0] = __p;
        sub_10016BF8C(&v66);
      }
    }

    else
    {
      [v8 finishDecoding];
      __p[0] = 0;
      __p[1] = 0;
      *&v55 = 0;
      sub_100171D18(__p, v50, v51, 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 6));
      v28 = v1[4];
      if (!v28)
      {
        sub_100022DB4();
      }

      (*(*v28 + 48))(v28, __p);
      v66.__r_.__value_.__r.__words[0] = __p;
      sub_10016BF8C(&v66);
      v29 = *(v2 + 40);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v66.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I loadEntitlementSubscriptionDetails: Version decoding failure", &v66, 2u);
      }
    }
  }

LABEL_65:
  *&v42[0] = &v50;
  sub_10016BF8C(v42);
  sub_10045E5F4(&v41);
  return sub_1000049E0(&v40);
}

void sub_10045E458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  a19 = &a45;
  sub_10016BF8C(&a19);
  sub_10045E5F4(&a16);
  sub_1000049E0(&a15);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045E5F4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100171E70(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_10045E644(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t *sub_10045E68C(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  if (*(v1 + 23) < 0)
  {
    v3 = *(v1 + 8);
    if (v3)
    {
      sub_100005F2C(__dst, *v1, v3);
      goto LABEL_6;
    }

LABEL_8:
    CFPreferencesSetValue(@"SequoiaPurchaseIccid", 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    goto LABEL_22;
  }

  if (!*(v1 + 23))
  {
    goto LABEL_8;
  }

  v2 = *v1;
  v10 = *(v1 + 16);
  *__dst = v2;
LABEL_6:
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v14 = v10;
  }

  v12 = 0;
  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(&v15, __p[0], __p[1]);
  }

  else
  {
    v15 = *__p;
    v16 = v14;
  }

  v17 = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = v12;
    v12 = v17;
    v18 = v4;
    sub_100005978(&v18);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  v5 = v12;
  v11 = v12;
  v12 = 0;
  sub_100005978(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  CFPreferencesSetValue(@"SequoiaPurchaseIccid", v5, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v11);
LABEL_22:
  sub_1000929F0();
  sub_10045E8BC(&v8);
  return sub_1000049E0(&v7);
}

void sub_10045E840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_10045E8BC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045E8BC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_10045E914(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  sub_1000929F0();
  v10 = 0;
  *&v11 = CFPreferencesCopyValue(@"SequoiaPurchaseIccid", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100222990(&v10, &v11);
  if (v10)
  {
    v11 = 0uLL;
    v12 = 0;
    ctu::cf::assign();
    v8 = v11;
    v9 = v12;
    v2 = *(v1 + 24);
    if (!v2)
    {
      sub_100022DB4();
    }

    (*(*v2 + 48))(v2, &v8);
    if (SHIBYTE(v9) < 0)
    {
      v3 = &v8;
LABEL_8:
      operator delete(*v3);
    }
  }

  else
  {
    sub_10000501C(&v11, "");
    v4 = *(v1 + 24);
    if (!v4)
    {
      sub_100022DB4();
    }

    (*(*v4 + 48))(v4, &v11);
    if (SHIBYTE(v12) < 0)
    {
      v3 = &v11;
      goto LABEL_8;
    }
  }

  sub_100005978(&v10);
  sub_10045EAC4(&v7);
  return sub_1000049E0(&v6);
}

void sub_10045EA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  sub_100005978(&a15);
  sub_10045EAC4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045EAC4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10001C200(v2);
    operator delete();
  }

  return a1;
}

void *sub_10045EB0C(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v4 = *sub_100005C2C(a1, &v9, a2);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_10045EBB8();
  }

  return v4;
}

char *sub_10045EC38(char *__dst, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_10045ECB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045ECD0(uint64_t a1, uint64_t a2)
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

void *sub_10045ED68(void *a1)
{
  *a1 = off_101E4DEA0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  sub_10045A6D4((a1 + 2));
  return a1;
}

void sub_10045EDC0(void *a1)
{
  *a1 = off_101E4DEA0;
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  sub_10045A6D4((a1 + 2));

  operator delete();
}

void sub_10045EEB8(_Unwind_Exception *a1)
{
  sub_10045A6D4(v1 + 16);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045EEDC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = off_101E4DEA0;
  a2[1] = v4;
  sub_10045ECD0((a2 + 2), a1 + 16);
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  return sub_100034C50(a2 + 6, *(a1 + 48), *(a1 + 56), *(a1 + 56) - *(a1 + 48));
}

void sub_10045EF60(char *a1)
{
  sub_10045F310((a1 + 8));

  operator delete(a1);
}

void sub_10045EF9C(void *a1, uint64_t *a2)
{
  v4 = a2[1];
  v3 = *a2;
  v26 = v4;
  v5 = *(a2 + 1);
  v27 = v5;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  if ((v3 & 1) == 0)
  {
LABEL_10:
    v12 = 0x4000;
    goto LABEL_11;
  }

  v6 = a1[1];
  v7 = v5;
  if (v4 == v5)
  {
LABEL_7:
    v11 = *(v6 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I force clear local cache of cellular plan information", buf, 2u);
    }

    *(v6 + 88) = *(v6 + 80);
    goto LABEL_10;
  }

  v8 = a1[6];
  v9 = a1[7] - v8;
  while (1)
  {
    v10 = *(v4 + 24);
    if (*(v4 + 32) - v10 == v9 && !memcmp(v10, v8, v9))
    {
      break;
    }

    v4 += 56;
    if (v4 == v7)
    {
      goto LABEL_7;
    }
  }

  v13 = *(v6 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I manatee date is up to date. refresh last upload timestamp", buf, 2u);
  }

  (***(v6 + 48))(v28);
  ServiceMap = Registry::getServiceMap(*v28);
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
    }
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  std::mutex::unlock(v15);
  *buf = v22;
  v31 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v21);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v24 = sub_100456F58(buf, Current);
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  if (!v24)
  {
    v25 = *(v6 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_101770C4C(v28, &v28[1], v25);
    }
  }

  v12 = 0;
LABEL_11:
  sub_100449E18((a1 + 2), v12);
  *buf = &v26;
  sub_10027B3D0(buf);
}

void sub_10045F204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10027B3D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10045F244(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045F290(uint64_t a1, uint64_t a2)
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

uint64_t sub_10045F310(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  return sub_10045A6D4(a1 + 8);
}

uint64_t *sub_10045F354(const void **a1)
{
  v3 = a1;
  v1 = *a1;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, *a1);
  CFPreferencesSetValue(@"kCKUploadCount", v4, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  sub_100029A48(&v4);
  if (v1)
  {
    operator delete();
  }

  return sub_1000049E0(&v3);
}

void sub_10045F400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    operator delete();
  }

  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045F440(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  sub_1000929F0();
  v8 = 0;
  v7 = CFPreferencesCopyValue(@"kCKUploadCount", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100209D88(&v8, &v7);
  v3 = v8;
  if (v8)
  {
    LODWORD(v7) = 0;
    ctu::cf::assign(&v7, v8, v2);
    v3 = v7;
  }

  sub_100449E18(v1, v3);
  sub_100029A48(&v8);
  sub_10045F518(&v6);
  return sub_1000049E0(&v5);
}

void sub_10045F4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_100029A48(&a12);
  sub_10045F518(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045F518(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10045A6D4(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10045F560(const void **a1)
{
  v3 = a1;
  v1 = *a1;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, *a1);
  CFPreferencesSetValue(@"kCKUploadDate", v4, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  sub_100029A48(&v4);
  if (v1)
  {
    operator delete();
  }

  return sub_1000049E0(&v3);
}

void sub_10045F60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v9)
  {
    operator delete();
  }

  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10045F64C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10045F6E4(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10045F764(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  sub_1000929F0();
  v7 = 0;
  v8 = CFPreferencesCopyValue(@"kCKUploadDate", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100209D88(&v7, &v8);
  v3 = v7;
  if (v7)
  {
    v8 = 0;
    ctu::cf::assign(&v8, v7, v2);
    v3 = v8;
  }

  sub_10045F884(v1, v3);
  sub_100029A48(&v7);
  sub_10045F83C(&v6);
  return sub_1000049E0(&v5);
}

void sub_10045F810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11)
{
  sub_100029A48(&a11);
  sub_10045F83C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045F83C(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100450134(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10045F884(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *sub_10045F8D8(uint64_t *a1)
{
  v2 = a1;
  v3 = *a1;
  sub_100449E18(v3, 20);
  sub_10045F518(&v3);
  return sub_1000049E0(&v2);
}

void sub_10045F920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10045F518(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045F93C(CFArrayRef **a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *v1;
  (***(*v1 + 6))(&buf);
  ServiceMap = Registry::getServiceMap(buf);
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
  v23 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v23);
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
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (v11)
  {
    v13 = v1[1];
    if (v13 && CFArrayGetCount(v13))
    {
      v14 = [NSKeyedArchiver archivedDataWithRootObject:v1[1] requiringSecureCoding:1 error:0];
      v15 = v14;
      v23 = v14;
      if (v14)
      {
        CFRetain(v14);
      }

      v16 = kCFPreferencesCurrentUser;
      v17 = kCFPreferencesAnyHost;
      (*(*v11 + 16))(v11, @"AddOnRemotePlanList", v15, @"no_backup/com.apple.CommCenter.AddOnRemotePlanList.plist", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      v18 = *(v2 + 5);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        Count = CFArrayGetCount(v1[1]);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = Count;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Saved (%lu) add on remote devices", &buf, 0xCu);
      }

      sub_10002D760(&v23);
    }

    else
    {
      v16 = kCFPreferencesCurrentUser;
      v17 = kCFPreferencesAnyHost;
      (*(*v11 + 16))(v11, @"AddOnRemotePlanList", 0, @"no_backup/com.apple.CommCenter.AddOnRemotePlanList.plist", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    }

    (*(*v11 + 48))(v11, @"no_backup/com.apple.CommCenter.AddOnRemotePlanList.plist", v16, v17);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_100200094(&v22);
  return sub_1000049E0(&v21);
}

void sub_10045FC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  sub_10002D760(va2);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  sub_100200094(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045FCA0(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_1004501B4(v6, (v1 + 1));
  sub_10045051C(v7, (v1 + 4));
  sub_10044B388(v2, v6);
  if (v17 == 1)
  {
    sub_1001349A0(v16, v16[1]);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 < 0)
    {
      operator delete(v8);
    }
  }

  sub_1004504C0(v6, v6[1]);
  sub_10045FDB8(&v5);
  return sub_1000049E0(&v4);
}

void sub_10045FD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_10044D3E8(va2);
  sub_10045FDB8(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045FDB8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 168) == 1)
    {
      sub_1001349A0(v1 + 144, *(v1 + 152));
      if (*(v1 + 135) < 0)
      {
        operator delete(*(v1 + 112));
      }

      if (*(v1 + 111) < 0)
      {
        operator delete(*(v1 + 88));
      }

      if (*(v1 + 87) < 0)
      {
        operator delete(*(v1 + 64));
      }

      if (*(v1 + 63) < 0)
      {
        operator delete(*(v1 + 40));
      }
    }

    sub_1004504C0(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return a1;
}

uint64_t sub_10045FE64(uint64_t a1, uint64_t a2)
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

uint64_t sub_10045FEFC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10045FF7C(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10045FE64(v6, (v1 + 1));
  sub_10044B8A8(v2, v6);
  sub_100450584(v6);
  sub_100460030(&v5);
  return sub_1000049E0(&v4);
}

void sub_100460004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_100450584(va2);
  sub_100460030(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100460030(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100450584(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t *sub_100460080(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_100450860(v6, (v1 + 1));
  sub_10044D660(v2, v6);
  sub_100450B8C(v6, v6[1]);
  sub_100460110(&v5);
  return sub_1000049E0(&v4);
}

void sub_1004600E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a13, char *a14)
{
  sub_100450B8C(&a13, a14);
  sub_100460110(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100460110(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100450B8C(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return a1;
}

uint64_t sub_100460164(uint64_t a1, uint64_t a2)
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

uint64_t sub_1004601FC(uint64_t a1, uint64_t a2)
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

uint64_t *sub_10046027C(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_100460164(v6, (v1 + 1));
  sub_10044DFA0(v2, v6);
  sub_100450604(v6);
  sub_100460330(&v5);
  return sub_1000049E0(&v4);
}

void sub_100460304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  sub_100450604(va2);
  sub_100460330(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100460330(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100450604(v1 + 8);
    operator delete();
  }

  return a1;
}

void sub_100460408(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "LoadPrivateNetworkSettings", "", v5, 2u);
    }
  }
}

uint64_t sub_100460480(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1004604CC(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  result = *sub_100005C2C(a1, &v5, a2);
  if (!result)
  {
    sub_100460560();
  }

  return result;
}

void sub_1004605E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001352A0(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1004605FC(char *__dst, __int128 *a2, __int128 *a3)
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
  if (*(a3 + 47) < 0)
  {
    sub_100005F2C(__dst + 48, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    *(__dst + 8) = *(a3 + 5);
    *(__dst + 3) = v7;
  }

  if (*(a3 + 71) < 0)
  {
    sub_100005F2C(__dst + 72, *(a3 + 6), *(a3 + 7));
  }

  else
  {
    v8 = a3[3];
    *(__dst + 11) = *(a3 + 8);
    *(__dst + 72) = v8;
  }

  return __dst;
}

void sub_1004606B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1004606E4(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_100460798();
  }

  return v5;
}

char *sub_100460824(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = 0u;
  *(__dst + 344) = 0u;
  *(__dst + 360) = 0u;
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
  *(__dst + 40) = 0u;
  sub_100450684((__dst + 24));
  return __dst;
}

void sub_1004608B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100460954(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "SavePrivateNetworkProfiles", "", v5, 2u);
    }
  }
}

uint64_t sub_1004609CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100460AA0(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "LoadPrivateNetworkProfiles", "", v5, 2u);
    }
  }
}

uint64_t sub_100460B18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100460B64(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100005C2C(a1, &v6, a2);
  if (!result)
  {
    sub_100460C08();
  }

  return result;
}

void sub_100460C94(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100450ADC(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_100460CB0(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 19) = 0;
  *(__dst + 136) = 0u;
  *(__dst + 120) = 0u;
  *(__dst + 104) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 56) = 0u;
  *(__dst + 40) = 0u;
  *(__dst + 24) = 0u;
  sub_10000501C(__dst + 10, "");
  sub_10000501C(__dst + 13, "");
  *(__dst + 64) = 0;
  *(__dst + 33) = 0;
  *(__dst + 19) = 0;
  *(__dst + 18) = 0;
  *(__dst + 17) = __dst + 144;
  return __dst;
}

void sub_100460D60(_Unwind_Exception *exception_object)
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

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100460DB4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100460DE4(void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  operator new();
}

void sub_100460EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100460F00(uint64_t a1)
{
  (*(**(a1 + 48) + 40))(v2);
  sub_10016E3EC(a1 + 112, v2);
  if (LOBYTE(v2[0]) == 1 && v3 < 0)
  {
    operator delete(v2[1]);
  }

  if (*(a1 + 112) == 1)
  {
    *(a1 + 145) = 1;
  }
}

void sub_100460FB8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100460FC4(uint64_t a1, NSObject **a2, void *a3)
{
  *a1 = off_101E4E1A0;
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, "cp.w.sim");
  sub_100461168(v6, a2, &v12);
  ctu::OsLogContext::~OsLogContext(&v12);
  *a1 = off_101E4E0B0;
  v7 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CellularPlanSimCommandOperations");
  v9 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 144) = 0;
  return a1;
}

void sub_1004610F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
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

  v21 = *(v18 + 56);
  if (v21)
  {
    sub_100004A34(v21);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 40));
  sub_1000C0544(v19);
  _Unwind_Resume(a1);
}

void *sub_100461168(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1004611D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1004611F4(uint64_t a1)
{
  *a1 = off_101E4E0B0;
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    *(a1 + 112) = 0;
  }

  v2 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    sub_100004A34(v6);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1004612EC(uint64_t a1)
{
  sub_1004611F4(a1);

  operator delete();
}

void sub_100461324(uint64_t a1)
{
  (*(**(a1 + 48) + 56))(&v1);
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }
}

void sub_100461390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004613B0(uint64_t a1)
{
  *(a1 + 145) = 0;
  *(a1 + 147) = 0;
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    *(a1 + 112) = 0;
  }

  v2 = *(a1 + 48);
  v4[0] = 0;
  (*(*v2 + 32))(v2, v4);
  if (v4[0] == 1 && v6 < 0)
  {
    operator delete(__p);
  }

  result = *(a1 + 104);
  *(a1 + 104) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1004614A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004614D0(uint64_t a1, unsigned __int8 *a2)
{
  v5 = (a1 + 112);
  v4 = *(a1 + 112);
  v6 = *a2;
  if (v4 != 1 || (v6 & 1) == 0)
  {
    if (v4 == v6)
    {
      return;
    }

    goto LABEL_18;
  }

  v7 = *(a1 + 143);
  if (v7 >= 0)
  {
    v8 = *(a1 + 143);
  }

  else
  {
    v8 = *(a1 + 128);
  }

  v9 = a2[31];
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 2);
  }

  if (v8 != v9 || (v7 >= 0 ? (v11 = (a1 + 120)) : (v11 = *(a1 + 120)), v10 >= 0 ? (v12 = a2 + 8) : (v12 = *(a2 + 1)), memcmp(v11, v12, v8)))
  {
LABEL_18:
    sub_10016E810(v5, a2);
    if (*v5 == 1)
    {
      v13 = *(a1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I new sim selected setting reset as required", v14, 2u);
      }

      (*(**(a1 + 48) + 32))(*(a1 + 48), v5);
      *(a1 + 144) = 256;
      sub_100461610(a1);
    }
  }
}

void sub_100461610(uint64_t a1)
{
  if (*(a1 + 80))
  {
    v2 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 88);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I acquiring online assertion", buf, 2u);
  }

  sub_10000501C(buf, "/cc/assertions/baseband_online");
  ctu::rest::AssertionHandle::create();
  if (v29 < 0)
  {
    operator delete(*buf);
  }

  v5 = v26;
  v26 = 0uLL;
  v6 = *(a1 + 88);
  *(a1 + 80) = v5;
  if (v6)
  {
    sub_100004A34(v6);
    if (*(&v26 + 1))
    {
      sub_100004A34(*(&v26 + 1));
    }
  }

  sub_100004AA0(buf, (a1 + 8));
  v8 = *buf;
  v7 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_1004621CC;
  aBlock[3] = &unk_101E4E120;
  aBlock[4] = a1;
  aBlock[5] = v8;
  v25 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (v9)
  {
    v11 = _Block_copy(v9);
  }

  else
  {
    v11 = 0;
  }

  *buf = off_101E4E318;
  v28 = v11;
  v30 = buf;
  ctu::rest::AssertionHandle::setHandler_impl();
  sub_10000FF50(buf);
  (*(**(a1 + 48) + 48))(buf);
  v12 = *buf;
  sub_10000501C(__p, "online on sim select");
  v13 = (*(**(a1 + 48) + 64))(*(a1 + 48));
  v14 = *(a1 + 24);
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1174405120;
  v18[2] = sub_1004622C8;
  v18[3] = &unk_101E4E150;
  v18[4] = a1;
  v18[5] = v8;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = _Block_copy(v18);
  sub_100D23364(v12, __p, 1, 1000000 * v13, &object, &v20);
  v15 = v26;
  *&v26 = 0;
  v16 = *(a1 + 96);
  *(a1 + 96) = v15;
  if (v16)
  {
    (*(*v16 + 8))(v16);
    v17 = v26;
    *&v26 = 0;
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v23 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28)
  {
    sub_100004A34(v28);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_100461A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100461B00(uint64_t result, int a2)
{
  if (*(result + 144) != a2)
  {
    *(result + 144) = a2;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I sim state ready changed : %d", v7, 8u);
      if (*(result + 144))
      {
        goto LABEL_12;
      }
    }

    else if (a2)
    {
      goto LABEL_12;
    }

    v5 = *(result + 104);
    if (v5)
    {
      v6 = *(result + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7[0]) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I reset camp timer on sim going not ready", v7, 2u);
        v5 = *(result + 104);
        *(result + 104) = 0;
        if (!v5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(result + 104) = 0;
      }

      (*(*v5 + 8))(v5);
    }

LABEL_12:
    sub_100461C50(result);
  }
}

void sub_100461C50(uint64_t a1)
{
  if (*(a1 + 145) == 1 && *(a1 + 144) == 1)
  {
    if (!(*(**(a1 + 48) + 72))(*(a1 + 48)))
    {
      if (*(a1 + 146) != 1)
      {
        return;
      }

      v4 = *(a1 + 40);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v5 = "#I no reset is required clearing";
      goto LABEL_14;
    }

    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I need to reset and sim is ready", buf, 2u);
    }

    if (*(a1 + 147) == 1)
    {
      v3 = *(a1 + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I sending sim reset", buf, 2u);
      }

      (*(**(a1 + 48) + 16))(*(a1 + 48));
      v4 = *(a1 + 40);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      *buf = 0;
      v5 = "#I reset saved iccid";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
LABEL_15:
      sub_1004613B0(a1);
      return;
    }

    if (!*(a1 + 104))
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I start wait for camp timer", buf, 2u);
      }

      (*(**(a1 + 48) + 48))(buf);
      v7 = *buf;
      sub_10000501C(__p, "wait for camp timer");
      v8 = *(a1 + 24);
      object = v8;
      if (v8)
      {
        dispatch_retain(v8);
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 0x40000000;
      v12[2] = sub_100462070;
      v12[3] = &unk_101E4E100;
      v12[4] = a1;
      aBlock = _Block_copy(v12);
      sub_100D23364(v7, __p, 1, 20000000, &object, &aBlock);
      v9 = v19;
      v19 = 0;
      v10 = *(a1 + 104);
      *(a1 + 104) = v9;
      if (v10)
      {
        (*(*v10 + 8))(v10);
        v11 = v19;
        v19 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      if (v18)
      {
        sub_100004A34(v18);
      }
    }
  }
}

void sub_100461F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v21 - 40);
  if (v23)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_100461FE4(uint64_t a1)
{
  if (*(a1 + 145) == 1)
  {
    v6 = v1;
    v7 = v2;
    if ((*(a1 + 146) & 1) == 0)
    {
      v4 = *(a1 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I cb setup calculate reset", v5, 2u);
      }

      *(a1 + 146) = 1;
      sub_100461C50(a1);
    }
  }
}

uint64_t sub_100462070(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 147) = 1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I attempt reset on timer expiry", v4, 2u);
  }

  sub_100461C50(v1);
  result = *(v1 + 104);
  *(v1 + 104) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_100462114(uint64_t a1)
{
  result = (*(**(a1 + 48) + 80))(*(a1 + 48));
  if (result)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I sending sim reprovision", v4, 2u);
    }

    return (*(**(a1 + 48) + 24))(*(a1 + 48));
  }

  return result;
}

void sub_1004621CC(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9[0] = 67109120;
          v9[1] = a2;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I bb online granted: %d", v9, 8u);
        }
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10046229C(uint64_t result, uint64_t a2)
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

void sub_1004622B8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1004622C8(void *a1)
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
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I assertion timer expired", v9, 2u);
        }

        v7 = v3[11];
        v3[10] = 0;
        v3[11] = 0;
        if (v7)
        {
          sub_100004A34(v7);
        }

        v8 = v3[12];
        v3[12] = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100462444(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100462518);
  __cxa_rethrow();
}

void sub_100462484(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1004624D8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100462518(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100462544(void *a1)
{
  *a1 = off_101E4E318;
  v2 = a1[1];
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_100462594(void *a1)
{
  *a1 = off_101E4E318;
  v1 = a1[1];
  if (v1)
  {
    _Block_release(v1);
  }

  operator delete();
}

void sub_1004626AC(const void **a1)
{
  sub_1004627B8(a1 + 1);

  operator delete(a1);
}

uint64_t sub_1004626FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100462748(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  *a1 = v3;
  return a1;
}

void *sub_100462780(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  *a1 = v3;
  return a1;
}

void sub_1004627B8(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_1004627DC(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 0;
  Registry::getTimerService(&v7, *(a1 + 56));
  if (v7)
  {
    v3 = *(a1 + 104);
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }

    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Starting timer to clear credentials", buf, 2u);
    }

    sub_100004AA0(buf, (a1 + 8));
    v5 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v5);
    }

    operator new();
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_101770C8C(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_100462A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, dispatch_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 72);
  if (v25)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_100462AF8(void *a1)
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
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Clearing expired credentials", v8, 2u);
        }

        v7 = v3[13];
        v3[13] = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v9[0] = off_101E4E3C8;
        v9[3] = v9;
        sub_1003BE924(v3, v9);
        sub_10028ED7C(v9);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_100462C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10028ED7C(va);
  sub_100004A34(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_100462C3C(uint64_t result, uint64_t a2)
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

void sub_100462C58(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_100462CF4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4E428))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *sub_100462D40(int a1)
{
  if ((a1 - 1) > 0x17)
  {
    return "kInitializeController";
  }

  else
  {
    return off_101E4E448[a1 - 1];
  }
}

double sub_100462D68(uint64_t a1, void *a2, __int128 *a3, uint64_t a4, __int128 *a5, int a6, __int128 *a7, uint64_t a8, char a9)
{
  v10 = sub_1002C9360(a1, a2, a3, a4, a5, a7, a8);
  *v10 = &off_101E4E518;
  *(v10 + 232) = a6;
  *(v10 + 236) = a9;
  *&result = 0x9FFFFFFFFLL;
  *(v10 + 240) = xmmword_101807C20;
  *(v10 + 256) = 2;
  return result;
}

uint64_t sub_100462DF8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 256) = *(a2 + 8);
  *(result + 248) = v2;
  return result;
}

uint64_t sub_100462E1C(uint64_t a1, int a2)
{
  result = sub_1002C977C(a1, a2);
  if (*(a1 + 232) == 3)
  {
    v4 = 30;
  }

  else
  {
    v4 = -1;
  }

  *(a1 + 240) = v4;
  return result;
}

void sub_100462E58(void **a1)
{
  sub_1002C9F20(a1);

  operator delete();
}

uint64_t sub_100462EA4(uint64_t a1, int a2, void *a3, NSObject **a4, const char *a5, uint64_t *a6)
{
  ctu::OsLogContext::OsLogContext(&v22, kCtLoggingSystemName, "lazuli.timer");
  ctu::OsLogLogger::OsLogLogger(v23, &v22);
  ctu::OsLogLogger::OsLogLogger(a1, v23);
  ctu::OsLogLogger::~OsLogLogger(v23);
  ctu::OsLogContext::~OsLogContext(&v22);
  *(a1 + 8) = a2;
  v12 = *a4;
  *(a1 + 16) = *a4;
  if (v12)
  {
    dispatch_retain(v12);
  }

  v13 = a3[1];
  *(a1 + 24) = *a3;
  *(a1 + 32) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = strlen(a5);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  *(a1 + 63) = v14;
  v16 = (a1 + 40);
  if (v14)
  {
    memmove(v16, a5, v14);
  }

  *(v16 + v15) = 0;
  v17 = *(a1 + 32);
  v21 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = sub_100A94378();
  if (v21)
  {
    sub_100004A34(v21);
  }

  v19 = *a6;
  *(a1 + 64) = v18;
  *(a1 + 72) = v19;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_100463034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, char a14)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (*(v14 + 63) < 0)
  {
    operator delete(*v15);
  }

  v17 = *(v14 + 32);
  if (v17)
  {
    sub_100004A34(v17);
  }

  v18 = *(v14 + 16);
  if (v18)
  {
    dispatch_release(v18);
  }

  ctu::OsLogLogger::~OsLogLogger(v14);
  _Unwind_Resume(a1);
}

void sub_1004630A8(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a2 + 24))
  {
    sub_10025ABF0((a1 + 88), a2);
    Registry::getTimerService(&__p, *(a1 + 24));
    v5 = __p;
    if (*(a1 + 63) < 0)
    {
      sub_100005F2C(&__dst, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __dst = *(a1 + 40);
      v20 = *(a1 + 56);
    }

    if (a3)
    {
      v7 = (*(a1 + 72) * 0.99);
    }

    else
    {
      v7 = *(a1 + 72);
    }

    v8 = *(a1 + 16);
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100463340;
    aBlock[3] = &unk_101E4E650;
    aBlock[4] = a1;
    v17 = _Block_copy(aBlock);
    sub_100D23364(v5, &__dst, 2, 1000000 * v7, &object, &v17);
    v9 = v21;
    v21 = 0;
    v10 = *(a1 + 80);
    *(a1 + 80) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
      v11 = v21;
      v21 = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }
    }

    if (v17)
    {
      _Block_release(v17);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__dst);
    }

    if (v14)
    {
      sub_100004A34(v14);
    }

    sub_1004633F0(a1, 0);
    v12 = *(a1 + 8);
    sub_1004634CC(a1, 0, &__p);
    sub_100A9B39C(a1 + 24, v12, &__p);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v6 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_101770CD0(a1, v6);
    }
  }
}

void sub_1004632D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, std::__shared_weak_count *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, dispatch_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100463340(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1004633F0(v1, 3);
  v2 = *(v1 + 8);
  sub_1004634CC(v1, 3, __p);
  sub_100A9B39C(v1 + 24, v2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  result = *(v1 + 112);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

void sub_1004633D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1004633F0(os_log_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    sub_1004634CC(a1, v2, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %{public}s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

uint64_t sub_1004634CC@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  __src = 0u;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  sub_10000C320(&v43);
  v40 = 0;
  v41 = 0;
  v42 = 0;
  sub_100A9A300(*(a1 + 72), &v40);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  sub_100A94180(*(a1 + 64), &v37);
  v6 = sub_10000C030(&v44, "TIMER: [", 8);
  v7 = *(a1 + 63);
  if (v7 >= 0)
  {
    v8 = a1 + 40;
  }

  else
  {
    v8 = *(a1 + 40);
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 63);
  }

  else
  {
    v9 = *(a1 + 48);
  }

  v10 = sub_10000C030(v6, v8, v9);
  v11 = sub_10000C030(v10, "] ", 2);
  if ((a2 - 1) > 2)
  {
    v12 = "(started)";
  }

  else
  {
    v12 = off_101E4E670[a2 - 1];
  }

  v13 = strlen(v12);
  sub_10000C030(v11, v12, v13);
  v14 = sub_10000C030(&v44, ". Total timer duration: (", 25);
  if (v42 >= 0)
  {
    v15 = &v40;
  }

  else
  {
    v15 = v40;
  }

  if (v42 >= 0)
  {
    v16 = HIBYTE(v42);
  }

  else
  {
    v16 = v41;
  }

  v17 = sub_10000C030(v14, v15, v16);
  v18 = sub_10000C030(v17, "), started at: (", 16);
  if (v39 >= 0)
  {
    v19 = &v37;
  }

  else
  {
    v19 = v37;
  }

  if (v39 >= 0)
  {
    v20 = HIBYTE(v39);
  }

  else
  {
    v20 = v38;
  }

  v21 = sub_10000C030(v18, v19, v20);
  sub_10000C030(v21, ")", 1);
  if (a2)
  {
    __p = 0;
    v35 = 0;
    v36 = 0;
    v22 = *(a1 + 32);
    v33 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = sub_100A94378();
    sub_100A9A300(v23 - *(a1 + 64), &__p);
    if (v33)
    {
      sub_100004A34(v33);
    }

    v24 = sub_10000C030(&v44, " , running for (", 16);
    if (v36 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v36 >= 0)
    {
      v26 = HIBYTE(v36);
    }

    else
    {
      v26 = v35;
    }

    v27 = sub_10000C030(v24, p_p, v26);
    sub_10000C030(v27, ")", 1);
    if (SHIBYTE(v36) < 0)
    {
      operator delete(__p);
    }
  }

  if ((BYTE8(v50) & 0x10) != 0)
  {
    v29 = v50;
    if (v50 < *(&__src + 1))
    {
      *&v50 = *(&__src + 1);
      v29 = *(&__src + 1);
    }

    v30 = __src;
  }

  else
  {
    if ((BYTE8(v50) & 8) == 0)
    {
      v28 = 0;
      a3[23] = 0;
      goto LABEL_48;
    }

    v30 = *(&v45 + 1);
    v29 = *(&v46 + 1);
  }

  v28 = v29 - v30;
  if ((v29 - v30) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v28 >= 0x17)
  {
    operator new();
  }

  a3[23] = v28;
  if (v28)
  {
    memmove(a3, v30, v28);
  }

LABEL_48:
  a3[v28] = 0;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

  *&v44 = v31;
  if (SHIBYTE(v49) < 0)
  {
    operator delete(*(&v48 + 1));
  }

  std::locale::~locale(&v45);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100463918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1004639A0(uint64_t a1)
{
  sub_10016DBD4(a1 + 88);
  v2 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 8);
  sub_1004634CC(a1, 2, __p);
  sub_100A9B39C(a1 + 24, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100463A38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100463A54(void *a1)
{
  v2 = a1[4];
  v8 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = sub_100A94378();
  if (v8)
  {
    sub_100004A34(v8);
  }

  v4 = a1[8];
  v5 = v4 <= v3;
  v6 = v4 - v3;
  if (v5)
  {
    return v6 + a1[9];
  }

  else
  {
    return 0;
  }
}

void sub_100463AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100463AE0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[63] < 0)
  {
    return sub_100005F2C(a2, *(result + 5), *(result + 6));
  }

  *a2 = *(result + 40);
  *(a2 + 16) = *(result + 7);
  return result;
}

void sub_100463B08(uint64_t result, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    sub_100464388(result + 64, a2 + 64);
  }

  if (*(a2 + 32) == 1)
  {
    sub_100464758(result, a2);
  }

  if (*(a2 + 56) == 1)
  {
    v4 = *(a2 + 40);
    *(result + 56) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 648) == 1)
  {
    sub_100464844((result + 120), a2 + 120);
  }

  if (*(a2 + 1168) == 1)
  {
    sub_100464EB8(result + 720, (a2 + 720));
  }

  if (*(a2 + 712) == 1)
  {
    sub_100465A80(result + 656, (a2 + 656));
  }

  if (*(a2 + 1216) == 1)
  {
    v5 = *(a2 + 1176);
    v6 = *(a2 + 1192);
    *(result + 1201) = *(a2 + 1201);
    *(result + 1176) = v5;
    *(result + 1192) = v6;
  }

  *(result + 1224) = *(a2 + 1224);
}

void sub_100463BEC(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
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
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
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
        goto LABEL_7;
      }

      goto LABEL_13;
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
LABEL_7:
    v17 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_101770E14(v17);
    }

    *a4 = 0;
    *(a4 + 1232) = 0;
    if (v16)
    {
      return;
    }

LABEL_60:
    sub_100004A34(v14);
    return;
  }

LABEL_13:
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  v19 = [NSString stringWithUTF8String:v18];
  v20 = [v19 stringByReplacingOccurrencesOfString:@"”" withString:@""];
  v21 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
  v22 = [v20 stringByTrimmingCharactersInSet:v21];

  if ([v22 rangeOfString:@"</wap-provisioningdoc>"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [v22 stringByAppendingString:@"</wap-provisioningdoc>"];

    v22 = v23;
  }

  v24 = [v22 dataUsingEncoding:4];

  v25 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Decoding provisioning XML document using BlastDoor", buf, 2u);
  }

  v77 = 0;
  v78 = 0;
  v76 = 0;
  (*(*v15 + 16))(&v76, v15);
  bzero(buf, 0x4D0uLL);
  v37 = 0;
  v38[0] = &v78;
  (*(*v76 + 80))(buf);
  sub_1003A5C24(&v37);
  v26 = v78;
  if (v78)
  {
    v27 = *a2;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_101770D58(v26, v27);
    }

LABEL_44:
    *a4 = 0;
    *(a4 + 1232) = 0;
    goto LABEL_45;
  }

  if ((v75 & 1) == 0)
  {
    v32 = *a2;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_101770DD0(v32);
    }

    goto LABEL_44;
  }

  bzero(&v37, 0x4D0uLL);
  sub_1004642F0(&v37, buf);
  if (v75 == 1)
  {
    if (v74 == 1)
    {
      sub_10038E6A4(v73);
    }

    if (v72 == 1)
    {
      sub_100009970(&v70, v71);
    }

    if (v69 == 1)
    {
      sub_10038E7C0(v68);
    }

    if (v67 == 1)
    {
      v79 = v66;
      sub_1002CB430(&v79);
      sub_100009970(&v64, v65);
    }

    if (v63 == 1 && v62 < 0)
    {
      operator delete(__p);
    }

    v75 = 0;
  }

  *a4 = 0;
  *(a4 + 32) = 0;
  if (v40 == 1)
  {
    *a4 = v37;
    *(a4 + 8) = *v38;
    *(a4 + 24) = v39;
    v38[0] = 0;
    v38[1] = 0;
    v39 = 0;
    *(a4 + 32) = 1;
  }

  *(a4 + 40) = v41;
  *(a4 + 56) = v42;
  *(a4 + 64) = 0;
  *(a4 + 112) = 0;
  if (v48 == 1)
  {
    v29 = v43;
    v28 = v44;
    *(a4 + 72) = v44;
    v30 = a4 + 72;
    *(a4 + 64) = v29;
    v31 = v45;
    *(a4 + 80) = v45;
    if (v31)
    {
      *(v28 + 2) = v30;
      v43 = &v44;
      v44 = 0;
      v45 = 0;
    }

    else
    {
      *(a4 + 64) = v30;
    }

    *(a4 + 88) = v46;
    *(a4 + 104) = v47;
    v47 = 0;
    v46 = 0uLL;
    *(a4 + 112) = 1;
  }

  sub_100466B4C((a4 + 120), v49);
  *(a4 + 656) = 0;
  *(a4 + 712) = 0;
  if (v54 == 1)
  {
    *(a4 + 656) = v50[0];
    *(a4 + 667) = *(v50 + 11);
    *(a4 + 688) = v51;
    v33 = a4 + 696;
    v34 = v52;
    *(a4 + 696) = v52;
    v35 = v53;
    *(a4 + 704) = v53;
    if (v35)
    {
      *(v34 + 2) = v33;
      v51 = &v52;
      v52 = 0;
      v53 = 0;
    }

    else
    {
      *(a4 + 688) = v33;
    }

    *(a4 + 712) = 1;
  }

  sub_100466B90((a4 + 720), v55);
  v36 = v57;
  *(a4 + 1176) = v56;
  *(a4 + 1192) = v36;
  *(a4 + 1208) = v58;
  *(a4 + 1224) = v59;
  *(a4 + 1232) = 1;
  if (v55[448] == 1)
  {
    sub_10038E6A4(v55);
  }

  if (v54 == 1)
  {
    sub_100009970(&v51, v52);
  }

  if (v49[528] == 1)
  {
    sub_10038E7C0(v49);
  }

  if (v48 == 1)
  {
    v79 = &v46;
    sub_1002CB430(&v79);
    sub_100009970(&v43, v44);
  }

  if (v40 == 1 && SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

LABEL_45:
  if (v75 == 1)
  {
    if (v74 == 1)
    {
      sub_10038E6A4(v73);
    }

    if (v72 == 1)
    {
      sub_100009970(&v70, v71);
    }

    if (v69 == 1)
    {
      sub_10038E7C0(v68);
    }

    if (v67 == 1)
    {
      v37 = v66;
      sub_1002CB430(&v37);
      sub_100009970(&v64, v65);
    }

    if (v63 == 1 && v62 < 0)
    {
      operator delete(__p);
    }
  }

  if (v77)
  {
    sub_100004A34(v77);
  }

  sub_1003A5A8C(&v78);

  if ((v16 & 1) == 0)
  {
    goto LABEL_60;
  }
}

void sub_100464268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_1003A5C24(&a9);
  v14 = *(v12 - 104);
  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_1003A5A8C((v12 - 96));

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1004642F0(uint64_t a1, uint64_t a2)
{
  sub_100465B34(a1, a2);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  sub_100465BE4(a1 + 64, a2 + 64);
  sub_100465CE0(a1 + 120, a2 + 120);
  sub_1004662D4(a1 + 656, (a2 + 656));
  sub_1004663A4((a1 + 720), (a2 + 720));
  v5 = *(a2 + 1176);
  v6 = *(a2 + 1192);
  *(a1 + 1201) = *(a2 + 1201);
  *(a1 + 1176) = v5;
  *(a1 + 1192) = v6;
  return a1;
}

void sub_100464388(uint64_t result, uint64_t a2)
{
  if (*(result + 48) == *(a2 + 48))
  {
    if (result != a2 && *(result + 48))
    {
      sub_1001730B8(result, *a2, (a2 + 8));
      v4 = *(a2 + 24);
      v5 = *(a2 + 32);

      sub_1004644EC((result + 24), v4, v5, 0x6DB6DB6DB6DB6DB7 * ((v5 - v4) >> 3));
    }
  }

  else if (*(result + 48))
  {

    sub_100464494(result);
  }

  else
  {
    v6 = sub_100074920(result, a2);
    v6[3] = 0;
    v6[4] = 0;
    v6 += 3;
    v6[2] = 0;
    sub_1002CB1BC(v6, *(a2 + 24), *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    *(result + 48) = 1;
  }
}

void sub_100464494(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    v4[0] = (a1 + 24);
    sub_1002CB430(v4);
    sub_100009970(a1, *(a1 + 8));
    *(a1 + 48) = 0;
  }
}

void sub_1004644EC(char **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_100464668(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_1002CB244(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_1004646D0(&v16, __str, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 -= 56;
        sub_1002CB3DC(v14);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_1004646D0(&v15, __str, (__str + v11), v8);
    a1[1] = sub_1002CB2F0(a1, __str + v11, a3, a1[1]);
  }
}

void sub_100464668(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        sub_1002CB3DC(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

std::string *sub_1004646D0(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str != a3)
  {
    p_size = &__str[1].__r_.__value_.__l.__size_;
    do
    {
      std::string::operator=(this, v5);
      if (this != v5)
      {
        sub_1001730B8(&this[1], v5[1].__r_.__value_.__l.__data_, p_size);
      }

      this[2].__r_.__value_.__s.__data_[0] = v5[2].__r_.__value_.__s.__data_[0];
      v5 = (v5 + 56);
      this = (this + 56);
      p_size += 7;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_100464758(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 32) == *(a2 + 32))
  {
    if (*(a1 + 32))
    {
      v4 = *a2;
      v3 = (a2 + 1);
      *a1 = v4;
      v5 = (a1 + 8);

      std::string::operator=(v5, v3);
    }
  }

  else if (*(a1 + 32))
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 32) = 0;
  }

  else
  {

    sub_1004647EC(a1, a2);
  }
}

void *sub_1004647EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = (a1 + 8);
  if (*(a2 + 31) < 0)
  {
    result = sub_100005F2C(result, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    result[2] = *(a2 + 24);
    *result = v4;
  }

  *(a1 + 32) = 1;
  return result;
}

char *sub_100464844(char *result, uint64_t a2)
{
  if (result[528] == *(a2 + 528))
  {
    if (result[528])
    {

      return sub_1004648A0(result, a2);
    }
  }

  else if (result[528])
  {
    result = sub_10038E7C0(result);
    result[528] = 0;
  }

  else
  {
    result = sub_1004649DC(result, a2);
    result[528] = 1;
  }

  return result;
}

uint64_t sub_1004648A0(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  sub_10012BF3C((a1 + 24), (a2 + 24));
  if (a1 != a2)
  {
    sub_1001730B8((a1 + 56), *(a2 + 56), (a2 + 64));
    sub_1001730B8((a1 + 80), *(a2 + 80), (a2 + 88));
  }

  std::string::operator=((a1 + 104), (a2 + 104));
  std::string::operator=((a1 + 128), (a2 + 128));
  v4 = *(a2 + 168);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = v4;
  std::string::operator=((a1 + 176), (a2 + 176));
  std::string::operator=((a1 + 200), (a2 + 200));
  std::string::operator=((a1 + 224), (a2 + 224));
  std::string::operator=((a1 + 248), (a2 + 248));
  std::string::operator=((a1 + 272), (a2 + 272));
  std::string::operator=((a1 + 296), (a2 + 296));
  std::string::operator=((a1 + 320), (a2 + 320));
  std::string::operator=((a1 + 344), (a2 + 344));
  std::string::operator=((a1 + 368), (a2 + 368));
  std::string::operator=((a1 + 392), (a2 + 392));
  std::string::operator=((a1 + 416), (a2 + 416));
  std::string::operator=((a1 + 440), (a2 + 440));
  std::string::operator=((a1 + 464), (a2 + 464));
  v5 = *(a2 + 520);
  v6 = *(a2 + 504);
  *(a1 + 488) = *(a2 + 488);
  *(a1 + 504) = v6;
  *(a1 + 520) = v5;
  return a1;
}

char *sub_1004649DC(char *__dst, __int128 *a2)
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

  sub_10006F264(__dst + 24, (a2 + 24));
  sub_100074920(__dst + 7, a2 + 56);
  sub_100074920(__dst + 10, a2 + 80);
  if (*(a2 + 127) < 0)
  {
    sub_100005F2C(__dst + 104, *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v5 = *(a2 + 104);
    *(__dst + 15) = *(a2 + 15);
    *(__dst + 104) = v5;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100005F2C(__dst + 128, *(a2 + 16), *(a2 + 17));
  }

  else
  {
    v6 = a2[8];
    *(__dst + 18) = *(a2 + 18);
    *(__dst + 8) = v6;
  }

  v7 = *(a2 + 152);
  *(__dst + 21) = *(a2 + 21);
  *(__dst + 152) = v7;
  if (*(a2 + 199) < 0)
  {
    sub_100005F2C(__dst + 176, *(a2 + 22), *(a2 + 23));
  }

  else
  {
    v8 = a2[11];
    *(__dst + 24) = *(a2 + 24);
    *(__dst + 11) = v8;
  }

  if (*(a2 + 223) < 0)
  {
    sub_100005F2C(__dst + 200, *(a2 + 25), *(a2 + 26));
  }

  else
  {
    v9 = *(a2 + 200);
    *(__dst + 27) = *(a2 + 27);
    *(__dst + 200) = v9;
  }

  if (*(a2 + 247) < 0)
  {
    sub_100005F2C(__dst + 224, *(a2 + 28), *(a2 + 29));
  }

  else
  {
    v10 = a2[14];
    *(__dst + 30) = *(a2 + 30);
    *(__dst + 14) = v10;
  }

  if (*(a2 + 271) < 0)
  {
    sub_100005F2C(__dst + 248, *(a2 + 31), *(a2 + 32));
  }

  else
  {
    v11 = *(a2 + 248);
    *(__dst + 33) = *(a2 + 33);
    *(__dst + 248) = v11;
  }

  if (*(a2 + 295) < 0)
  {
    sub_100005F2C(__dst + 272, *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v12 = a2[17];
    *(__dst + 36) = *(a2 + 36);
    *(__dst + 17) = v12;
  }

  if (*(a2 + 319) < 0)
  {
    sub_100005F2C(__dst + 296, *(a2 + 37), *(a2 + 38));
  }

  else
  {
    v13 = *(a2 + 296);
    *(__dst + 39) = *(a2 + 39);
    *(__dst + 296) = v13;
  }

  if (*(a2 + 343) < 0)
  {
    sub_100005F2C(__dst + 320, *(a2 + 40), *(a2 + 41));
  }

  else
  {
    v14 = a2[20];
    *(__dst + 42) = *(a2 + 42);
    *(__dst + 20) = v14;
  }

  if (*(a2 + 367) < 0)
  {
    sub_100005F2C(__dst + 344, *(a2 + 43), *(a2 + 44));
  }

  else
  {
    v15 = *(a2 + 344);
    *(__dst + 45) = *(a2 + 45);
    *(__dst + 344) = v15;
  }

  if (*(a2 + 391) < 0)
  {
    sub_100005F2C(__dst + 368, *(a2 + 46), *(a2 + 47));
  }

  else
  {
    v16 = a2[23];
    *(__dst + 48) = *(a2 + 48);
    *(__dst + 23) = v16;
  }

  if (*(a2 + 415) < 0)
  {
    sub_100005F2C(__dst + 392, *(a2 + 49), *(a2 + 50));
  }

  else
  {
    v17 = *(a2 + 392);
    *(__dst + 51) = *(a2 + 51);
    *(__dst + 392) = v17;
  }

  if (*(a2 + 439) < 0)
  {
    sub_100005F2C(__dst + 416, *(a2 + 52), *(a2 + 53));
  }

  else
  {
    v18 = a2[26];
    *(__dst + 54) = *(a2 + 54);
    *(__dst + 26) = v18;
  }

  if (*(a2 + 463) < 0)
  {
    sub_100005F2C(__dst + 440, *(a2 + 55), *(a2 + 56));
  }

  else
  {
    v19 = *(a2 + 440);
    *(__dst + 57) = *(a2 + 57);
    *(__dst + 440) = v19;
  }

  if (*(a2 + 487) < 0)
  {
    sub_100005F2C(__dst + 464, *(a2 + 58), *(a2 + 59));
  }

  else
  {
    v20 = a2[29];
    *(__dst + 60) = *(a2 + 60);
    *(__dst + 29) = v20;
  }

  v21 = *(a2 + 488);
  v22 = *(a2 + 504);
  *(__dst + 260) = *(a2 + 260);
  *(__dst + 488) = v21;
  *(__dst + 504) = v22;
  return __dst;
}

void sub_100464D00(_Unwind_Exception *a1)
{
  if (*(v1 + 463) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 439) < 0)
  {
    operator delete(*(v1 + 416));
  }

  if (*(v1 + 415) < 0)
  {
    operator delete(*v4);
  }

  if (*(v1 + 391) < 0)
  {
    operator delete(*(v1 + 368));
  }

  if (*(v1 + 367) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 343) < 0)
  {
    operator delete(*(v1 + 320));
  }

  if (*(v1 + 319) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 295) < 0)
  {
    operator delete(*(v1 + 272));
  }

  if (*(v1 + 271) < 0)
  {
    operator delete(*(v1 + 248));
  }

  if (*(v1 + 247) < 0)
  {
    operator delete(*(v1 + 224));
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  sub_100009970(v1 + 80, *(v1 + 88));
  sub_100009970(v1 + 56, *(v1 + 64));
  if (*(v1 + 48) == 1 && *(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void sub_100464EB8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 448) == *(a2 + 448))
  {
    if (*(a1 + 448))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
      sub_100464F78((a1 + 24), a2 + 1);
      sub_100465174((a1 + 120), (a2 + 120));
      sub_100465434(a1 + 264, (a2 + 264));
      sub_10046562C((a1 + 368), (a2 + 23));

      sub_10012BF3C((a1 + 416), (a2 + 26));
    }
  }

  else if (*(a1 + 448))
  {
    sub_10038E6A4(a1);
    *(a1 + 448) = 0;
  }

  else
  {
    sub_1004657FC(a1, a2);
    *(a1 + 448) = 1;
  }
}

void sub_100464F78(std::string *__dst, std::string *__str)
{
  if (__dst[3].__r_.__value_.__s.__data_[16] == __str[3].__r_.__value_.__s.__data_[16])
  {
    if (__dst[3].__r_.__value_.__s.__data_[16])
    {
      std::string::operator=(__dst, __str);
      std::string::operator=(__dst + 1, __str + 1);
      std::string::operator=(__dst + 2, __str + 2);
      v4 = __str[3].__r_.__value_.__r.__words[1];
      __dst[3].__r_.__value_.__r.__words[0] = __str[3].__r_.__value_.__r.__words[0];
      LOWORD(__dst[3].__r_.__value_.__r.__words[1]) = v4;
    }
  }

  else if (__dst[3].__r_.__value_.__s.__data_[16])
  {

    sub_100465028(__dst);
  }

  else
  {

    sub_10046508C(__dst, __str);
  }
}

void sub_100465028(uint64_t a1)
{
  if (*(a1 + 88) == 1)
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

    *(a1 + 88) = 0;
  }
}

char *sub_10046508C(char *__dst, __int128 *a2)
{
  v3 = __dst;
  if (*(a2 + 23) < 0)
  {
    __dst = sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    __dst = sub_100005F2C(v3 + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    __dst = sub_100005F2C(v3 + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 3) = v6;
  }

  v7 = *(a2 + 9);
  *(v3 + 40) = *(a2 + 40);
  *(v3 + 9) = v7;
  v3[88] = 1;
  return __dst;
}

void sub_100465140(_Unwind_Exception *exception_object)
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

void sub_100465174(std::string *result, __int128 *a2)
{
  if (result[5].__r_.__value_.__s.__data_[16] == *(a2 + 136))
  {
    if (result[5].__r_.__value_.__s.__data_[16])
    {
      v4 = *a2;
      result->__r_.__value_.__s.__data_[16] = *(a2 + 16);
      *&result->__r_.__value_.__l.__data_ = v4;
      std::string::operator=(result + 1, a2 + 1);
      std::string::operator=(result + 2, a2 + 2);
      std::string::operator=(result + 3, a2 + 3);
      std::string::operator=(result + 4, a2 + 4);
      *&result[5].__r_.__value_.__l.__data_ = *(a2 + 120);
    }
  }

  else if (result[5].__r_.__value_.__s.__data_[16])
  {

    sub_100465230(result);
  }

  else
  {
    sub_100465308(result, a2);
    result[5].__r_.__value_.__s.__data_[16] = 1;
  }
}

void sub_100465230(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 136) = 0;
  }
}

uint64_t sub_1004652A4(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

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

uint64_t sub_100465308(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(a1 + 64) = *(a2 + 8);
    *(a1 + 48) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C((a1 + 72), *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a1 + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C((a1 + 96), *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(a1 + 112) = *(a2 + 14);
    *(a1 + 96) = v8;
  }

  *(a1 + 120) = *(a2 + 120);
  return a1;
}

void sub_1004653E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_100465434(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 96) == *(a2 + 96))
  {
    if (*(a1 + 96))
    {
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 32) = *(a2 + 16);
      *a1 = v4;
      *(a1 + 16) = v5;
      std::string::operator=((a1 + 40), (a2 + 40));

      sub_10012BF3C((a1 + 64), (a2 + 4));
    }
  }

  else if (*(a1 + 96))
  {

    sub_1004654F0(a1);
  }

  else
  {

    sub_100465550(a1, a2);
  }
}