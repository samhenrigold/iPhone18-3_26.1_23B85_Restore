void sub_10159245C(uint64_t a1, int a2, uint64_t *a3)
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
        v10 = *a3;
        v11 = a3[1];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
          sub_10158FBF8(v9, a2, v10, v11);
        }

        sub_10158FBF8(v9, a2, v10, 0);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_101592504(uint64_t a1, uint64_t a2, uint64_t a3, __int128 **a4)
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
        v20 = 0;
        v21 = 0;
        v22 = 0;
        sub_10004EFD0(&v20, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
        v12 = (*(**(v11 + 48) + 16))(*(v11 + 48), a2);
        v13 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v20;
          v14 = v21;
          v16 = asString();
          LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
          *(buf.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3);
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v16;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Got %zu %s emergency numbers", &buf, 0x16u);
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v17 = asString();
          sub_1000D1184(&buf, v20, v21, ", ", 2uLL);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v24 = 136315394;
          *&v24[4] = v17;
          v25 = 2080;
          v26 = p_buf;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Emergency numbers for %s: %s", v24, 0x16u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        v19 = *(v11 + 208);
        memset(&buf, 0, sizeof(buf));
        sub_10004EFD0(&buf, v20, v21, 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3));
        (*(*v19 + 40))(v19, a3, &buf, a2);
        *v24 = &buf;
        sub_1000087B4(v24);
        buf.__r_.__value_.__r.__words[0] = &v20;
        sub_1000087B4(&buf);
      }

      sub_100004A34(v10);
    }
  }
}

void sub_101592788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_1000087B4(&a17);
  a17 = &a10;
  sub_1000087B4(&a17);
  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_1015927C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
          v11 = 136315138;
          v12 = asString();
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N No %s emergency numbers provided. Clearing old emergency numbers.", &v11, 0xCu);
        }

        (*(**(v9 + 208) + 48))(*(v9 + 208), a3, a2);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_101592954(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  (*(**(v1 + 88) + 24))(*(v1 + 88));
  operator delete();
}

__n128 sub_101592AB0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F50158;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101592AE8(void *a1)
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

uint64_t sub_101592B30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101592B7C(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v12 = 0;
  v13 = 0;
  sub_10006BCA8(&v12, (v2 + 15), *(v1 + 8));
  v3 = v12;
  if (v12)
  {
    (*(*v12 + 24))(v12, *(v1 + 12));
    v4 = *(v1 + 8);
    v5 = v13;
    *buf = v3;
    v11 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10158DB90(v2, v4, buf, *(v1 + 12), v1 + 40);
    if (v5)
    {
      sub_100004A34(v5);
LABEL_9:
      sub_100004A34(v5);
    }
  }

  else
  {
    v6 = *(*(*v2[6] + 16))(v2[6], *(v1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
    }

    sub_10000FFD0(v1 + 40, 0);
    v5 = v13;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  sub_1012CBD18(&v9);
  return sub_1000049E0(&v8);
}

void sub_101592CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1012CBD18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101592D1C(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10158E250(*v1, *(v1 + 8), *(v1 + 12), (v1 + 16), v1 + 176, v1 + 200);
  sub_1012CC298(&v4);
  return sub_1000049E0(&v3);
}

void sub_101592D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1012CC298(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101592D8C(int **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(*(**(*v1 + 48) + 16))(*(*v1 + 48), v1[2]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received Fetch call", buf, 2u);
  }

  v4 = sub_10006BD2C(v2 + 120, v1[2]);
  if (v4 && *v4 > 3)
  {
    *buf = 0;
    v18 = 0;
    sub_10006BCA8(buf, v2 + 120, v1[2]);
    v6 = *buf;
    if (*buf)
    {
      v7 = *(v2 + 88);
      v8 = v1[2];
      v9 = (*(**buf + 48))(*buf);
      v10 = (*(*v6 + 64))(v6);
      (*(*v7 + 48))(v7, v8, v9, 1, *(v10 + 6));
      v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Fetch request sent out the Command Driver", v16, 2u);
      }

      sub_10000FFD0((v1 + 4), 1);
    }

    else
    {
      sub_10000FFD0((v1 + 4), 0);
      v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "No phonebook model", v16, 2u);
      }
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  else
  {
    sub_10000FFD0((v1 + 4), 0);
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v1[2]);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Phone book is not available state", buf, 2u);
    }
  }

  sub_100EDD714(&v15);
  return sub_1000049E0(&v14);
}

void sub_101593084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100EDD714(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015930BC(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  sub_10006BCA8(&v9, v2 + 120, *(v1 + 8));
  if (v9)
  {
    v3 = (*(*v9 + 96))(v9);
    v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Count: %zd", buf, 0xCu);
    }

    sub_100DDDDC4(v1 + 16, 1, v3);
  }

  else
  {
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
    }

    sub_100DDDDC4(v1 + 16, 0, 0);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1012CC8A0(&v8);
  return sub_1000049E0(&v7);
}

void sub_101593284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1012CC8A0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015932C0(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v37 = 0;
  v38 = 0;
  sub_10006BCA8(&v37, v2 + 120, *(v1 + 8));
  v3 = v37;
  if (v37)
  {
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
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *v10 = 0u;
    sub_100E3F3A4(v10);
    v4 = (*(*v3 + 80))(v3, *(v1 + 12), v10);
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v40 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Found the entry: %d", buf, 8u);
    }

    sub_1012CCBFC(v1 + 16, v4);
  }

  else
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No phonebook model", v10, 2u);
    }

    sub_100E3F3A4(v10);
    sub_1012CCBFC(v1 + 16, 0);
  }

  sub_10006BF90(v10);
  if (v38)
  {
    sub_100004A34(v38);
  }

  sub_1012CCBAC(&v9);
  return sub_1000049E0(&v8);
}

void sub_1015934E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10006BF90(va);
  v12 = *(v10 - 56);
  if (v12)
  {
    sub_100004A34(v12);
  }

  sub_1012CCBAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101593554(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = sub_10006BD2C(*v1 + 120, *(v1 + 8));
  if (v3 && *v3 > 1)
  {
    v14 = 0;
    v15 = 0;
    sub_10006BCA8(&v14, v2 + 120, *(v1 + 8));
    v5 = v14;
    if (v14)
    {
      if ((*(*v14 + 208))(v14) && !(*(*v5 + 216))(v5))
      {
        v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Set phone number called, and MSISDN is writable", buf, 2u);
        }

        (*(*v5 + 40))(v5, 2);
        v11 = sub_10006BD2C(v2 + 120, *(v1 + 8));
        if (v11)
        {
          *v11 = 4;
        }
      }

      else
      {
        v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Set phone number called, and MSISDN does not exist/write locked", buf, 2u);
        }

        (*(*v5 + 40))(v5, 2);
      }

      v7 = *(v1 + 8);
      *buf = off_101F50238;
      v17 = v2;
      v18 = v7;
      v19 = buf;
      sub_10158E250(v2, v7, 1, (v1 + 40), v1 + 16, buf);
      sub_10000FF50(buf);
    }

    else
    {
      v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
      }
    }

    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  else
  {
    v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Phone book is not ready to write", buf, 2u);
    }
  }

  sub_1012CCF44(&v13);
  return sub_1000049E0(&v12);
}

void sub_1015938D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1012CCF44(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_101593994(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F50238;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1015939C8(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(*(result + 8) + 72) + 304))(*(*(result + 8) + 72), *(result + 16));
  }

  return result;
}

uint64_t sub_101593A10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101593A5C(uint64_t *a1)
{
  v1 = *a1;
  v44 = a1;
  v45 = v1;
  v2 = *v1;
  v49[0] = 0;
  v49[1] = 0;
  v50 = 0;
  CSIPhoneNumber::getFullNumber(v49, (v1 + 24));
  v3 = SHIBYTE(v50);
  if (v50 >= 0)
  {
    v4 = HIBYTE(v50);
  }

  else
  {
    v4 = v49[1];
  }

  v5 = *(v2 + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v4)
  {
    if (v6)
    {
      v25 = *(v1 + 8);
      v28 = *(v25 + 24);
      v26 = (v25 + 24);
      v27 = v28;
      v29 = *(v26 + 23);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v26 + 1);
      }

      if (v30 < 0)
      {
        v26 = v27;
      }

      if (!v29)
      {
        v26 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Reset PNR phone number for persona %s", buf, 0xCu);
    }

    ServiceMap = Registry::getServiceMap(*(v2 + 56));
    v32 = ServiceMap;
    if (v33 < 0)
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
    *buf = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, buf);
    if (v37)
    {
      v38 = v37[3];
      v22 = v37[4];
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v32);
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
        v39 = 0;
        goto LABEL_69;
      }
    }

    else
    {
      v38 = 0;
    }

    std::mutex::unlock(v32);
    v22 = 0;
    v39 = 1;
LABEL_69:
    (*(*v38 + 32))(v38, *(v1 + 8) + 24, @"PNRPhoneNumber", @"phonebook", 0, 1);
    if (v39)
    {
      goto LABEL_56;
    }

LABEL_55:
    sub_100004A34(v22);
    goto LABEL_56;
  }

  if (v6)
  {
    v7 = v49[0];
    v8 = *(v1 + 8);
    v11 = *(v8 + 24);
    v9 = v8 + 24;
    v10 = v11;
    if (v3 >= 0)
    {
      v7 = v49;
    }

    v12 = *(v9 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v9 + 8);
    }

    if (v13 < 0)
    {
      v9 = v10;
    }

    if (v12)
    {
      v14 = v9;
    }

    else
    {
      v14 = "<invalid>";
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Store PNR phone number %s for persona %s", buf, 0x16u);
  }

  v15 = Registry::getServiceMap(*(v2 + 56));
  v16 = v15;
  if (v17 < 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
      goto LABEL_38;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_38:
  v40 = *(v1 + 8);
  if (SHIBYTE(v50) < 0)
  {
    sub_100005F2C(__dst, v49[0], v49[1]);
  }

  else
  {
    *__dst = *v49;
    v47 = v50;
  }

  if (SHIBYTE(v47) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v53 = v47;
  }

  v51 = 0;
  if (SHIBYTE(v53) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v53;
  }

  v54 = 0;
  if (ctu::cf::convert_copy())
  {
    v41 = v51;
    v51 = v54;
    v55 = v41;
    sub_100005978(&v55);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v48 = v51;
  v51 = 0;
  sub_100005978(&v51);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__p[0]);
  }

  (*(*v23 + 16))(v23, v40 + 24, @"PNRPhoneNumber", v48, @"phonebook", 0, 1, 0, v44, v45);
  sub_100005978(&v48);
  if ((SHIBYTE(v47) & 0x80000000) == 0)
  {
    if (v24)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  operator delete(__dst[0]);
  if ((v24 & 1) == 0)
  {
    goto LABEL_55;
  }

LABEL_56:
  __p[0] = 0;
  __p[1] = 0;
  sub_10006BCA8(__p, v2 + 120, *(*(v1 + 8) + 52));
  if (__p[0])
  {
    (*(*__p[0] + 168))(__p[0], v1 + 24);
  }

  v42 = *(*(v1 + 8) + 52);
  sub_10000501C(buf, "My Number");
  (*(*v2 + 88))(v2, v42, buf, v1 + 24);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49[0]);
  }

  sub_1012CD07C(&v45);
  return sub_1000049E0(&v44);
}

void sub_101593FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_100005978(&a24);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if ((v31 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1012CD07C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015940B8(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *(*(**(*v1 + 48) + 16))(*(*v1 + 48), *(v1 + 8));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    CSIPhoneNumber::getFullNumber(__p, (v1 + 16));
    v4 = v16 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Request to set the Voice mail box number with %s", buf, 0xCu);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = sub_10006BD2C(v2 + 120, *(v1 + 8));
  if (v5 && *v5 > 1)
  {
    *buf = 0uLL;
    sub_10006BCA8(buf, v2 + 120, *(v1 + 8));
    if (*buf)
    {
      v7 = *(v2 + 88);
      v8 = *(v1 + 8);
      v9 = (*(**buf + 248))(*buf, 4);
      sub_10000501C(__p, "");
      if (v9)
      {
        v10 = 4;
      }

      else
      {
        v10 = 5;
      }

      (*(*v7 + 56))(v7, v8, v10, 1, v1 + 16, __p);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No phonebook model", __p, 2u);
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Phone book is not ready to write", __p, 2u);
    }
  }

  sub_1010B5638(&v14);
  return sub_1000049E0(&v13);
}

void sub_101594388(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_1010B5638(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1015943D8(uint64_t *a1)
{
  v16 = 0;
  v17 = 0;
  v2 = *a1;
  sub_10006BCA8(&v16, *a1 + 120, *a1[1]);
  if (!v16)
  {
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *a1[1]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No phonebook model", __p, 2u);
    }

    goto LABEL_16;
  }

  v3 = (*(*v16 + 232))(v16);
  v4 = a1[2];
  *v4 = *v3;
  std::string::operator=((v4 + 8), (v3 + 8));
  std::string::operator=((v4 + 32), (v3 + 32));
  v5 = *(v3 + 56);
  *(v4 + 60) = *(v3 + 60);
  *(v4 + 56) = v5;
  std::string::operator=((v4 + 64), (v3 + 64));
  v6 = *(v3 + 88);
  *(v4 + 96) = *(v3 + 96);
  *(v4 + 88) = v6;
  std::string::operator=((v4 + 104), (v3 + 104));
  std::string::operator=((v4 + 128), (v3 + 128));
  *(v4 + 152) = *(v3 + 152);
  CSIPhoneNumber::getBaseNumber(__p, a1[2]);
  if ((v15 & 0x80000000) == 0)
  {
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v11 = __p[1];
  operator delete(__p[0]);
  if (!v11)
  {
LABEL_14:
    v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *a1[1]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Voice mail box number is empty", __p, 2u);
    }

LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

LABEL_4:
  v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *a1[1]);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    CSIPhoneNumber::getFullNumber(__p, a1[2]);
    v8 = v15 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Voice mail box number is %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v9 = 1;
LABEL_17:
  if (v17)
  {
    sub_100004A34(v17);
  }

  return v9;
}

void sub_1015946B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015946EC(uint64_t **a1)
{
  v1 = **a1;
  if (*(*a1 + 12))
  {
    subscriber::makeSimSlotRange();
    v2 = v33;
    v3 = v34;
    if (v33 != v34)
    {
      v4 = v35;
      do
      {
        if (v35(*v2))
        {
          break;
        }

        ++v2;
      }

      while (v2 != v34);
      v5 = v34;
      if (v2 != v34)
      {
        v29 = v1;
        do
        {
          v6 = *v2;
          v7 = sub_10006BD2C(v1 + 120, *v2);
          if (v7)
          {
            *v7 = 1;
          }

          ServiceMap = Registry::getServiceMap(*(v1 + 56));
          v9 = ServiceMap;
          if (v10 < 0)
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
          *buf = v10;
          v14 = sub_100009510(&v9[1].__m_.__sig, buf);
          if (v14)
          {
            v16 = v14[3];
            v15 = v14[4];
            if (v15)
            {
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v9);
              atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              v1 = v29;
              sub_100004A34(v15);
              v17 = 0;
              if (!v16)
              {
                goto LABEL_16;
              }

              goto LABEL_20;
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
LABEL_16:
            v18 = *(*(**(v1 + 48) + 16))(*(v1 + 48), v6);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Subscriber Service is not up yet. Will try again later", buf, 2u);
            }

            goto LABEL_21;
          }

LABEL_20:
          v30 = 4;
          sub_1008235B0(buf, &v30, 1);
          (*(*v16 + 168))(v16, v6, buf);
          sub_10006DCAC(buf, v32);
LABEL_21:
          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          do
          {
            ++v2;
          }

          while (v2 != v3 && (v4(*v2) & 1) == 0);
        }

        while (v2 != v5);
      }
    }
  }

  else
  {
    subscriber::makeSimSlotRange();
    v19 = v33;
    v20 = v34;
    if (v33 != v34)
    {
      v21 = v35;
      do
      {
        if (v35(*v19))
        {
          break;
        }

        ++v19;
      }

      while (v19 != v34);
      v22 = v34;
      while (v19 != v22)
      {
        v23 = *v19;
        v24 = *(*(**(v1 + 48) + 16))(*(v1 + 48), *v19);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Phone book driver has gone down, clearing off the phone book model", buf, 2u);
        }

        v25 = sub_10006BD2C(v1 + 120, v23);
        if (v25)
        {
          *v25 = 0;
        }

        v26 = sub_10006BD2C(v1 + 120, v23);
        v27 = v26;
        if (v26)
        {
          v28 = v26[4];
          if (v28)
          {
            (*(*v28 + 256))(v28, 1);
          }

          *(v27 + 5) = 0;
        }

        do
        {
          ++v19;
        }

        while (v19 != v20 && (v21(*v19) & 1) == 0);
      }
    }
  }

  operator delete();
}

void sub_101594B30(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 2);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = (v1 + 2);
      v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 4));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(v1 + 3);
        *buf = 67109120;
        v12 = v10;
        v7 = "#I Error in Fetch: %d";
        goto LABEL_14;
      }
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_16;
      }

      v4 = (v1 + 2);
      v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 4));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(v1 + 3);
        *buf = 67109120;
        v12 = v8;
        v7 = "#I Error in Write Entry: %d";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 8u);
      }
    }
  }

  else
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        goto LABEL_16;
      }

      v4 = (v1 + 2);
      v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 4));
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v6 = *(v1 + 3);
      *buf = 67109120;
      v12 = v6;
      v7 = "#I Error in PB State : %d";
      goto LABEL_14;
    }

    v4 = (v1 + 2);
    v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 4));
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v1 + 3);
      *buf = 67109120;
      v12 = v9;
      v7 = "#I Error in Get Capabilities: %d";
      goto LABEL_14;
    }
  }

LABEL_15:
  (*(**(v2 + 72) + 304))(*(v2 + 72), *v4);
LABEL_16:
  operator delete();
}

void sub_101594E00(uint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = sub_10006BD2C(v2 + 120, *(*a1 + 2));
  if (v3)
  {
    *v3 = 2;
  }

  v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Phone book Command Driver ready", buf, 2u);
  }

  operator delete();
}

uint64_t *sub_101594EFC(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v17 = 0;
  v18 = 0;
  sub_10006BCA8(&v17, v2 + 120, *(v1 + 8));
  v3 = v17;
  if (v17)
  {
    v4 = sub_10006BD2C(v2 + 120, *(v1 + 8));
    if (!v4 || *v4 <= 2)
    {
      v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      sub_10006BD2C(v2 + 120, *(v1 + 8));
      v6 = asString();
      *buf = 136315138;
      v20 = v6;
      v7 = "#N Got capabilities, not in kPBStatePhoneBookSelected state (%s)";
      v8 = v5;
      v9 = 12;
      goto LABEL_14;
    }

    (*(*v3 + 56))(v3, *(v1 + 16));
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Got Phone book capabilities", buf, 2u);
    }

    v12 = sub_10006BD2C(v2 + 120, *(v1 + 8));
    if (v12)
    {
      *v12 = 4;
    }

    (*(**(v2 + 72) + 280))(*(v2 + 72), *(v1 + 8));
    v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "#I Notified the clients that Phone Book has been selected";
      v8 = v13;
      v9 = 2;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
    }
  }

  else
  {
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
    }
  }

LABEL_15:
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_1001FF3DC(&v16);
  return sub_1000049E0(&v15);
}

void sub_1015951F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101595238(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v16 = 0;
  v17 = 0;
  sub_10006BCA8(&v16, v2 + 120, *(v1 + 8));
  v3 = v16;
  if (v16)
  {
    v4 = sub_10006BD2C(v2 + 120, *(v1 + 8));
    if (!v4 || *v4 <= 3)
    {
      v5 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      sub_10006BD2C(v2 + 120, *(v1 + 8));
      v6 = asString();
      *buf = 136315138;
      v19 = v6;
      v7 = "#N Fetch partially complete, not in kPhoneBookAvailable state (%s)";
      v8 = v5;
      v9 = 12;
      goto LABEL_6;
    }

    if ((*(*v3 + 48))(v3) == *(v1 + 12))
    {
      (*(*v3 + 72))(v3, *(v1 + 16));
    }

    else
    {
      v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "#I Fetch partial received for currently not set phone book";
        v8 = v11;
        v9 = 2;
LABEL_6:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }

LABEL_13:
    v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Got partial fetch acknowledgement", buf, 2u);
    }

    goto LABEL_15;
  }

  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
  }

LABEL_15:
  if (v17)
  {
    sub_100004A34(v17);
  }

  sub_1011BEED0(&v15);
  return sub_1000049E0(&v14);
}

void sub_101595520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1011BEED0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101595564(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  memset(&v26, 0, sizeof(v26));
  *v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  v21 = 0;
  v19 = 0;
  if (!sub_10006C7E4(v2, *(v1 + 2), &v26, v24, v22, &v21, &v20, &v19))
  {
LABEL_56:
    if (SBYTE7(v23) < 0)
    {
      operator delete(v22[0]);
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(v24[0]);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    operator delete();
  }

  v3 = *(v1 + 2);
  v4 = sub_10006BD2C(v2 + 120, *(v1 + 2));
  if (!v4)
  {
    __assert_rtn("checkForPhoneNumberChanged_sync", "PhonebookHandler.cpp", 786, "descr");
  }

  v39 = 0;
  v5 = off_101F4FD60[v3 == 2];
  *&v27.var0 = CFPreferencesCopyValue(v5, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100222990(&v39, &v27);
  v38 = 0;
  CSIPhoneNumber::CSIPhoneNumber();
  CSIPhoneNumber::getBaseNumber(&v36, &v27);
  if (SHIBYTE(v37) < 0)
  {
    sub_100005F2C(buf, v36, *(&v36 + 1));
  }

  else
  {
    *buf = v36;
    *&buf[16] = v37;
  }

  v40 = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    sub_100005F2C(&__dst, *buf, *&buf[8]);
  }

  else
  {
    __dst = *buf;
    size = *&buf[16];
  }

  v43 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v40;
    v40 = v43;
    v44 = v6;
    sub_100005978(&v44);
  }

  if (SHIBYTE(size) < 0)
  {
    operator delete(__dst);
  }

  v38 = v40;
  v40 = 0;
  sub_100005978(&v40);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36);
  }

  if (v35 < 0)
  {
    operator delete(__p);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (*(&v27.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v27.var2.__rep_.__l.__data_);
  }

  v7 = v38;
  if (v39 && v38)
  {
    if (CFEqual(v39, v38))
    {
      goto LABEL_41;
    }

    v7 = v38;
  }

  CFPreferencesSetValue(v5, v7, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000929F0();
  (*(**(v2 + 72) + 328))(*(v2 + 72), v3);
  v8 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    memset(&v27, 0, 24);
    ctu::cf::assign();
    size = v27.var2.__rep_.__l.__size_;
    __dst = *&v27.var0;
    v9 = v27.var2.__rep_.__s.__data_[15];
    v10 = *&v27.var0;
    asString();
    p_dst = &__dst;
    if (v9 < 0)
    {
      p_dst = v10;
    }

    if (v27.var2.__rep_.__s.__data_[15] >= 0)
    {
      v12 = &v27;
    }

    else
    {
      v12 = *&v27.var0;
    }

    *buf = 136315394;
    *&buf[4] = p_dst;
    *&buf[12] = 2080;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Sent out Phone Number Changed notification, old: %s, new: %s", buf, 0x16u);
    if (v27.var2.__rep_.__s.__data_[15] < 0)
    {
      operator delete(*&v27.var0);
    }

    if (SHIBYTE(size) < 0)
    {
      operator delete(__dst);
    }
  }

LABEL_41:
  if ((*(v4 + 5) & 1) == 0)
  {
    *(v4 + 5) = 1;
    v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27.var0) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I sending out 'Phone Number Available'", &v27, 2u);
    }

    (*(**(v2 + 72) + 312))(*(v2 + 72), v3);
  }

  v14 = *(v2 + 112);
  if (v14)
  {
    v15 = std::__shared_weak_count::lock(v14);
    if (v15)
    {
      v16 = *(v2 + 104);
      if (v16)
      {
        v17 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27.var0) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Updating phone_numbers rest property", &v27, 2u);
        }

        (*(*v16 + 432))(v16, v3, v4 + 1, v24, v22, 1);
        goto LABEL_54;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v3);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v27.var0) = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not get SettingsInterface to update phone numbers REST property", &v27, 2u);
    if (!v15)
    {
      goto LABEL_55;
    }
  }

  else if (!v15)
  {
LABEL_55:
    sub_100005978(&v38);
    sub_100005978(&v39);
    sub_101590184(v2, *(v1 + 2), v19);
    goto LABEL_56;
  }

LABEL_54:
  sub_100004A34(v15);
  goto LABEL_55;
}

void sub_101595BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  sub_100004A34(v37);
  sub_100005978((v38 - 184));
  sub_100005978((v38 - 176));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  operator delete();
}

uint64_t *sub_101595CF4(uint64_t *a1)
{
  v1 = *a1;
  v35 = a1;
  v36 = v1;
  v2 = *v1;
  v37 = 0;
  v38 = 0;
  sub_10006BCA8(&v37, v2 + 120, *(v1 + 8));
  v3 = v37;
  if (!v37)
  {
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.var0) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "No phonebook model", &buf, 2u);
    }

    goto LABEL_44;
  }

  v4 = *(v1 + 12);
  if ((v4 - 4) < 2)
  {
    v5 = *(v1 + 8);
    v6 = *(v2 + 48);
    v7 = *(*v6 + 16);
    if (*(*(v1 + 16) + 8) - **(v1 + 16) != 432)
    {
      v20 = *v7(v6, v5);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = asString();
        buf.var0 = 136315138;
        *&buf.var1 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Received 0 records for %s", &buf, 0xCu);
      }

      CSIPhoneNumber::CSIPhoneNumber(&buf);
      (*(*v3 + 224))(v3, &buf);
      if (v47 < 0)
      {
        operator delete(__p);
      }

      if (v45 < 0)
      {
        operator delete(v44);
      }

      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v41 < 0)
      {
        operator delete(v40);
      }

      if (*(&buf.var2.__rep_.__l + 23) < 0)
      {
        operator delete(buf.var2.__rep_.__l.__data_);
      }

      goto LABEL_35;
    }

    v8 = *v7(v6, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = asString();
      buf.var0 = 136315138;
      *&buf.var1 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Received PB entry for %s", &buf, 0xCu);
    }

    v10 = **(v1 + 16);
    if (*(*(v1 + 16) + 8) != v10)
    {
      (*(*v3 + 224))(v3, v10 + 32);
      goto LABEL_35;
    }

LABEL_47:
    sub_1002030E0();
  }

  if (v4 == 2)
  {
    v12 = *(v1 + 16);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(v1 + 8);
    v16 = *(v2 + 48);
    v17 = *(*v16 + 16);
    if (v13 == v14)
    {
      v22 = *v17(v16, v15);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#N Received 0 records for Own Phone Numbers", &buf, 2u);
      }
    }

    else
    {
      v18 = *v17(v16, v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 0x84BDA12F684BDA13 * ((*(*(v1 + 16) + 8) - **(v1 + 16)) >> 4);
        buf.var0 = 134217984;
        *&buf.var1 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Received PB entry for Own Phone Numbers, %lu", &buf, 0xCu);
      }

      if (*(*(v1 + 16) + 8) == **(v1 + 16))
      {
        goto LABEL_47;
      }

      (*(*v3 + 104))(v3);
    }

    (*(*v3 + 136))(v3, 1);
    v23 = *(v2 + 112);
    if (v23)
    {
      v24 = std::__shared_weak_count::lock(v23);
      if (v24)
      {
        v25 = v24;
        v26 = *(v2 + 104);
        if (v26)
        {
          (*(*v26 + 304))(v26, *(v1 + 8), 0, "phonebookFetchComplete");
        }

        sub_100004A34(v25);
      }
    }
  }

LABEL_35:
  v27 = sub_10006BD2C(v2 + 120, *(v1 + 8));
  if (!v27 || *v27 <= 3)
  {
    v28 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_44;
    }

    sub_10006BD2C(v2 + 120, *(v1 + 8));
    v29 = asString();
    buf.var0 = 136315138;
    *&buf.var1 = v29;
    v30 = "#N Fetch complete, not in kPhoneBookAvailable state (%s)";
    v31 = v28;
    v32 = 12;
    goto LABEL_39;
  }

  if ((*(*v3 + 48))(v3) == *(v1 + 12))
  {
    (*(*v3 + 72))(v3, *(v1 + 16));
    (*(**(v2 + 72) + 288))(*(v2 + 72), *(v1 + 8));
  }

  else
  {
    v33 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.var0) = 0;
      v30 = "#I Fetch complete received for currently not set phone book";
      v31 = v33;
      v32 = 2;
LABEL_39:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, &buf, v32);
    }
  }

LABEL_44:
  if (v38)
  {
    sub_100004A34(v38);
  }

  sub_1011BEED0(&v36);
  return sub_1000049E0(&v35);
}

void sub_10159633C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100004A34(v12);
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_1011BEED0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1015963B8(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received phone book entry update", buf, 2u);
  }

  *buf = 0;
  v10 = 0;
  sub_10006BCA8(buf, v2 + 120, *(v1 + 2));
  if (*buf)
  {
    v4 = *(v1 + 3);
    if (v4 <= 5 && ((1 << v4) & 0x34) != 0)
    {
      goto LABEL_8;
    }

    if (v4 == (*(**buf + 48))())
    {
      v4 = *(v1 + 3);
LABEL_8:
      (*(**(v2 + 88) + 48))(*(v2 + 88), *(v1 + 2), v4, *(v1 + 4), *(v1 + 4));
      goto LABEL_11;
    }

    v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Received an entry update for non-selected phone book", v8, 2u);
    }
  }

  else
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No phonebook model", v8, 2u);
    }
  }

LABEL_11:
  if (v10)
  {
    sub_100004A34(v10);
  }

  operator delete();
}

void sub_101596608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

void sub_101596650(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.var0) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received phone book entry delete", &buf, 2u);
  }

  v17 = 0;
  v18 = 0;
  sub_10006BCA8(&v17, v2 + 120, *(v1 + 2));
  v4 = v17;
  if (v17)
  {
    v5 = v17;
    v6 = *(v1 + 3);
    if ((v6 - 4) >= 2)
    {
      if (v6 == 2)
      {
        v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.var0) = 0;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received an entry delete for Own Phone Number", &buf, 2u);
        }

        sub_100E3F3A4(&buf);
        (*(*v4 + 104))(v4, &buf);
        sub_10006BF90(&buf);
        v11 = *(v2 + 112);
        if (v11)
        {
          v12 = std::__shared_weak_count::lock(v11);
          if (v12)
          {
            v13 = v12;
            v14 = *(v2 + 104);
            if (v14)
            {
              (*(*v14 + 304))(v14, *(v1 + 2), 0, "phonebookEntryDelete");
            }

            sub_100004A34(v13);
          }
        }
      }
    }

    else
    {
      v7 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = asString();
        buf.var0 = 136315138;
        *&buf.var1 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Received an entry delete for (%s) Voice Mail Number", &buf, 0xCu);
      }

      CSIPhoneNumber::CSIPhoneNumber(&buf);
      (*(*v4 + 224))(v4, &buf);
      if (v27 < 0)
      {
        operator delete(__p);
      }

      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }

      if (*(&buf.var2.__rep_.__l + 23) < 0)
      {
        operator delete(buf.var2.__rep_.__l.__data_);
      }
    }

    v15 = *(v1 + 3);
    if (v15 == (*(*v5 + 48))(v5))
    {
      (*(*v5 + 88))(v5, *(v1 + 4));
    }

    else
    {
      v16 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Received an entry delete for non-selected phone book", &buf, 2u);
      }
    }
  }

  else
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.var0) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No phonebook model", &buf, 2u);
    }
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  operator delete();
}

void sub_101596AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100004A34(v12);
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void sub_101596B54(uint64_t **a1)
{
  v12 = 0;
  v1 = *a1;
  v2 = **a1;
  v13 = 0;
  sub_10006BCA8(&v12, v2 + 120, *(v1 + 2));
  if (v12)
  {
    v3 = sub_10006BD2C(v2 + 120, *(v1 + 2));
    if (v3 && *v3 > 3)
    {
      (*(**(v2 + 72) + 296))(*(v2 + 72), *(v1 + 2));
      v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v11 = *(v1 + 6);
      *buf = 67109120;
      LODWORD(v15) = v11;
      v6 = "#I Write Entry complete for record: %d";
      v7 = v10;
      v8 = 8;
    }

    else
    {
      v4 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      sub_10006BD2C(v2 + 120, *(v1 + 2));
      v5 = asString();
      *buf = 136315138;
      v15 = v5;
      v6 = "#N Write complete, not in kPhoneBookAvailable state (%s)";
      v7 = v4;
      v8 = 12;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
  }

  else
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 2));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
    }
  }

LABEL_11:
  if (v13)
  {
    sub_100004A34(v13);
  }

  operator delete();
}

void sub_101596DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void sub_101596E10(void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*(*v2[6] + 16))(v2[6], *(*a1 + 2));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asString();
    v5 = CSIBOOLAsString(*(v1 + 16));
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Phone Book State received with type (%s) and result (%s)", buf, 0x16u);
  }

  v6 = *(v1 + 3);
  if (v6 == 2)
  {
    if (*(v1 + 16) == 1)
    {
      (*(*v2[11] + 48))(v2[11], *(v1 + 2), 2, 1, 1);
      v7 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v8 = "#I PB State is ready for Own Phone Numbers, sent out read request for record 1";
        v9 = v7;
        v10 = 2;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }
  }

  else if ((v6 & 0xFFFFFFFE) == 4 && *(v1 + 16) == 1)
  {
    (*(*v2[11] + 48))(v2[11], *(v1 + 2));
    v11 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = asString();
      *buf = 136315138;
      *&buf[4] = v12;
      v8 = "#I PB State is ready for %s, sent out read request for record 1";
      v9 = v11;
      v10 = 12;
      goto LABEL_11;
    }
  }

  v45 = 0;
  v46 = 0;
  sub_10006BCA8(&v45, (v2 + 15), *(v1 + 2));
  v13 = v45;
  if (!v45)
  {
    v22 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
    }

    goto LABEL_23;
  }

  v14 = (*(*v45 + 48))(v45);
  v15 = *(v1 + 2);
  if (v14 != *(v1 + 3))
  {
    v23 = *(*(*v2[6] + 16))(v2[6], v15);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    (*(*v13 + 48))(v13);
    v24 = asString();
    v25 = asString();
    *buf = 136315394;
    *&buf[4] = v24;
    *&buf[12] = 2080;
    *&buf[14] = v25;
    v19 = "#I Current PB type: %s, phonebookState PB: %s";
    v20 = v23;
    v21 = 22;
    goto LABEL_22;
  }

  v16 = sub_10006BD2C((v2 + 15), v15);
  if (!v16 || *v16 <= 2)
  {
    v17 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    sub_10006BD2C((v2 + 15), *(v1 + 2));
    v18 = asString();
    *buf = 136315138;
    *&buf[4] = v18;
    v19 = "#N Phone state received, not in kPBStatePhoneBookSelected state (%s)";
    v20 = v17;
    v21 = 12;
    goto LABEL_22;
  }

  if (*(v1 + 16) == 1)
  {
    v26 = sub_10006BD2C((v2 + 15), *(v1 + 2));
    if (v26 && *v26 > 3)
    {
      v30 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "#I Capabilities are already available";
        goto LABEL_46;
      }
    }

    else
    {
      v27 = v2[11];
      v28 = *(v1 + 2);
      v29 = (*(*v13 + 48))(v13);
      (*(*v27 + 40))(v27, v28, v29);
      v30 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "#I Phone book ready - getting capabilities";
LABEL_46:
        v20 = v30;
        v21 = 2;
LABEL_22:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }

LABEL_23:
    if (v46)
    {
      sub_100004A34(v46);
    }

    operator delete();
  }

  v31 = *(v1 + 3);
  if (!v31)
  {
    if (!(*(*v13 + 32))(v13))
    {
      v38 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I SIM Phone book is not available, retrying on Application Phone Book", buf, 2u);
      }

      v39 = *(v1 + 2);
      v34 = v46;
      v43 = v13;
      v44 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10000501C(__p, "");
      v40 = *(v1 + 2);
      *buf = off_101F502D8;
      *&buf[8] = v2;
      *&buf[16] = v40;
      v48 = buf;
      *&buf[20] = 0;
      sub_10158DB90(v2, v39, &v43, 3, buf);
      goto LABEL_52;
    }

    v31 = *(v1 + 3);
  }

  if (v31 != 3 || (*(*v13 + 32))(v13) != 3)
  {
    v36 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = asString();
      *buf = 136315138;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#N %s Phone book unavailable", buf, 0xCu);
    }

    (*(*v2[9] + 304))(v2[9], *(v1 + 2));
    goto LABEL_23;
  }

  v32 = *(*(*v2[6] + 16))(v2[6], *(v1 + 2));
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Application Phone book is not available, retrying on SIM Phone Book", buf, 2u);
  }

  v33 = *(v1 + 2);
  v34 = v46;
  v43 = v13;
  v44 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(__p, "");
  v35 = *(v1 + 2);
  *buf = off_101F50358;
  *&buf[8] = v2;
  *&buf[16] = v35;
  v48 = buf;
  *&buf[20] = 0;
  sub_10158DB90(v2, v33, &v43, 0, buf);
LABEL_52:
  sub_10000FF50(buf);
  if (v42 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34)
  {
    sub_100004A34(v34);
  }

  goto LABEL_23;
}

void sub_101597718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20)
{
  sub_10000FF50(&a20);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  operator delete();
}

__n128 sub_101597838(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F502D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_10159786C(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(*(result + 8) + 72) + 304))(*(*(result + 8) + 72), *(result + 16));
  }

  return result;
}

uint64_t sub_1015978B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101597978(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F50358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

uint64_t sub_1015979AC(uint64_t result, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    return (*(**(*(result + 8) + 72) + 304))(*(*(result + 8) + 72), *(result + 16));
  }

  return result;
}

uint64_t sub_1015979F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101597A40(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  if (*(v1 + 16))
  {
    *buf = 0;
    v24 = 0;
    sub_10006BCA8(buf, v2 + 120, *(v1 + 8));
    v3 = *buf;
    if (*buf)
    {
      v4 = *(v1 + 16);
      v7 = *v4;
      v5 = v4 + 1;
      v6 = v7;
      if (v7 != v5)
      {
        while (*(v6 + 7) != 2)
        {
          v8 = v6[1];
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
              v9 = v6[2];
              v10 = *v9 == v6;
              v6 = v9;
            }

            while (!v10);
          }

          v6 = v9;
          if (v9 == v5)
          {
            goto LABEL_20;
          }
        }
      }

      if (v6 == v5)
      {
LABEL_20:
        v14 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MSISDN file is not present, assuming read attempted", v22, 2u);
        }

        (*(*v3 + 200))(v3, 0);
        (*(*v3 + 136))(v3, 1);
        v15 = *(v2 + 112);
        if (v15)
        {
          v16 = std::__shared_weak_count::lock(v15);
          if (v16)
          {
            v17 = v16;
            v18 = *(v2 + 104);
            if (v18)
            {
              (*(*v18 + 304))(v18, *(v1 + 8), 0, "phonebooksPresent");
            }

            sub_100004A34(v17);
          }
        }
      }

      else
      {
        v12 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I MSISDN file is present", v22, 2u);
        }

        (*(*v3 + 200))(v3, 1);
      }

      (*(*v3 + 240))(v3, *(v1 + 16));
    }

    else
    {
      v13 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v22 = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No phonebook model", v22, 2u);
      }
    }

    if (v24)
    {
      sub_100004A34(v24);
    }
  }

  else
  {
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Invalid object received for phone books present", buf, 2u);
    }
  }

  sub_1001FF3DC(&v21);
  return sub_1000049E0(&v20);
}

void sub_101597DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  sub_100004A34(v14);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1001FF3DC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101597E30(uint64_t **a1)
{
  v1 = *a1;
  v92 = a1;
  v93 = v1;
  if (*(*(v1 + 40) + 49))
  {
    goto LABEL_186;
  }

  v2 = *v1;
  if (!isReal())
  {
    goto LABEL_186;
  }

  v3 = *(v1 + 32);
  if (v3 >= 2)
  {
    if (v3 == 2 || v3 == 6)
    {
      v5 = *(*(v1 + 40) + 52);
      v100[0] = 0;
      v100[1] = 0;
      sub_10006BCA8(v100, v2 + 120, v5);
      if (v100[0])
      {
        memset(buf, 0, sizeof(buf));
        v6 = sub_10006BD2C(v2 + 120, v5);
        v7 = (v6 + 1);
        if (!v6)
        {
          v7 = &kInvalidPersonalityId;
        }

        if (v7[23] < 0)
        {
          sub_100005F2C(buf, *v7, *(v7 + 1));
        }

        else
        {
          v8 = *v7;
          *&buf[16] = *(v7 + 2);
          *buf = v8;
        }

        memset(&v114, 0, sizeof(v114));
        v32 = sub_10112CDBC(buf, &v114);
        if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v114.__r_.__value_.__l.__data_);
        }

        if (v32)
        {
          v33 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v5);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = buf[23];
            if ((buf[23] & 0x80u) != 0)
            {
              v34 = *&buf[8];
            }

            v35 = buf;
            if ((buf[23] & 0x80u) != 0)
            {
              v35 = *buf;
            }

            if (v34)
            {
              v36 = v35;
            }

            else
            {
              v36 = "<invalid>";
            }

            LODWORD(v114.__r_.__value_.__l.__data_) = 136315138;
            *(v114.__r_.__value_.__r.__words + 4) = v36;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I SIM %s is gone from slot, clearing off the Phone Number, Voice Mail Number", &v114, 0xCu);
          }

          memset(&v114, 0, sizeof(v114));
          v37 = sub_10006BD2C(v2 + 120, v5);
          if (v37)
          {
            std::string::operator=((v37 + 1), &v114);
            if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v114.__r_.__value_.__l.__data_);
            }
          }

          v38 = sub_10006BD2C(v2 + 120, v5);
          v39 = v38;
          if (v38)
          {
            v40 = v38[4];
            if (v40)
            {
              (*(*v40 + 256))(v40, 0);
            }

            *(v39 + 5) = 0;
          }

          (*(**(v2 + 88) + 80))(*(v2 + 88), v5);
          v41 = *(v2 + 112);
          if (v41)
          {
            v42 = std::__shared_weak_count::lock(v41);
            if (v42)
            {
              v43 = v42;
              v44 = *(v2 + 104);
              if (v44)
              {
                (*(*v44 + 304))(v44, v5, 0, "handleSimGone_sync");
              }

              sub_100004A34(v43);
            }
          }
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        v22 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v5);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No phonebook model", buf, 2u);
        }
      }

      if (v100[1])
      {
        sub_100004A34(v100[1]);
      }
    }

    goto LABEL_186;
  }

  v9 = *(v1 + 40);
  v10 = *(v9 + 52);
  if (!v3)
  {
    v11 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(v9 + 52));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(v9 + 47);
      v13 = (v12 & 0x80u) != 0;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v9 + 32);
      }

      if (v13)
      {
        v14 = *(v9 + 24);
      }

      else
      {
        v14 = (v9 + 24);
      }

      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I SIM %s is announced on the slot", buf, 0xCu);
    }

    v16 = sub_10006BD2C(v2 + 120, v10);
    v17 = v16;
    if (v16)
    {
      v18 = v16[4];
      if (v18)
      {
        (*(*v18 + 256))(v18, 0);
      }

      *(v17 + 5) = 0;
    }

    (*(**(v2 + 88) + 80))(*(v2 + 88), v10);
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v95 = 0;
  v19 = sub_10006BD2C(v2 + 120, v10);
  v20 = (v19 + 1);
  if (!v19)
  {
    v20 = &kInvalidPersonalityId;
  }

  if (v20[23] < 0)
  {
    sub_100005F2C(__dst, *v20, *(v20 + 1));
  }

  else
  {
    v21 = *v20;
    v95 = *(v20 + 2);
    *__dst = v21;
  }

  if (sub_10112CDBC(__dst, (v9 + 24)))
  {
    v23 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v10);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v9 + 47);
      v25 = (v24 & 0x80u) != 0;
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(v9 + 32);
      }

      if (v25)
      {
        v26 = *(v9 + 24);
      }

      else
      {
        v26 = (v9 + 24);
      }

      if (v24)
      {
        v27 = v26;
      }

      else
      {
        v27 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I SIM %s is added on the slot", buf, 0xCu);
    }

    v28 = sub_10006BD2C(v2 + 120, v10);
    if (v28)
    {
      std::string::operator=((v28 + 1), (v9 + 24));
      v102 = 0;
      v103 = 0;
      sub_10006BCA8(&v102, v2 + 120, v10);
      v91 = v102;
      if (!v102)
      {
        v45 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v10);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "retrieveNetworkAndCopiedPhoneNumber_sync, No phonebook model", buf, 2u);
        }

        goto LABEL_164;
      }

      v100[0] = 0;
      v100[1] = 0;
      v101 = 0;
      v29 = sub_10006BD2C(v2 + 120, v10);
      v30 = (v29 + 1);
      if (!v29)
      {
        v30 = &kInvalidPersonalityId;
      }

      if (v30[23] < 0)
      {
        sub_100005F2C(v100, *v30, *(v30 + 1));
      }

      else
      {
        v31 = *v30;
        v101 = *(v30 + 2);
        *v100 = v31;
      }

      if ((isReal() & 1) == 0)
      {
        __assert_rtn("retrieveNetworkAndCopiedPhoneNumber_sync", "PhonebookHandler.cpp", 1034, "isReal(persona)");
      }

      v99 = 0;
      ServiceMap = Registry::getServiceMap(*(v2 + 56));
      v47 = ServiceMap;
      v49 = v48;
      if (v48 < 0)
      {
        v50 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
        v51 = 5381;
        do
        {
          v49 = v51;
          v52 = *v50++;
          v51 = (33 * v51) ^ v52;
        }

        while (v52);
      }

      std::mutex::lock(ServiceMap);
      *buf = v49;
      v53 = sub_100009510(&v47[1].__m_.__sig, buf);
      if (v53)
      {
        v55 = v53[3];
        v54 = v53[4];
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v47);
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = v10;
          sub_100004A34(v54);
          v56 = 0;
          goto LABEL_95;
        }
      }

      else
      {
        v55 = 0;
      }

      std::mutex::unlock(v47);
      v54 = 0;
      v56 = 1;
LABEL_95:
      (*(*v55 + 24))(&v99, v55, v100, @"CachedPhoneNumber", @"phonebook", 0, 1);
      if ((v56 & 1) == 0)
      {
        sub_100004A34(v54);
      }

      v98 = 0;
      v57 = Registry::getServiceMap(*(v2 + 56));
      v58 = v57;
      v59 = v48;
      if (v48 < 0)
      {
        v60 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
        v61 = 5381;
        do
        {
          v59 = v61;
          v62 = *v60++;
          v61 = (33 * v61) ^ v62;
        }

        while (v62);
      }

      std::mutex::lock(v57);
      *buf = v59;
      v63 = sub_100009510(&v58[1].__m_.__sig, buf);
      if (v63)
      {
        v65 = v63[3];
        v64 = v63[4];
        if (v64)
        {
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v58);
          atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = v10;
          sub_100004A34(v64);
          v66 = 0;
          goto LABEL_105;
        }
      }

      else
      {
        v65 = 0;
      }

      std::mutex::unlock(v58);
      v64 = 0;
      v66 = 1;
LABEL_105:
      (*(*v65 + 24))(&v98, v65, v100, @"CopiedSIMPhoneNumber", @"phonebook", 0, 1);
      if ((v66 & 1) == 0)
      {
        sub_100004A34(v64);
      }

      v97 = 0;
      v67 = Registry::getServiceMap(*(v2 + 56));
      v68 = v67;
      if (v48 < 0)
      {
        v69 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
        v70 = 5381;
        do
        {
          v48 = v70;
          v71 = *v69++;
          v70 = (33 * v70) ^ v71;
        }

        while (v71);
      }

      std::mutex::lock(v67);
      *buf = v48;
      v72 = sub_100009510(&v68[1].__m_.__sig, buf);
      if (v72)
      {
        v74 = v72[3];
        v73 = v72[4];
        if (v73)
        {
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v68);
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v73);
          v75 = 0;
LABEL_115:
          (*(*v74 + 24))(&v97, v74, v100, @"PNRPhoneNumber", @"phonebook", 0, 1);
          if ((v75 & 1) == 0)
          {
            sub_100004A34(v73);
          }

          memset(&v114, 0, sizeof(v114));
          ctu::cf::assign();
          v96 = v114;
          CSIPhoneNumber::CSIPhoneNumber();
          (*(*v91 + 152))(v91, buf);
          if (v113 < 0)
          {
            operator delete(__p);
          }

          if (v111 < 0)
          {
            operator delete(v110);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }

          if (v107 < 0)
          {
            operator delete(v106[0]);
          }

          if (SHIBYTE(v105) < 0)
          {
            operator delete(*&buf[8]);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          v76 = v102;
          memset(&v114, 0, sizeof(v114));
          ctu::cf::assign();
          v96 = v114;
          CSIPhoneNumber::CSIPhoneNumber();
          (*(*v76 + 184))(v76, buf);
          if (v113 < 0)
          {
            operator delete(__p);
          }

          if (v111 < 0)
          {
            operator delete(v110);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }

          if (v107 < 0)
          {
            operator delete(v106[0]);
          }

          if (SHIBYTE(v105) < 0)
          {
            operator delete(*&buf[8]);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          memset(&v114, 0, sizeof(v114));
          ctu::cf::assign();
          v96 = v114;
          CSIPhoneNumber::CSIPhoneNumber();
          (*(*v76 + 168))(v76, buf);
          if (v113 < 0)
          {
            operator delete(__p);
          }

          if (v111 < 0)
          {
            operator delete(v110);
          }

          if (v109 < 0)
          {
            operator delete(v108);
          }

          if (v107 < 0)
          {
            operator delete(v106[0]);
          }

          if (SHIBYTE(v105) < 0)
          {
            operator delete(*&buf[8]);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          v77 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v10);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            v78 = HIBYTE(v101);
            if (v101 < 0)
            {
              v78 = v100[1];
            }

            v79 = v100;
            if (v101 < 0)
            {
              v79 = v100[0];
            }

            if (v78)
            {
              v80 = v79;
            }

            else
            {
              v80 = "<invalid>";
            }

            *buf = 136315906;
            *&buf[4] = v80;
            *&buf[12] = 2112;
            *&buf[14] = v99;
            *&buf[22] = 2112;
            v105 = v98;
            LOWORD(v106[0]) = 2112;
            *(v106 + 2) = v97;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I for personality %s restored phone numbers: cached:'%@' / simcopy:'%@' / pnr:'%@'", buf, 0x2Au);
          }

          sub_10000A1EC(&v97);
          sub_10000A1EC(&v98);
          sub_10000A1EC(&v99);
          if (SHIBYTE(v101) < 0)
          {
            operator delete(v100[0]);
          }

LABEL_164:
          if (v103)
          {
            sub_100004A34(v103);
          }

          if (v91)
          {
            v81 = *(v2 + 112);
            if (v81)
            {
              v82 = std::__shared_weak_count::lock(v81);
              if (v82)
              {
                v83 = v82;
                v84 = *(v2 + 104);
                if (v84)
                {
                  (*(*v84 + 304))(v84, v10, 0, "handleSimAdded_sync");
                }

                sub_100004A34(v83);
              }
            }
          }

          goto LABEL_172;
        }
      }

      else
      {
        v74 = 0;
      }

      std::mutex::unlock(v68);
      v73 = 0;
      v75 = 1;
      goto LABEL_115;
    }
  }

LABEL_172:
  if (v3 == 1)
  {
    v85 = *(*(**(v2 + 48) + 16))(*(v2 + 48), v10);
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      v86 = *(v9 + 47);
      v87 = (v86 & 0x80u) != 0;
      if ((v86 & 0x80u) != 0)
      {
        v86 = *(v9 + 32);
      }

      if (v87)
      {
        v88 = *(v9 + 24);
      }

      else
      {
        v88 = (v9 + 24);
      }

      if (v86)
      {
        v89 = v88;
      }

      else
      {
        v89 = "<invalid>";
      }

      *buf = 136315138;
      *&buf[4] = v89;
      _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#I SIM ready: %s", buf, 0xCu);
    }

    (*(**(v2 + 88) + 72))(*(v2 + 88), v10);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_186:
  sub_101598E40(&v93);
  return sub_1000049E0(&v92);
}

void sub_101598C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  sub_100004A34(v49);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_101598E40(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_101598E40(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

__n128 sub_101598F20(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F503D8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101598F58(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_10159903C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101599090(void *a1)
{
  *a1 = off_101F504A0;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_1015990F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v1 = *(*a1 + 24);

  return v1();
}

uint64_t sub_10159920C(uint64_t a1, const void **a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2;
  if (__PAIR64__(*(a3 + 33), *(a3 + 32)) == 0x100000001)
  {
    v8 = *a4;
    v9 = a4[1];
    if (*a4 != v9)
    {
      v10 = *(a2 + 23);
      if (v10 >= 0)
      {
        v11 = *(a2 + 23);
      }

      else
      {
        v11 = a2[1];
      }

      if (v10 >= 0)
      {
        v12 = a2;
      }

      else
      {
        v12 = *a2;
      }

      while (1)
      {
        v13 = *(v8 + 23);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(v8 + 8);
        }

        if (v13 == v11)
        {
          v15 = v14 >= 0 ? v8 : *v8;
          if (!memcmp(v15, v12, v11))
          {
            break;
          }
        }

        v8 += 24;
        if (v8 == v9)
        {
          goto LABEL_20;
        }
      }
    }

    if (v8 != v9)
    {
      v16 = 1;
      return v16 | (v16 << 8);
    }
  }

LABEL_20:
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  v36 = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, &v36);
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
      goto LABEL_28;
    }
  }

  else
  {
    v25 = 0;
  }

  std::mutex::unlock(v18);
  v24 = 0;
  v26 = 1;
LABEL_28:
  v27 = (*(*v25 + 32))(v25);
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (v27)
  {
    v28 = *a5;
    v29 = a5[1];
    if (*a5 != v29)
    {
      v30 = *(v6 + 23);
      if (v30 >= 0)
      {
        v31 = *(v6 + 23);
      }

      else
      {
        v31 = v6[1];
      }

      if (v30 < 0)
      {
        v6 = *v6;
      }

      while (1)
      {
        v32 = *(v28 + 23);
        v33 = v32;
        if ((v32 & 0x80u) != 0)
        {
          v32 = *(v28 + 8);
        }

        if (v32 == v31)
        {
          v34 = v33 >= 0 ? v28 : *v28;
          if (!memcmp(v34, v6, v31))
          {
            break;
          }
        }

        v28 += 24;
        if (v28 == v29)
        {
          v28 = v29;
          break;
        }
      }
    }

    v16 = v28 != v29;
  }

  else
  {
    v16 = 0;
  }

  return v16 | (v16 << 8);
}

void sub_10159943C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101599460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == *(a3 + 16))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v5 = *(a1 + 24);
    if (!v5)
    {
      operator new();
    }

    __p = 0;
    v24 = 0;
    v25 = 0;
    (*(*v5 + 48))(&__p);
    if (__p == v24)
    {
      (*(**(a1 + 24) + 16))(&v20);
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      sub_10004EFD0(&v20, __p, v24, 0xAAAAAAAAAAAAAAABLL * ((v24 - __p) >> 3));
    }

    *buf = &__p;
    sub_1000087B4(buf);
    v7 = sub_1015990F0(*(a1 + 24));
    v8 = v20;
    v9 = v21;
    if (v20 != v21)
    {
      while (2)
      {
        v10 = *(a3 + 8);
        v11 = *(a3 + 16);
        while (v10 != v11)
        {
          __p = 0;
          v24 = 0;
          v25 = 0;
          sub_101599734(&__p, v8);
          v12 = SHIBYTE(v25);
          if (v25 >= 0)
          {
            v13 = HIBYTE(v25);
          }

          else
          {
            v13 = v24;
          }

          v14 = *(v10 + 23);
          v15 = v14;
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v10 + 8);
          }

          if (v13 == v14)
          {
            v16 = __p;
            v17 = v25 >= 0 ? &__p : __p;
            v18 = v15 >= 0 ? v10 : *v10;
            if (!memcmp(v17, v18, v13))
            {
              if (v12 < 0)
              {
                operator delete(v16);
              }

              v6 = 1;
              goto LABEL_32;
            }
          }

          if (v12 < 0)
          {
            operator delete(__p);
          }

          v10 += 24;
        }

        v8 += 24;
        if (v8 != v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_32:
    __p = &v20;
    sub_1000087B4(&__p);
  }

  return v6 | (v7 << 8);
}

void sub_101599734(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_101FCAD60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCAD60))
  {
    sub_1001C7FB0(&unk_101FCAD68, "^(.*-)?([ \t]+)?([0-9]+)([ \t]+.*)?$", 0);
  }

  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  *__p = 0u;
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) == 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if ((sub_100200C08(v5, &v5[v4], __p, &unk_101FCAD68, 0) & 1) == 0)
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
  v7 = __p[0] + 88;
  if (v6 <= 3)
  {
    v7 = v13 + 8;
  }

  if (*v7 == 1)
  {
    v8 = v6 > 3;
    if (v6 <= 3)
    {
      v9 = &v12 + 8;
    }

    else
    {
      v9 = __p[0] + 72;
    }

    v10 = (__p[0] + 80);
    if (!v8)
    {
      v10 = v13;
    }

    sub_1001CD6B4(a1, *v9, *v10, &(*v10)[-*v9]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

uint64_t sub_1015999BC(uint64_t a1)
{
  if (sub_1015990F0(*(a1 + 24)))
  {
    return 257;
  }

  else
  {
    return 1;
  }
}

void sub_101599AC0(uint64_t a1, void *a2)
{
  *a1 = off_101F445F0;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "sat.app.info");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger(v4, v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  *a1 = off_101F504C8;
  *(a1 + 16) = *a2;
  v5 = a2[1];
  *(a1 + 24) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = a1 + 112;
  *(a1 + 120) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  sub_1011A11E0(a1);
}

void sub_10159A044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  v16 = *(v11 + 192);
  if (v16)
  {
    sub_100004A34(v16);
  }

  a10 = (v11 + 160);
  sub_1000087B4(&a10);
  sub_1000087B4(&a10);
  sub_100246E7C(v13, *(v11 + 112));
  if (*(v11 + 96) == 1)
  {
    a10 = (v11 + 64);
    sub_1000087B4(&a10);
  }

  sub_100F75FA4(&a10);
  v17 = *(v11 + 24);
  if (v17)
  {
    sub_100004A34(v17);
  }

  ctu::OsLogLogger::~OsLogLogger(v12);
  _Unwind_Resume(a1);
}

void sub_10159A108(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v2 = va_arg(va1, void);
  v4 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x10159A0F8);
}

void sub_10159A130(void **a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 4;
    if ((v6 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 3;
    if (v7 >> 3 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_100013D10();
    }

    v10 = (16 * v6);
    v11 = *a2;
    *a2 = 0uLL;
    v12 = *a1;
    v13 = a1[1] - *a1;
    v14 = (16 * v6 - v13);
    *v10 = v11;
    v5 = v10 + 1;
    memcpy(v10 - v13, v12, v13);
    *a1 = v14;
    a1[1] = v5;
    a1[2] = 0;
    if (v12)
    {
      operator delete(v12);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 16;
    *a2 = 0uLL;
  }

  a1[1] = v5;
}

uint64_t sub_10159A234(uint64_t a1)
{
  *a1 = off_101F504C8;
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v5 = (a1 + 160);
  sub_1000087B4(&v5);
  v5 = (a1 + 136);
  sub_1000087B4(&v5);
  sub_100246E7C(a1 + 104, *(a1 + 112));
  if (*(a1 + 96) == 1)
  {
    v5 = (a1 + 64);
    sub_1000087B4(&v5);
  }

  v5 = (a1 + 32);
  sub_100F75FA4(&v5);
  v3 = *(a1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  return a1;
}

void sub_10159A2F8(uint64_t a1)
{
  sub_10159A234(a1);

  operator delete();
}

void sub_10159A330(uint64_t a1)
{
  sub_100008764((a1 + 136));
  sub_100008764((a1 + 160));
  theArray = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v3 = ServiceMap;
  v5 = v4;
  if (v4 < 0)
  {
    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
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
  *buf = v5;
  v9 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
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

  std::mutex::unlock(v3);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 96))(__p, v11, *(a1 + 128), 1, @"SatelliteApps", 0, 0);
  sub_10006DD00(&theArray, __p);
  sub_10000A1EC(__p);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        *type = 0;
        *buf = CFArrayGetValueAtIndex(theArray, i);
        sub_100060DE8(type, buf);
        if (*type)
        {
          __p[0] = 0;
          __p[1] = 0;
          v52 = 0;
          memset(buf, 0, sizeof(buf));
          v56 = 0;
          ctu::cf::assign();
          *__p = *buf;
          v52 = v56;
          v15 = HIBYTE(v56);
          if ((v56 & 0x8000000000000000) != 0)
          {
            v15 = *&buf[8];
          }

          if (v15)
          {
            v16 = *(a1 + 144);
            if (v16 >= *(a1 + 152))
            {
              v20 = sub_10016B30C(a1 + 136, __p);
            }

            else
            {
              if (SHIBYTE(v56) < 0)
              {
                sub_100005F2C(*(a1 + 144), __p[0], *&buf[8]);
              }

              else
              {
                v17 = *__p;
                *(v16 + 16) = v52;
                *v16 = v17;
              }

              v20 = v16 + 24;
              *(a1 + 144) = v16 + 24;
            }

            *(a1 + 144) = v20;
          }

          else
          {
            v19 = *(a1 + 8);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E SatelliteApps contains empty app", buf, 2u);
            }
          }

          if (SHIBYTE(v52) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v18 = *(a1 + 8);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E SatelliteApps does not contain string", buf, 2u);
          }
        }

        sub_100005978(type);
      }
    }
  }

  else
  {
    v21 = *(a1 + 8);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I CB section missed: SatelliteApps", buf, 2u);
    }
  }

  sub_100010250(&theArray);
  v22 = Registry::getServiceMap(*(a1 + 16));
  v23 = v22;
  if (v24 < 0)
  {
    v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
    v26 = 5381;
    do
    {
      v24 = v26;
      v27 = *v25++;
      v26 = (33 * v26) ^ v27;
    }

    while (v27);
  }

  std::mutex::lock(v22);
  *buf = v24;
  v28 = sub_100009510(&v23[1].__m_.__sig, buf);
  if (v28)
  {
    v30 = v28[3];
    v29 = v28[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      v31 = 0;
      goto LABEL_43;
    }
  }

  else
  {
    v30 = 0;
  }

  std::mutex::unlock(v23);
  v29 = 0;
  v31 = 1;
LABEL_43:
  v32 = (*(*v30 + 32))(v30);
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  if (v32)
  {
    theArray = 0;
    v33 = Registry::getServiceMap(*(a1 + 16));
    v34 = v33;
    if (v4 < 0)
    {
      v35 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
      v36 = 5381;
      do
      {
        v4 = v36;
        v37 = *v35++;
        v36 = (33 * v36) ^ v37;
      }

      while (v37);
    }

    std::mutex::lock(v33);
    *buf = v4;
    v38 = sub_100009510(&v34[1].__m_.__sig, buf);
    if (v38)
    {
      v40 = v38[3];
      v39 = v38[4];
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v34);
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v39);
        v41 = 0;
LABEL_54:
        (*(*v40 + 96))(__p, v40, *(a1 + 128), 1, @"SatelliteTestApps", 0, 0);
        sub_10006DD00(&theArray, __p);
        sub_10000A1EC(__p);
        if ((v41 & 1) == 0)
        {
          sub_100004A34(v39);
        }

        if (theArray)
        {
          v42 = CFArrayGetCount(theArray);
          if (v42 >= 1)
          {
            for (j = 0; j != v42; ++j)
            {
              *type = 0;
              *buf = CFArrayGetValueAtIndex(theArray, j);
              sub_100060DE8(type, buf);
              if (*type)
              {
                __p[0] = 0;
                __p[1] = 0;
                v52 = 0;
                memset(buf, 0, sizeof(buf));
                v56 = 0;
                ctu::cf::assign();
                *__p = *buf;
                v52 = v56;
                v44 = HIBYTE(v56);
                if ((v56 & 0x8000000000000000) != 0)
                {
                  v44 = *&buf[8];
                }

                if (v44)
                {
                  v45 = *(a1 + 168);
                  if (v45 >= *(a1 + 176))
                  {
                    v49 = sub_10016B30C(a1 + 160, __p);
                  }

                  else
                  {
                    if (SHIBYTE(v56) < 0)
                    {
                      sub_100005F2C(*(a1 + 168), __p[0], *&buf[8]);
                    }

                    else
                    {
                      v46 = *__p;
                      *(v45 + 16) = v52;
                      *v45 = v46;
                    }

                    v49 = v45 + 24;
                    *(a1 + 168) = v45 + 24;
                  }

                  *(a1 + 168) = v49;
                }

                else
                {
                  v48 = *(a1 + 8);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#E SatelliteTestApps contains empty app", buf, 2u);
                  }
                }

                if (SHIBYTE(v52) < 0)
                {
                  operator delete(__p[0]);
                }
              }

              else
              {
                v47 = *(a1 + 8);
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#E SatelliteTestApps does not contain string", buf, 2u);
                }
              }

              sub_100005978(type);
            }
          }
        }

        else
        {
          v50 = *(a1 + 8);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I CB section missed: SatelliteTestApps", buf, 2u);
          }
        }

        sub_100010250(&theArray);
        return;
      }
    }

    else
    {
      v40 = 0;
    }

    std::mutex::unlock(v34);
    v39 = 0;
    v41 = 1;
    goto LABEL_54;
  }
}

void sub_10159A9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

void sub_10159AA80(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = (a1 + 112);
  if (v1 != (a1 + 112))
  {
    while (1)
    {
      v4 = SlotIdFromPersonalityId();
      v5 = *(a1 + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v1 + 55);
        v7 = (v6 & 0x80u) != 0;
        if ((v6 & 0x80u) != 0)
        {
          v6 = v1[5];
        }

        if (v7)
        {
          v8 = v1[4];
        }

        else
        {
          v8 = (v1 + 4);
        }

        if (v6)
        {
          v9 = v8;
        }

        else
        {
          v9 = "<invalid>";
        }

        v10 = subscriber::asString();
        v11 = asStringBool(*(v1 + 56));
        *buf = 136315650;
        v17 = v9;
        v18 = 2080;
        v19 = v10;
        v20 = 2080;
        v21 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [Personality: %s, simSlot: %s] Satellite support processing: %s", buf, 0x20u);
      }

      if (subscriber::isValidSimSlot() && *(a1 + 128) == v4)
      {
        break;
      }

      v12 = v1[1];
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
          v13 = v1[2];
          v14 = *v13 == v1;
          v1 = v13;
        }

        while (!v14);
      }

      v1 = v13;
      if (v13 == v2)
      {
        return;
      }
    }

    buf[0] = 0;
    v22 = 0;
    sub_10082B670(a1 + 56, buf);
    if (v22 == 1)
    {
      v15 = (&v17 + 4);
      sub_1000087B4(&v15);
    }

    if (*(v1 + 56) == 1)
    {
      sub_100250034(a1 + 56, (v1 + 8));
    }
  }
}

void sub_10159AC64(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10159AC70(uint64_t a1, uint64_t **a2)
{
  v3 = (a1 + 104);
  if (v3 != a2)
  {
    sub_10024FE98(v3, *a2, a2 + 1);
  }

  sub_10159AA80(a1);
}

void sub_10159ACBC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (subscriber::isValidSimSlot())
  {
    *(a1 + 128) = v2;
    sub_10159AA80(a1);

    sub_10159A330(a1);
  }

  else
  {
    v4 = *(a1 + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E wrong SIM: %s", &v5, 0xCu);
    }
  }
}

BOOL sub_10159ADBC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 144);
  if (v2 != v3)
  {
    v4 = *(a2 + 23);
    if (v4 >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      v5 = a2[1];
    }

    if (v4 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    while (1)
    {
      v7 = *(v2 + 23);
      v8 = v7;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 8);
      }

      if (v7 == v5)
      {
        v9 = v8 >= 0 ? v2 : *v2;
        if (!memcmp(v9, v6, v5))
        {
          break;
        }
      }

      v2 += 24;
      if (v2 == v3)
      {
        v2 = v3;
        return v2 != v3;
      }
    }
  }

  return v2 != v3;
}

uint64_t sub_10159AE54(uint64_t a1)
{
  result = *(a1 + 184);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_10159AE84(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 16);
  v6 = (a1 + 8);
  sub_100580908(a1 + 8, *(a1 + 16));
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
  v9 = *a2;
  v7 = (a2 + 1);
  v8 = v9;
  if (v9 != v7)
  {
    v10 = a3 + 1;
    while (1)
    {
      v11 = *(v8 + 55);
      if ((v11 & 0x8000000000000000) != 0)
      {
        v11 = v8[5];
      }

      v12 = *a3;
      v13 = !v11 || v12 == v10;
      if (!v13)
      {
        break;
      }

LABEL_21:
      v17 = v8[1];
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
          v18 = v8[2];
          v13 = *v18 == v8;
          v8 = v18;
        }

        while (!v13);
      }

      v8 = v18;
      if (v18 == v7)
      {
        return;
      }
    }

    while (1)
    {
      if ((*(v12 + 55) & 0x8000000000000000) != 0)
      {
        if (v12[5])
        {
LABEL_13:
          __p = 0uLL;
          v20 = 0;
          sub_101599734(&__p, (v12 + 4));
          v22 = v8 + 4;
          v14 = sub_100580B40(v6, v8 + 4, &unk_101802C98, &v22, &v21);
          sub_100005308(v14 + 7, &__p);
          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p);
          }
        }
      }

      else if (*(v12 + 55))
      {
        goto LABEL_13;
      }

      v15 = v12[1];
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
          v16 = v12[2];
          v13 = *v16 == v12;
          v12 = v16;
        }

        while (!v13);
      }

      v12 = v16;
      if (v16 == v10)
      {
        goto LABEL_21;
      }
    }
  }
}

void sub_10159AFF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10159B00C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I dump: SIM: %s", buf, 0xCu);
    v2 = *(a1 + 8);
  }

  v3 = *(a1 + 96);
  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v4)
    {
      sub_1013E68CC(a1 + 56, buf);
      v5 = v44 >= 0 ? buf : *buf;
      *v39 = 136315138;
      v40 = v5;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I dump: properties: %s", v39, 0xCu);
      if (v44 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I dump: properties: empty", buf, 2u);
  }

  v6 = *(a1 + 104);
  if (v6 != (a1 + 112))
  {
    do
    {
      if (v6[7])
      {
        v7 = *(v6 + 104);
        v8 = *(a1 + 8);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        if (v7)
        {
          if (v9)
          {
            v10 = *(v6 + 55);
            v11 = (v10 & 0x80u) != 0;
            if ((v10 & 0x80u) != 0)
            {
              v10 = v6[5];
            }

            if (v11)
            {
              v12 = v6[4];
            }

            else
            {
              v12 = (v6 + 4);
            }

            if (v10)
            {
              v13 = v12;
            }

            else
            {
              v13 = "<invalid>";
            }

            sub_1013E68CC((v6 + 8), buf);
            v14 = buf;
            if (v44 < 0)
            {
              v14 = *buf;
            }

            *v39 = 136315394;
            v40 = v13;
            v41 = 2080;
            v42 = v14;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I dump: personalityId = %s, properties = %s", v39, 0x16u);
            if (v44 < 0)
            {
              operator delete(*buf);
            }
          }

          goto LABEL_49;
        }

        if (v9)
        {
          v22 = *(v6 + 55);
          v23 = (v22 & 0x80u) != 0;
          if ((v22 & 0x80u) != 0)
          {
            v22 = v6[5];
          }

          if (v23)
          {
            v24 = v6[4];
          }

          else
          {
            v24 = (v6 + 4);
          }

          if (v22)
          {
            v25 = v24;
          }

          else
          {
            v25 = "<invalid>";
          }

          *buf = 136315138;
          *&buf[4] = v25;
          v20 = v8;
          v21 = "#I dump: personalityId = %s, no properties";
LABEL_48:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
        }
      }

      else
      {
        v15 = *(a1 + 8);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(v6 + 55);
          v17 = (v16 & 0x80u) != 0;
          if ((v16 & 0x80u) != 0)
          {
            v16 = v6[5];
          }

          if (v17)
          {
            v18 = v6[4];
          }

          else
          {
            v18 = (v6 + 4);
          }

          if (v16)
          {
            v19 = v18;
          }

          else
          {
            v19 = "<invalid>";
          }

          *buf = 136315138;
          *&buf[4] = v19;
          v20 = v15;
          v21 = "#I dump: personalityId = %s, not allowed";
          goto LABEL_48;
        }
      }

LABEL_49:
      v26 = v6[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v6[2];
          v28 = *v27 == v6;
          v6 = v27;
        }

        while (!v28);
      }

      v6 = v27;
    }

    while (v27 != (a1 + 112));
  }

  v29 = *(a1 + 136);
  for (i = *(a1 + 144); v29 != i; v29 += 3)
  {
    v31 = *(a1 + 8);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v29;
      if (*(v29 + 23) < 0)
      {
        v32 = *v29;
      }

      *buf = 136315138;
      *&buf[4] = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I dump: carrierApp = %s", buf, 0xCu);
    }
  }

  v33 = *(a1 + 160);
  for (j = *(a1 + 168); v33 != j; v33 += 3)
  {
    v35 = *(a1 + 8);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v33;
      if (*(v33 + 23) < 0)
      {
        v36 = *v33;
      }

      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I dump: testApp = %s", buf, 0xCu);
    }
  }

  v37 = *(a1 + 184);
  if (v37)
  {
    (*(*v37 + 32))(v37);
  }

  else
  {
    v38 = *(a1 + 8);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I dump: fAppEntitlementsReader is empty", buf, 2u);
    }
  }
}

uint64_t sub_10159B724@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result + 16;
  v5 = *(result + 16);
  if (!v5)
  {
    goto LABEL_11;
  }

  v7 = result + 16;
  do
  {
    result = sub_1000068BC((v5 + 32), a2);
    if ((result & 0x80u) == 0)
    {
      v7 = v5;
    }

    v5 = *(v5 + ((result >> 4) & 8));
  }

  while (v5);
  if (v7 == v4 || (result = sub_1000068BC(a2, (v7 + 32)), (result & 0x80) != 0))
  {
LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    v8 = *(v7 + 56);
    v9 = *(v7 + 64);

    return sub_10004EFD0(a3, v8, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
  }

  return result;
}

void sub_10159B7FC(void *a1)
{
  sub_101599090(a1);

  operator delete();
}

void sub_10159B838(void *a1)
{
  sub_101599090(a1);

  operator delete();
}

void sub_10159B874(void *a1)
{
  sub_101599090(a1);

  operator delete();
}

void sub_10159B8B0(void *a1)
{
  sub_101599090(a1);

  operator delete();
}

void sub_10159B8EC(void *a1)
{
  sub_101599090(a1);

  operator delete();
}

void sub_10159B928(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10159B960(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10159B990(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10159B9F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10159BA8C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50778;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10159BB28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F507C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10159BBC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10159BC60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10159BDBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10159BDE4(uint64_t a1, Registry **a2, const char *a3, NSObject **a4)
{
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, a3);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = *a4;
  *(a1 + 24) = *a4;
  if (v8)
  {
    dispatch_retain(v8);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(&v13, &v15);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), &v13);
  ctu::OsLogLogger::~OsLogLogger(&v13);
  ctu::OsLogContext::~OsLogContext(&v15);
  v14[0] = off_101E2B528;
  v14[1] = sub_1000A8540;
  v14[3] = v14;
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v9) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v14);
  *a1 = &off_101F508D0;
  v10 = *a2;
  *(a1 + 56) = *a2;
  v11 = a2[1];
  *(a1 + 64) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    v10 = *(a1 + 56);
  }

  *(a1 + 72) = a3;
  Registry::getNotificationSenderFactory(&v15, v10);
  (*(*v15.var0 + 80))(v15.var0);
  if (v15.var1.fRef)
  {
    sub_100004A34(v15.var1.fRef);
  }

  Registry::getNotificationSenderFactory(&v15, *(a1 + 56));
  (*(*v15.var0 + 128))(v15.var0);
  if (v15.var1.fRef)
  {
    sub_100004A34(v15.var1.fRef);
  }

  return a1;
}

void sub_10159C094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000A8744(va);
  operator delete();
}

SettingsNotificationHandlerInterface *sub_10159C1CC(SettingsNotificationHandlerInterface *this)
{
  *this = &off_101F508D0;
  v2 = *(this + 13);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    sub_100004A34(v4);
  }

  SettingsNotificationHandlerInterface::~SettingsNotificationHandlerInterface(this);
  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_10159C27C(SettingsNotificationHandlerInterface *a1)
{
  sub_10159C1CC(a1);

  operator delete();
}

uint64_t sub_10159C2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Sending Call Forwarding Setting Fetch Error", v14, 2u);
  }

  if (a2 == 1)
  {
    v9 = kCTSettingTypeCallForwarding;
    v10 = 1;
    do
    {
      if ((v10 & a4) != 0)
      {
        v14[0] = 0;
        v14[1] = 0;
        v15 = 0;
        v11 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159F9C0(v14, v11, 47, v9, v10);
        sub_10159FADC(v14, a3);
        sub_10159CEF0(v14, v12);
        sub_1000296E0(&v15);
      }

      v10 = (2 * v10);
    }

    while (v10 && v10 < 129);
  }

  return (***(a1 + 80))(*(a1 + 80), a2, a3, a4);
}

uint64_t sub_10159C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Sending Call Forwarding Setting Save Error", v16, 2u);
  }

  if (a2 == 1)
  {
    v11 = kCTSettingTypeCallForwarding;
    v12 = 1;
    do
    {
      if ((v12 & a4) != 0)
      {
        v16[0] = 0;
        v16[1] = 0;
        v17 = 0;
        v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v16, v13, 49, v11, v12, a5);
        sub_10159FADC(v16, a3);
        sub_10159CEF0(v16, v14);
        sub_1000296E0(&v17);
      }

      v12 = (2 * v12);
    }

    while (v12 && v12 < 129);
  }

  return (*(**(a1 + 80) + 8))(*(a1 + 80), a2, a3, a4, a5);
}

void sub_10159C5E8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, CSIPhoneNumber *a7)
{
  v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending Call Forwarding Setting Value Available Notification", buf, 2u);
  }

  if (a2 == 1)
  {
    v12 = kCTSettingTypeCallForwarding;
    v13 = kCTSettingEnabled;
    v14 = &kCFBooleanTrue;
    v15 = kCTSettingCallForwardingNumber;
    v27 = kCTSettingCallForwardingNoReplyTime;
    if (!a5)
    {
      v14 = &kCFBooleanFalse;
    }

    v16 = *v14;
    v17 = 1;
    do
    {
      if ((v17 & a4) != 0)
      {
        v44[0] = 0;
        v44[1] = 0;
        v45 = 0;
        v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        v19 = sub_10159F9C0(v44, v18, 46, v12, v17);
        sub_10159FADC(v19, a3);
        sub_10159CDA0(v44, v13, v16);
        CSIPhoneNumber::getFullNumber(__p, a7);
        if (SHIBYTE(v42) < 0)
        {
          sub_100005F2C(&__dst, __p[0], __p[1]);
        }

        else
        {
          __dst = *__p;
          v48 = v42;
        }

        v46 = 0;
        if (SHIBYTE(v48) < 0)
        {
          sub_100005F2C(buf, __dst, *(&__dst + 1));
        }

        else
        {
          *buf = __dst;
          v50 = v48;
        }

        v51 = 0;
        if (ctu::cf::convert_copy())
        {
          v20 = v46;
          v46 = v51;
          v52[0] = v20;
          sub_100005978(v52);
        }

        if (SHIBYTE(v50) < 0)
        {
          operator delete(*buf);
        }

        v21 = v46;
        v43 = v46;
        v46 = 0;
        sub_100005978(&v46);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(__dst);
        }

        v52[0] = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        sub_10159DBDC(v44, v15, v52);
        sub_10000A1EC(v52);
        sub_100005978(&v43);
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        if (a3 == 2)
        {
          *&__dst = 0;
          *buf = a6;
          v23 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
          if (v23)
          {
            *&__dst = v23;
            *buf = 0;
            sub_100029A48(buf);
            v24 = __dst;
          }

          else
          {
            v24 = 0;
          }

          v51 = v24;
          *&__dst = 0;
          sub_100029A48(&__dst);
          *buf = v24;
          if (v24)
          {
            CFRetain(v24);
          }

          sub_10159DBDC(v44, v27, buf);
          sub_10000A1EC(buf);
          sub_100029A48(&v51);
        }

        sub_10159CEF0(v44, v22);
        sub_1000296E0(&v45);
      }

      v17 = (2 * v17);
    }

    while (v17 && v17 < 129);
  }

  v25 = *(a1 + 80);
  sub_1000AE428(v30, a7);
  (*(*v25 + 16))(v25, a2, a3, a4, a5, a6, v30);
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
    operator delete(v31);
  }
}

uint64_t sub_10159CA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Sending Call Forwarding Setting Value Saved Notification", v16, 2u);
  }

  if (a2 == 1)
  {
    v11 = kCTSettingTypeCallForwarding;
    v12 = 1;
    do
    {
      if ((v12 & a4) != 0)
      {
        v16[0] = 0;
        v16[1] = 0;
        v17 = 0;
        v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v16, v13, 48, v11, v12, a5);
        sub_10159FADC(v16, a3);
        sub_10159CEF0(v16, v14);
        sub_1000296E0(&v17);
      }

      v12 = (2 * v12);
    }

    while (v12 && v12 < 129);
  }

  return (*(**(a1 + 80) + 24))(*(a1 + 80), a2, a3, a4, a5);
}

uint64_t sub_10159CC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sending Unconditional Call Forwarding Notification", v10, 2u);
  }

  if (a2 == 1)
  {
    v10[1] = 13;
    v10[0] = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
    v11 = 0;
    v7 = &kCFBooleanFalse;
    if (a3)
    {
      v7 = &kCFBooleanTrue;
    }

    sub_10159CDA0(v10, kCTIndicatorsUnconditionalCallForwarding, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 32))(*(a1 + 80), a2, a3);
}

void sub_10159CDA0(NSObject ***a1, const void *a2, const void *a3)
{
  if (a3)
  {
    sub_10159F758(theDict, a1);
    CFDictionarySetValue(theDict[0], a2, a3);
    sub_1000296E0(theDict);
  }

  else
  {
    v5 = **a1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(theDict[1]) = 0;
      v9 = 0;
      ctu::cf::assign();
      *__p = 0u;
      v7 = 0;
      LODWORD(theDict[0]) = 136315138;
      *(theDict + 4) = __p;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot add a NULL object to the CF dictionary for key: %s", theDict, 0xCu);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10159CEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10159CEF0(uint64_t a1, const void *a2)
{
  ctu::cf_to_xpc(*(a1 + 16), a2);
  v3 = object;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  xpc_release(object);
  v4 = *(a1 + 8);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v5 = xpc_null_create();
  sub_10002A37C(v4, &object, &v5);
  xpc_release(v5);
  xpc_release(object);
  xpc_release(v3);
}

void sub_10159CFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_10159CFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = kCTSettingTypeCallWaiting;
    v7 = 1;
    do
    {
      if ((v7 & a3) != 0)
      {
        v11[0] = 0;
        v11[1] = 0;
        v12 = 0;
        v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159F9C0(v11, v8, 47, v6, v7);
        sub_10159CEF0(v11, v9);
        sub_1000296E0(&v12);
      }

      v7 = (2 * v7);
    }

    while (v7 && v7 < 129);
  }

  return (*(**(a1 + 80) + 40))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159D110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v8 = kCTSettingTypeCallWaiting;
    v9 = 1;
    do
    {
      if ((v9 & a3) != 0)
      {
        v13[0] = 0;
        v13[1] = 0;
        v14 = 0;
        v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v13, v10, 49, v8, v9, a4);
        sub_10159CEF0(v13, v11);
        sub_1000296E0(&v14);
      }

      v9 = (2 * v9);
    }

    while (v9 && v9 < 129);
  }

  return (*(**(a1 + 80) + 48))(*(a1 + 80), a2, a3, a4);
}

uint64_t sub_10159D238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v8 = kCTSettingTypeCallWaiting;
    v9 = kCTSettingEnabled;
    if (a4)
    {
      v10 = &kCFBooleanTrue;
    }

    else
    {
      v10 = &kCFBooleanFalse;
    }

    v11 = *v10;
    v12 = 1;
    do
    {
      if ((v12 & a3) != 0)
      {
        v16[0] = 0;
        v16[1] = 0;
        v17 = 0;
        v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159F9C0(v16, v13, 46, v8, v12);
        sub_10159CDA0(v16, v9, v11);
        sub_10159CEF0(v16, v14);
        sub_1000296E0(&v17);
      }

      v12 = (2 * v12);
    }

    while (v12 && v12 < 129);
  }

  return (*(**(a1 + 80) + 56))(*(a1 + 80), a2, a3, a4);
}

uint64_t sub_10159D39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v8 = kCTSettingTypeCallWaiting;
    v9 = 1;
    do
    {
      if ((v9 & a3) != 0)
      {
        v13[0] = 0;
        v13[1] = 0;
        v14 = 0;
        v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v13, v10, 48, v8, v9, a4);
        sub_10159CEF0(v13, v11);
        sub_1000296E0(&v14);
      }

      v9 = (2 * v9);
    }

    while (v9 && v9 < 129);
  }

  return (*(**(a1 + 80) + 64))(*(a1 + 80), a2, a3, a4);
}

uint64_t sub_10159D4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v8 = kCTSettingTypeCallBarring;
    v9 = 1;
    do
    {
      if ((v9 & a3) != 0)
      {
        v13[0] = 0;
        v13[1] = 0;
        v14 = 0;
        v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159F9C0(v13, v10, 47, v8, v9);
        sub_10159FCBC(v13, a4);
        sub_10159CEF0(v13, v11);
        sub_1000296E0(&v14);
      }

      v9 = (2 * v9);
    }

    while (v9 && v9 < 129);
  }

  return (*(**(a1 + 80) + 72))(*(a1 + 80), a2, a3, a4);
}

uint64_t sub_10159D5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1)
  {
    v10 = kCTSettingTypeCallBarring;
    v11 = 1;
    do
    {
      if ((v11 & a3) != 0)
      {
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v15, v12, 49, v10, v11, a4);
        sub_10159FCBC(v15, a5);
        sub_10159CEF0(v15, v13);
        sub_1000296E0(&v16);
      }

      v11 = (2 * v11);
    }

    while (v11 && v11 < 129);
  }

  return (*(**(a1 + 80) + 80))(*(a1 + 80), a2, a3, a4, a5);
}

uint64_t sub_10159D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1)
  {
    v10 = kCTSettingTypeCallBarring;
    v11 = kCTSettingEnabled;
    if (a5)
    {
      v12 = &kCFBooleanTrue;
    }

    else
    {
      v12 = &kCFBooleanFalse;
    }

    v13 = *v12;
    v14 = 1;
    do
    {
      if ((v14 & a3) != 0)
      {
        v18[0] = 0;
        v18[1] = 0;
        v19 = 0;
        v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159F9C0(v18, v15, 46, v10, v14);
        sub_10159FCBC(v18, a4);
        sub_10159CDA0(v18, v11, v13);
        sub_10159CEF0(v18, v16);
        sub_1000296E0(&v19);
      }

      v14 = (2 * v14);
    }

    while (v14 && v14 < 129);
  }

  return (*(**(a1 + 80) + 88))(*(a1 + 80), a2, a3, a4, a5);
}

uint64_t sub_10159D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 == 1)
  {
    v10 = kCTSettingTypeCallBarring;
    v11 = 1;
    do
    {
      if ((v11 & a3) != 0)
      {
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
        sub_10159FBCC(v15, v12, 48, v10, v11, a4);
        sub_10159FCBC(v15, a5);
        sub_10159CEF0(v15, v13);
        sub_1000296E0(&v16);
      }

      v11 = (2 * v11);
    }

    while (v11 && v11 < 129);
  }

  return (*(**(a1 + 80) + 96))(*(a1 + 80), a2, a3, a4, a5);
}

uint64_t sub_10159D9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v13, v6, 48, kCTSettingTypeSupplementaryServicePassword);
    v15 = 0;
    valuePtr = a3;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    if (v7)
    {
      v15 = v7;
      valuePtr = 0;
      sub_100029A48(&valuePtr);
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    v15 = 0;
    sub_100029A48(&v15);
    v11 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    sub_10159DBDC(v13, kCTSettingSupplementaryServiceType, &v11);
    sub_10000A1EC(&v11);
    sub_10159CEF0(v13, v9);
    sub_100029A48(&v12);
    sub_1000296E0(&v14);
  }

  return (*(**(a1 + 80) + 104))(*(a1 + 80), a2, a3);
}

void sub_10159DB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_100029A48(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10159DB80(uint64_t a1, uint64_t a2, int a3, const void *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  sub_10159CDA0(a1, kCTSettingType, a4);
  return a1;
}

void sub_10159DBDC(NSObject ***a1, const void *a2, const void **a3)
{
  if (*a3)
  {
    sub_10159F758(theDict, a1);
    CFDictionarySetValue(theDict[0], a2, *a3);
    sub_1000296E0(theDict);
  }

  else
  {
    v5 = **a1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      HIDWORD(theDict[1]) = 0;
      v9 = 0;
      ctu::cf::assign();
      *__p = 0u;
      v7 = 0;
      LODWORD(theDict[0]) = 136315138;
      *(theDict + 4) = __p;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Cannot add a invalid object to the CF dictionary for key: %s", theDict, 0xCu);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10159DCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10159DD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v13, v6, 49, kCTSettingTypeSupplementaryServicePassword);
    v15 = 0;
    valuePtr = a3;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
    if (v7)
    {
      v15 = v7;
      valuePtr = 0;
      sub_100029A48(&valuePtr);
      v8 = v15;
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    v15 = 0;
    sub_100029A48(&v15);
    v11 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    sub_10159DBDC(v13, kCTSettingSupplementaryServiceType, &v11);
    sub_10000A1EC(&v11);
    sub_10159CEF0(v13, v9);
    sub_100029A48(&v12);
    sub_1000296E0(&v14);
  }

  return (*(**(a1 + 80) + 112))(*(a1 + 80), a2, a3);
}

void sub_10159DE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_100029A48(va);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10159DECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v14, v8, 46, kCTSettingTypeCallingLineIdRestriction);
    v9 = &kCTSettingCallingLineIdRestrictionDisabled;
    v10 = &kCTSettingCallingLineIdRestrictionEnabled;
    if (a3 != 1)
    {
      v10 = &kCTSettingCallingLineIdRestrictionUnknown;
    }

    if (a3)
    {
      v9 = v10;
    }

    sub_10159CDA0(v14, kCTSettingCallingLineIdRestriction, *v9);
    if (a4)
    {
      v12 = &kCTSettingCallingLineIdRestrictionModifiable;
      if (a4 != 1)
      {
        v12 = &kCTSettingCallingLineIdRestrictionNotModifiable;
      }

      sub_10159CDA0(v14, kCTSettingCallingLineIdRestrictionModification, *v12);
    }

    sub_10159CEF0(v14, v11);
    sub_1000296E0(&v15);
  }

  return (*(**(a1 + 80) + 120))(*(a1 + 80), a2, a3, a4);
}

void sub_10159E020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10159E03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v10, v6, 47, kCTSettingTypeCallingLineIdRestriction);
    if (a3)
    {
      v8 = &kCTSettingCallingLineIdRestrictionModifiable;
      if (a3 != 1)
      {
        v8 = &kCTSettingCallingLineIdRestrictionNotModifiable;
      }

      sub_10159CDA0(v10, kCTSettingCallingLineIdRestrictionModification, *v8);
    }

    sub_10159CEF0(v10, v7);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 128))(*(a1 + 80), a2, a3);
}

void sub_10159E140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10159E15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159E244(v9, v6, 49, kCTSettingTypeCallingLineIdRestriction, a3);
    sub_10159CEF0(v9, v7);
    sub_1000296E0(&v10);
  }

  return (*(**(a1 + 80) + 136))(*(a1 + 80), a2, a3);
}

NSObject ***sub_10159E244(NSObject ***a1, NSObject **a2, int a3, const void *a4, unsigned int a5)
{
  sub_10159DB80(a1, a2, a3, a4);
  v8 = *a2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = sub_100FE7CB4(a5);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Adding MMI Procedure %s", &v11, 0xCu);
  }

  v9 = sub_100FE7CD8(a5);
  sub_10159CDA0(a1, kCTSettingMMIProcedure, v9);
  return a1;
}

uint64_t sub_10159E334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159E244(v9, v6, 48, kCTSettingTypeCallingLineIdRestriction, a3);
    sub_10159CEF0(v9, v7);
    sub_1000296E0(&v10);
  }

  return (*(**(a1 + 80) + 144))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159E41C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v7, v4, 50, kCTSettingTypeCallingLineIdRestriction);
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 152))(*(a1 + 80), a2);
}

uint64_t sub_10159E4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v11, v6, 46, kCTSettingTypeConnectedLineIdRestriction);
    v7 = &kCTSettingConnectedLineIdRestrictionNotAvailable;
    v8 = &kCTSettingConnectedLineIdRestrictionAvailable;
    if (a3 != 1)
    {
      v8 = &kCTSettingConnectedLineIdRestrictionUnknown;
    }

    if (a3)
    {
      v7 = v8;
    }

    sub_10159CDA0(v11, kCTSettingConnectedLineIdRestriction, *v7);
    sub_10159CEF0(v11, v9);
    sub_1000296E0(&v12);
  }

  return (*(**(a1 + 80) + 160))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159E628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = &kCTSettingTypeConnectedLinePresentation;
    if (a3)
    {
      v7 = &kCTSettingTypeCallingLinePresentation;
    }

    sub_10159DB80(v10, v6, 47, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 168))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159E71C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v7, v4, 47, kCTSettingTypeConnectedLineIdRestriction);
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 176))(*(a1 + 80), a2);
}

uint64_t sub_10159E7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v10, v6, 46, kCTSettingTypeConnectedLinePresentation);
    if (a3 > 2)
    {
      v7 = &kCTSettingConnectedLinePresentationUnknown;
    }

    else
    {
      v7 = *(&off_101F50BA0 + a3);
    }

    sub_10159CDA0(v10, kCTSettingConnectedLinePresentation, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 184))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159E920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v10, v6, 46, kCTSettingTypeCallingLinePresentation);
    if (a3 > 2)
    {
      v7 = &kCTSettingCallingLinePresentationUnknown;
    }

    else
    {
      v7 = *(&off_101F50BB8 + a3);
    }

    sub_10159CDA0(v10, kCTSettingCallingLinePresentation, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 192))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159EA48(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v7, v4, 49, kCTSettingTypeCallingLinePresentation);
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 208))(*(a1 + 80), a2);
}

uint64_t sub_10159EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v10, v6, 48, kCTSettingTypeCallingLinePresentation);
    if (a3 > 2)
    {
      v7 = &kCTSettingCallingLinePresentationUnknown;
    }

    else
    {
      v7 = *(&off_101F50BB8 + a3);
    }

    sub_10159CDA0(v10, kCTSettingCallingLinePresentation, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 80) + 200))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159EC4C(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v7[0] = 0;
    v7[1] = 0;
    v8 = 0;
    v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v7, v4, 47, kCTSettingTypeCallingNamePresentation);
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 216))(*(a1 + 80), a2);
}

uint64_t sub_10159ED28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    sub_10159DB80(v11, v6, 46, kCTSettingTypeCallingNamePresentation);
    if (a3 == 2)
    {
      v8 = &kCTSettingCallingNamePresentationUnknown;
    }

    else if (a3 == 1)
    {
      v8 = &kCTSettingCallingNamePresentationEnabled;
    }

    else
    {
      v7 = 0;
      if (a3)
      {
LABEL_9:
        sub_10159CDA0(v11, kCTSettingCallingNamePresentation, v7);
        sub_10159CEF0(v11, v9);
        sub_1000296E0(&v12);
        return (*(**(a1 + 80) + 224))(*(a1 + 80), a2, a3);
      }

      v8 = &kCTSettingCallingNamePresentationDisabled;
    }

    v7 = *v8;
    goto LABEL_9;
  }

  return (*(**(a1 + 80) + 224))(*(a1 + 80), a2, a3);
}

uint64_t sub_10159EE68(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[1] = 30;
    v6[0] = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = 0;
    sub_10159CEF0(v6, v4);
    sub_1000296E0(&v7);
  }

  return (*(**(a1 + 80) + 240))(*(a1 + 80), a2);
}

uint64_t sub_10159EF30(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[1] = 31;
    v6[0] = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = 0;
    sub_10159CEF0(v6, v4);
    sub_1000296E0(&v7);
  }

  return (*(**(a1 + 80) + 248))(*(a1 + 80), a2);
}

uint64_t sub_10159EFF8(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[1] = 32;
    v6[0] = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = 0;
    sub_10159CEF0(v6, v4);
    sub_1000296E0(&v7);
  }

  return (*(**(a1 + 80) + 256))(*(a1 + 80), a2);
}

uint64_t sub_10159F0C8(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[1] = 33;
    v6[0] = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = 0;
    sub_10159CEF0(v6, v4);
    sub_1000296E0(&v7);
  }

  return (*(**(a1 + 80) + 264))(*(a1 + 80), a2);
}

uint64_t sub_10159F198(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending sendPhoneNumberAvailable", v7, 2u);
  }

  if (a2 == 1)
  {
    v7[1] = 110;
    v7[0] = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
    v8 = 0;
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 272))(*(a1 + 80), a2);
}

uint64_t sub_10159F2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10[0]) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sending sendPhoneNumberRegistrationState", v10, 2u);
  }

  if (a2 == 1)
  {
    v10[1] = 109;
    v10[0] = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
    v11 = 0;
    v7 = &kCFBooleanFalse;
    if (a3)
    {
      v7 = &kCFBooleanTrue;
    }

    sub_10159CDA0(v10, kCTPhoneNumberRegistrationStateRegisteredKey, *v7);
    sub_10159CEF0(v10, v8);
    sub_1000296E0(&v11);
  }

  return (*(**(a1 + 96) + 32))(*(a1 + 96), a2, a3);
}

uint64_t sub_10159F438(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending sendPhoneNumberChanged", v7, 2u);
  }

  if (a2 == 1)
  {
    v7[1] = 76;
    v7[0] = (*(**(a1 + 48) + 16))(*(a1 + 48), 1);
    v8 = 0;
    sub_10159CEF0(v7, v5);
    sub_1000296E0(&v8);
  }

  return (*(**(a1 + 80) + 280))(*(a1 + 80), a2);
}

uint64_t sub_10159F570(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v6[1] = 99;
    v6[0] = (*(**(a1 + 48) + 16))(*(a1 + 48));
    v7 = 0;
    sub_10159CEF0(v6, v4);
    sub_1000296E0(&v7);
  }

  return (*(**(a1 + 80) + 232))(*(a1 + 80), a2);
}

void sub_10159F73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10159F758(const void **a1, uint64_t a2)
{
  v3 = (a2 + 16);
  if (!*(a2 + 16))
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v5 = *v3;
    *v3 = Mutable;
    v7 = v5;
    sub_1000296E0(&v7);
  }

  return sub_100029714(a1, v3);
}

void sub_10159F89C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10159F970);
  __cxa_rethrow();
}

void sub_10159F8DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10159F930(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10159F970(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

NSObject ***sub_10159F9C0(NSObject ***a1, NSObject **a2, int a3, const void *a4, std::string *a5)
{
  sub_10159DB80(a1, a2, a3, a4);
  v8 = *a2;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    sub_100FE7D50(a5, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v14 = p_p;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Adding call class %s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v10 = sub_100FE7E6C(a5);
  sub_10159CDA0(a1, kCTSettingCallClass, v10);
  return a1;
}

void sub_10159FADC(NSObject ***a1, unsigned int a2)
{
  v4 = **a1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = sub_100FE7EFC(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Adding Call Forwarding Reason %s", &v6, 0xCu);
  }

  if (a2 - 1 > 4)
  {
    v5 = &kCTSettingCallForwardingReasonUnconditional;
  }

  else
  {
    v5 = *(&off_101F50BD0 + a2 - 1);
  }

  sub_10159CDA0(a1, kCTSettingCallForwardingReason, *v5);
}

NSObject ***sub_10159FBCC(NSObject ***a1, NSObject **a2, int a3, const void *a4, std::string *a5, unsigned int a6)
{
  sub_10159F9C0(a1, a2, a3, a4, a5);
  v9 = *a2;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315138;
    v13 = sub_100FE7CB4(a6);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Adding MMI Procedure %s", &v12, 0xCu);
  }

  v10 = sub_100FE7CD8(a6);
  sub_10159CDA0(a1, kCTSettingMMIProcedure, v10);
  return a1;
}

void sub_10159FCBC(NSObject ***a1, unsigned int a2)
{
  v4 = **a1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = sub_100FE7F20(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Adding Call Barring Type %s", &v7, 0xCu);
  }

  v5 = kCTSettingCallBarringFacility;
  v6 = sub_100FE7F44(a2);
  sub_10159CDA0(a1, v5, v6);
}

void sub_10159FD94(int a1, NSObject **a2, NSObject **a3)
{
  if (objc_opt_class())
  {
    if (!*a2)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      v7 = global_queue;
      if (global_queue)
      {
        dispatch_retain(global_queue);
        v8 = *a2;
        *a2 = v7;
        if (v8)
        {
          dispatch_release(v8);
        }
      }

      else
      {
        *a2 = 0;
      }
    }

    operator new();
  }

  v5 = *a3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No SystemHealthManager!", v9, 2u);
  }
}

void sub_10159FED0(uint64_t *a1, uint64_t a2)
{
  v3 = objc_opt_new();
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10159FFB8;
  v8 = &unk_101F50BF8;
  v4 = *a1;
  v9 = a1[1];
  [v3 postComponentStatusEventFor:6 status:_NSConcreteStackBlock withReply:{3221225472, sub_10159FFB8, &unk_101F50BF8, v9, v4}];

  operator delete();
}

void sub_10159FFB8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *v6;
    v8 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        v9 = *(a1 + 40);
        v10 = "Fail";
        v16 = 134218498;
        if (a2)
        {
          v10 = "Sucess";
        }

        v17 = v9;
        v18 = 2080;
        v19 = v10;
        v20 = 2112;
        v21 = v5;
        v11 = "#I SystemHealth post component status[%lld]: %s Error: %@";
        v12 = v7;
        v13 = 32;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, &v16, v13);
      }
    }

    else if (v8)
    {
      v14 = "Fail";
      v15 = *(a1 + 40);
      if (a2)
      {
        v14 = "Sucess";
      }

      v16 = 134218242;
      v17 = v15;
      v18 = 2080;
      v19 = v14;
      v11 = "#I SystemHealth post component status[%lld]: %s";
      v12 = v7;
      v13 = 22;
      goto LABEL_11;
    }
  }
}

uint64_t sub_1015A0360(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1015A0378(void *a1)
{
  v2 = [WeaLocationModule alloc];
  v3 = a1[6];
  v9 = a1[5];
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[7];
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = [(WeaLocationModule *)v2 initWithDelegate:&v9 withQueue:&object];
  v6 = *(a1[4] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1015A0414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A0438(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  a1[7] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void sub_1015A0468(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1015A0978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A0BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A0DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A0FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A1228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A1440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A1658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015A1AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, void **a23)
{
  a23 = &a20;
  sub_1000087B4(&a23);
  _Unwind_Resume(a1);
}

void sub_1015A1BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_100004A34(v10);

  _Unwind_Resume(a1);
}

void sub_1015A1D74(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F50C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015A1DD0()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(sub_10020A86C, &qword_101FCADB0, &_mh_execute_header);

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1015A1E2C(uint64_t a1)
{
  *a1 = off_101F50CC0;
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
    notify_cancel(*(a1 + 56));
    *(a1 + 56) = -1;
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1015A1EA4(uint64_t a1)
{
  sub_1015A1E2C(a1);

  operator delete();
}

uint64_t sub_1015A1EDC(uint64_t a1)
{
  *a1 = off_101F50CE0;
  v2 = *(a1 + 72);
  if (v2)
  {
    [v2 invalidate];
  }

  v6 = (a1 + 232);
  sub_1000087B4(&v6);
  sub_1008A1148(a1 + 200);
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_1015A4FC8(a1 + 96);
  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1015A1FA8(uint64_t a1)
{
  sub_1015A1EDC(a1);

  operator delete();
}

void *sub_1015A1FE0(void *a1)
{
  *a1 = off_101F50D00;
  sub_1015A2030(a1);
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1015A2030(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  if (*(a1 + 24) == 1)
  {
    *(a1 + 24) = 0;
    v3 = *(a1 + 8);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1015A5048;
    v9[3] = &unk_101E26008;
    v9[4] = v3;
    v4 = v3[2];
    if (!v4 || (v5 = v3[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
    {
      sub_100013CC4();
    }

    v7 = v6;
    v8 = v3[3];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_10000500C;
    block[3] = &unk_101F50FF8;
    block[5] = v5;
    v11 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    block[4] = v9;
    dispatch_async(v8, block);
    if (v11)
    {
      sub_100004A34(v11);
    }

    sub_100004A34(v7);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1015A2170(void *a1)
{
  sub_1015A1FE0(a1);

  operator delete();
}

void sub_1015A22C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::OsLogContext::~OsLogContext(va);
  if (*(v11 - 24))
  {
    dispatch_release(*(v11 - 24));
  }

  _Unwind_Resume(a1);
}

void sub_1015A269C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 96);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A26BC(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = (v3 + 32);
  v5 = *(v3 + 24);
  if (v5 == (v3 + 32))
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a1 + 32);
      if (v7)
      {
        objc_msgSend_getLogContext(v7, a2);
        v8 = *&buf[8];
      }

      else
      {
        v8 = 0;
        *buf = 0;
        *&buf[8] = 0;
      }

      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v5 + 4;
        if (*(v5 + 55) < 0)
        {
          v9 = *v9;
        }

        v10 = *(v5 + 14);
        *buf = 136446466;
        *&buf[4] = v9;
        *&buf[12] = 2048;
        *&buf[14] = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "connectedServices[%{public}s]: %lu", buf, 0x16u);
      }

      v11 = *(v5 + 14);
      if ((v11 & 0x1000) != 0)
      {
        break;
      }

      v12 = v5[1];
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
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v6 |= (v11 & 0x1000) >> 12;
      v5 = v13;
      if (v13 == v4)
      {
        goto LABEL_20;
      }
    }

    LOBYTE(v6) = 1;
  }

LABEL_20:
  pthread_mutex_lock(&stru_101FB9CA8);
  *(*(a1 + 32) + 8) = v6 & 1;
  pthread_mutex_unlock(&stru_101FB9CA8);
  v15 = *(a1 + 32);
  if (v15)
  {
    objc_msgSend_getLogContext(v15);
    v16 = *&buf[8];
  }

  else
  {
    v16 = 0;
    *buf = 0;
    *&buf[8] = 0;
  }

  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6 & 1;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_tetheringConnected: %d", buf, 8u);
  }
}

void sub_1015A28DC(uint64_t a1, void *a2)
{
  if (a2 && [a2 identifier])
  {
    [a2 identifier];
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = 0u;
    v10 = 0;
    v4 = [a2 connectedServices];
    v5 = *(a1 + 32);
    if (v5)
    {
      objc_msgSend_getLogContext(v5);
      v6 = *&buf[8];
    }

    else
    {
      v6 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __p;
      if (v10 < 0)
      {
        v7 = __p[0];
      }

      *buf = 136446466;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "found[%{public}s]: %lu", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    *buf = __p;
    *(sub_100F15E10((v8 + 24), __p, &unk_101802C98, buf, &v11) + 14) = v4;
    (*(*(a1 + 40) + 16))();
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1015A2A68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A2A9C(uint64_t a1, void *a2)
{
  if (a2 && [a2 identifier])
  {
    [a2 identifier];
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = 0u;
    v20 = 0;
    v4 = [a2 connectedServices];
    v5 = *(a1 + 32);
    if (v5)
    {
      objc_msgSend_getLogContext(v5);
      v6 = *&buf[8];
    }

    else
    {
      v6 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __p;
      if (v20 < 0)
      {
        v7 = __p[0];
      }

      *buf = 136446466;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "lost[%{public}s]: %lu", buf, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = (v8 + 24);
    v10 = v8 + 32;
    v11 = *(v8 + 32);
    if (v11)
    {
      v12 = v8 + 32;
      do
      {
        v13 = sub_1000068BC((v11 + 32), __p);
        if ((v13 & 0x80u) == 0)
        {
          v12 = v11;
        }

        v11 = *(v11 + ((v13 >> 4) & 8));
      }

      while (v11);
      if (v12 != v10 && (sub_1000068BC(__p, (v12 + 32)) & 0x80) == 0)
      {
        v14 = *(v12 + 8);
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
          v16 = v12;
          do
          {
            v15 = v16[2];
            v17 = *v15 == v16;
            v16 = v15;
          }

          while (!v17);
        }

        if (*v9 == v12)
        {
          *v9 = v15;
        }

        v18 = v9[1];
        --v9[2];
        sub_100018288(v18, v12);
        if (*(v12 + 55) < 0)
        {
          operator delete(*(v12 + 32));
        }

        operator delete(v12);
      }
    }

    (*(*(a1 + 40) + 16))();
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1015A2CC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A2CFC(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_msgSend_getLogContext(v2, a2);
    v3 = v5;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  ctu::OsLogContext::~OsLogContext(&v4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v4) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidated", &v4, 2u);
  }
}

void sub_1015A2D80(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_getLogContext(v3);
    v4 = *(&v5 + 1);
  }

  else
  {
    v4 = 0;
    v5 = 0uLL;
  }

  ctu::OsLogContext::~OsLogContext(&v5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v5) = 138543362;
    *(&v5 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "activateWithCompletion error: %{public}@", &v5, 0xCu);
  }
}

void sub_1015A2F18(uint64_t a1)
{
  *a1 = off_101F50D48;
  v7 = (a1 + 136);
  sub_1000B2AF8(&v7);
  v2 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_1012EED48(a1);
}

void sub_1015A2FFC(uint64_t a1)
{
  sub_1015A2F18(a1);

  operator delete();
}

void sub_1015A303C(uint64_t a1)
{
  if ((*(a1 + 128) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 80);
    if ((*(v3 + 48) & 1) == 0)
    {
      handler = _NSConcreteStackBlock;
      v34 = 3221225472;
      v35 = sub_10007B170;
      v36 = &unk_101E7DAD8;
      v37 = v3;
      if (notify_register_dispatch(kSBSLockStateNotifyKey, (v3 + 56), *(v3 + 24), &handler))
      {
        v4 = *(v3 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v26) = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N ScreenLockObserver: failed to register for lock state notification", &v26, 2u);
        }

        *(v3 + 56) = -1;
      }

      else
      {
        v5 = *(v3 + 56);
        v26 = 0;
        notify_get_state(v5, &v26);
        byte_101FCADB8 = v26 != 0;
        *(v3 + 48) = 1;
      }
    }

    v6 = *(a1 + 96);
    v7 = objc_autoreleasePoolPush();
    if ((*(v6 + 24) & 1) == 0)
    {
      v8 = *(v6 + 8);
      v26 = _NSConcreteStackBlock;
      v27 = 3221225472;
      v28 = sub_1015A59EC;
      v29 = &unk_101E26008;
      v30 = v8;
      v9 = v8[2];
      if (!v9 || (v10 = v8[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
      {
        sub_100013CC4();
      }

      v12 = v11;
      v13 = v8[3];
      handler = _NSConcreteStackBlock;
      v34 = 3321888768;
      v35 = sub_10000500C;
      v36 = &unk_101F50FF8;
      v38 = v10;
      v39 = v12;
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = &v26;
      dispatch_async(v13, &handler);
      if (v39)
      {
        sub_100004A34(v39);
      }

      sub_100004A34(v12);
      *(v6 + 24) = 1;
    }

    objc_autoreleasePoolPop(v7);
    v14 = *(a1 + 104);
    if ((*(v14 + 41) & 1) == 0)
    {
      v15 = *(v14 + 8);
      if (!v15 || (v16 = *v14, (v17 = std::__shared_weak_count::lock(v15)) == 0))
      {
        sub_100013CC4();
      }

      v18 = v17;
      p_shared_weak_owners = &v17->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v26 = _NSConcreteStackBlock;
      v27 = 3321888768;
      v28 = sub_1015A5B44;
      v29 = &unk_101F51288;
      v30 = v14;
      v31 = v16;
      v32 = v18;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      *(v14 + 41) = 1;
      *(v14 + 48) = tcp_connection_fallback_watcher_create();
      v20 = *(v14 + 8);
      if (!v20 || (v21 = *v14, (v22 = std::__shared_weak_count::lock(v20)) == 0))
      {
        sub_100013CC4();
      }

      v23 = v22;
      v24 = *(v14 + 16);
      handler = _NSConcreteStackBlock;
      v34 = 3321888768;
      v35 = sub_1015A5C84;
      v36 = &unk_101F512C0;
      v38 = v21;
      v39 = v23;
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v37 = &v26;
      dispatch_async(v24, &handler);
      if (v39)
      {
        sub_100004A34(v39);
      }

      sub_100004A34(v23);
      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
      }

      std::__shared_weak_count::__release_weak(v18);
    }

    *(a1 + 128) = 1;
    objc_autoreleasePoolPop(v2);
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1015A3624;
    v29 = &unk_101E26008;
    v30 = a1;
    v40 = 0;
    v41 = 0;
    sub_100004AA0(&v40, (a1 + 8));
    v25 = *(a1 + 24);
    handler = _NSConcreteStackBlock;
    v34 = 3321888768;
    v35 = sub_1015A5CE8;
    v36 = &unk_101F512F8;
    v38 = v40;
    v39 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = &v26;
    dispatch_async(v25, &handler);
    if (v39)
    {
      sub_100004A34(v39);
    }

    if (v41)
    {
      sub_100004A34(v41);
    }
  }
}

void sub_1015A34AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  std::__shared_weak_count::__release_weak(v15);
  _Unwind_Resume(a1);
}

void sub_1015A34D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1 || (v2 = std::__shared_weak_count::lock(v1)) == 0)
  {
    sub_100013CC4();
  }

  v3 = v2;
  p_shared_weak_owners = &v2->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v2);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  SBSRegisterDisplayIdentifiersChangedBlock();
  std::__shared_weak_count::__release_weak(v3);
  std::__shared_weak_count::__release_weak(v3);
}

void sub_1015A35A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_1015A35C8(uint64_t result, uint64_t a2)
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

void sub_1015A35E4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

id sub_1015A35F4()
{
  v0 = +[BluetoothController sharedInstance];

  return [(BluetoothController *)v0 startWatchingForDevices];
}

void sub_1015A3624(uint64_t a1)
{
  v1 = *(a1 + 32);
  Registry::createRestModuleOneTimeUseConnection(&v2, *(v1 + 48));
  ctu::RestModule::connect();
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100118F6C(v1 + 136, v1 + 64);
}

void sub_1015A367C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A36A0(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    SBSRegisterDisplayIdentifiersChangedBlock();
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 80);
    if (*(v3 + 48) == 1)
    {
      *(v3 + 48) = 0;
      notify_cancel(*(v3 + 56));
      *(v3 + 56) = -1;
    }

    sub_1015A2030(*(a1 + 96));
    v4 = *(a1 + 104);
    if (*(v4 + 41) == 1)
    {
      *(v4 + 41) = 0;
      if (*(v4 + 48))
      {
        tcp_connection_fallback_watcher_destroy();
      }

      *(v4 + 48) = 0;
    }

    [+[BluetoothController sharedInstance](BluetoothController stopWatchingForDevices];
    *(a1 + 128) = 0;
    objc_autoreleasePoolPop(v2);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1015A3694;
    v6[3] = &unk_101E26008;
    v6[4] = a1;
    v9 = 0;
    v10 = 0;
    sub_100004AA0(&v9, (a1 + 8));
    v5 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3321888768;
    block[2] = sub_1015A5CE8;
    block[3] = &unk_101F512F8;
    block[5] = v9;
    v8 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v6;
    dispatch_async(v5, block);
    if (v8)
    {
      sub_100004A34(v8);
    }

    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_1015A383C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (*(v3 + 24) == 1)
  {
    v4 = *(v3 + 8);
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v5 = *(v4 + 72);
    if (v5)
    {
      context = objc_autoreleasePoolPush();
      v6 = [v5 currentLayout];
      if (v6)
      {
        v7 = [v6 elements];
        v8 = v7;
        if (v7)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v9)
          {
            v10 = *v22;
            v18 = a2;
            do
            {
              for (i = 0; i != v9; i = i + 1)
              {
                if (*v22 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                v12 = *(*(&v21 + 1) + 8 * i);
                if ([v12 bundleIdentifier])
                {
                  __p[0] = 0;
                  __p[1] = 0;
                  v20 = 0;
                  memset(buf, 0, sizeof(buf));
                  ctu::cf::assign();
                  *__p = *buf;
                  v20 = *&buf[16];
                  v13 = *(v4 + 40);
                  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
                  {
                    if (v20 >= 0)
                    {
                      v14 = __p;
                    }

                    else
                    {
                      v14 = __p[0];
                    }

                    v15 = [v12 isUIApplicationElement];
                    v16 = [v12 hasKeyboardFocus];
                    *buf = 136315906;
                    *&buf[4] = "displayApps";
                    *&buf[12] = 2080;
                    *&buf[14] = v14;
                    *&buf[22] = 1024;
                    v26 = v15;
                    v27 = 1024;
                    v28 = v16;
                    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: app %s (UIApplicationElement %d hasKeyboardFocus %d)", buf, 0x22u);
                    a2 = v18;
                  }

                  if ([v12 isUIApplicationElement])
                  {
                    sub_100005308(a2, __p);
                  }

                  if (SHIBYTE(v20) < 0)
                  {
                    operator delete(__p[0]);
                  }
                }
              }

              v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v9);
          }
        }
      }

      objc_autoreleasePoolPop(context);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1015A3A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015A3AF4(uint64_t a1)
{
  v1 = *(a1 + 104);
  pthread_mutex_lock(&stru_101FB9D28);
  v2 = *(v1 + 40);
  pthread_mutex_unlock(&stru_101FB9D28);
  return v2;
}

BOOL sub_1015A3B34(uint64_t a1)
{
  v1 = *(a1 + 132);
  if (v1 < 0)
  {
    keyExistsAndHasValidFormat = 0;
    if (CFPreferencesGetAppBooleanValue(@"ShowRATIndicator", kCarrier1BundleId, &keyExistsAndHasValidFormat))
    {
      v3 = 1;
    }

    else
    {
      v3 = keyExistsAndHasValidFormat == 0;
    }

    v1 = !v3;
    *(a1 + 132) = v1;
  }

  return v1 != 0;
}

BOOL sub_1015A3BA4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [+[BluetoothController sharedInstance](BluetoothController tetheringConnected];
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t sub_1015A3BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  if (*(v2 + 24) == 1)
  {
    return sub_100005574(*(v2 + 8), a2, 0);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015A3C18(uint64_t a1)
{
  v1 = *(*(a1 + 96) + 8);
  pthread_mutex_lock(&stru_101FB9CE8);
  v2 = *(v1 + 64);
  pthread_mutex_unlock(&stru_101FB9CE8);
  return v2;
}

uint64_t sub_1015A3C5C(uint64_t a1)
{
  v1 = *(*(a1 + 96) + 8);
  pthread_mutex_lock(&stru_101FB9CE8);
  v2 = *(v1 + 68);
  pthread_mutex_unlock(&stru_101FB9CE8);
  return v2;
}

uint64_t sub_1015A3CA0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1015A5CC0;
  v5[3] = &unk_101ED7468;
  v5[4] = &v6;
  v5[5] = v1;
  v10 = v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1015A5CD4;
  block[3] = &unk_101E26940;
  block[4] = v1 + 8;
  block[5] = &v10;
  v2 = *(v1 + 24);
  if (*(v1 + 32))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }

  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_1015A3DA0(uint64_t a1, uint64_t *a2)
{
  ServiceMap = Registry::getServiceMap(*(*(*(a1 + 96) + 8) + 48));
  v4 = ServiceMap;
  v5 = "23ApplicationStateMonitor";
  if (("23ApplicationStateMonitor" & 0x8000000000000000) != 0)
  {
    v6 = ("23ApplicationStateMonitor" & 0x7FFFFFFFFFFFFFFFLL);
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
  v14 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
  if (v9)
  {
    v10 = v9[3];
    v11 = v9[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v12 = 0;
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

  std::mutex::unlock(v4);
  v11 = 0;
  v12 = 1;
  if (!v10)
  {
LABEL_7:
    if (v12)
    {
      return (v10 != 0) & a2;
    }

    goto LABEL_12;
  }

LABEL_11:
  LOBYTE(a2) = sub_1006DFAC8(v10, a2);
  if ((v12 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v11);
  }

  return (v10 != 0) & a2;
}

void sub_1015A3EAC(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A3EC8(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v3 = ServiceMap;
  if (v4 < 0)
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
  block = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &block);
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
    v12 = 8;
    if (v11)
    {
      return v12;
    }

    goto LABEL_15;
  }

LABEL_11:
  v15 = (*(*v10 + 808))(v10);
  v16 = a1;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1015A5D24;
  v17[3] = &unk_101ED7590;
  v17[4] = a1 + 8;
  v17[5] = &v15;
  v18 = v17;
  v13 = *(a1 + 24);
  if (*(a1 + 32))
  {
    v25 = 0;
    block = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1015A5DB0;
    v22 = &unk_101E26940;
    v23 = &v25;
    v24 = &v18;
    dispatch_async_and_wait(v13, &block);
  }

  else
  {
    v25 = 0;
    block = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1015A5D74;
    v22 = &unk_101E26940;
    v23 = &v25;
    v24 = &v18;
    dispatch_sync(v13, &block);
  }

  v12 = v25;
  if ((v11 & 1) == 0)
  {
LABEL_15:
    sub_100004A34(v9);
  }

  return v12;
}

void sub_1015A40F8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A4114(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
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
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
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
      if (!v9)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
  if (!v9)
  {
LABEL_7:
    v11 = 0;
    if (v10)
    {
      return v11;
    }

    goto LABEL_12;
  }

LABEL_11:
  v11 = (*(*v9 + 64))(v9);
  if ((v10 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v8);
  }

  return v11;
}

void sub_1015A422C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A427C(uint64_t a1, char a2)
{
  v3 = *(a1 + 120);
  pthread_mutex_lock(&stru_101FB9D68);
  *(v3 + 8) = a2;

  return pthread_mutex_unlock(&stru_101FB9D68);
}

uint64_t sub_1015A42D0(uint64_t a1)
{
  v1 = *(a1 + 120);
  pthread_mutex_lock(&stru_101FB9D68);
  v2 = *(v1 + 8);
  pthread_mutex_unlock(&stru_101FB9D68);
  return v2;
}

void sub_1015A4310(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  operator new();
}

void sub_1015A4EF4(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  v2 = v1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1012EED48(v1);
  operator delete();
}

void sub_1015A4F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544((v11 + 8));
  ctu::OsLogContext::~OsLogContext(va1);
  operator delete();
}

void sub_1015A4F84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1015A4F5CLL);
}

uint64_t sub_1015A4FC8(uint64_t a1)
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

void sub_1015A5048(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 72);
  if (v3)
  {
    [v3 invalidate];

    *(v1 + 72) = 0;
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1015A50A0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015A50F4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015A5134(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1015A5164(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015A51B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015A51F8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1015A5224(uint64_t a1)
{
  v1 = *(a1 + 32);
  Registry::createRestModuleOneTimeUseConnection(&v6, *(v1 + 48));
  ctu::RestModule::connect();
  if (v7)
  {
    sub_100004A34(v7);
  }

  v2 = (v1 + 96);
  v9 = off_101F510F8;
  v10 = v1 + 80;
  v11 = &v9;
  if (&v9 != (v1 + 96))
  {
    v3 = *(v1 + 120);
    if (v3 == v2)
    {
      v8[1] = v1 + 80;
      v8[2] = 0;
      v8[0] = off_101F510F8;
      v11 = 0;
      ((*v3)[3])(v3, &v9);
      (*(**(v1 + 120) + 32))(*(v1 + 120));
      *(v1 + 120) = 0;
      v11 = &v9;
      (*(v8[0] + 24))(v8, v1 + 96);
      (*(v8[0] + 32))(v8);
    }

    else
    {
      *(v1 + 96) = off_101F510F8;
      *(v1 + 104) = v1 + 80;
      v11 = v3;
    }

    *(v1 + 120) = v2;
  }

  sub_1015A4FC8(&v9);
  v4 = *(v1 + 120);
  if (v4)
  {
    (*(*v4 + 48))(v4, v1 + 128);
  }

  v9 = off_101F51188;
  v10 = v1 + 80;
  v11 = &v9;
  sub_1015A5690(&v9, (v1 + 200));
  sub_1008A1148(&v9);
  result = *(v1 + 224);
  if (result)
  {
    return (*(*result + 48))(result, v1 + 232);
  }

  return result;
}

void sub_1015A5490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A5530(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F510F8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1015A555C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015A5618(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F51188;
  a2[1] = v2;
  return result;
}

uint64_t sub_1015A5644(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1015A5690(void *result, void *a2)
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

void sub_1015A58F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1015A5900(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015A5954(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1015A5994(void *result)
{
  if (result)
  {
    v1 = result;
    ctu::OsLogLogger::~OsLogLogger((result + 4));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

void sub_1015A59EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_autoreleasePoolPush();
  v3 = *(v1 + 72);
  if (v3)
  {
    [v3 invalidate];

    *(v1 + 72) = 0;
  }

  v4 = *(v1 + 16);
  if (!v4 || (v5 = *(v1 + 8), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    sub_100013CC4();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100004AE4;
  v9[3] = &unk_101F51258;
  v9[4] = v5;
  v10 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  *(v1 + 72) = [[FBSDisplayLayoutMonitor alloc] initWithDisplayType:0 qualityOfService:21 handler:v9];
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  std::__shared_weak_count::__release_weak(v7);
  objc_autoreleasePoolPop(v2);
}

void sub_1015A5AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1015A5B18(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1015A5B34(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1015A5B44(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5] && *(v3 + 41) == 1)
      {
        v6 = tcp_fallback_watcher_fallback_inuse();
        v7 = *(v3 + 32);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8[0] = 67109120;
          v8[1] = v6;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I cellular fallback is %d", v8, 8u);
        }

        pthread_mutex_lock(&stru_101FB9D28);
        *(v3 + 40) = v6;
        pthread_mutex_unlock(&stru_101FB9D28);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1015A5C58(uint64_t result, uint64_t a2)
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

void sub_1015A5C74(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1015A5C94(uint64_t result, uint64_t a2)
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

void sub_1015A5CB0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1015A5CF8(uint64_t result, uint64_t a2)
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

void sub_1015A5D14(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1015A5D24(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 1);
  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  if (v3 != v4)
  {
    v5 = *v1;
    do
    {
      if (*v3 == v5)
      {
        break;
      }

      v3 += 42;
    }

    while (v3 != v4);
  }

  return subscriber::toSimStatus();
}

uint64_t sub_1015A5D74(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1015A5DB0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_1015A5DF0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015A5E44(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015A5E84(uint64_t result)
{
  if (result)
  {
    return (*(*result + 200))();
  }

  return result;
}

void sub_1015A5EB0(ServiceManager::Service *this)
{
  *this = off_101F51398;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1015A5F0C(ServiceManager::Service *this)
{
  *this = off_101F51398;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_1015A5F8C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1015A5FCC(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  sub_1012EEE00(v2, &group);
}

void sub_1015A6034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A6084(uint64_t a1, NSObject **a2, uint64_t a3)
{
  ctu::OsLogContext::OsLogContext(&v26, kCtLoggingSystemName, "lazuli.cap.ctr");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *a2;
  *(a1 + 24) = *a2;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v24, &v26);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v24);
  ctu::OsLogLogger::~OsLogLogger(v24);
  ctu::OsLogContext::~OsLogContext(&v26);
  *a1 = &off_101E6C190;
  v25[0] = off_101E2B528;
  v25[1] = sub_1015A65C0;
  v25[3] = v25;
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v7) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v25);
  *a1 = off_101F51418;
  *(a1 + 56) = *a3;
  v8 = *(a3 + 8);
  *(a1 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "lazuli.cap.ctr");
  v21 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v21)
  {
    dispatch_release(v21);
  }

  if (v23 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 112) = a1 + 120;
  *(a1 + 88) = 0u;
  DefaultLazuliCapabilitiesInformationMap = GetDefaultLazuliCapabilitiesInformationMap();
  sub_100F6AEDC((a1 + 136), DefaultLazuliCapabilitiesInformationMap);
  DefaultLazuliProvisioningInitializerMap = GetDefaultLazuliProvisioningInitializerMap();
  sub_10084B8C0((a1 + 160), DefaultLazuliProvisioningInitializerMap);
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 200) = 0;
  ServiceMap = Registry::getServiceMap(*a3);
  v12 = ServiceMap;
  v13 = "17TMRouterInterface";
  if (("17TMRouterInterface" & 0x8000000000000000) != 0)
  {
    v14 = ("17TMRouterInterface" & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  v26.var0 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v26);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  std::mutex::unlock(v12);
  *(a1 + 208) = v19;
  *(a1 + 216) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v18);
  }

  *(a1 + 224) = 0;
  return a1;
}

const char *sub_1015A65C0(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "lazuli.cap.ctr.?";
  }

  else
  {
    return off_101F517C0[a1 - 1];
  }
}

uint64_t sub_1015A65E8(uint64_t a1)
{
  *a1 = off_101F51418;
  v2 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100009970(a1 + 184, *(a1 + 192));
  sub_100844464(a1 + 160, *(a1 + 168));
  sub_10006DCAC(a1 + 136, *(a1 + 144));
  sub_100009970(a1 + 112, *(a1 + 120));
  v8 = (a1 + 88);
  sub_1000212F4(&v8);
  v4 = *(a1 + 80);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  LazuliLifetimeInterface::~LazuliLifetimeInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1015A6710(uint64_t a1)
{
  sub_1015A65E8(a1);

  operator delete();
}

void sub_1015A6748(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Powering on", buf, 2u);
  }

  if ((ctu::RestModule::isConnected((a1 + 72)) & 1) == 0)
  {
    Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 56));
    ctu::RestModule::connect();
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  sub_10000501C(__p, "/cc/props/lazuli_client_state");
  *buf = off_101F51680;
  v8 = a1 + 112;
  v9 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/props/lazuli_capabilities_information");
  operator new();
}

void sub_1015A690C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A6958(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 152))
  {
    v6 = a2 + 1;
    v7 = *a2;
    if (*a2 == a2 + 1)
    {
      return;
    }

    v8 = *(a1 + 136);
    while (*(v7 + 8) == *(v8 + 8) && sub_1004D0F9C((v7 + 5), (v8 + 5)))
    {
      v9 = v7[1];
      v10 = v7;
      if (v9)
      {
        do
        {
          v7 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v7 = v10[2];
          v11 = *v7 == v10;
          v10 = v7;
        }

        while (!v11);
      }

      v12 = v8[1];
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
          v13 = v8[2];
          v11 = *v13 == v8;
          v8 = v13;
        }

        while (!v11);
      }

      v8 = v13;
      if (v7 == v6)
      {
        return;
      }
    }
  }

  v14 = *(a1 + 136);
  if (v14 != (a1 + 144))
  {
    v15 = a2 + 1;
    while (1)
    {
      v16 = *v15;
      v17 = *(v14 + 8);
      if (!*v15)
      {
        goto LABEL_29;
      }

      v18 = a2 + 1;
      do
      {
        if (*(v16 + 32) >= v17)
        {
          v18 = v16;
        }

        v16 = *(v16 + 8 * (*(v16 + 32) < v17));
      }

      while (v16);
      if (v18 == v15 || v17 < *(v18 + 8))
      {
        goto LABEL_29;
      }

      if (!sub_1004D0F9C((v18 + 5), (v14 + 5)))
      {
        break;
      }

LABEL_38:
      v24 = v14[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v14[2];
          v11 = *v25 == v14;
          v14 = v25;
        }

        while (!v11);
      }

      v14 = v25;
      if (v25 == (a1 + 144))
      {
        return;
      }
    }

    v17 = *(v14 + 8);
LABEL_29:
    v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), v17);
    v20 = *(a1 + 168);
    if (v20)
    {
      v21 = *(v14 + 8);
      v22 = a1 + 168;
      do
      {
        if (*(v20 + 32) >= v21)
        {
          v22 = v20;
        }

        v20 = *(v20 + 8 * (*(v20 + 32) < v21));
      }

      while (v20);
      if (v22 != a1 + 168 && v21 >= *(v22 + 32))
      {
        v28[2] = 0;
        v28[3] = 0;
        v26 = *(a1 + 64);
        v28[0] = *(a1 + 56);
        v28[1] = v26;
        if (v26)
        {
          atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
        }

        sub_10000501C(__p, "Capabilities");
        sub_100B2FB1C(v21, v28, v22 + 40, __p, v2 & 0xFFFFFFFFFFFFFF00, v3 & 0xFFFFFFFFFFFFFF00);
      }
    }

    v23 = *v19;
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Missing provisioning initializer", __p, 2u);
    }

    goto LABEL_38;
  }
}

void sub_1015A6DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A6E5C(uint64_t a1)
{
  v1 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Tearing down", v2, 2u);
  }
}

uint64_t sub_1015A6EE4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Tear down complete", v4, 2u);
  }

  return ctu::RestModule::disconnect((a1 + 72));
}

void sub_1015A6F50(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Dump: Capabilities search info", buf, 2u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ======", v5, 2u);
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I ======", v4, 2u);
  }
}

void sub_1015A702C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DefaultLazuliDiscoverCapabilitiesInformation = GetDefaultLazuliDiscoverCapabilitiesInformation(a1, a2);
  v7 = *(DefaultLazuliDiscoverCapabilitiesInformation + 1);
  v15 = *DefaultLazuliDiscoverCapabilitiesInformation;
  v16 = v7;
  v17 = *(DefaultLazuliDiscoverCapabilitiesInformation + 4);
  v8 = *(a2 + 144);
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = a2 + 144;
  do
  {
    if (*(v8 + 32) >= a3)
    {
      v9 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 32) < a3));
  }

  while (v8);
  if (v9 != a2 + 144 && *(v9 + 32) <= a3)
  {
    v13 = *(v9 + 56);
    *a1 = *(v9 + 40);
    *(a1 + 16) = v13;
    v12 = *(v9 + 72);
  }

  else
  {
LABEL_8:
    v10 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No discovery information found", v14, 2u);
    }

    v11 = v16;
    *a1 = v15;
    *(a1 + 16) = v11;
    v12 = v17;
  }

  *(a1 + 32) = v12;
}

void sub_1015A7140(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v37 = 0uLL;
  v38 = 0;
  sub_1009CC9A8(a4, &v37);
  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(__dst, v37, *(&v37 + 1));
  }

  else
  {
    *__dst = v37;
    v25 = v38;
  }

  v35 = 0;
  v36 = 0;
  v30[0] = 0;
  v31 = 0;
  v33 = 0;
  v34 = 0;
  __p = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  sub_1015A7460(&v35, a2, a3, __dst);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (v31 == 1)
  {
    v12[0] = v30;
    sub_1000087B4(v12);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  v7 = v35;
  if (!v35)
  {
    *a1 = 0;
    *(a1 + 112) = 0;
    goto LABEL_38;
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(v12, v37, *(&v37 + 1));
  }

  else
  {
    *v12 = v37;
    v13 = v38;
  }

  v18 = 0;
  v19 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v17 = 0;
  sub_100DC1EBC(v7, v12, __dst);
  v8 = __dst[0];
  v9 = __dst[1];
  v23[0] = v25;
  *(v23 + 3) = *(&v25 + 3);
  v10 = SHIBYTE(v25);
  __dst[1] = 0;
  v25 = 0;
  __dst[0] = 0;
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p);
  }

  if (v31 == 1)
  {
    v39 = v30;
    sub_1000087B4(&v39);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }

  if (v19 == 1)
  {
    v39 = &v18;
    sub_1000087B4(&v39);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v14);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
LABEL_33:
    __dst[0] = v8;
    __dst[1] = v9;
    LODWORD(v25) = v23[0];
    *(&v25 + 3) = *(v23 + 3);
    HIBYTE(v25) = v10;
    goto LABEL_36;
  }

  sub_100005F2C(__dst, v8, v9);
LABEL_36:
  *a1 = *__dst;
  v11 = v25;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = 1;
  if (v10 < 0)
  {
    operator delete(v8);
  }

LABEL_38:
  if (v36)
  {
    sub_100004A34(v36);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37);
  }
}