void sub_1005AE158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61)
{
  sub_1005AD788(v61 + 88);
  sub_100113648(v62 + 56);
  if (a61)
  {
    std::__shared_weak_count::__release_weak(a61);
  }

  sub_1005AD788(&a9);
  v65 = *(v63 - 168);
  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  v66 = *(v63 - 152);
  if (v66)
  {
    sub_100004A34(v66);
  }

  sub_1005AD788(&a25);
  sub_1009BD5D4(&a37);
  _Unwind_Resume(a1);
}

void sub_1005AE230(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005AE4F8;
  v10[3] = &unk_101E66470;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_1001135B0(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100113648(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005AE498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005AE4F8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(a1 + 56);
        v7 = v3[6];
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(a1 + 64));
            *buf = 136315394;
            *&buf[4] = "deleteProfile";
            *&buf[12] = 2080;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
            v10 = *(a1 + 56);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v36, v35);
            }
          }

          v11 = sub_1005AD768(*(a1 + 64));
          v48[0] = 2;
          v48[1] = v11;
          v12 = *(a1 + 176);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, v48);
          v48[0] = 0;
        }

        else
        {
          if (v8)
          {
            *buf = 136315138;
            *&buf[4] = "deleteProfile";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
            v6 = *(a1 + 56);
          }

          v46 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(v45, 0, sizeof(v45));
          *__dst = 0u;
          if (v6 != 1)
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v32 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v31);
            }

            else
            {
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
            }

            __cxa_throw(v31, v33, v32);
          }

          if (*(a1 + 87) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            *__dst = *(a1 + 64);
            v45[0] = *(a1 + 80);
          }

          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&v45[1], *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *&v45[1] = *(a1 + 88);
            v45[3] = *(a1 + 104);
          }

          LOWORD(v46) = *(a1 + 112);
          sub_10002D728(&v46 + 1, (a1 + 120));
          sub_1002030F8(v47, (a1 + 128));
          v47[1] = *(a1 + 136);
          *(&v47[1] + 6) = *(a1 + 142);
          (*(*v3 + 248))(buf, v3, *(a1 + 256));
          v13 = *buf;
          if (SHIBYTE(v45[3]) < 0)
          {
            sub_100005F2C(__p, v45[1], v45[2]);
          }

          else
          {
            *__p = *&v45[1];
            v43 = v45[3];
          }

          (*(*v13 + 56))(v13, __p);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_100A34C5C(buf);
          if (*(&v46 + 1))
          {
            *v39 = 0u;
            v40 = 0u;
            BytePtr = CFDataGetBytePtr(*(&v46 + 1));
            Length = CFDataGetLength(*(&v46 + 1));
            PB::Reader::Reader(v39, BytePtr, Length);
            if (sub_100A353F0(buf, v39))
            {
              v16 = *&buf[16];
              if (*&buf[16])
              {
                v17 = *(*&buf[16] + 8);
                if (v17 && *(v17 + 8) == 16 && ((v18 = *v17, v20 = *v18, v19 = v18[1], *(a1 + 272) == v20) ? (v21 = *(a1 + 280) == v19) : (v21 = 0), v21))
                {
                  if (*(*&buf[16] + 24))
                  {
                    v29 = v3[6];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = *(v16 + 16);
                      *v49 = 67109120;
                      v50 = v30;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v49, 8u);
                    }
                  }
                }

                else
                {
                  v22 = v3[6];
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v49 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v49, 2u);
                  }
                }

                sub_1005AC2FC(a1 + 152);
              }

              else
              {
                v27 = v3[6];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *v49 = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Bad response", v49, 2u);
                }

                v37 = 3586;
                v28 = *(a1 + 176);
                if (!v28)
                {
                  sub_100022DB4();
                }

                (*(*v28 + 48))(v28, &v37);
                LOBYTE(v37) = 0;
              }
            }

            else
            {
              v25 = v3[6];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v49, 2u);
              }

              v38 = 3330;
              v26 = *(a1 + 176);
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, &v38);
              LOBYTE(v38) = 0;
            }
          }

          else
          {
            v23 = v3[6];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E no response data", v39, 2u);
            }

            v41 = 1;
            v24 = *(a1 + 176);
            if (!v24)
            {
              sub_100022DB4();
            }

            (*(*v24 + 48))(v24, &v41);
            LOBYTE(v41) = 0;
          }

          sub_100A34FF0(buf);
          sub_1002030AC(v47);
          sub_10002D760(&v46 + 1);
          if (SHIBYTE(v45[3]) < 0)
          {
            operator delete(v45[1]);
          }

          if (SHIBYTE(v45[0]) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005AEC2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100A34FF0(&a55);
  sub_1005AD788(&__p);
  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

const void **sub_1005AED28(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C((a1 + 56), (a2 + 56));
  sub_1001135B0(a1 + 152, a2 + 152);
  if (*(a2 + 207) < 0)
  {
    sub_100005F2C((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v5 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v5;
  }

  if (*(a2 + 231) < 0)
  {
    sub_100005F2C((a1 + 208), *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v6 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v6;
  }

  *(a1 + 232) = *(a2 + 232);
  sub_10002D728((a1 + 240), (a2 + 240));
  result = sub_1002030F8((a1 + 248), (a2 + 248));
  v8 = *(a2 + 256);
  *(a1 + 262) = *(a2 + 262);
  *(a1 + 256) = v8;
  return result;
}

void sub_1005AEE04(_Unwind_Exception *a1)
{
  if (*(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100113648(v1 + 152);
  sub_1005C116C(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005AEE54(uint64_t a1)
{
  sub_1002030AC((a1 + 248));
  sub_10002D760((a1 + 240));
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  sub_100113648(a1 + 152);
  sub_1005C116C(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

const void **sub_1005AEED8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1001135B0(a1 + 56, a2 + 56);
  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
  }

  *(a1 + 136) = *(a2 + 136);
  sub_10002D728((a1 + 144), (a2 + 144));
  result = sub_1002030F8((a1 + 152), (a2 + 152));
  v8 = *(a2 + 160);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 160) = v8;
  return result;
}

void sub_1005AEFA0(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  sub_100113648(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005AEFE0(uint64_t a1)
{
  sub_1002030AC((a1 + 152));
  sub_10002D760((a1 + 144));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_100113648(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1005AF05C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v65 = a2;
  *(&v65 + 1) = a3;
  v7 = a1[10];
  if (!v7)
  {
LABEL_6:
    v53 = 2818;
    v12 = *(a6 + 24);
    if (!v12)
    {
      sub_100022DB4();
    }

    (*(*v12 + 48))(v12, &v53, a3, a4, a5);
    return;
  }

  while (1)
  {
    v11 = *(v7 + 7);
    if (v11 <= 0)
    {
      break;
    }

LABEL_5:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_6;
    }
  }

  if (v11 < 0)
  {
    ++v7;
    goto LABEL_5;
  }

  v51 = 0u;
  v52 = 0u;
  memset(v50, 0, sizeof(v50));
  sub_1009BD270(v50);
  *cf = 0u;
  *v49 = 0u;
  *&v49[20] = 0;
  memset(v47, 0, sizeof(v47));
  v49[8] = 2;
  *&v49[12] = 0x50000003CLL;
  sub_1009BEFA8(v50);
  v13 = sub_1005C1B94((a1 + 15), &v65);
  if (a1 + 16 == v13)
  {
    v23 = a1[6];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if ((SBYTE7(v44) & 0x80u) == 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v24;
      v25 = "#E %s not found";
LABEL_42:
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
      if (SBYTE7(v44) < 0)
      {
        operator delete(__p[0]);
      }
    }

LABEL_44:
    v46 = 1;
    v32 = *(a6 + 24);
    if (!v32)
    {
      sub_100022DB4();
    }

    (*(*v32 + 48))(v32, &v46);
    LOBYTE(v46) = 0;
    goto LABEL_46;
  }

  v14 = a1[12];
  v15 = a1[13];
  if (v14 != v15)
  {
    v16 = v13 + 6;
    v17 = *(v13 + 71);
    if (v17 >= 0)
    {
      v18 = *(v13 + 71);
    }

    else
    {
      v18 = v13[7];
    }

    while (1)
    {
      v19 = *(v14 + 23);
      v20 = v19;
      if ((v19 & 0x80u) != 0)
      {
        v19 = *(v14 + 8);
      }

      if (v18 == v19)
      {
        v21 = v17 >= 0 ? v16 : *v16;
        v22 = v20 >= 0 ? v14 : *v14;
        if (!memcmp(v21, v22, v18))
        {
          break;
        }
      }

      v14 += 96;
      if (v14 == v15)
      {
        goto LABEL_37;
      }
    }
  }

  if (v14 == v15)
  {
LABEL_37:
    v23 = a1[6];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if ((SBYTE7(v44) & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v31;
      v25 = "#E Device not found for %s";
      goto LABEL_42;
    }

    goto LABEL_44;
  }

  sub_10039EF40(*(&v51 + 1));
  PB::Data::assign(*(*(&v51 + 1) + 8), &v65, v66);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v47, v14);
  v26 = *(&v51 + 1);
  sub_10027F75C(*(&v51 + 1));
  std::string::operator=(*(v26 + 16), a4);
  v27 = *(&v51 + 1);
  v28 = *(a4 + 24);
  *(*(&v51 + 1) + 60) |= 1u;
  *(v27 + 56) = v28;
  if (*(a5 + 24) == 1)
  {
    v30 = *a5;
    v29 = *(a5 + 8);
    while (v30 != v29)
    {
      v44 = 0u;
      v45 = 0u;
      *__p = 0u;
      sub_1007F9EE0(__p);
      if (sub_10039F3B8(v30, __p))
      {
        sub_1005AF8F8((*(&v51 + 1) + 32), __p);
      }

      sub_1007F9F90(__p);
      v30 += 88;
    }
  }

  v33 = a1[6];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I [UpdateProfileReq]", __p, 2u);
  }

  sub_1005ACC40(v50, buf);
  __p[0] = cf[1];
  cf[1] = *buf;
  *buf = 0;
  sub_10002D760(__p);
  sub_10002D760(buf);
  *&v49[12] = 120;
  v49[8] = (*(*a1 + 224))(a1, &v65);
  *buf = 0uLL;
  (*(*a1 + 248))(buf, a1);
  if (*buf)
  {
    sub_100004AA0(__p, a1 + 2);
    v35 = __p[0];
    v34 = __p[1];
    if (__p[1])
    {
      atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
      sub_100004A34(v34);
    }

    v36 = *buf;
    if (SHIBYTE(v47[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v37, v47[0].__r_.__value_.__l.__data_, v47[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v37 = v47[0];
    }

    if (SHIBYTE(v47[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v38, v47[1].__r_.__value_.__l.__data_, v47[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v38 = v47[1];
    }

    v39 = cf[0];
    v40 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v41 = *v49;
    if (*v49)
    {
      CFRetain(*v49);
    }

    v42[0] = *&v49[8];
    *(v42 + 6) = *&v49[14];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 1174405120;
    v54[2] = sub_1005AFA4C;
    v54[3] = &unk_101E66500;
    v54[4] = a1;
    v54[5] = v35;
    v55 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001135B0(v56, a6);
    if (SHIBYTE(v47[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v57, v47[0].__r_.__value_.__l.__data_, v47[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v57 = v47[0];
    }

    if (SHIBYTE(v47[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v58, v47[1].__r_.__value_.__l.__data_, v47[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v58 = v47[1];
    }

    v59 = cf[0];
    v60 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v61 = *v49;
    if (*v49)
    {
      CFRetain(*v49);
    }

    v62[0] = *&v49[8];
    *(v62 + 6) = *&v49[14];
    v63 = v65;
    (*(*v36 + 48))(v36, &v37, v54);
    sub_1002030AC(&v41);
    sub_10002D760(&v40);
    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(&v61);
    sub_10002D760(&v60);
    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v58.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    sub_100113648(v56);
    if (v55)
    {
      std::__shared_weak_count::__release_weak(v55);
    }

    if (v34)
    {
      std::__shared_weak_count::__release_weak(v34);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

LABEL_46:
  sub_1002030AC(v49);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v47[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47[0].__r_.__value_.__l.__data_);
  }

  sub_1009BD5D4(v50);
}

void sub_1005AF7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a67 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v68 + 56);
  if (a65)
  {
    std::__shared_weak_count::__release_weak(a65);
  }

  sub_1005AD788(&a9);
  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }

  v71 = *(v69 - 136);
  if (v71)
  {
    sub_100004A34(v71);
  }

  sub_1005AD788(&a29);
  sub_1009BD5D4(&a41);
  _Unwind_Resume(a1);
}

void sub_1005AFA4C(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005AFD14;
  v10[3] = &unk_101E664D0;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_1001135B0(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100113648(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005AFCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005AFD14(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(a1 + 56);
        v7 = v3[6];
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(a1 + 64));
            *buf = 136315394;
            *&buf[4] = "updateProfile";
            *&buf[12] = 2080;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
            v10 = *(a1 + 56);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v36, v35);
            }
          }

          v11 = sub_1005AD768(*(a1 + 64));
          v48[0] = 2;
          v48[1] = v11;
          v12 = *(a1 + 176);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, v48);
          v48[0] = 0;
        }

        else
        {
          if (v8)
          {
            *buf = 136315138;
            *&buf[4] = "updateProfile";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
            v6 = *(a1 + 56);
          }

          v46 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(v45, 0, sizeof(v45));
          *__dst = 0u;
          if (v6 != 1)
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v32 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v31);
            }

            else
            {
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
            }

            __cxa_throw(v31, v33, v32);
          }

          if (*(a1 + 87) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            *__dst = *(a1 + 64);
            v45[0] = *(a1 + 80);
          }

          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&v45[1], *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *&v45[1] = *(a1 + 88);
            v45[3] = *(a1 + 104);
          }

          LOWORD(v46) = *(a1 + 112);
          sub_10002D728(&v46 + 1, (a1 + 120));
          sub_1002030F8(v47, (a1 + 128));
          v47[1] = *(a1 + 136);
          *(&v47[1] + 6) = *(a1 + 142);
          (*(*v3 + 248))(buf, v3, *(a1 + 256));
          v13 = *buf;
          if (SHIBYTE(v45[3]) < 0)
          {
            sub_100005F2C(__p, v45[1], v45[2]);
          }

          else
          {
            *__p = *&v45[1];
            v43 = v45[3];
          }

          (*(*v13 + 56))(v13, __p);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_100A34C5C(buf);
          if (*(&v46 + 1))
          {
            *v39 = 0u;
            v40 = 0u;
            BytePtr = CFDataGetBytePtr(*(&v46 + 1));
            Length = CFDataGetLength(*(&v46 + 1));
            PB::Reader::Reader(v39, BytePtr, Length);
            if (sub_100A353F0(buf, v39))
            {
              v16 = v57;
              if (v57)
              {
                v17 = *(v57 + 8);
                if (v17 && *(v17 + 8) == 16 && ((v18 = *v17, v20 = *v18, v19 = v18[1], *(a1 + 272) == v20) ? (v21 = *(a1 + 280) == v19) : (v21 = 0), v21))
                {
                  if (*(v57 + 24))
                  {
                    v29 = v3[6];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = *(v16 + 16);
                      *v49 = 67109120;
                      v50 = v30;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v49, 8u);
                    }
                  }
                }

                else
                {
                  v22 = v3[6];
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v49 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v49, 2u);
                  }
                }

                sub_1005AC2FC(a1 + 152);
              }

              else
              {
                v27 = v3[6];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *v49 = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Bad response", v49, 2u);
                }

                v37 = 3586;
                v28 = *(a1 + 176);
                if (!v28)
                {
                  sub_100022DB4();
                }

                (*(*v28 + 48))(v28, &v37);
                LOBYTE(v37) = 0;
              }
            }

            else
            {
              v25 = v3[6];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v49, 2u);
              }

              v38 = 3330;
              v26 = *(a1 + 176);
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, &v38);
              LOBYTE(v38) = 0;
            }
          }

          else
          {
            v23 = v3[6];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E no response data", v39, 2u);
            }

            v41 = 1;
            v24 = *(a1 + 176);
            if (!v24)
            {
              sub_100022DB4();
            }

            (*(*v24 + 48))(v24, &v41);
            LOBYTE(v41) = 0;
          }

          sub_100A34FF0(buf);
          sub_1002030AC(v47);
          sub_10002D760(&v46 + 1);
          if (SHIBYTE(v45[3]) < 0)
          {
            operator delete(v45[1]);
          }

          if (SHIBYTE(v45[0]) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005B0448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100A34FF0(&a55);
  sub_1005AD788(&__p);
  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

void sub_1005B0544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v60 = a2;
  *(&v60 + 1) = a3;
  v6 = a1[10];
  if (!v6)
  {
LABEL_7:
    v48 = 2818;
    v10 = *(a5 + 24);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, &v48, a3, a4);
    return;
  }

  v7 = a4;
  while (1)
  {
    v9 = *(v6 + 7);
    if (v9 <= 0)
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

  if (v9 < 0)
  {
    ++v6;
    goto LABEL_6;
  }

  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  memset(v44, 0, sizeof(v44));
  sub_1009BD270(v44);
  *cf = 0u;
  *v43 = 0u;
  *&v43[20] = 0;
  memset(v41, 0, sizeof(v41));
  v43[8] = 2;
  *&v43[12] = 0x50000003CLL;
  sub_1009BEE88(v44);
  v11 = sub_1005C1B94((a1 + 15), &v60);
  if (a1 + 16 == v11)
  {
    v21 = a1[6];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v40 >= 0)
      {
        v22 = buf;
      }

      else
      {
        v22 = *buf;
      }

      *v59 = 136315138;
      *&v59[4] = v22;
      v23 = "#E %s not found";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, v59, 0xCu);
      if (v40 < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_47:
    v37 = 1;
    v30 = *(a5 + 24);
    if (!v30)
    {
      sub_100022DB4();
    }

    (*(*v30 + 48))(v30, &v37);
    LOBYTE(v37) = 0;
    goto LABEL_49;
  }

  v12 = a1[12];
  v13 = a1[13];
  if (v12 != v13)
  {
    v14 = v11 + 6;
    v15 = *(v11 + 71);
    if (v15 >= 0)
    {
      v16 = *(v11 + 71);
    }

    else
    {
      v16 = v11[7];
    }

    while (1)
    {
      v17 = *(v12 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v12 + 8);
      }

      if (v16 == v17)
      {
        v19 = v15 >= 0 ? v14 : *v14;
        v20 = v18 >= 0 ? v12 : *v12;
        if (!memcmp(v19, v20, v16))
        {
          break;
        }
      }

      v12 += 96;
      if (v12 == v13)
      {
        goto LABEL_40;
      }
    }
  }

  if (v12 == v13)
  {
LABEL_40:
    v21 = a1[6];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v40 >= 0)
      {
        v29 = buf;
      }

      else
      {
        v29 = *buf;
      }

      *v59 = 136315138;
      *&v59[4] = v29;
      v23 = "#E Device not found for %s";
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  sub_10039EF40(*(&v45 + 1));
  PB::Data::assign(*(*(&v45 + 1) + 8), &v60, v61);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v41, v12);
  v24 = *(&v45 + 1);
  *(*(&v45 + 1) + 20) |= 1u;
  *(v24 + 16) = v7;
  v25 = a1[6];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I [StartSessionReq]", buf, 2u);
  }

  sub_1005ACC40(v44, v59);
  *buf = cf[1];
  cf[1] = *v59;
  *v59 = 0;
  sub_10002D760(buf);
  sub_10002D760(v59);
  *&v43[12] = 30;
  v43[8] = (*(*a1 + 224))(a1, &v60);
  *v59 = 0uLL;
  (*(*a1 + 248))(v59, a1);
  if (*v59)
  {
    sub_100004AA0(buf, a1 + 2);
    v27 = *buf;
    v26 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
    }

    v28 = *v59;
    if (SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v31, v41[0].__r_.__value_.__l.__data_, v41[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v31 = v41[0];
    }

    if (SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v41[1].__r_.__value_.__l.__data_, v41[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v41[1];
    }

    v33 = cf[0];
    v34 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v35 = *v43;
    if (*v43)
    {
      CFRetain(*v43);
    }

    v36[0] = *&v43[8];
    *(v36 + 6) = *&v43[14];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 1174405120;
    v49[2] = sub_1005B0D4C;
    v49[3] = &unk_101E66560;
    v49[4] = a1;
    v49[5] = v27;
    v50 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001135B0(v51, a5);
    if (SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v52, v41[0].__r_.__value_.__l.__data_, v41[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v52 = v41[0];
    }

    if (SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v53, v41[1].__r_.__value_.__l.__data_, v41[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v53 = v41[1];
    }

    v54 = cf[0];
    v55 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v56 = *v43;
    if (*v43)
    {
      CFRetain(*v43);
    }

    v57[0] = *&v43[8];
    *(v57 + 6) = *&v43[14];
    v58 = v60;
    (*(*v28 + 48))(v28, &v31, v49);
    sub_1002030AC(&v35);
    sub_10002D760(&v34);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(&v56);
    sub_10002D760(&v55);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    sub_100113648(v51);
    if (v50)
    {
      std::__shared_weak_count::__release_weak(v50);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&v59[8])
  {
    sub_100004A34(*&v59[8]);
  }

LABEL_49:
  sub_1002030AC(v43);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41[0].__r_.__value_.__l.__data_);
  }

  sub_1009BD5D4(v44);
}

void sub_1005B0C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v67 + 56);
  if (a61)
  {
    std::__shared_weak_count::__release_weak(a61);
  }

  sub_1005AD788(&a9);
  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  v70 = *(v68 - 136);
  if (v70)
  {
    sub_100004A34(v70);
  }

  sub_1005AD788(&a25);
  sub_1009BD5D4(&a37);
  _Unwind_Resume(a1);
}

void sub_1005B0D4C(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005B1014;
  v10[3] = &unk_101E66530;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_1001135B0(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100113648(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005B0FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005B1014(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(a1 + 56);
        v7 = v3[6];
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(a1 + 64));
            *buf = 136315394;
            *&buf[4] = "startSession";
            *&buf[12] = 2080;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
            v10 = *(a1 + 56);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v36, v35);
            }
          }

          v11 = sub_1005AD768(*(a1 + 64));
          v48[0] = 2;
          v48[1] = v11;
          v12 = *(a1 + 176);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, v48);
          v48[0] = 0;
        }

        else
        {
          if (v8)
          {
            *buf = 136315138;
            *&buf[4] = "startSession";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
            v6 = *(a1 + 56);
          }

          v46 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(v45, 0, sizeof(v45));
          *__dst = 0u;
          if (v6 != 1)
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v32 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v31);
            }

            else
            {
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
            }

            __cxa_throw(v31, v33, v32);
          }

          if (*(a1 + 87) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            *__dst = *(a1 + 64);
            v45[0] = *(a1 + 80);
          }

          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&v45[1], *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *&v45[1] = *(a1 + 88);
            v45[3] = *(a1 + 104);
          }

          LOWORD(v46) = *(a1 + 112);
          sub_10002D728(&v46 + 1, (a1 + 120));
          sub_1002030F8(v47, (a1 + 128));
          v47[1] = *(a1 + 136);
          *(&v47[1] + 6) = *(a1 + 142);
          (*(*v3 + 248))(buf, v3, *(a1 + 256));
          v13 = *buf;
          if (SHIBYTE(v45[3]) < 0)
          {
            sub_100005F2C(__p, v45[1], v45[2]);
          }

          else
          {
            *__p = *&v45[1];
            v43 = v45[3];
          }

          (*(*v13 + 56))(v13, __p);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_100A34C5C(buf);
          if (*(&v46 + 1))
          {
            *v39 = 0u;
            v40 = 0u;
            BytePtr = CFDataGetBytePtr(*(&v46 + 1));
            Length = CFDataGetLength(*(&v46 + 1));
            PB::Reader::Reader(v39, BytePtr, Length);
            if (sub_100A353F0(buf, v39))
            {
              v16 = v56;
              if (v56)
              {
                v17 = *(v56 + 8);
                if (v17 && *(v17 + 8) == 16 && ((v18 = *v17, v20 = *v18, v19 = v18[1], *(a1 + 272) == v20) ? (v21 = *(a1 + 280) == v19) : (v21 = 0), v21))
                {
                  if (*(v56 + 24))
                  {
                    v29 = v3[6];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = *(v16 + 16);
                      *v49 = 67109120;
                      v50 = v30;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v49, 8u);
                    }
                  }
                }

                else
                {
                  v22 = v3[6];
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v49 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v49, 2u);
                  }
                }

                sub_1005AC2FC(a1 + 152);
              }

              else
              {
                v27 = v3[6];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *v49 = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Bad response", v49, 2u);
                }

                v37 = 3586;
                v28 = *(a1 + 176);
                if (!v28)
                {
                  sub_100022DB4();
                }

                (*(*v28 + 48))(v28, &v37);
                LOBYTE(v37) = 0;
              }
            }

            else
            {
              v25 = v3[6];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v49, 2u);
              }

              v38 = 3330;
              v26 = *(a1 + 176);
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, &v38);
              LOBYTE(v38) = 0;
            }
          }

          else
          {
            v23 = v3[6];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E no response data", v39, 2u);
            }

            v41 = 1;
            v24 = *(a1 + 176);
            if (!v24)
            {
              sub_100022DB4();
            }

            (*(*v24 + 48))(v24, &v41);
            LOBYTE(v41) = 0;
          }

          sub_100A34FF0(buf);
          sub_1002030AC(v47);
          sub_10002D760(&v46 + 1);
          if (SHIBYTE(v45[3]) < 0)
          {
            operator delete(v45[1]);
          }

          if (SHIBYTE(v45[0]) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005B1748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100A34FF0(&a55);
  sub_1005AD788(&__p);
  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

void sub_1005B1844(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v63 = a2;
  *(&v63 + 1) = a3;
  v6 = a1[10];
  if (!v6)
  {
LABEL_7:
    v51 = 2818;
    v10 = *(a5 + 24);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, &v51, a3, a4);
    return;
  }

  v7 = a4;
  while (1)
  {
    v9 = *(v6 + 7);
    if (v9 <= 0)
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

  if (v9 < 0)
  {
    ++v6;
    goto LABEL_6;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  memset(v44, 0, sizeof(v44));
  sub_1009BD270(v44);
  *cf = 0u;
  *v43 = 0u;
  *&v43[20] = 0;
  memset(v41, 0, sizeof(v41));
  v43[8] = 2;
  *&v43[12] = 0x50000003CLL;
  sub_1009BEF18(v44);
  v11 = sub_1005C1B94((a1 + 15), &v63);
  if (a1 + 16 == v11)
  {
    v21 = a1[6];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v40 >= 0)
      {
        v22 = buf;
      }

      else
      {
        v22 = *buf;
      }

      *v62 = 136315138;
      *&v62[4] = v22;
      v23 = "#E %s not found";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, v62, 0xCu);
      if (v40 < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_47:
    v37 = 1;
    v30 = *(a5 + 24);
    if (!v30)
    {
      sub_100022DB4();
    }

    (*(*v30 + 48))(v30, &v37);
    LOBYTE(v37) = 0;
    goto LABEL_49;
  }

  v12 = a1[12];
  v13 = a1[13];
  if (v12 != v13)
  {
    v14 = v11 + 6;
    v15 = *(v11 + 71);
    if (v15 >= 0)
    {
      v16 = *(v11 + 71);
    }

    else
    {
      v16 = v11[7];
    }

    while (1)
    {
      v17 = *(v12 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v12 + 8);
      }

      if (v16 == v17)
      {
        v19 = v15 >= 0 ? v14 : *v14;
        v20 = v18 >= 0 ? v12 : *v12;
        if (!memcmp(v19, v20, v16))
        {
          break;
        }
      }

      v12 += 96;
      if (v12 == v13)
      {
        goto LABEL_40;
      }
    }
  }

  if (v12 == v13)
  {
LABEL_40:
    v21 = a1[6];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v40 >= 0)
      {
        v29 = buf;
      }

      else
      {
        v29 = *buf;
      }

      *v62 = 136315138;
      *&v62[4] = v29;
      v23 = "#E Device not found for %s";
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  sub_10039EF40(v45);
  PB::Data::assign(*(v45 + 8), &v63, v64);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v41, v12);
  v24 = v45;
  *(v45 + 20) |= 1u;
  *(v24 + 16) = v7;
  v25 = a1[6];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I [EndSessionReq]", buf, 2u);
  }

  sub_1005ACC40(v44, v62);
  *buf = cf[1];
  cf[1] = *v62;
  *v62 = 0;
  sub_10002D760(buf);
  sub_10002D760(v62);
  *&v43[12] = 30;
  v43[8] = (*(*a1 + 224))(a1, &v63);
  *v62 = 0uLL;
  (*(*a1 + 248))(v62, a1);
  if (*v62)
  {
    sub_100004AA0(buf, a1 + 2);
    v27 = *buf;
    v26 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
    }

    v28 = *v62;
    if (SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v31, v41[0].__r_.__value_.__l.__data_, v41[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v31 = v41[0];
    }

    if (SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v41[1].__r_.__value_.__l.__data_, v41[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v41[1];
    }

    v33 = cf[0];
    v34 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v35 = *v43;
    if (*v43)
    {
      CFRetain(*v43);
    }

    v36[0] = *&v43[8];
    *(v36 + 6) = *&v43[14];
    v52[0] = _NSConcreteStackBlock;
    v52[1] = 1174405120;
    v52[2] = sub_1005B204C;
    v52[3] = &unk_101E665C0;
    v52[4] = a1;
    v52[5] = v27;
    v53 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001135B0(v54, a5);
    if (SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v55, v41[0].__r_.__value_.__l.__data_, v41[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v55 = v41[0];
    }

    if (SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v56, v41[1].__r_.__value_.__l.__data_, v41[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v56 = v41[1];
    }

    v57 = cf[0];
    v58 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v59 = *v43;
    if (*v43)
    {
      CFRetain(*v43);
    }

    v60[0] = *&v43[8];
    *(v60 + 6) = *&v43[14];
    v61 = v63;
    (*(*v28 + 48))(v28, &v31, v52);
    sub_1002030AC(&v35);
    sub_10002D760(&v34);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(&v59);
    sub_10002D760(&v58);
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    sub_100113648(v54);
    if (v53)
    {
      std::__shared_weak_count::__release_weak(v53);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&v62[8])
  {
    sub_100004A34(*&v62[8]);
  }

LABEL_49:
  sub_1002030AC(v43);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41[0].__r_.__value_.__l.__data_);
  }

  sub_1009BD5D4(v44);
}

void sub_1005B1F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v67 + 56);
  if (a61)
  {
    std::__shared_weak_count::__release_weak(a61);
  }

  sub_1005AD788(&a9);
  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  v70 = *(v68 - 136);
  if (v70)
  {
    sub_100004A34(v70);
  }

  sub_1005AD788(&a25);
  sub_1009BD5D4(&a37);
  _Unwind_Resume(a1);
}

void sub_1005B204C(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005B2314;
  v10[3] = &unk_101E66590;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_1001135B0(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100113648(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005B22B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005B2314(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(a1 + 56);
        v7 = v3[6];
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(a1 + 64));
            *buf = 136315394;
            *&buf[4] = "endSession";
            *&buf[12] = 2080;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
            v10 = *(a1 + 56);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v36, v35);
            }
          }

          v11 = sub_1005AD768(*(a1 + 64));
          v48[0] = 2;
          v48[1] = v11;
          v12 = *(a1 + 176);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, v48);
          v48[0] = 0;
        }

        else
        {
          if (v8)
          {
            *buf = 136315138;
            *&buf[4] = "endSession";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
            v6 = *(a1 + 56);
          }

          v46 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(v45, 0, sizeof(v45));
          *__dst = 0u;
          if (v6 != 1)
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v32 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v31);
            }

            else
            {
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
            }

            __cxa_throw(v31, v33, v32);
          }

          if (*(a1 + 87) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            *__dst = *(a1 + 64);
            v45[0] = *(a1 + 80);
          }

          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&v45[1], *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *&v45[1] = *(a1 + 88);
            v45[3] = *(a1 + 104);
          }

          LOWORD(v46) = *(a1 + 112);
          sub_10002D728(&v46 + 1, (a1 + 120));
          sub_1002030F8(v47, (a1 + 128));
          v47[1] = *(a1 + 136);
          *(&v47[1] + 6) = *(a1 + 142);
          (*(*v3 + 248))(buf, v3, *(a1 + 256));
          v13 = *buf;
          if (SHIBYTE(v45[3]) < 0)
          {
            sub_100005F2C(__p, v45[1], v45[2]);
          }

          else
          {
            *__p = *&v45[1];
            v43 = v45[3];
          }

          (*(*v13 + 56))(v13, __p);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_100A34C5C(buf);
          if (*(&v46 + 1))
          {
            *v39 = 0u;
            v40 = 0u;
            BytePtr = CFDataGetBytePtr(*(&v46 + 1));
            Length = CFDataGetLength(*(&v46 + 1));
            PB::Reader::Reader(v39, BytePtr, Length);
            if (sub_100A353F0(buf, v39))
            {
              v16 = v52;
              if (v52)
              {
                v17 = *(v52 + 8);
                if (v17 && *(v17 + 8) == 16 && ((v18 = *v17, v20 = *v18, v19 = v18[1], *(a1 + 272) == v20) ? (v21 = *(a1 + 280) == v19) : (v21 = 0), v21))
                {
                  if (*(v52 + 24))
                  {
                    v29 = v3[6];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = *(v16 + 16);
                      *v49 = 67109120;
                      v50 = v30;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v49, 8u);
                    }
                  }
                }

                else
                {
                  v22 = v3[6];
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v49 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v49, 2u);
                  }
                }

                sub_1005AC2FC(a1 + 152);
              }

              else
              {
                v27 = v3[6];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *v49 = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Bad response", v49, 2u);
                }

                v37 = 3586;
                v28 = *(a1 + 176);
                if (!v28)
                {
                  sub_100022DB4();
                }

                (*(*v28 + 48))(v28, &v37);
                LOBYTE(v37) = 0;
              }
            }

            else
            {
              v25 = v3[6];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v49, 2u);
              }

              v38 = 3330;
              v26 = *(a1 + 176);
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, &v38);
              LOBYTE(v38) = 0;
            }
          }

          else
          {
            v23 = v3[6];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E no response data", v39, 2u);
            }

            v41 = 1;
            v24 = *(a1 + 176);
            if (!v24)
            {
              sub_100022DB4();
            }

            (*(*v24 + 48))(v24, &v41);
            LOBYTE(v41) = 0;
          }

          sub_100A34FF0(buf);
          sub_1002030AC(v47);
          sub_10002D760(&v46 + 1);
          if (SHIBYTE(v45[3]) < 0)
          {
            operator delete(v45[1]);
          }

          if (SHIBYTE(v45[0]) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005B2A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100A34FF0(&a55);
  sub_1005AD788(&__p);
  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

void sub_1005B2B44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v51 = a2;
  v52 = a3;
  *cf = 0u;
  *v45 = 0u;
  *&v45[20] = 0;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  v45[8] = 2;
  *&v45[12] = 0x50000003CLL;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  sub_1009BD270(v38);
  v37 = 0;
  sub_1009BF278(v38);
  v6 = sub_1005C1B94((a1 + 15), v51);
  if (a1 + 16 == v6)
  {
    v16 = a1[6];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v36 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136315138;
      *&buf[4] = p_p;
      v18 = "#E %s not found";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
      if (v36 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v7 = a1[12];
    v8 = a1[13];
    if (v7 != v8)
    {
      v9 = v6 + 6;
      v10 = *(v6 + 71);
      if (v10 >= 0)
      {
        v11 = *(v6 + 71);
      }

      else
      {
        v11 = v6[7];
      }

      while (1)
      {
        v12 = *(v7 + 23);
        v13 = v12;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(v7 + 8);
        }

        if (v11 == v12)
        {
          v14 = v10 >= 0 ? v9 : *v9;
          v15 = v13 >= 0 ? v7 : *v7;
          if (!memcmp(v14, v15, v11))
          {
            break;
          }
        }

        v7 += 96;
        if (v7 == v8)
        {
          goto LABEL_25;
        }
      }
    }

    if (v7 != v8)
    {
      sub_10039EF40(v39);
      PB::Data::assign(*(v39 + 8), v51, &v53);
      LOWORD(cf[0]) = (*(*a1 + 240))(a1);
      std::string::operator=(v43, v7);
      goto LABEL_35;
    }

LABEL_25:
    v16 = a1[6];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v36 >= 0)
      {
        v19 = &__p;
      }

      else
      {
        v19 = __p;
      }

      *buf = 136315138;
      *&buf[4] = v19;
      v18 = "#E Device not found for %s";
      goto LABEL_30;
    }
  }

  v32[0] = 2;
  v33 = 13;
  sub_100111A90(a4, 0, 0, v32);
  if (v32[0] == 1)
  {
    __p = &v33;
    sub_1000DC8D4(&__p);
  }

  v32[0] = 0;
LABEL_35:
  v20 = a1[6];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I [PendingProfilesReq]", &__p, 2u);
  }

  sub_1005ACC40(v38, buf);
  __p = cf[1];
  cf[1] = *buf;
  *buf = 0;
  sub_10002D760(&__p);
  sub_10002D760(buf);
  *&v45[12] = 30;
  v45[8] = 2;
  *buf = 0uLL;
  (*(*a1 + 248))(buf, a1, 2);
  if (*buf)
  {
    sub_100004AA0(&__p, a1 + 2);
    v22 = __p;
    v21 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
    }

    v23 = *buf;
    if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v24, v43[0].__r_.__value_.__l.__data_, v43[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v43[0];
    }

    if (SHIBYTE(v43[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v25, v43[1].__r_.__value_.__l.__data_, v43[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v43[1];
    }

    v26 = cf[0];
    v27 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v28 = *v45;
    if (*v45)
    {
      CFRetain(*v45);
    }

    v29[0] = *&v45[8];
    *(v29 + 6) = *&v45[14];
    v46[0] = _NSConcreteStackBlock;
    v46[1] = 1174405120;
    v46[2] = sub_1005B3270;
    v46[3] = &unk_101E665F0;
    v46[4] = a1;
    v46[5] = v22;
    v47 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1005C1C60(v48, a4);
    v49 = *buf;
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    (*(*v23 + 48))(v23, &v24, v46);
    sub_1002030AC(&v28);
    sub_10002D760(&v27);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (*(&v49 + 1))
    {
      sub_100004A34(*(&v49 + 1));
    }

    sub_10052F844(v48);
    if (v47)
    {
      std::__shared_weak_count::__release_weak(v47);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  else
  {
    if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
    {
      sub_1017750DC();
    }

    v30[0] = 2;
    v31 = 13;
    sub_100111A90(a4, 0, 0, v30);
    if (v30[0] == 1)
    {
      __p = &v31;
      sub_1000DC8D4(&__p);
    }

    v30[0] = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  sub_10002D760(&v37);
  sub_1009BD5D4(v38);
  sub_1002030AC(v45);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v43[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43[0].__r_.__value_.__l.__data_);
  }
}

void sub_1005B3270(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(a1 + 32);
  v7 = v5;
  v3 = *(a1 + 48);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v9, a2);
  sub_1005C1C60(v10, a1 + 56);
  v4 = *(a1 + 96);
  v10[4] = *(a1 + 88);
  v10[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (v5 + 16));
  operator new();
}

void sub_1005B3460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1005B34C0(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_1005C1C60((a1 + 7), (a2 + 7));
  v6 = a2[12];
  a1[11] = a2[11];
  a1[12] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1005B3520(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B3538(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10052F844(a1 + 56);
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1005B3590(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  *&v94 = a2;
  *(&v94 + 1) = a3;
  for (i = a1[10]; i; i = *i)
  {
    v11 = *(i + 7);
    if (v11 <= 0)
    {
      if ((v11 & 0x80000000) == 0)
      {
        *cf = 0u;
        *v69 = 0u;
        *&v69[20] = 0;
        v66 = 0u;
        memset(v67, 0, sizeof(v67));
        v69[8] = 2;
        *&v69[12] = 0x50000003CLL;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v61 = 0u;
        memset(v60, 0, sizeof(v60));
        sub_1009BD270(v60);
        v59 = 0;
        sub_1009BEC48(v60);
        v14 = sub_1005C1B94((a1 + 15), &v94);
        if (a1 + 16 == v14)
        {
          v24 = a1[6];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            sCardSerialNumberAsString();
            if (v58 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            *buf = 136315138;
            *&buf[4] = p_p;
            v26 = "#E %s not found";
            goto LABEL_41;
          }
        }

        else
        {
          v15 = a1[12];
          v16 = a1[13];
          if (v15 != v16)
          {
            v17 = v14 + 6;
            v18 = *(v14 + 71);
            if (v18 >= 0)
            {
              v19 = *(v14 + 71);
            }

            else
            {
              v19 = v14[7];
            }

            while (1)
            {
              v20 = *(v15 + 23);
              v21 = v20;
              if ((v20 & 0x80u) != 0)
              {
                v20 = *(v15 + 8);
              }

              if (v19 == v20)
              {
                v22 = v18 >= 0 ? v17 : *v17;
                v23 = v21 >= 0 ? v15 : *v15;
                if (!memcmp(v22, v23, v19))
                {
                  break;
                }
              }

              v15 += 96;
              if (v15 == v16)
              {
                goto LABEL_36;
              }
            }
          }

          if (v15 != v16)
          {
            sub_1005B4084(*(&v61 + 1));
            PB::Data::assign(*(*(&v61 + 1) + 16), &v94, v95);
            LOWORD(cf[0]) = (*(*a1 + 240))(a1);
            std::string::operator=(v67, v15);
            goto LABEL_50;
          }

LABEL_36:
          v24 = a1[6];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            sCardSerialNumberAsString();
            if (v58 >= 0)
            {
              v27 = &__p;
            }

            else
            {
              v27 = __p;
            }

            *buf = 136315138;
            *&buf[4] = v27;
            v26 = "#E Device not found for %s";
LABEL_41:
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v26, buf, 0xCu);
            if (v58 < 0)
            {
              operator delete(__p);
            }
          }
        }

        v55 = 3330;
        v84[0] = 0;
        v88 = 0;
        v28 = *(a6 + 24);
        if (!v28)
        {
          sub_100022DB4();
        }

        (*(*v28 + 48))(v28, &v55, v84);
        if (v88 == 1)
        {
          if (v87[24] == 1)
          {
            __p = v87;
            sub_100112120(&__p);
          }

          if (v86 < 0)
          {
            operator delete(v85);
          }
        }

        LOBYTE(v55) = 0;
LABEL_50:
        v29 = *a4;
        if ((*(*a4 + 23) & 0x8000000000000000) != 0)
        {
          if (!*(v29 + 8))
          {
            goto LABEL_55;
          }
        }

        else if (!*(*a4 + 23))
        {
LABEL_55:
          if ((*(v29 + 47) & 0x8000000000000000) != 0)
          {
            if (!*(v29 + 32))
            {
              goto LABEL_60;
            }
          }

          else if (!*(v29 + 47))
          {
LABEL_60:
            if ((*(v29 + 71) & 0x8000000000000000) != 0)
            {
              if (!*(v29 + 56))
              {
                goto LABEL_65;
              }
            }

            else if (!*(v29 + 71))
            {
LABEL_65:
              if ((*(v29 + 95) & 0x8000000000000000) != 0)
              {
                if (!*(v29 + 80))
                {
                  goto LABEL_70;
                }
              }

              else if (!*(v29 + 95))
              {
LABEL_70:
                v34 = *(v29 + 96);
                v35 = *(v29 + 104);
                if (v34 != v35)
                {
                  do
                  {
                    v36 = *(&v61 + 1);
                    v37 = *(*(&v61 + 1) + 32);
                    if (v37 >= *(*(&v61 + 1) + 40))
                    {
                      v38 = sub_1000053A0(*(&v61 + 1) + 24, v34);
                    }

                    else
                    {
                      sub_10011C7A4((*(&v61 + 1) + 24), v34);
                      v38 = v37 + 24;
                    }

                    *(v36 + 32) = v38;
                    v34 = (v34 + 24);
                  }

                  while (v34 != v35);
                  v29 = *a4;
                }

                v39 = *(&v61 + 1);
                v40 = *(v29 + 145);
                v41 = *(*(&v61 + 1) + 76);
                *(*(&v61 + 1) + 76) = v41 | 2;
                v39[73] = v40;
                v42 = *(*a4 + 146);
                v39[76] = v41 | 3;
                v39[72] = v42;
                v43 = a1[6];
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(__p) = 0;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I [FetchNewProfilesReq]", &__p, 2u);
                }

                sub_1005ACC40(v60, buf);
                __p = cf[1];
                cf[1] = *buf;
                *buf = 0;
                sub_10002D760(&__p);
                sub_10002D760(buf);
                *&v69[12] = 120;
                v69[8] = (*(*a1 + 224))(a1, &v94);
                *buf = 0uLL;
                (*(*a1 + 248))(buf, a1);
                if (*buf)
                {
                  sub_100004AA0(&__p, a1 + 2);
                  v45 = __p;
                  v44 = v57;
                  if (v57)
                  {
                    atomic_fetch_add_explicit(&v57->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    sub_100004A34(v44);
                  }

                  v46 = *buf;
                  if (SHIBYTE(v67[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v49, v67[0].__r_.__value_.__l.__data_, v67[0].__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v49 = v67[0];
                  }

                  if (SHIBYTE(v67[1].__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v50, v67[1].__r_.__value_.__l.__data_, v67[1].__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v50 = v67[1];
                  }

                  v51 = cf[0];
                  v52 = cf[1];
                  if (cf[1])
                  {
                    CFRetain(cf[1]);
                  }

                  v53 = *v69;
                  if (*v69)
                  {
                    CFRetain(*v69);
                  }

                  *v54 = *&v69[8];
                  *&v54[6] = *&v69[14];
                  v71[0] = _NSConcreteStackBlock;
                  v71[1] = 1174405120;
                  v71[2] = sub_1005B40EC;
                  v71[3] = &unk_101E66650;
                  v71[4] = a1;
                  v71[5] = v45;
                  v72 = v44;
                  if (v44)
                  {
                    atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_100113AE8(v73, a6);
                  if (SHIBYTE(v67[0].__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v74, v67[0].__r_.__value_.__l.__data_, v67[0].__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v74 = v67[0];
                  }

                  if (SHIBYTE(v67[1].__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v75, v67[1].__r_.__value_.__l.__data_, v67[1].__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v75 = v67[1];
                  }

                  v76 = cf[0];
                  v77 = cf[1];
                  if (cf[1])
                  {
                    CFRetain(cf[1]);
                  }

                  v78 = *v69;
                  if (*v69)
                  {
                    CFRetain(*v69);
                  }

                  v48 = *a4;
                  v47 = a4[1];
                  v79[0] = *&v69[8];
                  *(v79 + 6) = *&v69[14];
                  v79[2] = v48;
                  v80 = v47;
                  if (v47)
                  {
                    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v81 = *buf;
                  if (*&buf[8])
                  {
                    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
                  }

                  sub_1001137C4(v82, a5);
                  v82[2] = v94;
                  (*(*v46 + 48))(v46, &v49, v71);
                  sub_1002030AC(&v53);
                  sub_10002D760(&v52);
                  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v50.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v49.__r_.__value_.__l.__data_);
                  }

                  sub_10011385C(v82);
                  if (*(&v81 + 1))
                  {
                    sub_100004A34(*(&v81 + 1));
                  }

                  if (v80)
                  {
                    sub_100004A34(v80);
                  }

                  sub_1002030AC(&v78);
                  sub_10002D760(&v77);
                  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v75.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v74.__r_.__value_.__l.__data_);
                  }

                  sub_100113B80(v73);
                  if (v72)
                  {
                    std::__shared_weak_count::__release_weak(v72);
                  }

                  if (v44)
                  {
                    std::__shared_weak_count::__release_weak(v44);
                  }
                }

                else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
                {
                  sub_1017750DC();
                }

                if (*&buf[8])
                {
                  sub_100004A34(*&buf[8]);
                }

                sub_10002D760(&v59);
                sub_1009BD5D4(v60);
                sub_1002030AC(v69);
                sub_10002D760(&cf[1]);
                if (SHIBYTE(v67[1].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v67[1].__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v67[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  v13 = v67[0].__r_.__value_.__r.__words[0];
LABEL_131:
                  operator delete(v13);
                }

                return;
              }

              v33 = *(&v61 + 1);
              sub_10039EFFC(*(&v61 + 1));
              std::string::operator=(*(v33 + 8), (v29 + 72));
              v29 = *a4;
              goto LABEL_70;
            }

            v32 = *(&v61 + 1);
            sub_10039FE34(*(&v61 + 1));
            std::string::operator=(*(v32 + 48), (v29 + 48));
            v29 = *a4;
            goto LABEL_65;
          }

          v31 = *(&v61 + 1);
          sub_10039FBF0(*(&v61 + 1));
          std::string::operator=(*(v31 + 56), (v29 + 24));
          v29 = *a4;
          goto LABEL_60;
        }

        v30 = *(&v61 + 1);
        sub_10039FC64(*(&v61 + 1));
        std::string::operator=(*(v30 + 64), v29);
        v29 = *a4;
        goto LABEL_55;
      }

      ++i;
    }
  }

  v70 = 2818;
  v89[0] = 0;
  v93 = 0;
  v12 = *(a6 + 24);
  if (!v12)
  {
    sub_100022DB4();
  }

  (*(*v12 + 48))(v12, &v70, v89, a4, a5);
  if (v93 == 1)
  {
    if (v92[24] == 1)
    {
      *&v60[0] = v92;
      sub_100112120(v60);
    }

    if (v91 < 0)
    {
      v13 = v90;
      goto LABEL_131;
    }
  }
}

uint64_t sub_1005B403C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void ***sub_1005B4084(void ***result)
{
  if (!result[2])
  {
    operator new();
  }

  return result;
}

void sub_1005B40EC(uint64_t a1, unsigned __int8 *a2)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1174405120;
  v13[2] = sub_1005B4444;
  v13[3] = &unk_101E66620;
  v8 = *(a1 + 32);
  v14 = v8;
  v3 = *(a1 + 48);
  v15 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(&v16, a2);
  sub_100113AE8(v17, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v18, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v18 = *(a1 + 88);
    v19 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v21 = *(a1 + 128);
  }

  v22 = *(a1 + 136);
  sub_10002D728(&v23, (a1 + 144));
  sub_1002030F8(&v24, (a1 + 152));
  *(v25 + 6) = *(a1 + 166);
  v5 = *(a1 + 176);
  v4 = *(a1 + 184);
  v25[0] = *(a1 + 160);
  v25[2] = v5;
  v26 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 200);
  v27 = *(a1 + 192);
  v28 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001137C4(v29, a1 + 208);
  v29[2] = *(a1 + 240);
  v11 = 0;
  v12 = 0;
  sub_100004AA0(&v11, (v8 + 16));
  v7 = *(v8 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v11;
  v10 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v13;
  dispatch_async(v7, block);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  sub_10011385C(v29);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }

  sub_1002030AC(&v24);
  sub_10002D760(&v23);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  sub_100113B80(v17);
  sub_1005C116C(&v16);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }
}

void sub_1005B43BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100113B80(v61 + 152);
  sub_1005C116C(v60 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005B4444(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 40))
      {
LABEL_59:
        sub_100004A34(v5);
        return;
      }

      v6 = *(a1 + 56);
      if (v6 == 2)
      {
        v7 = v3[6];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = sub_100A43314(*(a1 + 64));
          *buf = 136315138;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [FetchNewProfilesReq] IDS Failure [%s]", buf, 0xCu);
          v9 = *(a1 + 56);
          if (v9 != 2)
          {
            if (v9 == 1)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v39 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(exception);
            }

            else
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v39 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
            }

            __cxa_throw(exception, v40, v39);
          }
        }

        v10 = sub_1005AD768(*(a1 + 64));
        v71[0] = 2;
        v71[1] = v10;
        v125[0] = 0;
        v129 = 0;
        v11 = *(a1 + 176);
        if (!v11)
        {
          sub_100022DB4();
        }

        (*(*v11 + 48))(v11, v71, v125);
        if (v129 == 1)
        {
          if (v128[24] == 1)
          {
            *buf = v128;
            sub_100112120(buf);
          }

          if (v127 < 0)
          {
            operator delete(v126);
          }
        }

        v71[0] = 0;
        goto LABEL_59;
      }

      *theData = 0u;
      memset(v70, 0, 24);
      memset(v68, 0, sizeof(v68));
      *__dst = 0u;
      if (v6 != 1)
      {
        v37 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v37);
      }

      if (*(a1 + 87) < 0)
      {
        sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        *__dst = *(a1 + 64);
        v68[0] = *(a1 + 80);
      }

      if (*(a1 + 111) < 0)
      {
        sub_100005F2C(&v68[1], *(a1 + 88), *(a1 + 96));
      }

      else
      {
        *&v68[1] = *(a1 + 88);
        v68[3] = *(a1 + 104);
      }

      LOWORD(theData[0]) = *(a1 + 112);
      sub_10002D728(&theData[1], (a1 + 120));
      sub_1002030F8(v70, (a1 + 128));
      *(&v70[0] + 1) = *(a1 + 136);
      *(v70 + 14) = *(a1 + 142);
      v66 = 0;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      memset(v59, 0, sizeof(v59));
      sub_100A34C5C(v59);
      memset(v58, 0, sizeof(v58));
      BytePtr = CFDataGetBytePtr(theData[1]);
      Length = CFDataGetLength(theData[1]);
      PB::Reader::Reader(v58, BytePtr, Length);
      if (sub_100A353F0(v59, v58))
      {
        if (*(&v60 + 1))
        {
          v14 = v3[6];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [FetchNewProfilesDetailsRsp]", buf, 2u);
          }

          v124 = 0u;
          *v123 = 0u;
          v122 = 0u;
          v121 = 0u;
          v120 = 0u;
          v119 = 0u;
          v118 = 0u;
          v117 = 0u;
          v116 = 0u;
          v115 = 0u;
          v114 = 0u;
          v113 = 0u;
          v112 = 0u;
          v111 = 0u;
          v110 = 0u;
          v87 = 0u;
          v86 = 0u;
          v85 = 0u;
          *buf = 0u;
          memset(v88, 0, 29);
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          *&v96 = 0;
          sub_100F11BEC(&v110, buf);
          sub_100E3A5D4(buf);
          v109 = 0u;
          v108 = 0u;
          v107 = 0u;
          v106 = 0u;
          v105 = 0u;
          v104 = 0u;
          v103 = 0u;
          v102 = 0u;
          v101 = 0u;
          v100 = 0u;
          v99 = 0u;
          v98 = 0u;
          v97 = 0u;
          v96 = 0u;
          v95 = 0u;
          v94 = 0u;
          v93 = 0u;
          v92 = 0u;
          v91 = 0u;
          v90 = 0u;
          v89 = 0u;
          memset(v88, 0, sizeof(v88));
          v87 = 0u;
          v86 = 0u;
          v85 = 0u;
          *buf = 0u;
          if (sub_10039E7C4(*(*(&v60 + 1) + 16), &v110, buf) && ((BYTE11(v115) & 1) != 0 || BYTE12(v115) == 1))
          {
            (*(*v3 + 272))(v3, __dst, 258);
            std::string::operator=((v3 + 20), &v68[1]);
            v15 = 0;
          }

          else
          {
            v15 = 120;
          }

          if (*(*(a1 + 272) + 146) == 1)
          {
            std::string::operator=((v3 + 20), &v68[1]);
            v15 = 0;
          }

          (*(**(a1 + 288) + 64))(*(a1 + 288), v3 + 20, v15);
          sub_100F11F00(v79, &v110);
          v81 = 0;
          __p = 0;
          v82 = 0;
          sub_100034C50(&__p, v123[1], v124, v124 - v123[1]);
          v83 = 1;
          v18 = *(a1 + 328);
          if (!v18)
          {
            sub_100022DB4();
          }

          (*(*v18 + 48))(v18, v79);
          if (v83 == 1)
          {
            if (__p)
            {
              v81 = __p;
              operator delete(__p);
            }

            sub_100E3A5D4(v79);
          }

          sub_100111ED0(buf);
          if (v123[1])
          {
            *&v124 = v123[1];
            operator delete(v123[1]);
          }

          sub_100E3A5D4(&v110);
          goto LABEL_55;
        }

        v19 = v61;
        v20 = v3[6];
        v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        if (v19)
        {
          if (v21)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I [FetchNewProfilesRsp]", buf, 2u);
          }

          if (*(v3 + 183) < 0)
          {
            *v3[20] = 0;
            v3[21] = 0;
          }

          else
          {
            *(v3 + 160) = 0;
            *(v3 + 183) = 0;
          }

          (*(*v3 + 248))(buf, v3, *(a1 + 256));
          v24 = *buf;
          if (SHIBYTE(v68[3]) < 0)
          {
            sub_100005F2C(v54, v68[1], v68[2]);
          }

          else
          {
            *v54 = *&v68[1];
            v55 = v68[3];
          }

          (*(*v24 + 56))(v24, v54);
          if (SHIBYTE(v55) < 0)
          {
            operator delete(v54[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v25 = v61;
          if (*(v61 + 40))
          {
            v26 = *(v61 + 32);
            if (v26 >= 0x1A)
            {
              LOBYTE(v26) = 0;
            }

            else if (v26 == 6)
            {
              (*(*v3 + 272))(v3, __dst, 257);
              LOBYTE(v26) = 6;
            }

            v53 = v26;
            v78[0] = 0;
            v78[88] = 0;
            sub_1005B403C(a1 + 152);
            sub_10010FC60(v78);
            v52 = 0;
            goto LABEL_55;
          }

          if ((*(v61 + 40) & 2) != 0)
          {
            if (*(v61 + 36))
            {
              v27 = *(v61 + 8);
              v28 = *(v61 + 16);
              if (v28 - v27 != 8)
              {
                v29 = v3[6];
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 134217984;
                  *&buf[4] = v28 - v27;
                  _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %lu profiles returned", buf, 0xCu);
                  v25 = v61;
                }

                if (v28 == v27)
                {
                  v44 = *(v25 + 36);
                  v72[0] = 0;
                  v72[88] = 0;
                  sub_1005B403C(a1 + 152);
                  sub_10010FC60(v72);
                  v43 = 0;
                  goto LABEL_55;
                }

                v27 = *(v25 + 8);
              }

              v30 = *v27;
              v31 = *(*v27 + 8);
              if (v31 && *(v31 + 8) == 16 && ((v32 = *v31, v34 = *v32, v33 = v32[1], *(a1 + 336) == v34) ? (v35 = *(a1 + 344) == v33) : (v35 = 0), v35))
              {
                memset(v88, 0, 24);
                v87 = 0u;
                v86 = 0u;
                v85 = 0u;
                *buf = 0u;
                v114 = 0u;
                *&v113 = 0;
                v112 = 0u;
                v111 = 0u;
                v110 = 0u;
                *(&v113 + 1) = &v114;
                if (sub_10039F070(v30, buf, &v110))
                {
                  (*(*v3 + 280))(v3, __dst, buf);
                  v48 = *(v61 + 36);
                  sub_100F11B6C(v74, buf);
                  v74[88] = 1;
                  sub_1005B403C(a1 + 152);
                  sub_10010FC60(v74);
                  v47 = 0;
                }

                else
                {
                  v46 = *(v61 + 36);
                  v73[0] = 0;
                  v73[88] = 0;
                  sub_1005B403C(a1 + 152);
                  sub_10010FC60(v73);
                  v45 = 0;
                }

                sub_100319EC0(&v110);
                sub_100F01778(buf);
              }

              else
              {
                v36 = v3[6];
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#E No CSN", buf, 2u);
                }

                v75[0] = 0;
                v75[88] = 0;
                sub_1005B403C(a1 + 152);
                sub_10010FC60(v75);
                v49 = 3328;
              }

              goto LABEL_55;
            }

            v76[0] = 0;
            v76[88] = 0;
            sub_1005B403C(a1 + 152);
            sub_10010FC60(v76);
            v50 = 0;
          }

          else
          {
            v77[0] = 0;
            v77[88] = 0;
            sub_1005B403C(a1 + 152);
            sub_10010FC60(v77);
            v51 = 3328;
          }

LABEL_55:
          sub_100A34FF0(v59);
          sub_1002030AC(v70);
          sub_10002D760(&theData[1]);
          if (SHIBYTE(v68[3]) < 0)
          {
            operator delete(v68[1]);
          }

          if (SHIBYTE(v68[0]) < 0)
          {
            operator delete(__dst[0]);
          }

          goto LABEL_59;
        }

        if (v21)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E Unknown response, marked as handled", buf, 2u);
        }

        (*(*v3 + 248))(buf, v3, *(a1 + 256));
        v23 = *buf;
        if (SHIBYTE(v68[3]) < 0)
        {
          sub_100005F2C(&v41, v68[1], v68[2]);
        }

        else
        {
          v41 = *&v68[1];
          v42 = v68[3];
        }

        (*(*v23 + 56))(v23, &v41);
        if ((SHIBYTE(v42) & 0x80000000) == 0)
        {
LABEL_53:
          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          goto LABEL_55;
        }

        v22 = v41;
      }

      else
      {
        v16 = v3[6];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E [FetchNewProfilesReq] Malformed Message, marked as handled", buf, 2u);
        }

        (*(*v3 + 248))(buf, v3, *(a1 + 256));
        v17 = *buf;
        if (SHIBYTE(v68[3]) < 0)
        {
          sub_100005F2C(v56, v68[1], v68[2]);
        }

        else
        {
          *v56 = *&v68[1];
          v57 = v68[3];
        }

        (*(*v17 + 56))(v17, v56);
        if ((SHIBYTE(v57) & 0x80000000) == 0)
        {
          goto LABEL_53;
        }

        v22 = v56[0];
      }

      operator delete(v22);
      goto LABEL_53;
    }
  }
}

void sub_1005B5084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45)
{
  sub_10010FC60(&STACK[0x248]);
  sub_100319EC0(&STACK[0x6D0]);
  sub_100F01778(&STACK[0x520]);
  sub_100A34FF0(&a27);
  sub_1005AD788(&a45);
  sub_100004A34(v45);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B5250(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C((a1 + 56), (a2 + 56));
  sub_100113AE8(a1 + 152, a2 + 152);
  if (*(a2 + 207) < 0)
  {
    sub_100005F2C((a1 + 184), *(a2 + 184), *(a2 + 192));
  }

  else
  {
    v5 = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 184) = v5;
  }

  if (*(a2 + 231) < 0)
  {
    sub_100005F2C((a1 + 208), *(a2 + 208), *(a2 + 216));
  }

  else
  {
    v6 = *(a2 + 208);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 208) = v6;
  }

  *(a1 + 232) = *(a2 + 232);
  sub_10002D728((a1 + 240), (a2 + 240));
  sub_1002030F8((a1 + 248), (a2 + 248));
  v7 = *(a2 + 256);
  *(a1 + 262) = *(a2 + 262);
  *(a1 + 256) = v7;
  v8 = *(a2 + 280);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1001137C4(a1 + 304, a2 + 304);
}

void sub_1005B5368(_Unwind_Exception *a1)
{
  if (*(v1 + 207) < 0)
  {
    operator delete(*(v1 + 184));
  }

  sub_100113B80(v1 + 152);
  sub_1005C116C(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005B53E0(uint64_t a1)
{
  sub_10011385C(a1 + 304);
  v2 = *(a1 + 296);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 280);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1002030AC((a1 + 248));
  sub_10002D760((a1 + 240));
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  sub_100113B80(a1 + 152);
  sub_1005C116C(a1 + 56);
  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t sub_1005B5484(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_100113AE8(a1 + 56, a2 + 56);
  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v5 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v5;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
  }

  *(a1 + 136) = *(a2 + 136);
  sub_10002D728((a1 + 144), (a2 + 144));
  sub_1002030F8((a1 + 152), (a2 + 152));
  v7 = *(a2 + 160);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 160) = v7;
  v8 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1001137C4(a1 + 208, a2 + 208);
}

void sub_1005B5588(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  sub_100113B80(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005B55F0(uint64_t a1)
{
  sub_10011385C(a1 + 208);
  v2 = *(a1 + 200);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 184);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_1002030AC((a1 + 152));
  sub_10002D760((a1 + 144));
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  sub_100113B80(a1 + 56);
  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1005B568C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v60 = a2;
  *(&v60 + 1) = a3;
  v6 = a1[10];
  if (!v6)
  {
LABEL_7:
    v48 = 2818;
    v10 = *(a5 + 24);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, &v48, a3, a4);
    return;
  }

  v7 = a4;
  while (1)
  {
    v9 = *(v6 + 7);
    if (v9 <= 0)
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

  if (v9 < 0)
  {
    ++v6;
    goto LABEL_6;
  }

  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  memset(v44, 0, sizeof(v44));
  sub_1009BD270(v44);
  *cf = 0u;
  *v43 = 0u;
  *&v43[20] = 0;
  memset(v41, 0, sizeof(v41));
  v43[8] = 2;
  *&v43[12] = 0x50000003CLL;
  sub_1009BECD8(v44);
  v11 = sub_1005C1B94((a1 + 15), &v60);
  if (a1 + 16 == v11)
  {
    v21 = a1[6];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v40 >= 0)
      {
        v22 = buf;
      }

      else
      {
        v22 = *buf;
      }

      *v59 = 136315138;
      *&v59[4] = v22;
      v23 = "#E %s not found";
LABEL_45:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, v59, 0xCu);
      if (v40 < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_47:
    v37 = 1;
    v30 = *(a5 + 24);
    if (!v30)
    {
      sub_100022DB4();
    }

    (*(*v30 + 48))(v30, &v37);
    LOBYTE(v37) = 0;
    goto LABEL_49;
  }

  v12 = a1[12];
  v13 = a1[13];
  if (v12 != v13)
  {
    v14 = v11 + 6;
    v15 = *(v11 + 71);
    if (v15 >= 0)
    {
      v16 = *(v11 + 71);
    }

    else
    {
      v16 = v11[7];
    }

    while (1)
    {
      v17 = *(v12 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v12 + 8);
      }

      if (v16 == v17)
      {
        v19 = v15 >= 0 ? v14 : *v14;
        v20 = v18 >= 0 ? v12 : *v12;
        if (!memcmp(v19, v20, v16))
        {
          break;
        }
      }

      v12 += 96;
      if (v12 == v13)
      {
        goto LABEL_40;
      }
    }
  }

  if (v12 == v13)
  {
LABEL_40:
    v21 = a1[6];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v40 >= 0)
      {
        v29 = buf;
      }

      else
      {
        v29 = *buf;
      }

      *v59 = 136315138;
      *&v59[4] = v29;
      v23 = "#E Device not found for %s";
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  sub_10039EF40(v45);
  PB::Data::assign(*(v45 + 8), &v60, v61);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v41, v12);
  v24 = v45;
  *(v45 + 20) |= 1u;
  *(v24 + 16) = v7;
  v25 = a1[6];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I [SendUserConsentReq]", buf, 2u);
  }

  sub_1005ACC40(v44, v59);
  *buf = cf[1];
  cf[1] = *v59;
  *v59 = 0;
  sub_10002D760(buf);
  sub_10002D760(v59);
  *&v43[12] = 120;
  v43[8] = (*(*a1 + 224))(a1, &v60);
  *v59 = 0uLL;
  (*(*a1 + 248))(v59, a1);
  if (*v59)
  {
    (*(**v59 + 64))(*v59, a1 + 20, 120);
    sub_100004AA0(buf, a1 + 2);
    v27 = *buf;
    v26 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
    }

    v28 = *v59;
    if (SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v31, v41[0].__r_.__value_.__l.__data_, v41[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v31 = v41[0];
    }

    if (SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v41[1].__r_.__value_.__l.__data_, v41[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v41[1];
    }

    v33 = cf[0];
    v34 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v35 = *v43;
    if (*v43)
    {
      CFRetain(*v43);
    }

    v36[0] = *&v43[8];
    *(v36 + 6) = *&v43[14];
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 1174405120;
    v49[2] = sub_1005B5EC4;
    v49[3] = &unk_101E666B0;
    v49[4] = a1;
    v49[5] = v27;
    v50 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1001135B0(v51, a5);
    if (SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v52, v41[0].__r_.__value_.__l.__data_, v41[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v52 = v41[0];
    }

    if (SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v53, v41[1].__r_.__value_.__l.__data_, v41[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v53 = v41[1];
    }

    v54 = cf[0];
    v55 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v56 = *v43;
    if (*v43)
    {
      CFRetain(*v43);
    }

    v57[0] = *&v43[8];
    *(v57 + 6) = *&v43[14];
    v58 = v60;
    (*(*v28 + 48))(v28, &v31, v49);
    sub_1002030AC(&v35);
    sub_10002D760(&v34);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(&v56);
    sub_10002D760(&v55);
    if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v52.__r_.__value_.__l.__data_);
    }

    sub_100113648(v51);
    if (v50)
    {
      std::__shared_weak_count::__release_weak(v50);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&v59[8])
  {
    sub_100004A34(*&v59[8]);
  }

LABEL_49:
  sub_1002030AC(v43);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v41[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41[0].__r_.__value_.__l.__data_);
  }

  sub_1009BD5D4(v44);
}

void sub_1005B5DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v67 + 56);
  if (a61)
  {
    std::__shared_weak_count::__release_weak(a61);
  }

  sub_1005AD788(&a9);
  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  v70 = *(v68 - 136);
  if (v70)
  {
    sub_100004A34(v70);
  }

  sub_1005AD788(&a25);
  sub_1009BD5D4(&a37);
  _Unwind_Resume(a1);
}

void sub_1005B5EC4(uint64_t a1, unsigned __int8 *a2)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1005B618C;
  v10[3] = &unk_101E66680;
  v5 = *(a1 + 32);
  v11 = v5;
  v3 = *(a1 + 48);
  v12 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v13, a2);
  sub_1001135B0(v14, a1 + 56);
  if (*(a1 + 111) < 0)
  {
    sub_100005F2C(&v15, *(a1 + 88), *(a1 + 96));
  }

  else
  {
    v15 = *(a1 + 88);
    v16 = *(a1 + 104);
  }

  if (*(a1 + 135) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 112), *(a1 + 120));
  }

  else
  {
    __p = *(a1 + 112);
    v18 = *(a1 + 128);
  }

  v19 = *(a1 + 136);
  sub_10002D728(&v20, (a1 + 144));
  sub_1002030F8(&v21, (a1 + 152));
  *(v22 + 6) = *(a1 + 166);
  v22[0] = *(a1 + 160);
  v23 = *(a1 + 176);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (v5 + 16));
  v4 = *(v5 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v10;
  dispatch_async(v4, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1002030AC(&v21);
  sub_10002D760(&v20);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  sub_100113648(v14);
  sub_1005C116C(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void sub_1005B612C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(v49 + 152);
  sub_1005C116C(v48 + 56);
  if (a26)
  {
    std::__shared_weak_count::__release_weak(a26);
  }

  _Unwind_Resume(a1);
}

void sub_1005B618C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(a1 + 56);
        v7 = v3[6];
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(a1 + 64));
            *buf = 136315394;
            *&buf[4] = "sendUserConsent";
            *&buf[12] = 2080;
            *&buf[14] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [%sReq] IDS Failure [%s]", buf, 0x16u);
            v10 = *(a1 + 56);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v35 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v36, v35);
            }
          }

          v11 = sub_1005AD768(*(a1 + 64));
          v48[0] = 2;
          v48[1] = v11;
          v12 = *(a1 + 176);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, v48);
          v48[0] = 0;
        }

        else
        {
          if (v8)
          {
            *buf = 136315138;
            *&buf[4] = "sendUserConsent";
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%sRsp]", buf, 0xCu);
            v6 = *(a1 + 56);
          }

          v46 = 0u;
          memset(v47, 0, sizeof(v47));
          memset(v45, 0, sizeof(v45));
          *__dst = 0u;
          if (v6 != 1)
          {
            v31 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v32 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v31);
            }

            else
            {
              v32 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v31);
            }

            __cxa_throw(v31, v33, v32);
          }

          if (*(a1 + 87) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            *__dst = *(a1 + 64);
            v45[0] = *(a1 + 80);
          }

          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&v45[1], *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *&v45[1] = *(a1 + 88);
            v45[3] = *(a1 + 104);
          }

          LOWORD(v46) = *(a1 + 112);
          sub_10002D728(&v46 + 1, (a1 + 120));
          sub_1002030F8(v47, (a1 + 128));
          v47[1] = *(a1 + 136);
          *(&v47[1] + 6) = *(a1 + 142);
          (*(*v3 + 248))(buf, v3, *(a1 + 256));
          v13 = *buf;
          if (SHIBYTE(v45[3]) < 0)
          {
            sub_100005F2C(__p, v45[1], v45[2]);
          }

          else
          {
            *__p = *&v45[1];
            v43 = v45[3];
          }

          (*(*v13 + 56))(v13, __p);
          if (SHIBYTE(v43) < 0)
          {
            operator delete(__p[0]);
          }

          if (*&buf[8])
          {
            sub_100004A34(*&buf[8]);
          }

          v58 = 0;
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          memset(buf, 0, sizeof(buf));
          sub_100A34C5C(buf);
          if (*(&v46 + 1))
          {
            *v39 = 0u;
            v40 = 0u;
            BytePtr = CFDataGetBytePtr(*(&v46 + 1));
            Length = CFDataGetLength(*(&v46 + 1));
            PB::Reader::Reader(v39, BytePtr, Length);
            if (sub_100A353F0(buf, v39))
            {
              v16 = *(&v55 + 1);
              if (*(&v55 + 1))
              {
                v17 = *(*(&v55 + 1) + 8);
                if (v17 && *(v17 + 8) == 16 && ((v18 = *v17, v20 = *v18, v19 = v18[1], *(a1 + 272) == v20) ? (v21 = *(a1 + 280) == v19) : (v21 = 0), v21))
                {
                  if (*(*(&v55 + 1) + 24))
                  {
                    v29 = v3[6];
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                    {
                      v30 = *(v16 + 16);
                      *v49 = 67109120;
                      v50 = v30;
                      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E Error: %d", v49, 8u);
                    }
                  }
                }

                else
                {
                  v22 = v3[6];
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    *v49 = 0;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid CSN in response", v49, 2u);
                  }
                }

                sub_1005AC2FC(a1 + 152);
              }

              else
              {
                v27 = v3[6];
                if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                {
                  *v49 = 0;
                  _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#E Bad response", v49, 2u);
                }

                v37 = 3586;
                v28 = *(a1 + 176);
                if (!v28)
                {
                  sub_100022DB4();
                }

                (*(*v28 + 48))(v28, &v37);
                LOBYTE(v37) = 0;
              }
            }

            else
            {
              v25 = v3[6];
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *v49 = 0;
                _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v49, 2u);
              }

              v38 = 3330;
              v26 = *(a1 + 176);
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, &v38);
              LOBYTE(v38) = 0;
            }
          }

          else
          {
            v23 = v3[6];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v39 = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E no response data", v39, 2u);
            }

            v41 = 1;
            v24 = *(a1 + 176);
            if (!v24)
            {
              sub_100022DB4();
            }

            (*(*v24 + 48))(v24, &v41);
            LOBYTE(v41) = 0;
          }

          sub_100A34FF0(buf);
          sub_1002030AC(v47);
          sub_10002D760(&v46 + 1);
          if (SHIBYTE(v45[3]) < 0)
          {
            operator delete(v45[1]);
          }

          if (SHIBYTE(v45[0]) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005B68C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100A34FF0(&a55);
  sub_1005AD788(&__p);
  sub_100004A34(v55);
  _Unwind_Resume(a1);
}

void sub_1005B69BC(void *result, uint64_t a2, uint64_t a3, std::string **a4, char a5)
{
  *v50 = a2;
  v51 = a3;
  v5 = result[10];
  if (!v5)
  {
    return;
  }

  while (1)
  {
    v9 = *(v5 + 7);
    if (v9 <= 0)
    {
      break;
    }

LABEL_5:
    v5 = *v5;
    if (!v5)
    {
      return;
    }
  }

  if (v9 < 0)
  {
    ++v5;
    goto LABEL_5;
  }

  v48 = 0u;
  memset(v47, 0, sizeof(v47));
  sub_1009BD270(v47);
  v45 = 0u;
  *v46 = 0u;
  *&v46[20] = 0;
  memset(v44, 0, sizeof(v44));
  v46[8] = 2;
  *&v46[12] = 0x50000003CLL;
  sub_1009BF158(v47);
  v10 = sub_1005C1B94((result + 15), v50);
  if (result + 16 == v10)
  {
    v20 = result[6];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    sCardSerialNumberAsString();
    if ((SBYTE7(v39) & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315138;
    *&buf[4] = p_p;
    v22 = "#E %s not found";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
    if (SBYTE7(v39) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_72;
  }

  v11 = result[12];
  v12 = result[13];
  if (v11 != v12)
  {
    v13 = v10 + 6;
    v14 = *(v10 + 71);
    if (v14 >= 0)
    {
      v15 = *(v10 + 71);
    }

    else
    {
      v15 = v10[7];
    }

    while (1)
    {
      v16 = *(v11 + 23);
      v17 = v16;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v11 + 8);
      }

      if (v15 == v16)
      {
        v18 = v14 >= 0 ? v13 : *v13;
        v19 = v17 >= 0 ? v11 : *v11;
        if (!memcmp(v18, v19, v15))
        {
          break;
        }
      }

      v11 += 96;
      if (v11 == v12)
      {
        goto LABEL_32;
      }
    }
  }

  if (v11 == v12)
  {
LABEL_32:
    v20 = result[6];
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_72;
    }

    sCardSerialNumberAsString();
    if ((SBYTE7(v39) & 0x80u) == 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p;
    }

    *buf = 136315138;
    *&buf[4] = v25;
    v22 = "#E Device not found for %s";
    goto LABEL_37;
  }

  sub_10039EF40(v48);
  PB::Data::assign(*(v48 + 8), v50, v52);
  LOWORD(v45) = (*(*result + 240))(result);
  std::string::operator=(v44, v11);
  v23 = v48;
  *(v48 + 44) |= 1u;
  *(v23 + 40) = a5;
  v24 = *a4;
  if (*a4 != a4[1])
  {
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    __p = 0u;
    sub_100633230(&__p);
    sub_10039F83C(v24, &__p);
    sub_1005B70B8((v48 + 16), &__p);
  }

  v26 = result[6];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I [UpdateSubscriptionReq]", &__p, 2u);
  }

  sub_1005ACC40(v47, buf);
  *&__p = *(&v45 + 1);
  *(&v45 + 1) = *buf;
  *buf = 0;
  sub_10002D760(&__p);
  sub_10002D760(buf);
  *&v46[12] = 30;
  v46[8] = (*(*result + 224))(result, v50);
  *buf = 0uLL;
  (*(*result + 248))(buf, result);
  if (*buf)
  {
    sub_100004AA0(&__p, result + 2);
    v27 = __p;
    if (*(&__p + 1))
    {
      atomic_fetch_add_explicit((*(&__p + 1) + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(*(&v27 + 1));
    }

    v28 = *buf;
    if (SHIBYTE(v44[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, v44[0].__r_.__value_.__l.__data_, v44[0].__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v44[0];
    }

    if (SHIBYTE(v44[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v33, v44[1].__r_.__value_.__l.__data_, v44[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v33 = v44[1];
    }

    v34 = v45;
    v35 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      CFRetain(*(&v45 + 1));
    }

    v36 = *v46;
    if (*v46)
    {
      CFRetain(*v46);
    }

    v37[0] = *&v46[8];
    *(v37 + 6) = *&v46[14];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 1174405120;
    v29[2] = sub_1005B720C;
    v29[3] = &unk_101E666E0;
    v29[4] = result;
    v30 = v27;
    if (*(&v27 + 1))
    {
      atomic_fetch_add_explicit((*(&v27 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v31 = *buf;
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    (*(*v28 + 48))(v28, &__dst, v29);
    sub_1002030AC(&v36);
    sub_10002D760(&v35);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (*(&v31 + 1))
    {
      sub_100004A34(*(&v31 + 1));
    }

    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v30 + 1));
    }

    if (*(&v27 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v27 + 1));
    }
  }

  else if (os_log_type_enabled(result[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

LABEL_72:
  sub_1002030AC(v46);
  sub_10002D760(&v45 + 1);
  if (SHIBYTE(v44[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44[0].__r_.__value_.__l.__data_);
  }

  sub_1009BD5D4(v47);
}

void sub_1005B720C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v6, a2);
  v4 = *(a1 + 64);
  v7 = *(a1 + 56);
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (v5 + 16));
  operator new();
}

void sub_1005B73AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005B73C8(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1005B73FC(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1005B744C(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[10];
  if (!v4)
  {
    return;
  }

  while (1)
  {
    v9 = *(v4 + 7);
    if (v9 <= 0)
    {
      break;
    }

LABEL_5:
    v4 = *v4;
    if (!v4)
    {
      return;
    }
  }

  if (v9 < 0)
  {
    ++v4;
    goto LABEL_5;
  }

  v10 = *(a3 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a3 + 8);
  }

  if (!v10)
  {
    if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
    {
      sub_101775110();
    }

    v68[0] = 2;
    v68[8] = 1;
    v21 = *(a4 + 24);
    if (!v21)
    {
      sub_100022DB4();
    }

    (*(*v21 + 48))(v21, v68);
    if (v68[0] == 1)
    {
      if (v82 < 0)
      {
        operator delete(__p);
      }

      if (v80 < 0)
      {
        operator delete(v79);
      }

      if (v78 < 0)
      {
        operator delete(v77);
      }

      if (v76 < 0)
      {
        operator delete(v75);
      }

      if (v74 < 0)
      {
        operator delete(v73);
      }

      if (v72 < 0)
      {
        operator delete(v71);
      }

      if (v70 < 0)
      {
        operator delete(v69);
      }
    }

    return;
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v63 = 0u;
  memset(v62, 0, sizeof(v62));
  sub_1009BD270(v62);
  *cf = 0u;
  *v61 = 0u;
  *&v61[20] = 0;
  memset(v59, 0, sizeof(v59));
  v61[8] = 2;
  *&v61[12] = 0x50000003CLL;
  sub_1009BF1E8(v62);
  v11 = sub_1005C1B94((a1 + 15), a2);
  if (a1 + 16 == v11)
  {
    v22 = a1[6];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v58 >= 0)
      {
        v23 = buf;
      }

      else
      {
        v23 = *buf;
      }

      *v90 = 136315138;
      *&v90[4] = v23;
      v24 = "#E %s not found";
LABEL_61:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v24, v90, 0xCu);
      if (SHIBYTE(v58) < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_63:
    v42[0] = 2;
    v42[8] = 13;
    v28 = *(a4 + 24);
    if (!v28)
    {
      sub_100022DB4();
    }

    (*(*v28 + 48))(v28, v42);
    if (v42[0] == 1)
    {
      if (v56 < 0)
      {
        operator delete(v55);
      }

      if (v54 < 0)
      {
        operator delete(v53);
      }

      if (v52 < 0)
      {
        operator delete(v51);
      }

      if (v50 < 0)
      {
        operator delete(v49);
      }

      if (v48 < 0)
      {
        operator delete(v47);
      }

      if (v46 < 0)
      {
        operator delete(v45);
      }

      if (v44 < 0)
      {
        operator delete(v43);
      }
    }

    v42[0] = 0;
    goto LABEL_80;
  }

  v12 = a1[12];
  v13 = a1[13];
  if (v12 != v13)
  {
    v14 = v11 + 6;
    v15 = *(v11 + 71);
    if (v15 >= 0)
    {
      v16 = *(v11 + 71);
    }

    else
    {
      v16 = v11[7];
    }

    while (1)
    {
      v17 = *(v12 + 23);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v12 + 8);
      }

      if (v16 == v17)
      {
        v19 = v15 >= 0 ? v14 : *v14;
        v20 = v18 >= 0 ? v12 : *v12;
        if (!memcmp(v19, v20, v16))
        {
          break;
        }
      }

      v12 += 96;
      if (v12 == v13)
      {
        goto LABEL_56;
      }
    }
  }

  if (v12 == v13)
  {
LABEL_56:
    v22 = a1[6];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v58 >= 0)
      {
        v27 = buf;
      }

      else
      {
        v27 = *buf;
      }

      *v90 = 136315138;
      *&v90[4] = v27;
      v24 = "#E Device not found for %s";
      goto LABEL_61;
    }

    goto LABEL_63;
  }

  sub_10039EF40(v63);
  PB::Data::assign(*(v63 + 8), a2, a2 + 16);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v59, v12);
  v25 = v63;
  sub_10027F75C(v63);
  std::string::operator=(*(v25 + 16), a3);
  v26 = a1[6];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I [FetchSubscriptionInfoReq]", buf, 2u);
  }

  sub_1005ACC40(v62, v90);
  *buf = cf[1];
  cf[1] = *v90;
  *v90 = 0;
  sub_10002D760(buf);
  sub_10002D760(v90);
  *&v61[12] = 120;
  v61[8] = (*(*a1 + 224))(a1, a2);
  v40 = 0;
  v41 = 0;
  (*(*a1 + 248))(&v40, a1);
  if (v40)
  {
    memset(buf, 0, sizeof(buf));
    v58 = 0;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(buf, *a3, *(a3 + 8));
    }

    else
    {
      *buf = *a3;
      v58 = *(a3 + 16);
    }

    sub_100004AA0(v90, a1 + 2);
    v30 = *v90;
    if (*&v90[8])
    {
      atomic_fetch_add_explicit((*&v90[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(*(&v30 + 1));
    }

    v31 = v40;
    if (SHIBYTE(v59[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v32, v59[0].__r_.__value_.__l.__data_, v59[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v32 = v59[0];
    }

    if (SHIBYTE(v59[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v33, v59[1].__r_.__value_.__l.__data_, v59[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v33 = v59[1];
    }

    v34 = cf[0];
    v35 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v36 = *v61;
    if (*v61)
    {
      CFRetain(*v61);
    }

    v37[0] = *&v61[8];
    *(v37 + 6) = *&v61[14];
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 1174405120;
    v83[2] = sub_1005B7E50;
    v83[3] = &unk_101E66710;
    v83[4] = a1;
    v84 = v30;
    if (*(&v30 + 1))
    {
      atomic_fetch_add_explicit((*(&v30 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v58) < 0)
    {
      sub_100005F2C(&v85, *buf, *&buf[8]);
    }

    else
    {
      v85 = *buf;
      v86 = v58;
    }

    v87 = v40;
    v88 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10032FE90(v89, a4);
    (*(*v31 + 48))(v31, &v32, v83);
    sub_1002030AC(&v36);
    sub_10002D760(&v35);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v33.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    sub_10032B980(v89);
    if (v88)
    {
      sub_100004A34(v88);
    }

    if (SHIBYTE(v86) < 0)
    {
      operator delete(v85);
    }

    if (*(&v84 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v84 + 1));
    }

    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v30 + 1));
    }

    if (SHIBYTE(v58) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
    {
      sub_1017750DC();
    }

    v38[0] = 2;
    v39[0] = 3;
    v29 = *(a4 + 24);
    if (!v29)
    {
      sub_100022DB4();
    }

    (*(*v29 + 48))(v29, v38);
    if (v38[0] == 1)
    {
      sub_10011289C(v39);
    }

    v38[0] = 0;
  }

  if (v41)
  {
    sub_100004A34(v41);
  }

LABEL_80:
  sub_1002030AC(v61);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v59[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v59[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59[0].__r_.__value_.__l.__data_);
  }

  sub_1009BD5D4(v62);
}

void sub_1005B7CFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, std::__shared_weak_count *a47)
{
  v50 = *(v48 - 208);
  if (v50)
  {
    std::__shared_weak_count::__release_weak(v50);
  }

  sub_1005AD788(&a9);
  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a47)
  {
    sub_100004A34(a47);
  }

  sub_1005AD788(&STACK[0x220]);
  sub_1009BD5D4(&STACK[0x280]);
  _Unwind_Resume(a1);
}

void sub_1005B7E50(uint64_t a1, unsigned __int8 *a2)
{
  v6 = *(a1 + 32);
  v8 = v6;
  v4 = *(a1 + 48);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 79) < 0)
  {
    sub_100005F2C(__p, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    *__p = *(a1 + 56);
    __p[2] = *(a1 + 72);
  }

  sub_1005C0F8C(v11, a2);
  v5 = *(a1 + 88);
  v12 = *(a1 + 80);
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10032FE90(&v14, a1 + 96);
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (v6 + 16));
  operator new();
}

void sub_1005B80B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  if (a2)
  {
    v39 = *(v37 + 16);
    if (v39)
    {
      std::__shared_weak_count::__release_weak(v39);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005B8164(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10032FE90(a1 + 96, a2 + 96);
}

void sub_1005B81EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B8228(uint64_t a1)
{
  sub_10032B980(a1 + 96);
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1005B8290(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *v49 = a2;
  v50 = a3;
  v5 = a1[10];
  if (!v5)
  {
LABEL_6:
    v48[0] = 0;
    sub_10011282C(v48);
    v48[0] = 2;
    v48[8] = 11;
    v8 = *(a4 + 24);
    if (!v8)
    {
      sub_100022DB4();
    }

    (*(*v8 + 48))(v8, v48);
    sub_10011282C(v48);
    return;
  }

  while (1)
  {
    v7 = *(v5 + 7);
    if (v7 <= 0)
    {
      break;
    }

LABEL_5:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  if (v7 < 0)
  {
    ++v5;
    goto LABEL_5;
  }

  v41 = 0u;
  memset(v40, 0, sizeof(v40));
  sub_1009BD270(v40);
  *cf = 0u;
  *v39 = 0u;
  *&v39[20] = 0;
  memset(v37, 0, sizeof(v37));
  v39[8] = 2;
  *&v39[12] = 0x50000003CLL;
  sub_1009BEBB8(v40);
  v9 = sub_1005C1B94((a1 + 15), v49);
  if (a1 + 16 == v9)
  {
    v19 = a1[6];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v36 >= 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = *buf;
      }

      *v46 = 136315138;
      *&v46[4] = v20;
      v21 = "#E %s not found";
LABEL_43:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, v46, 0xCu);
      if (v36 < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_45:
    v47[0] = 0;
    sub_10011282C(v47);
    v47[0] = 2;
    v47[8] = 13;
    v27 = *(a4 + 24);
    if (!v27)
    {
      sub_100022DB4();
    }

    (*(*v27 + 48))(v27, v47);
    sub_10011282C(v47);
    goto LABEL_47;
  }

  v10 = a1[12];
  v11 = a1[13];
  if (v10 != v11)
  {
    v12 = v9 + 6;
    v13 = *(v9 + 71);
    if (v13 >= 0)
    {
      v14 = *(v9 + 71);
    }

    else
    {
      v14 = v9[7];
    }

    while (1)
    {
      v15 = *(v10 + 23);
      v16 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v15 = *(v10 + 8);
      }

      if (v14 == v15)
      {
        v17 = v13 >= 0 ? v12 : *v12;
        v18 = v16 >= 0 ? v10 : *v10;
        if (!memcmp(v17, v18, v14))
        {
          break;
        }
      }

      v10 += 96;
      if (v10 == v11)
      {
        goto LABEL_38;
      }
    }
  }

  if (v10 == v11)
  {
LABEL_38:
    v19 = a1[6];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      sCardSerialNumberAsString();
      if (v36 >= 0)
      {
        v26 = buf;
      }

      else
      {
        v26 = *buf;
      }

      *v46 = 136315138;
      *&v46[4] = v26;
      v21 = "#E Device not found for %s";
      goto LABEL_43;
    }

    goto LABEL_45;
  }

  sub_10039EF40(*(&v41 + 1));
  PB::Data::assign(*(*(&v41 + 1) + 8), v49, &v51);
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  std::string::operator=(v37, v10);
  v22 = a1[6];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [VinylInfoReq]", buf, 2u);
  }

  sub_1005ACC40(v40, v46);
  *buf = cf[1];
  cf[1] = *v46;
  *v46 = 0;
  sub_10002D760(buf);
  sub_10002D760(v46);
  *&v39[12] = 30;
  v39[8] = (*(*a1 + 224))(a1, v49);
  *v46 = 0uLL;
  (*(*a1 + 248))(v46, a1);
  if (*v46)
  {
    sub_100004AA0(buf, a1 + 2);
    v24 = *buf;
    v23 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
    }

    v25 = *v46;
    if (SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v28, v37[0].__r_.__value_.__l.__data_, v37[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v37[0];
    }

    if (SHIBYTE(v37[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v37[1].__r_.__value_.__l.__data_, v37[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v37[1];
    }

    v30 = cf[0];
    v31 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v32 = *v39;
    if (*v39)
    {
      CFRetain(*v39);
    }

    v33[0] = *&v39[8];
    *(v33 + 6) = *&v39[14];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 1174405120;
    v42[2] = sub_1005B8A00;
    v42[3] = &unk_101E66770;
    v42[4] = a1;
    v42[5] = v24;
    v43 = v23;
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10011425C(v44, a4);
    v45 = *v46;
    if (*&v46[8])
    {
      atomic_fetch_add_explicit((*&v46[8] + 8), 1uLL, memory_order_relaxed);
    }

    (*(*v25 + 48))(v25, &v28, v42);
    sub_1002030AC(&v32);
    sub_10002D760(&v31);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (*(&v45 + 1))
    {
      sub_100004A34(*(&v45 + 1));
    }

    sub_1001127AC(v44);
    if (v43)
    {
      std::__shared_weak_count::__release_weak(v43);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (*&v46[8])
  {
    sub_100004A34(*&v46[8]);
  }

LABEL_47:
  sub_1002030AC(v39);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v37[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37[0].__r_.__value_.__l.__data_);
  }

  sub_1009BD5D4(v40);
}

void sub_1005B8A00(uint64_t a1, unsigned __int8 *a2)
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1174405120;
  v11[2] = sub_1005B8BFC;
  v11[3] = &unk_101E66740;
  v6 = *(a1 + 32);
  v12 = v6;
  v3 = *(a1 + 48);
  v13 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v14, a2);
  sub_10011425C(v15, a1 + 56);
  v4 = *(a1 + 96);
  v15[4] = *(a1 + 88);
  v16 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (v6 + 16));
  v5 = *(v6 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_1005C1C24;
  block[3] = &unk_101E66980;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v11;
  dispatch_async(v5, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_1001127AC(v15);
  sub_1005C116C(v14);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

void sub_1005B8BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B8BFC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(a1 + 56);
        if (v6 == 2)
        {
          v7 = *(v3 + 48);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = sub_100A43314(*(a1 + 64));
            *buf = 136315138;
            *&buf[4] = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [VinylInfoReq] IDS Failure [%s]", buf, 0xCu);
            v9 = *(a1 + 56);
            if (v9 != 2)
            {
              if (v9 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v29 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v29 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v30, v29);
            }
          }

          v10 = sub_1005AD768(*(a1 + 64));
          v67[0] = 0;
          sub_10011282C(v67);
          v67[0] = 2;
          v67[8] = v10;
          v11 = *(a1 + 176);
          if (!v11)
          {
            sub_100022DB4();
          }

          (*(*v11 + 48))(v11, v67);
          sub_10011282C(v67);
        }

        else
        {
          *theData = 0u;
          memset(v43, 0, 24);
          memset(v41, 0, sizeof(v41));
          *__dst = 0u;
          if (v6 != 1)
          {
            v27 = __cxa_allocate_exception(0x10uLL);
            ctu::ResultIsEmptyError::ResultIsEmptyError(v27);
          }

          if (*(a1 + 87) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 64), *(a1 + 72));
          }

          else
          {
            *__dst = *(a1 + 64);
            v41[0] = *(a1 + 80);
          }

          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&v41[1], *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *&v41[1] = *(a1 + 88);
            v41[3] = *(a1 + 104);
          }

          LOWORD(theData[0]) = *(a1 + 112);
          sub_10002D728(&theData[1], (a1 + 120));
          sub_1002030F8(v43, (a1 + 128));
          *(&v43[0] + 1) = *(a1 + 136);
          *(v43 + 14) = *(a1 + 142);
          v12 = *(a1 + 56);
          if (v12 != 1)
          {
            if (v12 == 2)
            {
              v24 = __cxa_allocate_exception(0x10uLL);
              v25 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v24);
            }

            else
            {
              v24 = __cxa_allocate_exception(0x10uLL);
              v25 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v24);
            }

            __cxa_throw(v24, v26, v25);
          }

          v13 = *(a1 + 184);
          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(__p, *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *__p = *(a1 + 88);
            v39 = *(a1 + 104);
          }

          (*(*v13 + 56))(v13, __p);
          if (SHIBYTE(v39) < 0)
          {
            operator delete(__p[0]);
          }

          v14 = *(v3 + 48);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [VinylInfoRsp]", buf, 2u);
          }

          v66 = 0;
          v64 = 0u;
          v65 = 0u;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          *buf = 0u;
          v59 = 0u;
          sub_100A34C5C(buf);
          memset(v37, 0, sizeof(v37));
          BytePtr = CFDataGetBytePtr(theData[1]);
          Length = CFDataGetLength(theData[1]);
          PB::Reader::Reader(v37, BytePtr, Length);
          v17 = sub_100A353F0(buf, v37);
          v18 = *(v3 + 48);
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v17)
          {
            if (v19)
            {
              PB::Base::formattedText(v46, buf);
              v20 = v47 >= 0 ? v46 : *v46;
              *v53 = 136315138;
              *&v53[4] = v20;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s", v53, 0xCu);
              if (v47 < 0)
              {
                operator delete(*v46);
              }
            }

            v57 = 0;
            memset(v56, 0, sizeof(v56));
            v54 = 0u;
            *v55 = 0u;
            *v53 = 0u;
            v34 = 0;
            v36 = 0u;
            v32 = 0u;
            *v33 = 0u;
            *v31 = 0u;
            v35 = &v36;
            if (sub_10039F070(**(v66 + 8), v53, v31))
            {
              sub_100F11B6C(v46, v53);
              v51 = 1;
              v52[0] = 0;
              sub_1005C36A0(v52, v46);
              v21 = *(a1 + 176);
              if (!v21)
              {
                sub_100022DB4();
              }

              (*(*v21 + 48))(v21, v52);
              v22 = v52;
            }

            else
            {
              v46[0] = 0;
              v51 = 0;
              v45[0] = 0;
              sub_1005C36A0(v45, v46);
              v23 = *(a1 + 176);
              if (!v23)
              {
                sub_100022DB4();
              }

              (*(*v23 + 48))(v23, v45);
              v22 = v45;
            }

            sub_10011282C(v22);
            if (v51 == 1)
            {
              if (v50[24] == 1)
              {
                v44 = v50;
                sub_100112120(&v44);
              }

              if (v49 < 0)
              {
                operator delete(v48);
              }
            }

            sub_100111E24(&v35, v36);
            if (SHIBYTE(v34) < 0)
            {
              operator delete(v33[0]);
            }

            if (SHIBYTE(v32) < 0)
            {
              operator delete(v31[1]);
            }

            if (v57 == 1)
            {
              *v46 = v56 + 8;
              sub_100112120(v46);
            }

            if (SBYTE7(v56[0]) < 0)
            {
              operator delete(v55[0]);
            }
          }

          else if (v19)
          {
            *v46 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E Malformed Message - ignoring", v46, 2u);
          }

          sub_100A34FF0(buf);
          sub_1002030AC(v43);
          sub_10002D760(&theData[1]);
          if (SHIBYTE(v41[3]) < 0)
          {
            operator delete(v41[1]);
          }

          if (SHIBYTE(v41[0]) < 0)
          {
            operator delete(__dst[0]);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1005B9298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p)
{
  sub_100319EC0(&a9);
  sub_100F01778(&STACK[0x230]);
  sub_100A34FF0(&STACK[0x290]);
  sub_1005AD788(&__p);
  sub_100004A34(v27);
  _Unwind_Resume(a1);
}

uint64_t sub_1005B9384(void *a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 6);
  a1[5] = *(a2 + 5);
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(a1 + 7, a2 + 56);
  result = sub_10011425C((a1 + 19), (a2 + 152));
  v6 = *(a2 + 24);
  a1[23] = *(a2 + 23);
  a1[24] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1005B93F0(_Unwind_Exception *a1)
{
  sub_1005C116C(v1 + 56);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1005B9418(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1001127AC(a1 + 152);
  sub_1005C116C(a1 + 56);
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_1005B9478(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_10011425C((a1 + 7), (a2 + 7));
  v6 = a2[12];
  a1[11] = a2[11];
  a1[12] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1005B94D8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005B94F0(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1001127AC(a1 + 56);
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1005B9548(void *a1, const std::string *a2, const std::string *a3, const unsigned __int8 *a4, std::string *a5, __int128 **a6, const unsigned __int8 *a7, const std::string *a8, const std::string *a9, const std::string *a10, uint64_t a11)
{
  v11 = a1[10];
  if (!v11)
  {
LABEL_7:
    v33 = 2818;
    v21 = *(a11 + 24);
    if (!v21)
    {
      sub_100022DB4();
    }

    (*(*v21 + 48))(v21, &v33, a3, a4, a5, a6, a7, a8);
    return;
  }

  v15 = a5;
  while (1)
  {
    v20 = *(v11 + 7);
    if (v20 <= 1)
    {
      break;
    }

LABEL_6:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  if (v20 != 1)
  {
    ++v11;
    goto LABEL_6;
  }

  v32 = 0u;
  v31 = 0u;
  memset(v30, 0, sizeof(v30));
  sub_1009BD270(v30);
  sub_1009BF0C8(v30);
  v22 = v31;
  sub_1005C127C(v31);
  std::string::operator=(*(v22 + 80), a2);
  sub_10039FCD8(v22);
  std::string::operator=(*(v22 + 88), a3);
  sub_10039F9C0(v22);
  std::string::operator=(*(v22 + 40), v15);
  sub_1005B98F0(v22);
  PB::Data::assign(*(v22 + 48), a7, a7 + 16);
  sub_1005B9958(v22);
  PB::Data::assign(*(v22 + 32), a4, a4 + 16);
  sub_10039FDC0(v22);
  std::string::operator=(*(v22 + 72), a8);
  sub_10039FC64(v22);
  std::string::operator=(*(v22 + 64), a9);
  sub_10039FBF0(v22);
  std::string::operator=(*(v22 + 56), a10);
  v23 = *a6;
  v24 = a6[1];
  if (*a6 != v24)
  {
    v25 = *(v22 + 16);
    do
    {
      if (v25 >= *(v22 + 24))
      {
        v25 = sub_1000053A0(v22 + 8, v23);
      }

      else
      {
        sub_10011C7A4((v22 + 8), v23);
        v25 += 24;
      }

      *(v22 + 16) = v25;
      v23 = (v23 + 24);
    }

    while (v23 != v24);
  }

  v26 = v31;
  *(v31 + 100) |= 1u;
  *(v26 + 96) = 1;
  memset(&__p, 0, sizeof(__p));
  (*(*a1 + 232))(&__p, a1, v15);
  if (sub_1005B99C0(a1, &__p))
  {
    sub_1001135B0(v34, a11);
    v27 = v34;
    sub_1005B9F9C(a1, &__p, v30, v34);
  }

  else
  {
    v28 = a1[6];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (SHIBYTE(v15->__r_.__value_.__r.__words[2]) < 0)
      {
        v15 = v15->__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v37 = v15;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Destination device for transfer %s not found, caching plan transfer", buf, 0xCu);
    }

    sub_1001135B0(v35, a11);
    v27 = v35;
    sub_1005B9AAC(a1, &__p, v30, v35);
  }

  sub_100113648(v27);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1009BD5D4(v30);
}

void sub_1005B9894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  sub_100113648(v36 - 160);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1009BD5D4(&a18);
  _Unwind_Resume(a1);
}

void ***sub_1005B98F0(void ***result)
{
  if (!result[6])
  {
    operator new();
  }

  return result;
}

void ***sub_1005B9958(void ***result)
{
  if (!result[4])
  {
    operator new();
  }

  return result;
}

uint64_t sub_1005B99C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v13 = *(a2 + 16);
  }

  v4 = HIBYTE(v13);
  if (v2 == v3)
  {
LABEL_19:
    v10 = 0;
    if (v4 < 0)
    {
LABEL_20:
      operator delete(__p[0]);
    }
  }

  else
  {
    if (v13 >= 0)
    {
      v5 = HIBYTE(v13);
    }

    else
    {
      v5 = __p[1];
    }

    if (v13 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
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

      v2 += 96;
      if (v2 == v3)
      {
        goto LABEL_19;
      }
    }

    v10 = 1;
    if (v4 < 0)
    {
      goto LABEL_20;
    }
  }

  return v10;
}

void sub_1005B9AAC(uint64_t a1, __int128 *a2, void *a3, uint64_t a4)
{
  if (*(a1 + 216))
  {
    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_101775144();
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
    (***(a1 + 56))(__p);
    Registry::getTimerService(&v10, __p[0]);
    if (__p[1])
    {
      sub_100004A34(__p[1]);
    }

    if (v10)
    {
      sub_1005C19FC(__p, a2, a3, a4);
      sub_1005C668C(a1 + 224, 0, 0, __p);
    }

    if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
    {
      sub_101775178();
    }

    v9 = 770;
    v8 = *(a4 + 24);
    if (!v8)
    {
      sub_100022DB4();
    }

    (*(*v8 + 48))(v8, &v9);
    LOBYTE(v9) = 0;
    if (v11)
    {
      sub_100004A34(v11);
    }
  }
}

void sub_1005B9E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100113648(&a51);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a35)
  {
    sub_100004A34(a35);
  }

  _Unwind_Resume(a1);
}

void sub_1005B9F9C(void *a1, const std::string *a2, uint64_t a3, uint64_t a4)
{
  v39 = 0uLL;
  v6 = *(*(a3 + 96) + 32);
  if (v6 && *(v6 + 8) == 16)
  {
    v39 = **v6;
    v37 = 0u;
    *v38 = 0u;
    *&v38[20] = 0;
    memset(v36, 0, sizeof(v36));
    v38[8] = 2;
    *&v38[12] = 0x50000003CLL;
    sub_1005ACC40(a3, &v27);
    *buf = *(&v37 + 1);
    *(&v37 + 1) = v27;
    v27 = 0;
    sub_10002D760(buf);
    sub_10002D760(&v27);
    std::string::operator=(v36, a2);
    *&v38[12] = 30;
    LOWORD(v37) = (*(*a1 + 240))(a1);
    v38[8] = (*(*a1 + 224))(a1, &v39);
    *&v38[20] = 257;
    v27 = 0;
    v28 = 0;
    (*(*a1 + 248))(&v27, a1);
    v9 = a1[6];
    if (v27)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [StartTransferProfileReq]", buf, 2u);
      }

      sub_100004AA0(buf, a1 + 2);
      v11 = *buf;
      v10 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
      }

      v25 = 0;
      memset(buf, 0, sizeof(buf));
      v12 = *(*(a3 + 96) + 40);
      if (*(v12 + 23) < 0)
      {
        sub_100005F2C(buf, *v12, *(v12 + 1));
      }

      else
      {
        v13 = *v12;
        v25 = *(v12 + 2);
        *buf = v13;
      }

      v17 = v27;
      if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v18, v36[0].__r_.__value_.__l.__data_, v36[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v18 = v36[0];
      }

      if (SHIBYTE(v36[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, v36[1].__r_.__value_.__l.__data_, v36[1].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v36[1];
      }

      v20 = v37;
      v21 = *(&v37 + 1);
      if (*(&v37 + 1))
      {
        CFRetain(*(&v37 + 1));
      }

      v22 = *v38;
      if (*v38)
      {
        CFRetain(*v38);
      }

      v23[0] = *&v38[8];
      *(v23 + 6) = *&v38[14];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 1174405120;
      v30[2] = sub_1005C05C0;
      v30[3] = &unk_101E66860;
      v30[4] = a1;
      v30[5] = v11;
      v31 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1001135B0(v32, a4);
      v32[4] = v27;
      v33 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v25) < 0)
      {
        sub_100005F2C(&v34, *buf, *&buf[8]);
      }

      else
      {
        v34 = *buf;
        v35 = v25;
      }

      (*(*v17 + 48))(v17, &v18, v30);
      sub_1002030AC(&v22);
      sub_10002D760(&v21);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v18.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34);
      }

      if (v33)
      {
        sub_100004A34(v33);
      }

      sub_100113648(v32);
      if (v31)
      {
        std::__shared_weak_count::__release_weak(v31);
      }

      if (SHIBYTE(v25) < 0)
      {
        operator delete(*buf);
      }

      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1017750DC();
      }

      v26 = 770;
      v16 = *(a4 + 24);
      if (!v16)
      {
        sub_100022DB4();
      }

      (*(*v16 + 48))(v16, &v26);
      LOBYTE(v26) = 0;
    }

    if (v28)
    {
      sub_100004A34(v28);
    }

    sub_1002030AC(v38);
    sub_10002D760(&v37 + 1);
    if (SHIBYTE(v36[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v36[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v14 = a1[6];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v36[0].__r_.__value_.__l.__data_) = 136315138;
      *(v36[0].__r_.__value_.__r.__words + 4) = asString();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E %s", v36, 0xCu);
    }

    v29 = 3330;
    v15 = *(a4 + 24);
    if (!v15)
    {
      sub_100022DB4();
    }

    (*(*v15 + 48))(v15, &v29);
  }
}

void sub_1005BA50C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, uint64_t a34, std::__shared_weak_count *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, std::__shared_weak_count *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a49)
  {
    sub_100004A34(a49);
  }

  sub_100113648(v56 + 56);
  if (a43)
  {
    std::__shared_weak_count::__release_weak(a43);
  }

  sub_1005AD788(&a9);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  if (a35)
  {
    sub_100004A34(a35);
  }

  sub_1005AD788(v57 - 192);
  _Unwind_Resume(a1);
}

void sub_1005BA5F8(void *a1, const std::string *a2, const unsigned __int8 *a3, uint64_t *a4, const unsigned __int8 *a5, uint64_t a6, uint64_t a7)
{
  v8 = a1[10];
  if (!v8)
  {
LABEL_7:
    v42 = 2818;
    v16 = *(a7 + 24);
    if (!v16)
    {
      sub_100022DB4();
    }

    (*(*v16 + 48))(v16, &v42, a3, a4, a5, a6);
    return;
  }

  v9 = a6;
  v11 = a4;
  while (1)
  {
    v15 = *(v8 + 7);
    if (v15 <= 1)
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

  if (v15 != 1)
  {
    ++v8;
    goto LABEL_6;
  }

  memset(&__str, 0, sizeof(__str));
  (*(*a1 + 232))(&__str, a1, a4);
  if (sub_1005B99C0(a1, &__str))
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    *v49 = 0u;
    v50 = 0u;
    sub_1009BD270(v49);
    *cf = 0u;
    *v39 = 0u;
    *&v39[20] = 0;
    memset(v37, 0, sizeof(v37));
    v39[8] = 2;
    *&v39[12] = 0x50000003CLL;
    sub_1009BF0C8(v17);
    v18 = v55;
    sub_10039FCD8(v55);
    std::string::operator=(*(v18 + 88), a2);
    sub_10039F9C0(v18);
    std::string::operator=(*(v18 + 40), v11);
    sub_1005B98F0(v18);
    PB::Data::assign(*(v18 + 48), a5, a5 + 16);
    sub_1005B9958(v18);
    PB::Data::assign(*(v18 + 32), a3, a3 + 16);
    v19 = v55;
    *(v55 + 100) |= 1u;
    if (v9 == 3)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    *(v19 + 96) = v20;
    v21 = a1[6];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I [CancelTransferProfileReq]", buf, 2u);
    }

    sub_1005ACC40(v49, &v35);
    *buf = cf[1];
    cf[1] = v35;
    v35 = 0;
    sub_10002D760(buf);
    sub_10002D760(&v35);
    std::string::operator=(v37, &__str);
    *&v39[12] = 30;
    v39[8] = (*(*a1 + 224))(a1, a3);
    LOWORD(cf[0]) = (*(*a1 + 240))(a1);
    *&v39[20] = 257;
    v35 = 0;
    v36 = 0;
    (*(*a1 + 248))(&v35, a1, v39[8]);
    if (v35)
    {
      sub_100004AA0(buf, a1 + 2);
      v23 = *buf;
      v22 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
      }

      memset(buf, 0, sizeof(buf));
      v34 = 0;
      if (*(v11 + 23) < 0)
      {
        sub_100005F2C(buf, *v11, v11[1]);
      }

      else
      {
        *buf = *v11;
        v34 = v11[2];
      }

      v26 = v35;
      if (SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v27, v37[0].__r_.__value_.__l.__data_, v37[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v27 = v37[0];
      }

      if (SHIBYTE(v37[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, v37[1].__r_.__value_.__l.__data_, v37[1].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v37[1];
      }

      v29 = cf[0];
      v30 = cf[1];
      if (cf[1])
      {
        CFRetain(cf[1]);
      }

      v31 = *v39;
      if (*v39)
      {
        CFRetain(*v39);
      }

      v32[0] = *&v39[8];
      *(v32 + 6) = *&v39[14];
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 1174405120;
      v43[2] = sub_1005BAD88;
      v43[3] = &unk_101E667A0;
      v43[4] = a1;
      v43[5] = v23;
      v44 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1001135B0(v45, a7);
      v45[4] = v35;
      v46 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(v34) < 0)
      {
        sub_100005F2C(&v47, *buf, *&buf[8]);
      }

      else
      {
        v47 = *buf;
        v48 = v34;
      }

      (*(*v26 + 48))(v26, &v27, v43);
      sub_1002030AC(&v31);
      sub_10002D760(&v30);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48) < 0)
      {
        operator delete(v47);
      }

      if (v46)
      {
        sub_100004A34(v46);
      }

      sub_100113648(v45);
      if (v44)
      {
        std::__shared_weak_count::__release_weak(v44);
      }

      if (SHIBYTE(v34) < 0)
      {
        operator delete(*buf);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
    {
      sub_1017750DC();
    }

    if (v36)
    {
      sub_100004A34(v36);
    }

    sub_1002030AC(v39);
    sub_10002D760(&cf[1]);
    if (SHIBYTE(v37[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37[0].__r_.__value_.__l.__data_);
    }

    sub_1009BD5D4(v49);
  }

  else
  {
    v24 = a1[6];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v11 + 23) < 0)
      {
        v11 = *v11;
      }

      *v49 = 136315138;
      *&v49[4] = v11;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E destination device for transfer %s not found", v49, 0xCu);
    }

    v40 = 1;
    v25 = *(a7 + 24);
    if (!v25)
    {
      sub_100022DB4();
    }

    (*(*v25 + 48))(v25, &v40);
    LOBYTE(v40) = 0;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1005BAC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61)
{
  if (a61)
  {
    sub_100004A34(a61);
  }

  sub_100113648(v62 + 56);
  if (a55)
  {
    std::__shared_weak_count::__release_weak(a55);
  }

  sub_1005AD788(&a9);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_weak(v61);
  }

  if (a29)
  {
    sub_100004A34(a29);
  }

  sub_1005AD788(&a30);
  sub_1009BD5D4((v63 - 224));
  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

void sub_1005BAD88(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(a1 + 32);
  v7 = v5;
  v3 = *(a1 + 48);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v9, a2);
  sub_1001135B0(v10, a1 + 56);
  v4 = *(a1 + 96);
  v10[4] = *(a1 + 88);
  v10[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 127) < 0)
  {
    sub_100005F2C(__p, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    *__p = *(a1 + 104);
    __p[2] = *(a1 + 120);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (v5 + 16));
  operator new();
}

void sub_1005BAFDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a2)
  {
    v38 = *(v35 + 160);
    if (v38)
    {
      sub_100004A34(v38);
    }

    sub_100113648(v36 + 96);
    sub_1005C116C(v36);
    v39 = *(v35 + 16);
    if (v39)
    {
      std::__shared_weak_count::__release_weak(v39);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005BB078(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_1001135B0(a1 + 56, a2 + 56);
  v6 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 127) < 0)
  {
    return sub_100005F2C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  v7 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v7;
  return result;
}

void sub_1005BB100(_Unwind_Exception *a1)
{
  v3 = *(v1 + 96);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100113648(v1 + 56);
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1005BB134(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100113648(a1 + 56);
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1005BB19C(void *a1, const std::string *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const std::string *a6, const unsigned __int8 **a7, uint64_t a8)
{
  *v58 = a4;
  v59 = a5;
  v9 = a1[10];
  if (!v9)
  {
LABEL_7:
    v40 = 2818;
    v16 = *(a8 + 24);
    if (!v16)
    {
      sub_100022DB4();
    }

    (*(*v16 + 48))(v16, &v40, a3, a4, a5, a6, a7);
    return;
  }

  v12 = a3;
  while (1)
  {
    v15 = *(v9 + 7);
    if (v15 <= 1)
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

  if (v15 != 1)
  {
    ++v9;
    goto LABEL_6;
  }

  memset(&__str, 0, sizeof(__str));
  (*(*a1 + 232))(&__str, a1, a3);
  if (sub_1005B99C0(a1, &__str))
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    *v50 = 0u;
    v51 = 0u;
    sub_1009BD270(v50);
    *cf = 0u;
    *v37 = 0u;
    *&v37[20] = 0;
    memset(v35, 0, sizeof(v35));
    v37[8] = 2;
    *&v37[12] = 0x50000003CLL;
    sub_1009BF398(v17);
    v18 = *(&v53 + 1);
    sub_10039F9C0(*(&v53 + 1));
    std::string::operator=(*(v18 + 40), a2);
    sub_10039EFFC(v18);
    std::string::operator=(*(v18 + 8), v12);
    sub_1005BB960(v18);
    PB::Data::assign(*(v18 + 24), v58, &v60);
    sub_10039FB7C(v18);
    std::string::operator=(*(v18 + 32), a6);
    sub_1005B4084(v18);
    PB::Data::assign(*(v18 + 16), *a7, a7[1]);
    v19 = a1[6];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = a6;
      if (SHIBYTE(a6->__r_.__value_.__r.__words[2]) < 0)
      {
        v20 = a6->__r_.__value_.__r.__words[0];
      }

      v21 = a2;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        v21 = a2->__r_.__value_.__r.__words[0];
      }

      *buf = 136446466;
      *&buf[4] = v20;
      *&buf[12] = 2082;
      *&buf[14] = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I send [GenericTransferPayloadReq] : %{public}s, uuid:%{public}s", buf, 0x16u);
    }

    sub_1005ACC40(v50, &v33);
    *buf = cf[1];
    cf[1] = v33;
    v33 = 0;
    sub_10002D760(buf);
    sub_10002D760(&v33);
    std::string::operator=(v35, &__str);
    *&v37[12] = 30;
    *buf = 0;
    *&buf[8] = 0;
    v37[8] = (*(*a1 + 224))(a1, buf);
    LOWORD(cf[0]) = (*(*a1 + 240))(a1);
    *&v37[20] = 257;
    v33 = 0;
    v34 = 0;
    (*(*a1 + 248))(&v33, a1, v37[8]);
    if (v33)
    {
      sub_100004AA0(buf, a1 + 2);
      v23 = *buf;
      v22 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v22);
      }

      v24 = v33;
      if (SHIBYTE(v35[0].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v27, v35[0].__r_.__value_.__l.__data_, v35[0].__r_.__value_.__l.__size_);
      }

      else
      {
        v27 = v35[0];
      }

      if (SHIBYTE(v35[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, v35[1].__r_.__value_.__l.__data_, v35[1].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v35[1];
      }

      v29 = cf[0];
      v30 = cf[1];
      if (cf[1])
      {
        CFRetain(cf[1]);
      }

      v31 = *v37;
      if (*v37)
      {
        CFRetain(*v37);
      }

      v32[0] = *&v37[8];
      *(v32 + 6) = *&v37[14];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 1174405120;
      v41[2] = sub_1005BB9C8;
      v41[3] = &unk_101E667D0;
      v41[4] = a1;
      v41[5] = v23;
      v42 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1001135B0(v43, a8);
      v43[4] = v33;
      v44 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v45, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
      }

      else
      {
        v45 = *&a2->__r_.__value_.__l.__data_;
        v46 = a2->__r_.__value_.__r.__words[2];
      }

      if (SHIBYTE(a6->__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v47, a6->__r_.__value_.__l.__data_, a6->__r_.__value_.__l.__size_);
      }

      else
      {
        v47 = *&a6->__r_.__value_.__l.__data_;
        v48 = a6->__r_.__value_.__r.__words[2];
      }

      (*(*v24 + 48))(v24, &v27, v41);
      sub_1002030AC(&v31);
      sub_10002D760(&v30);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v48) < 0)
      {
        operator delete(v47);
      }

      if (SHIBYTE(v46) < 0)
      {
        operator delete(v45);
      }

      if (v44)
      {
        sub_100004A34(v44);
      }

      sub_100113648(v43);
      if (v42)
      {
        std::__shared_weak_count::__release_weak(v42);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_weak(v22);
      }
    }

    else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
    {
      sub_1017750DC();
    }

    if (v34)
    {
      sub_100004A34(v34);
    }

    sub_1002030AC(v37);
    sub_10002D760(&cf[1]);
    if (SHIBYTE(v35[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v35[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35[0].__r_.__value_.__l.__data_);
    }

    sub_1009BD5D4(v50);
  }

  else
  {
    v25 = a1[6];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v12 + 23) < 0)
      {
        v12 = *v12;
      }

      *v50 = 136315138;
      *&v50[4] = v12;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E destination device for transfer %s not found", v50, 0xCu);
    }

    v38 = 1;
    v26 = *(a8 + 24);
    if (!v26)
    {
      sub_100022DB4();
    }

    (*(*v26 + 48))(v26, &v38);
    LOBYTE(v38) = 0;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1005BB84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  if (a55)
  {
    sub_100004A34(a55);
  }

  sub_100113648(v62 + 56);
  if (a49)
  {
    std::__shared_weak_count::__release_weak(a49);
  }

  sub_1005AD788(&a9);
  if (v61)
  {
    std::__shared_weak_count::__release_weak(v61);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  sub_1005AD788(&a23);
  sub_1009BD5D4((v63 - 240));
  if (a41 < 0)
  {
    operator delete(a36);
  }

  _Unwind_Resume(a1);
}

void ***sub_1005BB960(void ***result)
{
  if (!result[3])
  {
    operator new();
  }

  return result;
}

void sub_1005BB9C8(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(a1 + 32);
  v7 = v5;
  v3 = *(a1 + 48);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v9, a2);
  sub_1001135B0(v10, a1 + 56);
  v4 = *(a1 + 96);
  v10[4] = *(a1 + 88);
  v10[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 127) < 0)
  {
    sub_100005F2C(v11, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    *v11 = *(a1 + 104);
    v11[2] = *(a1 + 120);
  }

  if (*(a1 + 151) < 0)
  {
    sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
  }

  else
  {
    *__p = *(a1 + 128);
    __p[2] = *(a1 + 144);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (v5 + 16));
  operator new();
}

void sub_1005BBC88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a2)
  {
    if (*(v41 + 191) < 0)
    {
      operator delete(*(v41 + 168));
    }

    v44 = *(v41 + 160);
    if (v44)
    {
      sub_100004A34(v44);
    }

    sub_100113648(v42 + 96);
    sub_1005C116C(v42);
    v45 = *(v41 + 16);
    if (v45)
    {
      std::__shared_weak_count::__release_weak(v45);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005BBD58(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_1001135B0(a1 + 56, a2 + 56);
  v6 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 127) < 0)
  {
    result = sub_100005F2C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
  }

  if (*(a2 + 151) < 0)
  {
    return sub_100005F2C((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 128) = v8;
  return result;
}

void sub_1005BBE08(_Unwind_Exception *a1)
{
  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  v3 = *(v1 + 96);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100113648(v1 + 56);
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1005BBE54(uint64_t a1)
{
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100113648(a1 + 56);
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1005BBECC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    memset(&__str, 0, sizeof(__str));
    (*(*a1 + 232))(&__str, a1);
    if (sub_1005B99C0(a1, &__str))
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      *v47 = 0u;
      v48 = 0u;
      sub_1009BD270(v47);
      *cf = 0u;
      *v40 = 0u;
      *&v40[20] = 0;
      memset(v38, 0, sizeof(v38));
      v40[8] = 2;
      *&v40[12] = 0x50000003CLL;
      sub_1009BF308(v6);
      v7 = *(&v51 + 1);
      sub_10039EFFC(*(&v51 + 1));
      std::string::operator=(*(v7 + 8), a2);
      sub_1005B4084(v7);
      PB::Data::assign(*(v7 + 16), a2 + 48, a2 + 64);
      v8 = a2[3];
      v9 = a2[4];
      if (v8 != v9)
      {
        v10 = *(v7 + 56);
        do
        {
          if (v10 >= *(v7 + 64))
          {
            v10 = sub_1000053A0(v7 + 48, v8);
          }

          else
          {
            sub_10011C7A4((v7 + 48), v8);
            v10 += 24;
          }

          *(v7 + 56) = v10;
          v8 = (v8 + 24);
        }

        while (v8 != v9);
      }

      v11 = *(a2 + 87);
      if ((v11 & 0x80u) != 0)
      {
        v11 = a2[9];
      }

      if (v11)
      {
        sub_10039FDC0(v7);
        std::string::operator=(*(v7 + 72), (a2 + 8));
      }

      v12 = *(a2 + 111);
      if ((v12 & 0x80u) != 0)
      {
        v12 = a2[12];
      }

      if (v12)
      {
        sub_1005C127C(v7);
        std::string::operator=(*(v7 + 80), (a2 + 11));
      }

      v13 = *(a2 + 135);
      if ((v13 & 0x80u) != 0)
      {
        v13 = a2[15];
      }

      if (v13)
      {
        sub_10039F9C0(v7);
        std::string::operator=(*(v7 + 40), (a2 + 14));
      }

      v14 = *(a2 + 159);
      if ((v14 & 0x80u) != 0)
      {
        v14 = a2[18];
      }

      if (v14)
      {
        sub_10039FB08(v7);
        std::string::operator=(*(v7 + 24), (a2 + 17));
      }

      v15 = *(a2 + 183);
      if ((v15 & 0x80u) != 0)
      {
        v15 = a2[21];
      }

      if (v15)
      {
        sub_10039FCD8(v7);
        std::string::operator=(*(v7 + 88), (a2 + 20));
      }

      v16 = *(a2 + 47);
      if (v16)
      {
        *(v7 + 104) |= 1u;
        *(v7 + 96) = v16;
      }

      v17 = *(a2 + 46);
      if (v17)
      {
        *(v7 + 104) |= 2u;
        *(v7 + 100) = v17;
      }

      v18 = a1[6];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [PurchasePlanReq]", buf, 2u);
      }

      sub_1005ACC40(v47, &v36);
      *buf = cf[1];
      cf[1] = v36;
      v36 = 0;
      sub_10002D760(buf);
      sub_10002D760(&v36);
      std::string::operator=(v38, &__str);
      *&v40[12] = 30;
      v40[8] = 0;
      LOWORD(cf[0]) = (*(*a1 + 240))(a1);
      v36 = 0;
      v37 = 0;
      (*(*a1 + 248))(&v36, a1, v40[8]);
      if (v36)
      {
        sub_100004AA0(buf, a1 + 2);
        v20 = *buf;
        v19 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(v31 + 2, 1uLL, memory_order_relaxed);
          sub_100004A34(v19);
        }

        v21 = v36;
        if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v24, v38[0].__r_.__value_.__l.__data_, v38[0].__r_.__value_.__l.__size_);
        }

        else
        {
          v24 = v38[0];
        }

        if (SHIBYTE(v38[1].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&v25, v38[1].__r_.__value_.__l.__data_, v38[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v25 = v38[1];
        }

        v26 = cf[0];
        v27 = cf[1];
        if (cf[1])
        {
          CFRetain(cf[1]);
        }

        v28 = *v40;
        if (*v40)
        {
          CFRetain(*v40);
        }

        v29[0] = *&v40[8];
        *(v29 + 6) = *&v40[14];
        v42[0] = _NSConcreteStackBlock;
        v42[1] = 1174405120;
        v42[2] = sub_1005BC69C;
        v42[3] = &unk_101E66800;
        v42[4] = a1;
        v42[5] = v20;
        v43 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v44 = v36;
        v45 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_1005C4724(v46, a3);
        (*(*v21 + 48))(v21, &v24, v42);
        sub_1002030AC(&v28);
        sub_10002D760(&v27);
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v24.__r_.__value_.__l.__data_);
        }

        sub_1005C47BC(v46);
        if (v45)
        {
          sub_100004A34(v45);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_weak(v43);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_weak(v19);
        }
      }

      else
      {
        if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
        {
          sub_1017750DC();
        }

        buf[0] = 0;
        v35 = 0;
        sub_100111820(a3, buf, 5);
        if (v35 == 1)
        {
          if (v34 < 0)
          {
            operator delete(__p);
          }

          if (v32 < 0)
          {
            operator delete(v31);
          }
        }
      }

      if (v37)
      {
        sub_100004A34(v37);
      }

      sub_1002030AC(v40);
      sub_10002D760(&cf[1]);
      if (SHIBYTE(v38[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v38[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v38[0].__r_.__value_.__l.__data_);
      }

      sub_1009BD5D4(v47);
    }

    else
    {
      v22 = a1[6];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        *v47 = 136315138;
        *&v47[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E destination device for %s not found", v47, 0xCu);
      }

      v47[0] = 0;
      BYTE8(v50) = 0;
      sub_100111820(a3, v47, 6);
      if (BYTE8(v50) == 1)
      {
        if (SBYTE7(v50) < 0)
        {
          operator delete(v49);
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(*&v47[8]);
        }
      }
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017751AC();
  }
}

void sub_1005BC5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, std::__shared_weak_count *a58, uint64_t a59, uint64_t a60)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  if (a33)
  {
    sub_100004A34(a33);
  }

  sub_1005AD788(&a34);
  sub_1009BD5D4((v61 - 208));
  if (a51 < 0)
  {
    operator delete(a46);
  }

  _Unwind_Resume(a1);
}

void sub_1005BC69C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(a1 + 32);
  v7 = v5;
  v3 = *(a1 + 48);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v9, a2);
  v4 = *(a1 + 64);
  v10 = *(a1 + 56);
  v11 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005C4724(&v12, a1 + 72);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (v5 + 16));
  operator new();
}

void sub_1005BC898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1005BC910(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  a1[7] = a2[7];
  a1[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1005C4724((a1 + 9), (a2 + 9));
}

void sub_1005BC96C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BC990(uint64_t a1)
{
  sub_1005C47BC(a1 + 72);
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1005BC9E8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CSN to device Id", buf, 2u);
  }

  v3 = *(a1 + 120);
  if (v3 != (a1 + 128))
  {
    do
    {
      v4 = *(a1 + 48);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        sCardSerialNumberAsString();
        v5 = v3 + 6;
        if (v11 >= 0)
        {
          v6 = buf;
        }

        else
        {
          v6 = *buf;
        }

        if (*(v3 + 71) < 0)
        {
          v5 = *v5;
        }

        *v12 = 136315394;
        v13 = v6;
        v14 = 2080;
        v15 = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I * %s -> %s", v12, 0x16u);
        if (v11 < 0)
        {
          operator delete(*buf);
        }
      }

      v7 = v3[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v3[2];
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != (a1 + 128));
  }
}

void sub_1005BCB80(uint64_t a1, const std::string *a2)
{
  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2->__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received IDS Message from [%s]", buf, 0xCu);
  }

  if (a2[2].__r_.__value_.__l.__size_)
  {
    v32 = 0u;
    v33 = 0u;
    *buf = 0u;
    v31 = 0u;
    sub_100806978(buf);
    memset(v27, 0, sizeof(v27));
    BytePtr = CFDataGetBytePtr(a2[2].__r_.__value_.__l.__size_);
    Length = CFDataGetLength(a2[2].__r_.__value_.__l.__size_);
    PB::Reader::Reader(v27, BytePtr, Length);
    if ((sub_100806D54(buf, v27) & 1) == 0)
    {
      v10 = *(a1 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I IND Malformed Msg", &__p, 2u);
      }

      goto LABEL_49;
    }

    v8 = *(&v33 + 1);
    if (*(&v33 + 1))
    {
      v9 = *(a1 + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [VinylInfoInd]", &__p, 2u);
        v8 = *(&v33 + 1);
      }

      sub_1005BD06C(a1, a2, v8);
    }

    else
    {
      v11 = v33;
      if (v33)
      {
        v12 = *(a1 + 48);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [UpdateSubscriptionInd]", &__p, 2u);
          v11 = v33;
        }

        memset(&__p, 0, sizeof(__p));
        ctu::hex(**(v11 + 8), *(*(v11 + 8) + 8), v13);
        sub_1005BD394(a1, &__p, (v33 + 16));
      }

      else
      {
        v14 = *(&v32 + 1);
        if (*(&v32 + 1))
        {
          v15 = *(a1 + 48);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [TransferProfileInd]", &__p, 2u);
            v14 = *(&v32 + 1);
          }

          sub_1005BD4F0(a1, v14);
          goto LABEL_49;
        }

        v16 = v31;
        if (v31)
        {
          v17 = *(a1 + 48);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [ProfileStatusInd]", &__p, 2u);
            v16 = v31;
          }

          sub_1005BDE28(a1, a2, v16);
          goto LABEL_49;
        }

        v18 = *(&v31 + 1);
        if (*(&v31 + 1))
        {
          v19 = *(a1 + 48);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [PurchasePlanInd]", &__p, 2u);
            v18 = *(&v31 + 1);
          }

          sub_1005BE1B4(a1, v18);
          goto LABEL_49;
        }

        v20 = v32;
        if (v32)
        {
          v21 = *(a1 + 48);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I [TransferConsentIndPb]", &__p, 2u);
            v20 = v32;
          }

          sub_1005BE284(a1, v20);
          goto LABEL_49;
        }

        v22 = *&buf[8];
        v23 = *(a1 + 48);
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          if (v24)
          {
            LOWORD(__p.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I [GenericTransferPayloadInd]", &__p, 2u);
            v22 = *&buf[8];
          }

          sub_1005BE788(a1, v22);
          goto LABEL_49;
        }

        if (v24)
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E [UnknownIndication]", &__p, 2u);
          v23 = *(a1 + 48);
        }

        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_49;
        }

        PB::Base::formattedText(&__p, buf);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *v28 = 136315138;
        v29 = p_p;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s", v28, 0xCu);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

LABEL_49:
    sub_100806B4C(buf);
    return;
  }

  if (os_log_type_enabled(*(a1 + 48), OS_LOG_TYPE_ERROR))
  {
    sub_1017751E0();
  }
}

void sub_1005BD06C(uint64_t a1, const std::string *a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  if (*(a3 + 36))
  {
    v6 = sub_100468668(*(a3 + 32));
    v7 = 256;
  }

  v17 = v7;
  v18 = v6;
  v9 = *(a3 + 8);
  for (i = *(a3 + 16); v9 != i; ++v9)
  {
    v10 = *v9;
    v44 = 0;
    memset(v43, 0, sizeof(v43));
    v41 = 0u;
    v42 = 0u;
    v40 = 0u;
    v22 = 0;
    v24 = 0u;
    v20 = 0u;
    *__p = 0u;
    *v19 = 0u;
    v23 = &v24;
    v11 = sub_10039F070(v10, &v40, v19);
    if (v40)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      v13 = *(a1 + 48);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Skip adding non-Vinyl cards", buf, 2u);
      }
    }

    else
    {
      v14 = v26;
      if (v26 >= v27)
      {
        v15 = sub_10031B4C8(&v25, &v40);
      }

      else
      {
        sub_100F11B6C(v26, &v40);
        v15 = v14 + 88;
      }

      v26 = v15;
      *buf = &v41;
      v16 = sub_100289074((a1 + 120), &v41, &unk_101802C98, buf);
      std::string::operator=(v16 + 2, a2);
    }

    sub_100111E24(&v23, v24);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[1]);
    }

    if (v44 == 1)
    {
      v19[0] = v43 + 8;
      sub_100112120(v19);
    }

    if (SBYTE7(v43[0]) < 0)
    {
      operator delete(v42);
    }
  }

  LOBYTE(v29) = 0;
  v39 = 0;
  (*(*a1 + 264))(a1, a2, &v29, v17 | v18, &v25);
  if (v39 == 1)
  {
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
  }

  *&v40 = &v25;
  sub_100112048(&v40);
}

void sub_1005BD344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  *(v21 - 192) = &a21;
  sub_100112048((v21 - 192));
  _Unwind_Resume(a1);
}

void sub_1005BD394(uint64_t a1, const std::string *a2, uint64_t **a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v3 = *a3;
  v4 = a3[1];
  if (*a3 != v4)
  {
    do
    {
      v7 = *v3;
      v8 = v15;
      if (v15 >= v16)
      {
        v9 = sub_10016BC94(&v14);
      }

      else
      {
        *(v15 + 160) = 0u;
        *(v8 + 176) = 0u;
        *(v8 + 128) = 0u;
        *(v8 + 144) = 0u;
        *(v8 + 96) = 0u;
        *(v8 + 112) = 0u;
        *(v8 + 64) = 0u;
        *(v8 + 80) = 0u;
        *(v8 + 32) = 0u;
        *(v8 + 48) = 0u;
        *v8 = 0u;
        *(v8 + 16) = 0u;
        v9 = v8 + 192;
        *(v8 + 185) = 1;
      }

      v15 = v9;
      sub_10039FA34(v7, v9 - 192);
      std::string::operator=((v9 - 184), a2);
      ++v3;
    }

    while (v3 != v4);
    if (v14 != v15)
    {
      v10 = *(a1 + 152);
      if (v10)
      {
        v11 = std::__shared_weak_count::lock(v10);
        if (v11)
        {
          v12 = v11;
          v13 = *(a1 + 144);
          if (v13)
          {
            (*(*v13 + 40))(v13, &v14);
          }

          sub_100004A34(v12);
        }
      }
    }
  }

  v17 = &v14;
  sub_10016BF8C(&v17);
}

void sub_1005BD4C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_100004A34(v12);
  a12 = &a9;
  sub_10016BF8C(&a12);
  _Unwind_Resume(a1);
}

void sub_1005BD4F0(void *a1, uint64_t a2)
{
  v3 = a1[19];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[18];
      if (v6)
      {
        memset(&v39, 0, sizeof(v39));
        v7 = *(a2 + 56);
        if (v7)
        {
          std::string::operator=(&v39, v7);
        }

        memset(&v38, 0, sizeof(v38));
        v55 = 0uLL;
        v54 = 0uLL;
        v8 = *(a2 + 32);
        if (v8)
        {
          if ((*(v8 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v8 + 8))
            {
              goto LABEL_9;
            }
          }

          else if (*(v8 + 23))
          {
LABEL_9:
            std::string::operator=(&v38, v8);
            v9 = *(a2 + 8);
            if (v9 && (v10 = *(a2 + 40)) != 0)
            {
              if (*(v9 + 8) == 16)
              {
                v55 = **v9;
                if (v10[1] == 16)
                {
                  v54 = **v10;
                  v11 = *(a2 + 76);
                  if ((v11 & 2) != 0)
                  {
                    if (*(a2 + 68) >= 0x1Au)
                    {
                      v30 = 0;
                    }

                    else
                    {
                      v30 = *(a2 + 68);
                    }

                    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(__p, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      *__p = *&v38.__r_.__value_.__l.__data_;
                      *v45 = *(&v38.__r_.__value_.__l + 2);
                    }

                    v45[8] = 1;
                    LOBYTE(buf) = 0;
                    v53 = 0;
                    v33[0] = 2;
                    v33[1] = v30;
                    (*(*v6 + 24))(v6, &v39, &v54, &v55, &v43, &buf, v33);
                    v33[0] = 0;
                  }

                  else
                  {
                    if (*(a2 + 76) & 4) == 0 || (*(a2 + 72))
                    {
                      v49 = 0u;
                      v50 = 0u;
                      memset(v48, 0, sizeof(v48));
                      memset(v47, 0, sizeof(v47));
                      memset(v46, 0, sizeof(v46));
                      memset(v45, 0, sizeof(v45));
                      v43 = 0u;
                      *__p = 0u;
                      if (v11)
                      {
                        v12 = *(a2 + 64);
                        if (v12)
                        {
                          v13 = 257;
                        }

                        else
                        {
                          v13 = 258;
                        }

                        if (v12 == 2)
                        {
                          v14 = 259;
                        }

                        else
                        {
                          v14 = v13;
                        }

                        LOWORD(v48[1].__r_.__value_.__r.__words[1]) = v14;
                      }

                      v15 = *(a2 + 16);
                      if (!v15)
                      {
                        goto LABEL_45;
                      }

                      if ((*(v15 + 92) & 0x10) != 0)
                      {
                        LOWORD(__p[1]) = *(v15 + 84) | 0x100;
                      }

                      v16 = *(v15 + 64);
                      if (v16)
                      {
                        sub_1001696A4(v45, v16);
                      }

                      v17 = *(v15 + 40);
                      if (v17)
                      {
                        sub_1001696A4(v46, v17);
                      }

                      v18 = *(v15 + 32);
                      if (v18)
                      {
                        sub_1001696A4(v47, v18);
                      }

                      v19 = *(v15 + 56);
                      if (v19)
                      {
                        sub_1001696A4(v48, v19);
                      }

                      if ((*(v15 + 92) & 8) != 0)
                      {
                        v48[2].__r_.__value_.__s.__data_[18] = *(v15 + 80);
                      }

                      v20 = *(v15 + 48);
                      if (v20)
                      {
                        std::string::operator=(&v48[1].__r_.__value_.__r.__words[2], v20);
                      }

                      v21 = *(v15 + 16);
                      if (v21)
                      {
                        sub_1001696A4(&v48[3], v21);
                      }

                      v22 = *(v15 + 92);
                      if ((v22 & 0x40) != 0)
                      {
                        WORD4(v50) = *(v15 + 89) | 0x100;
                        v22 = *(v15 + 92);
                        if ((v22 & 1) == 0)
                        {
LABEL_43:
                          if ((v22 & 0x40) == 0)
                          {
LABEL_45:
                            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                            {
                              sub_100005F2C(&v41, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
                            }

                            else
                            {
                              v41 = v38;
                            }

                            v42 = 1;
                            sub_10027EF58(&buf, &v43);
                            v53 = 1;
                            v31 = 257;
                            (*(*v6 + 24))(v6, &v39, &v54, &v55, v40, &buf, &v31);
                            LOBYTE(v31) = 0;
                            if (v53 == 1)
                            {
                              sub_100111F5C(&buf);
                            }

                            if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v41.__r_.__value_.__l.__data_);
                            }

                            sub_100111F5C(&v43);
LABEL_87:
                            if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v38.__r_.__value_.__l.__data_);
                            }

                            if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v39.__r_.__value_.__l.__data_);
                            }

LABEL_91:
                            sub_100004A34(v5);
                            return;
                          }

LABEL_44:
                          WORD4(v50) = *(v15 + 89) | 0x100;
                          goto LABEL_45;
                        }
                      }

                      else if ((*(v15 + 92) & 1) == 0)
                      {
                        goto LABEL_43;
                      }

                      *(&v49 + 1) = *(v15 + 8);
                      LOBYTE(v50) = 1;
                      if ((*(v15 + 92) & 0x40) == 0)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_44;
                    }

                    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(__p, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      *__p = *&v38.__r_.__value_.__l.__data_;
                      *v45 = *(&v38.__r_.__value_.__l + 2);
                    }

                    v45[8] = 1;
                    LOBYTE(buf) = 0;
                    v53 = 0;
                    v32 = 2;
                    (*(*v6 + 24))(v6, &v39, &v54, &v55, &v43, &buf, &v32);
                    LOBYTE(v32) = 0;
                  }
                }

                else
                {
                  v28 = a1[6];
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                  {
                    v29 = asString();
                    buf = 136315138;
                    v52 = v29;
                    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#E %s", &buf, 0xCu);
                  }

                  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(__p, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    *__p = *&v38.__r_.__value_.__l.__data_;
                    *v45 = *(&v38.__r_.__value_.__l + 2);
                  }

                  v45[8] = 1;
                  LOBYTE(buf) = 0;
                  v53 = 0;
                  v34 = 3330;
                  (*(*v6 + 24))(v6, &v39, &v54, &v55, &v43, &buf, &v34);
                  LOBYTE(v34) = 0;
                }
              }

              else
              {
                v26 = a1[6];
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = asString();
                  buf = 136315138;
                  v52 = v27;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#E %s", &buf, 0xCu);
                }

                if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(__p, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
                }

                else
                {
                  *__p = *&v38.__r_.__value_.__l.__data_;
                  *v45 = *(&v38.__r_.__value_.__l + 2);
                }

                v45[8] = 1;
                LOBYTE(buf) = 0;
                v53 = 0;
                v35 = 3330;
                (*(*v6 + 24))(v6, &v39, &v54, &v55, &v43, &buf, &v35);
                LOBYTE(v35) = 0;
              }
            }

            else
            {
              v24 = a1[6];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E Bad transfer profile response. invalid eid", &buf, 2u);
              }

              if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(__p, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
              }

              else
              {
                *__p = *&v38.__r_.__value_.__l.__data_;
                *v45 = *(&v38.__r_.__value_.__l + 2);
              }

              v45[8] = 1;
              LOBYTE(buf) = 0;
              v53 = 0;
              v36 = 3330;
              (*(*v6 + 24))(v6, &v39, &v54, &v55, &v43, &buf, &v36);
              LOBYTE(v36) = 0;
            }

LABEL_83:
            if (v53 == 1)
            {
              sub_100111F5C(&buf);
            }

            if ((v45[7] & 0x80000000) != 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_87;
          }
        }

        v25 = a1[6];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT) && (LOWORD(buf) = 0, _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#E Bad transfer profile response. invalid iccid", &buf, 2u), SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0))
        {
          sub_100005F2C(__p, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
        }

        else
        {
          *__p = *&v38.__r_.__value_.__l.__data_;
          *v45 = *(&v38.__r_.__value_.__l + 2);
        }

        v45[8] = 1;
        LOBYTE(buf) = 0;
        v53 = 0;
        v37 = 3330;
        (*(*v6 + 24))(v6, &v39, &v54, &v55, &v43, &buf, &v37);
        LOBYTE(v37) = 0;
        goto LABEL_83;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v23 = a1[6];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E invalid delegate", &buf, 2u);
  }

  if (v5)
  {
    goto LABEL_91;
  }
}