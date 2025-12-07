void sub_1005162D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100516450()
{
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  JUMPOUT(0x100516428);
}

void cellplan::CellularPlanControllerPhone::getAccountManagementWebsheetInfo_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v5 = 328;
    if (*(a1 + 1224))
    {
      v5 = 1368;
    }

    if (*(a1 + v5 + 40) != *(a1 + v5 + 32))
    {
      sub_10052C84C();
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773740();
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773774();
  }

  v6[336] = 0;
  v6[344] = 0;
  v6[688] = 0;
  v6[696] = 0;
  v6[720] = 0;
  v6[0] = 0;
  sub_1005167B8(a3, 0);
  sub_1005230E0(v6);
}

void sub_100516750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  sub_10016354C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005167B8(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_10051680C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1003B592C(a1 + 24);
  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_100516858(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SignUpForSIMServiceRspTimeout fired!", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  bzero(v5, 0x310uLL);
  sub_1005167B8(a1 + 48, 0);
  sub_1005230E0(&v9);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_10051699C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 56);
  if (v4)
  {
    v7 = *(a1 + 40);
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (*(a1 + 48))
      {
        v10 = *(*(*(a1 + 32) + 8) + 40);
        if (v10)
        {
          (*(*v10 + 16))(v10);
          v11 = *(*(a1 + 32) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = 0;
          if (v12)
          {
            (*(*v12 + 8))(v12);
          }

          if (a3)
          {
            if ((*(a2 + 392) & 1) == 0)
            {
              v37 = 0;
              v39 = 0u;
              v35 = 0u;
              __p = 0u;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v29 = 0u;
              v30 = 0u;
              v27 = 0u;
              v28 = 0u;
              v26 = 0u;
              *v24 = 0u;
              v25 = 0u;
              memset(v23, 0, sizeof(v23));
              *v21 = 0u;
              *v22 = 0u;
              *buf = 0u;
              *v20 = 0u;
              v38 = &v39;
              v40 = 1;
              sub_10016DFC8(a2 + 56, buf);
              if (v40 == 1)
              {
                sub_1000DD0AC(&v38, v39);
                if (BYTE8(v35) == 1)
                {
                  if (SHIBYTE(v37) < 0)
                  {
                    operator delete(__p);
                  }

                  BYTE8(v35) = 0;
                }

                if (SBYTE7(v35) < 0)
                {
                  operator delete(v34);
                }

                if (BYTE8(v30) == 1)
                {
                  if (SBYTE7(v32) < 0)
                  {
                    operator delete(v31);
                  }

                  BYTE8(v30) = 0;
                }

                if (v28 == 1)
                {
                  if (SHIBYTE(v29) < 0)
                  {
                    operator delete(*(&v28 + 1));
                  }

                  LOBYTE(v28) = 0;
                }

                if (v26 == 1)
                {
                  if (SHIBYTE(v27) < 0)
                  {
                    operator delete(*(&v26 + 1));
                  }

                  LOBYTE(v26) = 0;
                }

                if (LOBYTE(v24[0]) == 1)
                {
                  if (SHIBYTE(v25) < 0)
                  {
                    operator delete(v24[1]);
                  }

                  LOBYTE(v24[0]) = 0;
                }

                v18 = v23 + 1;
                sub_1000087B4(&v18);
                if (SBYTE7(v23[0]) < 0)
                {
                  operator delete(v22[0]);
                }

                if (SHIBYTE(v21[1]) < 0)
                {
                  operator delete(v20[1]);
                }

                if (SHIBYTE(v20[0]) < 0)
                {
                  operator delete(*buf);
                }
              }
            }

            rest::PairedDeviceInfoList::getDeviceNameForCsn();
            v13 = (a2 + 312);
            if (*(a2 + 335) < 0)
            {
              operator delete(*v13);
            }

            *v13 = *buf;
            *(a2 + 328) = v20[0];
            v14 = *(a2 + 335);
            v15 = v14;
            if ((v14 & 0x80u) != 0)
            {
              v14 = *(a2 + 320);
            }

            if (!v14)
            {
              if (v15 < 0)
              {
                *(a2 + 320) = 11;
                v13 = *(a2 + 312);
              }

              else
              {
                *(a2 + 335) = 11;
              }

              strcpy(v13, "Apple Watch");
            }

            if (*(a1 + 328) == 1)
            {
              v17 = *(a1 + 359);
              if (v17 < 0)
              {
                v17 = *(a1 + 344);
              }

              if (v17)
              {
                sub_10016C728((a2 + 336), (a1 + 336));
              }
            }

            sub_1005167B8(a1 + 64, 1);
          }

          else
          {
            bzero(buf, 0x310uLL);
            sub_1005167B8(a1 + 64, 0);
            sub_1005230E0(&v22[1]);
            if (SHIBYTE(v22[0]) < 0)
            {
              operator delete(v21[0]);
            }

            if (SHIBYTE(v20[0]) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        else
        {
          v16 = *(v7 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I signed timed out, completion already invoked", buf, 2u);
          }
        }
      }

      sub_100004A34(v9);
    }
  }
}

void sub_100516D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100516D90(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  sub_10052C7B4(a1 + 64, a2 + 64);
  sub_10016EA28((a1 + 96), (a2 + 96));
  return sub_10016E9C0(a1 + 328, a2 + 328);
}

void sub_100516DF0(_Unwind_Exception *a1)
{
  sub_10016E570(v1 + 96);
  sub_1003B592C(v1 + 64);
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_100516E28(uint64_t a1)
{
  if (*(a1 + 328) == 1)
  {
    if (*(a1 + 359) < 0)
    {
      operator delete(*(a1 + 336));
    }

    *(a1 + 328) = 0;
  }

  sub_10016E570(a1 + 96);
  sub_1003B592C(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(uint64_t a1, const void **a2, uint64_t a3, int a4)
{
  v49 = 0u;
  v51 = 0xA00000000000000;
  v50 = 0u;
  *&v52[8] = 0u;
  v56 = 0u;
  v55 = 0u;
  memset(__p, 0, sizeof(__p));
  v54 = 23;
  HIBYTE(v49) = 8;
  v48 = 0x72616C756C6C6543;
  WORD4(v50) = 26723;
  *&v50 = *"eSIM Watch";
  v52[23] = 16;
  *v52 = *"Transfer failure";
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  memset(&v44, 0, sizeof(v44));
  v8 = &v44;
  sub_1000677C4(&v44, v7 + 21);
  if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = v44.__r_.__value_.__r.__words[0];
  }

  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    memmove(v8, v9, v7);
  }

  strcpy(v8 + v7, " Watch Transfer Fail ");
  v10 = std::string::append(&v44, ", PlanType:", 0xBuLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = asString();
  v13 = strlen(v12);
  v14 = std::string::append(&v45, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v46, ", IsPairing:", 0xCuLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = CSIBOOLAsString(a4);
  v19 = strlen(v18);
  v20 = std::string::append(&v47, v18, v19);
  v21 = v20->__r_.__value_.__r.__words[0];
  v59[0] = v20->__r_.__value_.__l.__size_;
  *(v59 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
  v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v21;
  __p[1] = v59[0];
  *(&__p[1] + 7) = *(v59 + 7);
  HIBYTE(__p[2]) = v22;
  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  v54 |= 0x13uLL;
  v23 = *(a1 + 40);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v47.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Reporting eSIM transfer failure on Watch", &v47, 2u);
  }

  (***(a1 + 128))(&v47);
  ServiceMap = Registry::getServiceMap(v47.__r_.__value_.__l.__data_);
  v25 = ServiceMap;
  if ((v26 & 0x8000000000000000) != 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(ServiceMap);
  v46.__r_.__value_.__r.__words[0] = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, &v46);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      v33 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v25);
  v31 = 0;
  v33 = 1;
LABEL_31:
  sub_100D9EC48(v34, &v48);
  v58 = 0;
  (*(*v32 + 16))(v32, v34, v57);
  sub_10010DF14(v57);
  if (v43 < 0)
  {
    operator delete(v42);
  }

  if (v41 < 0)
  {
    operator delete(v40);
  }

  if (v39 < 0)
  {
    operator delete(v38);
  }

  if (v37 < 0)
  {
    operator delete(v36);
  }

  if ((v35 & 0x80000000) == 0)
  {
    if (v33)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  operator delete(v34[0]);
  if ((v33 & 1) == 0)
  {
LABEL_41:
    sub_100004A34(v31);
  }

LABEL_42:
  if (v47.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v47.__r_.__value_.__l.__size_);
  }

  if (SBYTE7(v56) < 0)
  {
    operator delete(v55);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v52[23] & 0x80000000) != 0)
  {
    operator delete(*v52);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
  }
}

void sub_100517360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, std::__shared_weak_count *a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  sub_10010DF14(v54 - 120);
  sub_100D9E764(&a9);
  if ((v53 & 1) == 0)
  {
    sub_100004A34(v52);
  }

  if (a47)
  {
    sub_100004A34(a47);
  }

  sub_100D9E764(&a52);
  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::handleTransferRemotePlan_sync(uint64_t a1, char a2, __int128 *a3, uint64_t a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I handleTransferRemotePlanTapped", buf, 2u);
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *buf = 0u;
  rest::PairedDeviceInfoList::getActiveDevice(buf, (a1 + 896));
  v9 = BYTE1(v48);
  v10 = BYTE1(v48) == 1;
  if (buf[0] == 2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  if ((cellplan::CellularPlanControllerPhone::isPasscodeEnabled_sync(a1) & 1) == 0)
  {
    v35 = 0;
    v36 = 0;
    sub_100517B10(a4, &v36, &v35, 261);
    sub_10001021C(&v35);
    sub_100005978(&v36);
    return sub_100DB14E0(buf);
  }

  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a3 + 1))
    {
      goto LABEL_9;
    }

LABEL_14:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_FAULT))
    {
      sub_101773820();
    }

    v33 = 0;
    v34 = 0;
    sub_100517B10(a4, &v34, &v33, 262);
    sub_10001021C(&v33);
    sub_100005978(&v34);
    sub_10000501C(&v61, "");
    (*(**(a1 + 208) + 176))(*(a1 + 208), &v61, 1, v11, v9 == 1);
    cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(a1, &v61, v11, v9 == 1);
    goto LABEL_20;
  }

  if (!*(a3 + 23))
  {
    goto LABEL_14;
  }

LABEL_9:
  LocalSimSlotForRemoteDeviceProfile_sync = cellplan::CellularPlanControllerPhone::getLocalSimSlotForRemoteDeviceProfile_sync(a1, a3);
  if (LocalSimSlotForRemoteDeviceProfile_sync)
  {
    memset(__p, 0, sizeof(__p));
    v29 = 0;
    (*(**(a1 + 128) + 120))(&v29);
    if (v29)
    {
      v61 = 0;
      v62 = 0uLL;
      ctu::cf::assign();
      v13 = v61;
      __p[0] = v61;
      __p[1] = v62;
      *(&__p[1] + 7) = *(&v62 + 7);
      HIBYTE(__p[2]) = HIBYTE(v62);
      v14 = v62 < 0;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    if (*(a1 + 1224))
    {
      v16 = 14;
    }

    else
    {
      v16 = 12;
    }

    v17 = *(a1 + 1096);
    if (!v17)
    {
      goto LABEL_43;
    }

    v18 = a1 + 1096;
    do
    {
      if (*(v17 + 32) >= v16)
      {
        v18 = v17;
      }

      v17 = *(v17 + 8 * (*(v17 + 32) < v16));
    }

    while (v17);
    if (v18 == a1 + 1096)
    {
      goto LABEL_43;
    }

    if (v16 < *(v18 + 32))
    {
      goto LABEL_43;
    }

    v21 = *(v18 + 48);
    v19 = v18 + 48;
    v20 = v21;
    if (!v21)
    {
      goto LABEL_43;
    }

    v22 = v19;
    do
    {
      if (*(v20 + 28) >= LocalSimSlotForRemoteDeviceProfile_sync)
      {
        v22 = v20;
      }

      v20 = *(v20 + 8 * (*(v20 + 28) < LocalSimSlotForRemoteDeviceProfile_sync));
    }

    while (v20);
    if (v22 != v19 && LocalSimSlotForRemoteDeviceProfile_sync >= *(v22 + 28) && *(v22 + 32) == 2)
    {
      v23 = v14;
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 1174405120;
      v51[2] = sub_100517B64;
      v51[3] = &unk_101E54048;
      v51[4] = a1;
      v57 = LocalSimSlotForRemoteDeviceProfile_sync;
      sub_100528224(v52, a4);
      if (v23)
      {
        sub_100005F2C(&v53, v13, __p[1]);
      }

      else
      {
        v53 = *__p;
        v54 = __p[2];
      }

      v58 = v11;
      v59 = v10;
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(&v55, *a3, *(a3 + 1));
      }

      else
      {
        v55 = *a3;
        v56 = *(a3 + 2);
      }

      v60 = a2;
      cellplan::CellularPlanControllerPhone::canRunProvisioningOperation(a1, LocalSimSlotForRemoteDeviceProfile_sync, v51);
      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55);
      }

      if (SHIBYTE(v54) < 0)
      {
        operator delete(v53);
      }

      sub_100527D00(v52);
    }

    else
    {
LABEL_43:
      v24 = (*(**(a1 + 48) + 16))(*(a1 + 48), LocalSimSlotForRemoteDeviceProfile_sync);
      if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
      {
        v25 = sub_10006EE44(v16);
        sub_1017737A8(v25, &v61);
      }

      v27 = 0;
      v28 = 0;
      sub_100517B10(a4, &v28, &v27, 278);
      sub_10001021C(&v27);
      sub_100005978(&v28);
      (*(**(a1 + 208) + 176))(*(a1 + 208), __p, 1, v11, v9 == 1);
      cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(a1, __p, v11, v9 == 1);
    }

    sub_100005978(&v29);
    if (SHIBYTE(__p[2]) < 0)
    {
      v15 = __p[0];
      goto LABEL_48;
    }

    return sub_100DB14E0(buf);
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_FAULT))
  {
    sub_1017737E0();
  }

  v31 = 0;
  v32 = 0;
  sub_100517B10(a4, &v32, &v31, 312);
  sub_10001021C(&v31);
  sub_100005978(&v32);
  sub_10000501C(&v61, "");
  (*(**(a1 + 208) + 176))(*(a1 + 208), &v61, 1, v11, v9 == 1);
  cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(a1, &v61, v11, v9 == 1);
LABEL_20:
  if (SHIBYTE(v62) < 0)
  {
    v15 = v61;
LABEL_48:
    operator delete(v15);
  }

  return sub_100DB14E0(buf);
}

void sub_1005179F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39, int a40, __int16 a41, char a42, char a43)
{
  if (*(v44 - 161) < 0)
  {
    operator delete(*(v44 - 184));
  }

  sub_100527D00(v43 + 40);
  sub_100005978(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100DB14E0(&a41);
  _Unwind_Resume(a1);
}

uint64_t sub_100517B10(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, a2, a3, &v6);
}

void sub_100517B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (a4)
  {
    v6 = a4;
    v7 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 120), a3);
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_101773860(v6);
    }

    v22 = 0;
    v23 = 0;
    sub_100517B10(a1 + 40, &v23, &v22, v6 | 0x100);
    sub_10001021C(&v22);
    sub_100005978(&v23);
    v8 = *(a1 + 124);
    v9 = *(a1 + 125);
    (*(**(v5 + 208) + 176))(*(v5 + 208), a1 + 72, 1, v8, *(a1 + 125));
    cellplan::CellularPlanControllerPhone::reportEsimTransferFailure(v5, (a1 + 72), v8, v9);
  }

  else
  {
    v12 = *(v5 + 160);
    v13 = *(a1 + 120);
    v21 = 0;
    v20 = 0uLL;
    v37[0] = 0;
    v38 = 0;
    sub_100520D38(v39, v13, &v20, v37, 1);
    (*(*v12 + 96))(v12, 1, v39);
    if (v42[216] == 1)
    {
      sub_100E3A5D4(v42);
    }

    if (v41 < 0)
    {
      operator delete(__p);
    }

    if (v38 == 1)
    {
      sub_100E3A5D4(v37);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20);
    }

    (*(**(v5 + 96) + 16))(*(v5 + 96));
    v14 = *(v5 + 208);
    if (*(a1 + 95) < 0)
    {
      sub_100005F2C(__dst, *(a1 + 72), *(a1 + 80));
    }

    else
    {
      *__dst = *(a1 + 72);
      v19 = *(a1 + 88);
    }

    (*(*v14 + 88))(v14, __dst, 2, *(a1 + 124), *(a1 + 125), 0);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__dst[0]);
    }

    v15 = *(a1 + 120);
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1005182D8;
    aBlock[3] = &unk_101E54018;
    aBlock[4] = v5;
    v30 = v15;
    v31 = a2;
    v32 = a3;
    if (*(a1 + 95) < 0)
    {
      sub_100005F2C(&v25, *(a1 + 72), *(a1 + 80));
    }

    else
    {
      v25 = *(a1 + 72);
      v26 = *(a1 + 88);
    }

    v33 = *(a1 + 124);
    sub_100528224(v27, a1 + 40);
    if (*(a1 + 119) < 0)
    {
      sub_100005F2C(&v28, *(a1 + 96), *(a1 + 104));
    }

    else
    {
      v28 = *(a1 + 96);
      v29 = *(a1 + 112);
    }

    v34 = *(a1 + 126);
    v35 = 0;
    v36 = *(a1 + 125);
    v16 = _Block_copy(aBlock);
    v17 = v16;
    cellplan::CellularPlanControllerPhone::getRemoteProvisioningAuthToken_sync(v5, v15, &v17);
    if (v16)
    {
      _Block_release(v16);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }

    sub_100527D00(v27);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }
  }
}

void sub_100517F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_100527D00(v29 + 64);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::getRemoteProvisioningAuthToken_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 128) + 680))(buf);
  v6 = (*(**buf + 112))(*buf, a2);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v6)
  {
    v16 = 0;
    sub_100004AA0(buf, (a1 + 8));
    v8 = *buf;
    v7 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v7);
    }

    v9 = *(a1 + 240);
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_100519D54;
    aBlock[3] = &unk_101E54078;
    aBlock[4] = v8;
    v13 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *a3;
    if (*a3)
    {
      v10 = _Block_copy(v10);
    }

    v14 = v10;
    v15 = _Block_copy(aBlock);
    (*(*v9 + 16))(v9, a2, 9, &v16, &v15);
    if (v15)
    {
      _Block_release(v15);
    }

    if (v14)
    {
      _Block_release(v14);
    }

    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  else
  {
    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I authenticateTrustFlag not supported by carrier", buf, 2u);
    }

    v18 = 0;
    v19 = 0;
    *buf = 0;
    (*(*a3 + 16))();
    if (SHIBYTE(v19) < 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_100518264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, void *aBlock, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16)
  {
    _Block_release(a16);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::triggerTransferSIMService_sync(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  sub_100004AA0(&v16, (a1 + 8));
  v9 = v16;
  v8 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v8);
  }

  v10 = *(a1 + 240);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1174405120;
  v12[2] = sub_100519E90;
  v12[3] = &unk_101E540A8;
  v12[4] = v9;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a4;
  if (*a4)
  {
    v11 = _Block_copy(v11);
  }

  v14 = v11;
  aBlock = _Block_copy(v12);
  (*(*v10 + 24))(v10, a2, 9, a3, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_1005187D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a15)
  {
    _Block_release(a15);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10051881C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (a2 != 6000)
  {
    v6 = a2;
    if (a2 != 6013)
    {
      v16 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
      if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
      {
        sub_1017739FC(v6);
      }

      cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), *(a1 + 132), 0);
      v53 = 0;
      v54 = 0;
      sub_100517B10(a1 + 64, &v54, &v53, 312);
      sub_10001021C(&v53);
      v17 = &v54;
      goto LABEL_35;
    }

    if (*(a3 + 48) == 1)
    {
      v96 = 0;
      *v95 = 0u;
      v94 = 0u;
      *v93 = 0u;
      v92 = 0u;
      *v91 = 0u;
      memset(v90, 0, sizeof(v90));
      v89 = 0u;
      *v88 = 0u;
      *v87 = 0u;
      v86 = 0u;
      *v85 = 0u;
      v84 = 0u;
      *v83 = 0u;
      memset(v82, 0, sizeof(v82));
      v81 = 0u;
      *v80 = 0u;
      *v79 = 0u;
      v78 = 0u;
      *v77 = 0u;
      v7 = *(a1 + 112);
      v8 = *(a1 + 96);
      sub_10006F264(__p, (a3 + 56));
      cellplan::CellularPlanControllerPhone::setPlanTransferHttpRequest_sync(v5, v7, v8, __p, v77);
      v9 = (a3 + 24);
      if (v52 == 1 && v51 < 0)
      {
        operator delete(__p[0]);
      }

      if (*(a1 + 133) == 1)
      {
        if ((cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(v5, 0, a1 + 116) & 1) == 0)
        {
          v28 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
          if (os_log_type_enabled(*v28, OS_LOG_TYPE_ERROR))
          {
            v29 = asString();
            sub_1017739C4(v29, buf);
          }

          cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), *(a1 + 132), 0);
          v48 = 0;
          v49 = 0;
          sub_100517B10(a1 + 64, &v49, &v48, 261);
          sub_10001021C(&v48);
          sub_100005978(&v49);
LABEL_79:
          if (BYTE8(v94) == 1)
          {
            if (SHIBYTE(v96) < 0)
            {
              operator delete(v95[0]);
            }

            BYTE8(v94) = 0;
          }

          if (BYTE8(v92) == 1)
          {
            if (SBYTE7(v94) < 0)
            {
              operator delete(v93[0]);
            }

            BYTE8(v92) = 0;
          }

          if (SBYTE7(v92) < 0)
          {
            operator delete(v91[0]);
          }

          v56[0] = v90;
          sub_10016F470(v56);
          if (SHIBYTE(v89) < 0)
          {
            operator delete(v88[1]);
          }

          if (BYTE8(v86) == 1)
          {
            if (SHIBYTE(v88[0]) < 0)
            {
              operator delete(v87[0]);
            }

            BYTE8(v86) = 0;
          }

          if (BYTE8(v84) == 1)
          {
            if (SBYTE7(v86) < 0)
            {
              operator delete(v85[0]);
            }

            BYTE8(v84) = 0;
          }

          if (SBYTE7(v84) < 0)
          {
            operator delete(v83[0]);
          }

          v56[0] = v82;
          sub_10016F470(v56);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[1]);
          }

          if (SHIBYTE(v80[0]) < 0)
          {
            operator delete(v79[0]);
          }

          if (LOBYTE(v77[0]) == 1 && SHIBYTE(v78) < 0)
          {
            v31 = v77[1];
            goto LABEL_108;
          }

          return;
        }

        *(v5 + 1040) = *(a1 + 112);
        bzero(buf, 0x310uLL);
        std::string::operator=(&v74, v9);
        v73 = 0;
        sub_1005196D0(&v76, v77);
        v10 = *(v5 + 256);
        v11 = *(v5 + 1040);
        v65[0] = 0;
        sub_10016F74C(&v66, buf);
        v65[0] = 1;
        (*(*v10 + 56))(v10, a1 + 116, v11, v65);
        if (v65[0] == 1)
        {
          sub_1005230E0(&v70);
          if (v69 < 0)
          {
            operator delete(v68);
          }

          if (v67 < 0)
          {
            operator delete(v66);
          }

          v65[0] = 0;
        }

        (*(**(v5 + 208) + 176))(*(v5 + 208), a1 + 40, 2, *(a1 + 132), *(a1 + 135));
        v46 = 0;
        v47 = 0;
        sub_100517B10(a1 + 64, &v47, &v46, 0);
        sub_10001021C(&v46);
        sub_100005978(&v47);
        sub_1005230E0(&v75);
        if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v74.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v72) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        cf = 0;
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v21 = cf;
          cf = Mutable;
          *buf = v21;
          sub_1000296E0(buf);
        }

        v44 = cf;
        if (cf)
        {
          CFRetain(cf);
        }

        v22 = sub_100986680(&v44, v77);
        sub_1000296E0(&v44);
        v23 = *(a1 + 132);
        if (!v22)
        {
          cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), v23, 0);
          v42 = 0;
          v43 = 0;
          sub_100517B10(a1 + 64, &v43, &v42, 261);
          sub_10001021C(&v42);
          sub_100005978(&v43);
          sub_1000296E0(&cf);
          goto LABEL_79;
        }

        cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), v23, 1);
        v24 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a3 + 47) >= 0)
          {
            v25 = a3 + 24;
          }

          else
          {
            v25 = *(a3 + 24);
          }

          *buf = 136315138;
          *&buf[4] = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I initiate transfer websheet flow: %s", buf, 0xCu);
        }

        if (*(a3 + 47) < 0)
        {
          sub_100005F2C(__dst, *(a3 + 24), *(a3 + 32));
        }

        else
        {
          *__dst = *&v9->__r_.__value_.__l.__data_;
          v40 = *(a3 + 40);
        }

        if (SHIBYTE(v40) < 0)
        {
          sub_100005F2C(v56, __dst[0], __dst[1]);
        }

        else
        {
          *v56 = *__dst;
          v57 = v40;
        }

        v55 = 0;
        if (SHIBYTE(v57) < 0)
        {
          sub_100005F2C(buf, v56[0], v56[1]);
        }

        else
        {
          *buf = *v56;
          v72 = v57;
        }

        v58 = 0;
        if (ctu::cf::convert_copy())
        {
          v32 = v55;
          v55 = v58;
          v59 = v32;
          sub_100005978(&v59);
        }

        if (SHIBYTE(v72) < 0)
        {
          operator delete(*buf);
        }

        v41 = v55;
        v55 = 0;
        sub_100005978(&v55);
        if (SHIBYTE(v57) < 0)
        {
          operator delete(v56[0]);
        }

        sub_100010180(&v38, &cf);
        sub_100517B10(a1 + 64, &v41, &v38, 0);
        sub_10001021C(&v38);
        sub_100005978(&v41);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__dst[0]);
        }

        sub_1000296E0(&cf);
      }

      (*(**(v5 + 208) + 176))(*(v5 + 208), a1 + 40, 2, *(a1 + 132), *(a1 + 135));
      goto LABEL_79;
    }
  }

  v12 = *a3;
  if (*a3 == *(a3 + 8))
  {
    v18 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
    if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
    {
      sub_101773990();
    }

    cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), *(a1 + 132), 0);
    v36 = 0;
    v37 = 0;
    sub_100517B10(a1 + 64, &v37, &v36, 312);
    sub_10001021C(&v36);
    v17 = &v37;
    goto LABEL_35;
  }

  if (v12[3].__r_.__value_.__s.__data_[17] != 1 || (v12[3].__r_.__value_.__s.__data_[16] & 1) != 0)
  {
    v13 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I initiate transfer profile fetch", buf, 2u);
    }

    RemoteProvisioningOperation_sync = cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(v5, 0, a1 + 116);
    v15 = *(a1 + 112);
    if (RemoteProvisioningOperation_sync)
    {
      *(v5 + 1040) = v15;
      (*(**(v5 + 208) + 176))(*(v5 + 208), a1 + 40, 3, *(a1 + 132), *(a1 + 135));
      std::string::operator=((v5 + 976), v12);
      v77[1] = 0;
      v77[0] = 0;
      sub_10032E870();
    }

    v19 = (*(**(v5 + 48) + 16))(*(v5 + 48), v15);
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      sub_101773910(a1);
    }

    cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(v5, (a1 + 116), (a1 + 40), *(a1 + 132), 0);
    v33 = 0;
    v34 = 0;
    sub_100517B10(a1 + 64, &v34, &v33, 261);
    sub_10001021C(&v33);
    v17 = &v34;
LABEL_35:
    sub_100005978(v17);
    return;
  }

  v26 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(a1 + 112));
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I transfer completed with profile pending release", buf, 2u);
  }

  v27 = *(v5 + 1040);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_100519918;
  aBlock[3] = &unk_101E53FB8;
  aBlock[4] = v5;
  v63[2] = *(a1 + 116);
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(&v61, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v61 = *(a1 + 40);
    v62 = *(a1 + 56);
  }

  v64 = *(a1 + 132);
  sub_100528224(v63, a1 + 64);
  v30 = _Block_copy(aBlock);
  v35 = v30;
  cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(v5, v27, 1u, 1, &v35);
  if (v30)
  {
    _Block_release(v30);
  }

  sub_100527D00(v63);
  if (SHIBYTE(v62) < 0)
  {
    v31 = v61;
LABEL_108:
    operator delete(v31);
  }
}

void sub_1005194A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, const void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, const void *a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
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

  sub_1000296E0(&a30);
  sub_10016F298(&STACK[0x7C0]);
  _Unwind_Resume(a1);
}

uint64_t sub_1005196D0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 344) == 1)
  {
    sub_10016E3EC(a1, a2);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    *(a2 + 55) = 0;
    *(a2 + 32) = 0;
    sub_1005232B8(a1 + 56, (a2 + 56));
    sub_1005232B8(a1 + 200, (a2 + 200));
  }

  else
  {
    *a1 = 0;
    if (*a2 == 1)
    {
      v5 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v5;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *a1 = 1;
    }

    v6 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v6;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    v7 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v7;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a2 + 80) = 0;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a1 + 104) = *(a2 + 104);
    v8 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v8;
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 112) = 0;
    *(a1 + 136) = 0;
    if (*(a2 + 136) == 1)
    {
      v9 = *(a2 + 144);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 144) = v9;
      *(a2 + 152) = 0;
      *(a2 + 160) = 0;
      *(a2 + 144) = 0;
      *(a1 + 136) = 1;
    }

    *(a1 + 168) = 0;
    if (*(a2 + 168) == 1)
    {
      v10 = *(a2 + 176);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 176) = v10;
      *(a2 + 184) = 0;
      *(a2 + 192) = 0;
      *(a2 + 176) = 0;
      *(a1 + 168) = 1;
    }

    v11 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v11;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    *(a2 + 200) = 0;
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 240) = 0;
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 240) = 0;
    *(a1 + 248) = *(a2 + 248);
    v12 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 256) = v12;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
    *(a2 + 256) = 0;
    *(a1 + 280) = 0;
    if (*(a2 + 280) == 1)
    {
      v13 = *(a2 + 288);
      *(a1 + 304) = *(a2 + 304);
      *(a1 + 288) = v13;
      *(a2 + 296) = 0;
      *(a2 + 304) = 0;
      *(a2 + 288) = 0;
      *(a1 + 280) = 1;
    }

    *(a1 + 312) = 0;
    if (*(a2 + 312) == 1)
    {
      v14 = *(a2 + 320);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 320) = v14;
      *(a2 + 328) = 0;
      *(a2 + 336) = 0;
      *(a2 + 320) = 0;
      *(a1 + 312) = 1;
    }

    *(a1 + 344) = 1;
  }

  return a1;
}

const void **sub_100519918(uint64_t a1)
{
  cellplan::CellularPlanControllerPhone::handleTransferRemotePlanComplete_sync(*(a1 + 32), (a1 + 96), (a1 + 40), *(a1 + 112), 1);
  v3 = 0;
  v4 = 0;
  sub_100517B10(a1 + 64, &v4, &v3, 0);
  sub_10001021C(&v3);
  return sub_100005978(&v4);
}

void sub_100519980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10051999C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  return sub_100528224(a1 + 64, a2 + 64);
}

void sub_1005199F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100519A10(uint64_t a1)
{
  sub_100527D00(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

uint64_t sub_100519A60(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  result = sub_100528224(a1 + 64, a2 + 64);
  v6 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100519AD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100519AEC(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100527D00(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void *sub_100519B48(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  result = sub_100528224(a1 + 64, a2 + 64);
  if (*(a2 + 119) < 0)
  {
    return sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  return result;
}

void sub_100519BC8(_Unwind_Exception *a1)
{
  sub_100527D00(v1 + 64);
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(a1);
}

void sub_100519BF4(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_100527D00(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void *sub_100519C54(uint64_t a1, uint64_t a2)
{
  result = sub_100528224(a1 + 40, a2 + 40);
  if (*(a2 + 95) < 0)
  {
    result = sub_100005F2C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v5 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v5;
  }

  if (*(a2 + 119) < 0)
  {
    return sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  return result;
}

void sub_100519CD4(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  sub_100527D00(v1 + 40);
  _Unwind_Resume(a1);
}

uint64_t sub_100519D00(uint64_t a1)
{
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  return sub_100527D00(a1 + 40);
}

void sub_100519D54(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[4])
      {
        (*(a1[6] + 16))();
      }

      sub_100004A34(v4);
    }
  }
}

void *sub_100519DF0(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_100519E3C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100519E90(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[4])
      {
        (*(a1[6] + 16))();
      }

      sub_100004A34(v4);
    }
  }
}

void *sub_100519F2C(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_100519F78(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void cellplan::CellularPlanControllerPhone::getRemotePlanManageAccountInfo_sync(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t a4)
{
  v5 = *a4;
  if (*a4)
  {
    v5[32].__r_.__value_.__s.__data_[16] = 0;
    v41 = 0uLL;
    v7 = 328;
    if (*(a1 + 1224))
    {
      v7 = 1368;
    }

    v9 = (a1 + v7 + 32);
    v8 = *v9;
    if (v9[1] != *v9)
    {
      v41 = *(v8 + 16);
      bzero(buf, 0x318uLL);
      (*(**(a1 + 160) + 224))(buf);
      if (buf[0])
      {
        if (v40 == 1)
        {
          v13 = sub_100922CEC(v37, (a1 + 304));
          v14 = v13;
          if ((v13 & 0x100000000) != 0)
          {
            v15 = v13 >> 8;
            goto LABEL_23;
          }
        }

        if (*(a1 + 1224))
        {
          v14 = 0;
          v15 = 0;
LABEL_23:
          v18 = v14 | (v15 << 8);
          if (v40 == 1)
          {
            ctu::hex(&v41, 0x10, v12);
            rest::PairedDeviceInfoList::getDeviceNameForCsn();
            p_p = &__p;
            if (SHIBYTE(v39) < 0)
            {
              operator delete(__p);
            }

            __p = v29;
            v39 = v30;
            HIBYTE(v30) = 0;
            LOBYTE(v29) = 0;
            if (v28 < 0)
            {
              operator delete(v27[1]);
            }

            v20 = HIBYTE(v39);
            if (v39 < 0)
            {
              v20 = *(&__p + 1);
            }

            if (!v20)
            {
              if (SHIBYTE(v39) < 0)
              {
                *(&__p + 1) = 11;
                p_p = __p;
              }

              else
              {
                HIBYTE(v39) = 11;
              }

              strcpy(p_p, "Apple Watch");
            }

            cellplan::CellularPlanControllerPhone::setRemotePlanSignupRequest_sync(a1, v18, 0, a3, v37);
          }

          v21 = sub_1003A9A70(buf);
          v22 = *a4;
          std::string::operator=(*a4, v21);
          v23 = *(v21 + 12);
          v22[1].__r_.__value_.__s.__data_[2] = v21[26];
          LOWORD(v22[1].__r_.__value_.__l.__data_) = v23;
          std::string::operator=((v22 + 32), (v21 + 32));
          sub_10016E6D0(&v22[2].__r_.__value_.__s.__data_[8], (v21 + 56));
          sub_10016EBE4(&v22[16].__r_.__value_.__r.__words[2], (v21 + 400));
          sub_10012BF3C((v22 + 752), (v21 + 752));
          if ((buf[0] & 1) == 0)
          {
            __assert_rtn("operator->", "optional.hpp", 1222, "this->is_initialized()");
          }

          if (v33 == 1)
          {
            v24 = *a2;
            v27[0] = v24;
            if (v24)
            {
              dispatch_retain(v24);
              dispatch_group_enter(v24);
            }

            v25 = *(a4 + 8);
            v26[0] = *a4;
            v26[1] = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            cellplan::CellularPlanControllerPhone::getManageAccountInfoFromRemoteDevice_sync(a1, v27, &v41, v26);
            if (v25)
            {
              sub_100004A34(v25);
            }

            if (v24)
            {
              dispatch_group_leave(v24);
              dispatch_release(v24);
            }
          }

          (*(**(a1 + 208) + 128))(*(a1 + 208), v18);
          goto LABEL_47;
        }

        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101773AA8();
        }

        v17 = 5;
      }

      else
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101773A74();
        }

        v17 = 6;
      }

      *(*a4 + 784) = v17;
LABEL_47:
      if (LOBYTE(buf[0]) == 1)
      {
        sub_1005230E0(&v36);
        if (v35 < 0)
        {
          operator delete(v34);
        }

        if (v32 < 0)
        {
          operator delete(buf[1]);
        }
      }

      return;
    }

    v16 = *(a1 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "csn not available", buf, 2u);
      v5 = *a4;
    }

    v5[32].__r_.__value_.__s.__data_[16] = 6;
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773ADC();
  }
}

void sub_10051A400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
  }

  sub_10050CC20(&a22);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::getManageAccountInfoFromRemoteDevice_sync(void *a1, NSObject **a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  if (*a4)
  {
    if ((*(v4 + 23) & 0x8000000000000000) != 0)
    {
      if (*(v4 + 8))
      {
LABEL_4:
        sub_100004AA0(&v10, a1 + 1);
        v7 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v7);
        }

        v8 = *a2;
        if (v8)
        {
          dispatch_retain(v8);
          dispatch_group_enter(v8);
        }

        v9 = a4[1];
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v12 = 0;
        operator new();
      }
    }

    else if (*(v4 + 23))
    {
      goto LABEL_4;
    }

    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101773B10();
    }
  }

  else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_101773B44();
  }
}

void sub_10051A644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  sub_10032B980(va1);
  sub_10051A670(va);
  _Unwind_Resume(a1);
}

void *sub_10051A670(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = a1[3];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void cellplan::CellularPlanControllerPhone::launchWebsheet_sync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 256);
  if (v3)
  {
    if (*(a2 + 784))
    {
      v5 = *(a1 + 120);
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = *(a1 + 112);
          if (v7)
          {
            cf = 0;
            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (Mutable)
            {
              v9 = cf;
              cf = Mutable;
              *buf = v9;
              sub_1000296E0(buf);
            }

            v19 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            if ((*(a2 + 744) & 1) == 0)
            {
              sub_1000D1644();
            }

            v10 = sub_100986680(&v19, a2 + 400);
            sub_1000296E0(&v19);
            if (v10)
            {
              v18 = 0;
              (*(**(a1 + 128) + 120))(&v18);
              if (*(a2 + 55) < 0)
              {
                sub_100005F2C(__dst, *(a2 + 32), *(a2 + 40));
              }

              else
              {
                *__dst = *(a2 + 32);
                v16 = *(a2 + 48);
              }

              if (SHIBYTE(v16) < 0)
              {
                sub_100005F2C(__p, __dst[0], __dst[1]);
              }

              else
              {
                *__p = *__dst;
                v23 = v16;
              }

              v21 = 0;
              if (SHIBYTE(v23) < 0)
              {
                sub_100005F2C(buf, __p[0], __p[1]);
              }

              else
              {
                *buf = *__p;
                v25 = v23;
              }

              v26 = 0;
              if (ctu::cf::convert_copy())
              {
                v12 = v21;
                v21 = v26;
                v27 = v12;
                sub_100005978(&v27);
              }

              if (SHIBYTE(v25) < 0)
              {
                operator delete(*buf);
              }

              v17 = v21;
              v21 = 0;
              sub_100005978(&v21);
              if (SHIBYTE(v23) < 0)
              {
                operator delete(__p[0]);
              }

              sub_100010180(&v14, &cf);
              v13 = v18;
              if (v18)
              {
                CFRetain(v18);
              }

              (*(*v7 + 72))(v7, &v17, &v14, &v13);
              sub_100005978(&v13);
              sub_10001021C(&v14);
              sub_100005978(&v17);
              if (SHIBYTE(v16) < 0)
              {
                operator delete(__dst[0]);
              }

              sub_100005978(&v18);
            }

            else
            {
              if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
              {
                sub_101773B78();
              }

              (*(**(a1 + 256) + 160))(*(a1 + 256));
            }

            sub_1000296E0(&cf);
LABEL_44:
            sub_100004A34(v6);
            return;
          }
        }
      }

      else
      {
        v6 = 0;
      }

      (*(**(a1 + 256) + 160))(*(a1 + 256));
      if (!v6)
      {
        return;
      }

      goto LABEL_44;
    }

    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Missing websheet info, aborting", buf, 2u);
      v3 = *(a1 + 256);
    }

    (*(*v3 + 160))(v3);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773BAC();
  }
}

void sub_10051AA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, const void *a19, __int16 a20, char a21, char a22, int a23, const void *a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_100005978(&a19);
  sub_1000296E0(&a24);
  sub_100004A34(v31);
  _Unwind_Resume(a1);
}

void sub_10051AB78(uint64_t *a1, unsigned __int8 *a2, __int128 *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *a2;
  v11[0] = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v12, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    v13 = *(a3 + 2);
  }

  v11[0] = 1;
  sub_10016F858(v8, a4);
  sub_10016F8C0(v9, a4 + 344);
  sub_10006F264(v10, (a4 + 696));
  v7[0] = 1;
  (*(v5 + 16))(v5, v6, v11, v7);
  if (v7[0] == 1)
  {
    sub_1005230E0(v8);
    v7[0] = 0;
  }

  if (v11[0] == 1 && SHIBYTE(v13) < 0)
  {
    operator delete(v12);
  }
}

void cellplan::CellularPlanControllerPhone::remoteProvisioningEndedWithPendingWebsheetCallback_sync(uint64_t a1, uint64_t *a2)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773BE0();
  }

  sub_10051ADB4(a2);
}

void sub_10051ADB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0;
  (*(v1 + 16))();
}

void sub_10051AE60(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, char a5, ...)
{
  va_start(va, a5);
  if (a5 == 1)
  {
    sub_1005230E0(va);
  }

  sub_101773C14(v5 - 56);
  _Unwind_Resume(a1);
}

const void **cellplan::CellularPlanControllerPhone::remoteProvisioningEndedWithPendingGetPlansCallback_sync(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I a pending get plan callback is present, get plans", buf, 2u);
  }

  (*(**(a1 + 160) + 104))(&v6);
  sub_10051AF70(a2, &v6);
  return sub_100010250(&v6);
}

void sub_10051AF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

const void **sub_10051AF70(uint64_t *a1, const void **a2)
{
  v2 = *a1;
  v4 = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  return sub_100010250(&v4);
}

void sub_10051AFC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::remoteProvisioningOperationDidComplete_sync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *v15 = cellplan::asString();
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I provisioning operation result: %s", buf, 0xCu);
  }

  v4 = *(a1 + 1080);
  *(a1 + 1080) = 0;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = *(a1 + 264);
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 280);
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 160);
  v8 = *(a1 + 1040);
  v11 = 0;
  v10 = 0uLL;
  v12[0] = 0;
  v13 = 0;
  sub_100520D38(buf, v8, &v10, v12, 0);
  (*(*v7 + 96))(v7, 0, buf);
  if (v17[216] == 1)
  {
    sub_100E3A5D4(v17);
  }

  if (v16 < 0)
  {
    operator delete(*&v15[4]);
  }

  if (v13 == 1)
  {
    sub_100E3A5D4(v12);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10);
  }

  return (*(**(a1 + 96) + 16))(*(a1 + 96));
}

void sub_10051B190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, int a44, __int16 a45, char a46, char a47)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cellplan::CellularPlanControllerPhone::handleFailureToSendUserConsent_sync(uint64_t result, int a2)
{
  if (*(result + 1072) == 1 && os_log_type_enabled(*(result + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773C48(result);
  }

  *(result + 1076) = a2;
  *(result + 1072) = 1;
}

void cellplan::CellularPlanControllerPhone::handleFetchFailure_sync(uint64_t a1, int a2, __int128 *a3)
{
  if (*(a1 + 1072) == 1 && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101773C48(a1);
  }

  *(a1 + 1076) = a2;
  *(a1 + 1072) = 1;
  if (a2 == 5)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Device not reachable - do not bother displaying notification", &v9, 2u);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    (*(**(a1 + 96) + 64))(&v9);
    if (v9)
    {
      v7 = *(a1 + 360);
      if (*(a1 + 368) != v7 && ((v11 = *(v7 + 16), *a3 == v11) ? (v8 = *(a3 + 1) == *(&v11 + 1)) : (v8 = 0), v8))
      {
        v11 = 0uLL;
      }

      else
      {
        v11 = *a3;
      }

      (*(*v9 + 72))();
    }

    if (v10)
    {
      sub_100004A34(v10);
    }
  }
}

void sub_10051B3E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cellplan::CellularPlanControllerPhone::isProfileAlreadyInstalled_sync(uint64_t a1)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  *__p = 0u;
  v16 = 0u;
  v2 = 328;
  if (*(a1 + 1224))
  {
    v2 = 1368;
  }

  v3 = a1 + v2;
  if (*(a1 + v2 + 23) < 0)
  {
    sub_100005F2C(__p, *v3, *(v3 + 8));
  }

  else
  {
    *__p = *v3;
    *&v16 = *(v3 + 16);
  }

  v4 = *(v3 + 32);
  *(&v16 + 1) = *(v3 + 24);
  v17 = 0uLL;
  *&v18 = 0;
  sub_10027E628(&v17, v4, *(v3 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v3 + 40) - v4) >> 3));
  *(&v18 + 1) = *(v3 + 56);
  LODWORD(v19) = *(v3 + 64);
  if ((*(a1 + 999) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 984))
    {
      goto LABEL_29;
    }
  }

  else if (!*(a1 + 999))
  {
    goto LABEL_29;
  }

  if (v17 != *(&v17 + 1) && *(v17 + 80) == 1)
  {
    v5 = *(v17 + 56);
    for (i = *(v17 + 64); v5 != i; v5 += 216)
    {
      v33 = 0;
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
      v20 = 0u;
      sub_100F11F00(&v20, v5);
      if ((SBYTE7(v22) & 0x80u) == 0)
      {
        v7 = BYTE7(v22);
      }

      else
      {
        v7 = *(&v21 + 1);
      }

      v8 = *(a1 + 999);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(a1 + 984);
      }

      if (v7 == v8)
      {
        if ((SBYTE7(v22) & 0x80u) == 0)
        {
          v10 = &v21;
        }

        else
        {
          v10 = v21;
        }

        if (v9 >= 0)
        {
          v11 = (a1 + 976);
        }

        else
        {
          v11 = *(a1 + 976);
        }

        v12 = memcmp(v10, v11, v7);
        sub_100E3A5D4(&v20);
        if (!v12)
        {
          v14 = 1;
          goto LABEL_30;
        }
      }

      else
      {
        sub_100E3A5D4(&v20);
      }
    }
  }

LABEL_29:
  v14 = 0;
LABEL_30:
  *&v20 = &v17;
  sub_100112048(&v20);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v14;
}

uint64_t cellplan::CellularPlanControllerPhone::isGetPlansFetchWithoutActiveSubscription_sync(cellplan::CellularPlanControllerPhone *this)
{
  v1 = 328;
  if (*(this + 1224))
  {
    v1 = 1368;
  }

  v2 = this + v1;
  v3 = *(this + v1 + 32);
  if (*(v2 + 5) != v3 && v2[24] == 1)
  {
    v11 = *(v3 + 16);
    if (*(this + 32))
    {
      (***(this + 16))(&v9);
      v10 = v9;
      v9 = 0uLL;
      subscriber::makeSimSlotRange();
      if (*(&v10 + 1))
      {
        sub_100004A34(*(&v10 + 1));
      }

      if (*(&v9 + 1))
      {
        sub_100004A34(*(&v9 + 1));
      }

      v4 = v6;
      if (v6 != v7)
      {
        do
        {
          if (v8(*v4))
          {
            break;
          }

          ++v4;
        }

        while (v4 != v7);
        if (v4 != v7)
        {
          sub_10032E870();
        }
      }
    }
  }

  return 1;
}

void sub_10051BC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, std::__shared_weak_count *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, std::__shared_weak_count *a60)
{
  if (a60)
  {
    sub_100004A34(a60);
  }

  if (a54)
  {
    sub_100004A34(a54);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cellplan::CellularPlanControllerPhone::supportsEntitlementSubscriptionInfo_sync(cellplan::CellularPlanControllerPhone *this)
{
  (*(**(this + 16) + 680))(&v5);
  v4 = 0;
  v2 = (*(*v5 + 40))(v5, &v4, *(this + 260));
  sub_10001021C(&v4);
  if (v6)
  {
    sub_100004A34(v6);
  }

  return v2;
}

void sub_10051BDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::loadVinylInfoFromDatabase_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if ((*(a2 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      goto LABEL_3;
    }

LABEL_22:
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773CF8();
    }

    goto LABEL_26;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_22;
  }

LABEL_3:
  if (!*(a1 + 128))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101773CC4();
    }

LABEL_26:
    *a3 = 0;
    a3[72] = 0;
    a3[80] = 0;
    a3[216] = 0;
    a3[224] = 1;
    return;
  }

  v33 = 0;
  v32 = 0u;
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  (*(**(a1 + 176) + 16))(&v19);
  if (v33)
  {
    LODWORD(v32) = 2;
    if (v19 == 1)
    {
      (*(**(a1 + 160) + 88))(*(a1 + 160), 1, &v19 + 8);
    }

    sub_100523378(buf, (&v29 + 8), &v21);
    sub_100523454(a3, buf);
    a3[224] = 1;
    if (v18 < 0)
    {
      operator delete(__p);
    }

    if (v14 == 1)
    {
      if (v16 < 0)
      {
        operator delete(v15);
      }

      v14 = 0;
    }

    if (v11 == 1)
    {
      if (v13 < 0)
      {
        operator delete(v12);
      }

      v11 = 0;
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }

    v6 = &v8;
    sub_100112048(&v6);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I No Record found in DB, not fetching from dB", buf, 2u);
    }

    *a3 = 0;
    a3[72] = 0;
    a3[80] = 0;
    a3[216] = 0;
    a3[224] = 1;
  }

  if (v33 == 1)
  {
    *buf = &v31[8];
    sub_100112048(buf);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(*(&v29 + 1));
    }

    if (SBYTE7(v28) < 0)
    {
      operator delete(v27);
    }

    if (BYTE8(v24) == 1)
    {
      if (SBYTE7(v26) < 0)
      {
        operator delete(v25);
      }

      BYTE8(v24) = 0;
    }

    if (BYTE8(v22) == 1)
    {
      if (SBYTE7(v24) < 0)
      {
        operator delete(v23);
      }

      BYTE8(v22) = 0;
    }

    if (SBYTE7(v22) < 0)
    {
      operator delete(v21);
    }

    if (v19 == 1 && SHIBYTE(v20) < 0)
    {
      operator delete(*(&v19 + 1));
    }
  }
}

void sub_10051C16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  sub_1003A371C(va);
  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::saveVinylSubscriptionDetail_sync(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  *__p = 0u;
  memset(v7, 0, sizeof(v7));
  v5 = 0u;
  *v6 = 0u;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v7[1], *a2, *(a2 + 8));
  }

  else
  {
    *&v7[1] = *a2;
    v7[3] = *(a2 + 16);
  }

  LOWORD(v7[4]) = 0;
  memset(&v7[5], 0, 48);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(&v7[11], *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *&v7[11] = *(a2 + 24);
    v7[13] = *(a2 + 40);
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__p, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    *__p = *(a2 + 48);
    v9 = *(a2 + 64);
  }

  (*(**(a1 + 176) + 72))(*(a1 + 176), &v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7[13]) < 0)
  {
    operator delete(v7[11]);
  }

  if (SHIBYTE(v7[10]) < 0)
  {
    operator delete(v7[8]);
  }

  if (SHIBYTE(v7[7]) < 0)
  {
    operator delete(v7[5]);
  }

  if (SHIBYTE(v7[3]) < 0)
  {
    operator delete(v7[1]);
  }

  if (SHIBYTE(v7[0]) < 0)
  {
    operator delete(v6[0]);
  }

  return 1;
}

void sub_10051C340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cellplan::CellularPlanControllerPhone::updateRemoteSubscriptionDetails_sync(uint64_t a1)
{
  (*(**(a1 + 160) + 24))(*(a1 + 160));
  (*(**(a1 + 96) + 16))(*(a1 + 96));
  return 1;
}

uint64_t non-virtual thunk tocellplan::CellularPlanControllerPhone::updateRemoteSubscriptionDetails_sync(uint64_t a1)
{
  (*(**(a1 + 72) + 24))(*(a1 + 72));
  (*(**(a1 + 8) + 16))(*(a1 + 8));
  return 1;
}

uint64_t cellplan::CellularPlanControllerPhone::updateRemotePendingPlans_sync(uint64_t a1, ctu *a2, void *a3)
{
  (*(**(a1 + 160) + 40))(*(a1 + 160));
  if (*a3 == a3[1] || *(a1 + 256))
  {
    return 1;
  }

  (***(a1 + 128))(__str);
  ServiceMap = Registry::getServiceMap(*__str);
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
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
  v89.__r_.__value_.__r.__words[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v89);
  if (v12)
  {
    v13 = v12[3];
    v14 = v12[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v15 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v7);
  v14 = 0;
  v15 = 1;
LABEL_11:
  if (*&__str[8])
  {
    sub_100004A34(*&__str[8]);
  }

  if (!v13)
  {
    if (v15)
    {
      return 1;
    }

    goto LABEL_150;
  }

  *v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(__str, 0, sizeof(__str));
  v16 = *a3;
  v17 = *(*a3 + 95);
  if (v17 < 0)
  {
    v17 = *(v16 + 80);
  }

  v18 = v17 == 0;
  v19 = 72;
  if (v18)
  {
    v19 = 0;
  }

  v71 = v14;
  std::string::operator=(__str, (v16 + v19));
  v72 = v15;
  if (SHIBYTE(v81) < 0)
  {
    *&v81 = 16;
    v20 = *&__str[24];
  }

  else
  {
    v20 = &__str[24];
    HIBYTE(v81) = 16;
  }

  strcpy(v20, "com.apple.Bridge");
  LOBYTE(v82) = 1;
  v21 = kCBMessageLocalizationTable;
  (*(*v13 + 40))(&buf, v13, kCBMessageLocalizationTable, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_TITLE", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_TITLE");
  v89.__r_.__value_.__r.__words[0] = *(&v82 + 1);
  *(&v82 + 1) = buf.__r_.__value_.__r.__words[0];
  buf.__r_.__value_.__r.__words[0] = 0;
  sub_100005978(&v89.__r_.__value_.__l.__data_);
  sub_100005978(&buf.__r_.__value_.__l.__data_);
  v79 = 0;
  v22 = *(a1 + 896);
  v23 = *(a1 + 904);
  ctu::hex(a2, 0x10, v24);
  v25 = v78;
  if (v22 == v23)
  {
    v23 = v22;
    if ((v78 & 0x80) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if ((v78 & 0x80u) == 0)
    {
      v26 = v78;
    }

    else
    {
      v26 = __p[1];
    }

    if ((v78 & 0x80u) == 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }

    v28 = v22 + 32;
    while (1)
    {
      v29 = *(v28 + 23);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v28 + 8);
      }

      if (v26 == v29)
      {
        v31 = v30 >= 0 ? v28 : *v28;
        if (!memcmp(v27, v31, v26))
        {
          break;
        }
      }

      v32 = v28 + 184;
      v28 += 216;
      if (v32 == v23)
      {
        if ((v25 & 0x80) != 0)
        {
          goto LABEL_44;
        }

        goto LABEL_40;
      }
    }

    v23 = v28 - 32;
    if ((v25 & 0x80) == 0)
    {
      goto LABEL_40;
    }
  }

LABEL_44:
  operator delete(__p[0]);
LABEL_40:
  if (v23 == *(a1 + 904))
  {
    v33 = *(a1 + 40);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      ctu::hex(a2, 0x10, v34);
      v36 = (v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v89 : v89.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v36;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Cannot find device for (%s)", &buf, 0xCu);
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }
    }

    v87 = 0;
    buf.__r_.__value_.__r.__words[0] = 0;
    v37 = kCFAllocatorDefault;
    if (ctu::cf::convert_copy(&buf, "Apple Watch", 0x8000100, kCFAllocatorDefault, v35))
    {
      v38 = v87;
      v87 = buf.__r_.__value_.__r.__words[0];
      v89.__r_.__value_.__r.__words[0] = v38;
      sub_100005978(&v89.__r_.__value_.__l.__data_);
    }

    v86 = v87;
    v87 = 0;
    sub_100005978(&v87);
    v89.__r_.__value_.__r.__words[0] = v79;
    v79 = v86;
    v86 = 0;
    sub_100005978(&v89.__r_.__value_.__l.__data_);
    sub_100005978(&v86);
  }

  else
  {
    if (*(v23 + 127) < 0)
    {
      sub_100005F2C(&__dst, *(v23 + 104), *(v23 + 112));
    }

    else
    {
      __dst = *(v23 + 104);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = __dst;
    }

    v85 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v89, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      v89 = buf;
    }

    v86 = 0;
    v37 = kCFAllocatorDefault;
    if (ctu::cf::convert_copy())
    {
      v39 = v85;
      v85 = v86;
      v87 = v39;
      sub_100005978(&v87);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    v76 = v85;
    v85 = 0;
    sub_100005978(&v85);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v89.__r_.__value_.__r.__words[0] = v79;
    v79 = v76;
    v76 = 0;
    sub_100005978(&v89.__r_.__value_.__l.__data_);
    sub_100005978(&v76);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  if (v23 == *(a1 + 904))
  {
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      ctu::hex(a2, 0x10, v41);
      v43 = (v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v89 : v89.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v43;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Cannot find device for (%s)", &buf, 0xCu);
      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }
    }

    v87 = 0;
    buf.__r_.__value_.__r.__words[0] = 0;
    if (ctu::cf::convert_copy(&buf, "Apple Watch", 0x8000100, v37, v42))
    {
      v44 = v87;
      v87 = buf.__r_.__value_.__r.__words[0];
      v89.__r_.__value_.__r.__words[0] = v44;
      sub_100005978(&v89.__r_.__value_.__l.__data_);
    }

    v86 = v87;
    v87 = 0;
    sub_100005978(&v87);
    v89.__r_.__value_.__r.__words[0] = v79;
    v79 = v86;
    v86 = 0;
    sub_100005978(&v89.__r_.__value_.__l.__data_);
    sub_100005978(&v86);
  }

  else
  {
    if (*(v23 + 127) < 0)
    {
      sub_100005F2C(&v74, *(v23 + 104), *(v23 + 112));
    }

    else
    {
      v74 = *(v23 + 104);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, v74.__r_.__value_.__l.__data_, v74.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = v74;
    }

    v85 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v89, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      v89 = buf;
    }

    v86 = 0;
    if (ctu::cf::convert_copy())
    {
      v45 = v85;
      v85 = v86;
      v87 = v45;
      sub_100005978(&v87);
    }

    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    v76 = v85;
    v85 = 0;
    sub_100005978(&v85);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v89.__r_.__value_.__r.__words[0] = v79;
    v79 = v76;
    v76 = 0;
    sub_100005978(&v89.__r_.__value_.__l.__data_);
    sub_100005978(&v76);
    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }
  }

  v46 = *a3;
  if (*(*a3 + 71) < 0)
  {
    v47 = *(v46 + 56);
    if (v47)
    {
      v76 = 0;
      sub_100005F2C(&v73, *(v46 + 48), v47);
      goto LABEL_101;
    }

LABEL_103:
    buf.__r_.__value_.__r.__words[0] = 0;
    (*(*v13 + 40))(&buf, v13, v21, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_PHONE_NO_CARRIER_%@", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_PHONE_NO_CARRIER_%@");
    StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(v37, 0, @"%@", buf.__r_.__value_.__l.__data_, 0, v79);
    v49 = v83[0];
    v83[0] = StringWithValidatedFormat;
    v89.__r_.__value_.__r.__words[0] = v49;
    sub_100005978(&v89.__r_.__value_.__l.__data_);
    p_buf = &buf;
    goto LABEL_117;
  }

  if (!*(*a3 + 71))
  {
    goto LABEL_103;
  }

  v76 = 0;
  v73 = *(v46 + 48);
LABEL_101:
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&buf, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = v73;
  }

  v85 = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&v89, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v89 = buf;
  }

  v86 = 0;
  if (ctu::cf::convert_copy())
  {
    v51 = v85;
    v85 = v86;
    v87 = v51;
    sub_100005978(&v87);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  v76 = v85;
  v85 = 0;
  sub_100005978(&v85);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  buf.__r_.__value_.__r.__words[0] = 0;
  (*(*v13 + 40))(&buf, v13, v21, @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_PHONE_%@_%@", @"CELLULAR_PLAN_PENDING_FOR_INSTALL_MESSAGE_PHONE_%@_%@");
  v52 = CFStringCreateStringWithValidatedFormat(v37, 0, @"%@%@", buf.__r_.__value_.__l.__data_, 0, v76, v79);
  v53 = v83[0];
  v83[0] = v52;
  v89.__r_.__value_.__r.__words[0] = v53;
  sub_100005978(&v89.__r_.__value_.__l.__data_);
  sub_100005978(&buf.__r_.__value_.__l.__data_);
  p_buf = &v76;
LABEL_117:
  sub_100005978(&p_buf->__r_.__value_.__l.__data_);
  ctu::hex(a2, 0x10, v54);
  v55 = std::string::insert(&v89, 0, "bridge:root=CELLULAR_ID&csn=", 0x1CuLL);
  v56 = v55->__r_.__value_.__r.__words[0];
  buf.__r_.__value_.__r.__words[0] = v55->__r_.__value_.__l.__size_;
  *(buf.__r_.__value_.__r.__words + 7) = *(&v55->__r_.__value_.__r.__words[1] + 7);
  v57 = HIBYTE(v55->__r_.__value_.__r.__words[2]);
  v55->__r_.__value_.__l.__size_ = 0;
  v55->__r_.__value_.__r.__words[2] = 0;
  v55->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83[1]);
  }

  v83[1] = v56;
  *&v84 = buf.__r_.__value_.__r.__words[0];
  *(&v84 + 7) = *(buf.__r_.__value_.__r.__words + 7);
  HIBYTE(v84) = v57;
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (rest::PairedDeviceInfoList::isAnyDeviceInState())
  {
    v58 = *(a1 + 40);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = __str;
      if (__str[23] < 0)
      {
        v59 = *__str;
      }

      LODWORD(v89.__r_.__value_.__l.__data_) = 136315138;
      *(v89.__r_.__value_.__r.__words + 4) = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I Delaying notification (%s)", &v89, 0xCu);
    }

    sub_10051D2C4(a1 + 1112, __str);
    goto LABEL_143;
  }

  (***(a1 + 128))(&v89);
  v60 = Registry::getServiceMap(v89.__r_.__value_.__l.__data_);
  v61 = v60;
  if ((v62 & 0x8000000000000000) != 0)
  {
    v63 = (v62 & 0x7FFFFFFFFFFFFFFFLL);
    v64 = 5381;
    do
    {
      v62 = v64;
      v65 = *v63++;
      v64 = (33 * v64) ^ v65;
    }

    while (v65);
  }

  std::mutex::lock(v60);
  buf.__r_.__value_.__r.__words[0] = v62;
  v66 = sub_100009510(&v61[1].__m_.__sig, &buf);
  if (!v66)
  {
    v68 = 0;
    goto LABEL_136;
  }

  v68 = v66[3];
  v67 = v66[4];
  if (!v67)
  {
LABEL_136:
    std::mutex::unlock(v61);
    v67 = 0;
    v69 = 1;
    goto LABEL_137;
  }

  atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v61);
  atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v67);
  v69 = 0;
LABEL_137:
  if (v89.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v89.__r_.__value_.__l.__size_);
  }

  if (v68)
  {
    (*(*v68 + 16))(v68, __str);
  }

  if ((v69 & 1) == 0)
  {
    sub_100004A34(v67);
  }

LABEL_143:
  sub_100005978(&v79);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(v83[1]);
  }

  sub_100005978(v83);
  sub_100005978(&v82 + 1);
  v14 = v71;
  if (SHIBYTE(v81) < 0)
  {
    operator delete(*&__str[24]);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if ((v72 & 1) == 0)
  {
LABEL_150:
    sub_100004A34(v14);
  }

  return 1;
}

void sub_10051D0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38, __int16 a39, char a40, char a41)
{
  sub_100005978(&a38);
  sub_10051D34C(&a39);
  if ((a13 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_10051D2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (!a30)
  {
    JUMPOUT(0x10051D2ACLL);
  }

  JUMPOUT(0x10051D2A8);
}

uint64_t sub_10051D2C4(uint64_t a1, std::string *__str)
{
  if (*(a1 + 96) == 1)
  {
    std::string::operator=(a1, __str);
    std::string::operator=((a1 + 24), __str + 1);
    *(a1 + 48) = __str[2].__r_.__value_.__s.__data_[0];
    sub_100222570((a1 + 56), &__str[2].__r_.__value_.__l.__size_);
    sub_100222570((a1 + 64), &__str[2].__r_.__value_.__r.__words[2]);
    std::string::operator=((a1 + 72), __str + 3);
  }

  else
  {
    sub_100F7BBA0(a1, __str);
    *(a1 + 96) = 1;
  }

  return a1;
}

uint64_t sub_10051D34C(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_100005978((a1 + 64));
  sub_100005978((a1 + 56));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t cellplan::CellularPlanControllerPhone::updateRemotePlanStatus_sync(uint64_t a1, ctu *a2, uint64_t a3, int a4)
{
  (***(a1 + 128))(__str);
  ServiceMap = Registry::getServiceMap(*__str);
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
      sub_100004A34(v15);
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v18 = 1;
LABEL_9:
  if (*&__str[8])
  {
    sub_100004A34(*&__str[8]);
  }

  if (!v16)
  {
    goto LABEL_81;
  }

  *v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  memset(__str, 0, sizeof(__str));
  v51 = 0;
  v52 = 0;
  v53 = 0;
  ctu::hex(a2, 0x10, v17);
  if (SHIBYTE(v55) < 0)
  {
    *&v55 = 16;
    v19 = *&__str[24];
  }

  else
  {
    v19 = &__str[24];
    HIBYTE(v55) = 16;
  }

  strcpy(v19, "com.apple.Bridge");
  LOBYTE(v56) = 1;
  v20 = *(a3 + 23);
  if ((v20 & 0x80u) != 0)
  {
    v20 = *(a3 + 8);
  }

  if (v20)
  {
    v21 = a3;
  }

  else
  {
    v21 = &v51;
  }

  std::string::operator=(__str, v21);
  v50 = 0;
  if (a4)
  {
    v22 = kCBMessageLocalizationTable;
    (*(*v16 + 40))(&__dst, v16, kCBMessageLocalizationTable, @"CELLULAR_PLAN_SETUP_READY_FOR_USE_TITLE_PHONE_%@", 0);
    *buf = v50;
    v50 = __dst;
    *&__dst = 0;
    sub_100005978(buf);
    sub_100005978(&__dst);
    (*(*v16 + 40))(&__dst, v16, v22, @"CELLULAR_PLAN_SETUP_READY_FOR_USE_MESSAGE_PHONE", 0);
  }

  else
  {
    v23 = kCBMessageLocalizationTable;
    (*(*v16 + 40))(&__dst, v16, kCBMessageLocalizationTable, @"CELLULAR_PLAN_SETUP_FAILURE_TITLE_PHONE_%@", 0);
    *buf = v50;
    v50 = __dst;
    *&__dst = 0;
    sub_100005978(buf);
    sub_100005978(&__dst);
    (*(*v16 + 40))(&__dst, v16, v23, @"CELLULAR_PLAN_SETUP_FAILURE_MESSAGE_PHONE", 0);
  }

  *buf = v57[0];
  v57[0] = __dst;
  *&__dst = 0;
  sub_100005978(buf);
  sub_100005978(&__dst);
  __src[0] = 0;
  __src[1] = 0;
  v49 = 0;
  rest::PairedDeviceInfoList::getDeviceNameForCsn();
  *v62 = 0;
  *&__dst = 0;
  if (ctu::cf::convert_copy(&__dst, "Apple Watch", 0x8000100, kCFAllocatorDefault, v24))
  {
    v25 = *v62;
    *v62 = __dst;
    *buf = v25;
    sub_100005978(buf);
  }

  v61 = *v62;
  *v62 = 0;
  sub_100005978(v62);
  StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v50, 0, v61);
  v27 = *(&v56 + 1);
  *(&v56 + 1) = StringWithValidatedFormat;
  *buf = v27;
  sub_100005978(buf);
  sub_100005978(&v61);
  sub_1000167D4(&v57[1], "bridge:root=CELLULAR_ID&csn=", 0x1CuLL);
  if (v53 >= 0)
  {
    v28 = &v51;
  }

  else
  {
    v28 = v51;
  }

  if (v53 >= 0)
  {
    v29 = HIBYTE(v53);
  }

  else
  {
    v29 = v52;
  }

  std::string::append(&v57[1], v28, v29);
  if (rest::PairedDeviceInfoList::isAnyDeviceInState())
  {
    v30 = *(a1 + 40);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = __str;
      if (__str[23] < 0)
      {
        v31 = *__str;
      }

      *buf = 136315138;
      *&buf[4] = v31;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Delaying notification (%s)", buf, 0xCu);
    }

    sub_10051D2C4(a1 + 1112, __str);
    goto LABEL_72;
  }

  (***(a1 + 128))(buf);
  v32 = Registry::getServiceMap(*buf);
  v33 = v32;
  if (v34 < 0)
  {
    v35 = (v34 & 0x7FFFFFFFFFFFFFFFLL);
    v36 = 5381;
    do
    {
      v34 = v36;
      v37 = *v35++;
      v36 = (33 * v36) ^ v37;
    }

    while (v37);
  }

  std::mutex::lock(v32);
  *&__dst = v34;
  v38 = sub_100009510(&v33[1].__m_.__sig, &__dst);
  if (!v38)
  {
    v40 = 0;
    goto LABEL_44;
  }

  v40 = v38[3];
  v39 = v38[4];
  if (!v39)
  {
LABEL_44:
    std::mutex::unlock(v33);
    v39 = 0;
    v41 = 1;
    goto LABEL_45;
  }

  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v33);
  atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v39);
  v41 = 0;
LABEL_45:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v40)
  {
    v42 = *(a1 + 40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = __str;
      if (__str[23] < 0)
      {
        v43 = *__str;
      }

      *buf = 136315138;
      *&buf[4] = v43;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Posting notification (%s)", buf, 0xCu);
      v42 = *(a1 + 40);
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      memset(buf, 0, sizeof(buf));
      v64 = 0;
      ctu::cf::assign();
      __dst = *buf;
      v60 = v64;
      p_dst = *buf;
      if (v64 >= 0)
      {
        p_dst = &__dst;
      }

      *v62 = 136315138;
      *&v62[4] = p_dst;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s", v62, 0xCu);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__dst);
      }

      v42 = *(a1 + 40);
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      memset(buf, 0, sizeof(buf));
      v64 = 0;
      ctu::cf::assign();
      __dst = *buf;
      v60 = v64;
      v45 = *buf;
      if (v64 >= 0)
      {
        v45 = &__dst;
      }

      *v62 = 136315138;
      *&v62[4] = v45;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s", v62, 0xCu);
      if (SHIBYTE(v60) < 0)
      {
        operator delete(__dst);
      }

      v42 = *(a1 + 40);
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      if (v58 >= 0)
      {
        v46 = &v57[1];
      }

      else
      {
        v46 = v57[1];
      }

      *buf = 136315138;
      *&buf[4] = v46;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Posting notification (%s)", buf, 0xCu);
    }

    (*(*v40 + 16))(v40, __str);
  }

  if ((v41 & 1) == 0)
  {
    sub_100004A34(v39);
  }

LABEL_72:
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__src[0]);
  }

  sub_100005978(&v50);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[1]);
  }

  sub_100005978(v57);
  sub_100005978(&v56 + 1);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(*&__str[24]);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
    if (v18)
    {
      return 1;
    }

    goto LABEL_82;
  }

LABEL_81:
  if ((v18 & 1) == 0)
  {
LABEL_82:
    sub_100004A34(v15);
  }

  return 1;
}

void sub_10051DD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, const void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33)
{
  if (*(v37 - 105) < 0)
  {
    operator delete(*(v37 - 128));
  }

  if ((v36 & 1) == 0)
  {
    sub_100004A34(v34);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_10051D34C(&a32);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::recheckSubscriptionWithTimer_sync(cellplan::CellularPlanControllerPhone *this)
{
  v1 = *(this + 5);
  if (*(this + 125))
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_101773D2C();
    }
  }

  else
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(this + 129);
      v4 = *(*(this + 126) + 4 * v3);
      *buf = 134218240;
      *&buf[4] = v3;
      *&buf[12] = 1024;
      *&buf[14] = v4;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Starting a timer with index:%zu and time interval:%d", buf, 0x12u);
    }

    sub_100004AA0(buf, this + 1);
    v6 = *buf;
    v5 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v5);
    }

    (***(this + 16))(&v19);
    Registry::getTimerService(buf, v19);
    v7 = *buf;
    sub_10000501C(__p, "ActivatingStateSubscriptionCheckTimer");
    v8 = *(*(this + 126) + 4 * *(this + 129));
    v9 = *(this + 3);
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_10051E26C;
    aBlock[3] = &unk_101E540F8;
    aBlock[4] = this;
    aBlock[5] = v6;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = _Block_copy(aBlock);
    sub_100D23364(v7, __p, 1, 1000000 * v8, &object, &v15);
    v10 = v21;
    v21 = 0;
    v11 = *(this + 125);
    *(this + 125) = v10;
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v12 = v21;
      v21 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    if (v15)
    {
      _Block_release(v15);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v20)
    {
      sub_100004A34(v20);
    }

    ++*(this + 129);
    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }

    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_10051E1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10051E26C(void *a1)
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
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I ActivatingStateSubscriptionCheckTimer fired!", buf, 2u);
        }

        v7 = *(v3 + 1000);
        *(v3 + 1000) = 0;
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        v8 = *(v3 + 1040);
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 0x40000000;
        v10[2] = sub_10051E3DC;
        v10[3] = &unk_101E540D8;
        v10[4] = v3;
        v9 = _Block_copy(v10);
        v11 = v9;
        cellplan::CellularPlanControllerPhone::getSubscriptionInfo_sync(v3, v8, 0, 1, &v11);
        if (v9)
        {
          _Block_release(v9);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10051E3B4(_Unwind_Exception *a1)
{
  if (v2)
  {
    _Block_release(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::recheckSubscriptionIfNeeded_sync(cellplan::CellularPlanControllerPhone *this, int a2)
{
  if ((*(this + 999) & 0x8000000000000000) != 0)
  {
    if (!*(this + 123))
    {
      goto LABEL_5;
    }
  }

  else if (!*(this + 999))
  {
LABEL_5:
    if (!cellplan::CellularPlanControllerPhone::isRioLiveID_sync(this))
    {
      return;
    }
  }

  if (a2)
  {
    *(this + 129) = 0;
    *(this + 127) = *(this + 126);
    v4 = *(this + 125);
    *(this + 125) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    theArray = 0;
    (*(**(this + 16) + 680))(&v42);
    (*(*v42 + 80))(&theArray);
    if (v43)
    {
      sub_100004A34(v43);
    }

    v5 = (this + 1008);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v9 = ValueAtIndex;
          LODWORD(v42) = 0;
          if (ValueAtIndex)
          {
            v10 = CFGetTypeID(ValueAtIndex);
            if (v10 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v42, v9, v11);
            }
          }

          v12 = *(this + 127);
          v13 = *(this + 128);
          if (v12 >= v13)
          {
            v15 = *v5;
            v16 = v12 - *v5;
            v17 = v16 >> 2;
            v18 = (v16 >> 2) + 1;
            if (v18 >> 62)
            {
              sub_1000CE3D4();
            }

            v19 = v13 - v15;
            if (v19 >> 1 > v18)
            {
              v18 = v19 >> 1;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v20 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              sub_100016740(this + 1008, v20);
            }

            *(4 * v17) = v42;
            v14 = 4 * v17 + 4;
            memcpy(0, v15, v16);
            v21 = *(this + 126);
            *(this + 126) = 0;
            *(this + 127) = v14;
            *(this + 128) = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v12 = v42;
            v14 = (v12 + 4);
          }

          *(this + 127) = v14;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
      {
        sub_101773D60();
      }

      v22 = *(this + 127);
      v23 = *(this + 128);
      if (v22 >= v23)
      {
        v25 = *v5;
        v26 = v22 - *v5;
        v27 = v26 >> 2;
        v28 = (v26 >> 2) + 1;
        if (v28 >> 62)
        {
          sub_1000CE3D4();
        }

        if ((v23 - v25) >> 1 > v28)
        {
          v28 = (v23 - v25) >> 1;
        }

        if (v23 - v25 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v28 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (v28)
        {
          sub_100016740(this + 1008, v28);
        }

        v23 = 0;
        *(4 * v27) = 300;
        v24 = (4 * v27 + 4);
        memcpy(0, v25, v26);
        v29 = *(this + 126);
        *(this + 126) = 0;
        *(this + 127) = v24;
        *(this + 128) = 0;
        if (v29)
        {
          operator delete(v29);
          v23 = *(this + 128);
        }
      }

      else
      {
        *v22 = 300;
        v24 = v22 + 4;
      }

      *(this + 127) = v24;
      if (v24 >= v23)
      {
        v31 = *v5;
        v32 = v24 - *v5;
        v33 = v32 >> 2;
        v34 = (v32 >> 2) + 1;
        if (v34 >> 62)
        {
          sub_1000CE3D4();
        }

        if ((v23 - v31) >> 1 > v34)
        {
          v34 = (v23 - v31) >> 1;
        }

        if (v23 - v31 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v34 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (v34)
        {
          sub_100016740(this + 1008, v34);
        }

        v23 = 0;
        *(4 * v33) = 600;
        v30 = (4 * v33 + 4);
        memcpy(0, v31, v32);
        v35 = *(this + 126);
        *(this + 126) = 0;
        *(this + 127) = v30;
        *(this + 128) = 0;
        if (v35)
        {
          operator delete(v35);
          v23 = *(this + 128);
        }
      }

      else
      {
        *v24 = 600;
        v30 = v24 + 4;
      }

      *(this + 127) = v30;
      if (v30 >= v23)
      {
        v37 = *v5;
        v38 = v30 - *v5;
        v39 = v38 >> 2;
        v40 = (v38 >> 2) + 1;
        if (v40 >> 62)
        {
          sub_1000CE3D4();
        }

        if ((v23 - v37) >> 1 > v40)
        {
          v40 = (v23 - v37) >> 1;
        }

        if (v23 - v37 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v40 = 0x3FFFFFFFFFFFFFFFLL;
        }

        if (v40)
        {
          sub_100016740(this + 1008, v40);
        }

        *(4 * v39) = 1800;
        v36 = 4 * v39 + 4;
        memcpy(0, v37, v38);
        v41 = *(this + 126);
        *(this + 126) = 0;
        *(this + 127) = v36;
        *(this + 128) = 0;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        *v30 = 1800;
        v36 = (v30 + 4);
      }

      *(this + 127) = v36;
    }

    sub_100010250(&theArray);
  }

  if (*(this + 129) < ((*(this + 127) - *(this + 126)) >> 2) && ((*(**(this + 20) + 128))(*(this + 20), *(this + 260), this + 976) & 1) == 0)
  {
    cellplan::CellularPlanControllerPhone::recheckSubscriptionWithTimer_sync(this);
  }
}

void sub_10051E8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10051E934(uint64_t result, uint64_t a2)
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

void sub_10051E950(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t cellplan::CellularPlanControllerPhone::isRioLiveID_sync(cellplan::CellularPlanControllerPhone *this)
{
  rest::PairedDeviceInfoList::getActiveDevice(&v6, (this + 896));
  v2 = v6;
  sub_100DB14E0(&v6);
  if (v2 != 1)
  {
    return 0;
  }

  (*(**(this + 16) + 680))(&v6);
  v5 = 0;
  v3 = (*(*v6 + 152))(v6, &v5, *(this + 260), 1);
  sub_10001021C(&v5);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return v3;
}

void sub_10051EA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, std::__shared_weak_count *a11)
{
  sub_10001021C(&a9);
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::submitRemotePlanProfilesStatus(cellplan::CellularPlanControllerPhone *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void cellplan::CellularPlanControllerPhone::updatePlan_sync(uint64_t a1, uint64_t *a2, std::string *__str, void *a4, uint64_t a5)
{
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  *v26 = 0u;
  memset(v25, 0, sizeof(v25));
  if ((__str[1].__r_.__value_.__l.__data_ & 0xFFFFFFFE) == 2)
  {
    goto LABEL_5;
  }

  (*(**(a1 + 128) + 680))(&v23);
  v10 = (*v23)[21](v23);
  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v10)
  {
LABEL_5:
    std::string::operator=(v25, __str);
    *&v25[24] = __str[1].__r_.__value_.__l.__data_;
    std::string::operator=(v26, (__str + 32));
    std::string::operator=(&v27[1], (__str + 56));
    LODWORD(v28) = __str[3].__r_.__value_.__r.__words[1];
  }

  else
  {
    *&v25[24] = 1;
  }

  v11 = *(a1 + 144);
  v12 = *a2;
  v13 = a2[1];
  if ((v25[23] & 0x80000000) != 0)
  {
    sub_100005F2C(__dst, *v25, *&v25[8]);
  }

  else
  {
    *__dst = *v25;
    v16 = *&v25[16];
  }

  v17 = *&v25[24];
  if (SHIBYTE(v27[0]) < 0)
  {
    sub_100005F2C(&v18, v26[0], v26[1]);
  }

  else
  {
    v18 = *v26;
    v19 = v27[0];
  }

  if (SHIBYTE(v27[3]) < 0)
  {
    sub_100005F2C(&__p, v27[1], v27[2]);
  }

  else
  {
    __p = *&v27[1];
    v21 = v27[3];
  }

  v22 = v28;
  v29[0] = 0;
  memset(v30, 0, sizeof(v30));
  sub_10052F088(v30, *a4, a4[1], 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3));
  v29[0] = 1;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = sub_10051EF3C;
  v14[3] = &unk_101E54130;
  v14[4] = a5;
  v14[5] = a1;
  (*(*v11 + 80))(v11, v12, v13, __dst, v29, v14);
  if (v29[0] == 1)
  {
    v23 = v30;
    sub_1005235F4(&v23);
    v29[0] = 0;
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst[0]);
  }

  (*(**(a1 + 96) + 16))(*(a1 + 96));
  if (SHIBYTE(v27[3]) < 0)
  {
    operator delete(v27[1]);
  }

  if (SHIBYTE(v27[0]) < 0)
  {
    operator delete(v26[0]);
  }

  if ((v25[23] & 0x80000000) != 0)
  {
    operator delete(*v25);
  }
}

void sub_10051EEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_1001FA910(&a35);
  _Unwind_Resume(a1);
}

uint64_t sub_10051EF3C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 40);
  v5 = *a2;
  v6 = *(v4 + 40);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 2)
  {
    if (v7)
    {
      v13 = 136315138;
      v14 = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I updatePlan error: %s", &v13, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      if (v5 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      }

      if (a2[1])
      {
        v8 = "succeeded";
      }

      else
      {
        v8 = "failed";
      }

      v13 = 136315138;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I updatePlan result: %s", &v13, 0xCu);
      v5 = *a2;
    }

    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v10 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsError::ResultIsError(v10);
      }

      v11 = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(v11);
    }
  }

  (*(*(a1 + 32) + 16))();
  return (*(**(v4 + 96) + 16))(*(v4 + 96));
}

uint64_t cellplan::CellularPlanControllerPhone::isProvisioningRemotePlan_sync(cellplan::CellularPlanControllerPhone *this)
{
  v1 = *(this + 32);
  if (v1 && (v2 = (*(*v1 + 96))(v1), v2 <= 2))
  {
    v3 = v2 << 32;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return v3 | v4;
}

uint64_t cellplan::CellularPlanControllerPhone::checkImeiMeidMatch_sync(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  *__p = 0u;
  v26 = 0u;
  *v23 = 0u;
  v24 = 0u;
  *v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  v3 = 408;
  if (*(a1 + 1224))
  {
    v3 = 1232;
  }

  sub_10027E51C(v19, (a1 + v3));
  if (*(a2 + 16) != 1 || BYTE8(v20) != 1)
  {
    goto LABEL_18;
  }

  v4 = *(a2 + 47);
  if (v4 >= 0)
  {
    v5 = *(a2 + 47);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  v6 = BYTE7(v22);
  if (SBYTE7(v22) < 0)
  {
    v6 = v21[1];
  }

  if (v5 == v6)
  {
    if (v4 >= 0)
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 24);
    }

    if ((SBYTE7(v22) & 0x80u) == 0)
    {
      v8 = v21;
    }

    else
    {
      v8 = v21[0];
    }

    v9 = memcmp(v7, v8, v5) == 0;
  }

  else
  {
LABEL_18:
    v9 = 0;
  }

  if (*(a2 + 48) == 1 && BYTE8(v22) == 1)
  {
    v10 = *(a2 + 79);
    if (v10 >= 0)
    {
      v11 = *(a2 + 79);
    }

    else
    {
      v11 = *(a2 + 64);
    }

    v12 = BYTE7(v24);
    if (SBYTE7(v24) < 0)
    {
      v12 = v23[1];
    }

    if (v11 == v12)
    {
      v15 = *(a2 + 56);
      v14 = (a2 + 56);
      v13 = v15;
      if (v10 >= 0)
      {
        v16 = v14;
      }

      else
      {
        v16 = v13;
      }

      if ((SBYTE7(v24) & 0x80u) == 0)
      {
        v17 = v23;
      }

      else
      {
        v17 = v23[0];
      }

      v9 |= memcmp(v16, v17, v11) == 0;
    }
  }

  if (SBYTE7(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v22) == 1)
  {
    if (SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
    }

    BYTE8(v22) = 0;
  }

  if (BYTE8(v20) == 1)
  {
    if (SBYTE7(v22) < 0)
    {
      operator delete(v21[0]);
    }

    BYTE8(v20) = 0;
  }

  if (SBYTE7(v20) < 0)
  {
    operator delete(v19[0]);
  }

  return v9 & 1;
}

void cellplan::CellularPlanControllerPhone::fetchActivePlans_sync(uint64_t a1, uint64_t a2, const void **a3, void *a4)
{
  if (!a4[2])
  {
    return;
  }

  v6 = a2;
  v8 = *(a1 + 256);
  if (v8)
  {
    v36 = 0;
    v37 = 0;
    v36 = (*(*v8 + 104))(v8);
    v37 = v9;
    ctu::hex(&v36, 0x10, v10);
    v11 = v30;
    if ((v30 & 0x80u) == 0)
    {
      v12 = v30;
    }

    else
    {
      v12 = v29;
    }

    v13 = *(a3 + 23);
    v14 = v13;
    if (v13 < 0)
    {
      v13 = a3[1];
    }

    if (v12 == v13)
    {
      if ((v30 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v14 >= 0)
      {
        v16 = a3;
      }

      else
      {
        v16 = *a3;
      }

      v17 = memcmp(p_p, v16, v12) == 0;
      if (v11 < 0)
      {
LABEL_23:
        operator delete(__p);
        if (!v17)
        {
          return;
        }

LABEL_24:
        v35 = 0;
        memset(v34, 0, sizeof(v34));
        v33 = 0u;
        std::string::operator=(v34, (*a4 + 32));
        v18 = *(a1 + 160);
        v22 = 0;
        v21 = 0uLL;
        sub_100F11F00(v26, &v33);
        v27 = 1;
        sub_100520D38(&__p, v6, &v21, v26, 0);
        (*(*v18 + 96))(v18, 1, &__p);
        if (v32[216] == 1)
        {
          sub_100E3A5D4(v32);
        }

        if (v31 < 0)
        {
          operator delete(v29);
        }

        if (v27 == 1)
        {
          sub_100E3A5D4(v26);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(v21);
        }

        v19 = *(a1 + 256);
        v20 = *a4;
        v23[0] = 0;
        if (*(v20 + 79) < 0)
        {
          sub_100005F2C(&v24, *(v20 + 56), *(v20 + 64));
        }

        else
        {
          v24 = *(v20 + 56);
          v25 = *(v20 + 72);
        }

        v23[0] = 1;
        (*(*v19 + 120))(v19, &v36, v20 + 32, v23);
        if (v23[0] == 1)
        {
          if (SHIBYTE(v25) < 0)
          {
            operator delete(v24);
          }

          v23[0] = 0;
        }

        (*(**(a1 + 96) + 16))(*(a1 + 96));
        sub_100E3A5D4(&v33);
        return;
      }
    }

    else
    {
      v17 = 0;
      if (v30 < 0)
      {
        goto LABEL_23;
      }
    }

    if (!v17)
    {
      return;
    }

    goto LABEL_24;
  }

  v33 = 0uLL;
  sub_1009222A0(a3, &v33);
  if (cellplan::CellularPlanControllerPhone::createRemoteProvisioningOperation_sync(a1, 0, &v33) && *a4 != a4 + 1)
  {
    v36 = 0;
    v37 = 0;
    sub_10032E870();
  }
}

void sub_10051F93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  v13 = *(v11 - 64);
  if (v13)
  {
    sub_100004A34(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t cellplan::CellularPlanControllerPhone::sendSubscriptionDetails_sync(uint64_t a1)
{
  (*(**(a1 + 144) + 152))(*(a1 + 144));
  v2 = *(**(a1 + 96) + 16);

  return v2();
}

uint64_t non-virtual thunk tocellplan::CellularPlanControllerPhone::sendSubscriptionDetails_sync(uint64_t a1)
{
  (*(**(a1 + 64) + 152))(*(a1 + 64));
  v2 = *(**(a1 + 16) + 16);

  return v2();
}

void cellplan::CellularPlanControllerPhone::sendActivateProfile_sync(uint64_t a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a3, *(a3 + 1));
  }

  else
  {
    __dst = *a3;
    v12 = *(a3 + 2);
  }

  sub_10011C9B0(v8, &__dst, 1);
  v7[0] = 0;
  v7[1] = 0;
  v6 = v7;
  v9 = a1;
  sub_1000224C8(v10, a4);
  v10[7] = 0;
  operator new();
}

void sub_10051FCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_100112FB8(va);
  sub_10000FF50(v20 + 8);
  sub_100009970(&a9, a10);
  sub_100009970(&a13, a14);
  if (*(v21 - 57) < 0)
  {
    operator delete(*(v21 - 80));
  }

  _Unwind_Resume(a1);
}

void cellplan::CellularPlanControllerPhone::clearPendingPlanNotification_sync(uint64_t a1, void *a2)
{
  v2 = a2;
  if (*(a1 + 1208) != 1)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 1135);
  if (v4 >= 0)
  {
    v5 = *(a1 + 1135);
  }

  else
  {
    v5 = *(a1 + 1120);
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    goto LABEL_14;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 1112);
  }

  else
  {
    v8 = *(a1 + 1112);
  }

  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(v8, a2, v5))
  {
LABEL_14:
    (***(a1 + 128))(&v19);
    ServiceMap = Registry::getServiceMap(v19);
    v10 = ServiceMap;
    if ((v11 & 0x8000000000000000) != 0)
    {
      v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
      v13 = 5381;
      do
      {
        v11 = v13;
        v14 = *v12++;
        v13 = (33 * v13) ^ v14;
      }

      while (v14);
    }

    std::mutex::lock(ServiceMap);
    v21 = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, &v21);
    if (v15)
    {
      v17 = v15[3];
      v16 = v15[4];
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v10);
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
LABEL_22:
        if (v20)
        {
          sub_100004A34(v20);
        }

        if (v17)
        {
          (*(*v17 + 24))(v17, v2);
        }

        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        return;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_22;
  }

  sub_100503374(a1 + 1112);
}

void sub_10051FF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void *cellplan::CellularPlanControllerPhone::getPhoneNumberForSlot_sync@<X0>(void *result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v3 = result[110];
  if (!v3)
  {
    return sub_10000501C(a3, "");
  }

  v4 = result + 110;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v4 == result + 110 || *(v4 + 8) > a2)
  {
    return sub_10000501C(a3, "");
  }

  if (*(v4 + 87) < 0)
  {
    return sub_100005F2C(a3, v4[8], v4[9]);
  }

  v5 = *(v4 + 4);
  a3[2] = v4[10];
  *a3 = v5;
  return result;
}

uint64_t sub_100520028(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void cellplan::CellularPlanControllerPhone::debugRemoteFetchProfileOnly(uint64_t a1, const void **a2)
{
  sub_10005C7A4(&v3 + 1, a2);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

const void **cellplan::CellularPlanControllerPhone::debugRemoteVinylInfo(uint64_t a1, uint64_t a2)
{
  v3 = 328;
  if (*(a1 + 1224))
  {
    v3 = 1368;
  }

  v4 = a1 + v3;
  v5 = *(a1 + v3 + 32);
  if (*(v4 + 40) == v5 || (*(v4 + 24) & 1) == 0)
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_1017733AC();
    }

    v11 = 0;
    (*(a2 + 16))(a2, &v11, 0);
    return sub_10001021C(&v11);
  }

  else
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(a1 + 144);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_1005202B0;
    v10[3] = &unk_101E54198;
    v10[4] = a2;
    return (*(*v8 + 128))(v8, v6, v7, v10);
  }
}

void sub_1005202B0(uint64_t a1, unsigned __int8 *a2)
{
  v29 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v29 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v29 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v29 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a2;
  if (v7 == 1)
  {
    if (a2[8] == 1)
    {
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      sub_100F11B6C(&v30, (a2 + 16));
      v28[0] = 0;
      v28[1] = 0;
      ctu::TextConverter::TextConverter(v28);
      ctu::TextConverter::pushConversion();
      ctu::TextConverter::setSource(v28, &v31, 0x10uLL);
      ctu::TextConverter::readChars(v28, 0x7FFFFFFFuLL);
      if (v25 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v26 = xpc_string_create(p_p);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      v22[0] = &v29;
      v22[1] = "CSN";
      sub_10000F688(v22, &v26, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v26);
      v26 = 0;
      if (v25 < 0)
      {
        operator delete(__p);
      }

      v20 = xpc_int64_create(SHIDWORD(v30));
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      __p = &v29;
      v24 = "Available";
      sub_10000F688(&__p, &v20, &v21);
      xpc_release(v21);
      v21 = 0;
      xpc_release(v20);
      v20 = 0;
      v18 = xpc_int64_create(SDWORD1(v30));
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      __p = &v29;
      v24 = "SlotId";
      sub_10000F688(&__p, &v18, &v19);
      xpc_release(v19);
      v19 = 0;
      xpc_release(v18);
      v18 = 0;
      if (v35 == 1)
      {
        v16 = xpc_int64_create(0x84BDA12F684BDA13 * ((v34 - *(&v33 + 1)) >> 3));
        if (!v16)
        {
          v16 = xpc_null_create();
        }

        __p = &v29;
        v24 = "NumProfiles";
        sub_10000F688(&__p, &v16, &v17);
        xpc_release(v17);
        v17 = 0;
        xpc_release(v16);
        v16 = 0;
        v22[0] = 0;
        if ((v35 & 1) == 0)
        {
          sub_1000D1644();
        }

        sub_100466C6C(&v33 + 1, v22);
        ctu::cf_to_xpc(v22[0], v10);
        __p = &v29;
        v24 = "Profiles";
        sub_10000F688(&__p, &v14, &v15);
        xpc_release(v15);
        v15 = 0;
        xpc_release(v14);
        v14 = 0;
        sub_100010250(v22);
      }

      ctu::TextConverter::~TextConverter(v28);
      if (v35 == 1)
      {
        __p = &v33 + 8;
        sub_100112120(&__p);
      }

      if (SBYTE7(v33) < 0)
      {
        operator delete(v32);
      }
    }
  }

  else if (v7 != 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
  }

  v11 = *(a1 + 32);
  __p = v29;
  if (v29)
  {
    xpc_retain(v29);
  }

  else
  {
    __p = xpc_null_create();
  }

  xpc::bridge(&__p, v12);
  sub_100010180(&v13, &v30);
  (*(v11 + 16))(v11, &v13, 0);
  sub_10001021C(&v13);
  sub_10000A1EC(&v30);
  xpc_release(__p);
  xpc_release(v29);
}

void sub_1005206E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, xpc_object_t object, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_1005207F4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  if (v4 == 1 && (v5 & 1) != 0)
  {
    if ((cellplan::operator==() & 1) == 0)
    {
LABEL_4:
      sub_10053068C(a1, a2);
      return 1;
    }
  }

  else if (v4 != v5)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_10052085C(uint64_t a1)
{
  sub_100220B4C(a1 + 32);

  return sub_10052089C(a1);
}

uint64_t sub_10052089C(uint64_t a1)
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

void sub_10052091C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100520970(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100520970(uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; sub_1005209C4(result, i))
  {
    i -= 216;
  }

  *(result + 8) = a2;
}

void sub_1005209C4(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 176);
  sub_100112048(&v3);
  if (*(a2 + 167) < 0)
  {
    operator delete(*(a2 + 144));
  }

  if (*(a2 + 127) < 0)
  {
    operator delete(*(a2 + 104));
  }

  if (*(a2 + 64) == 1)
  {
    if (*(a2 + 95) < 0)
    {
      operator delete(*(a2 + 72));
    }

    *(a2 + 64) = 0;
  }

  if (*(a2 + 32) == 1)
  {
    if (*(a2 + 63) < 0)
    {
      operator delete(*(a2 + 40));
    }

    *(a2 + 32) = 0;
  }

  if (*(a2 + 31) < 0)
  {
    operator delete(*(a2 + 8));
  }
}

uint64_t sub_100520A6C(uint64_t a1, _BYTE *a2, __int128 *a3, __int128 *a4)
{
  *a1 = *a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v7;
  }

  v8 = *(a3 + 3);
  *(a1 + 40) = 0;
  *(a1 + 32) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_10027E628((a1 + 40), *(a3 + 4), *(a3 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(a3 + 5) - *(a3 + 4)) >> 3));
  v9 = *(a3 + 7);
  *(a1 + 72) = *(a3 + 16);
  *(a1 + 64) = v9;
  sub_10027E51C((a1 + 80), a4);
  return a1;
}

uint64_t sub_100520B54(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  v3 = *(a2 + 8);
  *(a1 + 32) = *(a2 + 24);
  *(a1 + 16) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v4 = *(a2 + 32);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 40) = v4;
  *(a1 + 48) = 0;
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 64) = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 72);
  *(a1 + 72) = v5;
  *(a1 + 8) = 1;
  *(a1 + 88) = 0;
  sub_10027E51C((a1 + 96), (a2 + 80));
  *(a1 + 88) = 1;
  return a1;
}

_BYTE *sub_100520C0C(_BYTE *a1)
{
  if (*a1 == 1)
  {
    sub_100520C48(a1);
  }

  return a1;
}

void sub_100520C48(uint64_t a1)
{
  v2 = (a1 + 40);
  sub_100112048(&v2);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  *a1 = 0;
}

uint64_t sub_100520C94(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 120) == 1)
    {
      if (*(a1 + 151) < 0)
      {
        operator delete(*(a1 + 128));
      }

      *(a1 + 120) = 0;
    }

    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 56) == 1)
    {
      if (*(a1 + 87) < 0)
      {
        operator delete(*(a1 + 64));
      }

      *(a1 + 56) = 0;
    }

    if (*(a1 + 24) == 1)
    {
      if (*(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      *(a1 + 24) = 0;
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100520D38(uint64_t a1, int a2, __int128 *a3, uint64_t a4, char a5)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v8;
  }

  sub_100520DC8((a1 + 32), a4);
  *(a1 + 256) = a5;
  return a1;
}

void sub_100520DAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100520DC8(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[216] = 0;
  if (*(a2 + 216) == 1)
  {
    sub_100F11F00(a1, a2);
    a1[216] = 1;
  }

  return a1;
}

void sub_100520E10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 216) == 1)
  {
    sub_100E3A5D4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100520E30(uint64_t a1)
{
  v3 = (a1 + 200);
  sub_100112048(&v3);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  sub_10027E6B0(a1 + 32);
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

void sub_100520EA4(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1000DD7C8(a1, i))
  {
    i -= 96;
  }

  *(a1 + 8) = a2;
}

uint64_t sub_100520EF8(char **a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_1000DD644(a1, v6);
  }

  v13 = 0;
  v14 = 96 * v2;
  sub_1000DDB98((96 * v2), a2);
  v15 = 96 * v2 + 96;
  v7 = a1[1];
  v8 = (96 * v2 + *a1 - v7);
  sub_100521028(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100521174(&v13);
  return v12;
}

void sub_100521014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100521174(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100521028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v16 = a4;
    LOBYTE(v14) = 1;
    while (v5 != a3)
    {
      sub_1000DD7C8(a1, v5);
      v5 += 96;
    }
  }

  return sub_10052113C(v13);
}

uint64_t sub_10052113C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000DD774(a1);
  }

  return a1;
}

uint64_t sub_100521174(uint64_t a1)
{
  sub_1005211AC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005211AC(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    sub_1000DD7C8(v5, v4 - 96);
  }
}

uint64_t sub_1005211F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 39) < 0)
  {
    sub_100005F2C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v4 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v4;
  }

  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v5 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v5;
  }

  *(a1 + 64) = *(a2 + 64);
  if (*(a2 + 95) < 0)
  {
    sub_100005F2C((a1 + 72), *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v6 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v6;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v7 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v7;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v9 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v9;
  }

  return a1;
}

void sub_10052131C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100521398(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_10016E9C0(a1 + 16, a2 + 16);
  sub_10016E9C0(a1 + 48, a2 + 48);
  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v4 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v4;
  }

  *(a1 + 104) = *(a2 + 104);
  sub_10016E9C0(a1 + 112, a2 + 112);
  return a1;
}

void sub_100521414(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    *(v1 + 48) = 0;
  }

  if (*(v1 + 16) == 1)
  {
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    *(v1 + 16) = 0;
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100521480(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    *(a1 + 112) = 0;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 48) = 0;
  }

  if (*(a1 + 16) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 16) = 0;
  }

  return a1;
}

uint64_t sub_100521514(uint64_t a1)
{
  if (*(a1 + 232) == 1)
  {
    v3 = (a1 + 208);
    sub_100522C04(&v3);
    v3 = (a1 + 184);
    sub_100522C58(&v3);
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

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

_BYTE *sub_1005215FC(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  sub_10006F264((v4 + 24), (a2 + 24));
  result = sub_10006F264((v4 + 56), (a2 + 56));
  *(v4 + 88) = *(a2 + 44);
  *(a1 + 8) = v4 + 96;
  return result;
}

uint64_t sub_1005216C8(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100280E54(a1, v6);
  }

  v7 = 96 * v2;
  v15 = 0;
  v16 = v7;
  v17 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  sub_10006F264((v7 + 24), (a2 + 24));
  sub_10006F264((v7 + 56), (a2 + 56));
  *(v7 + 88) = *(a2 + 44);
  *&v17 = v17 + 96;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_100521870(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100521A48(&v15);
  return v14;
}

void sub_100521820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (*(v7 + 48) == 1 && *(v7 + 47) < 0)
  {
    operator delete(*(v7 + 24));
  }

  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  sub_100521A48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100521870(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      sub_100521934(a4, v7);
      v7 += 6;
      a4 = v12 + 96;
      v12 += 96;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_1005219C8(a1, v5);
      v5 += 96;
    }
  }

  return sub_100280C60(v9);
}

uint64_t sub_100521934(uint64_t result, __int128 *a2)
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
    v3 = *(a2 + 24);
    *(result + 40) = *(a2 + 5);
    *(result + 24) = v3;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(result + 48) = 1;
  }

  *(result + 56) = 0;
  *(result + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = *(a2 + 56);
    *(result + 72) = *(a2 + 9);
    *(result + 56) = v4;
    a2[4] = 0uLL;
    *(a2 + 7) = 0;
    *(result + 80) = 1;
  }

  *(result + 88) = *(a2 + 44);
  return result;
}

void sub_1005219C8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 80) == 1 && *(a2 + 79) < 0)
  {
    operator delete(*(a2 + 56));
  }

  if (*(a2 + 48) == 1 && *(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_100521A48(uint64_t a1)
{
  sub_100521A80(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100521A80(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 96;
    sub_1005219C8(v5, v4 - 96);
  }
}

uint64_t sub_100521AC8(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 87) < 0)
    {
      operator delete(*(a1 + 64));
    }

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

__int128 *sub_100521B2C(__int128 *a1)
{
  if (*(a1 + 3) && *(a1 + 7))
  {
    sub_100521D6C(v5, (a1 + 2));
    v6 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 16);
    operator new();
  }

  sub_100521DEC((a1 + 2));
  v2 = *(a1 + 3);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_100521C60(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t *sub_100521C6C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100521DEC(v1);
    operator delete();
  }

  return a1;
}

uint64_t *sub_100521CC4(uint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a1 + 48);
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_100022DB4();
  }

  (*(*v1 + 48))(v1, &v4);
  if (*(&v4 + 1))
  {
    sub_100004A34(*(&v4 + 1));
  }

  return sub_100521C6C(&v3);
}

void sub_100521D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100521C6C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100521D6C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100521DEC(uint64_t a1)
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

__int128 *sub_100521E6C(__int128 *a1)
{
  if (*(a1 + 3) && *(a1 + 7))
  {
    sub_1005220AC(v5, (a1 + 2));
    v6 = *a1;
    *a1 = 0;
    *(a1 + 1) = 0;
    v7 = *(a1 + 16);
    operator new();
  }

  sub_10052212C((a1 + 2));
  v2 = *(a1 + 3);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 1);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_100521FA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t *sub_100521FAC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_10052212C(v1);
    operator delete();
  }

  return a1;
}

uint64_t *sub_100522004(uint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a1 + 48);
  v1 = *(a1 + 24);
  if (!v1)
  {
    sub_100022DB4();
  }

  (*(*v1 + 48))(v1, &v4);
  if (*(&v4 + 1))
  {
    sub_100004A34(*(&v4 + 1));
  }

  return sub_100521FAC(&v3);
}

void sub_10052208C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100521FAC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1005220AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10052212C(uint64_t a1)
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

void sub_1005221AC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) < a4)
  {
    sub_100522308(a1);
    if (a4 <= 0x1C71C71C71C71C7)
    {
      v9 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
      {
        v10 = 0x1C71C71C71C71C7;
      }

      else
      {
        v10 = v9;
      }

      sub_100522348(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 4) >= a4)
  {
    sub_100522530(&v14, a2, a3, v8);
    sub_1005225C8(a1, v12);
  }

  else
  {
    sub_100522530(&v13, a2, a2 + v11, v8);
    a1[1] = sub_100522398(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_100522308(uint64_t *a1)
{
  if (*a1)
  {
    sub_1005225C8(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100522348(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    sub_100522680(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_100522398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100521398(v4, v6);
      v6 += 144;
      v4 = v11 + 144;
      v11 += 144;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_100522438(v8);
  return v4;
}

uint64_t sub_100522438(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100522484(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_100522484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 32) == 1)
      {
        if (*(v6 - 1) < 0)
        {
          operator delete(*(v6 - 24));
        }

        *(v6 - 32) = 0;
      }

      if (*(v6 - 41) < 0)
      {
        operator delete(*(v6 - 64));
      }

      if (*(v6 - 96) == 1)
      {
        if (*(v6 - 65) < 0)
        {
          operator delete(*(v6 - 88));
        }

        *(v6 - 96) = 0;
      }

      if (*(v6 - 128) == 1)
      {
        if (*(v6 - 97) < 0)
        {
          operator delete(*(v6 - 120));
        }

        *(v6 - 128) = 0;
      }

      v6 -= 144;
    }

    while (v6 != a5);
  }
}

uint64_t sub_100522530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    sub_10016E810(a4 + 16, v5 + 16);
    sub_10016E810(a4 + 48, v5 + 48);
    std::string::operator=((a4 + 80), (v5 + 80));
    *(a4 + 104) = *(v5 + 104);
    sub_10016E810(a4 + 112, v5 + 112);
    a4 += 144;
    v5 += 144;
  }

  while (v5 != v6);
  return v6;
}

void sub_1005225C8(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 144)
  {
    if (*(i - 32) == 1)
    {
      if (*(i - 1) < 0)
      {
        operator delete(*(i - 24));
      }

      *(i - 32) = 0;
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }

    if (*(i - 96) == 1)
    {
      if (*(i - 65) < 0)
      {
        operator delete(*(i - 88));
      }

      *(i - 96) = 0;
    }

    if (*(i - 128) == 1)
    {
      if (*(i - 97) < 0)
      {
        operator delete(*(i - 120));
      }

      *(i - 128) = 0;
    }
  }

  *(a1 + 8) = a2;
}

void sub_100522680(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1005226DC(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_100522838(a1);
    if (a4 <= 0x186186186186186)
    {
      v9 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
      {
        v10 = 0x186186186186186;
      }

      else
      {
        v10 = v9;
      }

      sub_100522878(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0xCF3CF3CF3CF3CF3DLL * (v11 >> 3) >= a4)
  {
    sub_100522A50(&v14, a2, a3, v8);
    sub_100522B00(a1, v12);
  }

  else
  {
    sub_100522A50(&v13, a2, a2 + v11, v8);
    a1[1] = sub_1005228C8(a1, a2 + v11, a3, a1[1]);
  }
}

void sub_100522838(uint64_t *a1)
{
  if (*a1)
  {
    sub_100522B00(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_100522878(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    sub_100522BA8(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_1005228C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1005211F4(v4, v6);
      v6 += 168;
      v4 = v11 + 168;
      v11 += 168;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_100522968(v8);
  return v4;
}

uint64_t sub_100522968(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1005229B4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1005229B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 24));
      }

      if (*(v6 - 25) < 0)
      {
        operator delete(*(v6 - 48));
      }

      if (*(v6 - 49) < 0)
      {
        operator delete(*(v6 - 72));
      }

      if (*(v6 - 73) < 0)
      {
        operator delete(*(v6 - 96));
      }

      if (*(v6 - 105) < 0)
      {
        operator delete(*(v6 - 128));
      }

      if (*(v6 - 129) < 0)
      {
        operator delete(*(v6 - 152));
      }

      v6 -= 168;
    }

    while (v6 != a5);
  }
}

uint64_t sub_100522A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    std::string::operator=((a4 + 16), (v5 + 16));
    std::string::operator=((a4 + 40), (v5 + 40));
    *(a4 + 64) = *(v5 + 64);
    std::string::operator=((a4 + 72), (v5 + 72));
    std::string::operator=((a4 + 96), (v5 + 96));
    std::string::operator=((a4 + 120), (v5 + 120));
    std::string::operator=((a4 + 144), (v5 + 144));
    a4 += 168;
    v5 += 168;
  }

  while (v5 != v6);
  return v6;
}

void sub_100522B00(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 168)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }

    if (*(i - 25) < 0)
    {
      operator delete(*(i - 48));
    }

    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
    }

    if (*(i - 73) < 0)
    {
      operator delete(*(i - 96));
    }

    if (*(i - 105) < 0)
    {
      operator delete(*(i - 128));
    }

    if (*(i - 129) < 0)
    {
      operator delete(*(i - 152));
    }
  }

  *(a1 + 8) = a2;
}

void sub_100522BA8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x186186186186187)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_100522C04(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100522B00(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100522C58(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005225C8(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100522CAC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v3 = (a1 + 96);
    sub_100522C04(&v3);
    v3 = (a1 + 72);
    sub_100522C58(&v3);
    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      *(a1 + 40) = 0;
    }

    if (*(a1 + 8) == 1)
    {
      if (*(a1 + 39) < 0)
      {
        operator delete(*(a1 + 16));
      }

      *(a1 + 8) = 0;
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100522D48(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 175) < 0)
    {
      operator delete(*(a1 + 152));
    }

    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    *(a1 + 104) = 0;
  }

  v3 = (a1 + 80);
  sub_1000087B4(&v3);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100522DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1000CE3D4();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3) > v5)
  {
    v5 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v8 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    sub_10016F23C(a1, v8);
  }

  v15 = 0;
  v16 = 88 * v4;
  sub_100522F54((88 * v4), a2, a3, a4);
  v17 = (88 * v4 + 88);
  v9 = *(a1 + 8);
  v10 = 88 * v4 + *a1 - v9;
  sub_100284388(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100284540(&v15);
  return v14;
}

void sub_100522F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100284540(va);
  _Unwind_Resume(a1);
}

void *sub_100522F54(void *__dst, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    v9 = *(a2 + 16);
  }

  v13[0] = 0;
  if (*a3 == 1)
  {
    *v14 = *(a3 + 8);
    v15 = *(a3 + 24);
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 8) = 0;
    v13[0] = 1;
  }

  v10[0] = 0;
  if (*a4 == 1)
  {
    *__p = *(a4 + 8);
    v12 = *(a4 + 24);
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    v10[0] = 1;
  }

  sub_1002842CC(__dst, v8, v13, v10);
  if (v10[0] == 1)
  {
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }

    v10[0] = 0;
  }

  if (v13[0] == 1)
  {
    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    v13[0] = 0;
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v8[0]);
  }

  return __dst;
}

void sub_1005230AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (a12 == 1)
  {
    sub_101772D60();
  }

  sub_101773D94(va, &a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005230E0(uint64_t a1)
{
  if (*(a1 + 720) == 1 && *(a1 + 719) < 0)
  {
    operator delete(*(a1 + 696));
  }

  if (*(a1 + 688) == 1)
  {
    if (*(a1 + 656) == 1)
    {
      if (*(a1 + 687) < 0)
      {
        operator delete(*(a1 + 664));
      }

      *(a1 + 656) = 0;
    }

    if (*(a1 + 624) == 1)
    {
      if (*(a1 + 655) < 0)
      {
        operator delete(*(a1 + 632));
      }

      *(a1 + 624) = 0;
    }

    if (*(a1 + 623) < 0)
    {
      operator delete(*(a1 + 600));
    }

    v3 = (a1 + 568);
    sub_10016F470(&v3);
    if (*(a1 + 567) < 0)
    {
      operator delete(*(a1 + 544));
    }

    if (*(a1 + 512) == 1)
    {
      if (*(a1 + 543) < 0)
      {
        operator delete(*(a1 + 520));
      }

      *(a1 + 512) = 0;
    }

    if (*(a1 + 480) == 1)
    {
      if (*(a1 + 511) < 0)
      {
        operator delete(*(a1 + 488));
      }

      *(a1 + 480) = 0;
    }

    if (*(a1 + 479) < 0)
    {
      operator delete(*(a1 + 456));
    }

    v3 = (a1 + 424);
    sub_10016F470(&v3);
    if (*(a1 + 423) < 0)
    {
      operator delete(*(a1 + 400));
    }

    if (*(a1 + 399) < 0)
    {
      operator delete(*(a1 + 376));
    }

    if (*(a1 + 344) == 1)
    {
      if (*(a1 + 375) < 0)
      {
        operator delete(*(a1 + 352));
      }

      *(a1 + 344) = 0;
    }
  }

  return sub_10016E64C(a1);
}

uint64_t sub_100523248(uint64_t a1)
{
  if (*(a1 + 344) == 1)
  {
    sub_10016F3D4(a1 + 200);
    sub_10016F3D4(a1 + 56);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*a1 == 1)
    {
      if (*(a1 + 31) < 0)
      {
        operator delete(*(a1 + 8));
      }

      *a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_1005232B8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  sub_10016EE9C(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(a1 + 48) = *(a2 + 48);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 56) = v5;
  *(a2 + 79) = 0;
  *(a2 + 56) = 0;
  sub_10016E3EC(a1 + 80, (a2 + 5));
  sub_10016E3EC(a1 + 112, (a2 + 7));
  return a1;
}

_BYTE *sub_100523378(_BYTE *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v6 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v6;
  }

  v7 = *(a2 + 3);
  *(__dst + 4) = 0;
  *(__dst + 3) = v7;
  *(__dst + 5) = 0;
  *(__dst + 6) = 0;
  sub_10027E628(__dst + 4, *(a2 + 4), *(a2 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  v8 = *(a2 + 7);
  *(__dst + 16) = *(a2 + 16);
  *(__dst + 7) = v8;
  sub_10027E51C(__dst + 72, a3);
  return __dst;
}

uint64_t sub_100523454(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v4 = *(a2 + 3);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  *(a1 + 32) = a2[2];
  *(a1 + 48) = *(a2 + 6);
  a2[2] = 0uLL;
  *(a2 + 6) = 0;
  v5 = *(a2 + 7);
  *(a1 + 64) = *(a2 + 16);
  *(a1 + 56) = v5;
  *(a1 + 72) = 1;
  sub_10027E51C((a1 + 80), (a2 + 72));
  *(a1 + 216) = 1;
  return a1;
}

uint64_t sub_1005234F0(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v3 = (a1 + 32);
    sub_100112048(&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_100523548(uint64_t a1)
{
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    *(a1 + 128) = 0;
  }

  if (*(a1 + 96) == 1)
  {
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    *(a1 + 96) = 0;
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v3 = (a1 + 32);
  sub_100112048(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005235F4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100523648(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100523648(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
      }

      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
      }

      v4 = v3 - 11;
      if (*(v3 - 65) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 11;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_1005236C0(uint64_t a1)
{
  if (*a1 == 1)
  {
    v3 = (a1 + 208);
    sub_100112048(&v3);
    if (*(a1 + 199) < 0)
    {
      operator delete(*(a1 + 176));
    }

    sub_10027E6B0(a1 + 40);
    if (*(a1 + 8) == 1)
    {
      if (*(a1 + 39) < 0)
      {
        operator delete(*(a1 + 16));
      }

      *(a1 + 8) = 0;
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100523744(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v4;
  }

  *(a1 + 32) = *(a2 + 6);
  sub_10016E9C0(a1 + 40, (a2 + 2));
  result = sub_10016E9C0(a1 + 72, (a2 + 4));
  *(a1 + 104) = *(a2 + 24);
  *a1 = 1;
  return result;
}

void sub_1005237C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    *(v1 + 40) = 0;
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_100523884(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100523958);
  __cxa_rethrow();
}

void sub_1005238C4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100523918(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100523958(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100523984(ServiceManager::Service *this)
{
  *this = off_101E54340;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1005239E0(ServiceManager::Service *this)
{
  *this = off_101E54340;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

void sub_100523A60(uint64_t a1, atomic_uint **a2)
{
  if (a2)
  {
    sub_100523A60(a1, *a2);
    sub_100523A60(a1, a2[1]);
    sub_100083940(a2 + 6);

    operator delete(a2);
  }
}

void *sub_100523ABC(void *a1)
{
  *a1 = off_101E543C0;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100523B08(void *a1)
{
  *a1 = off_101E543C0;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100523BE8(uint64_t result, uint64_t a2)
{
  *a2 = off_101E543C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100523C28(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100523C38(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100523C78(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[3];
      sub_100004A34(v5);
      if (v6)
      {
        (***(v4 + 128))(&v16);
        *__p = v16;
        v16 = 0uLL;
        subscriber::makeSimSlotRange();
        if (__p[1])
        {
          sub_100004A34(__p[1]);
        }

        if (*(&v16 + 1))
        {
          sub_100004A34(*(&v16 + 1));
        }

        v7 = v17;
        v8 = v18;
        if (v17 != v18)
        {
          v9 = v19;
          do
          {
            if (v9(*v7))
            {
              break;
            }

            ++v7;
          }

          while (v7 != v8);
          v10 = v18;
          while (v7 != v10)
          {
            v11 = *v7;
            (***(v4 + 128))(&v13);
            v16 = v13;
            v13 = 0uLL;
            PersonalityIdFromSlotId();
            v12 = sub_100007A6C(v4 + 848, __p);
            if (SHIBYTE(v15) < 0)
            {
              operator delete(__p[0]);
            }

            if (*(&v16 + 1))
            {
              sub_100004A34(*(&v16 + 1));
            }

            if (*(&v13 + 1))
            {
              sub_100004A34(*(&v13 + 1));
            }

            if (v4 + 856 == v12)
            {
              *&v16 = 0;
              __p[1] = 0;
              v15 = 0;
              __p[0] = &__p[1];
              cellplan::CellularPlanControllerPhone::handleEntitlementChanged(v4, v11, &v16, __p);
              sub_10006DCAC(__p, __p[1]);
            }

            else
            {
              cellplan::CellularPlanControllerPhone::handleEntitlementChanged(v4, v11, (v12 + 56), v12 + 64);
            }

            do
            {
              ++v7;
            }

            while (v7 != v8 && (v9(*v7) & 1) == 0);
          }
        }
      }
    }
  }
}

void sub_100523E78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100523EE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10052401C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005240CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54440;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100524104(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v7 = *v3;
  v8 = v3[2];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_10010A62C(v3, a2);
  v4 = a1[3];
  v5 = a1[4];
  v6 = (a1[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6, &v7);
  v9 = &v7;
  sub_1000B2AF8(&v9);
}

void sub_1005241A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1005241C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005242FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005243AC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E544C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1005243E4(void *a1, const object *a2)
{
  v3 = a1[1];
  v16 = 0;
  v4 = *v3->var0.__rep_.__s.__data_;
  data = v3[1].var0.__rep_.__l.__data_;
  v11 = *(&v3->var0.__rep_.__l + 2);
  *__p = v4;
  v3->var0.__rep_.__l.__size_ = 0;
  *(&v3->var0.__rep_.__l + 2) = 0;
  v3->var0.__rep_.__l.__data_ = 0;
  v12 = data;
  v13 = *&v3[1].var0.__rep_.__l.__size_;
  size = v3[2].var0.__rep_.__l.__size_;
  v14 = v3[2].var0.__rep_.__l.__data_;
  *(&v3[1].var0.__rep_.__l + 2) = 0;
  v3[2].var0.__rep_.__l.__data_ = 0;
  v3[1].var0.__rep_.__l.__size_ = 0;
  LODWORD(v16) = *(&v3[2].var0.__rep_.__l + 4);
  v15 = size;
  read_rest_value(v3, a2);
  v7 = a1[3];
  v8 = a1[4];
  v9 = (a1[2] + (v8 >> 1));
  if (v8)
  {
    v7 = *(*v9 + v7);
  }

  v7(v9, __p);
  v17 = &v13;
  sub_100112048(&v17);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_1005244DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100524614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005246C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54540;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100524704(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100524750(uint64_t a1, RemoteDeviceIdentifiers *a2)
{
  v4 = *a1;
  v17 = 0;
  *__p = 0u;
  v16 = 0u;
  *v13 = 0u;
  v14 = 0u;
  *v11 = 0u;
  v12 = 0u;
  *v9 = 0u;
  v10 = 0u;
  sub_10027E51C(v9, v4);
  cellplan::read_rest_value(v4, a2, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = (*(a1 + 8) + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, v9);
  if (SBYTE7(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (BYTE8(v12) == 1)
  {
    if (SBYTE7(v14) < 0)
    {
      operator delete(v13[0]);
    }

    BYTE8(v12) = 0;
  }

  if (BYTE8(v10) == 1)
  {
    if (SBYTE7(v12) < 0)
    {
      operator delete(v11[0]);
    }

    BYTE8(v10) = 0;
  }

  if (SBYTE7(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_100524998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100524A48(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E545C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100524A80(void *a1, xpc_object_t *a2, uint64_t a3)
{
  v4 = a1[1];
  v8 = *v4;
  v9 = v4[2];
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  sub_100524B8C(v4, a2);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v5(v7, &v8);
  v10 = &v8;
  sub_10052091C(&v10);
}

void sub_100524B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_10052091C(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_100524B40(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100524B8C(uint64_t *a1, xpc_object_t *a2)
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

  sub_100520970(a1, *a1);
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

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    v9[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v9[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, v9, count);
    xpc_release(v9[0]);
    for (i = v12; i != object[1] || v11 != object[0]; i = ++v12)
    {
      v9[0] = &v11;
      v9[1] = i;
      v6 = a1[1];
      if (v6 >= a1[2])
      {
        v7 = sub_100524DD4(a1);
      }

      else
      {
        *(v6 + 208) = 0;
        *(v6 + 176) = 0u;
        *(v6 + 192) = 0u;
        *(v6 + 144) = 0u;
        *(v6 + 160) = 0u;
        *(v6 + 112) = 0u;
        *(v6 + 128) = 0u;
        *(v6 + 80) = 0u;
        *(v6 + 96) = 0u;
        *(v6 + 48) = 0u;
        *(v6 + 64) = 0u;
        *(v6 + 16) = 0u;
        *(v6 + 32) = 0u;
        *v6 = 0u;
        v7 = v6 + 216;
      }

      a1[1] = v7;
      sub_100008EF0(v9, &v8);
      cellplan::read_rest_value();
      xpc_release(v8);
    }

    xpc_release(object[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_100524D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_100524DD4(unint64_t *a1)
{
  v1 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if (v1 + 1 > 0x12F684BDA12F684)
  {
    sub_1000CE3D4();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v4 = 0x12F684BDA12F684;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_100524F24(a1, v4);
  }

  v5 = 216 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0;
  *&v14 = 216 * v1 + 216;
  v6 = a1[1];
  v7 = 216 * v1 + *a1 - v6;
  sub_100524F80(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_100525194(&v12);
  return v11;
}

void sub_100524F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100525194(va);
  _Unwind_Resume(a1);
}

void sub_100524F24(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_100524F80(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v16 = a4;
  v17 = a4;
  v14[0] = a1;
  v14[1] = &v16;
  v14[2] = &v17;
  v15 = 0;
  if (a2 == a3)
  {
    LOBYTE(v15) = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 9;
    do
    {
      v9 = v8 - 9;
      *v4 = *(v8 - 144);
      sub_10027E51C((v4 + 8), (v8 - 136));
      if (*(v8 + 23) < 0)
      {
        sub_100005F2C((v4 + 144), *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        *(v4 + 160) = *(v8 + 2);
        *(v4 + 144) = v10;
      }

      v11 = *(v8 + 3);
      *(v4 + 176) = 0;
      *(v4 + 168) = v11;
      *(v4 + 184) = 0;
      *(v4 + 192) = 0;
      sub_10027E628((v4 + 176), *(v8 + 4), *(v8 + 5), 0x2E8BA2E8BA2E8BA3 * ((*(v8 + 5) - *(v8 + 4)) >> 3));
      v12 = *(v8 + 7);
      *(v4 + 208) = *(v8 + 16);
      *(v4 + 200) = v12;
      v4 = v17 + 216;
      v17 += 216;
      v8 = (v8 + 216);
    }

    while ((v9 + 216) != a3);
    LOBYTE(v15) = 1;
    while (v6 != a3)
    {
      sub_1005209C4(a1, v6);
      v6 += 216;
    }
  }

  return sub_100525108(v14);
}

void sub_1005250C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10027E6B0(v9);
  sub_100525108(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100525108(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100525140(a1);
  }

  return a1;
}

void sub_100525140(uint64_t *a1)
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
      v3 -= 216;
      sub_1005209C4(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t sub_100525194(uint64_t a1)
{
  sub_1005251CC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005251CC(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 216;
    sub_1005209C4(v5, v4 - 216);
  }
}

void sub_100525300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005253B0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54640;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1005253E8(void *a1, xpc_object_t *a2)
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

uint64_t sub_1005254D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100525524(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E546C0;
  v5[1] = v3;
  v5[3] = v5;
  sub_1005257AC(v5, a1);
  sub_10052089C(v5);
  return a1;
}

uint64_t sub_100525628(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E546C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_10052565C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005256A8(uint64_t *a1, uint64_t a2)
{
  v5 = 0;
  if (*a2 == 1)
  {
    cellplan::write_rest_value((a2 + 8), a2);
  }

  else
  {
    v5 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/cellular_plan_remotesubscription_info");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_100525768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1005257AC(void *result, void *a2)
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

void sub_100525A0C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_100525A88(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E54750;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_100525AB4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_null)
  {
    if (*(v3 + 1))
    {
      *(v3 + 1) = 0;
    }
  }

  else
  {
    if ((*(v3 + 1) & 1) == 0)
    {
      *v3 = 256;
    }

    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_100525B1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100525BD8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E547D0;
  a2[1] = v2;
  return result;
}

uint64_t sub_100525C04(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_100525C34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100525CF0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E54850;
  a2[1] = v2;
  return result;
}

uint64_t sub_100525D1C(uint64_t a1, xpc *this, BOOL a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  *v3 = result;
  return result;
}

uint64_t sub_100525D4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100525E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100525F34(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E548D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100525F74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100525FC0(uint64_t *a1, xpc_object_t *a2)
{
  v3 = *a1;
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  sub_10032CF1C(&v16, a2);
  v11 = 0;
  LOWORD(v11) = *v3;
  v4 = *(v3 + 24);
  *v12 = *(v3 + 8);
  v13 = v4;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  v5 = *(v3 + 32);
  v15 = *(v3 + 48);
  *__p = v5;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  v9 = v16;
  v10[0] = v17;
  v10[1] = v18;
  if (v18)
  {
    v17[2] = v10;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v9 = v10;
  }

  sub_101156868(v3, &v9);
  sub_10032D3A4(&v9, v10[0]);
  if (rest::operator!=())
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = (a1[1] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    v6(v8);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  sub_10032D3A4(&v16, v17);
}

void sub_100526114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void *);
  v8 = va_arg(va1, void);
  sub_10032D3A4(va, v7);
  sub_1000EFBF0(va1);
  sub_10032D3A4(v3 - 56, *(v3 - 48));
  _Unwind_Resume(a1);
}

uint64_t sub_1005261C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E54950;
  a2[1] = v2;
  return result;
}

uint64_t sub_1005261EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100526324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005263D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E549D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100526414(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100526460(uint64_t a1, rest::PairedDeviceInfoList *a2, const xpc::object *a3)
{
  rest::read_rest_value(*a1, a2, a3);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (*(a1 + 8) + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6);
}

uint64_t sub_10052654C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E54A50;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_100526578(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_100526614(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10052673C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005267EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E54AD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100526824(void *a1)
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

uint64_t sub_10052686C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1005268B8(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t sub_1005269A8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100083940(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1005269F4(void *a1)
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

void sub_100526A40(uint64_t a1, uint64_t *a2, NSObject *a3, NSObject **a4)
{
  sub_100526CD8(v5, a4, a3);
  sub_100526D20(v6, v5);
  sub_100526B00(v6, a2);
}

void sub_100526B00(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100526C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

dispatch_object_t *sub_100526CD8(dispatch_object_t *a1, NSObject **a2, dispatch_object_t object)
{
  *a1 = object;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
    object = *a1;
  }

  a1[1] = v4;
  dispatch_retain(object);
  return a1;
}