void sub_1005045B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, int a44, __int16 a45, char a46, char a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    sub_100004A34(a48);
  }

  _Unwind_Resume(exception_object);
}

void sub_100504618(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (*(v3 + 1080))
  {
    v6 = *(v3 + 160);
    v7 = *(v3 + 1040);
    v30 = 0;
    v29 = 0uLL;
    v37[0] = 0;
    v38 = 0;
    sub_100520D38(buf, v7, &v29, v37, 0);
    (*(*v6 + 96))(v6, 0, buf);
    if (v43[192] == 1)
    {
      sub_100E3A5D4(&v41);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(buf[1]);
    }

    if (v38 == 1)
    {
      sub_100E3A5D4(v37);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29);
    }

    if (*a3 != 1)
    {
      goto LABEL_42;
    }

    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    *__dst = 0u;
    v33 = 0u;
    v8 = 328;
    if (*(v3 + 1224))
    {
      v8 = 1368;
    }

    v9 = (v3 + v8);
    if (*(v3 + v8 + 23) < 0)
    {
      sub_100005F2C(__dst, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      *&v33 = *(v9 + 2);
      *__dst = v10;
    }

    *(&v33 + 1) = *(v9 + 3);
    v34 = 0uLL;
    *&v35 = 0;
    sub_10027E628(&v34, *(v9 + 4), *(v9 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v9 + 5) - *(v9 + 4)) >> 3));
    v12 = *(v9 + 7);
    LODWORD(v36) = *(v9 + 16);
    *(&v35 + 1) = v12;
    if (*a3)
    {
      v14 = *(&v34 + 1);
      v13 = v34;
      v44 = *(a3 + 24);
      if (v34 != *(&v34 + 1))
      {
        while (1)
        {
          sub_100F11B6C(buf, v13);
          v16 = buf[2] != v44 || v40 != *(&v44 + 1);
          if (v43[24] == 1)
          {
            v31 = v43;
            sub_100112120(&v31);
          }

          if (v42 < 0)
          {
            operator delete(v41);
          }

          if (!v16)
          {
            break;
          }

          v13 += 88;
          if (v13 == v14)
          {
            v13 = v14;
            break;
          }
        }

        v14 = *(&v34 + 1);
      }

      if (v13 == v14)
      {
        v18 = *(v3 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          if ((*a3 & 1) == 0)
          {
            __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
          }

          ctu::hex((a3 + 24), 0x10, v19);
          sub_101772DF8(buf, &v44, v18);
        }

        goto LABEL_40;
      }

      if (*a3 == 1)
      {
        v17 = *(a3 + 24);
        *v13 = *(a3 + 8);
        *(v13 + 16) = v17;
        std::string::operator=((v13 + 32), (a3 + 40));
        sub_1001148D8(v13 + 56, a3 + 64);
        (*(**(v3 + 160) + 32))(*(v3 + 160), __dst);
LABEL_40:
        v31 = &v34;
        sub_100112048(&v31);
        if (SBYTE7(v33) < 0)
        {
          operator delete(*__dst);
        }

LABEL_42:
        (*(**(v3 + 96) + 16))(*(v3 + 96));
        v20 = *a2;
        v21 = *(v3 + 40);
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (v20 == 1)
        {
          if (v22)
          {
            *__dst = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Install successful", __dst, 2u);
            v22 = 0;
          }
        }

        else
        {
          if (v22)
          {
            if (v20 != 2)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
            }

            v23 = asString();
            *__dst = 136315138;
            *&__dst[4] = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I error fetching profiles: %s", __dst, 0xCu);
            v20 = *a2;
          }

          if (v20 != 2)
          {
            if (v20 == 1)
            {
              v26 = __cxa_allocate_exception(0x10uLL);
              ctu::ResultIsNotError::ResultIsNotError(v26);
            }

            v27 = __cxa_allocate_exception(0x10uLL);
            ctu::ResultIsEmptyError::ResultIsEmptyError(v27);
          }

          v22 = sub_100504BE0(a2[1]);
        }

        *__dst = v22;
        sub_100504C34((v3 + 1080), __dst, a3);
        return;
      }

      v24 = 1212;
      v25 = "get";
    }

    else
    {
      v24 = 1222;
      v25 = "operator->";
    }

    __assert_rtn(v25, "optional.hpp", v24, "this->is_initialized()");
  }

  v11 = *(v3 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I fetch profile callback already invoked", buf, 2u);
  }
}

uint64_t sub_100504BE0(uint64_t result)
{
  if (result > 19)
  {
    if ((result - 20) < 2)
    {
      return 5;
    }

    if (result == 25)
    {
      return 11;
    }

    return 2;
  }

  if (result != 6 && result != 8)
  {
    if (result == 9)
    {
      return 7;
    }

    return 2;
  }

  return result;
}

void sub_100504C34(uint64_t *a1, unsigned int *a2, _BYTE *a3)
{
  v3 = *a1;
  v4 = *a2;
  v6[0] = 0;
  if (*a3 == 1)
  {
    sub_100F11B6C(&v7, (a3 + 8));
    v6[0] = 1;
  }

  (*(v3 + 16))(v3, v4, v6);
  if (v6[0] == 1)
  {
    if (v10[24] == 1)
    {
      v5 = v10;
      sub_100112120(&v5);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }
  }
}

void cellplan::CellularPlanControllerPhone::sendUserConsentForRemoteProvisioning_sync(uint64_t a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v5 = *(a1 + 144);
  v6 = *a2;
  v7 = a2[1];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_100504E1C;
  v9[3] = &unk_101E53918;
  v9[4] = a1;
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  (*(*v5 + 48))(v5, v6, v7, a3, v9);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_100504E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100504E1C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = *(*(a1 + 32) + 40);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == 2)
  {
    if (v6)
    {
      v12 = 136315138;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I User consent send failure (%s)", &v12, 0xCu);
      v7 = *a2;
      if (v7 != 2)
      {
        if (v7 == 1)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          ctu::ResultIsNotError::ResultIsNotError(exception);
        }

        v11 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v11);
      }
    }

    v8 = sub_100504BE0(a2[1]);
    return (*(*(a1 + 40) + 16))(*(a1 + 40), v8 | &_mh_execute_header);
  }

  else
  {
    if (v4 == 1)
    {
      if (v6)
      {
        LOWORD(v12) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I User Consent successfully sent", &v12, 2u);
      }
    }

    else if (v6)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I User consent send failure", &v12, 2u);
    }

    return (*(*(a1 + 40) + 16))();
  }
}

void *sub_10050502C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void sub_100505060(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void cellplan::CellularPlanControllerPhone::removeNonSelectedPlanFromMultiplePlansList_sync(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 48);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 56) - *(a2 + 48)) >> 5) >= 2)
  {
    v43 = 0uLL;
    v5 = (a2 + 24);
    memset(&v21, 0, sizeof(v21));
    if ((sub_1009222A0(a2 + 24, &v43) & 1) == 0)
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_101772E60(a2, v5, v11);
      }

      goto LABEL_67;
    }

    (*(**(a1 + 176) + 24))(&v27);
    if (v42 == 1 && v27 == 1)
    {
      std::string::operator=(&v21, &v28);
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 47) >= 0)
        {
          v7 = v5;
        }

        else
        {
          v7 = *(a2 + 24);
        }

        v8 = &v21;
        if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v8 = v21.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I selected ICCID on remote device (%s): %s", buf, 0x16u);
      }
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v21.__r_.__value_.__l.__size_)
      {
        v9 = *(a2 + 48);
        v10 = *(a2 + 56);
        sub_100005F2C(&__p, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
        goto LABEL_19;
      }
    }

    else if (*(&v21.__r_.__value_.__s + 23))
    {
      v9 = *(a2 + 48);
      v10 = *(a2 + 56);
      __p = v21;
LABEL_19:
      v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if (v9 != v10)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v15 = *(v9 + 23);
          v16 = v15;
          if ((v15 & 0x80u) != 0)
          {
            v15 = *(v9 + 8);
          }

          if (v15 == size)
          {
            v17 = v16 >= 0 ? v9 : *v9;
            if (!memcmp(v17, p_p, size))
            {
              break;
            }
          }

          v9 += 96;
          if (v9 == v10)
          {
            v9 = v10;
            break;
          }
        }
      }

      if (v12 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v9 != *(a2 + 56))
      {
        *v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        *v24 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_1000DDB98(buf, v9);
        sub_100520EA4(v2, *(a2 + 48));
        v18 = *(a2 + 56);
        if (v18 >= *(a2 + 64))
        {
          v19 = sub_100520EF8(v2, buf);
        }

        else
        {
          sub_1000DDB98(*(a2 + 56), buf);
          v19 = v18 + 96;
          *(a2 + 56) = v18 + 96;
        }

        *(a2 + 56) = v19;
        sub_100505504(v2);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25[1]);
        }

        if (SHIBYTE(v25[0]) < 0)
        {
          operator delete(v24[0]);
        }

        if (SHIBYTE(v23) < 0)
        {
          operator delete(*&buf[24]);
        }

        if (buf[23] < 0)
        {
          operator delete(*buf);
        }
      }
    }

    if (v42 == 1)
    {
      *buf = &v41;
      sub_100112048(buf);
      if (v40 < 0)
      {
        operator delete(v39);
      }

      if (v38 < 0)
      {
        operator delete(v37);
      }

      if (v34 == 1)
      {
        if (v36 < 0)
        {
          operator delete(v35);
        }

        v34 = 0;
      }

      if (v31 == 1)
      {
        if (v33 < 0)
        {
          operator delete(v32);
        }

        v31 = 0;
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }

      if (v27 == 1 && SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v28.__r_.__value_.__l.__data_);
      }
    }

LABEL_67:
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1005054A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  sub_1000DA290(&a18);
  sub_1003A371C(&a30);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100505504(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 5);
    v15 = result;
    if (v1 != v2)
    {
      sub_1000DD644(result, 0xAAAAAAAAAAAAAAABLL * (v4 >> 5));
    }

    v7 = 32 * (v4 >> 5);
    v12 = 0;
    v13 = 96 * v6;
    v14 = 96 * v6;
    if (0xAAAAAAAAAAAAAAABLL * (v3 >> 5))
    {
      v8 = result[1];
      v9 = v7 + v2 - v8;
      sub_100521028(result, v2, v8, v9);
      v10 = *v5;
      *v5 = v9;
      v11 = v5[2];
      *(v5 + 1) = v14;
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v12 = v10;
      v13 = v10;
    }

    return sub_100521174(&v12);
  }

  return result;
}

void sub_1005055F0(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100521174(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1005055E0);
}

void *cellplan::CellularPlanControllerPhone::getPlanTransferCapabilityForPrimaryIccids_sync@<X0>(void *this@<X0>, uint64_t **a2@<X8>)
{
  if (*(this + 1224))
  {
    v3 = 14;
  }

  else
  {
    v3 = 12;
  }

  a2[2] = 0;
  a2[1] = 0;
  *a2 = (a2 + 1);
  v4 = this[38];
  v5 = this[39];
  if (v4 != v5)
  {
    v6 = this + 137;
    do
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = *v4;
        v9 = v6;
        do
        {
          if (*(v7 + 32) >= v3)
          {
            v9 = v7;
          }

          v7 = *(v7 + 8 * (*(v7 + 32) < v3));
        }

        while (v7);
        if (v9 != v6 && v3 >= *(v9 + 8))
        {
          v12 = v9[6];
          v10 = v9 + 6;
          v11 = v12;
          if (v12)
          {
            v13 = v10;
            do
            {
              if (*(v11 + 7) >= v8)
              {
                v13 = v11;
              }

              v11 = v11[*(v11 + 7) < v8];
            }

            while (v11);
            if (v13 != v10 && v8 >= *(v13 + 7) && *(v13 + 8) == 2)
            {
              v15 = (v4 + 9);
              this = sub_100527A1C(a2, v4 + 9, &unk_101802C98, &v15, &v14);
              *(this + 56) = 3;
            }
          }
        }
      }

      v4 += 21;
    }

    while (v4 != v5);
  }

  return this;
}

uint64_t cellplan::CellularPlanControllerPhone::getLocalSimSlotForRemoteDeviceProfile_sync(uint64_t a1, const void **a2)
{
  (***(a1 + 128))(&v42);
  v53[0] = v42;
  v42 = 0uLL;
  subscriber::makeSimSlotRange();
  if (*(&v53[0] + 1))
  {
    sub_100004A34(*(&v53[0] + 1));
  }

  if (*(&v42 + 1))
  {
    sub_100004A34(*(&v42 + 1));
  }

  v4 = v35;
  v5 = v36;
  if (v35 == v36)
  {
    return 0;
  }

  v6 = v37;
  do
  {
    if (v37(*v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != v36);
  v31 = v36;
  if (v4 == v36)
  {
    return 0;
  }

  while (1)
  {
    v7 = *v4;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    memset(v53, 0, sizeof(v53));
    (*(**(a1 + 160) + 184))(v53);
    if (BYTE8(v57))
    {
      break;
    }

    v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_101772EE0(&v33, v34, v18);
    }

LABEL_48:
    sub_100521514(v53);
    do
    {
      ++v4;
    }

    while (v4 != v5 && (v6(*v4) & 1) == 0);
    if (v4 == v31)
    {
      return 0;
    }
  }

  if (*(a1 + 1224) != 1)
  {
    v9 = *(&v54 + 1);
    v8 = v55;
    while (v9 != v8)
    {
      *__p = 0u;
      v50 = 0u;
      *v47 = 0u;
      *v48 = 0u;
      *v45 = 0u;
      *v46 = 0u;
      *v43 = 0u;
      *v44 = 0u;
      v42 = 0u;
      sub_100521398(&v42, v9);
      if (SHIBYTE(v48[0]) >= 0)
      {
        v10 = HIBYTE(v48[0]);
      }

      else
      {
        v10 = v47[1];
      }

      v11 = *(a2 + 23);
      v12 = v11;
      if (v11 < 0)
      {
        v11 = a2[1];
      }

      if (v10 == v11 && (SHIBYTE(v48[0]) >= 0 ? (v13 = v47) : (v13 = v47[0]), v12 >= 0 ? (v14 = a2) : (v14 = *a2), !memcmp(v13, v14, v10)))
      {
        v16 = *(a1 + 40);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = subscriber::asString();
          *buf = 136315394;
          v39 = v14;
          v40 = 2080;
          v41 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I matching slot for remote profile iccid %s = %s", buf, 0x16u);
        }

        v15 = 1;
        v2 = v7;
      }

      else
      {
        v15 = 0;
      }

      if (LOBYTE(__p[0]) == 1)
      {
        if (SHIBYTE(v50) < 0)
        {
          operator delete(__p[1]);
        }

        LOBYTE(__p[0]) = 0;
      }

      if (SHIBYTE(v48[0]) < 0)
      {
        operator delete(v47[0]);
      }

      if (LOBYTE(v45[0]) == 1)
      {
        if (SHIBYTE(v46[1]) < 0)
        {
          operator delete(v45[1]);
        }

        LOBYTE(v45[0]) = 0;
      }

      if (LOBYTE(v43[0]) == 1 && SHIBYTE(v44[1]) < 0)
      {
        operator delete(v43[1]);
      }

      if (v15)
      {
        v19 = v2;
        goto LABEL_54;
      }

      v9 += 144;
    }

    goto LABEL_48;
  }

  v22 = *(&v56 + 1);
  v21 = v56;
  if (v56 == *(&v56 + 1))
  {
    v19 = 0;
LABEL_54:
    sub_100521514(v53);
    return v19;
  }

  else
  {
    while (1)
    {
      v52 = 0;
      v50 = 0u;
      *v51 = 0u;
      *v48 = 0u;
      *__p = 0u;
      *v46 = 0u;
      *v47 = 0u;
      *v44 = 0u;
      *v45 = 0u;
      v42 = 0u;
      *v43 = 0u;
      sub_1005211F4(&v42, v21);
      if (SHIBYTE(v45[1]) >= 0)
      {
        v23 = HIBYTE(v45[1]);
      }

      else
      {
        v23 = v45[0];
      }

      v24 = *(a2 + 23);
      v25 = v24;
      if (v24 < 0)
      {
        v24 = a2[1];
      }

      if (v23 == v24 && (SHIBYTE(v45[1]) >= 0 ? (v26 = &v44[1]) : (v26 = v44[1]), v25 >= 0 ? (v27 = a2) : (v27 = *a2), !memcmp(v26, v27, v23)))
      {
        v29 = *(a1 + 40);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = subscriber::asString();
          *buf = 136315394;
          v39 = v27;
          v40 = 2080;
          v41 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I matching slot for remote profile iccid %s = %s", buf, 0x16u);
        }

        v28 = 1;
        v2 = v7;
      }

      else
      {
        v28 = 0;
      }

      if (SHIBYTE(v52) < 0)
      {
        operator delete(v51[0]);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(v48[0]);
      }

      if (SHIBYTE(v47[1]) < 0)
      {
        operator delete(v46[1]);
      }

      if (SHIBYTE(v45[1]) < 0)
      {
        operator delete(v44[1]);
      }

      if (SHIBYTE(v44[0]) < 0)
      {
        operator delete(v43[0]);
      }

      if (v28)
      {
        break;
      }

      v19 = 0;
      v21 += 168;
      if (v21 == v22)
      {
        goto LABEL_54;
      }
    }

    sub_100521514(v53);
  }

  return v2;
}

void sub_100505C8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  sub_100505CF0(&a21);
  sub_100521514(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100505CF0(uint64_t a1)
{
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

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

BOOL cellplan::CellularPlanControllerPhone::setTransferRequestParams(uint64_t a1, uint64_t a2, const std::string *a3, uint64_t *a4)
{
  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  *v48 = 0u;
  memset(v46, 0, sizeof(v46));
  std::string::operator=(v46, a3);
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  *v58 = 0u;
  v55 = 0u;
  *v56 = 0u;
  v53 = 0u;
  *v54 = 0u;
  *__dst = 0u;
  (*(**(a1 + 160) + 184))(__dst);
  if (BYTE8(v66) == 1)
  {
    if (*(a1 + 1224) == 1)
    {
      v8 = *(&v65 + 1);
      if (v65 != *(&v65 + 1))
      {
        v9 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        if (v9 >= 0)
        {
          size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = a3->__r_.__value_.__l.__size_;
        }

        if (v9 < 0)
        {
          a3 = a3->__r_.__value_.__r.__words[0];
        }

        v11 = (v65 + 39);
        while (1)
        {
          v12 = v11[24];
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(v11 + 9);
          }

          if (v12 == size)
          {
            v14 = v13 >= 0 ? v11 + 1 : *(v11 + 1);
            if (!memcmp(v14, a3, size))
            {
              break;
            }
          }

          v11 += 168;
          if (v11 - 39 == v8)
          {
            goto LABEL_56;
          }
        }

        ctu::hex((v11 - 39), 0x10, v15);
        v24 = *a4;
        if (*(*a4 + 80) == 1)
        {
          if (*(v24 + 79) < 0)
          {
            operator delete(*(v24 + 56));
          }

          *(v24 + 56) = *__p;
          *(v24 + 72) = v44;
        }

        else
        {
          *(v24 + 56) = *__p;
          *(v24 + 72) = v44;
          *(v24 + 80) = 1;
        }

        v26 = *v11;
        if (v26 < 0)
        {
          v26 = *(v11 - 15);
        }

        if (v26)
        {
          sub_1001696A4(&v46[24], (v11 - 23));
        }
      }
    }

    else
    {
      v16 = *(&v63 + 1);
      v17 = v64;
      if (*(&v63 + 1) != v64)
      {
        v18 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        if (v18 >= 0)
        {
          v19 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v19 = a3->__r_.__value_.__l.__size_;
        }

        if (v18 < 0)
        {
          a3 = a3->__r_.__value_.__r.__words[0];
        }

        while (1)
        {
          v20 = *(v16 + 103);
          v21 = v20;
          if ((v20 & 0x80u) != 0)
          {
            v20 = *(v16 + 88);
          }

          if (v20 == v19)
          {
            v22 = v21 >= 0 ? (v16 + 80) : *(v16 + 80);
            if (!memcmp(v22, a3, v19))
            {
              break;
            }
          }

          v16 += 144;
          if (v16 == v17)
          {
            goto LABEL_56;
          }
        }

        ctu::hex(v16, 0x10, v23);
        v25 = *a4;
        if (*(*a4 + 80) == 1)
        {
          if (*(v25 + 79) < 0)
          {
            operator delete(*(v25 + 56));
          }

          *(v25 + 56) = *__p;
          *(v25 + 72) = v44;
        }

        else
        {
          *(v25 + 56) = *__p;
          *(v25 + 72) = v44;
          *(v25 + 80) = 1;
        }

        sub_100BFF27C((v16 + 16), __p);
        sub_10016A270(&v46[24], __p);
        if (v45 == 1 && SHIBYTE(v44) < 0)
        {
          operator delete(__p[0]);
        }

        sub_100BFF27C((v16 + 48), __p);
        sub_10016A270(&v48[1], __p);
        if (v45 == 1 && SHIBYTE(v44) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_101772F20();
  }

LABEL_56:
  v27 = *a4;
  v28 = *(*a4 + 40);
  if (v28 >= *(*a4 + 48))
  {
    v29 = sub_1005216C8((v27 + 32), v46);
  }

  else
  {
    sub_1005215FC(v27 + 32, v46);
    v29 = v28 + 96;
  }

  *(v27 + 40) = v29;
  sub_100521514(__dst);
  if (v50 == 1 && SHIBYTE(v49) < 0)
  {
    operator delete(v48[1]);
  }

  if (LOBYTE(v48[0]) == 1 && SHIBYTE(v47) < 0)
  {
    operator delete(*&v46[24]);
  }

  if ((v46[23] & 0x80000000) != 0)
  {
    operator delete(*v46);
  }

  v51 = 0uLL;
  v32 = 328;
  if (*(a1 + 1224))
  {
    v32 = 1368;
  }

  v33 = a1 + v32;
  v34 = *(a1 + v32 + 32);
  if (*(v33 + 40) == v34 || *(v33 + 24) != 1)
  {
    result = os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_101772F54();
      return 0;
    }
  }

  else
  {
    v51 = *(v34 + 16);
    sub_100922314(&v51, v30, v31);
    v35 = *a4;
    if (*(*a4 + 111) < 0)
    {
      operator delete(*(v35 + 88));
    }

    *(v35 + 88) = *__dst;
    *(v35 + 104) = v53;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    *v48 = 0u;
    memset(v46, 0, sizeof(v46));
    *&v60 = 0;
    *v58 = 0u;
    v59 = 0u;
    *v56 = 0u;
    v57 = 0u;
    *v54 = 0u;
    v55 = 0u;
    *__dst = 0u;
    v53 = 0u;
    v36 = 408;
    if (*(a1 + 1224))
    {
      v36 = 1232;
    }

    sub_10027E51C(__dst, (a1 + v36));
    if (BYTE8(v53))
    {
      if (SBYTE7(v55) < 0)
      {
        sub_100005F2C(__p, v54[0], v54[1]);
      }

      else
      {
        *__p = *v54;
        v44 = v55;
      }

      v38 = 1;
    }

    else
    {
      v38 = 0;
      LOBYTE(__p[0]) = 0;
    }

    v45 = v38;
    sub_10016A270(&v46[24], __p);
    if (v45 == 1 && SHIBYTE(v44) < 0)
    {
      operator delete(__p[0]);
    }

    if (BYTE8(v55))
    {
      if (SBYTE7(v57) < 0)
      {
        sub_100005F2C(__p, v56[0], v56[1]);
      }

      else
      {
        *__p = *v56;
        v44 = v57;
      }

      v39 = 1;
    }

    else
    {
      v39 = 0;
      LOBYTE(__p[0]) = 0;
    }

    v45 = v39;
    sub_10016A270(&v48[1], __p);
    if (v45 == 1 && SHIBYTE(v44) < 0)
    {
      operator delete(__p[0]);
    }

    v40 = *a4;
    v41 = *(*a4 + 120);
    if (v41 >= *(*a4 + 128))
    {
      v42 = sub_1005216C8((v40 + 112), v46);
    }

    else
    {
      sub_1005215FC(v40 + 112, v46);
      v42 = v41 + 96;
    }

    *(v40 + 120) = v42;
    sub_100215390((*a4 + 136), &off_101E53948);
    if (SBYTE7(v59) < 0)
    {
      operator delete(v58[0]);
    }

    if (BYTE8(v55) == 1)
    {
      if (SBYTE7(v57) < 0)
      {
        operator delete(v56[0]);
      }

      BYTE8(v55) = 0;
    }

    if (BYTE8(v53) == 1)
    {
      if (SBYTE7(v55) < 0)
      {
        operator delete(v54[0]);
      }

      BYTE8(v53) = 0;
    }

    if (SBYTE7(v53) < 0)
    {
      operator delete(__dst[0]);
    }

    if (v50 == 1 && SHIBYTE(v49) < 0)
    {
      operator delete(v48[1]);
    }

    if (LOBYTE(v48[0]) == 1 && SHIBYTE(v47) < 0)
    {
      operator delete(*&v46[24]);
    }

    if ((v46[23] & 0x80000000) != 0)
    {
      operator delete(*v46);
    }

    return 1;
  }

  return result;
}

void sub_100506430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_100521514(va);
  sub_100269A94(&a13);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::isRemotePlanAvailable(uint64_t a1, int a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1005065BC;
  v5[3] = &unk_101E53958;
  v6 = a2;
  v5[4] = a3;
  v5[5] = a1;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1005065BC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  *__p = 0u;
  v15 = 0u;
  v3 = 328;
  if (*(v2 + 1224))
  {
    v3 = 1368;
  }

  v4 = (v2 + v3);
  if (*(v2 + v3 + 23) < 0)
  {
    sub_100005F2C(__p, *v4, *(v4 + 1));
  }

  else
  {
    v5 = *v4;
    *&v15 = *(v4 + 2);
    *__p = v5;
  }

  *(&v15 + 1) = *(v4 + 3);
  v16 = 0uLL;
  *&v17 = 0;
  sub_10027E628(&v16, *(v4 + 4), *(v4 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v4 + 5) - *(v4 + 4)) >> 3));
  v6 = *(v4 + 7);
  LODWORD(v18) = *(v4 + 16);
  *(&v17 + 1) = v6;
  for (i = v16; i != *(&v16 + 1); i += 88)
  {
    if (*(i + 12) == 5)
    {
      v9 = 0;
      goto LABEL_21;
    }
  }

  *buf = 0u;
  v20 = 0u;
  (*(**(v2 + 128) + 680))(&v12);
  (*(*v12 + 48))(buf);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v9 = *(&v16 + 1) != v16 && *buf != 0;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(*&buf[8]);
  }

LABEL_21:
  v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 48));
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CSIBOOLAsString(v9);
    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I isRemotePlanAvailable: %s", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  *buf = &v16;
  sub_100112048(buf);
  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100506878(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100506870);
}

void cellplan::CellularPlanControllerPhone::isRemoteCellularPlanSupported(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10050699C;
  v4[3] = &unk_101E53980;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_10050699C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I isRemoteCellularPlanSupported", v7, 2u);
  }

  v4 = *(a1 + 32);
  v5 = (*(**(v2 + 128) + 56))(*(v2 + 128));
  return (*(v4 + 16))(v4, v5);
}

void cellplan::CellularPlanControllerPhone::shouldShowAddNewRemotePlan(uint64_t a1, int a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100506B5C;
  v5[3] = &unk_101E539A8;
  v6 = a2;
  v5[4] = a3;
  v5[5] = a1;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_100506B5C(uint64_t a1)
{
  v2 = (a1 + 48);
  v3 = *(a1 + 40);
  v4 = (*(**(v3 + 48) + 16))(*(v3 + 48), *(a1 + 48));
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I shouldShowAddNewRemotePlan", &buf, 2u);
  }

  (*(**(v3 + 128) + 680))(&v146);
  (*(*v146 + 48))(&buf);
  v6 = buf;
  __src = *(&buf + 1);
  v7 = v135;
  v8 = SHIBYTE(v135);
  v130[0] = DWORD2(v135);
  *(v130 + 3) = *(&v135 + 11);
  HIBYTE(v135) = 0;
  BYTE8(buf) = 0;
  if (*(&v146 + 1))
  {
    sub_100004A34(*(&v146 + 1));
  }

  if (*(v3 + 1224) == 1)
  {
    v6 &= ~4u;
    if (v8 < 0)
    {
      v7 = 0;
      *__src = 0;
    }

    else
    {
      v8 = 0;
      __src &= 0xFFFFFFFFFFFFFF00;
    }
  }

  v9 = (*(**(v3 + 160) + 168))(*(v3 + 160), *v2);
  v10 = v6 | 8;
  if (!v9)
  {
    v10 = v6;
  }

  v68 = v10;
  if ((*(**(v3 + 128) + 56))(*(v3 + 128)))
  {
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
    __dst = 0u;
    v123 = 0u;
    v11 = 328;
    if (*(v3 + 1224))
    {
      v11 = 1368;
    }

    v12 = (v3 + v11);
    if (*(v3 + v11 + 23) < 0)
    {
      sub_100005F2C(&__dst, *v12, *(v12 + 1));
    }

    else
    {
      v13 = *v12;
      *&v123 = *(v12 + 2);
      __dst = v13;
    }

    *(&v123 + 1) = *(v12 + 3);
    v124 = 0uLL;
    *&v125 = 0;
    sub_10027E628(&v124, *(v12 + 4), *(v12 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v12 + 5) - *(v12 + 4)) >> 3));
    v16 = *(v12 + 7);
    LODWORD(v126) = *(v12 + 16);
    *(&v125 + 1) = v16;
    for (i = v124; i != *(&v124 + 1); i += 88)
    {
      if (*(i + 12) == 5)
      {
        v23 = *v4;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I a remote sim is unauthorized", &buf, 2u);
        }

        v24 = *(a1 + 32);
        if (v8 < 0)
        {
          sub_100005F2C(v119, __src, v7);
        }

        else
        {
          v119[0] = __src;
          v119[1] = v7;
          *v120 = v130[0];
          *&v120[3] = *(v130 + 3);
          v121 = v8;
        }

        (*(v24 + 16))(v24, 0, v68, v119, 0);
        if (v121 < 0)
        {
          v31 = v119[0];
LABEL_80:
          operator delete(v31);
          goto LABEL_81;
        }

        goto LABEL_81;
      }
    }

    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    memset(v149, 0, sizeof(v149));
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    sub_100922C88(*v2, (v3 + 304), &v146);
    if (v146 == 1)
    {
      isSimReady = subscriber::isSimReady();
    }

    else
    {
      isSimReady = 0;
    }

    v145 = 0uLL;
    if (*(&v124 + 1) == v124)
    {
      v25 = *v4;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I csn unavailable, do not show", &buf, 2u);
      }

      v26 = *(a1 + 32);
      if (v8 < 0)
      {
        sub_100005F2C(v116, __src, v7);
      }

      else
      {
        v116[0] = __src;
        v116[1] = v7;
        *v117 = v130[0];
        *&v117[3] = *(v130 + 3);
        v118 = v8;
      }

      (*(v26 + 16))(v26, isSimReady, v68, v116, 0);
      if ((v118 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      v32 = v116[0];
    }

    else
    {
      v145 = *(v124 + 16);
      if (*(v3 + 256))
      {
        buf = 0uLL;
        (*(**(v3 + 96) + 64))(&buf);
        if (((*(**(v3 + 160) + 176))(*(v3 + 160)) & 1) != 0 || *v2 != *(v3 + 1040) || ((*v131 = (*(**(v3 + 256) + 104))(*(v3 + 256)), v132 = v20, *v131 == v145) ? (v21 = v20 == *(&v145 + 1)) : (v21 = 0), !v21 || !buf || ((*(*buf + 184))(buf) & 1) == 0))
        {
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            sub_101772F88();
          }

          v22 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(__p, __src, v7);
          }

          else
          {
            __p[0] = __src;
            __p[1] = v7;
            *v114 = v130[0];
            *&v114[3] = *(v130 + 3);
            v115 = v8;
          }

          (*(v22 + 16))(v22, 0, v68, __p, 0);
          if (v115 < 0)
          {
            operator delete(__p[0]);
          }

          if (*(&buf + 1))
          {
            sub_100004A34(*(&buf + 1));
          }

          goto LABEL_69;
        }

        if (*(&buf + 1))
        {
          sub_100004A34(*(&buf + 1));
        }
      }

      else if (*(v3 + 1224) == 1)
      {
        (*(**(v3 + 160) + 272))(&buf);
        v27 = buf;
        *v131 = &buf;
        sub_1000DC8D4(v131);
        if (v27 != *(&v27 + 1))
        {
          v28 = *v4;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I tinker paired and pending ALS profile/es", &buf, 2u);
          }

          v29 = *(a1 + 48);
          v30 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v110, __src, v7);
          }

          else
          {
            v110[0] = __src;
            v110[1] = v7;
            *v111 = v130[0];
            *&v111[3] = *(v130 + 3);
            v112 = v8;
          }

          (*(v30 + 16))(v30, v29 == 1, v68, v110, 0);
          if ((v112 & 0x80000000) == 0)
          {
            goto LABEL_69;
          }

          v32 = v110[0];
          goto LABEL_68;
        }
      }

      if (isSimReady)
      {
        (*(**(v3 + 160) + 240))(&buf);
        v33 = buf;
        sub_100521AC8(&buf);
        if (v33 == 1)
        {
          v35 = *v4;
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I has a selectable plan", &buf, 2u);
          }

          v36 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v104, __src, v7);
          }

          else
          {
            v104[0] = __src;
            v104[1] = v7;
            *v105 = v130[0];
            *&v105[3] = *(v130 + 3);
            v106 = v8;
          }

          (*(v36 + 16))(v36, 0, v68, v104, 0);
          if (v106 < 0)
          {
            v32 = v104[0];
            goto LABEL_68;
          }

LABEL_69:
          if (v146 == 1)
          {
            if (SHIBYTE(v155) < 0)
            {
              operator delete(*(&v154 + 1));
            }

            if (SBYTE7(v154) < 0)
            {
              operator delete(v153);
            }

            if (SHIBYTE(v152) < 0)
            {
              operator delete(*(&v151 + 1));
            }

            if (SBYTE7(v151) < 0)
            {
              operator delete(v150);
            }

            *&buf = v149;
            sub_100034D1C(&buf);
            v31 = *(&v147 + 1);
            if (*(&v147 + 1))
            {
              *&v148 = *(&v147 + 1);
              goto LABEL_80;
            }
          }

LABEL_81:
          *&buf = &v124;
          sub_100112048(&buf);
          if (SBYTE7(v123) < 0)
          {
            v19 = __dst;
            goto LABEL_83;
          }

          goto LABEL_84;
        }

        v144 = 0u;
        v142 = 0u;
        memset(v143, 0, sizeof(v143));
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        v136 = 0u;
        v137 = 0u;
        buf = 0u;
        v135 = 0u;
        ctu::hex(&v145, 0x10, v34);
        rest::PairedDeviceInfoList::getDeviceForCsn();
        if (v133 < 0)
        {
          operator delete(*v131);
        }

        if (BYTE8(v144) == 1)
        {
          (*(**(v3 + 128) + 680))(v131);
          v39 = (*(**v131 + 88))(*v131, *v2, &v143[1], &v143[5]);
          if (v132)
          {
            sub_100004A34(v132);
          }

          if ((v39 & 1) == 0)
          {
            v47 = *v4;
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              sub_101772FBC(&buf, &v143[5], v47);
            }

            v48 = *(a1 + 32);
            if (v8 < 0)
            {
              sub_100005F2C(v101, __src, v7);
            }

            else
            {
              v101[0] = __src;
              v101[1] = v7;
              *v102 = v130[0];
              *&v102[3] = *(v130 + 3);
              v103 = v8;
            }

            (*(v48 + 16))(v48, 1, v68, v101, 21);
            if ((v103 & 0x80000000) == 0)
            {
              goto LABEL_218;
            }

            v59 = v101[0];
            goto LABEL_217;
          }
        }

        if (!v68)
        {
          v45 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            *v131 = 0;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I No cellular plan flow types allowed", v131, 2u);
          }

          v46 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v98, __src, v7);
          }

          else
          {
            v98[0] = __src;
            v98[1] = v7;
            *v99 = v130[0];
            *&v99[3] = *(v130 + 3);
            v100 = v8;
          }

          (*(v46 + 16))(v46, 0, 0, v98, 22);
          if ((v100 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v59 = v98[0];
          goto LABEL_217;
        }

        if (sub_10000BAA0())
        {
          LOBYTE(v86) = 1;
          v40 = sub_10005D028();
          sub_10000501C(v131, "EnablePlanSelection");
          sub_10005D0D8(v40, v131, &v86);
          if (v133 < 0)
          {
            operator delete(*v131);
          }

          if ((v86 & 1) == 0)
          {
            v51 = *v4;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *v131 = 0;
              _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Non-POR - allowing new plan", v131, 2u);
            }

            v52 = *(a1 + 32);
            if (v8 < 0)
            {
              sub_100005F2C(v95, __src, v7);
            }

            else
            {
              v95[0] = __src;
              v95[1] = v7;
              *v96 = v130[0];
              *&v96[3] = *(v130 + 3);
              v97 = v8;
            }

            (*(v52 + 16))(v52, 1, v68, v95, 0);
            if ((v97 & 0x80000000) == 0)
            {
              goto LABEL_218;
            }

            v59 = v95[0];
            goto LABEL_217;
          }
        }

        v41 = (*(**(v3 + 128) + 328))();
        v42 = 328;
        if (*(v3 + 1224))
        {
          v42 = 1368;
        }

        v43 = *(v3 + v42 + 64);
        if (v43 < v41 && v43)
        {
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            sub_1017730AC();
          }

          v44 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v92, __src, v7);
          }

          else
          {
            v92[0] = __src;
            v92[1] = v7;
            *v93 = v130[0];
            *&v93[3] = *(v130 + 3);
            v94 = v8;
          }

          (*(v44 + 16))(v44, 1, v68, v92, 32);
          if ((v94 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v59 = v92[0];
          goto LABEL_217;
        }

        if ((*(v3 + 736) & 1) == 0 && cellplan::CellularPlanControllerPhone::isRoaming(v3, *v2))
        {
          v49 = *v4;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *v131 = 0;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I device is in roaming", v131, 2u);
          }

          v50 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v89, __src, v7);
          }

          else
          {
            v89[0] = __src;
            v89[1] = v7;
            *v90 = v130[0];
            *&v90[3] = *(v130 + 3);
            v91 = v8;
          }

          (*(v50 + 16))(v50, 1, v68, v89, 14);
          if ((v91 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v59 = v89[0];
          goto LABEL_217;
        }

        (*(**(v3 + 128) + 680))(v131);
        v88 = 0;
        v53 = (*(**v131 + 40))(*v131, &v88, *v2);
        sub_10001021C(&v88);
        if (v132)
        {
          sub_100004A34(v132);
        }

        if (!v53)
        {
          goto LABEL_160;
        }

        if (*(v3 + 1224))
        {
          v54 = 11;
        }

        else
        {
          v54 = 10;
        }

        v87 = v54;
        (***(v3 + 128))(&v85);
        v86 = v85;
        v85 = 0uLL;
        PersonalityIdFromSlotId();
        v55 = sub_1001E8470(v3 + 848, v131, v87);
        if (v133 < 0)
        {
          operator delete(*v131);
        }

        if (*(&v86 + 1))
        {
          sub_100004A34(*(&v86 + 1));
        }

        if (*(&v85 + 1))
        {
          sub_100004A34(*(&v85 + 1));
        }

        *v131 = &v87;
        v56 = sub_10031D3B0(v3 + 1088, &v87, &unk_101802C98, v131);
        *v131 = v2;
        if (*(sub_10030C46C((v56 + 5), v2, &unk_101802C98, v131) + 8) == 2)
        {
          goto LABEL_160;
        }

        v68 &= 2u;
        if (v8 < 0)
        {
          v7 = 0;
          *__src = 0;
        }

        else
        {
          v8 = 0;
          __src &= 0xFFFFFFFFFFFFFF00;
        }

        if ((v68 != 0) | *&v55 & ((v55 & 0x100) >> 8) & 1)
        {
          if (v68)
          {
LABEL_160:
            if (*(v3 + 1224) == 1 && (*(**(v3 + 160) + 136))(*(v3 + 160), *v2))
            {
              v57 = *v4;
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                *v131 = 0;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I active remote plan found for primary iccid", v131, 2u);
              }

              v58 = *(a1 + 32);
              if (v8 < 0)
              {
                sub_100005F2C(v76, __src, v7);
              }

              else
              {
                v76[0] = __src;
                v76[1] = v7;
                *v77 = v130[0];
                *&v77[3] = *(v130 + 3);
                v78 = v8;
              }

              (*(v58 + 16))(v58, 0, v68, v76, 0);
              if ((v78 & 0x80000000) == 0)
              {
                goto LABEL_218;
              }

              v59 = v76[0];
            }

            else if ((*(**(v3 + 160) + 160))(*(v3 + 160)))
            {
              v60 = *v4;
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                *v131 = 0;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I Subscription is pending release", v131, 2u);
              }

              v61 = *(a1 + 32);
              if (v8 < 0)
              {
                sub_100005F2C(v73, __src, v7);
              }

              else
              {
                v73[0] = __src;
                v73[1] = v7;
                *v74 = v130[0];
                *&v74[3] = *(v130 + 3);
                v75 = v8;
              }

              (*(v61 + 16))(v61, 0, v68, v73, 0);
              if ((v75 & 0x80000000) == 0)
              {
                goto LABEL_218;
              }

              v59 = v73[0];
            }

            else
            {
              v62 = *(a1 + 32);
              if (v8 < 0)
              {
                sub_100005F2C(v70, __src, v7);
              }

              else
              {
                v70[0] = __src;
                v70[1] = v7;
                *v71 = v130[0];
                *&v71[3] = *(v130 + 3);
                v72 = v8;
              }

              (*(v62 + 16))(v62, 1, v68, v70, 0);
              if ((v72 & 0x80000000) == 0)
              {
LABEL_218:
                if (BYTE8(v144) == 1)
                {
                  sub_100DB14E0(&buf);
                }

                goto LABEL_69;
              }

              v59 = v70[0];
            }

LABEL_217:
            operator delete(v59);
            goto LABEL_218;
          }

          if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            v63 = sub_10006EE44(v87);
            sub_101773074(v63, v131);
          }

          v64 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v79, __src, v7);
          }

          else
          {
            v79[0] = __src;
            v79[1] = v7;
            *v80 = v130[0];
            *&v80[3] = *(v130 + 3);
            v81 = v8;
          }

          (*(v64 + 16))(v64, 0, 0, v79, 27);
          if ((v81 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v67 = v79;
        }

        else
        {
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            v65 = sub_10006EE44(v87);
            sub_10177303C(v65, v131);
          }

          v66 = *(a1 + 32);
          if (v8 < 0)
          {
            sub_100005F2C(v82, __src, v7);
          }

          else
          {
            v82[0] = __src;
            v82[1] = v7;
            *v83 = v130[0];
            *&v83[3] = *(v130 + 3);
            v84 = v8;
          }

          (*(v66 + 16))(v66, 0, v68, v82, 22);
          if ((v84 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v67 = v82;
        }

        v59 = *v67;
        goto LABEL_217;
      }

      v37 = *v4;
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I sim info not available or sim not ready", &buf, 2u);
      }

      v38 = *(a1 + 32);
      if (v8 < 0)
      {
        sub_100005F2C(v107, __src, v7);
      }

      else
      {
        v107[0] = __src;
        v107[1] = v7;
        *v108 = v130[0];
        *&v108[3] = *(v130 + 3);
        v109 = v8;
      }

      (*(v38 + 16))(v38, 0, v68, v107, 0);
      if ((v109 & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      v32 = v107[0];
    }

LABEL_68:
    operator delete(v32);
    goto LABEL_69;
  }

  v14 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I does not support remote cellular plan", &buf, 2u);
  }

  v15 = *(a1 + 32);
  if (v8 < 0)
  {
    sub_100005F2C(v127, __src, v7);
  }

  else
  {
    v127[0] = __src;
    v127[1] = v7;
    *v128 = v130[0];
    *&v128[3] = *(v130 + 3);
    v129 = v8;
  }

  (*(v15 + 16))(v15, 0, v68, v127, 0);
  if (v129 < 0)
  {
    v19 = v127[0];
LABEL_83:
    operator delete(v19);
  }

LABEL_84:
  if (v8 < 0)
  {
    operator delete(__src);
  }
}

void sub_100507F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (LOBYTE(STACK[0x338]) == 1)
  {
    sub_100DB14E0(&STACK[0x260]);
  }

  sub_1005032D8(&STACK[0x350]);
  sub_100319DE8(&a65);
  if (a10 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::isRoaming(void *a1, uint64_t a2)
{
  v14 = 0;
  if (sub_10000BAA0())
  {
    v4 = sub_10005D028();
    sub_10000501C(__p, "RoamingSignupOverride");
    sub_10005D0D8(v4, __p, &v14);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14)
    {
      return 0;
    }
  }

  v6 = a1[101];
  if (!v6)
  {
    goto LABEL_31;
  }

  v7 = a1 + 101;
  do
  {
    if (*(v6 + 28) >= a2)
    {
      v7 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < a2));
  }

  while (v6);
  if (v7 != a1 + 101 && *(v7 + 7) <= a2)
  {
    v8 = *(v7 + 8) == 4;
  }

  else
  {
LABEL_31:
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_1017730E0(a2);
    }

    v8 = 0;
  }

  v9 = a1[104];
  if (!v9)
  {
    goto LABEL_32;
  }

  v10 = a1 + 104;
  do
  {
    if (*(v9 + 28) >= a2)
    {
      v10 = v9;
    }

    v9 = *(v9 + 8 * (*(v9 + 28) < a2));
  }

  while (v9);
  if (v10 != a1 + 104 && *(v10 + 7) <= a2)
  {
    v11 = *(v10 + 32) ^ 1;
  }

  else
  {
LABEL_32:
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177315C(a2);
    }

    v11 = 0;
  }

  return v8 & v11;
}

void sub_100508448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = 0;
  *v47 = 0u;
  v48 = 0u;
  *v45 = 0u;
  v46 = 0u;
  *v43 = 0u;
  v44 = 0u;
  *v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  cellplan::CellularPlanControllerPhone::getRemoteDeviceInfoForEid_sync(a1, a3, &v35);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  memset(v27, 0, sizeof(v27));
  if (BYTE8(v35) != 1)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017731D8();
    }

LABEL_11:
    v7 = 0;
    goto LABEL_42;
  }

  std::string::operator=(v27, &v36);
  *&v27[24] = *(&v37 + 1);
  sub_100169D44(&v28, v38, *(&v38 + 1), 0x2E8BA2E8BA2E8BA3 * ((*(&v38 + 1) - v38) >> 3));
  *(&v29 + 1) = *(&v39 + 1);
  LODWORD(v30) = v40;
  if (*(&v28 + 1) != v28 && *(v28 + 80) == 1)
  {
    v6 = *(v28 + 56);
    v5 = *(v28 + 64);
    if (v5 != v6)
    {
      while (*(v6 + 92) != 1 || (a2 & 1) != 0)
      {
        v6 += 216;
        if (v6 == v5)
        {
          goto LABEL_13;
        }
      }

      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I cannot create remote provisioning, disable not allowed", v33, 2u);
      }

      goto LABEL_11;
    }
  }

  a2 = 0;
LABEL_13:
  if (!*(a1 + 272))
  {
    memset(v34, 0, sizeof(v34));
    *v33 = 0u;
    v8 = *(a1 + 40);
    v9 = os_signpost_id_generate(v8);
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = *(a1 + 40);
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CellularPlanRemoteProvisioning", "", buf, 2u);
      }
    }

    *buf = off_101E54C78;
    v51 = buf;
    *v33 = v9;
    *&v33[8] = os_retain(v8);
    sub_1000148FC(v34, buf);
    sub_10001499C(buf);
    (***(a1 + 128))(&v25);
    sub_10000501C(&__p, "Remote_Provisioning");
    v31[0] = *v33;
    v31[1] = *&v33[8];
    sub_1000148FC(&v32, v34);
    memset(v33, 0, sizeof(v33));
    sub_100014A28(v34);
    Registry::createXpcJetsamAssertion();
    v11 = *buf;
    memset(buf, 0, sizeof(buf));
    v12 = *(a1 + 280);
    *(a1 + 272) = v11;
    if (v12)
    {
      sub_100004A34(v12);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    sub_100014DA8(v31);
    if (v24 < 0)
    {
      operator delete(__p);
    }

    if (v26)
    {
      sub_100004A34(v26);
    }

    sub_100014DA8(v33);
  }

  (*(**(a1 + 128) + 680))(buf);
  v13 = *buf;
  v14 = *(a1 + 24);
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  sub_100004AA0(&v25, (a1 + 8));
  if (v25)
  {
    v15 = v25 + 64;
  }

  else
  {
    v15 = 0;
  }

  v20 = v15;
  v21 = v26;
  v25 = 0;
  v26 = 0;
  (*(*v13 + 24))(v33, v13, &object, &v20, a2);
  v16 = *v33;
  memset(v33, 0, sizeof(v33));
  v17 = *(a1 + 264);
  *(a1 + 256) = v16;
  if (v17)
  {
    sub_100004A34(v17);
    if (*&v33[8])
    {
      sub_100004A34(*&v33[8]);
    }
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v7 = 1;
LABEL_42:
  *v33 = &v28;
  sub_100112048(v33);
  if ((v27[23] & 0x80000000) != 0)
  {
    operator delete(*v27);
  }

  if (BYTE8(v40) == 1)
  {
    if (SBYTE7(v48) < 0)
    {
      operator delete(v47[0]);
    }

    if (BYTE8(v44) == 1)
    {
      if (SBYTE7(v46) < 0)
      {
        operator delete(v45[0]);
      }

      BYTE8(v44) = 0;
    }

    if (BYTE8(v42) == 1)
    {
      if (SBYTE7(v44) < 0)
      {
        operator delete(v43[0]);
      }

      BYTE8(v42) = 0;
    }

    if (SBYTE7(v42) < 0)
    {
      operator delete(v41[0]);
    }

    BYTE8(v40) = 0;
  }

  sub_100520C0C(&v35 + 8);
  return v7;
}

void sub_100508960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  sub_100014DA8(&a30);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_100014DA8(&a36);
  sub_100319DE8(&a20);
  sub_100508A1C(&a42);
  _Unwind_Resume(a1);
}

uint64_t sub_100508A1C(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 215) < 0)
    {
      operator delete(*(a1 + 192));
    }

    if (*(a1 + 152) == 1)
    {
      if (*(a1 + 183) < 0)
      {
        operator delete(*(a1 + 160));
      }

      *(a1 + 152) = 0;
    }

    if (*(a1 + 120) == 1)
    {
      if (*(a1 + 151) < 0)
      {
        operator delete(*(a1 + 128));
      }

      *(a1 + 120) = 0;
    }

    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    *(a1 + 88) = 0;
  }

  sub_100520C0C((a1 + 8));
  return a1;
}

const void **cellplan::CellularPlanControllerPhone::handleNewRemoteDataPlanFlowTriggered(uint64_t a1, int a2, char a3, const void **a4, const void **a5, char a6, uint64_t a7)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_100508C14;
  v13[3] = &unk_101E53A08;
  v16 = a2;
  v13[4] = a7;
  v13[5] = a1;
  sub_10005C7A4(&v14, a4);
  sub_10005C7A4(&v15, a5);
  v17 = a6;
  v18 = a3;
  v21 = 0;
  v22 = 0;
  sub_100004AA0(&v21, (a1 + 8));
  v11 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v21;
  v20 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v13;
  dispatch_async(v11, block);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_100005978(&v15);
  return sub_100005978(&v14);
}

void sub_100508C14(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 64));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I handleNewRemoteDataPlanFlowTriggered", buf, 2u);
  }

  *buf = 0u;
  v13 = 0u;
  (*(**(v2 + 128) + 680))(&v10);
  (*(*v10 + 48))(buf);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if ((buf[0] & 2) != 0)
  {
    v4 = *(a1 + 64);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1174405120;
    v5[2] = sub_1005098FC;
    v5[3] = &unk_101E539D0;
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    sub_10005C7A4(&v6, (a1 + 48));
    sub_10005C7A4(&v7, (a1 + 56));
    v8 = *(a1 + 64);
    v9 = *(a1 + 68);
    cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(v2, v4, v5);
    sub_100005978(&v7);
    sub_100005978(&v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(*&buf[8]);
  }
}

void sub_100508E04(_Unwind_Exception *a1)
{
  sub_100005978((v1 + 56));
  sub_100005978((v1 + 48));
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

_BYTE *cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v37 = a2;
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v72 = 0uLL;
  v7 = 328;
  if (*(a1 + 1224))
  {
    v7 = 1368;
  }

  v8 = a1 + v7;
  v9 = *(a1 + v7 + 32);
  if (*(v8 + 40) != v9 && *(v8 + 24) == 1)
  {
    v72 = *(v9 + 16);
  }

  v36 = 0u;
  memset(v35, 0, sizeof(v35));
  ctu::hex(&v72, 0x10, v5);
  rest::PairedDeviceInfoList::getDeviceForCsn();
  if (SBYTE7(v58) < 0)
  {
    operator delete(__p[0]);
  }

  v71 = 0;
  *v69 = 0u;
  v70 = 0u;
  *v67 = 0u;
  v68 = 0u;
  *v65 = 0u;
  v66 = 0u;
  *v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  *__p = 0u;
  v58 = 0u;
  cellplan::CellularPlanControllerPhone::getRemoteDeviceInfoForEid_sync(a1, &v72, __p);
  *v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  *v54 = 0u;
  *v51 = 0u;
  *v52 = 0u;
  memset(v50, 0, sizeof(v50));
  *v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  sub_100922C88(v37, (a1 + 304), &v47);
  if (LOBYTE(__p[1]) == 1 && v60 != *(&v60 + 1) && *(v60 + 12) == 5)
  {
    v10 = 64;
    goto LABEL_45;
  }

  (*(**(a1 + 160) + 240))(buf);
  if (buf[0] == 1)
  {
    if (v46 < 0)
    {
      operator delete(v45);
    }

    if (v44 < 0)
    {
      operator delete(v43);
    }

    if (v42 < 0)
    {
      operator delete(v40);
    }

    v11 = *v6;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I has selectable profile", buf, 2u);
    }

    v10 = 15;
    goto LABEL_45;
  }

  if (*(a1 + 256))
  {
    v12 = *v6;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I another user operation is running", buf, 2u);
    }

    v10 = 13;
    goto LABEL_45;
  }

  *buf = 0;
  v40 = 0;
  if (v72 != 0 && (__p[1] & 1) != 0 && (BYTE8(v62) & 1) != 0 && (BYTE8(v36) & 1) != 0)
  {
    (*(**(a1 + 128) + 680))(buf);
    v13 = (*(**buf + 88))(*buf, v37, &v35[9] + 8, &v35[11] + 8);
    if (v40)
    {
      sub_100004A34(v40);
    }

    if (v13)
    {
      if ((__p[1] & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }

      if (HIDWORD(v59) == 1)
      {
        v14 = *v6;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I remote device locked", buf, 2u);
        }

        v10 = 30;
        goto LABEL_45;
      }

      if (BYTE13(v61) == 1 && BYTE12(v61) == 1)
      {
        v19 = *v6;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I card out of memory", buf, 2u);
        }

        v10 = 20;
        goto LABEL_45;
      }

      if (LOBYTE(__p[0]) == 1)
      {
        (*(**(a1 + 160) + 272))(buf);
        v20 = *buf;
        v21 = v40;
        *v38 = buf;
        sub_1000DC8D4(v38);
        if (v20 != v21)
        {
          v22 = *v6;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I tinker paired and pending ALS profile/es", buf, 2u);
          }

LABEL_85:
          v10 = 0;
          goto LABEL_45;
        }
      }

      if (v47 == 1 && subscriber::isSimLocked())
      {
        v23 = *v6;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I sim is pin locked", buf, 2u);
        }

        v10 = 31;
        goto LABEL_45;
      }

      if (*(a1 + 736) == 1)
      {
        v24 = *v6;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I airplane mode is on", buf, 2u);
        }

        v10 = 28;
        goto LABEL_45;
      }

      if (*(a1 + 737))
      {
        if (cellplan::CellularPlanControllerPhone::isRoaming(a1, v37))
        {
          v25 = *v6;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I international roaming", buf, 2u);
          }

          v10 = 14;
          goto LABEL_45;
        }

        (*(**(a1 + 128) + 680))(buf);
        v34 = 0;
        if ((*(**buf + 40))(*buf, &v34, v37) && LOBYTE(__p[0]) == 1)
        {
          *v38 = 11;
          v27 = sub_100007DEC(a1 + 1088, v38);
          v28 = *sub_1000A8C4C(v27, &v37);
          sub_10001021C(&v34);
          if (v40)
          {
            sub_100004A34(v40);
          }

          if (v28 != 2)
          {
            v29 = *v6;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v30 = "#I not entitled for SA-Watch service";
LABEL_121:
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
              goto LABEL_122;
            }

            goto LABEL_122;
          }
        }

        else
        {
          sub_10001021C(&v34);
          if (v40)
          {
            sub_100004A34(v40);
          }
        }

        (*(**(a1 + 128) + 680))(buf);
        v33 = 0;
        if (!(*(**buf + 40))(*buf, &v33, v37) || (__p[0] & 1) != 0)
        {
          sub_10001021C(&v33);
          if (v40)
          {
            sub_100004A34(v40);
          }

          goto LABEL_85;
        }

        *v38 = 10;
        v31 = sub_100007DEC(a1 + 1088, v38);
        v32 = *sub_1000A8C4C(v31, &v37);
        sub_10001021C(&v33);
        if (v40)
        {
          sub_100004A34(v40);
        }

        if (v32 == 2)
        {
          goto LABEL_85;
        }

        v29 = *v6;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v30 = "#I not entitled for Multi-SIM service";
          goto LABEL_121;
        }

LABEL_122:
        v10 = 27;
        goto LABEL_45;
      }

      v26 = *v6;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I cellular data is turned off", buf, 2u);
      }

      v10 = 29;
    }

    else
    {
      v18 = *v6;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I sku mismatch", buf, 2u);
      }

      v10 = 21;
    }
  }

  else
  {
    v15 = *v6;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      v16 = v41 >= 0 ? buf : *buf;
      *v38 = 136315138;
      *&v38[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I csn (%s) not found, skip", v38, 0xCu);
      if (v41 < 0)
      {
        operator delete(*buf);
      }
    }

    v10 = 16;
  }

LABEL_45:
  (*(a3 + 16))(a3, v72, *(&v72 + 1), v10);
  if (v47 == 1)
  {
    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55[1]);
    }

    if (SHIBYTE(v55[0]) < 0)
    {
      operator delete(v54[0]);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52[1]);
    }

    if (SHIBYTE(v52[0]) < 0)
    {
      operator delete(v51[0]);
    }

    *buf = v50;
    sub_100034D1C(buf);
    if (v48[1])
    {
      *&v49 = v48[1];
      operator delete(v48[1]);
    }
  }

  if (BYTE8(v62) == 1)
  {
    if (SBYTE7(v70) < 0)
    {
      operator delete(v69[0]);
    }

    if (BYTE8(v66) == 1)
    {
      if (SBYTE7(v68) < 0)
      {
        operator delete(v67[0]);
      }

      BYTE8(v66) = 0;
    }

    if (BYTE8(v64) == 1)
    {
      if (SBYTE7(v66) < 0)
      {
        operator delete(v65[0]);
      }

      BYTE8(v64) = 0;
    }

    if (SBYTE7(v64) < 0)
    {
      operator delete(v63[0]);
    }

    BYTE8(v62) = 0;
  }

  result = sub_100520C0C(&__p[1]);
  if (BYTE8(v36) == 1)
  {
    return sub_100DB14E0(v35);
  }

  return result;
}

void sub_10050984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_10001021C(&a9);
  if (a44)
  {
    sub_100004A34(a44);
  }

  sub_1005032D8(&a55);
  sub_100508A1C(&STACK[0x220]);
  if (a38 == 1)
  {
    sub_100DB14E0(&a11);
  }

  _Unwind_Resume(a1);
}

void sub_1005098FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    sub_10032E870();
  }

  v4 = *(*(a1 + 32) + 16);

  v4();
}

void sub_100509DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, std::__shared_weak_count *a46)
{
  sub_1000DA89C(&a9);
  if (a33)
  {
    sub_100004A34(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a46)
  {
    sub_100004A34(a46);
  }

  _Unwind_Resume(a1);
}

const void **sub_100509EBC(uint64_t a1, uint64_t a2)
{
  sub_10005C7A4((a1 + 48), (a2 + 48));

  return sub_10005C7A4((a1 + 56), (a2 + 56));
}

const void **sub_100509F04(uint64_t a1)
{
  sub_100005978((a1 + 56));

  return sub_100005978((a1 + 48));
}

const void **cellplan::CellularPlanControllerPhone::handleUserEnteredRemoteDataPlanFlowTriggered(uint64_t a1, int a2, char a3, const void **a4, const void **a5, const void **a6, const void **a7, char a8, uint64_t a9)
{
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1174405120;
  v17[2] = sub_10050A0D8;
  v17[3] = &unk_101E53A78;
  v22 = a2;
  v17[4] = a9;
  v17[5] = a1;
  sub_10005C7A4(&v18, a4);
  sub_10005C7A4(&v19, a5);
  sub_10005C7A4(&v20, a6);
  sub_10005C7A4(&v21, a7);
  v23 = a8;
  v24 = a3;
  v27 = 0;
  v28 = 0;
  sub_100004AA0(&v27, (a1 + 8));
  v15 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v27;
  v26 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v17;
  dispatch_async(v15, block);
  if (v26)
  {
    sub_100004A34(v26);
  }

  if (v28)
  {
    sub_100004A34(v28);
  }

  sub_100005978(&v21);
  sub_100005978(&v20);
  sub_100005978(&v19);
  return sub_100005978(&v18);
}

void sub_10050A0D8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 80));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I handleUserEnteredRemoteDataPlanFlowTriggered", buf, 2u);
  }

  *buf = 0u;
  v15 = 0u;
  (*(**(v2 + 128) + 680))(&v12);
  (*(*v12 + 48))(buf);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if ((buf[0] & 2) != 0)
  {
    v4 = *(a1 + 80);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1174405120;
    v5[2] = sub_10050A348;
    v5[3] = &unk_101E53A40;
    v5[4] = *(a1 + 32);
    v5[5] = v2;
    sub_10005C7A4(&v6, (a1 + 48));
    sub_10005C7A4(&v7, (a1 + 56));
    sub_10005C7A4(&v8, (a1 + 64));
    sub_10005C7A4(&v9, (a1 + 72));
    v10 = *(a1 + 80);
    v11 = *(a1 + 84);
    cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(v2, v4, v5);
    sub_100005978(&v9);
    sub_100005978(&v8);
    sub_100005978(&v7);
    sub_100005978(&v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(*&buf[8]);
  }
}

void sub_10050A2F0(_Unwind_Exception *a1)
{
  sub_100005978(v1 + 9);
  sub_100005978(v1 + 8);
  sub_100005978(v1 + 7);
  sub_100005978(v1 + 6);
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  _Unwind_Resume(a1);
}

void sub_10050A348(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a4)
  {
    sub_10032E870();
  }

  v4 = *(*(a1 + 32) + 16);

  v4();
}

void sub_10050A834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, void *__p, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  sub_1000DA89C(&a10);
  if (a34)
  {
    sub_100004A34(a34);
  }

  if (a39)
  {
    sub_100004A34(a39);
  }

  _Unwind_Resume(a1);
}

const void **sub_10050A8E0(const void **a1, const void **a2)
{
  sub_10005C7A4(a1 + 6, a2 + 6);
  sub_10005C7A4(a1 + 7, a2 + 7);
  sub_10005C7A4(a1 + 8, a2 + 8);

  return sub_10005C7A4(a1 + 9, a2 + 9);
}

const void **sub_10050A940(const void **a1)
{
  sub_100005978(a1 + 9);
  sub_100005978(a1 + 8);
  sub_100005978(a1 + 7);

  return sub_100005978(a1 + 6);
}

void cellplan::CellularPlanControllerPhone::handleAddNewRemotePlanTapped(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_10050AAA0;
  v6[3] = &unk_101E53AD8;
  v7 = a2;
  v6[4] = a4;
  v6[5] = a1;
  v8 = a3;
  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }
}

_BYTE *sub_10050AAA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 48));
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I handleAddNewRemotePlanTapped", buf, 2u);
  }

  v5 = *(a1 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10050ABAC;
  v7[3] = &unk_101E53AB0;
  v7[4] = *(a1 + 32);
  v7[5] = v2;
  v8 = v5;
  v7[6] = v3;
  v9 = *(a1 + 52);
  return cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(v2, v5, v7);
}

void sub_10050ABAC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v60 = a2;
  v61 = a3;
  v5 = *(a1 + 40);
  if (a4)
  {
    if (a4 == 13)
    {
      memset(buf, 0, sizeof(buf));
      (*(**(v5 + 96) + 64))(buf);
      if (*(a1 + 56) == *(v5 + 1040))
      {
        *v49 = (*(**(v5 + 256) + 104))(*(v5 + 256));
        *&v49[8] = v7;
        v8 = *v49 == v60 && v7 == v61;
        if (v8 && *buf && (*(**buf + 184))(*buf))
        {
          v17 = **(a1 + 48);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v49 = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I resume previous websheet flow", v49, 2u);
          }

          (*(**buf + 176))(*buf);
        }
      }

      (*(*(a1 + 32) + 16))();
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    else
    {
      if (a4 == 15)
      {
        v6 = *(*(a1 + 32) + 16);
LABEL_19:

        v6();
        return;
      }

      v10 = *(*(a1 + 32) + 16);

      v10();
    }
  }

  else
  {
    if (!cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(*(a1 + 40), *(a1 + 60), &v60))
    {
      v6 = *(*(a1 + 32) + 16);
      goto LABEL_19;
    }

    (*(**(v5 + 128) + 688))(v49);
    if ((***v49)(*v49, *(a1 + 56)))
    {
      rest::PairedDeviceInfoList::getActiveDevice(buf, (v5 + 896));
      v9 = buf[0] == 1;
      sub_100DB14E0(buf);
    }

    else
    {
      v9 = 0;
    }

    if (*&v49[8])
    {
      sub_100004A34(*&v49[8]);
    }

    if (v9)
    {
      v11 = **(a1 + 48);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I carrier needs VoLTE setting to default", buf, 2u);
      }

      (*(**(v5 + 128) + 688))(buf);
      (*(**buf + 16))(*buf);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      (*(**(v5 + 128) + 688))(buf);
      (*(**buf + 8))(*buf);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = _Block_copy(v12);
    }

    v13 = *(v5 + 1216);
    *(v5 + 1216) = v12;
    if (v13)
    {
      _Block_release(v13);
    }

    v14 = **(a1 + 48);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I launch entitlements flow", buf, 2u);
    }

    *(v5 + 1040) = *(a1 + 56);
    v59 = 0u;
    *v58 = 0u;
    *v57 = 0u;
    v56 = 0u;
    *v55 = 0u;
    *v54 = 0u;
    v53 = 0u;
    *__src = 0u;
    v51 = 0u;
    *v49 = 0u;
    *v50 = 0u;
    (*(**(v5 + 160) + 256))(v49);
    if (v49[0] == 1)
    {
      RemoteVinylInfo::findProfile();
      if (v48 != 1)
      {
        v44 = 0;
        v45 = 0;
        sub_10032E870();
      }

      sub_100E3A5D4(buf);
    }

    v15 = *(v5 + 256);
    v16 = *(v5 + 1040);
    v29[0] = 0;
    v42 = 0;
    (**v15)(v15, &v60, v16, v29);
    if (v42 == 1)
    {
      if (v41 < 0)
      {
        operator delete(__p);
      }

      if (v39 < 0)
      {
        operator delete(v38);
      }

      if (v37 < 0)
      {
        operator delete(v36);
      }

      if (v35 < 0)
      {
        operator delete(v34);
      }

      if (v33 < 0)
      {
        operator delete(v32);
      }

      if (v31 < 0)
      {
        operator delete(v30);
      }
    }

    *(&v44 + 3) = 0;
    LODWORD(v44) = 0;
    v43 = 0;
    (*(**(v5 + 128) + 120))(&v43);
    if (v43)
    {
      memset(buf, 0, sizeof(buf));
      v47 = 0;
      ctu::cf::assign();
      v18 = *buf;
      v19 = *&buf[8];
      LODWORD(v44) = v47;
      *(&v44 + 3) = *(&v47 + 3);
      v20 = HIBYTE(v47);
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
    }

    sub_100005978(&v43);
    rest::PairedDeviceInfoList::getActiveDevice(buf, (v5 + 896));
    if (buf[0] == 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }

    sub_100DB14E0(buf);
    (*(**(v5 + 128) + 680))(buf);
    v28 = 0;
    v22 = (*(**buf + 152))(*buf, &v28, *(v5 + 1040), v21);
    sub_10001021C(&v28);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    isAnyDeviceInState = rest::PairedDeviceInfoList::isAnyDeviceInState();
    v24 = *(v5 + 208);
    if (v20 < 0)
    {
      sub_100005F2C(v25, v18, v19);
    }

    else
    {
      v25[0] = v18;
      v25[1] = v19;
      *v26 = v44;
      *&v26[3] = *(&v44 + 3);
      v27 = v20;
    }

    (*(*v24 + 88))(v24, v25, 0, v21, isAnyDeviceInState, v22);
    if (v27 < 0)
    {
      operator delete(v25[0]);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (v49[0] == 1)
    {
      if (SHIBYTE(v59) < 0)
      {
        operator delete(v58[1]);
      }

      if (SHIBYTE(v58[0]) < 0)
      {
        operator delete(v57[0]);
      }

      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55[1]);
      }

      if (SHIBYTE(v55[0]) < 0)
      {
        operator delete(v54[0]);
      }

      if (SBYTE7(v53) < 0)
      {
        operator delete(__src[0]);
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[1]);
      }
    }
  }
}

void sub_10050B8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    sub_100004A34(a65);
  }

  if (a66)
  {
    sub_100004A34(a66);
  }

  sub_10050BB74(&STACK[0x3F0]);
  _Unwind_Resume(a1);
}

__n128 sub_10050BA94@<Q0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    v5 = *a1;
    v4 = (a1[1] + *a1);
  }

  else
  {
    v4 = (a1 + *(a1 + 23));
    v5 = a1;
  }

  if (v5 == v4)
  {
    v6 = *(a1 + 23);
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    do
    {
      *v5 = __tolower(*v5);
      v5 = (v5 + 1);
    }

    while (v5 != v4);
    v6 = *(a1 + 23);
    if ((v6 & 0x80) == 0)
    {
LABEL_7:
      if (v6 && *(a1 + v6 - 1) == 102)
      {
        v7 = v6 - 1;
        *(a1 + 23) = v7;
        v8 = a1;
LABEL_14:
        *(v8 + v7) = 0;
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  v9 = a1[1];
  if (v9)
  {
    v8 = *a1;
    if (*(*a1 + v9 - 1) == 102)
    {
      v7 = v9 - 1;
      a1[1] = v7;
      goto LABEL_14;
    }
  }

LABEL_15:
  result = *a1;
  *a2 = *a1;
  *(a2 + 16) = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return result;
}

uint64_t sub_10050BB74(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 175) < 0)
    {
      operator delete(*(a1 + 152));
    }

    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *a1 = 0;
  }

  return a1;
}

void cellplan::CellularPlanControllerPhone::userDidTapManageRemotePlan(uint64_t a1, __int128 *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1174405120;
  v4[2] = sub_10050BD50;
  v4[3] = &unk_101E53AF8;
  v4[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v6 = *(a2 + 2);
  }

  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }
}

void sub_10050BD50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 63);
  if (v2 < 0)
  {
    v3 = *(a1 + 48);
  }

  else
  {
    v3 = *(a1 + 63);
  }

  v4 = *(v1 + 40);
  if (v3)
  {
    v5 = (a1 + 40);
    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      if ((v2 & 0x80000000) != 0)
      {
        v6 = *v5;
      }

      *buf = 136315138;
      v30[0] = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I user wants to manage remote plan (%s)", buf, 0xCu);
    }

    v39 = 0uLL;
    v7 = 328;
    if (*(v1 + 1224))
    {
      v7 = 1368;
    }

    v9 = (v1 + v7 + 32);
    v8 = *v9;
    if (v9[1] != *v9)
    {
      v39 = *(v8 + 16);
      bzero(buf, 0x318uLL);
      (*(**(v1 + 160) + 224))(buf);
      if ((buf[0] & 1) == 0)
      {
        if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_10177320C();
        }

        goto LABEL_60;
      }

      if (v38 == 1 && (v11 = sub_100922CEC(v35, (v1 + 304)), v12 = v11, (v11 & 0x100000000) != 0))
      {
        v13 = v11 >> 8;
      }

      else
      {
        if ((*(v1 + 1224) & 1) == 0)
        {
          if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101773240();
          }

          goto LABEL_60;
        }

        v12 = 0;
        v13 = 0;
      }

      if (!*(v1 + 256))
      {
        *(v1 + 1040) = v12 | (v13 << 8);
        if (v38 == 1)
        {
          ctu::hex(&v39, 0x10, v10);
          rest::PairedDeviceInfoList::getDeviceNameForCsn();
          p_p = &__p;
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p);
          }

          __p = v24;
          v37 = v25;
          HIBYTE(v25) = 0;
          LOBYTE(v24) = 0;
          if (v28 < 0)
          {
            operator delete(*v26);
          }

          v17 = HIBYTE(v37);
          if (v37 < 0)
          {
            v17 = *(&__p + 1);
          }

          if (!v17)
          {
            if (SHIBYTE(v37) < 0)
            {
              *(&__p + 1) = 11;
              p_p = __p;
            }

            else
            {
              HIBYTE(v37) = 11;
            }

            strcpy(p_p, "Apple Watch");
          }

          cellplan::CellularPlanControllerPhone::setRemotePlanSignupRequest_sync(v1, *(v1 + 1040), 0, v5, v35);
        }

        v19 = *(v1 + 24);
        object = v19;
        if (v19)
        {
          dispatch_retain(v19);
        }

        sub_100004AA0(v26, (v1 + 8));
        if (*v26)
        {
          v20 = *v26 + 64;
        }

        else
        {
          v20 = 0;
        }

        v22[0] = v20;
        v22[1] = v27;
        *v26 = 0;
        v27 = 0;
        (*(**(v1 + 128) + 680))(&v21);
        sub_1003A5D8C(&object, v22, &v21);
      }

      v24 = 0uLL;
      (*(**(v1 + 96) + 64))(&v24);
      if ((v12 | (v13 << 8)) == *(v1 + 1040) && ((*v26 = (*(**(v1 + 256) + 104))(*(v1 + 256)), v27 = v14, *v26 == v39) ? (v15 = v14 == *(&v39 + 1)) : (v15 = 0), v15 && v24 && (*(*v24 + 184))(v24)))
      {
        v18 = *(v1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v26 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I resume previous websheet flow", v26, 2u);
        }

        (*(*v24 + 176))(v24);
      }

      else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101773274();
      }

      if (*(&v24 + 1))
      {
        sub_100004A34(*(&v24 + 1));
      }

LABEL_60:
      if (buf[0] == 1)
      {
        sub_1005230E0(&v34);
        if (v33 < 0)
        {
          operator delete(v32);
        }

        if (v31 < 0)
        {
          operator delete(*(v30 + 4));
        }
      }

      return;
    }

    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017732A8();
    }
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017732DC();
  }
}

void sub_10050C358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_10050CC20(&a26);
  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::setRemotePlanSignupRequest_sync(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v60 = 0uLL;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  __dst = 0u;
  v46 = 0u;
  v11 = 328;
  if (*(a1 + 1224))
  {
    v11 = 1368;
  }

  v12 = (a1 + v11);
  if (*(a1 + v11 + 23) < 0)
  {
    sub_100005F2C(&__dst, *v12, *(v12 + 1));
  }

  else
  {
    __dst = *v12;
    *&v46 = *(v12 + 2);
  }

  v13 = *(v12 + 4);
  *(&v46 + 1) = *(v12 + 3);
  v47 = 0uLL;
  *&v48 = 0;
  sub_10027E628(&v47, v13, *(v12 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v12 + 5) - v13) >> 3));
  *(&v48 + 1) = *(v12 + 7);
  LODWORD(v49) = *(v12 + 16);
  if (*(&v47 + 1) == v47 || a3 && BYTE8(v46) != 1)
  {
    v15 = 0;
    goto LABEL_81;
  }

  v60 = *(v47 + 16);
  v44 = 0u;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  memset(v35, 0, sizeof(v35));
  ctu::hex(&v60, 0x10, v14);
  rest::PairedDeviceInfoList::getDeviceForCsn();
  if (SBYTE7(v51) < 0)
  {
    operator delete(__p);
  }

  v15 = BYTE8(v44);
  if ((BYTE8(v44) & 1) == 0)
  {
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      sub_101773310();
    }

    goto LABEL_79;
  }

  std::string::operator=((a5 + 24), &v36);
  v16 = *(a4 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a4 + 8);
  }

  if (!v16)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    memset(v53, 0, sizeof(v53));
    v51 = 0u;
    v52 = 0u;
    __p = 0u;
    sub_100922C88(a2, (a1 + 304), &__p);
    if (__p == 1)
    {
      std::string::operator=(a5, &v54);
      if (__p)
      {
        if (SHIBYTE(v59) < 0)
        {
          operator delete(*(&v58 + 1));
        }

        if (SBYTE7(v58) < 0)
        {
          operator delete(v57);
        }

        if (SHIBYTE(v56) < 0)
        {
          operator delete(*(&v55 + 1));
        }

        if (SBYTE7(v55) < 0)
        {
          operator delete(v54);
        }

        *&v31 = v53;
        sub_100034D1C(&v31);
        if (*(&v51 + 1))
        {
          *&v52 = *(&v51 + 1);
          operator delete(*(&v51 + 1));
        }
      }
    }
  }

  v17 = HIBYTE(v38);
  if (v38 < 0)
  {
    v17 = v38;
  }

  if (v17)
  {
    sub_10016C728((a5 + 72), (&v37 + 8));
  }

  v18 = BYTE7(v40);
  if (SBYTE7(v40) < 0)
  {
    v18 = *(&v39 + 1);
  }

  if (v18)
  {
    sub_10016C728((a5 + 104), &v39);
  }

  (*(**(a1 + 128) + 680))(&__p);
  v19 = (*(*__p + 128))(__p, a2);
  if (*(&__p + 1))
  {
    sub_100004A34(*(&__p + 1));
  }

  if (v19)
  {
    (*(**(a1 + 128) + 680))(&__p);
    *(a5 + 212) = (*(*__p + 176))(__p, &v43[8]);
    *(a5 + 208) = 1;
    if (*(&__p + 1))
    {
      sub_100004A34(*(&__p + 1));
    }

    if (*(&v47 + 1) == v47)
    {
      sub_1002030E0();
    }

    if (*(v47 + 55) < 0)
    {
      sub_100005F2C(v33, *(v47 + 32), *(v47 + 40));
    }

    else
    {
      *v33 = *(v47 + 32);
      v34 = *(v47 + 48);
    }

    v20 = sub_100927A9C(v33);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v33[0]);
    }

    if (v20)
    {
      *(a5 + 220) = v20;
      *(a5 + 216) = 1;
    }
  }

  v21 = *(a4 + 23);
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a4 + 8);
  }

  if (v21)
  {
    v22 = *(a5 + 56);
    if (v22 >= *(a5 + 64))
    {
      v23 = sub_1000053A0(a5 + 48, a4);
    }

    else
    {
      sub_10011C7A4((a5 + 48), a4);
      v23 = v22 + 24;
    }

    *(a5 + 56) = v23;
  }

  else
  {
    memset(v32, 0, sizeof(v32));
    sub_10027E628(v32, v47, *(&v47 + 1), 0x2E8BA2E8BA2E8BA3 * ((*(&v47 + 1) - v47) >> 3));
    cellplan::CellularPlanControllerPhone::getRemoteIccidsForSignup_sync(a1, a2, v32, (a5 + 48));
    *&__p = v32;
    sub_100112048(&__p);
  }

  sub_10052C700(a5 + 136, &off_101E53948);
  if (*(a1 + 1224) == 1)
  {
    *(a5 + 172) = 2;
    *(a5 + 168) = 1;
    v24 = &off_101EC7CA8;
  }

  else
  {
    (***(a1 + 128))(&v30);
    v31 = v30;
    v30 = 0uLL;
    PersonalityIdFromSlotId();
    v25 = sub_1001E8470(a1 + 848, &__p, 0xBu);
    if (SBYTE7(v51) < 0)
    {
      operator delete(__p);
    }

    if (*(&v31 + 1))
    {
      sub_100004A34(*(&v31 + 1));
    }

    v26 = *&v25 & ((v25 & 0x100) >> 8);
    if (*(&v30 + 1))
    {
      sub_100004A34(*(&v30 + 1));
    }

    if (!v26)
    {
      goto LABEL_70;
    }

    v24 = off_101EC7CA0;
  }

  sub_10052C700(a5 + 176, v24);
LABEL_70:
  if ((*(a1 + 1224) & 1) == 0)
  {
    (*(**(a1 + 128) + 680))(&__p);
    v29 = 0;
    v27 = (*(*__p + 152))(__p, &v29, *(a1 + 1040), 1);
    sub_10001021C(&v29);
    if (*(&__p + 1))
    {
      sub_100004A34(*(&__p + 1));
    }

    if (v27)
    {
      *(a5 + 226) = 257;
    }
  }

  if ((*(**(a1 + 128) + 336))(*(a1 + 128), a2) && v47 != *(&v47 + 1) && VinylInfo::isVinylPairingSupported(v47))
  {
    *(a5 + 224) = 257;
  }

LABEL_79:
  if (BYTE8(v44) == 1)
  {
    sub_100DB14E0(v35);
  }

LABEL_81:
  *&v35[0] = &v47;
  sub_100112048(v35);
  if (SBYTE7(v46) < 0)
  {
    operator delete(__dst);
  }

  return v15;
}

void sub_10050CB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *__p)
{
  sub_1005032D8(&__p);
  if (a50 == 1)
  {
    sub_100DB14E0(&a23);
  }

  sub_100319DE8(&a51);
  _Unwind_Resume(a1);
}

uint64_t sub_10050CC20(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_1005230E0(a1 + 64);
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }

  return a1;
}

void cellplan::CellularPlanControllerPhone::handleTransferRemotePlanTapped(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  ctu::cf::assign();
  v12[0] = 0;
  *(v12 + 3) = 0;
  __p = 0;
  v8 = 0;
  *v9 = v12[0];
  *&v9[3] = 0;
  v10 = 0;
  if (a4)
  {
    v6 = _Block_copy(a4);
  }

  else
  {
    v6 = 0;
  }

  aBlock = v6;
  v13[0] = 0;
  v13[1] = 0;
  sub_100004AA0(v13, (a1 + 8));
  operator new();
}

void cellplan::CellularPlanControllerPhone::handleTransferRemotePlanTapped(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  sub_100528224(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void cellplan::CellularPlanControllerPhone::getRemotePlanManageAccountInfo(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v5[4] = a1;
  sub_1005284AC(&v6, a3);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_10050D1D8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_100528544(v2 + 8);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::requestRemotePlanSignupInfo(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v5[4] = a1;
  v6 = a2;
  v7 = a3;
  sub_1005284AC(&v8, a4);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_10050D364(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

const void **cellplan::CellularPlanControllerPhone::setActiveRemoteProfile(uint64_t a1, const void **a2, uint64_t a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_10050D498;
  v6[3] = &unk_101E53B30;
  v6[4] = a3;
  v6[5] = a1;
  sub_10005C7A4(&v7, a2);
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v4, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return sub_100005978(&v7);
}

uint64_t sub_10050D498(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I setActiveRemoteProfile", buf, 2u);
  }

  v4 = 328;
  if (*(v2 + 1224))
  {
    v4 = 1368;
  }

  v5 = v2 + v4;
  if (*(v5 + 40) == *(v5 + 32) || (*(v5 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773344();
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v6 = *(v2 + 160);
    memset(buf, 0, sizeof(buf));
    v12 = 0;
    ctu::cf::assign();
    *__p = *buf;
    v10 = v12;
    (*(*v6 + 88))(v6, 0, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  return v7();
}

void sub_10050D600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::reattemptPendingInstall_sync(cellplan::CellularPlanControllerPhone *this)
{
  v2 = 328;
  if (*(this + 1224))
  {
    v2 = 1368;
  }

  v3 = this + v2;
  v4 = *(this + v2 + 32);
  if (*(v3 + 5) == v4 || (v3[24] & 1) == 0)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }
  }

  else
  {
    v9 = *(v4 + 16);
    if (*(this + 32))
    {
      if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
      {
        sub_101773378();
      }
    }

    else if (cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(this, 0, &v9))
    {
      v5 = *(this + 5);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I re-attempt pending install due to out of memory", buf, 2u);
      }

      v6 = 0;
      v7 = 0;
      sub_10032E870();
    }
  }
}

void sub_10050D9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, uint64_t a34, std::__shared_weak_count *a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, std::__shared_weak_count *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1000DA89C(&a10);
  sub_10001021C(&a33);
  if (a65)
  {
    sub_100004A34(a65);
  }

  if (a35)
  {
    sub_100004A34(a35);
  }

  if (a40)
  {
    sub_100004A34(a40);
  }

  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(uint64_t a1, void *a2, const void **a3, uint64_t a4, char a5)
{
  v10 = *(a1 + 264);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(a1 + 280);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 160);
  v13 = *(a1 + 1040);
  v17 = 0;
  v16 = 0uLL;
  v18[0] = 0;
  v19 = 0;
  sub_100520D38(v20, v13, &v16, v18, 0);
  (*(*v12 + 96))(v12, 0, v20);
  if (v24 == 1)
  {
    sub_100E3A5D4(&v22);
  }

  if (v21 < 0)
  {
    operator delete(v20[1]);
  }

  if (v19 == 1)
  {
    sub_100E3A5D4(v18);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  result = (*(**(a1 + 96) + 16))(*(a1 + 96));
  if ((a5 & 1) == 0)
  {
    cellplan::CellularPlanControllerPhone::displayRemoteCellularPlanErrorNotification(a1, a2);
    rest::PairedDeviceInfoList::getActiveDevice(v20, (a1 + 896));
    v15 = v23;
    (*(**(a1 + 208) + 176))(*(a1 + 208), a3, 1, a4, v23 == 1);
    cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(a1, a3, a4, v15 == 1);
    return sub_100DB14E0(v20);
  }

  return result;
}

void cellplan::CellularPlanControllerPhone::displayRemoteCellularPlanErrorNotification(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  (*(**(a1 + 96) + 64))(&v4);
  if (v4)
  {
    (*(*v4 + 72))(v4, *a2, a2[1]);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017733E0();
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10050DD4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **cellplan::CellularPlanControllerPhone::deleteRemotePlan(uint64_t a1, const void **a2, uint64_t a3)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_10050DE80;
  v6[3] = &unk_101E53BA0;
  v6[4] = a3;
  v6[5] = a1;
  sub_10005C7A4(&v7, a2);
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v4, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return sub_100005978(&v7);
}

void sub_10050DE80(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I deleteRemotePlan", buf, 2u);
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  *buf = 0u;
  v21 = 0u;
  v4 = 328;
  if (*(v2 + 1224))
  {
    v4 = 1368;
  }

  v5 = (v2 + v4);
  if (*(v2 + v4 + 23) < 0)
  {
    sub_100005F2C(buf, *v5, *(v5 + 1));
  }

  else
  {
    v6 = *v5;
    *&v21 = *(v5 + 2);
    *buf = v6;
  }

  *(&v21 + 1) = *(v5 + 3);
  v22 = 0uLL;
  *&v23 = 0;
  sub_10027E628(&v22, *(v5 + 4), *(v5 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v5 + 5) - *(v5 + 4)) >> 3));
  v7 = *(v5 + 7);
  LODWORD(v24) = *(v5 + 16);
  *(&v23 + 1) = v7;
  if (*(&v22 + 1) == v22 || (BYTE8(v21) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }

    goto LABEL_14;
  }

  if (*(v2 + 256))
  {
LABEL_14:
    (*(*(a1 + 32) + 16))();
    goto LABEL_15;
  }

  v9 = *(v22 + 16);
  v8 = *(v22 + 24);
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  v25 = 0uLL;
  v26 = 0;
  ctu::cf::assign();
  v10 = v25;
  v19[0] = v26;
  *(v19 + 3) = *(&v26 + 3);
  if (SHIBYTE(v26) < 0)
  {
    sub_100005F2C(&v37, v25, *(&v25 + 1));
    BYTE8(v38) = 1;
    operator delete(v10);
    v11 = *(v2 + 144);
    v32 = v36;
    if (SBYTE7(v38) < 0)
    {
      sub_100005F2C(&v33, v37, *(&v37 + 1));
      goto LABEL_22;
    }
  }

  else
  {
    v37 = v25;
    LODWORD(v38) = v19[0];
    *(&v38 + 3) = *(v19 + 3);
    BYTE7(v38) = HIBYTE(v26);
    BYTE8(v38) = 1;
    v11 = *(v2 + 144);
    v32 = v36;
  }

  v33 = v37;
  v34 = v38;
LABEL_22:
  v35 = BYTE8(v38);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_10050E400;
  v13[3] = &unk_101E53B68;
  v13[4] = *(a1 + 32);
  v13[5] = v2;
  if (SBYTE7(v21) < 0)
  {
    sub_100005F2C(v14, *buf, *&buf[8]);
  }

  else
  {
    *v14 = *buf;
    v15 = v21;
  }

  v16 = *(&v21 + 1);
  memset(v17, 0, 24);
  sub_10027E628(v17, v22, *(&v22 + 1), 0x2E8BA2E8BA2E8BA3 * ((*(&v22 + 1) - v22) >> 3));
  v17[3] = *(&v23 + 1);
  v18 = v24;
  (*(*v11 + 72))(v11, v9, v8, &v32, v13);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }

  v12 = *(v2 + 160);
  v27[0] = 0;
  v28 = v36;
  if (SBYTE7(v38) < 0)
  {
    sub_100005F2C(&__p, v37, *(&v37 + 1));
  }

  else
  {
    __p = v37;
    v30 = v38;
  }

  v31 = BYTE8(v38);
  v27[0] = 1;
  (*(*v12 + 80))(v12, v27);
  if (v27[0] == 1)
  {
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p);
    }

    v27[0] = 0;
  }

  (*(**(v2 + 96) + 16))(*(v2 + 96));
  *&v25 = v17;
  sub_100112048(&v25);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SBYTE7(v38) < 0)
  {
    operator delete(v37);
  }

LABEL_15:
  *&v36 = &v22;
  sub_100112048(&v36);
  if (SBYTE7(v21) < 0)
  {
    operator delete(*buf);
  }
}

void sub_10050E314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (*(v55 - 121) < 0)
  {
    operator delete(*(v55 - 144));
  }

  sub_100319DE8(&a28);
  _Unwind_Resume(a1);
}

void sub_10050E400(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 160);
  v10[0] = 0;
  (*(*v5 + 80))(v5, v10);
  if (v10[0] == 1)
  {
    if (v12 < 0)
    {
      operator delete(__p);
    }

    v10[0] = 0;
  }

  v6 = *a2;
  if (v6 == 2)
  {
    v7 = *(v4 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I deleteRemotePlan error: %s", &v8, 0xCu);
    }

    goto LABEL_13;
  }

  if (v6 != 1 || a2[1] != 1)
  {
LABEL_13:
    (*(*(a1 + 32) + 16))();
    return;
  }

  (*(*(a1 + 32) + 16))();
  sub_10006DCAC(v4 + 928, *(v4 + 936));
  *(v4 + 928) = v4 + 936;
  *(v4 + 936) = 0u;
  if (*(a1 + 109) == 1 && *(a1 + 108) == 1)
  {
    cellplan::CellularPlanControllerPhone::reattemptPendingInstall_sync(v4);
  }
}

void sub_10050E594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10050E5C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v4 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v4;
  }

  v5 = *(a2 + 72);
  *(a1 + 80) = 0;
  *(a1 + 72) = v5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  result = sub_10027E628((a1 + 80), *(a2 + 80), *(a2 + 88), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 88) - *(a2 + 80)) >> 3));
  v7 = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 104) = v7;
  return result;
}

void sub_10050E658(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_10050E674(uint64_t a1)
{
  v2 = (a1 + 80);
  sub_100112048(&v2);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void cellplan::CellularPlanControllerPhone::deleteAllRemotePlans(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10050E7C8;
  v4[3] = &unk_101E53C00;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_10050E7C8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I deleteAllRemotePlans", buf, 2u);
  }

  v4 = 328;
  if (*(v2 + 1224))
  {
    v4 = 1368;
  }

  v5 = v2 + v4;
  v6 = *(v2 + v4 + 32);
  if (*(v5 + 40) == v6 || (*(v5 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v2 + 144);
    sub_1013F05F4(v22);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 0x40000000;
    v12[2] = sub_10050EA88;
    v12[3] = &unk_101E53BD8;
    v12[4] = *(a1 + 32);
    v12[5] = v2;
    (*(*v9 + 72))(v9, v7, v8, v22, v12);
    if (v24 < 0)
    {
      operator delete(v23);
    }

    v10 = *(v2 + 160);
    sub_1013F05F4(buf);
    v18 = *buf;
    *__p = *v14;
    v20 = v15;
    v14[0] = 0;
    v14[1] = 0;
    v15 = 0;
    v21 = v16;
    v17[0] = 1;
    (*(*v10 + 80))(v10, v17);
    if (v17[0] == 1)
    {
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }

      v17[0] = 0;
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    return (*(**(v2 + 96) + 16))(*(v2 + 96));
  }
}

void sub_10050EA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 == 1 && a32 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10050EA88(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 160);
  v10[0] = 0;
  (*(*v5 + 80))(v5, v10);
  if (v10[0] == 1)
  {
    if (v12 < 0)
    {
      operator delete(__p);
    }

    v10[0] = 0;
  }

  v6 = *a2;
  if (v6 == 2)
  {
    v7 = *(v4 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I deleteRemotePlan error: %s", &v8, 0xCu);
    }
  }

  else if (v6 == 1 && a2[1] == 1)
  {
    (*(*(a1 + 32) + 16))();
    sub_10006DCAC(v4 + 928, *(v4 + 936));
    *(v4 + 928) = v4 + 936;
    *(v4 + 936) = 0u;
    return;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10050EBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a11 == 1 && a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::userSignupInitiatedOrFailed(cellplan::CellularPlanControllerPhone *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

const void **cellplan::CellularPlanControllerPhone::didPurchaseRemotePlan(uint64_t a1, const void **a2, const void **a3, const void **a4, const void **a5, const void **a6)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_10050EE94;
  v13[3] = &unk_101E53C20;
  v13[4] = a1;
  sub_10005C7A4(&v14, a2);
  sub_10005C7A4(&v15, a3);
  sub_10005C7A4(&v16, a4);
  sub_10005C7A4(&v17, a5);
  sub_10005C7A4(&v18, a6);
  v21 = 0;
  v22 = 0;
  sub_100004AA0(&v21, (a1 + 8));
  v11 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v21;
  v20 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v13;
  dispatch_async(v11, block);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  sub_100005978(&v18);
  sub_100005978(&v17);
  sub_100005978(&v16);
  sub_100005978(&v15);
  return sub_100005978(&v14);
}

const void **sub_10050EE94(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_10005C7A4(&v8, (a1 + 40));
  sub_10005C7A4(&v7, (a1 + 48));
  sub_10005C7A4(&v6, (a1 + 56));
  sub_10005C7A4(&v5, (a1 + 64));
  sub_10005C7A4(&v4, (a1 + 72));
  cellplan::CellularPlanControllerPhone::didPurchaseRemotePlan_sync(v2, &v8, &v7, &v6, &v5, &v4);
  sub_100005978(&v4);
  sub_100005978(&v5);
  sub_100005978(&v6);
  sub_100005978(&v7);
  return sub_100005978(&v8);
}

void sub_10050EF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_100005978(va2);
  sub_100005978(va3);
  sub_100005978((v3 - 24));
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::didPurchaseRemotePlan_sync(uint64_t a1, void *a2, void *a3, void *a4, const void **a5, void *a6)
{
  if (*a2 || *a3 || *a4)
  {
    sub_10005C7A4(&v72, a5);
    v11 = sub_10092231C();
    sub_100005978(&v72);
    if (v11)
    {
      v109 = 0uLL;
      memset(buf, 0, 24);
      ctu::cf::assign();
      __str = *buf;
      if (*a2)
      {
        memset(v95, 0, 24);
        memset(buf, 0, 24);
        ctu::cf::assign();
        *v95 = *buf;
        *&v95[16] = *&buf[16];
        v12 = *(a1 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v95;
          if (v95[23] < 0)
          {
            v13 = *v95;
          }

          p_str = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = p_str;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I did purchase remote plan eid:%s, iccid:%s", buf, 0x16u);
        }

        memset(buf, 0, 24);
        ctu::parse_hex();
        v15 = *buf;
        v16 = *&buf[8] - *buf;
        if (*&buf[8] - *buf == 16)
        {
          if (*&buf[8] != *buf)
          {
            v109 = **buf;
            goto LABEL_43;
          }
        }

        else
        {
          v27 = *(a1 + 40);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v92) = 0;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "EID not valid", &v92, 2u);
            v15 = *buf;
            if (!*buf)
            {
LABEL_44:
              if ((v95[23] & 0x80000000) != 0)
              {
                operator delete(*v95);
              }

              if (v16 != 16)
              {
                goto LABEL_162;
              }

LABEL_47:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                __p = __str;
              }

              sub_10050BA94(&__p, buf);
              v28 = (a1 + 976);
              if (*(a1 + 999) < 0)
              {
                operator delete(*v28);
              }

              *v28 = *buf;
              *(a1 + 992) = *&buf[16];
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              (*(**(a1 + 160) + 288))(*(a1 + 160), a1 + 976);
              v29 = 0uLL;
              memset(v108, 0, sizeof(v108));
              if (*a6)
              {
                memset(buf, 0, 24);
                ctu::cf::assign();
                v30 = *buf;
                *v95 = *&buf[8];
                *&v95[7] = *&buf[15];
                v31 = buf[23];
                if (v108[0])
                {
                  if (SHIBYTE(v108[3]) < 0)
                  {
                    operator delete(v108[1]);
                  }

                  v108[1] = v30;
                  v108[2] = *v95;
                  *(&v108[2] + 7) = *&v95[7];
                  HIBYTE(v108[3]) = v31;
                }

                else
                {
                  v108[1] = *buf;
                  v108[2] = *v95;
                  *(&v108[2] + 7) = *&v95[7];
                  HIBYTE(v108[3]) = buf[23];
                  LOBYTE(v108[0]) = 1;
                }

                v32 = *(a1 + 40);
                v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
                v29 = 0uLL;
                if (v33)
                {
                  if ((v108[0] & 1) == 0)
                  {
                    __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
                  }

                  v34 = &v108[1];
                  if (v31 < 0)
                  {
                    v34 = v30;
                  }

                  *buf = 136315138;
                  *&buf[4] = v34;
                  _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I alternate smdp: %s", buf, 0xCu);
                  v29 = 0uLL;
                }
              }

              v106 = v29;
              v107 = v29;
              v104 = v29;
              v105 = v29;
              v102 = v29;
              v103 = v29;
              v100 = v29;
              v101 = v29;
              v98 = v29;
              v99 = v29;
              v96 = v29;
              v97 = v29;
              *v95 = v29;
              *&v95[16] = v29;
              RemoteVinylInfo::findProfile();
              if (BYTE8(v107))
              {
                goto LABEL_88;
              }

              v94 = 0;
              memset(v93, 0, sizeof(v93));
              size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                size = __str.__r_.__value_.__l.__size_;
              }

              v92 = 0uLL;
              if (size)
              {
                std::string::operator=(v93, &__str);
                v36 = *(a1 + 160);
                v37 = *(a1 + 1040);
                v69 = 0;
                v68 = 0uLL;
                sub_100F11F00(v81, &v92);
                v82 = 1;
                sub_100520D38(buf, v37, &v68, v81, 0);
                (*(*v36 + 96))(v36, 1, buf);
                if (v91 == 1)
                {
                  sub_100E3A5D4(&v84);
                }

                if ((buf[31] & 0x80000000) != 0)
                {
                  operator delete(*&buf[8]);
                }

                if (v82 == 1)
                {
                  sub_100E3A5D4(v81);
                }

                if ((SHIBYTE(v69) & 0x80000000) == 0)
                {
                  goto LABEL_87;
                }

                v38 = v68;
              }

              else
              {
                v39 = *(a1 + 160);
                v40 = *(a1 + 1040);
                v67 = 0;
                v66 = 0uLL;
                v79[0] = 0;
                v80 = 0;
                sub_100520D38(buf, v40, &v66, v79, 0);
                (*(*v39 + 96))(v39, 1, buf);
                if (v91 == 1)
                {
                  sub_100E3A5D4(&v84);
                }

                if ((buf[31] & 0x80000000) != 0)
                {
                  operator delete(*&buf[8]);
                }

                if (v80 == 1)
                {
                  sub_100E3A5D4(v79);
                }

                if ((SHIBYTE(v67) & 0x80000000) == 0)
                {
                  goto LABEL_87;
                }

                v38 = v66;
              }

              operator delete(v38);
LABEL_87:
              (*(**(a1 + 96) + 16))(*(a1 + 96));
              sub_100E3A5D4(&v92);
LABEL_88:
              v41 = *(a1 + 256);
              if (v41)
              {
                v76[0] = 0;
                if (LOBYTE(v108[0]) == 1)
                {
                  if (SHIBYTE(v108[3]) < 0)
                  {
                    sub_100005F2C(&v77, v108[1], v108[2]);
                  }

                  else
                  {
                    v77 = *&v108[1];
                    v78 = v108[3];
                  }

                  v76[0] = 1;
                }

                (*(*v41 + 120))(v41, &v109, a1 + 976, v76);
                if (v76[0] == 1)
                {
                  if (SHIBYTE(v78) < 0)
                  {
                    operator delete(v77);
                  }

                  v76[0] = 0;
                }

                if (BYTE8(v107) == 1)
                {
                  sub_100E3A5D4(v95);
                }

                if (LOBYTE(v108[0]) == 1 && SHIBYTE(v108[3]) < 0)
                {
                  operator delete(v108[1]);
                }

                if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_184;
                }

                v56 = __str.__r_.__value_.__r.__words[0];
LABEL_171:
                operator delete(v56);
                goto LABEL_184;
              }

              if ((BYTE8(v107) & 1) == 0)
              {
                v43 = *(a1 + 40);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I did purchase without provisioning operation", buf, 2u);
                }

                v92 = 0uLL;
                sub_10032E870();
              }

              sub_100E3A5D4(v95);
              if (LOBYTE(v108[0]) != 1 || (SHIBYTE(v108[3]) & 0x80000000) == 0)
              {
                goto LABEL_162;
              }

              v42 = v108[1];
LABEL_161:
              operator delete(v42);
LABEL_162:
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              goto LABEL_164;
            }

LABEL_43:
            *&buf[8] = v15;
            operator delete(v15);
            goto LABEL_44;
          }
        }

        if (!v15)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }

      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      memset(buf, 0, sizeof(buf));
      v17 = 408;
      if (*(a1 + 1224))
      {
        v17 = 1232;
      }

      sub_10027E51C(buf, (a1 + v17));
      if (*a3 && buf[24] == 1)
      {
        v92 = 0uLL;
        v93[0].__r_.__value_.__r.__words[0] = 0;
        memset(v95, 0, 24);
        ctu::cf::assign();
        v92 = *v95;
        v93[0].__r_.__value_.__r.__words[0] = *&v95[16];
        v18 = *(a1 + 40);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = &v92;
          if (v93[0].__r_.__value_.__s.__data_[7] < 0)
          {
            v19 = v92;
          }

          v20 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v20 = __str.__r_.__value_.__r.__words[0];
          }

          *v95 = 136315394;
          *&v95[4] = v19;
          *&v95[12] = 2080;
          *&v95[14] = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I did purchase remote plan imei:%s, iccid:%s", v95, 0x16u);
        }

        if ((buf[24] & 1) == 0)
        {
          __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
        }

        v21 = v93[0].__r_.__value_.__s.__data_[7];
        if (v93[0].__r_.__value_.__s.__data_[7] >= 0)
        {
          v22 = v93[0].__r_.__value_.__s.__data_[7];
        }

        else
        {
          v22 = *(&v92 + 1);
        }

        v23 = BYTE7(v85);
        if (SBYTE7(v85) < 0)
        {
          v23 = *(&v84 + 1);
        }

        if (v22 == v23)
        {
          if (v93[0].__r_.__value_.__s.__data_[7] >= 0)
          {
            v24 = &v92;
          }

          else
          {
            v24 = v92;
          }

          if ((SBYTE7(v85) & 0x80u) == 0)
          {
            v25 = &v84;
          }

          else
          {
            v25 = v84;
          }

          v26 = memcmp(v24, v25, v22) == 0;
        }

        else
        {
          v26 = 0;
        }

        if (v21 < 0)
        {
          operator delete(v92);
        }
      }

      else
      {
        v26 = 0;
      }

      if (*a4 && BYTE8(v85) == 1)
      {
        v92 = 0uLL;
        v93[0].__r_.__value_.__r.__words[0] = 0;
        memset(v95, 0, 24);
        ctu::cf::assign();
        v92 = *v95;
        v93[0].__r_.__value_.__r.__words[0] = *&v95[16];
        v44 = *(a1 + 40);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = &v92;
          if (v93[0].__r_.__value_.__s.__data_[7] < 0)
          {
            v45 = v92;
          }

          v46 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v46 = __str.__r_.__value_.__r.__words[0];
          }

          *v95 = 136315394;
          *&v95[4] = v45;
          *&v95[12] = 2080;
          *&v95[14] = v46;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I did purchase remote plan meid:%s, iccid:%s", v95, 0x16u);
        }

        if ((BYTE8(v85) & 1) == 0)
        {
          __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
        }

        v47 = v93[0].__r_.__value_.__s.__data_[7];
        if (v93[0].__r_.__value_.__s.__data_[7] >= 0)
        {
          v48 = v93[0].__r_.__value_.__s.__data_[7];
        }

        else
        {
          v48 = *(&v92 + 1);
        }

        v49 = BYTE7(v87);
        if (SBYTE7(v87) < 0)
        {
          v49 = *(&v86 + 1);
        }

        if (v48 == v49)
        {
          if (v93[0].__r_.__value_.__s.__data_[7] >= 0)
          {
            v50 = &v92;
          }

          else
          {
            v50 = v92;
          }

          if ((SBYTE7(v87) & 0x80u) == 0)
          {
            v51 = &v86;
          }

          else
          {
            v51 = v86;
          }

          LOBYTE(v26) = (memcmp(v50, v51, v48) == 0) | v26;
          if (v47 < 0)
          {
LABEL_124:
            operator delete(v92);
            if (v26)
            {
              goto LABEL_127;
            }

LABEL_147:
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101773414();
            }

            goto LABEL_149;
          }
        }

        else if (v93[0].__r_.__value_.__s.__data_[7] < 0)
        {
          goto LABEL_124;
        }

        if ((v26 & 1) == 0)
        {
          goto LABEL_147;
        }
      }

      else if (!v26)
      {
        goto LABEL_147;
      }

LABEL_127:
      v52 = 328;
      if (*(a1 + 1224))
      {
        v52 = 1368;
      }

      v53 = a1 + v52;
      v54 = *(a1 + v52 + 32);
      if (*(v53 + 40) != v54 && (*(v53 + 24) & 1) != 0)
      {
        v109 = *(v54 + 16);
        if (SBYTE7(v89) < 0)
        {
          operator delete(v88);
        }

        if (BYTE8(v85) == 1)
        {
          if (SBYTE7(v87) < 0)
          {
            operator delete(v86);
          }

          BYTE8(v85) = 0;
        }

        if (buf[24] == 1)
        {
          if (SBYTE7(v85) < 0)
          {
            operator delete(v84);
          }

          buf[24] = 0;
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        goto LABEL_47;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177347C();
      }

LABEL_149:
      if (SBYTE7(v89) < 0)
      {
        operator delete(v88);
      }

      if (BYTE8(v85) == 1)
      {
        if (SBYTE7(v87) < 0)
        {
          operator delete(v86);
        }

        BYTE8(v85) = 0;
      }

      if (buf[24] == 1)
      {
        if (SBYTE7(v85) < 0)
        {
          operator delete(v84);
        }

        buf[24] = 0;
      }

      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_162;
      }

      v42 = *buf;
      goto LABEL_161;
    }
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017734B0();
  }

LABEL_164:
  v55 = *(a1 + 256);
  if (v55)
  {
    *&v95[8] = 0;
    *v95 = 0;
    memset(buf, 0, 24);
    v73[0] = 0;
    (*(*v55 + 120))(v55, v95, buf, v73);
    if (v73[0] == 1)
    {
      if (v75 < 0)
      {
        operator delete(v74);
      }

      v73[0] = 0;
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      v56 = *buf;
      goto LABEL_171;
    }
  }

LABEL_184:
  *(&v92 + 3) = 0;
  LODWORD(v92) = 0;
  *v95 = 0;
  (*(**(a1 + 128) + 120))(v95);
  if (*v95)
  {
    memset(buf, 0, 24);
    ctu::cf::assign();
    v57 = *buf;
    v58 = *&buf[8];
    LODWORD(v92) = *&buf[16];
    *(&v92 + 3) = *&buf[19];
    v59 = buf[23];
  }

  else
  {
    v57 = 0;
    v58 = 0;
    v59 = 0;
  }

  sub_100005978(v95);
  rest::PairedDeviceInfoList::getActiveDevice(buf, (a1 + 896));
  v60 = buf[0];
  sub_100DB14E0(buf);
  if (v60 == 2)
  {
    v61 = 2;
  }

  else
  {
    v61 = 1;
  }

  v62 = *(a1 + 208);
  if (v59 < 0)
  {
    sub_100005F2C(__dst, v57, v58);
  }

  else
  {
    __dst[0] = v57;
    __dst[1] = v58;
    *v64 = v92;
    *&v64[3] = *(&v92 + 3);
    v65 = v59;
  }

  (*(*v62 + 144))(v62, __dst, 0, v61);
  if ((v65 & 0x80000000) == 0)
  {
    if ((v59 & 0x80) == 0)
    {
      return;
    }

LABEL_197:
    operator delete(v57);
    return;
  }

  operator delete(__dst[0]);
  if (v59 < 0)
  {
    goto LABEL_197;
  }
}

void sub_10051004C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, dispatch_object_t object, uint64_t a43, std::__shared_weak_count *a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a44)
  {
    sub_100004A34(a44);
  }

  if (STACK[0x4A8])
  {
    sub_100004A34(STACK[0x4A8]);
  }

  if (LOBYTE(STACK[0x658]) == 1)
  {
    sub_100E3A5D4(&STACK[0x580]);
  }

  if (*(v60 - 144) == 1 && *(v60 - 113) < 0)
  {
    operator delete(*(v60 - 136));
  }

  if (a60 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **sub_10051031C(const void **a1, const void **a2)
{
  sub_10005C7A4(a1 + 5, a2 + 5);
  sub_10005C7A4(a1 + 6, a2 + 6);
  sub_10005C7A4(a1 + 7, a2 + 7);
  sub_10005C7A4(a1 + 8, a2 + 8);

  return sub_10005C7A4(a1 + 9, a2 + 9);
}

const void **sub_100510388(const void **a1)
{
  sub_100005978(a1 + 9);
  sub_100005978(a1 + 8);
  sub_100005978(a1 + 7);
  sub_100005978(a1 + 6);

  return sub_100005978(a1 + 5);
}

void cellplan::CellularPlanControllerPhone::didCancelRemotePlan(cellplan::CellularPlanControllerPhone *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1005104E8;
  v3[3] = &unk_101E53C50;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 1);
  v2 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1005104E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Received cancel plan, check subscription", v3, 2u);
  }

  cellplan::CellularPlanControllerPhone::checkSubscription_sync(v1, 1);
}

void cellplan::CellularPlanControllerPhone::pendingReleaseRemotePlan(cellplan::CellularPlanControllerPhone *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_100510664;
  v3[3] = &unk_101E53C70;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 1);
  v2 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

uint64_t sub_100510664(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Received plan pending release", v4, 2u);
  }

  result = *(v1 + 256);
  if (result)
  {
    return (*(*result + 128))(result);
  }

  return result;
}

void cellplan::CellularPlanControllerPhone::genericTransferPayloadIndReceived_sync(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017734E4();
  }
}

uint64_t cellplan::CellularPlanControllerPhone::shouldRunGetPlansFetch_sync(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  *__dst = 0u;
  v15 = 0u;
  v6 = 328;
  if (*(a1 + 1224))
  {
    v6 = 1368;
  }

  v7 = a1 + v6;
  if (*(a1 + v6 + 23) < 0)
  {
    sub_100005F2C(__dst, *v7, *(v7 + 8));
  }

  else
  {
    *__dst = *v7;
    *&v15 = *(v7 + 16);
  }

  v8 = *(v7 + 32);
  *(&v15 + 1) = *(v7 + 24);
  v16 = 0uLL;
  *&v17 = 0;
  sub_10027E628(&v16, v8, *(v7 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v7 + 40) - v8) >> 3));
  *(&v17 + 1) = *(v7 + 56);
  LODWORD(v18) = *(v7 + 64);
  (*(**(a1 + 160) + 240))(&v19);
  if (v19 == 1)
  {
    if (v26 < 0)
    {
      operator delete(__p);
    }

    if (v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 < 0)
    {
      operator delete(v20);
    }

LABEL_26:
    v10 = 0;
    goto LABEL_27;
  }

  (*(**(a1 + 128) + 680))(&v12);
  (*(*v12 + 64))(&v19);
  if (v21 < 0)
  {
    v9 = v20 == 0;
    operator delete(v19);
  }

  else
  {
    v9 = v21 == 0;
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v9)
  {
    goto LABEL_26;
  }

  cellplan::CellularPlanControllerPhone::getPhoneSimIccid_sync(&v19, a1, a2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (v22 < 0)
  {
    operator delete(v20);
  }

  if (BYTE13(v17) == 1 && BYTE12(v17) == 1 || ((*(**(a1 + 160) + 168))(*(a1 + 160), a2) & 1) != 0 || *(a1 + 256) || *(&v16 + 1) == v16 || BYTE8(v15) != 1)
  {
    goto LABEL_26;
  }

  *a3 = *(v16 + 16);
  v10 = 1;
LABEL_27:
  v19 = &v16;
  sub_100112048(&v19);
  if (SBYTE7(v15) < 0)
  {
    operator delete(__dst[0]);
  }

  return v10;
}

void sub_100510A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100319DE8(va);
  _Unwind_Resume(a1);
}

void sub_100510A4C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x100510A44);
}

void cellplan::CellularPlanControllerPhone::handleGetPlanItemsCallback_sync(cellplan::CellularPlanControllerPhone *this, uint64_t a2, uint64_t a3, void **a4)
{
  if (a2)
  {
    v6 = a2;
    v7 = *(this + 5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I will fetch for slot %s before get plans", buf, 0xCu);
    }

    *(this + 260) = v6;
    v8 = *(this + 3);
    object = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    sub_100004AA0(&v17, this + 1);
    if (v17)
    {
      v9 = v17 + 64;
    }

    else
    {
      v9 = 0;
    }

    v19[0] = v9;
    v19[1] = v18;
    v17 = 0;
    v18 = 0;
    (*(**(this + 16) + 680))(&v16);
    sub_1003A5D8C(&object, v19, &v16);
  }

  cellplan::CellularPlanControllerPhone::checkSubscription_sync(this, a2);
  v17 = 0;
  (*(**(this + 20) + 104))(&v17);
  v15 = 0;
  if (*(this + 1072) == 1)
  {
    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = asString();
      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I install error: %s", buf, 0xCu);
      if ((*(this + 1072) & 1) == 0)
      {
        __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
      }
    }

    v12 = 0;
    v13 = *(this + 269);
    if (v13 > 7)
    {
      if (v13 > 10)
      {
        if (v13 == 11)
        {
          v14 = 58;
          v12 = 1;
        }

        else if (v13 == 12)
        {
          v12 = 0;
          v14 = 45;
        }

        else
        {
          v14 = 0;
          if (v13 == 13)
          {
            v12 = 0;
            v14 = 75;
          }
        }
      }

      else if (v13 == 8)
      {
        v12 = 0;
        v14 = 26;
      }

      else
      {
        v12 = 0;
        if (v13 == 9)
        {
          v14 = 34;
        }

        else
        {
          v14 = 35;
        }
      }

      goto LABEL_36;
    }

    if (v13 <= 3)
    {
      if (v13 != 2)
      {
        v14 = 0;
        if (v13 == 3)
        {
          v12 = 0;
          v14 = 13;
        }

        goto LABEL_36;
      }
    }

    else if ((v13 - 4) >= 2)
    {
      if (v13 == 6)
      {
        v12 = 0;
        v14 = 69;
      }

      else
      {
        v14 = 0;
        if (v13 == 7)
        {
          v12 = 0;
          v14 = 25;
        }
      }

      goto LABEL_36;
    }

    v12 = 0;
    v14 = 18;
LABEL_36:
    v15 = v14;
    if (*(this + 1045) == 1 && (v12 & *(this + 1044)) == 1)
    {
      v15 = (*(**(this + 16) + 872))(*(this + 16));
    }

    *(this + 1072) = 0;
  }

  sub_100510F28(a4, &v17, &v15);
  sub_100010250(&v17);
}

const void **sub_100510F28(uint64_t *a1, const void **a2, unsigned __int8 *a3)
{
  v4 = *a1;
  sub_10006F22C(&v6, a2);
  (*(v4 + 16))(v4, &v6, *a3);
  return sub_100010250(&v6);
}

void sub_100510F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::installPendingRemotePlan(uint64_t a1, __int128 *a2, void *aBlock)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
    if (aBlock)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __p = *a2;
    v7 = *(a2 + 2);
    if (aBlock)
    {
LABEL_3:
      v5 = _Block_copy(aBlock);
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  aBlocka = v5;
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (a1 + 8));
  operator new();
}

void cellplan::CellularPlanControllerPhone::getRemoteCellularPlanItems(uint64_t a1, char a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100511214;
  v5[3] = &unk_101E53C98;
  v6 = a2;
  v5[4] = a3;
  v5[5] = a1;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_100511214(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I getRemoteCellularPlanItems, shouldFetch:%d", buf, 8u);
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  *buf = 0u;
  v16 = 0u;
  v5 = 328;
  if (*(v2 + 1224))
  {
    v5 = 1368;
  }

  v6 = (v2 + v5);
  if (*(v2 + v5 + 23) < 0)
  {
    sub_100005F2C(buf, *v6, *(v6 + 1));
  }

  else
  {
    v7 = *v6;
    *&v16 = *(v6 + 2);
    *buf = v7;
  }

  *(&v16 + 1) = *(v6 + 3);
  v17 = 0uLL;
  *&v18 = 0;
  sub_10027E628(&v17, *(v6 + 4), *(v6 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 5) - *(v6 + 4)) >> 3));
  v8 = *(v6 + 7);
  LODWORD(v19) = *(v6 + 16);
  *(&v18 + 1) = v8;
  if (*(a1 + 48) == 1)
  {
    v9 = (*(**(v2 + 160) + 160))(*(v2 + 160));
    v10 = HIDWORD(v16) == 1 ? 1 : v9;
    if (v10 != 1)
    {
      sub_100004AA0(&v20, (v2 + 8));
      v12 = v21;
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
      }

      v13 = *(a1 + 32);
      if (v13)
      {
        _Block_copy(v13);
      }

      aBlock[4] = 0;
      operator new();
    }
  }

  v20 = 0;
  v21 = 0;
  v11 = *(a1 + 32);
  if (v11)
  {
    v11 = _Block_copy(v11);
  }

  aBlock[0] = v11;
  cellplan::CellularPlanControllerPhone::handleGetPlanItemsCallback_sync(v2, 0, &v20, aBlock);
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  v20 = &v17;
  sub_100112048(&v20);
  if (SBYTE7(v16) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1005114E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::getPendingProfiles_sync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v21 = a3;
  if (*(a1 + 1224) != 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    sub_100520028(a4, 0);
    v11 = &v14;
    goto LABEL_6;
  }

  (*(**(a1 + 160) + 272))(&v14);
  if (v14 == v15)
  {
    v6 = 328;
    if (*(a1 + 1224))
    {
      v6 = 1368;
    }

    v7 = a1 + v6;
    v8 = *(v7 + 32);
    if (v8 == *(v7 + 40))
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      sub_100520028(a4, 0);
      v17[0] = &v11;
      sub_1000DC8D4(v17);
      goto LABEL_4;
    }

    VinylInfo::getActiveUserProfile(&v11, v8);
    if (SHIBYTE(v13) < 0)
    {
      v10 = v12;
      operator delete(v11);
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else if (HIBYTE(v13))
    {
LABEL_12:
      v11 = 0;
      v12 = 0;
      v13 = 0;
      sub_100520028(a4, 1);
      v17[0] = &v11;
      sub_1000DC8D4(v17);
      v9 = *(a1 + 144);
      v19[0] = off_101E55220;
      v19[1] = a1;
      v19[3] = v19;
      (*(*v9 + 168))(v9, v20, v21, v19);
      sub_10052F844(v19);
      goto LABEL_4;
    }

    v17[1] = a1;
    sub_10052F8C4(v18, a4);
    v18[7] = 0;
    operator new();
  }

  sub_100520028(a4, 1);
LABEL_4:
  v11 = &v14;
LABEL_6:
  sub_1000DC8D4(&v11);
}

void sub_100511820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  sub_10052F844(va2);
  sub_10052B25C(v3 + 8);
  va_copy(v5, va1);
  sub_1000DC8D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005118A4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void cellplan::CellularPlanControllerPhone::getRemoteDevicesInfoForTransfer(uint64_t a1, uint64_t *a2)
{
  *a2 = 0;
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void cellplan::CellularPlanControllerPhone::getRemoteDeviceInfoForTransfer(uint64_t a1, uint64_t *a2)
{
  *a2 = 0u;
  v2 = 0u;
  sub_100004AA0(&v2, (a1 + 8));
  operator new();
}

void cellplan::CellularPlanControllerPhone::didReceivePushAndCheckSubscription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (***(a1 + 128))(__p);
  *&v11[1] = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v5 = SlotIdFromPersonalityId();
  if (v11[2])
  {
    sub_100004A34(v11[2]);
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  v6 = *(a1 + 1000);
  if (v6)
  {
    (*(*v6 + 16))(v6);
    v7 = *(a1 + 1000);
    *(a1 + 1000) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  v8 = _Block_copy(&stru_101E53CD8);
  v11[0] = v8;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(a1, v5, 0, 1, v11);
  if (v8)
  {
    _Block_release(v8);
  }

  memset(__p, 0, sizeof(__p));
  v9 = 0;
  (*(**(a1 + 128) + 120))(&v9);
  if (v9)
  {
    memset(&v11[1], 0, 24);
    ctu::cf::assign();
    *__p = *&v11[1];
    *(&__p[1] + 7) = *(&v11[2] + 7);
    HIBYTE(__p[2]) = HIBYTE(v11[3]);
  }

  (*(**(a1 + 208) + 208))(*(a1 + 208), __p, a3, 1);
  sub_100005978(&v9);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100511CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::didReceiveSubscriptionReleasePush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (***(a1 + 128))(__p);
  *&v9[1] = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v5 = SlotIdFromPersonalityId();
  if (v9[2])
  {
    sub_100004A34(v9[2]);
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  v6 = _Block_copy(&stru_101E53D18);
  v9[0] = v6;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(a1, v5, 0, 1, v9);
  if (v6)
  {
    _Block_release(v6);
  }

  memset(__p, 0, sizeof(__p));
  v7 = 0;
  (*(**(a1 + 128) + 120))(&v7);
  if (v7)
  {
    memset(&v9[1], 0, 24);
    ctu::cf::assign();
    *__p = *&v9[1];
    *(&__p[1] + 7) = *(&v9[2] + 7);
    HIBYTE(__p[2]) = HIBYTE(v9[3]);
  }

  (*(**(a1 + 208) + 208))(*(a1 + 208), __p, a3, 2);
  sub_100005978(&v7);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100511EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::didReceiveProvisioningFailedPush(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (***(a1 + 128))(__p);
  v9[0] = *__p;
  __p[0] = 0;
  __p[1] = 0;
  SlotIdFromPersonalityId();
  if (*(&v9[0] + 1))
  {
    sub_100004A34(*(&v9[0] + 1));
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  v7 = 0;
  v8 = 0;
  (*(**(a1 + 96) + 64))(&v7);
  if (v7)
  {
    (*(*v7 + 72))(v7, 0, 0);
  }

  memset(__p, 0, 24);
  v5 = 0;
  (*(**(a1 + 128) + 120))(&v5);
  if (v5)
  {
    memset(v9, 0, 24);
    ctu::cf::assign();
    *__p = v9[0];
    *(&__p[1] + 7) = *(v9 + 15);
    HIBYTE(__p[2]) = BYTE7(v9[1]);
  }

  (*(**(a1 + 208) + 208))(*(a1 + 208), __p, a3, 3);
  sub_100005978(&v5);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_100512134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_100512188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (!a12)
  {
    JUMPOUT(0x100512180);
  }

  JUMPOUT(0x10051217CLL);
}

void cellplan::CellularPlanControllerPhone::remotePlanProvisioningWebsheetDidLaunch(cellplan::CellularPlanControllerPhone *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1005122B0;
  v3[3] = &unk_101E53D38;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 1);
  v2 = *(this + 3);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1005122B0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 256);
  if (v2)
  {
    aBlock = 0;
    (*(*v2 + 168))(v2, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773518();
  }
}

void sub_100512340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::remotePlanProvisioningWebsheetDidLaunch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_100512468;
  v5[3] = &unk_101E53D88;
  v5[4] = a3;
  v5[5] = a1;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_100512468(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 256);
  if (v2)
  {
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = sub_100512570;
    aBlock[3] = &unk_101E53D60;
    aBlock[4] = *(a1 + 32);
    aBlock[5] = v1;
    v4 = _Block_copy(aBlock);
    (*(*v2 + 168))(v2, &v4);
    if (v4)
    {
      _Block_release(v4);
    }
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773518();
  }
}

void sub_100512550(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100512570(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  v5 = *(a1 + 40);
  if (!a2 || *a3 != 1)
  {
    goto LABEL_42;
  }

  v8 = *(a3 + 31);
  if (v8 < 0)
  {
    if (*(a3 + 16))
    {
      goto LABEL_7;
    }

LABEL_42:
    v19 = *(v5 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I URL launch not successful", &buf, 2u);
    }

    v20 = *(a1 + 32);
    v21 = 0;
    v22 = 0;
    (*(v20 + 16))();
    sub_10001021C(&v21);
    return sub_100005978(&v22);
  }

  if (!*(a3 + 31))
  {
    goto LABEL_42;
  }

LABEL_7:
  v9 = (a3 + 8);
  v10 = *(v5 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a3 + 8;
    if ((v8 & 0x80000000) != 0)
    {
      v11 = *v9;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I successful URL launch: %s", &buf, 0xCu);
  }

  v30 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
LABEL_41:
    sub_1000296E0(&v30);
    goto LABEL_42;
  }

  v13 = v30;
  v30 = Mutable;
  *&buf = v13;
  sub_1000296E0(&buf);
  if (*a4 == 1)
  {
    if (a4[344] == 1)
    {
      sub_100029714(&v29, &v30);
      if ((*a4 & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }

      if ((a4[344] & 1) == 0)
      {
        sub_1000D1644();
      }

      v14 = &v29;
      sub_100984AE4(&v29, (a4 + 8));
LABEL_17:
      sub_1000296E0(v14);
      goto LABEL_18;
    }

    if (a4[696] != 1)
    {
      if (a4[728] != 1)
      {
        goto LABEL_18;
      }

      sub_100029714(&v27, &v30);
      if ((*a4 & 1) == 0)
      {
        __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
      }

      if ((a4[728] & 1) == 0)
      {
        sub_1000D1644();
      }

      v14 = &v27;
      sub_100986AFC(&v27, (a4 + 704));
      goto LABEL_17;
    }

    sub_100029714(&v28, &v30);
    if ((*a4 & 1) == 0)
    {
      __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
    }

    if ((a4[696] & 1) == 0)
    {
      sub_1000D1644();
    }

    v18 = sub_100986680(&v28, (a4 + 352));
    sub_1000296E0(&v28);
    if (v18)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_18:
  if ((*a3 & 1) == 0)
  {
    __assert_rtn("get", "optional.hpp", 1212, "this->is_initialized()");
  }

  v15 = *(a1 + 32);
  if (*(a3 + 31) < 0)
  {
    sub_100005F2C(__dst, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    *__dst = *v9;
    v25 = *(a3 + 24);
  }

  if (SHIBYTE(v25) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v33 = v25;
  }

  v31 = 0;
  if (SHIBYTE(v33) < 0)
  {
    sub_100005F2C(&buf, __p[0], __p[1]);
  }

  else
  {
    buf = *__p;
    v37 = v33;
  }

  v34 = 0;
  if (ctu::cf::convert_copy())
  {
    v16 = v31;
    v31 = v34;
    v35 = v16;
    sub_100005978(&v35);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(buf);
  }

  v26 = v31;
  v31 = 0;
  sub_100005978(&v31);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100010180(&v23, &v30);
  (*(v15 + 16))(v15, &v26, &v23, 0);
  sub_10001021C(&v23);
  sub_100005978(&v26);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  return sub_1000296E0(&v30);
}

void sub_1005129EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, int a35, __int16 a36, char a37, char a38, int a39, const void *a40, const void *a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100005978(&a41);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_1000296E0(&a40);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::remotePlanProvisioningWebsheetDidQuit(cellplan::CellularPlanControllerPhone *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

const void **cellplan::CellularPlanControllerPhone::userDidProvideResponse(uint64_t a1, const void **a2, char a3, const void **a4, uint64_t a5)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_100512CD0;
  v10[3] = &unk_101E53DB0;
  v10[4] = a5;
  v10[5] = a1;
  sub_10005C7A4(&v11, a2);
  v13 = a3;
  sub_10005C7A4(&v12, a4);
  v16 = 0;
  v17 = 0;
  sub_100004AA0(&v16, (a1 + 8));
  v8 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v16;
  v15 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v8, block);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  sub_100005978(&v12);
  return sub_100005978(&v11);
}

void sub_100512CD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 256))
  {
    if (*(a1 + 48))
    {
      v8 = 0uLL;
      v9 = 0;
      ctu::cf::assign();
      memset(v10, 0, 24);
      if ((*(**(v2 + 160) + 144))(*(v2 + 160), v10))
      {
        v3 = *(a1 + 64);
        (*(*(a1 + 32) + 16))();
      }

      else
      {
        (*(*(a1 + 32) + 16))();
        v3 = 2;
      }

      if (SBYTE7(v10[1]) < 0)
      {
        operator delete(*&v10[0]);
      }
    }

    else
    {
      (*(*(a1 + 32) + 16))();
      v3 = 2;
    }

    memset(v10, 0, 24);
    if (*(a1 + 56))
    {
      v8 = 0uLL;
      v9 = 0;
      ctu::cf::assign();
      v10[0] = 0uLL;
      *(v10 + 15) = 0 >> 120;
      BYTE7(v10[1]) = 0;
    }

    (*(**(v2 + 256) + 88))(*(v2 + 256), v3, v10);
    if (*(a1 + 64) == 1)
    {
      rest::PairedDeviceInfoList::getActiveDevice(&v8, (v2 + 896));
      v4 = v8;
      sub_100DB14E0(&v8);
      if (v4 == 2)
      {
        v5 = *(v2 + 208);
        (*(**(v2 + 160) + 152))(__p);
        (*(*v5 + 144))(v5, __p, 3, 2);
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (SBYTE7(v10[1]) < 0)
    {
      operator delete(*&v10[0]);
    }
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177354C();
    }

    (*(*(a1 + 32) + 16))();
  }
}

void sub_100512F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::startClientRemoteProvisioning(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_100513098;
  v4[3] = &unk_101E53E08;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_100513098(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 328;
  if (*(v2 + 1224))
  {
    v3 = 1368;
  }

  v4 = v2 + v3;
  v5 = *(v2 + v3 + 32);
  if (*(v4 + 40) == v5 || (*(v4 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }
  }

  else
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v2 + 144);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_1005131A8;
    v10[3] = &unk_101E53DE0;
    v10[4] = v2;
    (*(*v8 + 136))(v8, v6, v7, 2, v10);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_1005131A8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(*(a1 + 32) + 40);
  if (v3 == 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_101773580(a2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v5 = a2[1];
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Start Session result: %d", v7, 8u);
  }
}

void cellplan::CellularPlanControllerPhone::finishClientRemoteProvisioning(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1005133DC;
  v4[3] = &unk_101E53E50;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100527B78;
  block[3] = &unk_101E54C38;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_1005133DC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = 328;
  if (*(v2 + 1224))
  {
    v3 = 1368;
  }

  v4 = v2 + v3;
  v5 = *(v2 + v3 + 32);
  if (*(v4 + 40) == v5 || (*(v4 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }
  }

  else
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v2 + 144);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_100513564;
    v13[3] = &unk_101E53E28;
    v13[4] = v2;
    (*(*v8 + 144))(v8, v6, v7, 2, v13);
    v9 = *(v2 + 256);
    if (v9)
    {
      v10 = *(v2 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I User left cellular pane", v12, 2u);
        v9 = *(v2 + 256);
      }

      (*(*v9 + 152))(v9);
    }
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_100513564(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *(*(a1 + 32) + 40);
  if (v3 == 2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1017735FC(a2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v5 = a2[1];
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I End Session result: %d", v7, 8u);
  }
}

uint64_t cellplan::CellularPlanControllerPhone::shouldDiscourageDisableLte_sync(cellplan::CellularPlanControllerPhone *this)
{
  (*(**(this + 16) + 688))(&v5);
  if (!(**v5)())
  {
    if (v6)
    {
      sub_100004A34(v6);
    }

    return 0;
  }

  v2 = (*(**(this + 20) + 200))(*(this + 20));
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (!v2)
  {
    return 0;
  }

  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I CB discourages disabling LTE and active plan", &v5, 2u);
  }

  return 1;
}

void sub_1005137BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL cellplan::CellularPlanControllerPhone::shouldWarnOnLteOffBeforeProvisioning_sync(cellplan::CellularPlanControllerPhone *this)
{
  (*(**(this + 16) + 688))(&v6);
  if ((**v6)())
  {
    rest::PairedDeviceInfoList::getActiveDevice(v5, (this + 896));
    v2 = LOBYTE(v5[0]) == 1;
    sub_100DB14E0(v5);
  }

  else
  {
    v2 = 0;
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v2)
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v5[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I CB discourages disabling LTE", v5, 2u);
    }
  }

  return v2;
}

void sub_1005138F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::deleteAllRemotePlans_sync(uint64_t a1, uint64_t a2)
{
  v4 = 328;
  if (*(a1 + 1224))
  {
    v4 = 1368;
  }

  v5 = a1 + v4;
  v6 = *(a1 + v4 + 32);
  if (*(v5 + 40) == v6 || (*(v5 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }

    (*(*a2 + 16))();
  }

  else
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(a1 + 144);
    sub_1013F05F4(v13);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1174405120;
    v11[2] = sub_100513AD4;
    v11[3] = &unk_101E53E70;
    v11[4] = a1;
    v10 = *a2;
    if (*a2)
    {
      v10 = _Block_copy(v10);
    }

    aBlock = v10;
    (*(*v9 + 72))(v9, v7, v8, v13, v11);
    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }
}

void sub_100513A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, char a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100513AD4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 32);
  v4 = *a2;
  if (v4 != 1)
  {
    if (v4 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v5 = *(v3 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v13 = 136315138;
    v14 = asString();
    v6 = "#I deleteAllRemotePlans failure: %s";
    v7 = v5;
    v8 = 12;
    goto LABEL_9;
  }

  if ((a2[1] & 1) == 0)
  {
    v10 = *(v3 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:
      v9 = 0;
      return (*(*(a1 + 40) + 16))(*(a1 + 40), v9);
    }

    LOWORD(v13) = 0;
    v6 = "#I deleteAllRemotePlans callback failure";
    v7 = v10;
    v8 = 2;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, &v13, v8);
    goto LABEL_10;
  }

  v9 = 1;
  return (*(*(a1 + 40) + 16))(*(a1 + 40), v9);
}

void *sub_100513C48(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void sub_100513C7C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void cellplan::CellularPlanControllerPhone::getRemoteProvisioningSubscriptionInfo_sync(uint64_t a1, char a2, const void **a3)
{
  v5 = *(a1 + 1040);
  if (*a3)
  {
    v6 = _Block_copy(*a3);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(a1, v5, 1u, a2, &v7);
  if (v6)
  {
    _Block_release(v6);
  }
}

void sub_100513D28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100513D4C(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void cellplan::CellularPlanControllerPhone::getSubscriptionInfoPerSlot(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v56 = a2;
  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  (*(**(a1 + 128) + 680))(&buf);
  v55 = 0;
  v13 = (*(*buf + 40))(buf, &v55, a2);
  sub_10001021C(&v55);
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
    {
      sub_1017736A4();
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    buf = 0u;
    (*(*a6 + 16))();
    *&__str = &v71 + 8;
    sub_100522C04(&__str);
    *&__str = &v70;
    sub_100522C58(&__str);
    if (v68 == 1)
    {
      if (SHIBYTE(v69) < 0)
      {
        operator delete(*(&v68 + 1));
      }

      LOBYTE(v68) = 0;
    }

    if (buf != 1 || (SHIBYTE(v67) & 0x80000000) == 0)
    {
      return;
    }

    v21 = *(&buf + 1);
LABEL_144:
    operator delete(v21);
    return;
  }

  (***(a1 + 128))(&__str);
  Registry::getTimerService(&buf, __str);
  v14 = (**buf)(buf);
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (*(&__str + 1))
  {
    sub_100004A34(*(&__str + 1));
  }

  if (a4)
  {
    goto LABEL_37;
  }

  v15 = *(a1 + 936);
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = a1 + 936;
  do
  {
    if (*(v15 + 32) >= v56)
    {
      v16 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 32) < v56));
  }

  while (v15);
  if (v16 == a1 + 936)
  {
    goto LABEL_37;
  }

  if (v56 < *(v16 + 32))
  {
    goto LABEL_37;
  }

  v17 = *(a1 + 960);
  if (!v17)
  {
    goto LABEL_37;
  }

  v18 = a1 + 960;
  do
  {
    if (*(v17 + 32) >= v56)
    {
      v18 = v17;
    }

    v17 = *(v17 + 8 * (*(v17 + 32) < v56));
  }

  while (v17);
  if (v18 == a1 + 960 || v56 < *(v18 + 32) || (*&buf = &v56, v19 = sub_1002B167C(a1 + 928, &v56, &unk_101802C98, &buf)[5], *&buf = &v56, v14 - v19 >= 1000000000 * sub_1002B167C(a1 + 952, &v56, &unk_101802C98, &buf)[5]))
  {
LABEL_37:
    v22 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I fetching subscription info", &buf, 2u);
    }

    memset(v77, 0, sizeof(v77));
    cellplan::CellularPlanControllerPhone::getPhoneSimIccid_sync(v77, a1, v56);
    if (LOBYTE(v77[0]) != 1 || *(a1 + 360) == *(a1 + 368) && *(a1 + 544) == *(a1 + 552))
    {
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
      {
        sub_1017736D8();
      }

      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      buf = 0u;
      (*(*a6 + 16))();
      *&__str = &v71 + 8;
      sub_100522C04(&__str);
      *&__str = &v70;
      sub_100522C58(&__str);
      if (v68 == 1)
      {
        if (SHIBYTE(v69) < 0)
        {
          operator delete(*(&v68 + 1));
        }

        LOBYTE(v68) = 0;
      }

      if (buf != 1 || (SHIBYTE(v67) & 0x80000000) == 0)
      {
        goto LABEL_141;
      }

      v27 = *(&buf + 1);
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      buf = 0u;
      std::string::operator=(&buf, &v77[1]);
      v24 = *(a5 + 23);
      if ((v24 & 0x80u) != 0)
      {
        v24 = *(a5 + 8);
      }

      if (v24)
      {
        sub_10016C728(&v67 + 8, a5);
      }

      if ((BYTE8(v67) & 1) == 0)
      {
        (*(**(a1 + 128) + 680))(&__str);
        v25 = (*(*__str + 104))(__str, v56);
        if (*(&__str + 1))
        {
          sub_100004A34(*(&__str + 1));
        }

        if (v25)
        {
          v26 = *(a1 + 360);
          if (*(a1 + 368) != v26)
          {
            v65 = *(v26 + 16);
            ctu::hex(&v65, 0x10, v23);
            if (BYTE8(v67) == 1)
            {
              if (SBYTE7(v69) < 0)
              {
                operator delete(v68);
              }

              v68 = __str;
              *&v69 = __str_16;
            }

            else
            {
              v68 = __str;
              *&v69 = __str_16;
              BYTE8(v67) = 1;
            }

            v28 = v56;
            v29 = *(a1 + 360);
            v30 = *(a1 + 368);
            memset(v54, 0, sizeof(v54));
            sub_10027E628(v54, v29, v30, 0x2E8BA2E8BA2E8BA3 * ((v30 - v29) >> 3));
            cellplan::CellularPlanControllerPhone::getRemoteIccidsForSignup_sync(a1, v28, v54, &v71);
            *&__str = v54;
            sub_100112048(&__str);
          }
        }
      }

      if ((BYTE8(v67) & 1) == 0 && *(a1 + 1224) == 1)
      {
        v65 = 0uLL;
        v31 = *(a1 + 1400);
        if (*(a1 + 1408) != v31)
        {
          v65 = *(v31 + 16);
          ctu::hex(&v65, 0x10, v23);
          if (BYTE8(v67) == 1)
          {
            if (SBYTE7(v69) < 0)
            {
              operator delete(v68);
            }

            v68 = __str;
            *&v69 = __str_16;
          }

          else
          {
            v68 = __str;
            *&v69 = __str_16;
            BYTE8(v67) = 1;
          }
        }

        if (*(a1 + 1256) == 1)
        {
          std::string::operator=((&v69 + 8), (a1 + 1264));
        }
      }

      LODWORD(v65) = 11;
      *&__str = &v65;
      v32 = sub_10031D3B0(a1 + 1088, &v65, &unk_101802C98, &__str);
      *&__str = &v56;
      if (*(sub_10030C46C((v32 + 5), &v56, &unk_101802C98, &__str) + 8) == 2)
      {
        v80 = 0u;
        v81 = 0u;
        __str = 0u;
        __str_16 = 0u;
        LODWORD(v80) = 3;
        BYTE4(v80) = 1;
        sub_10052C5FC((&v72 + 8), &__str);
        if (SHIBYTE(v81) < 0)
        {
          operator delete(*(&v80 + 1));
        }

        if (SBYTE7(__str_16) < 0)
        {
          operator delete(__str);
        }
      }

      sub_100004AA0(&__str, (a1 + 8));
      v33 = __str;
      if (*(&__str + 1))
      {
        atomic_fetch_add_explicit((*(&__str + 1) + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(*(&v33 + 1));
      }

      *&__str = 0;
      *(&__str + 1) = &__str;
      *&__str_16 = 0x3002000000;
      *(&__str_16 + 1) = sub_1005150D8;
      *&v80 = sub_1005150E8;
      *(&v80 + 1) = 0;
      if (a3)
      {
        (***(a1 + 128))(&v51);
        Registry::getTimerService(&v65, v51);
        v34 = v65;
        sub_10000501C(v49, "GetSIMStatusRspTimeout");
        v35 = *(a1 + 24);
        object = v35;
        if (v35)
        {
          dispatch_retain(v35);
        }

        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1174405120;
        aBlock[2] = sub_100515120;
        aBlock[3] = &unk_101E53EE0;
        aBlock[4] = &__str;
        aBlock[5] = v12;
        v36 = *a6;
        if (*a6)
        {
          v36 = _Block_copy(v36);
        }

        v46 = v36;
        v47 = _Block_copy(aBlock);
        sub_100D23364(v34, v49, 1, 30000000, &object, &v47);
        v37 = v53;
        v53 = 0;
        v38 = *(*(&__str + 1) + 40);
        *(*(&__str + 1) + 40) = v37;
        if (v38)
        {
          (*(*v38 + 8))(v38);
          v39 = v53;
          v53 = 0;
          if (v39)
          {
            (*(*v39 + 8))(v39);
          }
        }

        if (v47)
        {
          _Block_release(v47);
        }

        if (object)
        {
          dispatch_release(object);
        }

        if (v50 < 0)
        {
          operator delete(v49[0]);
        }

        if (*(&v65 + 1))
        {
          sub_100004A34(*(&v65 + 1));
        }

        if (v52)
        {
          sub_100004A34(v52);
        }

        if (v46)
        {
          _Block_release(v46);
        }
      }

      v40 = *(a1 + 240);
      v41 = v56;
      v57[0] = _NSConcreteStackBlock;
      v57[1] = 1174405120;
      v57[2] = sub_1005152E4;
      v57[3] = &unk_101E53F18;
      v57[5] = a1;
      v58 = v33;
      if (*(&v33 + 1))
      {
        atomic_fetch_add_explicit((*(&v33 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      v64 = a3;
      v57[4] = &__str;
      v63 = v41;
      v59 = 0;
      if (LOBYTE(v77[0]) == 1)
      {
        if (SHIBYTE(v77[3]) < 0)
        {
          sub_100005F2C(&v60, v77[1], v77[2]);
        }

        else
        {
          v60 = *&v77[1];
          v61 = v77[3];
        }

        v59 = 1;
      }

      v42 = *a6;
      if (*a6)
      {
        v42 = _Block_copy(v42);
      }

      v62 = v42;
      v44 = _Block_copy(v57);
      (**v40)(v40, v41, &buf, a3, &v44);
      if (v44)
      {
        _Block_release(v44);
      }

      if (v62)
      {
        _Block_release(v62);
      }

      if (v59 == 1)
      {
        if (SHIBYTE(v61) < 0)
        {
          operator delete(v60);
        }

        v59 = 0;
      }

      if (*(&v58 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v58 + 1));
      }

      _Block_object_dispose(&__str, 8);
      v43 = *(&v80 + 1);
      *(&v80 + 1) = 0;
      if (v43)
      {
        (*(*v43 + 8))(v43);
      }

      if (*(&v33 + 1))
      {
        std::__shared_weak_count::__release_weak(*(&v33 + 1));
      }

      if (BYTE8(v72) == 1)
      {
        if (SHIBYTE(v76) < 0)
        {
          operator delete(*(&v75 + 1));
        }

        if (SBYTE7(v74) < 0)
        {
          operator delete(v73);
        }

        BYTE8(v72) = 0;
      }

      *&__str = &v71;
      sub_1000087B4(&__str);
      if (SHIBYTE(v70) < 0)
      {
        operator delete(*(&v69 + 1));
      }

      if (BYTE8(v67) == 1)
      {
        if (SBYTE7(v69) < 0)
        {
          operator delete(v68);
        }

        BYTE8(v67) = 0;
      }

      if ((SBYTE7(v67) & 0x80000000) == 0)
      {
        goto LABEL_141;
      }

      v27 = buf;
    }

    operator delete(v27);
LABEL_141:
    if (LOBYTE(v77[0]) != 1 || (SHIBYTE(v77[3]) & 0x80000000) == 0)
    {
      return;
    }

    v21 = v77[1];
    goto LABEL_144;
  }

  v20 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Skip getSIMStatus, as too frequent actions!", &buf, 2u);
  }

  *&v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  buf = 0u;
  (*(**(a1 + 160) + 112))(&buf);
  if (buf == 1)
  {
    (*(*a6 + 16))();
  }

  else
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    __str_16 = 0u;
    v80 = 0u;
    __str = 0u;
    (*(*a6 + 16))();
    sub_10051504C(&__str);
  }

  if (buf == 1)
  {
    *&__str = &v72;
    sub_100522C04(&__str);
    *&__str = &v70 + 8;
    sub_100522C58(&__str);
    if (BYTE8(v68) == 1)
    {
      if (SBYTE7(v70) < 0)
      {
        operator delete(v69);
      }

      BYTE8(v68) = 0;
    }

    if (BYTE8(buf) == 1 && SBYTE7(v68) < 0)
    {
      v21 = v67;
      goto LABEL_144;
    }
  }
}

void sub_100514A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *aBlock, dispatch_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_10051504C(v54 - 208);
  sub_100522CAC(&a53);
  _Unwind_Resume(a1);
}

void sub_100514CD8(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = a1 + 32;
  v6 = *(a1 + 48);
  v7 = *(*(a1 + 32) + 8);
  v8 = (a1 + 64);
  *&v15 = a1 + 64;
  *(sub_10052C03C(v7 + 40, (a1 + 64), &unk_101802C98, &v15) + 10) = a2;
  v9 = *(*v5 + 8);
  *&v15 = v8;
  v10 = sub_10052C03C(v9 + 40, v8, &unk_101802C98, &v15);
  sub_10016E810((v10 + 6), a3);
  sub_10016E810((v10 + 10), (a3 + 4));
  if (v10 + 6 != a3)
  {
    sub_1005221AC(v10 + 14, a3[8], a3[9], 0x8E38E38E38E38E39 * ((a3[9] - a3[8]) >> 4));
    sub_1005226DC(v10 + 17, a3[11], a3[12], 0xCF3CF3CF3CF3CF3DLL * ((a3[12] - a3[11]) >> 3));
  }

  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  *__p = 0u;
  v21 = 0u;
  *v19 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v15 = 0u;
  *v16 = 0u;
  sub_100922C88(*v8, (v6 + 304), &v15);
  if (v15 == 1)
  {
    v11 = *(v6 + 160);
    v12 = *(*(a1 + 32) + 8);
    v14 = v8;
    v13 = sub_10052C03C(v12 + 40, v8, &unk_101802C98, &v14);
    (*(*v11 + 16))(v11, &v15 + 8, v13 + 5);
  }

  if (++*(*(*(a1 + 40) + 8) + 24) == *(a1 + 68))
  {
    sub_100514F8C((a1 + 56), *(*(a1 + 32) + 8) + 40);
  }

  if (v15 == 1)
  {
    if (SHIBYTE(v24) < 0)
    {
      operator delete(*(&v23 + 1));
    }

    if (SBYTE7(v23) < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v19[0]);
    }

    v14 = v18;
    sub_100034D1C(&v14);
    if (v16[1])
    {
      *&v17 = v16[1];
      operator delete(v16[1]);
    }
  }
}

void sub_100514F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1005032D8(va);
  _Unwind_Resume(a1);
}

void sub_100514F8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  sub_10052C1D0(v3, a2);
  (*(v2 + 16))(v2, v3);
  sub_10052BF90(v3, v3[1]);
}

void *sub_100514FF4(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 56) = result;
  return result;
}

void sub_100515028(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t sub_10051504C(uint64_t a1)
{
  v3 = (a1 + 88);
  sub_100522C04(&v3);
  v3 = (a1 + 64);
  sub_100522C58(&v3);
  if (*(a1 + 32) == 1)
  {
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    *(a1 + 32) = 0;
  }

  if (*a1 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1005150D8(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a2 + 40) = 0;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_1005150E8(uint64_t a1)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100515120(uint64_t a1)
{
  v2 = **(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I GetSIMStatusRspTimeout fired!", buf, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v7 = 0u;
  *__p = 0u;
  *buf = 0u;
  (*(*(a1 + 48) + 16))();
  v5 = &v10[1] + 1;
  sub_100522C04(&v5);
  v5 = v10;
  sub_100522C58(&v5);
  if (LOBYTE(__p[0]) == 1)
  {
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[1]);
    }

    LOBYTE(__p[0]) = 0;
  }

  if (buf[0] == 1 && SHIBYTE(v7) < 0)
  {
    operator delete(*&buf[8]);
  }
}

void sub_100515278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10051504C(va);
  _Unwind_Resume(a1);
}

void *sub_10051528C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void sub_1005152C0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_1005152E4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (!*(a1 + 48))
      {
LABEL_18:
        sub_100004A34(v8);
        return;
      }

      v9 = *(*(*(a1 + 32) + 8) + 40);
      if (*(a1 + 108) == 1)
      {
        if (!v9)
        {
          goto LABEL_18;
        }
      }

      else if (!v9)
      {
LABEL_10:
        if (!a3)
        {
          if ((*(a1 + 64) & 1) == 0)
          {
            __assert_rtn("get", "optional.hpp", 1211, "this->is_initialized()");
          }

          v16 = (a1 + 104);
          v12 = sub_100170BC0(v6 + 1048, (a1 + 104), &unk_101802C98, &v16);
          std::string::operator=((v12 + 5), (a1 + 72));
        }

        (***(v6 + 128))(&v14);
        Registry::getTimerService(&v16, v14);
        v13 = (**v16)(v16);
        v18 = (a1 + 104);
        sub_1002B167C(v6 + 928, (a1 + 104), &unk_101802C98, &v18)[5] = v13;
        if (v17)
        {
          sub_100004A34(v17);
        }

        if (v15)
        {
          sub_100004A34(v15);
        }

        (*(*(a1 + 96) + 16))();
        goto LABEL_18;
      }

      (*(*v9 + 16))(v9);
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = 0;
      if (v11)
      {
        (*(*v11 + 8))(v11);
      }

      goto LABEL_10;
    }
  }
}

void sub_1005154E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void *sub_100515520(void *a1, void *a2)
{
  v4 = a2[7];
  a1[6] = a2[6];
  a1[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10016E9C0((a1 + 8), (a2 + 8));
  result = a2[12];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[12] = result;
  return result;
}

void sub_10051557C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100515594(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 64) == 1)
  {
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void cellplan::CellularPlanControllerPhone::fetchProfilesForRemoteProvisioning_sync(uint64_t a1, __int128 *a2, __int128 **a3, const void **a4)
{
  sub_10004ECBC(__dst, *a3);
  if (*a4)
  {
    v7 = _Block_copy(*a4);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  cellplan::CellularPlanControllerPhone::fetchProfile_sync(a1, a2, __dst, &v8);
}

void sub_100515698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (v10)
  {
    _Block_release(v10);
  }

  sub_100F118F0(va);
  _Unwind_Resume(a1);
}

BOOL cellplan::CellularPlanControllerPhone::setPlanTransferHttpRequest_sync(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = a1[38];
    v10 = a1[39];
    if (v9 != v10)
    {
      while (*v9 != a2)
      {
        v9 += 168;
        if (v9 == v10)
        {
          v9 = a1[39];
          break;
        }
      }
    }

    memset(&v22, 0, sizeof(v22));
    if (*(v9 + 95) < 0)
    {
      sub_100005F2C(&v22, *(v9 + 72), *(v9 + 80));
    }

    else
    {
      v22 = *(v9 + 72);
    }

    if (*(a4 + 24) == 1)
    {
      if (*(a4 + 23) < 0)
      {
        sub_100005F2C(__p, *a4, *(a4 + 8));
      }

      else
      {
        *__p = *a4;
        v27 = *(a4 + 16);
      }
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v27 = 0;
    }

    if (*(a5 + 55) < 0)
    {
      operator delete(*(a5 + 32));
    }

    *(a5 + 32) = *__p;
    *(a5 + 48) = v27;
    sub_100C00C8C(a3, __p);
    sub_10016E3EC(a5, __p);
    if (LOBYTE(__p[0]) == 1 && v28 < 0)
    {
      operator delete(__p[1]);
    }

    if (*(a3 + 80) == 1)
    {
      std::string::operator=((a5 + 56), (a3 + 56));
    }

    v11 = *(a3 + 32);
    v12 = *(a3 + 40);
    while (v11 != v12)
    {
      sub_100C00C8C((v11 + 24), __p);
      sub_100C00C8C((v11 + 56), &v23);
      v13 = *(a5 + 88);
      if (v13 >= *(a5 + 96))
      {
        v14 = sub_100522DF4(a5 + 80, v11, __p, &v23);
      }

      else
      {
        sub_100522F54(*(a5 + 88), v11, __p, &v23);
        v14 = v13 + 88;
        *(a5 + 88) = v13 + 88;
      }

      *(a5 + 88) = v14;
      if (v23 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (LOBYTE(__p[0]) == 1 && v28 < 0)
      {
        operator delete(__p[1]);
      }

      v11 += 96;
    }

    if (*(a5 + 135) < 0)
    {
      *(a5 + 120) = 11;
      v15 = *(a5 + 112);
    }

    else
    {
      v15 = (a5 + 112);
      *(a5 + 135) = 11;
    }

    strcpy(v15, "Apple Watch");
    sub_10052C700(a5 + 136, &off_101E53948);
    sub_10016C728((a5 + 168), &v22);
    std::string::operator=((a5 + 200), (a3 + 88));
    v16 = *(a3 + 112);
    v17 = *(a3 + 120);
    while (v16 != v17)
    {
      sub_100C00C8C((v16 + 24), __p);
      sub_100C00C8C((v16 + 56), &v23);
      v18 = *(a5 + 232);
      if (v18 >= *(a5 + 240))
      {
        v19 = sub_100522DF4(a5 + 224, v16, __p, &v23);
      }

      else
      {
        sub_100522F54(*(a5 + 232), v16, __p, &v23);
        v19 = v18 + 88;
        *(a5 + 232) = v18 + 88;
      }

      *(a5 + 232) = v19;
      if (v23 == 1 && v25 < 0)
      {
        operator delete(v24);
      }

      if (LOBYTE(__p[0]) == 1 && v28 < 0)
      {
        operator delete(__p[1]);
      }

      v16 += 96;
    }

    if (*(a5 + 279) < 0)
    {
      *(a5 + 264) = 11;
      v20 = *(a5 + 256);
    }

    else
    {
      v20 = (a5 + 256);
      *(a5 + 279) = 11;
    }

    strcpy(v20, "Apple Watch");
    sub_10052C700(a5 + 280, &off_101E53948);
    sub_10016C728((a5 + 312), &v22);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177370C();
  }

  return a2 != 0;
}

void sub_100515A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::getRemoteProvisioningWebsheetInfo_sync(uint64_t a1, uint64_t a2)
{
  v4[0] = 0;
  sub_10052C7B4(v3, a2);
  cellplan::CellularPlanControllerPhone::getRemoteSignUpUrlAndPostdata(a1, v4, v3);
  sub_1003B592C(v3);
  if (v4[0] == 1 && v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_100515BCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1003B592C(&a10);
  if ((a14 & 1) != 0 && a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::getRemoteSignUpUrlAndPostdata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v93 = 0;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v6 = *(a1 + 1040);
  v72 = 0;
  v71 = 0;
  v73 = 0;
  v7 = cellplan::CellularPlanControllerPhone::setRemotePlanSignupRequest_sync(a1, v6, 1, &v71, &v79);
  v8 = v7;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v71);
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (v7)
  {
LABEL_3:
    sub_100004AA0(&v71, (a1 + 8));
    v9 = v71;
    v10 = v72;
    if (v72)
    {
      atomic_fetch_add_explicit(v72 + 2, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
    }

    v71 = 0;
    v72 = &v71;
    v73 = 0x3002000000;
    v74 = sub_1005150D8;
    v75 = sub_1005150E8;
    v76 = 0;
    (***(a1 + 128))(&v24);
    Registry::getTimerService(&v26, v24);
    v11 = v26;
    sub_10000501C(__p, "SignUpForSIMServiceRspTimeout");
    v12 = *(a1 + 24);
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_100516858;
    aBlock[3] = &unk_101E53F50;
    aBlock[5] = a1;
    aBlock[4] = &v71;
    sub_10052C7B4(v70, a3);
    v20 = _Block_copy(aBlock);
    sub_100D23364(v11, __p, 1, 30000000, &object, &v20);
    v13 = v28;
    v28 = 0;
    v14 = v72[5];
    v72[5] = v13;
    if (v14)
    {
      (*(*v14 + 8))(v14);
      v15 = v28;
      v28 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
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

    if (v27)
    {
      sub_100004A34(v27);
    }

    if (v25)
    {
      sub_100004A34(v25);
    }

    v16 = *(a1 + 240);
    v17 = *(a1 + 1040);
    sub_10016EA28(__dst, &v79);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 1174405120;
    v29[2] = sub_10051699C;
    v29[3] = &unk_101E53F88;
    v29[5] = a1;
    v29[6] = v9;
    v30 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v29[4] = &v71;
    sub_10052C7B4(v31, a3);
    sub_10016EA28(&v32, &v79);
    sub_10016E9C0(v49, a2);
    v19 = _Block_copy(v29);
    (*(*v16 + 8))(v16, v17, __dst, &v19);
    if (v19)
    {
      _Block_release(v19);
    }

    if (v66 == 1)
    {
      if (v68 < 0)
      {
        operator delete(v67);
      }

      v66 = 0;
    }

    if (v63 == 1)
    {
      if (v65 < 0)
      {
        operator delete(v64);
      }

      v63 = 0;
    }

    if (v60 == 1)
    {
      if (v62 < 0)
      {
        operator delete(v61);
      }

      v60 = 0;
    }

    if (v57 == 1)
    {
      if (v59 < 0)
      {
        operator delete(v58);
      }

      v57 = 0;
    }

    v26 = &v56;
    sub_1000087B4(&v26);
    if (v55 < 0)
    {
      operator delete(v54);
    }

    if (v53 < 0)
    {
      operator delete(__dst[0]);
    }

    if (v49[0] == 1)
    {
      if (v51 < 0)
      {
        operator delete(v50);
      }

      v49[0] = 0;
    }

    if (v46 == 1)
    {
      if (v48 < 0)
      {
        operator delete(v47);
      }

      v46 = 0;
    }

    if (v43 == 1)
    {
      if (v45 < 0)
      {
        operator delete(v44);
      }

      v43 = 0;
    }

    if (v40 == 1)
    {
      if (v42 < 0)
      {
        operator delete(v41);
      }

      v40 = 0;
    }

    if (v37 == 1)
    {
      if (v39 < 0)
      {
        operator delete(v38);
      }

      v37 = 0;
    }

    v26 = &v36;
    sub_1000087B4(&v26);
    if (v35 < 0)
    {
      operator delete(v34);
    }

    if (v33 < 0)
    {
      operator delete(v32);
    }

    sub_1003B592C(v31);
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    sub_1003B592C(v70);
    _Block_object_dispose(&v71, 8);
    v18 = v76;
    v76 = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    goto LABEL_79;
  }

  bzero(&v71, 0x310uLL);
  sub_1005167B8(a3, 0);
  sub_1005230E0(&v78);
  if (v77 < 0)
  {
    operator delete(v75);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v71);
  }

LABEL_79:
  if (v90 == 1)
  {
    if (SHIBYTE(v91) < 0)
    {
      operator delete(*(&v90 + 1));
    }

    LOBYTE(v90) = 0;
  }

  if (BYTE8(v87) == 1)
  {
    if (SBYTE7(v89) < 0)
    {
      operator delete(v88);
    }

    BYTE8(v87) = 0;
  }

  if (BYTE8(v85) == 1)
  {
    if (SBYTE7(v87) < 0)
    {
      operator delete(v86);
    }

    BYTE8(v85) = 0;
  }

  if (BYTE8(v83) == 1)
  {
    if (SBYTE7(v85) < 0)
    {
      operator delete(v84);
    }

    BYTE8(v83) = 0;
  }

  v71 = &v82;
  sub_1000087B4(&v71);
  if (SHIBYTE(v81) < 0)
  {
    operator delete(*(&v80 + 1));
  }

  if (SBYTE7(v80) < 0)
  {
    operator delete(v79);
  }
}