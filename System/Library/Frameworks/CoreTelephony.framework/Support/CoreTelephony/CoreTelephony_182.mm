uint64_t sub_1015674B8(uint64_t a1, void *a2)
{
  while (1)
  {
    if (*(a1 + 16) == *(a1 + 20))
    {
      return 1;
    }

    v4 = (*(*a2 + 16))(a2);
    v5 = sub_101567484(a1, v4);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = 1;
    sub_1013D7A0C(a2, v5, 1);
    v8 = (*(*v6 + 64))(v6);
    if (!strcmp(v8, "Content-Type"))
    {
      return v7;
    }
  }

  return 0;
}

void sub_101567598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1013D8420(a2, "Content-Type");
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1013D84A0(v5 + 8, "charset");
  v7 = (v6 + 20);
  if (!v6)
  {
    v7 = &unk_101988A6C;
  }

  v8 = *v7;
  if (!v8)
  {
    v8 = *(a1 + 28);
    sub_1011F3158((v5 + 8), *(a1 + 28));
  }

  if (v8 != *(a1 + 24))
  {
    memset(&__p, 0, sizeof(__p));
    sub_1000167D4(&__p, *(a2 + 72), *(a2 + 96));
    v9 = *(a1 + 24);
    if (v8 != v9 && v9 != 0)
    {
      if (v8 == 3 && v9 == 106 || sub_1014F7EA0(&__p, &__p, v8, v9))
      {
        goto LABEL_21;
      }

      v9 = *(a1 + 24);
    }

    if (!sub_1014F7EA0(&__p, &__p, v9, v9) && !sub_1014F7EA0(&__p, &__p, 3, *(a1 + 24)))
    {
      v11 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        v12 = sub_101540E9C(v8);
        v13 = sub_101540E9C(*(a1 + 24));
        v14 = *(a1 + 24);
        *buf = 136315906;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = v8;
        *&buf[18] = 2080;
        *&buf[20] = v13;
        v28 = 1024;
        v29 = v14;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "unable to convert from charset %s (%d) to %s (%d)", buf, 0x22u);
      }

      goto LABEL_28;
    }

LABEL_21:
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = __p.__r_.__value_.__r.__words[1];
    }

    sub_100EA264C(a2, p_p, v15);
    sub_1011F3158((v5 + 8), *(a1 + 24));
    v17 = sub_1013D8420(a2, "Content-Disposition");
    if (v17)
    {
      sub_1011F3158(v17 + 4, *(a1 + 24));
    }

LABEL_28:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v18 = sub_1013D84A0(v5 + 8, "charset");
  v19 = v18 + 20;
  if (!v18)
  {
    v19 = &unk_101988A6C;
  }

  if (*v19 == 106)
  {
    memset(buf, 0, 24);
    sub_1000167D4(buf, *(a2 + 72), *(a2 + 96));
    v20 = *a1;
    v21 = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "About to decode the body private -> public", &__p, 2u);
    }

    v22 = *(a1 + 36);
    Registry::get(v21);
    *&__p.__r_.__value_.__l.__data_ = v25;
    sub_100839978(v22, &__p, buf, 1);
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_100004A34(__p.__r_.__value_.__l.__size_);
    }

    v23 = buf[23];
    if (buf[23] >= 0)
    {
      v24 = buf;
    }

    else
    {
      v24 = *buf;
    }

    if (buf[23] < 0)
    {
      v23 = *&buf[8];
    }

    sub_100EA264C(a2, v24, v23);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1015678D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101567938(NSObject **a1, int a2)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (sub_101567AE4(a1, &__p))
  {
    v4 = __p;
    if (v12 != __p)
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      while (1)
      {
        if (v6)
        {
          if (sub_101567D38(v6, v4[v5]) < 1)
          {
            v4 = __p;
            v8 = *(__p + v5);
            if (v8)
            {
              (*(*v8 + 8))(v8);
              v4 = __p;
            }

            goto LABEL_8;
          }

          (*(*v6 + 8))(v6);
          v4 = __p;
        }

        v6 = v4[v5];
LABEL_8:
        v5 = v7++;
        if (v5 >= (v12 - v4) >> 3)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v9 = *a1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v15 = a2;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "unable to decode multipart/alternative part %u", buf, 8u);
  }

  v6 = 0;
LABEL_15:
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_101567AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_101567AE4(uint64_t a1, void *a2)
{
  v16 = 0;
  v4 = *(a1 + 20);
  if (sub_101566644(a1, &v16))
  {
    memset(&__p, 0, sizeof(__p));
    sub_101566BC8(a1, v4, *(a1 + 20), &__p);
    v5 = v16;
    if (v16)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        *buf = sub_101567DD0(a1, v7);
        if (!*buf)
        {
          break;
        }

        sub_1013D7F94(a2, buf);
        v6 = ++v7 >= v5;
        if (v5 == v7)
        {
          goto LABEL_6;
        }
      }

      v12 = *a2;
      v13 = a2[1];
      if (*a2 != v13)
      {
        do
        {
          if (*v12)
          {
            (*(**v12 + 8))(*v12);
          }

          ++v12;
        }

        while (v12 != v13);
        v12 = *a2;
      }

      a2[1] = v12;
    }

    else
    {
LABEL_6:
      v8 = *(a1 + 20);
      if (*(a1 + 16) != v8)
      {
        v9 = 0;
        do
        {
          *buf = sub_101567DD0(a1, v5);
          if (!*buf)
          {
            *(a1 + 20) = v8;
            goto LABEL_23;
          }

          sub_1013D7F94(a2, buf);
          v8 = *(a1 + 20);
          --v9;
        }

        while (*(a1 + 16) != v8);
        if (v9)
        {
          v10 = *a1;
          if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v5 - v9;
            v18 = 1024;
            v19 = v5;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I found %u actual entries with nEntries = %u", buf, 0xEu);
          }
        }
      }

LABEL_23:
      v6 = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "unable to decode nEntries for multipart message", &__p, 2u);
    }

    return 0;
  }

  return v6;
}

void sub_101567D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101567D38(uint64_t a1, uint64_t a2)
{
  v3 = sub_1013D8420(a1, "Content-Type");
  if (v3 && (v4 = v3[3]) != 0)
  {
    v5 = !sub_100E5F430(v4, "text", "plain");
  }

  else
  {
    v5 = 100;
  }

  v6 = sub_1013D8420(a2, "Content-Type");
  if (v6 && (v7 = v6[3]) != 0)
  {
    v8 = sub_100E5F430(v7, "text", "plain") - 1;
  }

  else
  {
    v8 = -100;
  }

  return (v8 + v5);
}

uint64_t *sub_101567DD0(uint64_t a1, int a2)
{
  v4 = *(a1 + 20);
  if (*(a1 + 16) != v4)
  {
    v26 = 0;
    if (sub_101566644(a1, &v26))
    {
      memset(&__p, 0, sizeof(__p));
      sub_101566BC8(a1, v4, *(a1 + 20), &__p);
      v24 = 0;
      v5 = *(a1 + 20);
      if (*(a1 + 16) == v5 || (sub_101566644(a1, &v24) & 1) == 0)
      {
        v8 = *a1;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 67109120;
        v28 = a2;
        v10 = "Couldn't decode dataLen for part %u";
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          *__p.__r_.__value_.__l.__data_ = 0;
          __p.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          __p.__r_.__value_.__s.__data_[0] = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
        }

        sub_101566BC8(a1, v5, *(a1 + 20), &__p);
        v9 = *(a1 + 20);
        if (*(a1 + 16) != v9)
        {
          v11 = sub_1013D76B8();
          v12 = (*(**(v11 + 32) + 96))(*(v11 + 32));
          if ((*(*v12 + 24))(v12, a1))
          {
            v14 = *(a1 + 16);
            v13 = *(a1 + 20);
            v15 = v9 - v13 + v26;
            v26 = v15;
            v16 = v14 - v13;
            if (v15 <= v14 - v13)
            {
              operator new();
            }

            v17 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              v28 = v15;
              v29 = 1024;
              v30 = v16;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "HeadersLen %u > remaining %u", buf, 0xEu);
            }

            sub_10000501C(v20, "");
            sub_1015685C4(a1, "bad_part_headersfLen", v20);
            if ((v21 & 0x80000000) == 0)
            {
              goto LABEL_11;
            }

            v18 = v20[0];
          }

          else
          {
            v19 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v28 = a2;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't decode Content-Type for part %u", buf, 8u);
            }

            sub_10000501C(v22, "");
            sub_1015685C4(a1, "bad_part_content_type", v22);
            if ((v23 & 0x80000000) == 0)
            {
              goto LABEL_11;
            }

            v18 = v22[0];
          }

          operator delete(v18);
LABEL_11:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return 0;
        }

        v8 = *a1;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 67109120;
        v28 = a2;
        v10 = "out of buffer before Content-Type for part %u";
      }

      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v10, buf, 8u);
      goto LABEL_11;
    }
  }

  v6 = *a1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v28 = a2;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Couldn't decode headersLen for part %u", buf, 8u);
  }

  return 0;
}

void sub_101568500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015685C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v7 = *(a3 + 16);
  }

  sub_101569C5C(a2, v4, v5, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101568648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101568664(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 >= *(a1 + 16))
  {
    return 0;
  }

  if (*(*(a1 + 8) + v1) < 0)
  {
    *(a1 + 20) = v1 + 1;
    operator new();
  }

  v18 = 0;
  if (sub_101566604(a1, &v18))
  {
    v3 = *(a1 + 20);
    v17 = 0;
    if (sub_101566724(a1, &v17))
    {
      operator new();
    }

    *(a1 + 20) = v3;
    __p[0] = 0;
    __p[1] = 0;
    *&v15 = 0;
    v6 = sub_1015664B4(a1, __p, 0xFFFFFFFF);
    if (v6)
    {
      if ((SBYTE7(v15) & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v5 = sub_100E5F8A8(v7);
      if (v5)
      {
LABEL_19:
        if (SBYTE7(v15) < 0)
        {
          operator delete(__p[0]);
        }

        if (v6)
        {
          v9 = *(a1 + 20);
          v10 = v3 - v9 + v18;
          v18 = v10;
          if (v5)
          {
            v16 = 0;
            *__p = 0u;
            v15 = 0u;
            sub_101566340(__p, a1, v10);
            if ((sub_1015674B8(__p, v5 + 1) & 1) == 0)
            {
              (*(*v5 + 8))(v5);
              v5 = 0;
            }

            ctu::OsLogLogger::~OsLogLogger(__p);
            v10 = v18;
            v9 = *(a1 + 20);
          }

          if (*(a1 + 16) - v9 < v10)
          {
            v10 = *(a1 + 16) - v9;
          }

          *(a1 + 20) = v10 + v9;
          return v5;
        }

        return 0;
      }

      v8 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        v13 = __p;
        if (SBYTE7(v15) < 0)
        {
          v13 = __p[0];
        }

        *buf = 136315138;
        v20 = v13;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s is not a valid content type", buf, 0xCu);
      }
    }

    v5 = 0;
    goto LABEL_19;
  }

  *(a1 + 20) = v1;
  __p[0] = 0;
  __p[1] = 0;
  *&v15 = 0;
  if (sub_1015664B4(a1, __p, 0xFFFFFFFF))
  {
    if ((SBYTE7(v15) & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = sub_100E5F8A8(v4);
  }

  else
  {
    v12 = *a1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "couldn't decode contentType", buf, 2u);
    }

    v5 = 0;
  }

  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_10156949C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101569588(uint64_t a1, void *a2, std::string *a3, std::string *a4, std::string *a5, std::string *a6)
{
  v13 = 0;
  result = sub_101566724(a1, &v13);
  if (result)
  {
    result = sub_1015664B4(a1, a3, 0xFFFFFFFF);
    if (result)
    {
      result = sub_1015664B4(a1, a4, 0xFFFFFFFF);
      if (result)
      {
        result = sub_1015664B4(a1, a5, 0xFFFFFFFF);
        if (result)
        {
          result = sub_1015664B4(a1, a6, 0xFFFFFFFF);
        }
      }
    }
  }

  *a2 = v13;
  return result;
}

void *sub_101569638(uint64_t a1, _DWORD *a2)
{
  *a2 = -1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (v4 - v3 <= 2)
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      v6 = "unable to decode wap push: bodylen = %u";
LABEL_33:
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, buf, 8u);
      return 0;
    }

    return 0;
  }

  if (v4 > v3)
  {
    *(a1 + 20) = ++v3;
  }

  if (v3 >= v4)
  {
    v9 = 0;
  }

  else
  {
    v8 = *(a1 + 8);
    *(a1 + 20) = v3 + 1;
    v9 = *(v8 + v3++);
  }

  if (v3 >= v4)
  {
    v11 = 0;
  }

  else
  {
    v10 = *(a1 + 8);
    *(a1 + 20) = v3 + 1;
    v11 = *(v10 + v3++);
  }

  if (v9 != 6)
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      v6 = "unable to decode wap push: unknown PDU type %u";
      goto LABEL_33;
    }

    return 0;
  }

  if (v4 - v3 >= v11)
  {
    v33 = 0;
    *buf = 0u;
    v32 = 0u;
    v13 = sub_101566340(buf, a1, v11);
    v14 = sub_101568664(v13);
    if (!v14)
    {
      v18 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "unable to decode wap push: bad content type", v27, 2u);
      }

      goto LABEL_51;
    }

    *v27 = 0;
    v28 = 0;
    v29 = 0;
    sub_10000501C(v27, "application/vnd.wap.mms-message");
    __p = 0;
    v25 = 0;
    v26 = 0;
    if (!sub_100E5F108(v14, &__p))
    {
LABEL_46:
      v22 = *a1;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        p_p = &__p;
        if (v26 < 0)
        {
          p_p = __p;
        }

        *v30 = 136315138;
        *&v30[4] = p_p;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Ignoring WAP push with content type [%s]", v30, 0xCu);
      }

      *a2 = 1;
      (*(*v14 + 8))(v14);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(*v27);
      }

LABEL_51:
      ctu::OsLogLogger::~OsLogLogger(buf);
      return 0;
    }

    if (v29 >= 0)
    {
      v15 = HIBYTE(v29);
    }

    else
    {
      v15 = v28;
    }

    if ((SHIBYTE(v26) & 0x8000000000000000) != 0)
    {
      if (v15 != -1)
      {
        v17 = __p;
        if (v25 >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v25;
        }

        goto LABEL_38;
      }
    }

    else if (v15 != -1)
    {
      if (SHIBYTE(v26) >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = SHIBYTE(v26);
      }

      v17 = &__p;
LABEL_38:
      if (v29 >= 0)
      {
        v19 = v27;
      }

      else
      {
        v19 = *v27;
      }

      if (!memcmp(v17, v19, v16) && v16 == v15)
      {
        (*(*v14 + 8))(v14);
        v20 = *(a1 + 20);
        v21 = *(a1 + 16) - v20;
        if (v21 >= v11)
        {
          v21 = v11;
        }

        *(a1 + 20) = v21 + v20;
        sub_1015689C4(a1, 1, 1);
      }

      goto LABEL_46;
    }

    sub_10013C334();
  }

  v5 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v11;
    v6 = "unable to decode wap push: bad wspHeaderLen %u";
    goto LABEL_33;
  }

  return 0;
}

void sub_101569C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  ctu::OsLogLogger::~OsLogLogger((v21 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_101569C5C(const char *a1, const void *a2, size_t a3, uint64_t a4)
{
  result = sub_1000B1374();
  if (!result)
  {
    return result;
  }

  result = sub_1001883A0();
  if (!result)
  {
    return result;
  }

  v51 = 0;
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
  *v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  *__src = 0u;
  v35 = 0u;
  v36 = 0u;
  sub_10000D518(&v35);
  __p = 0;
  v34 = 0uLL;
  WirelessUserDirectory = _GetWirelessUserDirectory();
  sub_10000501C(&v32, WirelessUserDirectory);
  v10 = std::string::append(&v32, "/Library/Logs/CrashReporter/", 0x1CuLL);
  v11 = v10->__r_.__value_.__r.__words[0];
  v52[0] = v10->__r_.__value_.__l.__size_;
  *(v52 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  __p = v11;
  *&v34 = v52[0];
  *(&v34 + 7) = *(v52 + 7);
  HIBYTE(v34) = v12;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (*(a4 + 23) < 0)
  {
    if (*(a4 + 8))
    {
      goto LABEL_9;
    }
  }

  else if (*(a4 + 23))
  {
LABEL_9:
    if (v34 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v34 >= 0)
    {
      v14 = HIBYTE(v34);
    }

    else
    {
      v14 = v34;
    }

    v15 = sub_10000C030(&v35, p_p, v14);
    v16 = strlen(a1);
    v17 = sub_10000C030(v15, a1, v16);
    v18 = *(a4 + 23);
    if (v18 >= 0)
    {
      v19 = a4;
    }

    else
    {
      v19 = *a4;
    }

    if (v18 >= 0)
    {
      v20 = *(a4 + 23);
    }

    else
    {
      v20 = *(a4 + 8);
    }

    sub_10000C030(v17, v19, v20);
    time(0);
    goto LABEL_30;
  }

  if (v34 >= 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p;
  }

  if (v34 >= 0)
  {
    v22 = HIBYTE(v34);
  }

  else
  {
    v22 = v34;
  }

  v23 = sub_10000C030(&v35, v21, v22);
  v24 = strlen(a1);
  v25 = sub_10000C030(v23, a1, v24);
  sub_10000C030(v25, "_error_", 7);
  time(0);
LABEL_30:
  v26 = std::ostream::operator<<();
  sub_10000C030(v26, ".mms", 4);
  memset(&v32, 0, sizeof(v32));
  if ((BYTE8(v41) & 0x10) != 0)
  {
    v28 = v41;
    if (v41 < __src[1])
    {
      *&v41 = __src[1];
      v28 = __src[1];
    }

    v29 = __src[0];
    goto LABEL_37;
  }

  if ((BYTE8(v41) & 8) != 0)
  {
    v29 = *(&v36 + 1);
    v28 = *(&v37 + 1);
LABEL_37:
    v27 = v28 - v29;
    if ((v28 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v27 >= 0x17)
    {
      operator new();
    }

    *(&v32.__r_.__value_.__s + 23) = v28 - v29;
    if (v27)
    {
      memmove(&v32, v29, v27);
    }

    goto LABEL_43;
  }

  v27 = 0;
LABEL_43:
  v32.__r_.__value_.__s.__data_[v27] = 0;
  if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &v32;
  }

  else
  {
    v30 = v32.__r_.__value_.__r.__words[0];
  }

  v31 = fopen(v30, "w");
  if (v31)
  {
    fwrite(a2, 1uLL, a3, v31);
    fclose(v31);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[1]);
  }

  std::locale::~locale(&v36);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10156A0B4(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *a8, void *a9, int a10, __int16 a11, char a12, char a13, char a14, __int16 _12, __int16 _14, char _16, char arg17, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  if (arg17 < 0)
  {
    operator delete(a9);
  }

  if (SHIBYTE(a17) < 0)
  {
    operator delete(a15);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10156A220(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
    if (!v9)
    {
LABEL_3:
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v9)
  {
    goto LABEL_3;
  }

  dispatch_release(v9);
  if (v10)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

void sub_10156A280(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
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

void sub_10156A380(void *a1, uint64_t *a2, dispatch_object_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v5);
  }

  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = a1[2];
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156A4A4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t SuppServicesHandler::SuppServicesHandler(uint64_t a1, uint64_t a2, dispatch_object_t *a3, uint64_t *a4)
{
  v8 = (a1 + 8);
  v9 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  v36 = a1;
  ctu::OsLogContext::OsLogContext(&v51, kCtLoggingSystemName, "set.supp");
  if (v9)
  {
    dispatch_retain(v9);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v11 = dispatch_queue_create_with_target_V2("SuppServicesHandler", initially_inactive, v9);
  dispatch_set_qos_class_floor(v11, QOS_CLASS_UTILITY, 0);
  dispatch_activate(v11);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + 24) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *(a1 + 32) = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger(&v38, &v51);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), &v38);
  ctu::OsLogLogger::~OsLogLogger(&v38);
  ctu::OsLogContext::~OsLogContext(&v51);
  if (v9)
  {
    dispatch_release(v9);
  }

  v50[0] = off_101E2B528;
  v50[1] = sub_10156B0B8;
  v50[3] = v50;
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v12) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v50);
  *a1 = off_101F4D4C8;
  *(a1 + 56) = off_101F4D730;
  *(a1 + 64) = off_101F4D778;
  *(a1 + 72) = a1 + 72;
  *(a1 + 80) = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a2;
  v13 = *(a2 + 8);
  *(a1 + 104) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a4;
  v15 = *(a1 + 24);
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  (*(*v14 + 56))(&v51, v14, &object);
  *(a1 + 112) = v51;
  v51.var0 = 0;
  v51.var1.fRef = 0;
  if (object)
  {
    dispatch_release(object);
  }

  v16 = *a4;
  *a4 = 0;
  *(a1 + 128) = v16;
  Registry::getCommandDriversFactory(&v51, *a2);
  var0 = v51.var0;
  v18 = *(a1 + 24);
  v48 = v18;
  if (v18)
  {
    dispatch_retain(v18);
  }

  (*(*var0 + 160))(var0, &v48);
  if (v48)
  {
    dispatch_release(v48);
  }

  if (v51.var1.fRef)
  {
    sub_100004A34(v51.var1.fRef);
  }

  v19 = *(a1 + 128);
  v20 = *(a1 + 24);
  v47 = v20;
  if (v20)
  {
    dispatch_retain(v20);
  }

  (*(*v19 + 16))(v19, &v47);
  if (v47)
  {
    dispatch_release(v47);
  }

  v21 = *(a1 + 128);
  v22 = *(a1 + 24);
  v46 = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  (*(*v21 + 24))(v21, &v46);
  if (v46)
  {
    dispatch_release(v46);
  }

  *(a1 + 240) = 0;
  v23 = (a1 + 240);
  *(a1 + 232) = a1 + 240;
  *(a1 + 248) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  v24 = *(a1 + 128);
  v25 = *(a1 + 24);
  v45 = v25;
  if (v25)
  {
    dispatch_retain(v25);
  }

  (*(*v24 + 32))(v24, &v45);
  if (v45)
  {
    dispatch_release(v45);
  }

  sub_10000501C(&__p, "SuppServicesHandler");
  v26 = *(a1 + 24);
  v42 = v26;
  if (v26)
  {
    dispatch_retain(v26);
  }

  v27 = *a3;
  v41 = v27;
  if (v27)
  {
    dispatch_retain(v27);
  }

  ctu::RestModule::RestModule();
  if (v41)
  {
    dispatch_release(v41);
  }

  if (v42)
  {
    dispatch_release(v42);
  }

  if (v44 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 448) = a1 + 456;
  *(a1 + 488) = 0u;
  *(a1 + 480) = a1 + 488;
  *(a1 + 512) = 0u;
  *(a1 + 504) = a1 + 512;
  *(a1 + 536) = 0u;
  *(a1 + 528) = a1 + 536;
  *(a1 + 560) = 0u;
  *(a1 + 552) = a1 + 560;
  sub_100AE91C4((a1 + 576), &rest::kDefaultBundles);
  *(a1 + 608) = 0u;
  *(a1 + 600) = a1 + 608;
  *(a1 + 624) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 632) = a1 + 640;
  *(a1 + 656) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 664) = a1 + 672;
  subscriber::makeSimSlotRange();
  v29 = v38;
  v28 = v39;
  if (v38 != v39)
  {
    v30 = v40;
    do
    {
      if (v30(*v29))
      {
        break;
      }

      ++v29;
    }

    while (v29 != v28);
    v37 = v39;
    while (v29 != v37)
    {
      v31 = *v29;
      v32 = *v23;
      if (!*v23)
      {
LABEL_64:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v33 = v32;
          v34 = *(v32 + 32);
          if (v34 <= v31)
          {
            break;
          }

          v32 = *v33;
          if (!*v33)
          {
            goto LABEL_64;
          }
        }

        if (v34 >= v31)
        {
          break;
        }

        v32 = v33[1];
        if (!v32)
        {
          goto LABEL_64;
        }
      }

      do
      {
        ++v29;
      }

      while (v29 != v28 && (v30(*v29) & 1) == 0);
    }
  }

  return v36;
}

const char *sub_10156B0B8(int a1)
{
  v1 = "set.supp.?";
  if (a1 == 2)
  {
    v1 = "set.supp.2";
  }

  if (a1 == 1)
  {
    return "set.supp.1";
  }

  else
  {
    return v1;
  }
}

void sub_10156B0E4(uint64_t a1)
{
  *a1 = off_101F4D4C8;
  v2 = (a1 + 56);
  *(a1 + 56) = off_101F4D730;
  v3 = (a1 + 64);
  *(a1 + 64) = off_101F4D778;
  sub_100009970(a1 + 664, *(a1 + 672));
  sub_100170380(a1 + 632, *(a1 + 640));
  sub_10013DF64(a1 + 600, *(a1 + 608));
  sub_10032D3A4(a1 + 576, *(a1 + 584));
  sub_100009970(a1 + 552, *(a1 + 560));
  sub_100009970(a1 + 528, *(a1 + 536));
  sub_1001A904C(a1 + 504, *(a1 + 512));
  sub_100009970(a1 + 480, *(a1 + 488));
  sub_100034450(*(a1 + 456));
  sub_101577224(a1 + 416);
  v4 = *(a1 + 408);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 392);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 368);
  *(a1 + 368) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_101577308(a1 + 320);
  v7 = *(a1 + 304);
  *(a1 + 304) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_101577438(a1 + 256);
  sub_10157B658(*(a1 + 240));
  v8 = *(a1 + 224);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(a1 + 208);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 160);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 144);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a1 + 120);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(a1 + 104);
  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_1000FEFCC((a1 + 72));
  SuppServicesDriverEventHandlerInterface::~SuppServicesDriverEventHandlerInterface(v3);
  SuppServicesPreferencesDelegateInterface::~SuppServicesPreferencesDelegateInterface(v2);
  v17 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  SuppServicesInterface::~SuppServicesInterface(a1);
}

void sub_10156B378(uint64_t a1)
{
  sub_10156B0E4(a1);

  operator delete();
}

void sub_10156B3B0(uint64_t a1)
{
  sub_10156B0E4(a1 - 56);

  operator delete();
}

void sub_10156B3EC(uint64_t a1)
{
  sub_10156B0E4(a1 - 64);

  operator delete();
}

void sub_10156B428(uint64_t a1, _DWORD *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
  *v23 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v23);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_8:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_9:
  if (!*a2 || !v12)
  {
    goto LABEL_26;
  }

  if ((*(*v12 + 48))(v12))
  {
    sub_10156D3B4(a1, *a2);
    goto LABEL_26;
  }

  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Call waiting not supported. Clear Call Waiting Value", v23, 2u);
  }

  v15 = *a2;
  for (i = *(a1 + 240); i; i = *i)
  {
    v17 = *(i + 8);
    if (v17 <= v15)
    {
      if (v17 >= v15)
      {
        v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Clearing Call Waiting status", v23, 2u);
        }

        v22 = sub_10000BA08(*(a1 + 240), v15) + 8;
        sub_100034450(*v22);
        *v22 = 0;
        v22[1] = 0;
        *(v22 - 1) = v22;
        sub_10156D634(a1, v15);
        goto LABEL_26;
      }

      ++i;
    }
  }

  v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v15);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = subscriber::asString();
    *v23 = 136315138;
    *&v23[4] = v19;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", v23, 0xCu);
  }

LABEL_26:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10156B728(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156B754(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
  if (!v10)
  {
    std::mutex::unlock(v5);
    goto LABEL_9;
  }

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
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
      }

      goto LABEL_34;
    }

    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  std::mutex::unlock(v5);
  if (!v12)
  {
LABEL_9:
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
    }

    return;
  }

LABEL_12:
  v14 = *(a1 + 480);
  if (v14 != (a1 + 488))
  {
    do
    {
      v15 = sub_100007A6C(a2, v14 + 32);
      v16 = v14[56];
      if (a2 + 8 == v15 || v16 != *(v15 + 56))
      {
        *buf = 0;
        v24 = 0;
        (**v12)(buf, v12, (v14 + 32));
        if (*buf && !*(*buf + 49))
        {
          v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*buf + 52));
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = "disabled";
            if (v16)
            {
              v18 = "enabled";
            }

            *v25 = 136315138;
            v26 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I VoLTE provisioning status: %s", v25, 0xCu);
          }

          sub_10156DD80(a1, *(*buf + 52));
        }

        if (v24)
        {
          sub_100004A34(v24);
        }
      }

      v19 = *(v14 + 1);
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
          v20 = *(v14 + 2);
          v21 = *v20 == v14;
          v14 = v20;
        }

        while (!v21);
      }

      v14 = v20;
    }

    while (v20 != (a1 + 488));
  }

  if (v11)
  {
    sub_100004A34(v11);
LABEL_34:
    sub_100004A34(v11);
  }
}

void sub_10156BA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156BAB4(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
  if (!v10)
  {
    std::mutex::unlock(v5);
    goto LABEL_9;
  }

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
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
      }

      goto LABEL_35;
    }

    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  std::mutex::unlock(v5);
  if (!v12)
  {
LABEL_9:
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
    }

    return;
  }

LABEL_12:
  v14 = *(a1 + 504);
  if (v14 != (a1 + 512))
  {
    do
    {
      v15 = sub_100007A6C(a2, v14 + 32);
      if (a2 + 8 == v15 || !sub_1011D44D8((v14 + 56), v15 + 56))
      {
        v24 = 0;
        v25 = 0;
        (**v12)(&v24, v12, (v14 + 32));
        if (v24 && !*(v24 + 49))
        {
          v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v24 + 52));
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            asString();
            v17 = buf;
            if (v23 < 0)
            {
              v17 = *buf;
            }

            *v26 = 136315138;
            v27 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I VoWiFi provisioning status: %s", v26, 0xCu);
            if (v23 < 0)
            {
              operator delete(*buf);
            }
          }

          sub_10156DD80(a1, *(v24 + 52));
        }

        if (v25)
        {
          sub_100004A34(v25);
        }
      }

      v18 = *(v14 + 1);
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = *(v14 + 2);
          v20 = *v19 == v14;
          v14 = v19;
        }

        while (!v20);
      }

      v14 = v19;
    }

    while (v19 != (a1 + 512));
  }

  if (v11)
  {
    sub_100004A34(v11);
LABEL_35:
    sub_100004A34(v11);
  }
}

void sub_10156BDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v16)
  {
    sub_100004A34(v16);
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156BE38(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
  if (!v10)
  {
    std::mutex::unlock(v5);
    goto LABEL_9;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    std::mutex::unlock(v5);
    if (v12)
    {
LABEL_12:
      v14 = *(a1 + 528);
      if (v14 == (a1 + 536))
      {
        goto LABEL_41;
      }

      while (1)
      {
        v15 = sub_100007A6C(a2, v14 + 32);
        if (a2 + 8 != v15 && *(v14 + 14) == *(v15 + 56) && *(v14 + 15) == *(v15 + 60) && v14[64] == *(v15 + 64))
        {
          goto LABEL_21;
        }

        *buf = 0;
        v31 = 0;
        (**v12)(buf, v12, (v14 + 32));
        if (!*buf)
        {
          goto LABEL_19;
        }

        if (*(*buf + 49))
        {
          goto LABEL_19;
        }

        v19 = *(a1 + 240);
        if (!v19)
        {
          goto LABEL_19;
        }

        v20 = *(*buf + 52);
        v21 = *(a1 + 240);
        while (1)
        {
          v22 = *(v21 + 8);
          if (v20 >= v22)
          {
            break;
          }

LABEL_33:
          v21 = *v21;
          if (!v21)
          {
            goto LABEL_19;
          }
        }

        if (v22 < v20)
        {
          break;
        }

        v23 = *(v14 + 14);
        v24 = *(v14 + 15);
        v25 = sub_10000BA08(v19, v20);
        v26 = (v23 | v24) & 1;
        if (*(v25 + 164) != v26)
        {
          v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*buf + 52));
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = "disabled";
            if (v26)
            {
              v28 = "enabled";
            }

            *v32 = 136315138;
            v33 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Feature is %s", v32, 0xCu);
          }

          *(v25 + 164) = v26;
          sub_10156DD80(a1, *(*buf + 52));
        }

LABEL_19:
        if (v31)
        {
          sub_100004A34(v31);
        }

LABEL_21:
        v16 = *(v14 + 1);
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
            v17 = *(v14 + 2);
            v18 = *v17 == v14;
            v14 = v17;
          }

          while (!v18);
        }

        v14 = v17;
        if (v17 == (a1 + 536))
        {
LABEL_41:
          if (v11)
          {
            sub_100004A34(v11);
            goto LABEL_45;
          }

          return;
        }
      }

      ++v21;
      goto LABEL_33;
    }

LABEL_9:
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
    }

    return;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  if (v12)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
  }

LABEL_45:
  sub_100004A34(v11);
}

void sub_10156C1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (v12)
  {
    sub_100004A34(v12);
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156C218(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
  if (!v10)
  {
    std::mutex::unlock(v5);
    goto LABEL_9;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    std::mutex::unlock(v5);
    if (v12)
    {
LABEL_12:
      v14 = *(a1 + 552);
      if (v14 == (a1 + 560))
      {
        goto LABEL_42;
      }

      while (1)
      {
        v15 = sub_100007A6C(a2, v14 + 32);
        if (a2 + 8 != v15 && sub_1008DFB14((v14 + 56), v15 + 56))
        {
          goto LABEL_19;
        }

        *buf = 0;
        v32 = 0;
        (**v12)(buf, v12, (v14 + 32));
        if (!*buf)
        {
          goto LABEL_17;
        }

        if (*(*buf + 49))
        {
          goto LABEL_17;
        }

        v19 = *(a1 + 240);
        if (!v19)
        {
          goto LABEL_17;
        }

        v20 = *(*buf + 52);
        v21 = *(a1 + 240);
        while (1)
        {
          v22 = *(v21 + 8);
          if (v20 >= v22)
          {
            break;
          }

LABEL_31:
          v21 = *v21;
          if (!v21)
          {
            goto LABEL_17;
          }
        }

        if (v22 < v20)
        {
          break;
        }

        v23 = sub_10000BA08(v19, v20);
        v24 = sub_10000BA08(*(a1 + 240), *(*buf + 52));
        v25 = v24;
        v26 = *(v14 + 14);
        if (v26 == 1 && (*(v23 + 162) & 1) == 0)
        {
          log = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*buf + 52));
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I We are IMS Registered for the 1st time after restart/SIM insert", v30, 2u);
          }

          *(v23 + 162) = 1;
          v27 = *(v14 + 14) == 1;
          if (*(v25 + 163) != v27)
          {
LABEL_40:
            *(v25 + 163) = v27;
          }

          sub_10156DD80(a1, *(*buf + 52));
        }

        else
        {
          v27 = v26 == 1;
          if (*(v24 + 163) != v27)
          {
            goto LABEL_40;
          }
        }

LABEL_17:
        if (v32)
        {
          sub_100004A34(v32);
        }

LABEL_19:
        v16 = *(v14 + 1);
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
            v17 = *(v14 + 2);
            v18 = *v17 == v14;
            v14 = v17;
          }

          while (!v18);
        }

        v14 = v17;
        if (v17 == (a1 + 560))
        {
LABEL_42:
          if (v11)
          {
            sub_100004A34(v11);
            goto LABEL_46;
          }

          return;
        }
      }

      ++v21;
      goto LABEL_31;
    }

LABEL_9:
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
    }

    return;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  if (v12)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  v28 = *(a1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
  }

LABEL_46:
  sub_100004A34(v11);
}

void sub_10156C588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (v14)
  {
    sub_100004A34(v14);
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10156C5CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 576);
  v3 = (result + 584);
  if (v2 != result + 584)
  {
    v4 = result;
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      v7 = *(v2 + 32);
      if (*v5)
      {
        v8 = v5;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 != v5 && v7 >= *(v8 + 8))
        {
          result = rest::operator==();
          if (result)
          {
            goto LABEL_47;
          }

          v7 = *(v2 + 32);
        }
      }

      result = v4[30];
      if (result)
      {
        v9 = v4[30];
        do
        {
          v10 = *(v9 + 8);
          if (v10 <= v7)
          {
            if (v10 >= v7)
            {
              result = sub_10000BA08(result, v7);
              if (*(result + 128))
              {
                v11 = *(v2 + 40) == 2;
              }

              else
              {
                v11 = 0;
              }

              if (v11)
              {
                result = sub_10000BA08(v4[30], v7);
                v12 = *(v2 + 71);
                v13 = v12 >= 0 ? *(v2 + 71) : *(v2 + 56);
                if (v13)
                {
                  v14 = *(result + 128);
                  v15 = (v14 + 8);
                  v16 = *(v14 + 31);
                  v17 = v16;
                  if ((v16 & 0x80u) != 0)
                  {
                    v16 = *(v14 + 16);
                  }

                  if (v13 != v16 || (v12 >= 0 ? (v18 = (v2 + 48)) : (v18 = *(v2 + 48)), v17 >= 0 ? (v19 = (v14 + 8)) : (v19 = *v15), result = memcmp(v18, v19, v13), result))
                  {
                    v20 = *(*(*v4[6] + 16))(v4[6], v7);
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      if (*(v2 + 71) >= 0)
                      {
                        v21 = v2 + 48;
                      }

                      else
                      {
                        v21 = *(v2 + 48);
                      }

                      if (*(v14 + 31) < 0)
                      {
                        v15 = *v15;
                      }

                      *buf = 136315394;
                      v25 = v21;
                      v26 = 2080;
                      v27 = v15;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Operator bundle ID changing to %s, cached is %s. Resetting CLIR network setting", buf, 0x16u);
                    }

                    result = sub_101570A74(v4, v7);
                  }
                }
              }

              break;
            }

            ++v9;
          }

          v9 = *v9;
        }

        while (v9);
      }

LABEL_47:
      v22 = *(v2 + 8);
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
          v23 = *(v2 + 16);
          v11 = *v23 == v2;
          v2 = v23;
        }

        while (!v11);
      }

      v2 = v23;
    }

    while (v23 != v3);
  }

  return result;
}

uint64_t sub_10156C848(uint64_t a1)
{
  v2 = *(a1 + 232);
  v3 = (a1 + 240);
  if (v2 != (a1 + 240))
  {
    do
    {
      v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v2 + 8));
      v5 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = CSIBOOLAsString(*(v2 + 201));
        *buf = 136315138;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fValidGwSim: %s", buf, 0xCu);
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CSIBOOLAsString(*(v2 + 200));
        *buf = 136315138;
        v24 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fXcapAllowed: %s", buf, 0xCu);
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = CSIBOOLAsString(*(v2 + 204));
        *buf = 136315138;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fImsFeatureEnabled: %s", buf, 0xCu);
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = CSIBOOLAsString(*(v2 + 202));
        *buf = 136315138;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fImsRegisteredAtleastOnce: %s", buf, 0xCu);
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = CSIBOOLAsString(*(v2 + 205));
        *buf = 136315138;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fConnectionAvailabilityForUtService [Available:%s]", buf, 0xCu);
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = CSIBOOLAsString(*(v2 + 207));
        *buf = 136315138;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fConnectionAvailabilityForEmLocService [Available:%s]", buf, 0xCu);
      }

      v12 = v2[13];
      if (v12)
      {
        v13 = (v2 + 13);
        v14 = v2[13];
        do
        {
          if (v14[7] >= 1)
          {
            v13 = v14;
          }

          v14 = *&v14[2 * (v14[7] < 1)];
        }

        while (v14);
        if (v13 != (v2 + 13) && v13[7] <= 1)
        {
          v15 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            while (1)
            {
              while (1)
              {
                v16 = *(v12 + 7);
                if (v16 < 2)
                {
                  break;
                }

                v12 = *v12;
                if (!v12)
                {
                  goto LABEL_38;
                }
              }

              if (v16 == 1)
              {
                break;
              }

              v12 = v12[1];
              if (!v12)
              {
LABEL_38:
                sub_1000A58E4("map::at:  key not found");
              }
            }

            v17 = CSIBOOLAsString(*(v12 + 32));
            *buf = 136315138;
            v24 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I fCallWaiting[kCTCallClassVoice]: %s", buf, 0xCu);
          }
        }
      }

      v18 = v2[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v2[2];
          v20 = *v19 == v2;
          v2 = v19;
        }

        while (!v20);
      }

      v2 = v19;
    }

    while (v19 != v3);
  }

  v21 = *(**(a1 + 384) + 48);

  return v21();
}

uint64_t sub_10156CC00(uint64_t result, uint64_t *a2)
{
  if (*(a2 + 24) == 1)
  {
    v3 = result;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Device with ID '%s' is in proximity, will sync preferences", &v6, 0xCu);
    }

    return (*(**(v3 + 184) + 144))(*(v3 + 184));
  }

  return result;
}

void sub_10156CCEC(void **a1)
{
  subscriber::makeSimSlotRange();
  v2 = v11;
  v3 = v12;
  if (v11 != v12)
  {
    v4 = v13;
    do
    {
      if (v13(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v12);
    v5 = v12;
    while (v2 != v5)
    {
      v6 = *v2;
      v9 = 0;
      v10 = 0;
      sub_10156CE14(a1, v6, &v9);
      if (v10)
      {
        sub_100004A34(v10);
      }

      v7 = 0;
      v8 = 0;
      sub_10156D0E4(a1, v6, &v7);
      if (v8)
      {
        sub_100004A34(v8);
      }

      sub_10156D3B4(a1, v6);
      sub_10156D634(a1, v6);
      sub_10156D894(a1, v6);
      do
      {
        ++v2;
      }

      while (v2 != v3 && (v4(*v2) & 1) == 0);
    }
  }
}

void sub_10156CDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156CE14(void **a1, uint64_t a2, void *a3)
{
  v5 = a1[30];
  if (!v5)
  {
LABEL_7:
    v9 = *(*(*a1[6] + 16))(a1[6], a2, a3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315138;
      *&v19[4] = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", v19, 0xCu);
    }

    return;
  }

  v7 = v5;
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= a2)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v8 < a2)
  {
    ++v7;
    goto LABEL_6;
  }

  if (*a3)
  {
    goto LABEL_16;
  }

  (*(*a1[23] + 40))(v19);
  v10 = *v19;
  *v19 = 0uLL;
  v11 = a3[1];
  *a3 = v10;
  if (!v11)
  {
    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  sub_100004A34(v11);
  if (*&v19[8])
  {
    sub_100004A34(*&v19[8]);
  }

  if (!*a3)
  {
LABEL_22:
    v18 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N Could not restore CLIR user setting from persistent storage", v19, 2u);
    }

    return;
  }

LABEL_15:
  v5 = a1[30];
LABEL_16:
  v12 = sub_10000BA08(v5, a2);
  v13 = *a3;
  *a3 = 0;
  a3[1] = 0;
  v14 = v12[19];
  *(v12 + 9) = v13;
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(*(*a1[6] + 16))(a1[6], a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000BA08(a1[30], a2);
    v16 = asString();
    sub_10000BA08(a1[30], a2);
    v17 = asString();
    *v19 = 136315394;
    *&v19[4] = v16;
    *&v19[12] = 2080;
    *&v19[14] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Restored the CLIR user setting from Persistent Storage with Service Status %s, Provisioned Status %s", v19, 0x16u);
  }

  sub_1015707E0(a1, a2);
}

void sub_10156D0E4(void **a1, uint64_t a2, void *a3)
{
  v5 = a1[30];
  if (!v5)
  {
LABEL_7:
    v9 = *(*(*a1[6] + 16))(a1[6], a2, a3);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315138;
      *&v19[4] = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", v19, 0xCu);
    }

    return;
  }

  v7 = v5;
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= a2)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v8 < a2)
  {
    ++v7;
    goto LABEL_6;
  }

  if (*a3)
  {
    goto LABEL_16;
  }

  (*(*a1[23] + 64))(v19);
  v10 = *v19;
  *v19 = 0uLL;
  v11 = a3[1];
  *a3 = v10;
  if (!v11)
  {
    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  sub_100004A34(v11);
  if (*&v19[8])
  {
    sub_100004A34(*&v19[8]);
  }

  if (!*a3)
  {
LABEL_22:
    v18 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N Could not restore CLIR network setting from persistent storage", v19, 2u);
    }

    return;
  }

LABEL_15:
  v5 = a1[30];
LABEL_16:
  v12 = sub_10000BA08(v5, a2);
  v13 = *a3;
  *a3 = 0;
  a3[1] = 0;
  v14 = v12[17];
  *(v12 + 8) = v13;
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(*(*a1[6] + 16))(a1[6], a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000BA08(a1[30], a2);
    v16 = asString();
    sub_10000BA08(a1[30], a2);
    v17 = asString();
    *v19 = 136315394;
    *&v19[4] = v16;
    *&v19[12] = 2080;
    *&v19[14] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Restored the CLIR network setting from Persistent Storage with Service Status %s, Provisioned Status %s", v19, 0x16u);
  }

  sub_1015707E0(a1, a2);
}

void sub_10156D3B4(void **a1, uint64_t a2)
{
  v4 = a1[30];
  if (!v4)
  {
LABEL_7:
    v6 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
    }

    return;
  }

  while (1)
  {
    v5 = *(v4 + 8);
    if (v5 <= a2)
    {
      break;
    }

LABEL_6:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 < a2)
  {
    ++v4;
    goto LABEL_6;
  }

  v7 = (*(*a1[23] + 88))(a1[23], a2);
  if ((v7 & 0x100) != 0)
  {
    v12 = v7;
    v13 = sub_10000BA08(a1[30], a2) + 8;
    sub_100034450(*v13);
    *v13 = 0;
    v13[1] = 0;
    *(v13 - 1) = v13;
    v14 = sub_10000BA08(a1[30], a2);
    v17 = 1;
    *buf = &v17;
    *(sub_10142B4C4(v14 + 7, 1, buf) + 32) = v12;
    v15 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "OFF";
      if (v12)
      {
        v16 = "ON";
      }

      *buf = 136315138;
      *&buf[4] = v16;
      v9 = "#I Restored Call Waiting status %s from Persistent Storage";
      v10 = v15;
      v11 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    v8 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "#I Could not restore Call Waiting status from Persistent Storage";
      v10 = v8;
      v11 = 2;
      goto LABEL_17;
    }
  }
}

void sub_10156D634(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BA08(*(a1 + 240), a2);
  v7 = v4[8];
  v5 = v4 + 8;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 28) >= 1)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < 1));
  }

  while (v6);
  if (v8 == v5 || *(v8 + 7) >= 2)
  {
LABEL_8:
    v8 = v5;
  }

  if (v8 == sub_10000BA08(*(a1 + 240), a2) + 8)
  {
    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Call waiting status cleared", buf, 2u);
    }

    v10 = 1;
  }

  else
  {
    v9 = sub_10000BA08(*(a1 + 240), a2);
    v15 = 1;
    *buf = &v15;
    v10 = *(sub_10142B4C4(v9 + 7, 1, buf) + 32);
  }

  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "OFF";
    if (v10)
    {
      v13 = "ON";
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Publishing Call Waiting status %s", buf, 0xCu);
  }

  v14 = *(a1 + 200);
  PersonalityIdFromSlotId();
  (*(*v14 + 200))(v14, buf, v10 & 1);
  if (v17 < 0)
  {
    operator delete(*buf);
  }
}

void sub_10156D870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156D894(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  if (!v4)
  {
LABEL_7:
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v14, 0xCu);
    }

    return;
  }

  while (1)
  {
    v5 = *(v4 + 8);
    if (v5 <= a2)
    {
      break;
    }

LABEL_6:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 < a2)
  {
    ++v4;
    goto LABEL_6;
  }

  v7 = (*(**(a1 + 184) + 112))(*(a1 + 184), a2);
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if ((v7 & 0x100) != 0)
  {
    if (v9)
    {
      v13 = "OFF";
      if (v7)
      {
        v13 = "ON";
      }

      v14 = 136315138;
      v15 = v13;
      v10 = "#I Restored Auto Answer status to %s from Persistent Storage";
      v11 = v8;
      v12 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  else if (v9)
  {
    LOWORD(v14) = 0;
    v10 = "#N Could not restore Auto Answer status from Persistent Storage";
    v11 = v8;
    v12 = 2;
    goto LABEL_17;
  }
}

void sub_10156DA88(uint64_t a1, _DWORD *a2)
{
  if (*a2 != *(a1 + 624))
  {
    subscriber::makeSimSlotRange();
    v4 = *buf;
    if (*buf != v17)
    {
      do
      {
        if (v18(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != v17);
      while (v4 != v17)
      {
        v5 = *v4++;
        sub_10156DD80(a1, v5);
        while (v4 != v17 && (v18(*v4) & 1) == 0)
        {
          ++v4;
        }
      }
    }

    if (*(a1 + 624) == 1)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I In widget mode", buf, 2u);
      }

      v7 = dispatch_group_create();
      v8 = v7;
      v9 = *(a1 + 184);
      if (v9)
      {
        group = v7;
        if (v7)
        {
          dispatch_retain(v7);
          dispatch_group_enter(v8);
        }

        (*(*v9 + 32))(v9, &group);
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }
      }

      operator new();
    }

    if (*a2 == 1)
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Not in widget mode", buf, 2u);
      }

      v11 = dispatch_group_create();
      v12 = v11;
      v13 = *(a1 + 184);
      if (v13)
      {
        object = v11;
        if (v11)
        {
          dispatch_retain(v11);
          dispatch_group_enter(v12);
        }

        (*(*v13 + 32))(v13, &object);
        if (object)
        {
          dispatch_group_leave(object);
          if (object)
          {
            dispatch_release(object);
          }
        }
      }

      operator new();
    }
  }
}

void sub_10156DD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, dispatch_group_t a10)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156DD80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  if (!v4)
  {
LABEL_8:
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
    }

    return;
  }

  v5 = v4;
  while (1)
  {
    v6 = *(v5 + 8);
    if (v6 <= a2)
    {
      break;
    }

LABEL_7:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_7;
  }

  v8 = sub_10000BA08(v4, a2);
  v93 = 0;
  v94 = 0;
  v89 = 0;
  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "supported", &v93);
  sub_10002FE1C(&v94, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v93);
  v9 = sub_100045C8C(&v89);
  v11 = v94;
  if (v94)
  {
    buf[0] = 0;
    ctu::cf::assign(buf, v94, v10);
    v12 = buf[0];
  }

  else
  {
    v12 = capabilities::ct::supportsXcapForUncertifiedCarriers(v9);
  }

  v92 = 0;
  v91 = kCFBooleanFalse;
  if (kCFBooleanFalse)
  {
    CFRetain(kCFBooleanFalse);
  }

  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "provisioningDependency", &v91);
  sub_10002FE1C(&v92, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v91);
  buf[0] = 0;
  ctu::cf::assign(buf, v92, v13);
  v76 = buf[0];
  v89 = 0;
  v90 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
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
  v78 = v12;
  v72 = v11;
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
      goto LABEL_23;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
LABEL_23:
  (*(*v22 + 8))(&v89, v22, a2);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if (!v89)
  {
    goto LABEL_35;
  }

  v24 = sub_100007A6C(a1 + 600, v89 + 24);
  if (a1 + 608 == v24)
  {
    goto LABEL_35;
  }

  v27 = *(v24 + 72);
  v25 = v24 + 72;
  v26 = v27;
  if (!v27)
  {
    goto LABEL_35;
  }

  v28 = v25;
  do
  {
    if (*(v26 + 28) >= 7)
    {
      v28 = v26;
    }

    v26 = *(v26 + 8 * (*(v26 + 28) < 7));
  }

  while (v26);
  if (v28 == v25 || *(v28 + 28) > 7)
  {
LABEL_35:
    v29 = 0;
  }

  else
  {
    v29 = *(v28 + 32) == 2;
  }

  PersonalityIdFromSlotId();
  v30 = sub_100007A6C(a1 + 480, &__p);
  if (a1 + 488 == v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v30 + 56);
  }

  if (v88 < 0)
  {
    operator delete(__p);
  }

  v85 = kCFBooleanFalse;
  v86 = 0;
  if (kCFBooleanFalse)
  {
    CFRetain(kCFBooleanFalse);
  }

  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "imsFeatureDependency", &v85);
  sub_10002FE1C(&v86, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v85);
  buf[0] = 0;
  ctu::cf::assign(buf, v86, v32);
  v75 = buf[0];
  v83 = kCFBooleanFalse;
  v84 = 0;
  if (kCFBooleanFalse)
  {
    CFRetain(kCFBooleanFalse);
  }

  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "imsRegistrationDependency", &v83);
  sub_10002FE1C(&v84, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v83);
  buf[0] = 0;
  ctu::cf::assign(buf, v84, v33);
  v74 = buf[0];
  v81 = kCFBooleanFalse;
  v82 = 0;
  if (kCFBooleanFalse)
  {
    CFRetain(kCFBooleanFalse);
  }

  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "AllowedOnlyWhenIMSRegistered", &v81);
  sub_10002FE1C(&v82, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v81);
  buf[0] = 0;
  ctu::cf::assign(buf, v82, v34);
  v73 = buf[0];
  v79 = kCFBooleanFalse;
  v80 = 0;
  if (kCFBooleanFalse)
  {
    CFRetain(kCFBooleanFalse);
  }

  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "SupportNASFallback", &v79);
  sub_10002FE1C(&v80, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v79);
  buf[0] = 0;
  ctu::cf::assign(buf, v80, v35);
  v77 = buf[0];
  v36 = Registry::getServiceMap(*(a1 + 96));
  v37 = v36;
  if (v38 < 0)
  {
    v39 = (v38 & 0x7FFFFFFFFFFFFFFFLL);
    v40 = 5381;
    do
    {
      v38 = v40;
      v41 = *v39++;
      v40 = (33 * v40) ^ v41;
    }

    while (v41);
  }

  std::mutex::lock(v36);
  *buf = v38;
  v42 = sub_100009510(&v37[1].__m_.__sig, buf);
  if (v42)
  {
    v44 = v42[3];
    v43 = v42[4];
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v37);
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v43);
      v45 = 0;
      goto LABEL_57;
    }
  }

  else
  {
    v44 = 0;
  }

  std::mutex::unlock(v37);
  v43 = 0;
  v45 = 1;
LABEL_57:
  isWatch = GestaltUtilityInterface::isWatch(v44);
  if ((v45 & 1) == 0)
  {
    sub_100004A34(v43);
  }

  if (isWatch)
  {
    v47 = *(a1 + 624);
    v48 = v47 == 1;
    v49 = v47 != 1;
    v50 = v48;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v52 = *(a1 + 136);
  v51 = *(a1 + 144);
  if (v51)
  {
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v53 = v31 | v29;
  if (v49)
  {
    v52 = *(a1 + 168);
    v54 = *(a1 + 176);
    v55 = v78;
    if (v54)
    {
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  v55 = v78;
  if (v50 && (v77 & 1) == 0)
  {
    v52 = *(a1 + 168);
    v56 = *(a1 + 176);
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v51)
    {
      sub_100004A34(v51);
    }

    v51 = v56;
  }

  if ((v78 & 1) == 0 || *(v8 + 161) != 1 || *(v8 + 160) != 1 || (*(v8 + 165) & 1) == 0 && *(v8 + 167) != 1)
  {
    goto LABEL_92;
  }

  v57 = v76 ^ 1 | v53;
  if (v75)
  {
    v57 &= *(v8 + 164);
  }

  if (v74)
  {
    v57 &= *(v8 + 162);
  }

  if (v73)
  {
    v57 &= *(v8 + 163);
  }

  if (v57)
  {
    v52 = *(a1 + 152);
    v54 = *(a1 + 160);
    if (v54)
    {
LABEL_68:
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_69:
    if (v51)
    {
      sub_100004A34(v51);
    }
  }

  else
  {
LABEL_92:
    v54 = v51;
  }

  if (v52 != v8[1])
  {
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v58 = v8[2];
    v8[1] = v52;
    v8[2] = v54;
    if (v58)
    {
      sub_100004A34(v58);
    }

    v59 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = (*(*v8[1] + 48))(v8[1]);
      *buf = 136315138;
      *&buf[4] = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Active transport set to %s", buf, 0xCu);
    }

    v61 = *(a1 + 200);
    PersonalityIdFromSlotId();
    (*(*v61 + 224))(v61, buf, v52 == *(a1 + 152));
    if (SBYTE3(v99) < 0)
    {
      operator delete(*buf);
    }
  }

  v62 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = (*(*v8[1] + 48))(v8[1]);
    v64 = *(v8 + 161);
    v65 = "from CB";
    v66 = *(v8 + 160);
    v67 = *(v8 + 165);
    if (!v72)
    {
      v65 = "from SW";
    }

    v68 = *(v8 + 167);
    v69 = *(v8 + 164);
    v70 = *(v8 + 162);
    v71 = *(v8 + 163);
    *buf = 136319234;
    *&buf[4] = v63;
    v96 = 1024;
    v97 = v55 & 1;
    v98 = 2080;
    v99 = v65;
    v100 = 1024;
    v101 = v64;
    v102 = 1024;
    v103 = v66;
    v104 = 1024;
    v105 = v67;
    v106 = 1024;
    v107 = v68;
    v108 = 1024;
    v109 = v76;
    v110 = 1024;
    v111 = v53 & 1;
    v112 = 1024;
    v113 = v75;
    v114 = 1024;
    v115 = v69;
    v116 = 1024;
    v117 = v74;
    v118 = 1024;
    v119 = v70;
    v120 = 1024;
    v121 = v73;
    v122 = 1024;
    v123 = v71;
    v124 = 1024;
    v125 = v50;
    v126 = 1024;
    v127 = v77;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I SSP/AP - Transport[%s] XcapSupported[%d](%s) SIM[%d] XcapAllowed[%d] UTConnection[%d] EmLocConnection[%d] Provisioning-required[%d] Provisioned[%d] IMSFeature-required[%d] IMSFeatureEnabled[%d] Registration-required(AtLeastOnce)[%d] Registered-AtLeastOnce[%d] IMSRegistration-required[%d] IMSRegistered[%d] Tinker[%d] SupportsNASFallbackInTinker[%d]", buf, 0x70u);
  }

  if (v54)
  {
    sub_100004A34(v54);
  }

  sub_100045C8C(&v80);
  sub_100045C8C(&v82);
  sub_100045C8C(&v84);
  sub_100045C8C(&v86);
  if (v90)
  {
    sub_100004A34(v90);
  }

  sub_100045C8C(&v92);
  sub_100045C8C(&v94);
}

void sub_10156E754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, const void *a17, uint64_t a18, const void *a19, uint64_t a20, const void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, const void *a28, uint64_t a29, const void *a30)
{
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_100045C8C(&a15);
  sub_100045C8C(&a17);
  sub_100045C8C(&a19);
  sub_100045C8C(&a21);
  if (a26)
  {
    sub_100004A34(a26);
  }

  sub_100045C8C(&a28);
  sub_100045C8C(&a30);
  _Unwind_Resume(a1);
}

void sub_10156E93C(uint64_t a1, uint64_t a2)
{
  sub_101257DBC(&v27, a2);
  v4 = *(a1 + 632);
  if (v4 == (a1 + 640))
  {
    goto LABEL_65;
  }

  v5 = (a2 + 8);
  do
  {
    v6 = *v5;
    v7 = *(v4 + 8);
    if (*v5)
    {
      v8 = a2 + 8;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 != v5 && v7 >= *(v8 + 32))
      {
        if (rest::operator==())
        {
          goto LABEL_19;
        }

        v7 = *(v4 + 8);
      }
    }

    v9 = *(a1 + 240);
    if (!v9)
    {
LABEL_17:
      v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v25 = subscriber::asString();
        *v33 = 136315138;
        *&v33[4] = v25;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", v33, 0xCu);
      }

      goto LABEL_19;
    }

    while (1)
    {
      v10 = *(v9 + 8);
      if (v7 >= v10)
      {
        break;
      }

LABEL_16:
      v9 = *v9;
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    if (v10 < v7)
    {
      ++v9;
      goto LABEL_16;
    }

    v38 = 0;
    *__p = 0u;
    v37 = 0u;
    *v34 = 0u;
    v35 = 0u;
    *v33 = 0u;
    v15 = v28[0];
    if (!v28[0])
    {
      goto LABEL_34;
    }

    v16 = v28;
    do
    {
      if (*(v15 + 8) >= v7)
      {
        v16 = v15;
      }

      v15 = *&v15[8 * (*(v15 + 8) < v7)];
    }

    while (v15);
    if (v16 == v28 || v7 < *(v16 + 8))
    {
      v15 = 0;
LABEL_34:
      v17 = 0;
    }

    else
    {
      std::string::operator=(v33, (v16 + 5));
      std::string::operator=(&v34[1], (v16 + 8));
      LODWORD(__p[0]) = *(v16 + 22);
      std::string::operator=(&__p[1], v16 + 4);
      LOBYTE(v38) = *(v16 + 120);
      v17 = HIBYTE(v34[0]);
      v15 = *&v33[8];
    }

    v18 = *(v4 + 63);
    if (v18 >= 0)
    {
      v19 = *(v4 + 63);
    }

    else
    {
      v19 = v4[6];
    }

    if (v17 >= 0)
    {
      v15 = v17;
    }

    if (v19 != v15 || (v18 >= 0 ? (v20 = v4 + 5) : (v20 = v4[5]), v17 >= 0 ? (v21 = v33) : (v21 = *v33), memcmp(v20, v21, v19)))
    {
      v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 8));
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (SHIBYTE(v34[0]) >= 0)
        {
          v23 = v33;
        }

        else
        {
          v23 = *v33;
        }

        if (*(v4 + 63) >= 0)
        {
          v24 = v4 + 5;
        }

        else
        {
          v24 = v4[5];
        }

        *buf = 136315394;
        v30 = v23;
        v31 = 2080;
        v32 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Phone Number has changed from %s -> %s", buf, 0x16u);
      }

      if (*(sub_10000BA08(*(a1 + 240), *(v4 + 8)) + 162) == 1)
      {
        *(sub_10000BA08(*(a1 + 240), *(v4 + 8)) + 162) = 0;
        sub_10156DD80(a1, *(v4 + 8));
      }
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[1]);
    }

    if (SHIBYTE(v34[0]) < 0)
    {
      operator delete(*v33);
    }

LABEL_19:
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
  }

  while (v13 != (a1 + 640));
LABEL_65:
  sub_100170380(&v27, v28[0]);
}

void sub_10156ED58(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156EE4C(void *a1, int a2, __int16 a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156EF44(void *a1, int a2, __int16 a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F03C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Radio disabled", v7, 2u);
  }

  v3 = *(a1 + 232);
  if (v3 != (a1 + 240))
  {
    do
    {
      if ((v3[25] & 1) == 0)
      {
        *(v3 + 200) = 1;
        sub_10156DD80(a1, *(v3 + 10));
      }

      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != (a1 + 240));
  }
}

void sub_10156F10C(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
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

void sub_10156F20C(void *a1, int a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
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

void sub_10156F324(void *a1, int a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
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

void sub_10156F43C(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F538(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F63C(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156F72C(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = a1;
  v6 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10157E200;
  v7[3] = &unk_101F4E438;
  v7[4] = a1 + 8;
  v7[5] = &v5;
  v8 = v7;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10157756C;
    v12 = &unk_101F4D968;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_101577504;
    v12 = &unk_101F4D948;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

void sub_10156F850(void *a1, Registry **a2, NSObject **a3, uint64_t a4, uint64_t a5, void *a6)
{
  ServiceMap = Registry::getServiceMap(*a2);
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
  *__p = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, __p);
  if (!v16)
  {
    v18 = 0;
LABEL_9:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
  if (!v18)
  {
    goto LABEL_19;
  }

LABEL_10:
  v22 = 0;
  v23 = 0;
  PersonalityIdFromSlotId();
  (*(*v18 + 40))(&v22, v18, __p);
  if (v25 < 0)
  {
    operator delete(*__p);
  }

  if (!v22)
  {
    if (v23)
    {
      sub_100004A34(v23);
    }

LABEL_19:
    v20 = 1;
    if (v19)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  (*(*v22 + 40))(v22, "XCAP", a5, *a6, 0, 1);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v20 = 0;
  if ((v19 & 1) == 0)
  {
LABEL_20:
    sub_100004A34(v17);
  }

LABEL_21:
  if (v20)
  {
    v21 = *a3;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315138;
      *&__p[4] = a5;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not get SystemDeterminationManagerInterface for %s XCAP value", __p, 0xCu);
    }

    *a1 = *a6;
    *a6 = 0;
  }
}

void sub_10156FAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156FB00(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_10156FBF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = *(v5 + 8);
      if (v6 <= a2)
      {
        if (v6 >= a2)
        {
          if (!sub_10000BA08(v4, a2)[1])
          {
            return 0;
          }

          if (!sub_10156FE88(a1, a2) || sub_10000BA08(*(a1 + 240), a2)[1] == *(a1 + 152))
          {
            v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = sub_10000BA08(*(a1 + 240), a2);
              v12 = (*(*v11[1] + 48))(v11[1]);
              v14 = 136315138;
              v15 = v12;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Issuing Get CLIR request to %s", &v14, 0xCu);
            }

            v13 = sub_10000BA08(*(a1 + 240), a2);
            return (*(*v13[1] + 120))(v13[1], a2);
          }

          else
          {
            v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
            if (result)
            {
              LOWORD(v14) = 0;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to fetch CLIR value because it would trigger CSFB", &v14, 2u);
              return 0;
            }
          }

          return result;
        }

        ++v5;
      }

      v5 = *v5;
    }

    while (v5);
  }

  v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v14 = 136315138;
    v15 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v14, 0xCu);
    return 0;
  }

  return result;
}

uint64_t sub_10156FE88(uint64_t a1, uint64_t a2)
{
  PersonalityIdFromSlotId();
  v3 = sub_100007A6C(a1 + 664, &__p);
  if (a1 + 672 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 56) & *(v3 + 57);
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }

  return v4 & 1;
}

void sub_10156FEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10156FF18(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  v12 = a2;
  v11[0] = a1;
  v11[1] = &v12;
  v11[2] = a3;
  v11[3] = a4;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v7 = sub_101570284(a1, v12, a3, a4);
      return v7 & 1;
    }

    v8 = *(a1 + 32) == 0;
  }

  else
  {
    v8 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_10157E574;
  v13[3] = &unk_101F4E4D8;
  v13[4] = a1 + 8;
  v13[5] = v11;
  v14 = v13;
  v9 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v8)
  {
    v16 = sub_100059778;
    v17 = &unk_101F4E4F8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v9, block);
  }

  else
  {
    v16 = sub_10006A6D4;
    v17 = &unk_101F4E518;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v9, block);
  }

  v7 = v20;
  return v7 & 1;
}

uint64_t sub_1015700B0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  if (!v4)
  {
LABEL_7:
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v12, 0xCu);
    }

    return 3;
  }

  v5 = v4;
  while (1)
  {
    v6 = *(v5 + 8);
    if (v6 <= a2)
    {
      break;
    }

LABEL_6:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v4, a2)[18])
  {
    return 3;
  }

  v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000BA08(*(a1 + 240), a2);
    v12 = 136315138;
    v13 = asString();
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I User CLIR setting is known: %s", &v12, 0xCu);
  }

  v10 = *(sub_10000BA08(*(a1 + 240), a2)[18] + 1);
  if (v10 == 3)
  {
    v11 = 0;
  }

  else
  {
    v11 = 3;
  }

  if (v10 == 2)
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

uint64_t sub_101570284(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  *a4 = 0;
  *a3 = 3;
  v6 = *(a1 + 240);
  if (!v6)
  {
LABEL_7:
    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315138;
      v25 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v24, 0xCu);
    }

    return 0;
  }

  v9 = v6;
  while (1)
  {
    v10 = *(v9 + 8);
    if (v10 <= a2)
    {
      break;
    }

LABEL_6:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  if (v10 < a2)
  {
    ++v9;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v6, a2)[16])
  {
    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Network CLIR status is unknown, cannot determine value", &v24, 2u);
    }

    return 0;
  }

  *a4 = 0;
  *a3 = 3;
  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000BA08(*(a1 + 240), a2);
    v24 = 136315138;
    v25 = asString();
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Network CLIR setting is known %s", &v24, 0xCu);
  }

  v12 = 0;
  v15 = *(sub_10000BA08(*(a1 + 240), a2)[16] + 1);
  v16 = 3;
  if (v15 <= 1)
  {
    *a4 = 2;
    v12 = 1;
    v16 = v15;
    goto LABEL_23;
  }

  if (v15 != 2)
  {
    if (v15 == 3)
    {
      v16 = 0;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v16 = 1;
LABEL_22:
  v12 = 1;
  *a4 = 1;
  v18 = sub_1015700B0(a1, a2);
  if (v18 == 3)
  {
LABEL_23:
    v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = asString();
      v24 = 136315138;
      v25 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Effective CLIR setting (network) is %s", &v24, 0xCu);
    }

    v21 = v16;
  }

  else
  {
    v21 = v18;
    v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = asString();
      v24 = 136315138;
      v25 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Effective CLIR setting (user) is %s", &v24, 0xCu);
    }
  }

  *a3 = v21;
  return v12;
}

void sub_10157064C(void *a1, int a2, int a3, int a4)
{
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

uint64_t sub_101570750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_100022DB4();
  }

  (*(*a3 + 48))(a3);
  v4 = *(**(a1 + 384) + 40);

  return v4();
}

uint64_t sub_1015707E0(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  LODWORD(v16) = 3;
  sub_101570284(a1, a2, &v16, &v17);
  HIDWORD(v16) = sub_1015700B0(a1, a2);
  v4 = *(a1 + 456);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 456);
  while (1)
  {
    v6 = *(v5 + 7);
    if (v6 <= a2)
    {
      break;
    }

LABEL_6:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_6;
  }

  while (1)
  {
    while (1)
    {
      v7 = *(v4 + 7);
      if (v7 <= a2)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
LABEL_25:
        sub_1000A58E4("map::at:  key not found");
      }
    }

    if (v7 >= a2)
    {
      break;
    }

    v4 = v4[1];
    if (!v4)
    {
      goto LABEL_25;
    }
  }

  result = rest::operator==();
  if ((result & 1) == 0)
  {
LABEL_14:
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = asString();
      v11 = asString();
      v12 = asString();
      *buf = 136315650;
      *&buf[4] = v10;
      *&buf[12] = 2080;
      *&buf[14] = v11;
      v19 = 2080;
      v20 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I CLIR info is changing to effective: %s, user: %s, modifiable: %s", buf, 0x20u);
    }

    *buf = 1;
    *&buf[8] = a1 + 416;
    v13 = *(a1 + 456);
    if (!v13)
    {
LABEL_23:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v14 = v13;
        v15 = *(v13 + 7);
        if (v15 <= a2)
        {
          break;
        }

        v13 = *v14;
        if (!*v14)
        {
          goto LABEL_23;
        }
      }

      if (v15 >= a2)
      {
        break;
      }

      v13 = v14[1];
      if (!v13)
      {
        goto LABEL_23;
      }
    }

    v14[4] = v16;
    *(v14 + 40) = v17;
    return sub_10157EEC4(buf);
  }

  return result;
}

void sub_101570A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10157EEC4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101570A74(void **a1, uint64_t a2)
{
  result = sub_10000BA08(a1[30], a2);
  if (result[16])
  {
    v5 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_10000BA08(a1[30], a2);
      v6 = asString();
      sub_10000BA08(a1[30], a2);
      *v9 = 136315394;
      *&v9[4] = v6;
      *&v9[12] = 2080;
      *&v9[14] = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Clearing current CLIR network setting with Service Status %s, Provisioned Status %s", v9, 0x16u);
    }

    v7 = sub_10000BA08(a1[30], a2);
    v8 = v7[17];
    v7[16] = 0;
    v7[17] = 0;
    if (v8)
    {
      sub_100004A34(v8);
    }

    (*(*a1[23] + 80))(a1[23], a2);
    sub_1015707E0(a1, a2);
    *v9 = off_101F4E5C8;
    *&v9[8] = a1;
    *&v9[16] = a2;
    v10 = v9;
    *&v9[20] = 0;
    sub_101570750(a1, a2, v9);
    return sub_10002B644(v9);
  }

  return result;
}

void sub_101570C50(void **a1, uint64_t a2)
{
  v4 = sub_10000BA08(a1[30], a2);
  v7 = v4[8];
  v5 = v4 + 8;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 28) >= 1)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < 1));
  }

  while (v6);
  if (v8 == v5 || *(v8 + 7) >= 2)
  {
LABEL_8:
    v8 = v5;
  }

  if (v8 == sub_10000BA08(a1[30], a2) + 8)
  {
    v13 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Could not persist Call Waiting status", buf, 2u);
    }
  }

  else
  {
    v9 = sub_10000BA08(a1[30], a2);
    v14 = 1;
    *buf = &v14;
    v10 = *(sub_10142B4C4(v9 + 7, 1, buf) + 32);
    v11 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "OFF";
      if (v10)
      {
        v12 = "ON";
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Persisting Call Waiting status %s", buf, 0xCu);
    }

    (*(*a1[23] + 96))(a1[23], a2, v10);
  }
}

uint64_t sub_101570E64(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(**(a1 + 184) + 88))(*(a1 + 184), a2);
  if ((v4 & 0x100) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a3;
  }

  return v5 & 1;
}

uint64_t sub_101570EB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = (*(**(a1 + 120) + 88))(*(a1 + 120), a2);
  if ((v4 & 0x100) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = a3;
  }

  return v5 & 1;
}

uint64_t sub_101570F0C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v11 = a3;
  v12 = a2;
  v10 = a4;
  v9[0] = a1;
  v9[1] = &v12;
  v9[2] = &v11;
  v9[3] = &v10;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v5 = sub_10157F058(v9);
      return v5 & 1;
    }

    v6 = *(a1 + 32) == 0;
  }

  else
  {
    v6 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_10157F29C;
  v13[3] = &unk_101F4E638;
  v13[4] = a1 + 8;
  v13[5] = v9;
  v14 = v13;
  v7 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v6)
  {
    v16 = sub_100059778;
    v17 = &unk_101F4E4F8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v7, block);
  }

  else
  {
    v16 = sub_10006A6D4;
    v17 = &unk_101F4E518;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v7, block);
  }

  v5 = v20;
  return v5 & 1;
}

void sub_101571094(void *a1, int a2, __int128 *a3, unsigned int a4, unsigned int a5, int a6)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 2);
  }

  v12 = a4;
  v13 = a5;
  v14 = a6;
  v10 = a1[2];
  if (v10)
  {
    if (std::__shared_weak_count::lock(v10))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101571220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 240);
  if (!v6)
  {
LABEL_7:
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2, a3, a4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = 136315138;
      v21 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v20, 0xCu);
    }

    return;
  }

  while (1)
  {
    v9 = *(v6 + 8);
    if (v9 <= a2)
    {
      break;
    }

LABEL_6:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  if (v9 < a2)
  {
    ++v6;
    goto LABEL_6;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_10000BA08(*(a1 + 240), a2);
    v14 = (*(*v13[1] + 48))(v13[1]);
    v20 = 136315138;
    v21 = v14;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending fetch request to %s", &v20, 0xCu);
  }

  if (!sub_10000BA08(*(a1 + 240), a2)[1])
  {
    goto LABEL_20;
  }

  if (sub_10156FE88(a1, a2) && sub_10000BA08(*(a1 + 240), a2)[1] != *(a1 + 152))
  {
    v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to fetch Call Barring value because it would trigger CSFB", &v20, 2u);
    }

    goto LABEL_20;
  }

  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = sub_10000BA08(*(a1 + 240), a2);
    v18 = (*(*v17[1] + 48))(v17[1]);
    v20 = 136315138;
    v21 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Issuing Get Call Barring request to %s", &v20, 0xCu);
  }

  v19 = sub_10000BA08(*(a1 + 240), a2);
  if (((*(*v19[1] + 80))(v19[1], a2, a3, a4) & 1) == 0)
  {
LABEL_20:
    operator new();
  }
}

uint64_t sub_1015715F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    sub_100022DB4();
  }

  (*(*a3 + 48))(a3);
  v4 = *(**(a1 + 384) + 40);

  return v4();
}

uint64_t sub_101571690(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4, unsigned int a5)
{
  v13 = a4;
  v14 = a2;
  v12 = a5;
  v11[0] = a1;
  v11[1] = &v14;
  v11[2] = a3;
  v11[3] = &v13;
  v11[4] = &v12;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v7 = sub_10157182C(a1, v14, a3, v13, v12);
      return v7 & 1;
    }

    v8 = *(a1 + 32) == 0;
  }

  else
  {
    v8 = 1;
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_10157F4A4;
  v15[3] = &unk_101F4E6D8;
  v15[4] = a1 + 8;
  v15[5] = v11;
  v16 = v15;
  v9 = *(a1 + 24);
  v22 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v8)
  {
    v18 = sub_100059778;
    v19 = &unk_101F4E4F8;
    v20 = &v22;
    v21 = &v16;
    dispatch_sync(v9, block);
  }

  else
  {
    v18 = sub_10006A6D4;
    v19 = &unk_101F4E518;
    v20 = &v22;
    v21 = &v16;
    dispatch_async_and_wait(v9, block);
  }

  v7 = v22;
  return v7 & 1;
}

uint64_t sub_10157182C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 240);
  if (v7)
  {
    v8 = a5;
    v9 = a4;
    do
    {
      v11 = *(v7 + 8);
      if (v11 <= a2)
      {
        if (v11 >= a2)
        {
          v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 67109376;
            LODWORD(v19[0]) = v9;
            WORD2(v19[0]) = 1024;
            *(v19 + 6) = v8;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Retrieving from Call Barring model for type %d, class %d", &v18, 0xEu);
          }

          if (sub_10000BA08(*(a1 + 240), a2)[5])
          {
            v16 = sub_10000BA08(*(a1 + 240), a2);
            return sub_1012D883C(v16[5], v9, v8, a3);
          }

          v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
          if (result)
          {
            LOWORD(v18) = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Call barring model is not available", &v18, 2u);
            return 0;
          }

          return result;
        }

        ++v7;
      }

      v7 = *v7;
    }

    while (v7);
  }

  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2, a3, a4, a5);
  result = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v18 = 136315138;
    v19[0] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v18, 0xCu);
    return 0;
  }

  return result;
}

void sub_101571A6C(void *a1, int a2, char a3, __int128 *a4, unsigned int a5, unsigned int a6, int a7)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 1));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 2);
  }

  v13 = a5;
  v14 = a6;
  v15 = a7;
  v11 = a1[2];
  if (v11)
  {
    if (std::__shared_weak_count::lock(v11))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101571BFC(void *a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v12, *a4, *(a4 + 8));
  }

  else
  {
    *v12 = *a4;
    v13 = *(a4 + 16);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(v14, *a5, *(a5 + 8));
  }

  else
  {
    *v14 = *a5;
    v15 = *(a5 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(__p, *a6, *(a6 + 8));
  }

  else
  {
    *__p = *a6;
    v17 = *(a6 + 16);
  }

  v18 = a7;
  v11 = a1[2];
  if (v11)
  {
    if (std::__shared_weak_count::lock(v11))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101571E34(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 + 63) < 0)
  {
    operator delete(*(v22 + 40));
  }

  if (*(v22 + 39) < 0)
  {
    operator delete(*(v22 + 16));
  }

  sub_10004F058(a1);
}

void sub_101571EA8(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101571F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 240);
  if (v5)
  {
    v7 = v5;
    do
    {
      v8 = *(v7 + 8);
      if (v8 <= a2)
      {
        if (v8 >= a2)
        {
          if (!sub_10000BA08(v5, a2)[1])
          {
            return 0;
          }

          if (!sub_10156FE88(a1, a2) || sub_10000BA08(*(a1 + 240), a2)[1] == *(a1 + 152))
          {
            v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = sub_10000BA08(*(a1 + 240), a2);
              v14 = (*(*v13[1] + 48))(v13[1]);
              v16 = 136315138;
              v17 = v14;
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Issuing request to %s to fetch the Call Waiting values", &v16, 0xCu);
            }

            v15 = sub_10000BA08(*(a1 + 240), a2);
            return (*(*v15[1] + 104))(v15[1], a2, a3);
          }

          else
          {
            v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            result = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
            if (result)
            {
              LOWORD(v16) = 0;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I VoLTE call is active, ignoring request to fetch Call Waiting value because it would trigger CSFB", &v16, 2u);
              return 0;
            }
          }

          return result;
        }

        ++v7;
      }

      v7 = *v7;
    }

    while (v7);
  }

  v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2, a3);
  result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v16 = 136315138;
    v17 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v16, 0xCu);
    return 0;
  }

  return result;
}

void sub_10157223C(void *a1, int a2, char a3, int a4, int a5)
{
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

BOOL sub_101572348(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned int a4)
{
  v11 = a4;
  v12 = a2;
  if ((a4 ^ (a4 - 1)) <= a4 - 1)
  {
    __TUAssertTrigger("callClassesMask && !(callClassesMask & (callClassesMask - 1))");
  }

  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = a3;
  v10[3] = &v11;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return sub_1015724F0(a1, v12, a3, v11);
    }

    v7 = *(a1 + 32) == 0;
  }

  else
  {
    v7 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_101580A38;
  v13[3] = &unk_101F4E8F8;
  v13[4] = a1 + 8;
  v13[5] = v10;
  v14 = v13;
  v8 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v7)
  {
    v16 = sub_100059778;
    v17 = &unk_101F4E4F8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v8, block);
  }

  else
  {
    v16 = sub_10006A6D4;
    v17 = &unk_101F4E518;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v8, block);
  }

  return v20;
}

BOOL sub_1015724F0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 240);
  if (!v6)
  {
LABEL_8:
    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2, a3, a4);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v26 = 136315138;
    v27 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v26, 0xCu);
    return 0;
  }

  v7 = a4;
  v9 = v6;
  while (1)
  {
    v10 = *(v9 + 8);
    if (v10 <= a2)
    {
      break;
    }

LABEL_7:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  if (v10 < a2)
  {
    ++v9;
    goto LABEL_7;
  }

  v13 = sub_10000BA08(v6, a2);
  v16 = v13[8];
  v14 = v13 + 8;
  v15 = v16;
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = v14;
  do
  {
    if (*(v15 + 28) >= v7)
    {
      v17 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 28) < v7));
  }

  while (v15);
  if (v17 == v14 || *(v17 + 7) > v7)
  {
LABEL_17:
    v17 = v14;
  }

  if (v17 == sub_10000BA08(*(a1 + 240), a2) + 8)
  {
    v25 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v26) = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Could not retrieve Call Waiting value", &v26, 2u);
    return 0;
  }

  v18 = sub_10000BA08(*(a1 + 240), a2);
  v21 = v18[8];
  v19 = v18 + 8;
  v20 = v21;
  if (!v21)
  {
    goto LABEL_26;
  }

  v22 = v19;
  do
  {
    if (*(v20 + 28) >= v7)
    {
      v22 = v20;
    }

    v20 = *(v20 + 8 * (*(v20 + 28) < v7));
  }

  while (v20);
  if (v22 == v19 || *(v22 + 7) > v7)
  {
LABEL_26:
    v22 = v19;
  }

  *a3 = *(v22 + 32);
  v23 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *a3;
    v26 = 67109120;
    LODWORD(v27) = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Call Waiting value %d", &v26, 8u);
  }

  return 1;
}

void sub_1015727A4(void *a1, int a2, int a3, int a4)
{
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

void sub_1015728A8(void *a1, int a2, int a3, int a4)
{
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

BOOL sub_1015729AC(uint64_t a1, uint64_t a2, int *a3, unsigned int a4)
{
  v11 = a4;
  v12 = a2;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = a3;
  v10[3] = &v11;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return sub_101572B38(a1, v12, a3, v11);
    }

    v7 = *(a1 + 32) == 0;
  }

  else
  {
    v7 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_1015814A0;
  v13[3] = &unk_101F4EA18;
  v13[4] = a1 + 8;
  v13[5] = v10;
  v14 = v13;
  v8 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v7)
  {
    v16 = sub_100059778;
    v17 = &unk_101F4E4F8;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v8, block);
  }

  else
  {
    v16 = sub_10006A6D4;
    v17 = &unk_101F4E518;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v8, block);
  }

  return v20;
}

BOOL sub_101572B38(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = *(a1 + 240);
  if (!v6)
  {
LABEL_7:
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2, a3, a4);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v16 = 136315138;
    v17 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v16, 0xCu);
    return 0;
  }

  v8 = v6;
  while (1)
  {
    v9 = *(v8 + 8);
    if (v9 <= a2)
    {
      break;
    }

LABEL_6:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if (v9 < a2)
  {
    ++v8;
    goto LABEL_6;
  }

  if (!a4)
  {
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v16) = 0;
    v15 = "#I Not handling Connected Line Presentation APIs";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, &v16, 2u);
    return 0;
  }

  if (!sub_10000BA08(v6, a2)[10])
  {
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v16) = 0;
    v15 = "#I CLIP Model is not valid";
    goto LABEL_18;
  }

  *a3 = *(sub_10000BA08(*(a1 + 240), a2)[10] + 1) == 1;
  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *a3;
    v16 = 67109120;
    LODWORD(v17) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Returning CLIP value: %d", &v16, 8u);
  }

  return 1;
}

void sub_101572DC0(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

BOOL sub_101572EB0(uint64_t a1, uint64_t a2, int *a3)
{
  v10 = a2;
  v9[0] = a1;
  v9[1] = &v10;
  v9[2] = a3;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return sub_101573038(a1, v10, a3);
    }

    v6 = *(a1 + 32) == 0;
  }

  else
  {
    v6 = 1;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_10158196C;
  v11[3] = &unk_101F4EAB8;
  v11[4] = a1 + 8;
  v11[5] = v9;
  v12 = v11;
  v7 = *(a1 + 24);
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v6)
  {
    v14 = sub_100059778;
    v15 = &unk_101F4E4F8;
    v16 = &v18;
    v17 = &v12;
    dispatch_sync(v7, block);
  }

  else
  {
    v14 = sub_10006A6D4;
    v15 = &unk_101F4E518;
    v16 = &v18;
    v17 = &v12;
    dispatch_async_and_wait(v7, block);
  }

  return v18;
}

BOOL sub_101573038(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 240);
  if (!v5)
  {
LABEL_7:
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2, a3);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v14 = 136315138;
    v15 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v14, 0xCu);
    return 0;
  }

  v7 = v5;
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= a2)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v8 < a2)
  {
    ++v7;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v5, a2)[12])
  {
    v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I COLR Model is not valid", &v14, 2u);
    return 0;
  }

  *a3 = *sub_10000BA08(*(a1 + 240), a2)[12] == 1;
  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *a3;
    v14 = 67109120;
    LODWORD(v15) = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I COLR Model is available, filling %d", &v14, 8u);
  }

  return 1;
}

void sub_101573264(void *a1, int a2, int a3, int a4, int a5)
{
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_10157336C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!sub_10000BA08(*(a1 + 240), a2)[1])
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v15) = 0;
    v10 = "#I fetchCallForwarding failed, no command driver";
    goto LABEL_11;
  }

  if (sub_10156FE88(a1, a2) && sub_10000BA08(*(a1 + 240), a2)[1] != *(a1 + 152))
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v15) = 0;
    v10 = "#I VoLTE call is active, ignoring request to fetch Call Forwarding value because it would trigger CSFB";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &v15, 2u);
    return 0;
  }

  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_10000BA08(*(a1 + 240), a2);
    v13 = (*(*v12[1] + 48))(v12[1]);
    v15 = 136315138;
    v16 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sent the Call Forward Fetch request to %s", &v15, 0xCu);
  }

  v14 = sub_10000BA08(*(a1 + 240), a2);
  return (*(*v14[1] + 56))(v14[1], a2, a3, a4);
}

void sub_1015735C8(void *a1, int a2, char a3, uint64_t a4, char a5, unsigned int a6, unsigned int a7, int a8)
{
  sub_1000AE428(&v14, a4);
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v13 = a1[2];
  if (v13)
  {
    if (std::__shared_weak_count::lock(v13))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101573760(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, _BYTE *a5, unsigned int a6, unsigned int a7)
{
  v17 = a6;
  v18 = a2;
  v16 = a7;
  v15[0] = a1;
  v15[1] = &v18;
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = &v17;
  v15[6] = &v16;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v11 = sub_101573918(a1, v18, a3, a4, a5, v17, v16);
      return v11 & 1;
    }

    v12 = *(a1 + 32) == 0;
  }

  else
  {
    v12 = 1;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 0x40000000;
  v19[2] = sub_101582C64;
  v19[3] = &unk_101F4EBD8;
  v19[4] = a1 + 8;
  v19[5] = v15;
  v20 = v19;
  v13 = *(a1 + 24);
  v26 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v12)
  {
    v22 = sub_100059778;
    v23 = &unk_101F4E4F8;
    v24 = &v26;
    v25 = &v20;
    dispatch_sync(v13, block);
  }

  else
  {
    v22 = sub_10006A6D4;
    v23 = &unk_101F4E518;
    v24 = &v26;
    v25 = &v20;
    dispatch_async_and_wait(v13, block);
  }

  v11 = v26;
  return v11 & 1;
}

uint64_t sub_101573918(uint64_t a1, uint64_t a2, BOOL *a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a1 + 240);
  if (v9)
  {
    v10 = a7;
    v15 = v9;
    do
    {
      v16 = *(v15 + 8);
      if (v16 <= a2)
      {
        if (v16 >= a2)
        {
          v37 = 0;
          *v35 = 0u;
          v36 = 0u;
          v20 = sub_10000BA08(v9, a2);
          v21 = sub_1012D8100(v20[3], a6, v10, v35);
          v18 = v21;
          if (v21)
          {
            memset(&v34, 0, sizeof(v34));
            if (v36 >= 0)
            {
              v22 = &v35[1];
            }

            else
            {
              v22 = v35[1];
            }

            if (v36 >= 0)
            {
              v23 = HIBYTE(v36);
            }

            else
            {
              v23 = v36;
            }

            sub_1000D192C(&v34, v22, &v22[v23], v23);
            CSIPhoneNumber::CSIPhoneNumber();
            *a4 = *buf;
            if (*(a4 + 31) < 0)
            {
              operator delete(*(a4 + 8));
            }

            *(a4 + 8) = *&buf[8];
            *(a4 + 24) = v39;
            HIBYTE(v39) = 0;
            buf[8] = 0;
            if (*(a4 + 55) < 0)
            {
              operator delete(*(a4 + 32));
            }

            *(a4 + 32) = v40;
            *(a4 + 48) = v41;
            HIBYTE(v41) = 0;
            LOBYTE(v40) = 0;
            *(a4 + 56) = v42;
            *(a4 + 60) = v43;
            if (*(a4 + 87) < 0)
            {
              operator delete(*(a4 + 64));
            }

            *(a4 + 64) = v44;
            v24 = v45;
            HIBYTE(v45) = 0;
            LOBYTE(v44) = 0;
            v25 = v46;
            *(a4 + 80) = v24;
            *(a4 + 88) = v25;
            *(a4 + 96) = v47;
            if (*(a4 + 127) < 0)
            {
              operator delete(*(a4 + 104));
            }

            *(a4 + 104) = __p;
            *(a4 + 120) = v49;
            HIBYTE(v49) = 0;
            LOBYTE(__p) = 0;
            if (*(a4 + 151) < 0)
            {
              operator delete(*(a4 + 128));
              v27 = SHIBYTE(v49);
              *(a4 + 128) = v50;
              *(a4 + 144) = v51;
              HIBYTE(v51) = 0;
              LOBYTE(v50) = 0;
              *(a4 + 152) = v52;
              if (v27 < 0)
              {
                operator delete(__p);
              }
            }

            else
            {
              *(a4 + 128) = v50;
              *(a4 + 144) = v51;
              HIBYTE(v51) = 0;
              LOBYTE(v50) = 0;
              *(a4 + 152) = v52;
            }

            if (SHIBYTE(v45) < 0)
            {
              operator delete(v44);
            }

            if (SHIBYTE(v41) < 0)
            {
              operator delete(v40);
            }

            if (SHIBYTE(v39) < 0)
            {
              operator delete(*&buf[8]);
            }

            *a5 = v37;
            *a3 = BYTE1(v35[0]) == 1;
            v28 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              CSIPhoneNumber::getFullNumber(v32, a4);
              v29 = v33 >= 0 ? v32 : v32[0];
              v30 = *a5;
              v31 = *a3;
              *buf = 136315650;
              *&buf[4] = v29;
              *&buf[12] = 1024;
              *&buf[14] = v30;
              *&buf[18] = 1024;
              *&buf[20] = v31;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Call Forward return values: Number '%s', Time %d, Enabled %d", buf, 0x18u);
              if (v33 < 0)
              {
                operator delete(v32[0]);
              }
            }

            if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v34.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v26 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *&buf[4] = a6;
              *&buf[8] = 1024;
              *&buf[10] = v10;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Failed to retrieve call forward setting for reason %d, class %d", buf, 0xEu);
            }
          }

          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35[1]);
          }

          return v18;
        }

        ++v15;
      }

      v15 = *v15;
    }

    while (v15);
  }

  v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2, a3, a4, a5, a6, a7);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
  }

  return 0;
}

void sub_101573DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101573DEC(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v12[0] = a1;
  v12[1] = &v13;
  if (!*(a1 + 32))
  {
    v8 = 1;
LABEL_14:
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_101582C88;
    v14[3] = &unk_101F4EBF8;
    v14[4] = a1 + 8;
    v14[5] = v12;
    v15 = v14;
    v9 = *(a1 + 24);
    v16 = 0;
    *&block = _NSConcreteStackBlock;
    *(&block + 1) = 0x40000000;
    if (v8)
    {
      v18 = sub_100059778;
      v19 = &unk_101F4E4F8;
      v20 = &v16;
      v21 = &v15;
      dispatch_sync(v9, &block);
    }

    else
    {
      v18 = sub_10006A6D4;
      v19 = &unk_101F4E518;
      v20 = &v16;
      v21 = &v15;
      dispatch_async_and_wait(v9, &block);
    }

    v7 = v16;
    return v7 & 1;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v8 = *(a1 + 32) == 0;
    goto LABEL_14;
  }

  v3 = *(a1 + 240);
  if (v3)
  {
    v4 = *(a1 + 240);
    do
    {
      v5 = *(v4 + 8);
      if (v13 >= v5)
      {
        if (v5 >= v13)
        {
          v7 = *(sub_10000BA08(v3, v13)[3] + 48);
          return v7 & 1;
        }

        ++v4;
      }

      v4 = *v4;
    }

    while (v4);
  }

  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v11 = subscriber::asString();
    LODWORD(block) = 136315138;
    *(&block + 4) = v11;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &block, 0xCu);
  }

  v7 = 0;
  return v7 & 1;
}

void sub_101574044(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_101574050(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1008C3488(&v7, a3);
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

void sub_101574194(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1015741AC(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

BOOL sub_1015742A0(uint64_t a1, uint64_t a2, int *a3)
{
  v10 = a2;
  v9[0] = a1;
  v9[1] = &v10;
  v9[2] = a3;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return sub_101574428(a1, v10, a3);
    }

    v6 = *(a1 + 32) == 0;
  }

  else
  {
    v6 = 1;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_101583440;
  v11[3] = &unk_101F4EC98;
  v11[4] = a1 + 8;
  v11[5] = v9;
  v12 = v11;
  v7 = *(a1 + 24);
  v18 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v6)
  {
    v14 = sub_100059778;
    v15 = &unk_101F4E4F8;
    v16 = &v18;
    v17 = &v12;
    dispatch_sync(v7, block);
  }

  else
  {
    v14 = sub_10006A6D4;
    v15 = &unk_101F4E518;
    v16 = &v18;
    v17 = &v12;
    dispatch_async_and_wait(v7, block);
  }

  return v18;
}

BOOL sub_101574428(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a1 + 240);
  if (!v5)
  {
LABEL_7:
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2, a3);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v13 = 136315138;
    v14 = subscriber::asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v13, 0xCu);
    return 0;
  }

  v7 = v5;
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= a2)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v8 < a2)
  {
    ++v7;
    goto LABEL_6;
  }

  if (!sub_10000BA08(v5, a2)[14])
  {
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I CNAP values are unknown", &v13, 2u);
    return 0;
  }

  if (*(sub_10000BA08(*(a1 + 240), a2)[14] + 1) == 1)
  {
    v11 = *sub_10000BA08(*(a1 + 240), a2)[14] == 1;
  }

  else
  {
    v11 = 2;
  }

  *a3 = v11;
  return 1;
}

void sub_101574628(void *a1, int a2, char a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101574720(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101574810(uint64_t a1, unsigned int *a2)
{
  if (a2[1] != 31)
  {
    return;
  }

  v4 = *(a1 + 240);
  v5 = *a2;
  if (!v4)
  {
LABEL_7:
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *v39 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
    }

    return;
  }

  while (1)
  {
    v6 = *(v4 + 8);
    if (v5 >= v6)
    {
      break;
    }

LABEL_6:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v6 < v5)
  {
    ++v4;
    goto LABEL_6;
  }

  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v8 == v9)
  {
    v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *v39 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N Received SIM file %s data from SimFS with no data, ignoring", buf, 0xCu);
    }
  }

  else
  {
    v37 = 0;
    v36 = kCFBooleanFalse;
    if (kCFBooleanFalse)
    {
      CFRetain(kCFBooleanFalse);
    }

    sub_10156F850(buf, (a1 + 96), (a1 + 40), v5, "supported", &v36);
    sub_10002FE1C(&v37, buf);
    sub_10000A1EC(buf);
    sub_10000A1EC(&v36);
    buf[0] = 0;
    ctu::cf::assign(buf, v37, v10);
    v11 = buf[0];
    v34 = kCFBooleanFalse;
    v35 = 0;
    v12 = *a2;
    if (kCFBooleanFalse)
    {
      CFRetain(kCFBooleanFalse);
    }

    sub_10156F850(buf, (a1 + 96), (a1 + 40), v12, "IgnoreSimFileCFIS", &v34);
    sub_10002FE1C(&v35, buf);
    sub_10000A1EC(buf);
    sub_10000A1EC(&v34);
    buf[0] = 0;
    ctu::cf::assign(buf, v35, v13);
    v14 = buf[0];
    if (sub_10000BA08(*(a1 + 240), *a2)[1] == *(a1 + 152) || (v11 & v14) != 0)
    {
      v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = subscriber::asString();
        *buf = 136315138;
        *v39 = v22;
        v17 = "#I Ignoring SIM file %s as Call Forwarding is provisioned over XCAP";
        v18 = v21;
        v19 = 12;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
      }
    }

    else
    {
      v15 = v9 - v8;
      if (((v9 - v8) & 0xF) != 0)
      {
        v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v17 = "#N Data size is not aligning to 16 byte record";
          v18 = v16;
          v19 = 2;
          goto LABEL_24;
        }
      }

      else
      {
        v23 = 0;
        v24 = v15 >> 4;
        if (v24 <= 1)
        {
          v24 = 1;
        }

        v25 = (*(a2 + 1) + 1);
        while (1)
        {
          v27 = *v25;
          v25 += 16;
          v26 = v27;
          if (v27 != 255)
          {
            break;
          }

          if (v24 == ++v23)
          {
            goto LABEL_25;
          }
        }

        v28 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109632;
          *v39 = v26 & 1;
          *&v39[4] = 1024;
          *&v39[6] = v26;
          v40 = 2048;
          v41 = v23;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Read the CFU status for voice from SIM: %d with second byte: %x in record %lu", buf, 0x18u);
        }

        v29 = sub_10000BA08(*(a1 + 240), *a2);
        sub_1012D801C(v29[3], v26 & 1);
        v30 = *(a1 + 224);
        if (v30)
        {
          v31 = std::__shared_weak_count::lock(v30);
          if (v31)
          {
            v32 = v31;
            v33 = *(a1 + 216);
            if (v33)
            {
              (*(*v33 + 328))(v33, *a2);
            }

            sub_100004A34(v32);
          }
        }
      }
    }

LABEL_25:
    sub_100045C8C(&v35);
    sub_100045C8C(&v37);
  }
}

void sub_101574CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  sub_100004A34(v3);
  sub_100045C8C(va);
  sub_100045C8C(va1);
  _Unwind_Resume(a1);
}

void sub_101574D90(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101574E80(void *a1, int a2)
{
  v2 = a1[2];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101574F70(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575064(void *a1, int a2, uint64_t *a3, unsigned int a4, uint64_t a5)
{
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void *sub_101575198(void *result)
{
  v1 = result[5];
  if (!v1)
  {
    return result;
  }

  v2 = result;
  v4 = result + 4;
  v3 = result[4];
  result[5] = v1 - 1;
  result[4] = v3 + 1;
  sub_101582088(result, 1);
  if (v2[5])
  {
    result = v2[6];
    if (!result)
    {
      return result;
    }

    v5 = *(v2[1] + v2[4] / 0x155) + 12 * (v2[4] % 0x155);
    result = (*(*result + 16))(result, *v5, *(v5 + 8));
    if (v2[5])
    {
      return result;
    }
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v7 = v2[1];
  v6 = v2[2];
  v2[5] = 0;
  v8 = (v6 - v7) >> 3;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v7);
      v6 = v2[2];
      v7 = (v2[1] + 8);
      v2[1] = v7;
      v8 = (v6 - v7) >> 3;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v9 = 170;
    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = 341;
LABEL_11:
    *v4 = v9;
  }

  if (v2[5])
  {
    sub_101582088(v2, 0);
    v11 = v2[1];
    v10 = v2[2];
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 341 * (v10 - v11) - 1;
    }

    if (v12 - (v2[4] + v2[5]) >= 0x155)
    {
      operator delete(*(v10 - 1));
      v2[2] = v2[2] - 8;
    }
  }

  else
  {
    while (v6 != v7)
    {
      operator delete(*(v6 - 8));
      v7 = v2[1];
      v6 = v2[2] - 8;
      v2[2] = v6;
    }

    *v4 = 0;
  }

  sub_1015820E4(v2);
  v14 = v2[1];
  v13 = v2[2];
  if (v13 != v14)
  {
    v2[2] = &v13[(v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8];
  }

  sub_1015820E4(v2);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v15 = 0u;
  v16 = 0u;
  *v4 = 0;
  v4[1] = 0;
  v17 = 0uLL;
  return sub_101577438(&v15);
}

void sub_1015753A0(void *a1, int a2, int a3, int a4, int a5, char a6)
{
  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015754C0(void *a1, int a2, int a3, int a4, char a5, int a6)
{
  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015755E4(void *a1, int a2, int a3, int a4, int a5, int a6, char a7)
{
  v7 = a1[2];
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10157570C(void *a1, int a2, int a3, int a4, char a5)
{
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575820(void *a1, int a2, int a3, int a4, int a5, char a6)
{
  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575940(void *a1, int a2, int a3, int a4, char a5, int a6)
{
  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575A64(void *a1, int a2, int a3, int a4, int a5, int a6, char a7)
{
  v7 = a1[2];
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575B8C(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575C88(void *a1, int a2, int a3, int a4)
{
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

void sub_101575D94(void *a1, int a2, int a3, uint64_t *a4)
{
  v4 = a4[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575EB0(void *a1, int a2, int a3, int a4, char a5)
{
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101575FC4(void *a1, int a2, int a3, int a4, char a5)
{
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void *sub_1015760D8(void *result)
{
  v1 = result[5];
  if (!v1)
  {
    return result;
  }

  v2 = result;
  v4 = result + 4;
  v3 = result[4];
  result[5] = v1 - 1;
  result[4] = v3 + 1;
  sub_1015883C4(result, 1);
  if (v2[5])
  {
    result = v2[6];
    if (!result)
    {
      return result;
    }

    v5 = (*(v2[1] + ((v2[4] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2[4]);
    result = (*(*result + 16))(result, *v5, v5[1]);
    if (v2[5])
    {
      return result;
    }
  }

  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v7 = v2[1];
  v6 = v2[2];
  v2[5] = 0;
  v8 = (v6 - v7) >> 3;
  if (v8 >= 3)
  {
    do
    {
      operator delete(*v7);
      v6 = v2[2];
      v7 = (v2[1] + 8);
      v2[1] = v7;
      v8 = (v6 - v7) >> 3;
    }

    while (v8 > 2);
  }

  if (v8 == 1)
  {
    v9 = 128;
    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v9 = 256;
LABEL_11:
    *v4 = v9;
  }

  if (v2[5])
  {
    sub_1015883C4(v2, 0);
    v11 = v2[1];
    v10 = v2[2];
    if (v10 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 32 * (v10 - v11) - 1;
    }

    if (v12 - (v2[4] + v2[5]) >= 0x100)
    {
      operator delete(*(v10 - 1));
      v2[2] = v2[2] - 8;
    }
  }

  else
  {
    while (v6 != v7)
    {
      operator delete(*(v6 - 8));
      v7 = v2[1];
      v6 = v2[2] - 8;
      v2[2] = v6;
    }

    *v4 = 0;
  }

  sub_101588420(v2);
  v14 = v2[1];
  v13 = v2[2];
  if (v13 != v14)
  {
    v2[2] = &v13[(v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8];
  }

  sub_101588420(v2);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v15 = 0u;
  v16 = 0u;
  *v4 = 0;
  v4[1] = 0;
  v17 = 0uLL;
  return sub_101577308(&v15);
}

void sub_1015762B0(void *a1, int a2, int a3, int a4, int a5, char a6)
{
  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1015763D0(void *a1, int a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
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

void sub_1015764E8(void *a1, int a2, int a3, char a4)
{
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

void sub_1015765F4(uint64_t a1)
{
  v1 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Network saved CLIR values successfully", v2, 2u);
  }
}

void sub_101576684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = CSIErrorString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Network unable to save CLIR info, error=%s", &v4, 0xCu);
  }
}

void sub_101576758(void *a1, int a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
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

void sub_101576870(void *a1, int a2, int a3, char a4)
{
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

uint64_t sub_10157697C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Saved CLIP values successfully", v8, 2u);
  }

  v8[0] = off_101F4F898;
  v8[1] = a1;
  v8[2] = a2 | (a3 << 32);
  v8[3] = v8;
  sub_101570750(a1, a2, v8);
  return sub_10002B644(v8);
}

uint64_t sub_101576AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7) = 136315138;
    *(&v7 + 4) = CSIErrorString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Unable to fetch CLIP info, error=%s", &v7, 0xCu);
  }

  *&v7 = off_101F4F918;
  *(&v7 + 1) = a1;
  v8 = a2;
  v9 = &v7;
  sub_1015715F4(a1, a2, &v7);
  return sub_10002B644(&v7);
}

void sub_101576BE4(void *a1, int a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
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

void sub_101576CFC(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101576DF8(void *a1, int a2, uint64_t *a3)
{
  v3 = a3[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
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

void sub_101576F10(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10157700C(void *a1, int a2, char a3, int a4, int a5, int a6)
{
  v6 = a1[2];
  if (v6)
  {
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101577128(void *a1, int a2, int a3)
{
  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101577224(uint64_t a1)
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

uint64_t sub_1015772A4(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_101577308(a1);
}

uint64_t sub_101577308(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1015773D4(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_101577438(a1);
}

uint64_t sub_101577438(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 170;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 341;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_101577504(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_10157756C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1015776A0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101577774);
  __cxa_rethrow();
}

void sub_1015776E0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101577734(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101577774(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_1015777A0(void **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 400));
  v4 = *(v2 + 184);
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

  v6 = *(v2 + 136);
  v7 = v1[1];
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  (*(*v6 + 32))(v6, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  for (i = *(v2 + 80); i != v2 + 72; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC((v2 + 72));
  sub_1000FF844(&v11);
  return sub_1000049E0(&v10);
}

void sub_10157791C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group, dispatch_group_t a13)
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

void sub_101577978(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  v2 = *(*v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  sub_10000501C(&__p, "/cc/events/subscriber_sim_file_event");
  operator new();
}

void sub_101578B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, dispatch_group_t group, uint64_t a18, uint64_t a19, dispatch_group_t object, dispatch_group_t a21, dispatch_group_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_101578E48(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4D9F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101578E80(void *a1)
{
  __p[0] = 0x2800000000;
  __p[1] = 0;
  v6 = 0uLL;
  v7 = 0;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, __p);
  if (__p[1])
  {
    *&v6 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_101578F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101578F44(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101578F90(void *a1)
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

void *sub_101578FDC(void *a1)
{
  *a1 = off_101F4DA98;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101579028(void *a1)
{
  *a1 = off_101F4DA98;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_101579094(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_101579144(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1015791E8(void *a1)
{
  *a1 = off_101F4DAE8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101579234(void *a1)
{
  *a1 = off_101F4DAE8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

__n128 sub_101579388(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4DB28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015793C0(void *a1)
{
  v6 = *a1[1];
  rest::read_rest_value();
  v2 = a1[3];
  v3 = a1[4];
  v4 = (a1[2] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, &v6);
}

uint64_t sub_101579444(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101579504(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4DBA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101579534(uint64_t a1, xpc_object_t *a2)
{
  sub_10013E998(*(a1 + 8), a2);
  v3 = *(a1 + 16);
  v4 = *(v3 + 600);
  if (v4 != (v3 + 608))
  {
    while (1)
    {
      v18 = 0;
      v19 = 0;
      ServiceMap = Registry::getServiceMap(*(v3 + 96));
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
      v20 = v7;
      v11 = sub_100009510(&v6[1].__m_.__sig, &v20);
      if (!v11)
      {
        break;
      }

      v13 = v11[3];
      v12 = v11[4];
      if (!v12)
      {
        goto LABEL_9;
      }

      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
LABEL_10:
      (**v13)(&v18, v13, (v4 + 4));
      if ((v14 & 1) == 0)
      {
        sub_100004A34(v12);
      }

      if (v18 && !*(v18 + 49))
      {
        sub_10156DD80(v3, *(v18 + 52));
      }

      if (v19)
      {
        sub_100004A34(v19);
      }

      v15 = v4[1];
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
          v16 = v4[2];
          v17 = *v16 == v4;
          v4 = v16;
        }

        while (!v17);
      }

      v4 = v16;
      if (v16 == (v3 + 608))
      {
        return;
      }
    }

    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_10;
  }
}

void sub_1015796D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015796FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015797C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4DC28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015797FC(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_1001FCA54(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100170380(&v9, v10);
}

uint64_t sub_1015798D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101579940(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4DCA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015799BC(SuppServicesDriverEventHandlerInterface *this)
{
  *this = off_101F4DCF8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SuppServicesDriverEventHandlerInterface::~SuppServicesDriverEventHandlerInterface(this);
}

void sub_101579A18(SuppServicesDriverEventHandlerInterface *this)
{
  *this = off_101F4DCF8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SuppServicesDriverEventHandlerInterface::~SuppServicesDriverEventHandlerInterface(this);

  operator delete();
}

void sub_101579A88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 8);
      if (v13)
      {
        v14 = a3[1];
        v15 = *a3;
        v16 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v13 + 344))(v13, a2, &v15, a4, a5);
        if (v16)
        {
          sub_100004A34(v16);
        }
      }

      sub_100004A34(v12);
    }
  }
}

void sub_101579B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_101579B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        (*(*v15 + 352))(v15, a2, a3, a4, a5, a6);
      }

      sub_100004A34(v14);
    }
  }
}

void sub_101579C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        (*(*v15 + 360))(v15, a2, a3, a4, a5, a6);
      }

      sub_100004A34(v14);
    }
  }
}

void sub_101579D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v15 = std::__shared_weak_count::lock(v8);
    if (v15)
    {
      v16 = v15;
      v17 = *(a1 + 8);
      if (v17)
      {
        (*(*v17 + 368))(v17, a2, a3, a4, a5, a6, a7);
      }

      sub_100004A34(v16);
    }
  }
}

void sub_101579E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 8);
      if (v13)
      {
        (*(*v13 + 376))(v13, a2, a3, a4, a5);
      }

      sub_100004A34(v12);
    }
  }
}

void sub_101579F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        (*(*v15 + 384))(v15, a2, a3, a4, a5, a6);
      }

      sub_100004A34(v14);
    }
  }
}

void sub_101579FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        (*(*v15 + 392))(v15, a2, a3, a4, a5, a6);
      }

      sub_100004A34(v14);
    }
  }
}

void sub_10157A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a1 + 16);
  if (v8)
  {
    v15 = std::__shared_weak_count::lock(v8);
    if (v15)
    {
      v16 = v15;
      v17 = *(a1 + 8);
      if (v17)
      {
        (*(*v17 + 400))(v17, a2, a3, a4, a5, a6, a7);
      }

      sub_100004A34(v16);
    }
  }
}

void sub_10157A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
        (*(*v9 + 408))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157A280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        (*(*v11 + 416))(v11, a2, a3, a4);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_10157A34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        v12 = a4[1];
        v13 = *a4;
        v14 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v11 + 424))(v11, a2, a3, &v13);
        if (v14)
        {
          sub_100004A34(v14);
        }
      }

      sub_100004A34(v10);
    }
  }
}

void sub_10157A410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10157A430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 8);
      if (v13)
      {
        (*(*v13 + 432))(v13, a2, a3, a4, a5);
      }

      sub_100004A34(v12);
    }
  }
}

void sub_10157A504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = *(a1 + 8);
      if (v13)
      {
        (*(*v13 + 440))(v13, a2, a3, a4, a5);
      }

      sub_100004A34(v12);
    }
  }
}

void sub_10157A5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v13 = std::__shared_weak_count::lock(v7);
    if (v13)
    {
      v14 = v13;
      v15 = *(a1 + 8);
      if (v15)
      {
        (*(*v15 + 448))(v15, a2, a3, a4, a5, a6);
      }

      sub_100004A34(v14);
    }
  }
}

uint64_t sub_10157A6C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = (*(*v9 + 456))(v9, a2, a3);
  }

  else
  {
    v10 = 0;
  }

  sub_100004A34(v8);
  return v10;
}

void sub_10157A774(uint64_t a1, uint64_t a2, uint64_t *a3)
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
        v10 = a3[1];
        v11 = *a3;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 464))(v9, a2, &v11);
        if (v12)
        {
          sub_100004A34(v12);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157A828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10157A848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        (*(*v11 + 472))(v11, a2, a3, a4);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_10157A914(uint64_t a1, uint64_t a2, uint64_t a3)
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
        (*(*v9 + 480))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157A9CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
        (*(*v9 + 488))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AA84(uint64_t a1, uint64_t a2, uint64_t *a3)
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
        v10 = a3[1];
        v11 = *a3;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 496))(v9, a2, &v11);
        if (v12)
        {
          sub_100004A34(v12);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AB38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10157AB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = *(a1 + 8);
      if (v11)
      {
        (*(*v11 + 504))(v11, a2, a3, a4);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_10157AC24(uint64_t a1, uint64_t a2, uint64_t a3)
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
        (*(*v9 + 512))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157ACDC(uint64_t a1, uint64_t a2, uint64_t a3)
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
        (*(*v9 + 520))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AD94(uint64_t a1, uint64_t a2, uint64_t *a3)
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
        v10 = a3[1];
        v11 = *a3;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 528))(v9, a2, &v11);
        if (v12)
        {
          sub_100004A34(v12);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10157AE68(uint64_t a1, uint64_t a2, uint64_t a3)
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
        (*(*v9 + 536))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AF20(uint64_t a1, uint64_t a2, uint64_t *a3)
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
        v10 = a3[1];
        v11 = *a3;
        v12 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 544))(v9, a2, &v11);
        if (v12)
        {
          sub_100004A34(v12);
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157AFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10157AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
        (*(*v9 + 552))(v9, a2, a3);
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_10157B0AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10157B0DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10157B12C(uint64_t a1, uint64_t a2, int a3)
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

uint64_t sub_10157B274(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10157B2A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_10157B2F4(uint64_t a1, unint64_t a2, unint64_t a3)
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
        v10 = *(*(**(v9 + 48) + 16))(*(v9 + 48), a2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = subscriber::asString();
          v12 = sub_10000BA08(*(v9 + 240), a2);
          v13 = (*(*v12[1] + 48))(v12[1]);
          v15 = 136315394;
          v16 = v11;
          v17 = 2080;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Issuing request of %s to %s to save the Call Waiting values", &v15, 0x16u);
        }

        v14 = sub_10000BA08(*(v9 + 240), a2);
        (*(*v14[1] + 112))(v14[1], a2, HIDWORD(a2) & 1, a3, HIDWORD(a3));
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10157B49C(uint64_t **a1)
{
  v7 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  sub_10156CCEC(v1);
  subscriber::makeSimSlotRange();
  v3 = *buf;
  v4 = v9;
  if (*buf != v9)
  {
    v5 = v10;
    do
    {
      if (v5(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v4);
    v6 = v9;
    while (v3 != v6)
    {
      sub_10156DD80(v1, *v3);
      do
      {
        ++v3;
      }

      while (v3 != v4 && (v5(*v3) & 1) == 0);
    }
  }

  (*(**(v1 + 184) + 24))(*(v1 + 184));
  (*(**(v1 + 136) + 16))(*(v1 + 136));
  operator delete();
}

void sub_10157B658(void *a1)
{
  if (a1)
  {
    sub_10157B658(*a1);
    sub_10157B658(a1[1]);
    sub_10157B6AC((a1 + 5));

    operator delete(a1);
  }
}

uint64_t sub_10157B6AC(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_100034450(*(a1 + 64));
  v7 = *(a1 + 48);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return a1;
}

uint64_t sub_10157B738(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10157B6AC(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10157B7F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4DEE8;
  a2[1] = v2;
  return result;
}

void sub_10157B820(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      rest::write_rest_value();
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
      v15 = v6[1];
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
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/clir_infos");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_10157BAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}