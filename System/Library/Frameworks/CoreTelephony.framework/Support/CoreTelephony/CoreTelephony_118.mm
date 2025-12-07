__int128 *sub_1007BE304(void *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v8 = *a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 8) + 1;
    if (v9 > 0x33333333333333)
    {
      sub_1000CE3D4();
    }

    v10 = a2 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v8) >> 8);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 8) + 1;
    }

    if (v11 >= 0x19999999999999)
    {
      v13 = 0x33333333333333;
    }

    else
    {
      v13 = v12;
    }

    v18 = a1;
    if (v13)
    {
      sub_10027B5B4(a1, v13);
    }

    *&v15 = 0;
    *(&v15 + 1) = v10 >> 8 << 8;
    v16 = *(&v15 + 1);
    v17 = 0;
    sub_1007CC9E8(&v15, a3);
    v4 = sub_1007CC798(a1, &v15, v4);
    sub_100281380(&v15);
  }

  else if (a2 == v7)
  {
    sub_10027B690(a1[1], a3);
    a1[1] = v7 + 80;
  }

  else
  {
    bzero(&v15, 0x500uLL);
    v19 = a1;
    sub_10027B690(&v15, a3);
    sub_1007CC01C(a1, v4, a1[1], (v4 + 80));
    sub_1007CC0DC(v4, &v15);
    sub_1002813D0(&v15);
  }

  return v4;
}

void CellularPlanDeliveryModel::appendPendingCarrierPlansWithoutIccid(CellularPlanDeliveryModel *a1, std::string *__str, unsigned int a3)
{
  v6 = *(a1 + 39);
  v7 = *(a1 + 40);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *__str;
  }

  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v6 != v7)
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

    do
    {
      v11 = *(v6 + 263);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v6 + 31);
      }

      if (size == v11)
      {
        v13 = v12 >= 0 ? v6 + 15 : *(v6 + 30);
        if (!memcmp(p_p, v13, size))
        {
          v14 = *(v6 + 455);
          if ((v14 & 0x80u) != 0)
          {
            v14 = *(v6 + 55);
          }

          if (!v14)
          {
            v15 = *(v6 + 503);
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v6 + 61);
            }

            if (!v15)
            {
              goto LABEL_26;
            }
          }
        }
      }

      v6 += 80;
    }

    while (v6 != v7);
    v6 = v7;
  }

LABEL_26:
  if (v8 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 == *(a1 + 40))
  {
    v6 = sub_1007BDB1C(a1 + 39, v6);
  }

  std::string::operator=(v6 + 10, __str);
  *(v6 + 1) = 1033;
  CellularPlanDeliveryModel::startPurchasePlanReleaseWaitTimer(a1, v6, a3, 1);
  CellularPlanDeliveryModel::handleDumpState_sync(a1);
  CellularPlanDeliveryModel::notifyPlansUpdate(a1);
}

void CellularPlanDeliveryModel::appendPendingPlanForCarrierSignup(CellularPlanDeliveryModel *a1, std::string *__str, void *a3)
{
  v6 = *(a1 + 39);
  v7 = *(a1 + 40);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    __p = *__str;
  }

  if (v6 != v7)
  {
    do
    {
      v8 = *(v6 + 455);
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v6 + 55);
      }

      if (!v8 && (*(v6 + 17) & 1) != 0)
      {
        goto LABEL_11;
      }

      v6 += 80;
    }

    while (v6 != v7);
    v6 = v7;
  }

LABEL_11:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6 == *(a1 + 40))
  {
    v9 = *(a1 + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I pending plan not found for signup plan", v10, 2u);
    }

    v6 = sub_1007BDB1C(a1 + 39, v6);
  }

  std::string::operator=(v6 + 10, __str);
  *(v6 + 17) = 1;
  *(v6 + 1225) = 1;
  *(v6 + 1) = 1033;
  if (*a3 != a3[1])
  {
    std::string::operator=(v6 + 1, (*a3 + 32));
    std::string::operator=(v6 + 2, (*a3 + 56));
    std::string::operator=(v6 + 3, (*a3 + 80));
    std::string::operator=(v6 + 4, (*a3 + 104));
  }

  CellularPlanDeliveryModel::maybeStartRecoveryDelayProvisioningMonitorMode(a1, v6);
  CellularPlanDeliveryModel::handleDumpState_sync(a1);
  CellularPlanDeliveryModel::notifyPlansUpdate(a1);
}

void CellularPlanDeliveryModel::getPendingTransferPlans(uint64_t a1, const void **a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = *(a1 + 312);
  v7 = *(a1 + 320);
  while (v6 != v7)
  {
    if (*(v6 + 9) == 1 && sub_10064A65C(*(v6 + 2)))
    {
      v8 = v12;
      if (v12 >= v13)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!*(v6 + 1160))
      {
        goto LABEL_12;
      }

      v8 = v12;
      if (v12 >= v13)
      {
LABEL_10:
        v9 = sub_1007CCB80(&v11, v6);
        goto LABEL_11;
      }
    }

    sub_10027B690(v12, v6);
    v9 = v8 + 1280;
LABEL_11:
    v12 = v9;
LABEL_12:
    v6 += 1280;
  }

  sub_100926044((a1 + 40), &v11, a2, &v10);
  sub_1000D8F90(a3, &v10, 0);
  sub_100010250(&v10);
  v14 = &v11;
  sub_10005C284(&v14);
}

void sub_1007BE8E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_100010250(&a10);
  a14 = &a11;
  sub_10005C284(&a14);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::getPendingTransferPlansForTestability(uint64_t a1, const void **a2, uint64_t a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = *(a1 + 312);
  v7 = *(a1 + 320);
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      if ((*(a1 + 256) == 1 || *v6 != 7) && (*(v6 + 12) != 1 || *(v6 + 2) == 4))
      {
        if (v8 >= v14)
        {
          v8 = sub_1007CCB80(&v12, v6);
        }

        else
        {
          sub_10027B690(v8, v6);
          v8 += 1280;
        }

        v13 = v8;
      }

      v6 += 1280;
    }

    while (v6 != v7);
  }

  sub_100926044((a1 + 40), &v12, a2, &v11);
  sub_1000D8F90(a3, &v11, 0);
  sub_100010250(&v11);
  v15 = &v12;
  sub_10005C284(&v15);
}

void sub_1007BEA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_100010250(&a10);
  a14 = &a11;
  sub_10005C284(&a14);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::getOnDeviceTransferredIccidList@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *(this + 312);
  for (i = *(this + 320); v2 != i; v2 += 1280)
  {
    if (*v2 == 7)
    {
      this = sub_100005308(a2, (v2 + 432));
    }
  }

  return this;
}

void sub_1007BEAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::activatePendingTransferPlan(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v7 = *(a1 + 312);
  v6 = *(a1 + 320);
  v8 = a2 + 23;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    v44 = *(a2 + 2);
  }

  v9 = HIBYTE(v44);
  if (v7 == v6)
  {
    v6 = v7;
    if ((v44 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v44 >= 0)
    {
      v10 = HIBYTE(v44);
    }

    else
    {
      v10 = __p[1];
    }

    if (v44 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = v7 + 432;
    while (1)
    {
      v13 = *(v12 + 23);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v12 + 8);
      }

      if (v10 == v13)
      {
        v15 = v14 >= 0 ? v12 : *v12;
        if (!memcmp(v11, v15, v10))
        {
          break;
        }
      }

      v16 = v12 + 848;
      v12 += 1280;
      if (v16 == v6)
      {
        if (v9 < 0)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }
    }

    v6 = v12 - 432;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_34:
  operator delete(__p[0]);
LABEL_21:
  if (v6 == *(a1 + 320))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EC24();
    }

    v41 = 0;
    v42 = 0;
    sub_1007BF334(a3, 0, &v42, &v41, 6);
    sub_10001021C(&v41);
    sub_100005978(&v42);
  }

  else
  {
    v17 = *(a1 + 304);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = *(a1 + 296);
        if (v19)
        {
          v20 = *(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v21 = a2;
            }

            else
            {
              v21 = *a2;
            }

            v22 = sub_10064A0D0(*(v6 + 1));
            v23 = sub_10064A0D0(*(v6 + 2));
            *buf = 136315650;
            *v46 = v21;
            *&v46[8] = 2080;
            v47 = v22;
            v48 = 2080;
            v49 = v23;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Activating pending plan with sourceIccid: %s in terminal state: %s and display state: %s", buf, 0x20u);
          }

          if (*(v6 + 1) - 7 > 2)
          {
            v32 = (*(*v19 + 112))(v19);
            v25 = (*(*v19 + 120))(v19);
            v26 = (*(*v19 + 128))(v19);
            v27 = *(a1 + 40);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109632;
              *v46 = v32;
              *&v46[4] = 1024;
              *&v46[6] = v25;
              LOWORD(v47) = 1024;
              *(&v47 + 2) = v26;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I iCloud signed in: [%d], boostrap enabled: [%d], Wifi active: [%d]", buf, 0x14u);
            }

            if ((v32 & (v25 ^ 1 | v26)) == 1)
            {
              *(v6 + 2) = 4;
              (*(*v19 + 48))(v19);
              v52 = a1;
              if (*v8 < 0)
              {
                sub_100005F2C(&v53, *a2, *(a2 + 1));
              }

              else
              {
                v53 = *a2;
                v54 = *(a2 + 2);
              }

              sub_1007CEC24(v55, a3);
              v55[7] = 0;
              operator new();
            }

            v28 = *(v6 + 1) - 5;
            v29 = *(a1 + 40);
            v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
            if (v28 <= 1)
            {
              if (v30)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Attempting plan activation", buf, 2u);
              }

              *(v6 + 2) = 4;
              (*(*v19 + 48))(v19);
              bzero(buf, 0x500uLL);
              sub_10027B690(buf, v6);
              (*(**(a1 + 112) + 808))(v35);
              if (SHIBYTE(v51) < 0)
              {
                operator delete(v50);
              }

              v50 = *v35;
              v51 = v36;
              (*(*v19 + 40))(v19, buf, 0, *(v6 + 1) == 9);
              v31 = *(a1 + 40);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                *v35 = 0;
                _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Caching activate pending plan callback to show intro pane if (and after) activation fails", v35, 2u);
              }

              sub_1007BF3CC((a1 + 432), a3);
              sub_1002813D0(buf);
              goto LABEL_42;
            }

            if (v30)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Not attempting installation. Showing intro pane to the user", buf, 2u);
            }

            v33 = 0;
            v34 = 0;
            sub_1007BF334(a3, 0, &v34, &v33, 49);
            sub_10001021C(&v33);
            v24 = &v34;
          }

          else
          {
            *(v6 + 2) = 4;
            (*(*v19 + 48))(v19);
            (*(*v19 + 40))(v19, v6, 0, *(v6 + 1) == 9);
            v37 = 0;
            v38 = 0;
            sub_1007BF334(a3, 1, &v38, &v37, 0);
            sub_10001021C(&v37);
            v24 = &v38;
          }

          sub_100005978(v24);
LABEL_42:
          sub_100004A34(v18);
          return;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    v39 = 0;
    v40 = 0;
    sub_1007BF334(a3, 0, &v40, &v39, 4);
    sub_10001021C(&v39);
    sub_100005978(&v40);
    if (v18)
    {
      goto LABEL_42;
    }
  }
}

void sub_1007BF248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  operator delete(v46);
  sub_1007BF390(v47 - 200);
  sub_100004A34(v45);
  _Unwind_Resume(a1);
}

uint64_t sub_1007BF334(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a2;
  v7 = a5;
  v5 = *(a1 + 24);
  if (!v5)
  {
    sub_100022DB4();
  }

  return (*(*v5 + 48))(v5, &v8, a3, a4, &v7);
}

uint64_t sub_1007BF390(uint64_t a1)
{
  sub_100643184(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_1007BF3CC(void *a1, uint64_t a2)
{
  sub_1007CEC24(v4, a2);
  sub_1007CF130(v4, a1);
  sub_100643184(v4);
  return a1;
}

void CellularPlanDeliveryModel::cancelPendingTransferPlan(void *a1, uint64_t a2)
{
  v4 = a1[39];
  v3 = a1[40];
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  v5 = HIBYTE(v17);
  if (v4 == v3)
  {
    v3 = v4;
LABEL_22:
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v17 >= 0)
    {
      v6 = HIBYTE(v17);
    }

    else
    {
      v6 = __p[1];
    }

    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v4 + 432;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      if (v6 == v9)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v7, v11, v6))
        {
          break;
        }
      }

      v12 = v8 + 848;
      v8 += 1280;
      if (v12 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v8 - 432;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v3 == a1[40])
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177EC24();
    }
  }

  else
  {
    v13 = a1[38];
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      if (v14)
      {
        v15 = a1[37];
        if (v15)
        {
          CellularPlanDeliveryModel::updatePlanStates_sync(a1, v3, *(v3 + 1));
          (*(*v15 + 48))(v15);
          (*(*v15 + 32))(v15, v3);
LABEL_35:
          sub_100004A34(v14);
          return;
        }
      }
    }

    else
    {
      v14 = 0;
    }

    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    if (v14)
    {
      goto LABEL_35;
    }
  }
}

void CellularPlanDeliveryModel::updatePendingTransferPlanState(uint64_t a1, __int128 *a2, unsigned __int8 a3, uint64_t a4)
{
  v81 = a3;
  __dst[0] = 0;
  __dst[1] = 0;
  v80 = 0;
  if (*(a2 + 23) < 0)
  {
    v7 = *(a2 + 1);
    if (v7)
    {
      sub_100005F2C(__dst, *a2, v7);
      goto LABEL_7;
    }
  }

  else if (*(a2 + 23))
  {
    *__dst = *a2;
    v80 = *(a2 + 2);
    goto LABEL_7;
  }

  sub_1007C005C(a4, "", __dst);
LABEL_7:
  v8 = *(a1 + 312);
  v9 = *(a1 + 320);
  v72 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v73, *a2, *(a2 + 1));
  }

  else
  {
    v73 = *a2;
    v74 = *(a2 + 2);
  }

  sub_10006F264(&__p, a4);
  if (v8 != v9)
  {
    while (1)
    {
      if (v74 >= 0)
      {
        v10 = HIBYTE(v74);
      }

      else
      {
        v10 = *(&v73 + 1);
      }

      v11 = *(v8 + 455);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v8 + 440);
      }

      if (v10 == v11)
      {
        v13 = v74 >= 0 ? &v73 : v73;
        v14 = v12 >= 0 ? (v8 + 432) : *(v8 + 432);
        if (!memcmp(v13, v14, v10) && (v10 || (*(v8 + 1225) & 1) != 0))
        {
          goto LABEL_75;
        }
      }

      if (v78 == 1)
      {
        v15 = (v77 & 0x80u) == 0 ? v77 : v76;
        if (v15 && *(v72 + 472) == 1)
        {
          break;
        }
      }

LABEL_73:
      v8 += 1280;
      if (v8 == v9)
      {
        v8 = v9;
        goto LABEL_75;
      }
    }

    v16 = *(v8 + 479);
    v17 = v16;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(v8 + 464);
    }

    if (v16 == v15)
    {
      v18 = v17 >= 0 ? (v8 + 456) : *(v8 + 456);
      v19 = (v77 & 0x80u) == 0 ? &__p : __p;
      if (!memcmp(v18, v19, v15))
      {
        goto LABEL_75;
      }
    }

    sub_10092CDF4(&__p, buf);
    v20 = (v8 + 480);
    v21 = buf[23];
    if (buf[23] >= 0)
    {
      v22 = buf[23];
    }

    else
    {
      v22 = *&buf[8];
    }

    v23 = *(v8 + 503);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v8 + 488);
    }

    if (v22 == v23)
    {
      if (buf[23] >= 0)
      {
        v25 = buf;
      }

      else
      {
        v25 = *buf;
      }

      if (v24 >= 0)
      {
        v26 = (v8 + 480);
      }

      else
      {
        v26 = *v20;
      }

      v27 = memcmp(v25, v26, v22) == 0;
      if ((v21 & 0x80000000) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v27 = 0;
      if ((buf[23] & 0x80000000) == 0)
      {
LABEL_58:
        if (v27)
        {
          goto LABEL_75;
        }

        if ((v78 & 1) == 0)
        {
          sub_1000D1644();
        }

        if ((v77 & 0x80u) == 0)
        {
          v28 = v77;
        }

        else
        {
          v28 = v76;
        }

        v29 = *(v8 + 503);
        v30 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(v8 + 488);
        }

        if (v28 == v29)
        {
          v31 = (v77 & 0x80u) == 0 ? &__p : __p;
          v32 = v30 >= 0 ? (v8 + 480) : *v20;
          if (!memcmp(v31, v32, v28))
          {
            goto LABEL_75;
          }
        }

        goto LABEL_73;
      }
    }

    operator delete(*buf);
    goto LABEL_58;
  }

LABEL_75:
  if (v78 == 1 && v77 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v74) < 0)
  {
    operator delete(v73);
  }

  if (v8 != *(a1 + 320))
  {
    if (*(a4 + 24) != 1)
    {
      goto LABEL_144;
    }

    v33 = *(v8 + 503);
    if (v33 >= 0)
    {
      v34 = *(v8 + 503);
    }

    else
    {
      v34 = *(v8 + 488);
    }

    v35 = *(a4 + 23);
    if (v35 >= 0)
    {
      v36 = *(a4 + 23);
    }

    else
    {
      v36 = *(a4 + 8);
    }

    if (v34 == v36)
    {
      v37 = v33 >= 0 ? (v8 + 480) : *(v8 + 480);
      v38 = v35 >= 0 ? a4 : *a4;
      if (!memcmp(v37, v38, v34))
      {
        v41 = 1;
        goto LABEL_145;
      }
    }

    if (!v36)
    {
LABEL_144:
      v41 = 0;
LABEL_145:
      CellularPlanDeliveryModel::updatePlanStates_sync(a1, v8, v81);
      if (v81 == 9)
      {
        *(v8 + 19) = 1;
      }

      v56 = *(a1 + 40);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        if (v80 >= 0)
        {
          v57 = __dst;
        }

        else
        {
          v57 = __dst[0];
        }

        v58 = sub_10064A0D0(*(v8 + 1));
        v59 = sub_10064A0D0(*(v8 + 2));
        *buf = 136315650;
        *&buf[4] = v57;
        *&buf[12] = 2080;
        *&buf[14] = v58;
        *&buf[22] = 2080;
        v83 = v59;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I updated state of plan (%s) to %s, display state: %s", buf, 0x20u);
      }

      v60 = *(a1 + 176);
      if (v60)
      {
        if (v41)
        {
          sub_1007C005C(a4, "", buf);
          (*(*v60 + 40))(v60, a2, buf, &v81);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          (*(*v60 + 40))(*(a1 + 176), a2, v8 + 456, &v81);
        }
      }

      if (*(v8 + 1112) == 1)
      {
        v61 = v81;
        if (v81 == 5)
        {
          if (*(v8 + 1056) == 0.0)
          {
            *(v8 + 1056) = CFAbsoluteTimeGetCurrent();
          }
        }

        else if ((v81 & 0xFE) == 6)
        {
          if (*(v8 + 1064) == 0.0)
          {
            *(v8 + 1064) = CFAbsoluteTimeGetCurrent();
            v61 = v81;
          }

          if (v61 == 6)
          {
            *(v8 + 1019) = 2;
            if (*(v8 + 1104) == 0.0)
            {
              *(v8 + 1104) = CFAbsoluteTimeGetCurrent();
            }
          }
        }

        else
        {
          switch(v81)
          {
            case 0xCu:
              if (*(v8 + 1088) == 0.0)
              {
                *(v8 + 1088) = CFAbsoluteTimeGetCurrent();
              }

              break;
            case 0xAu:
              if (*(v8 + 1080) == 0.0)
              {
                *(v8 + 1080) = CFAbsoluteTimeGetCurrent();
              }

              break;
            case 9u:
              if (*(v8 + 1056) > 0.0 && *(v8 + 1064) == 0.0)
              {
                *(v8 + 1064) = CFAbsoluteTimeGetCurrent();
              }

              if (*(v8 + 1072) == 0.0)
              {
                *(v8 + 1072) = CFAbsoluteTimeGetCurrent();
              }

              *(v8 + 1018) = 1;
              break;
          }
        }
      }

      CellularPlanDeliveryModel::maybeStartDelayProvisioningMonitorMode(a1, v8);
      if (v81 == 11)
      {
        CellularPlanDeliveryModel::clearTransferringStatus_sync(a1, v8 + 432);
      }

      v62 = *(a1 + 160);
      if (v62)
      {
        v63 = *(a1 + 40);
        v64 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);
        v65 = v81;
        if (v64)
        {
          v66 = SHIBYTE(v80);
          v67 = __dst[0];
          v68 = sub_10064A0D0(v81);
          v69 = __dst;
          if (v66 < 0)
          {
            v69 = v67;
          }

          *buf = 136315394;
          *&buf[4] = v69;
          *&buf[12] = 2080;
          *&buf[14] = v68;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I send transfer status update %s -> %s", buf, 0x16u);
          v62 = *(a1 + 160);
          v65 = v81;
        }

        (*(*v62 + 56))(v62, a2, v65);
      }

      CellularPlanDeliveryModel::notifyPlansUpdate(a1);
    }

    v39 = (*(**(a1 + 112) + 1064))(*(a1 + 112), v8 + 24, v8 + 48, v8 + 72, v8 + 96, v8 + 432);
    memset(&__str, 0, sizeof(__str));
    v40 = *(a4 + 23);
    if (v39)
    {
      if (v40 < 0)
      {
        sub_100005F2C(&v70, *a4, *(a4 + 8));
      }

      else
      {
        v70 = *a4;
      }

      sub_1009227E0(&__str, &v70);
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }
    }

    else if (v40 < 0)
    {
      sub_100005F2C(&__str, *a4, *(a4 + 8));
    }

    else
    {
      __str = *a4;
    }

    v42 = (v8 + 456);
    v43 = *(v8 + 479);
    if (v43 < 0)
    {
      if (!*(v8 + 464))
      {
        goto LABEL_134;
      }
    }

    else if (!*(v8 + 479))
    {
      goto LABEL_134;
    }

    if (v43 >= 0)
    {
      v44 = *(v8 + 479);
    }

    else
    {
      v44 = *(v8 + 464);
    }

    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    v46 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
    }

    if (v44 != size || (v43 >= 0 ? (v47 = (v8 + 456)) : (v47 = *v42), (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v48 = &__str) : (v48 = __str.__r_.__value_.__r.__words[0]), memcmp(v47, v48, v44)))
    {
      v49 = *(a1 + 40);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        v50 = __dst;
        if (v80 < 0)
        {
          v50 = __dst[0];
        }

        v51 = (v8 + 456);
        if ((v43 & 0x80000000) != 0)
        {
          v51 = *v42;
        }

        p_str = __str.__r_.__value_.__r.__words[0];
        if (v46 >= 0)
        {
          p_str = &__str;
        }

        *buf = 136315650;
        *&buf[4] = v50;
        *&buf[12] = 2080;
        *&buf[14] = v51;
        *&buf[22] = 2080;
        v83 = p_str;
        _os_log_fault_impl(&_mh_execute_header, v49, OS_LOG_TYPE_FAULT, "update target iccid for pending plan (%s) %s -> %s", buf, 0x20u);
      }

      goto LABEL_140;
    }

LABEL_134:
    v53 = *(a1 + 40);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = __dst;
      if (v80 < 0)
      {
        v54 = __dst[0];
      }

      v55 = &__str;
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v55 = __str.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = v54;
      *&buf[12] = 2080;
      *&buf[14] = v55;
      _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I update target ICCID for pending plan (%s) to (%s)", buf, 0x16u);
    }

LABEL_140:
    std::string::operator=((v8 + 456), &__str);
    sub_10092CDF4(v8 + 456, buf);
    if (*(v8 + 503) < 0)
    {
      operator delete(*(v8 + 480));
    }

    *(v8 + 480) = *buf;
    *(v8 + 496) = *&buf[16];
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_144;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EC8C();
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1007BFFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007C005C@<X0>(void *result@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  if (*(result + 24) != 1)
  {
    return sub_10000501C(a3, a2);
  }

  if (*(result + 23) < 0)
  {
    return sub_100005F2C(a3, *result, result[1]);
  }

  *a3 = *result;
  a3[2] = result[2];
  return result;
}

uint64_t sub_1007C0098(uint64_t a1)
{
  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void CellularPlanDeliveryModel::clearTransferringStatus_sync(CellularPlanDeliveryModel *this, uint64_t a2)
{
  v4 = *(this + 39);
  v3 = *(this + 40);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v17 = *(a2 + 16);
  }

  v5 = HIBYTE(v17);
  if (v4 == v3)
  {
    v3 = v4;
LABEL_22:
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v17 >= 0)
    {
      v6 = HIBYTE(v17);
    }

    else
    {
      v6 = __p[1];
    }

    if (v17 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v4 + 432;
    while (1)
    {
      v9 = *(v8 + 23);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 8);
      }

      if (v6 == v9)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v7, v11, v6))
        {
          break;
        }
      }

      v12 = v8 + 848;
      v8 += 1280;
      if (v12 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v8 - 432;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  v13 = *(this + 40);
  if (v3 == v13)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10177EC24();
    }
  }

  else
  {
    *(v3 + 10) = 0;
    if ((*(this + 472) & 1) == 0)
    {
      v14 = *(this + 39);
      if (v14 == v13)
      {
        goto LABEL_30;
      }

      do
      {
        v15 = *(v14 + 10);
        if (v15)
        {
          break;
        }

        v14 += 1280;
      }

      while (v14 != v13);
      if ((v15 & 1) == 0)
      {
LABEL_30:
        CellularPlanDeliveryModel::sessionInvalidated(this);
      }
    }
  }
}

void CellularPlanDeliveryModel::getCrossPlatformPendingTransferPlans(CellularPlanDeliveryModel *this@<X0>, const void **a2@<X8>)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v17 = 0;
  sub_10000501C(__p, "");
  v4 = (*(*this + 64))(this);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10005A388(&v13, *v4, v4[1], 0xCCCCCCCCCCCCCCCDLL * ((v4[1] - *v4) >> 8));
  v5 = v13;
  v6 = v14;
  while (v5 != v6)
  {
    v7 = sub_10064A7C0(v5);
    if (*(v5 + 1) == 12)
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if (v8 == 1)
    {
      v9 = v19;
      if (v19 >= v20)
      {
        v10 = sub_1007CCB80(&v18, v5);
      }

      else
      {
        sub_10027B690(v19, v5);
        v10 = v9 + 1280;
      }

      v19 = v10;
      (*(**(this + 14) + 832))(&v11);
      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v11;
      v17 = v12;
      break;
    }

    v5 += 1280;
  }

  sub_1009326B0(&v18, __p, a2);
  *&v11 = &v13;
  sub_10005C284(&v11);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = &v18;
  sub_10005C284(__p);
}

void sub_1007C040C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  a9 = &a12;
  sub_10005C284(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  __p = (v20 - 56);
  sub_10005C284(&__p);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::updatePendingTransferPlanInfo(CellularPlanDeliveryModel *this, uint64_t a2, __int128 **a3)
{
  v7 = *(this + 39);
  v6 = *(this + 40);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v66 = *(a2 + 16);
  }

  v8 = HIBYTE(v66);
  if (v7 == v6)
  {
    v6 = v7;
LABEL_22:
    if (v8 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v66 >= 0)
    {
      v9 = HIBYTE(v66);
    }

    else
    {
      v9 = __p[1];
    }

    if (v66 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = v7 + 432;
    while (1)
    {
      v12 = *(v11 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      if (v9 == v12)
      {
        v14 = v13 >= 0 ? v11 : *v11;
        if (!memcmp(v10, v14, v9))
        {
          break;
        }
      }

      v15 = v11 + 848;
      v11 += 1280;
      if (v15 == v6)
      {
        goto LABEL_22;
      }
    }

    v6 = v11 - 432;
    if (v8 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v6 != *(this + 40))
  {
    v16 = *a3;
    v17 = a3[1];
    if (*a3 == v17)
    {
LABEL_258:
      CellularPlanDeliveryModel::notifyPlansUpdate(this);
    }

    v18 = (v6 + 360);
    v19 = (v6 + 504);
    while (1)
    {
      v82 = 0;
      memset(__dst, 0, sizeof(__dst));
      sub_100176498(__dst, v16);
      memset(__s1, 0, 24);
      if (SBYTE7(__dst[1]) < 0)
      {
        sub_100005F2C(__s1, *&__dst[0], *(&__dst[0] + 1));
      }

      else
      {
        *__s1 = __dst[0];
        __s1[2] = *&__dst[1];
      }

      memset(v80, 0, sizeof(v80));
      if (*(&__dst[1] + 1))
      {
        (*(&__dst[1] + 1))(1, &__dst[1] + 8, v80, 0, 0);
      }

      v20 = *(this + 5);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v21 = a2;
        }

        else
        {
          v21 = *a2;
        }

        v22 = __s1;
        if (SHIBYTE(__s1[2]) < 0)
        {
          v22 = __s1[0];
        }

        *buf = 136315394;
        *&buf[4] = v21;
        *&buf[12] = 2080;
        *&buf[14] = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I update info of pending plan (%s) to %s", buf, 0x16u);
      }

      if (SHIBYTE(__s1[2]) < 0)
      {
        if (__s1[1] != 11)
        {
          goto LABEL_48;
        }

        v23 = __s1[0];
      }

      else
      {
        if (HIBYTE(__s1[2]) != 11)
        {
          v32 = __s1;
          if (HIBYTE(__s1[2]) <= 0x12u)
          {
            if (HIBYTE(__s1[2]) == 4)
            {
              goto LABEL_119;
            }

            if (HIBYTE(__s1[2]) != 13)
            {
              goto LABEL_204;
            }

LABEL_77:
            if (__s1[0] == 0x726566736E617254 && *(__s1 + 5) == 0x6E656B6F54726566)
            {
              goto LABEL_82;
            }

            goto LABEL_204;
          }

          if (HIBYTE(__s1[2]) != 19)
          {
            if (HIBYTE(__s1[2]) == 20)
            {
              v39 = __s1[0] == 0x4D726F74696E6F4DLL && __s1[1] == 0x747261745365646FLL;
              if (v39 && LODWORD(__s1[2]) == 1701669204)
              {
LABEL_138:
                if ((*(v6 + 1152) & 1) == 0)
                {
                  *(v6 + 1120) = 0u;
                  *(v6 + 1136) = 0u;
                  *(v6 + 1152) = 1;
                }

                v43 = sub_1007CF4B8(v80);
                if (!v43)
                {
LABEL_255:
                  sub_1007CF3E8();
                }

                *(v6 + 1144) = *v43;
                goto LABEL_231;
              }
            }

            goto LABEL_204;
          }

          v27 = __s1[1];
          goto LABEL_143;
        }

        v23 = __s1;
      }

      v24 = *v23;
      v25 = *(v23 + 3);
      if (v24 == 0x4670646D53746C41 && v25 == 0x6E64714670646D53)
      {
        v37 = sub_1007CF39C(v80);
        if (!v37)
        {
          sub_1007CF3E8();
        }

        if (*(v37 + 23) < 0)
        {
          sub_100005F2C(buf, *v37, v37[1]);
        }

        else
        {
          v38 = *v37;
          *&buf[16] = v37[2];
          *buf = v38;
        }

        if (*(v6 + 527) < 0)
        {
          operator delete(*v19);
        }

        *v19 = *buf;
        *(v6 + 520) = *&buf[16];
        goto LABEL_231;
      }

LABEL_48:
      v27 = __s1[1];
      if ((HIBYTE(__s1[2]) & 0x80) != 0 && __s1[1] == 26)
      {
        if (*__s1[0] == 0x726566736E617254 && *(__s1[0] + 1) == 0x69767265536D6953 && *(__s1[0] + 2) == 0x6E6F707365526563 && *(__s1[0] + 12) == 25971)
        {
          v31 = sub_1007CF420(v80);
          if (!v31)
          {
            sub_1007CF3E8();
          }

          sub_100282340(buf, v31);
          sub_1007C1318((v6 + 528), buf);
          if (v78 < 0)
          {
            operator delete(v76);
          }

          if (v75 == 1 && SHIBYTE(v74) < 0)
          {
            operator delete(*(&v73 + 1));
          }

          if (v73 == 1 && SHIBYTE(v72) < 0)
          {
            operator delete(*(&v71 + 1));
          }

          if (v71 == 1 && SHIBYTE(v70) < 0)
          {
            operator delete(v69);
          }

          v67.__vftable = buf;
          sub_10016C644(&v67);
          goto LABEL_231;
        }

        goto LABEL_204;
      }

      if ((HIBYTE(__s1[2]) & 0x80) != 0 && __s1[1] == 39)
      {
        if (!memcmp(__s1[0], "TransferSimServiceViaWebServiceResponse", 0x27uLL))
        {
          v36 = sub_1007CF46C(v80);
          if (!v36)
          {
            sub_1007CF3E8();
          }

          sub_1002852A0(buf, v36);
          sub_1007C1354(v6 + 688, buf);
          if (v79 < 0)
          {
            operator delete(v77);
          }

          if (SHIBYTE(v76) < 0)
          {
            operator delete(v75);
          }

          if (v74 == 1 && SHIBYTE(v73) < 0)
          {
            operator delete(*(&v72 + 1));
          }

          if (v72 == 1 && SHIBYTE(v71) < 0)
          {
            operator delete(*(&v70 + 1));
          }

          if (v70 == 1 && SHIBYTE(v69) < 0)
          {
            operator delete(*&buf[8]);
          }

          goto LABEL_231;
        }

        goto LABEL_204;
      }

      if ((HIBYTE(__s1[2]) & 0x80) == 0)
      {
        if (HIBYTE(__s1[2]) != 4)
        {
          goto LABEL_204;
        }

LABEL_118:
        v32 = __s1;
LABEL_119:
        if (*v32 == 1769172297)
        {
          sub_1007C12B0(v80, buf);
          if (*(v6 + 407) < 0)
          {
            operator delete(*(v6 + 384));
          }

          *(v6 + 384) = *buf;
          *(v6 + 400) = *&buf[16];
          goto LABEL_231;
        }

        goto LABEL_204;
      }

      if (__s1[1] == 19)
      {
        v32 = __s1[0];
LABEL_143:
        v44 = *v32;
        v45 = v32[1];
        v46 = *(v32 + 11);
        if (v44 == 0x4D726F74696E6F4DLL && v45 == 0x6C706D6F4365646FLL && v46 == 0x6574656C706D6F43)
        {
          v53 = sub_1007CF504(v80);
          if (!v53)
          {
            goto LABEL_255;
          }

          v54 = *v53;
          *(v6 + 13) = v54;
          if (v54 == 1)
          {
            CellularPlanDeliveryModel::maybeSubmitTransferSimTimestamps_sync(this, v6);
          }

          goto LABEL_231;
        }

        goto LABEL_150;
      }

      if (__s1[1] == 20)
      {
        if (*__s1[0] == 0x4D726F74696E6F4DLL && *(__s1[0] + 1) == 0x747261745365646FLL && *(__s1[0] + 4) == 1701669204)
        {
          goto LABEL_138;
        }

        v27 = 20;
        goto LABEL_170;
      }

LABEL_150:
      if ((HIBYTE(__s1[2]) & 0x80) != 0 && v27 == 23)
      {
        if (*__s1[0] == 0x7465656873626557 && *(__s1[0] + 1) == 0x6465726975716552 && *(__s1[0] + 15) == 0x79646475626E4964)
        {
          v51 = sub_1007CF504(v80);
          if (!v51)
          {
            goto LABEL_255;
          }

          *(v6 + 14) = *v51;
          goto LABEL_231;
        }

        goto LABEL_204;
      }

      if ((HIBYTE(__s1[2]) & 0x80) != 0 && v27 == 50)
      {
        if (!memcmp(__s1[0], "IsTransferUsingRecoveryWithoutExplicitIccidMapping", 0x32uLL))
        {
          v52 = sub_1007CF504(v80);
          if (!v52)
          {
            goto LABEL_255;
          }

          *(v6 + 1225) = *v52;
          goto LABEL_231;
        }

        goto LABEL_204;
      }

LABEL_170:
      if ((HIBYTE(__s1[2]) & 0x80) == 0)
      {
        if (HIBYTE(__s1[2]) == 4)
        {
          goto LABEL_118;
        }

        if (HIBYTE(__s1[2]) != 13)
        {
          if (HIBYTE(__s1[2]) == 19)
          {
            v55 = __s1[0] == 0x656372756F537349 && __s1[1] == 0x656C65446E616C50;
            if (v55 && *(&__s1[1] + 3) == 0x646574656C65446ELL)
            {
              goto LABEL_194;
            }
          }

          goto LABEL_204;
        }

        goto LABEL_77;
      }

      switch(v27)
      {
        case 4:
          v32 = __s1[0];
          goto LABEL_119;
        case 13:
          if (*__s1[0] == 0x726566736E617254 && *(__s1[0] + 5) == 0x6E656B6F54726566)
          {
LABEL_82:
            v34 = sub_1007CF39C(v80);
            if (!v34)
            {
              sub_1007CF3E8();
            }

            if (*(v34 + 23) < 0)
            {
              sub_100005F2C(buf, *v34, v34[1]);
            }

            else
            {
              v35 = *v34;
              *&buf[16] = v34[2];
              *buf = v35;
            }

            if (*(v6 + 335) < 0)
            {
              operator delete(*(v6 + 312));
            }

            v60 = *buf;
            v61 = v6 + 312;
LABEL_230:
            *v61 = v60;
            *(v61 + 16) = *&buf[16];
            goto LABEL_231;
          }

          break;
        case 19:
          v57 = *__s1[0] == 0x656372756F537349 && *(__s1[0] + 1) == 0x656C65446E616C50;
          if (v57 && *(__s1[0] + 11) == 0x646574656C65446ELL)
          {
LABEL_194:
            v59 = sub_1007CF504(v80);
            if (!v59)
            {
              goto LABEL_255;
            }

            *(v6 + 16) = *v59;
            goto LABEL_231;
          }

          break;
      }

LABEL_204:
      if (sub_100318068(__s1, "CarrierTransferData"))
      {
        sub_1007C12B0(v80, buf);
        if (*(v6 + 383) < 0)
        {
          operator delete(*v18);
        }

        *v18 = *buf;
        *(v6 + 376) = *&buf[16];
        goto LABEL_231;
      }

      if (sub_100318068(__s1, "TransferTokenExpiration"))
      {
        sub_1007C12B0(v80, buf);
        if (*(v6 + 359) < 0)
        {
          operator delete(*(v6 + 336));
        }

        *(v6 + 336) = *buf;
        *(v6 + 352) = *&buf[16];
        goto LABEL_231;
      }

      if (sub_100318068(__s1, "SourceImei"))
      {
        sub_1007C12B0(v80, buf);
        if (*(v6 + 215) < 0)
        {
          operator delete(*(v6 + 192));
        }

        *(v6 + 192) = *buf;
        *(v6 + 208) = *&buf[16];
        goto LABEL_231;
      }

      if (!sub_100318068(__s1, "SourceCsn"))
      {
        if (sub_100318068(__s1, "SourceDeviceType"))
        {
          sub_1007C12B0(v80, buf);
          if (*(v6 + 959) < 0)
          {
            operator delete(*(v6 + 936));
          }

          v60 = *buf;
          v61 = v6 + 936;
        }

        else if (sub_100318068(__s1, "SourceDisplayName"))
        {
          sub_1007C12B0(v80, buf);
          if (*(v6 + 983) < 0)
          {
            operator delete(*(v6 + 960));
          }

          v60 = *buf;
          v61 = v6 + 960;
        }

        else
        {
          if (!sub_100318068(__s1, "PhoneNumber"))
          {
            if (sub_100318068(__s1, "TransferType"))
            {
              *v6 = sub_1007C1558(v80);
            }

            else if (sub_100318068(__s1, "TransferAuthRequestTime"))
            {
              if (*(v6 + 263) < 0)
              {
                sub_100005F2C(buf, *(v6 + 240), *(v6 + 248));
              }

              else
              {
                *buf = *(v6 + 240);
                *&buf[16] = *(v6 + 256);
              }

              LOBYTE(v69) = *(v6 + 8);
              *(&v69 + 1) = 0;
              BYTE3(v69) = 3;
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v73 = 0u;
              v74 = 0u;
              v75 = 0;
              sub_1007C157C(v6 + 992, buf);
              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              *(v6 + 1024) = CFAbsoluteTimeGetCurrent();
            }

            else if (sub_100318068(__s1, "TransferAuthResponseTime"))
            {
              *(v6 + 1032) = CFAbsoluteTimeGetCurrent();
            }

            else if (sub_100318068(__s1, "TransferAuthWebServRequestTime"))
            {
              *(v6 + 1040) = CFAbsoluteTimeGetCurrent();
            }

            else if (sub_100318068(__s1, "TransferAuthWebServResponseTime"))
            {
              *(v6 + 1048) = CFAbsoluteTimeGetCurrent();
            }

            goto LABEL_231;
          }

          sub_1007C12B0(v80, buf);
          if (*(v6 + 287) < 0)
          {
            operator delete(*(v6 + 264));
          }

          v60 = *buf;
          v61 = v6 + 264;
        }

        goto LABEL_230;
      }

      *(v6 + 914) = sub_1007C1530(v80);
      *(v6 + 922) = v63;
LABEL_231:
      sub_100176638(v80);
      if (SHIBYTE(__s1[2]) < 0)
      {
        operator delete(__s1[0]);
      }

      sub_100176638(&__dst[1] + 1);
      if (SBYTE7(__dst[1]) < 0)
      {
        operator delete(*&__dst[0]);
      }

      v16 = (v16 + 56);
      if (v16 == v17)
      {
        goto LABEL_258;
      }
    }
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_10177EC24();
  }
}

void **sub_1007C12B0@<X0>(uint64_t (**a1)(uint64_t, void, void, _UNKNOWN **, void *)@<X0>, uint64_t a2@<X8>)
{
  result = sub_1007CF39C(a1);
  if (!result)
  {
    sub_1007CF3E8();
  }

  if (*(result + 23) < 0)
  {
    v5 = *result;
    v6 = result[1];

    return sub_100005F2C(a2, v5, v6);
  }

  else
  {
    v4 = *result;
    *(a2 + 16) = result[2];
    *a2 = v4;
  }

  return result;
}

__n128 *sub_1007C1318(__n128 *a1, uint64_t a2)
{
  if (a1[9].n128_u8[8] == 1)
  {
    sub_10016D5E4(a1, a2);
  }

  else
  {
    sub_10016D688(a1, a2);
  }

  return a1;
}

uint64_t sub_1007C1354(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 160) == 1)
  {
    sub_10016D8AC(a1, a2);
  }

  else
  {
    sub_10016D95C(a1, a2);
  }

  return a1;
}

void CellularPlanDeliveryModel::maybeSubmitTransferSimTimestamps_sync(void *a1, uint64_t a2)
{
  v4 = *(a2 + 479);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 464);
  }

  if (v4)
  {
    goto LABEL_7;
  }

  v5 = *(a2 + 503);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 488);
  }

  if (v5)
  {
LABEL_7:
    if (*(a2 + 1112) == 1)
    {
      v6 = a1[38];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = a1[37];
          if (v8)
          {
            v9 = a1[5];
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              *v11 = 0;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I submitting commCenterCellularPlanTransferDurations awd metric", v11, 2u);
            }

            *(a2 + 1096) = CFAbsoluteTimeGetCurrent();
            (*(*v8 + 72))(v8, a2 + 992);
            v10 = a1[43];
            a1[43] = 0;
            if (v10)
            {
              (*(*v10 + 8))(v10);
            }

            if (*(a2 + 1112) == 1)
            {
              if (*(a2 + 1015) < 0)
              {
                operator delete(*(a2 + 992));
              }

              *(a2 + 1112) = 0;
            }

LABEL_23:
            sub_100004A34(v7);
            return;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
      {
        sub_10177EBF0();
      }

      if (v7)
      {
        goto LABEL_23;
      }
    }
  }
}

uint64_t sub_1007C1530(uint64_t (**a1)(uint64_t, void, void, _UNKNOWN **, void *))
{
  v1 = sub_1007CF550(a1);
  if (!v1)
  {
    sub_1007CF3E8();
  }

  return *v1;
}

uint64_t sub_1007C1558(uint64_t (**a1)(uint64_t, void, void, _UNKNOWN **, void *))
{
  v1 = sub_1007CF59C(a1);
  if (!v1)
  {
    sub_1007CF3E8();
  }

  return *v1;
}

uint64_t sub_1007C157C(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 120) == 1)
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
    v5 = *(a2 + 40);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = v5;
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v8;
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
  }

  else
  {
    v9 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v9;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v10 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v10;
    v11 = *(a2 + 56);
    v12 = *(a2 + 72);
    v13 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v13;
    *(a1 + 72) = v12;
    *(a1 + 56) = v11;
    *(a1 + 120) = 1;
  }

  return a1;
}

void CellularPlanDeliveryModel::resetPendingTransferPlanInfo(void *a1, uint64_t a2, __int128 **a3)
{
  v7 = a1[39];
  v6 = a1[40];
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v28 = *(a2 + 16);
  }

  v8 = HIBYTE(v28);
  if (v7 == v6)
  {
    v6 = v7;
LABEL_22:
    if (v8 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v28 >= 0)
    {
      v9 = HIBYTE(v28);
    }

    else
    {
      v9 = __p[1];
    }

    if (v28 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = v7 + 432;
    while (1)
    {
      v12 = *(v11 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      if (v9 == v12)
      {
        v14 = v13 >= 0 ? v11 : *v11;
        if (!memcmp(v10, v14, v9))
        {
          break;
        }
      }

      v15 = v11 + 848;
      v11 += 1280;
      if (v15 == v6)
      {
        goto LABEL_22;
      }
    }

    v6 = v11 - 432;
    if (v8 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v6 == a1[40])
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177EC24();
    }
  }

  else
  {
    v16 = *a3;
    v17 = a3[1];
    if (*a3 != v17)
    {
      do
      {
        __s1[1] = 0;
        v26 = 0;
        __s1[0] = 0;
        if (*(v16 + 23) < 0)
        {
          sub_100005F2C(__s1, *v16, *(v16 + 1));
        }

        else
        {
          v18 = *v16;
          v26 = *(v16 + 2);
          *__s1 = v18;
        }

        v19 = a1[5];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = __s1;
          if (v26 < 0)
          {
            v20 = __s1[0];
          }

          if (*(a2 + 23) >= 0)
          {
            v21 = a2;
          }

          else
          {
            v21 = *a2;
          }

          *buf = 136315394;
          v30 = v20;
          v31 = 2080;
          v32 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I resetting info (%s) of pending plan with source iccid:(%s)", buf, 0x16u);
        }

        if (SHIBYTE(v26) < 0 && __s1[1] == 26)
        {
          if (*__s1[0] == 0x726566736E617254 && *(__s1[0] + 1) == 0x69767265536D6953 && *(__s1[0] + 2) == 0x6E6F707365526563 && *(__s1[0] + 12) == 25971)
          {
            sub_1007C194C(v6 + 528);
          }
        }

        else if (SHIBYTE(v26) < 0 && __s1[1] == 39 && !memcmp(__s1[0], "TransferSimServiceViaWebServiceResponse", 0x27uLL))
        {
          sub_1007C19F8(v6 + 688);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(__s1[0]);
        }

        v16 = (v16 + 24);
      }

      while (v16 != v17);
    }
  }
}

void sub_1007C194C(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v4[3] = v1;
    v4[4] = v2;
    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v4[0] = a1;
    sub_10016C644(v4);
    *(a1 + 152) = 0;
  }
}

void sub_1007C19F8(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 112));
    }

    if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }

    if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 160) = 0;
  }
}

void CellularPlanDeliveryModel::deletePendingTransferPlan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 312);
  v6 = *(a1 + 320);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v21 = *(a2 + 16);
  }

  v8 = HIBYTE(v21);
  if (v7 == v6)
  {
    v6 = v7;
LABEL_22:
    if (v8 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v21 >= 0)
    {
      v9 = HIBYTE(v21);
    }

    else
    {
      v9 = __p[1];
    }

    if (v21 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = v7 + 432;
    while (1)
    {
      v12 = *(v11 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      if (v9 == v12)
      {
        v14 = v13 >= 0 ? v11 : *v11;
        if (!memcmp(v10, v14, v9))
        {
          break;
        }
      }

      v15 = v11 + 848;
      v11 += 1280;
      if (v15 == v6)
      {
        goto LABEL_22;
      }
    }

    v6 = v11 - 432;
    if (v8 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  if (v6 == *(a1 + 320))
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177ED98();
    }

    sub_100186828(a3, 6);
  }

  else
  {
    v16 = sub_10064A674(v6);
    v17 = *(a1 + 40);
    if (!v16)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = *a2;
        }

        *buf = 136315138;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I deleting pending transfer plan (%s)", buf, 0xCu);
      }

      v19 = *(a1 + 320);
      if (v6 + 1280 != v19)
      {
        do
        {
          sub_1007CC0DC(v6, (v6 + 1280));
          v6 += 1280;
        }

        while (v6 + 1280 != v19);
        v19 = *(a1 + 320);
      }

      while (v19 != v6)
      {
        v19 -= 1280;
        sub_1002813D0(v19);
      }

      *(a1 + 320) = v6;
      sub_100186828(a3, 0);
      CellularPlanDeliveryModel::notifyPlansUpdate(a1);
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177ED30();
    }

    sub_100186828(a3, 4);
  }
}

void sub_1007C1E1C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::deletePendingTransferPlan(void *a1, uint64_t a2)
{
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  sub_10092CDF4(a2, v24);
  v4 = a1[39];
  v5 = a1[40];
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v20, *a2, *(a2 + 8));
  }

  else
  {
    *v20 = *a2;
    v21 = *(a2 + 16);
  }

  p_p = &__p;
  if (SHIBYTE(v25) < 0)
  {
    sub_100005F2C(&__p, v24[0], v24[1]);
  }

  else
  {
    __p = *v24;
    v23 = v25;
  }

  v7 = HIBYTE(v23);
  if (v4 != v5)
  {
    if (v23 >= 0)
    {
      v8 = HIBYTE(v23);
    }

    else
    {
      v8 = *(&__p + 1);
    }

    if (v23 < 0)
    {
      p_p = __p;
    }

    if (v21 >= 0)
    {
      v9 = HIBYTE(v21);
    }

    else
    {
      v9 = v20[1];
    }

    if (v21 >= 0)
    {
      v10 = v20;
    }

    else
    {
      v10 = v20[0];
    }

    while (1)
    {
      v11 = *(v4 + 503);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v4 + 488);
      }

      if (v8 == v11)
      {
        v13 = v12 >= 0 ? (v4 + 480) : *(v4 + 480);
        if (!memcmp(p_p, v13, v8))
        {
          break;
        }
      }

      v14 = *(v4 + 479);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v4 + 464);
      }

      if (v9 == v14)
      {
        v16 = v15 >= 0 ? (v4 + 456) : *(v4 + 456);
        if (!memcmp(v10, v16, v9))
        {
          break;
        }
      }

      v4 += 1280;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

  v17 = a1[40];
  if (v4 != v17 && (*(v4 + 9) & 1) == 0)
  {
    v18 = a1[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      *buf = 136315138;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I deleting transfer plan (%s)", buf, 0xCu);
      v17 = a1[40];
    }

    if (v4 + 1280 != v17)
    {
      do
      {
        sub_1007CC0DC(v4, (v4 + 1280));
        v4 += 1280;
      }

      while (v4 + 1280 != v17);
      v17 = a1[40];
    }

    while (v17 != v4)
    {
      v17 -= 1280;
      sub_1002813D0(v17);
    }

    a1[40] = v4;
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_1007C20E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::maybeDeleteCrossPlatformPendingTransferPlan_sync(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 312);
  v7 = *(a1 + 320);
  if (v6 != v7)
  {
    while ((sub_10064A7C0(v6) & 1) == 0)
    {
      v6 += 1280;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v7 = *(a1 + 320);
  }

  if (v6 == v7)
  {
    return;
  }

  if (a3)
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I force deleting cross platform transfer plan", __p, 2u);
      v7 = *(a1 + 320);
    }

    if (v6 + 1280 != v7)
    {
      do
      {
        v9 = v6 + 1280;
        sub_1007CC0DC(v6, (v6 + 1280));
        v10 = v6 + 2560;
        v6 += 1280;
      }

      while (v10 != v7);
      v7 = *(a1 + 320);
      v6 = v9;
    }

    while (v7 != v6)
    {
      v7 -= 1280;
      sub_1002813D0(v7);
    }

    *(a1 + 320) = v6;
    return;
  }

  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  if (!v11)
  {
    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I updating state for cross platform transfer plan", __p, 2u);
    }

    CellularPlanDeliveryModel::updatePlanStates_sync(a1, v6, 0xCu);
    return;
  }

  (***(a1 + 112))(&v49);
  sub_100923D58(&v49, a2, v6 + 24, __p);
  v12 = *(v6 + 287);
  if (v12 >= 0)
  {
    v13 = *(v6 + 287);
  }

  else
  {
    v13 = *(v6 + 272);
  }

  v14 = BYTE7(v26[0]);
  v15 = SBYTE7(v26[0]);
  if (SBYTE7(v26[0]) < 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14)
  {
    v18 = 0;
    if ((SBYTE7(v26[0]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  if (v12 >= 0)
  {
    v16 = (v6 + 264);
  }

  else
  {
    v16 = *(v6 + 264);
  }

  if ((SBYTE7(v26[0]) & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v18 = memcmp(v16, v17, v13) == 0;
  if (v15 < 0)
  {
LABEL_37:
    operator delete(__p[0]);
  }

LABEL_38:
  if (v50)
  {
    sub_100004A34(v50);
  }

  if (v18)
  {
    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I deleting cross platform transfer plan", __p, 2u);
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
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
    memset(v26, 0, sizeof(v26));
    *__p = 0u;
    if (*(v6 + 263) < 0)
    {
      sub_100005F2C(__p, *(v6 + 240), *(v6 + 248));
    }

    else
    {
      *__p = *(v6 + 240);
      *&v26[0] = *(v6 + 256);
    }

    WORD4(v26[0]) = 512;
    BYTE4(v26[1]) = 0;
    BYTE8(v26[1]) = 0;
    BYTE12(v26[1]) = 0;
    LOBYTE(v27) = 0;
    BYTE8(v27) = 0;
    LOBYTE(v29) = 0;
    LODWORD(v30) = 0;
    BYTE8(v30) = 0;
    LOBYTE(v32) = 0;
    BYTE8(v32) = 0;
    LOBYTE(v34) = 0;
    BYTE8(v34) = 0;
    LOBYTE(v35) = 0;
    BYTE4(v37) = 0;
    BYTE8(v37) = 0;
    LOBYTE(v38) = 0;
    BYTE8(v38) = 0;
    LOBYTE(v39) = 0;
    BYTE8(v40) = 0;
    LOBYTE(v41) = 0;
    BYTE8(v42) = 0;
    LOBYTE(v43) = 0;
    BYTE8(v44) = 0;
    LOBYTE(v45) = 0;
    BYTE8(v46) = 0;
    LOBYTE(v47) = 0;
    BYTE8(v48) = 0;
    *(v26 + 13) = 0;
    *(v26 + 10) = 0;
    DWORD2(v29) = 0;
    WORD6(v29) = 0;
    v36 = 0uLL;
    *(&v35 + 1) = 0;
    LOBYTE(v37) = 0;
    v21 = *(a1 + 320);
    if (v6 + 1280 != v21)
    {
      do
      {
        sub_1007CC0DC(v6, (v6 + 1280));
        v6 += 1280;
      }

      while (v6 + 1280 != v21);
      v21 = *(a1 + 320);
    }

    while (v21 != v6)
    {
      v21 -= 1280;
      sub_1002813D0(v21);
    }

    *(a1 + 320) = v6;
    v22 = *(a1 + 304);
    if (v22)
    {
      v23 = std::__shared_weak_count::lock(v22);
      if (v23)
      {
        v24 = *(a1 + 296);
        if (v24)
        {
          (*(*v24 + 80))(v24, __p);
LABEL_59:
          sub_100004A34(v23);
LABEL_60:
          sub_10028290C(__p);
          return;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    if (!v23)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }
}

void sub_1007C255C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100004A34(v9);
  sub_10028290C(&a9);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::getMessageSessionWrapper_sync@<X0>(CellularPlanDeliveryModel *this@<X0>, void *a2@<X8>)
{
  result = *(this + 20);
  if (result)
  {
    return (*(*result + 32))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void *CellularPlanDeliveryModel::getDCTCode_sync@<X0>(CellularPlanDeliveryModel *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 20);
  if (v3)
  {
    v4 = *(*v3 + 64);

    return v4();
  }

  else
  {
    result = sub_10000501C(a2, 0);
    *(a2 + 24) = 1;
  }

  return result;
}

__int128 *CellularPlanDeliveryModel::deleteAllPendingTransferPlans(CellularPlanDeliveryModel *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I deleting all pending transfer items", __p, 2u);
  }

  v4 = *(this + 39);
  v3 = *(this + 40);
  if (v4 == v3)
  {
    goto LABEL_23;
  }

  v5 = *(this + 40);
  while (1)
  {
    if ((*(v4 + 9) & 1) == 0)
    {
      sub_1007C4FBC(v4 + 456, (v4 + 480), this + 26, __p);
      v6 = v12;
      if (v12 == 1 && v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v6)
      {
        break;
      }
    }

    v4 += 1280;
    if (v4 == v3)
    {
      return sub_1007C279C(this + 312, v5, *(this + 40));
    }
  }

  if (v4 != v3)
  {
    v7 = v4 + 1280;
    if (v4 + 1280 != v3)
    {
      v5 = v4;
      do
      {
        if (*(v7 + 9))
        {
          goto LABEL_20;
        }

        sub_1007C4FBC(v7 + 456, (v7 + 480), this + 26, __p);
        v8 = v12;
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }

        if ((v8 & 1) == 0)
        {
LABEL_20:
          sub_1007CC0DC(v5, v7);
          v5 += 80;
        }

        v7 += 1280;
      }

      while (v7 != v3);
      return sub_1007C279C(this + 312, v5, *(this + 40));
    }

LABEL_23:
    v5 = v4;
  }

  return sub_1007C279C(this + 312, v5, *(this + 40));
}

__int128 *sub_1007C279C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        sub_1007CC0DC(v7, v4);
        v4 += 80;
        v7 += 1280;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 1280;
      sub_1002813D0(v6);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

char *CellularPlanDeliveryModel::getTransferSourceIMEIDuringBuddyTransfer@<X0>(char *this@<X0>, uint64_t a2@<X8>)
{
  if (this[503] < 0)
  {
    return sub_100005F2C(a2, *(this + 60), *(this + 61));
  }

  *a2 = *(this + 30);
  *(a2 + 16) = *(this + 62);
  return this;
}

std::string *CellularPlanDeliveryModel::setTransferSourceIMEIDuringBuddyTransfer(std::string *result, const std::string *a2)
{
  if (LODWORD(result[10].__r_.__value_.__r.__words[2]) == 1)
  {
    v3 = result;
    v4 = result[1].__r_.__value_.__r.__words[2];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a2;
      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        v5 = a2->__r_.__value_.__r.__words[0];
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I detected source imei [%s] during buddy", &v6, 0xCu);
    }

    return std::string::operator=(v3 + 20, a2);
  }

  return result;
}

void CellularPlanDeliveryModel::getPendingInstallPlansConsentStatus(CellularPlanDeliveryModel *a1@<X0>, __int128 **a2@<X1>, unint64_t *a3@<X8>)
{
  v3 = a3;
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a2;
  v79 = a2[1];
  if (*a2 != v79)
  {
    v6 = 0;
    do
    {
      v7 = (v4 + 72);
      v8 = *(v4 + 95);
      if (v8 < 0)
      {
        v11 = *(v4 + 80);
        if (!v11)
        {
LABEL_50:
          v31 = *(a1 + 39);
          v32 = *(a1 + 40);
          if (v31 != v32)
          {
            v33 = *(v4 + 71);
            if (v33 >= 0)
            {
              v34 = *(v4 + 71);
            }

            else
            {
              v34 = *(v4 + 56);
            }

            v35 = v31 + 240;
            while (1)
            {
              v36 = *(v35 + 23);
              v37 = v36;
              if ((v36 & 0x80u) != 0)
              {
                v36 = *(v35 + 8);
              }

              if (v34 == v36)
              {
                v38 = v33 >= 0 ? (v4 + 48) : *(v4 + 48);
                v39 = v37 >= 0 ? v35 : *v35;
                if (!memcmp(v38, v39, v34) && *(v35 - 239) == 9)
                {
                  break;
                }
              }

              v41 = v35 + 1040;
              v35 += 1280;
              if (v41 == v32)
              {
                goto LABEL_128;
              }
            }

            v31 = v35 - 240;
          }

          if (v31 != v32)
          {
            if (*(v4 + 304) == 1)
            {
              v3 = a3;
              std::string::operator=((v4 + 152), (v31 + 432));
            }

            else
            {
              __p = 0uLL;
              v81 = 0;
              v3 = a3;
              if (*(v31 + 455) < 0)
              {
                sub_100005F2C(&v82, *(v31 + 432), *(v31 + 440));
              }

              else
              {
                v82 = *(v31 + 432);
                v83 = *(v31 + 448);
              }

              v84 = 0;
              v85 = 0;
              v87 = 0;
              v86 = 0;
              v88 = 0u;
              v89 = 0u;
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              sub_1007C3418(v4 + 128, &__p);
              if (SHIBYTE(v93) < 0)
              {
                operator delete(*(&v92 + 1));
              }

              if (SBYTE7(v92) < 0)
              {
                operator delete(v91);
              }

              if (SHIBYTE(v90) < 0)
              {
                operator delete(*(&v89 + 1));
              }

              if (SBYTE7(v89) < 0)
              {
                operator delete(v88);
              }

              if (SHIBYTE(v86) < 0)
              {
                operator delete(v84);
              }

              if (SHIBYTE(v83) < 0)
              {
                operator delete(v82);
              }

              if (SHIBYTE(v81) < 0)
              {
                operator delete(__p);
              }
            }

            if ((*(v31 + 479) & 0x8000000000000000) != 0)
            {
              if (*(v31 + 464))
              {
                goto LABEL_185;
              }
            }

            else
            {
              if (!*(v31 + 479))
              {
                goto LABEL_186;
              }

LABEL_185:
              std::string::operator=((v4 + 128), (v31 + 456));
            }

LABEL_186:
            LOBYTE(__p) = 1;
            v52 = v3[1];
            if (v52 >= v3[2])
            {
              goto LABEL_188;
            }

LABEL_187:
            *v52 = 1;
            v72 = *v4;
            *(v52 + 24) = *(v4 + 16);
            *(v52 + 8) = v72;
            *(v4 + 8) = 0;
            *(v4 + 16) = 0;
            *v4 = 0;
            v73 = *(v4 + 24);
            *(v52 + 48) = *(v4 + 40);
            *(v52 + 32) = v73;
            *(v4 + 32) = 0;
            *(v4 + 40) = 0;
            *(v4 + 24) = 0;
            v74 = *(v4 + 48);
            *(v52 + 72) = *(v4 + 64);
            *(v52 + 56) = v74;
            *(v4 + 56) = 0;
            *(v4 + 64) = 0;
            *(v4 + 48) = 0;
            v75 = *v7;
            *(v52 + 96) = *(v4 + 88);
            *(v52 + 80) = v75;
            *v7 = 0;
            *(v4 + 80) = 0;
            *(v4 + 88) = 0;
            v76 = *(v4 + 96);
            *(v52 + 120) = *(v4 + 112);
            *(v52 + 104) = v76;
            *(v4 + 96) = 0;
            *(v4 + 104) = 0;
            *(v4 + 112) = 0;
            *(v52 + 128) = *(v4 + 120);
            sub_1000DE908(v52 + 136, (v4 + 128));
            v6 = v52 + 320;
            goto LABEL_190;
          }

LABEL_128:
          v59 = *(a1 + 5);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            v77 = (v4 + 48);
            if (*(v4 + 71) < 0)
            {
              v77 = *v77;
            }

            LODWORD(__p) = 136315138;
            *(&__p + 4) = v77;
            _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Empty iccidHash from ALS for carrier: %s", &__p, 0xCu);
            v6 = a3[1];
          }

          LOBYTE(__p) = 0;
          v3 = a3;
          if (v6 >= a3[2])
          {
            goto LABEL_131;
          }

          *v6 = 0;
          v60 = *v4;
          *(v6 + 24) = *(v4 + 16);
          *(v6 + 8) = v60;
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *v4 = 0;
          v61 = *(v4 + 24);
          *(v6 + 48) = *(v4 + 40);
          *(v6 + 32) = v61;
          *(v4 + 32) = 0;
          *(v4 + 40) = 0;
          *(v4 + 24) = 0;
          v62 = *(v4 + 48);
          *(v6 + 72) = *(v4 + 64);
          *(v6 + 56) = v62;
          *(v4 + 56) = 0;
          *(v4 + 64) = 0;
          *(v4 + 48) = 0;
          v63 = *v7;
          *(v6 + 96) = *(v4 + 88);
          *(v6 + 80) = v63;
          *v7 = 0;
          *(v4 + 80) = 0;
          *(v4 + 88) = 0;
          v64 = *(v4 + 96);
          *(v6 + 120) = *(v4 + 112);
          *(v6 + 104) = v64;
          *(v4 + 96) = 0;
          *(v4 + 104) = 0;
          *(v4 + 112) = 0;
          *(v6 + 128) = *(v4 + 120);
          sub_1000DE908(v6 + 136, (v4 + 128));
          v6 += 320;
          goto LABEL_190;
        }

        v10 = *v7;
        v9 = (*v7 + v11);
      }

      else
      {
        if (!*(v4 + 95))
        {
          goto LABEL_50;
        }

        v9 = v7 + v8;
        v10 = (v4 + 72);
      }

      while (v10 != v9)
      {
        *v10 = __tolower(*v10);
        ++v10;
      }

      v13 = *(a1 + 39);
      v12 = *(a1 + 40);
      if (v13 != v12)
      {
        v14 = v13 + 456;
        while (1)
        {
          v15 = *(v4 + 95);
          if (v15 >= 0)
          {
            v16 = *(v4 + 95);
          }

          else
          {
            v16 = *(v4 + 80);
          }

          v17 = *(v14 + 47);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v14 + 32);
          }

          if (v16 == v17)
          {
            v19 = v15 >= 0 ? (v4 + 72) : *v7;
            v20 = v18 >= 0 ? (v14 + 24) : *(v14 + 24);
            if (!memcmp(v19, v20, v16))
            {
              break;
            }
          }

          __p = 0uLL;
          v81 = 0;
          sub_10092CF84(v14, &__p);
          v21 = *(v4 + 95);
          if (v21 >= 0)
          {
            v22 = *(v4 + 95);
          }

          else
          {
            v22 = *(v4 + 80);
          }

          v23 = HIBYTE(v81);
          v24 = HIBYTE(v81);
          if (v81 < 0)
          {
            v23 = *(&__p + 1);
          }

          if (v22 == v23 && (v21 >= 0 ? (v25 = (v4 + 72)) : (v25 = *v7), v81 >= 0 ? (p_p = &__p) : (p_p = __p), !memcmp(v25, p_p, v22)))
          {
            v29 = *(a1 + 5);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v14 + 23) >= 0)
              {
                v30 = v14;
              }

              else
              {
                v30 = *v14;
              }

              *buf = 136315138;
              v95 = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I find a match by padding iccid %s", buf, 0xCu);
              v27 = 1;
              v24 = HIBYTE(v81);
            }

            else
            {
              v27 = 1;
            }
          }

          else
          {
            v27 = 0;
          }

          if (v24 < 0)
          {
            operator delete(__p);
          }

          if (v27)
          {
            v13 = v14 - 456;
            break;
          }

          v13 += 1280;
          v28 = v14 + 824;
          v14 += 1280;
          if (v28 == v12)
          {
            v13 = v12;
            break;
          }
        }

        v12 = *(a1 + 40);
        v3 = a3;
      }

      if (v13 != v12)
      {
        if (*(v4 + 121) == 1)
        {
          *(v13 + 984) = 1;
        }

        if (*(v4 + 304) == 1)
        {
          std::string::operator=((v4 + 152), (v13 + 432));
        }

        else
        {
          __p = 0uLL;
          v81 = 0;
          if (*(v13 + 455) < 0)
          {
            sub_100005F2C(&v82, *(v13 + 432), *(v13 + 440));
          }

          else
          {
            v82 = *(v13 + 432);
            v83 = *(v13 + 448);
          }

          v84 = 0;
          v85 = 0;
          v87 = 0;
          v86 = 0;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v93 = 0u;
          sub_1007C3418(v4 + 128, &__p);
          if (SHIBYTE(v93) < 0)
          {
            operator delete(*(&v92 + 1));
          }

          if (SBYTE7(v92) < 0)
          {
            operator delete(v91);
          }

          if (SHIBYTE(v90) < 0)
          {
            operator delete(*(&v89 + 1));
          }

          if (SBYTE7(v89) < 0)
          {
            operator delete(v88);
          }

          if (SHIBYTE(v86) < 0)
          {
            operator delete(v84);
          }

          if (SHIBYTE(v83) < 0)
          {
            operator delete(v82);
          }

          if (SHIBYTE(v81) < 0)
          {
            operator delete(__p);
          }
        }

        if ((*(v13 + 479) & 0x8000000000000000) != 0)
        {
          if (!*(v13 + 464))
          {
            goto LABEL_152;
          }
        }

        else if (!*(v13 + 479))
        {
LABEL_152:
          if ((*(v13 + 455) & 0x8000000000000000) != 0)
          {
            if (!*(v13 + 440))
            {
LABEL_156:
              CellularPlanDeliveryModel::updatePlanStates_sync(a1, v13, 0xCu);
              CellularPlanDeliveryModel::notifyPlansUpdate(a1);
            }
          }

          else if (!*(v13 + 455))
          {
            goto LABEL_156;
          }

          LOBYTE(__p) = 1;
          v52 = v3[1];
          if (v52 >= v3[2])
          {
LABEL_188:
            v65 = sub_1007CCCB0(v3, &__p, v4);
            goto LABEL_189;
          }

          goto LABEL_187;
        }

        std::string::operator=((v4 + 128), (v13 + 456));
        goto LABEL_152;
      }

      v42 = *(a1 + 39);
      v43 = v42;
      if (v42 != v12)
      {
        v44 = *(v4 + 71);
        if (v44 >= 0)
        {
          v45 = *(v4 + 71);
        }

        else
        {
          v45 = *(v4 + 56);
        }

        v43 = *(a1 + 39);
        while (1)
        {
          v46 = *(v43 + 263);
          v47 = v46;
          if ((v46 & 0x80u) != 0)
          {
            v46 = *(v43 + 248);
          }

          if (v45 == v46)
          {
            v48 = v44 >= 0 ? (v4 + 48) : *(v4 + 48);
            v49 = v47 >= 0 ? (v43 + 240) : *(v43 + 240);
            if (!memcmp(v48, v49, v45))
            {
              v50 = *(v43 + 455);
              if ((v50 & 0x80u) != 0)
              {
                v50 = *(v43 + 440);
              }

              if (!v50)
              {
                v51 = *(v43 + 503);
                if ((v51 & 0x80u) != 0)
                {
                  v51 = *(v43 + 488);
                }

                if (!v51)
                {
                  break;
                }
              }
            }
          }

          v43 += 1280;
          if (v43 == v12)
          {
            goto LABEL_104;
          }
        }
      }

      if (v43 != v12)
      {
        std::string::operator=((v43 + 480), (v4 + 72));
        CellularPlanDeliveryModel::updatePlanStates_sync(a1, v43, 0xCu);
        CellularPlanDeliveryModel::notifyPlansUpdate(a1);
      }

LABEL_104:
      if (*(v4 + 121) == 1)
      {
        v3 = a3;
        CellularPlanDeliveryModel::appendPendingODAPlan(a1, v4);
        LOBYTE(__p) = 1;
        v52 = a3[1];
        if (v52 >= a3[2])
        {
          goto LABEL_188;
        }

        goto LABEL_187;
      }

      if (v42 != v12)
      {
        v53 = *(v4 + 71);
        if (v53 >= 0)
        {
          v54 = *(v4 + 71);
        }

        else
        {
          v54 = *(v4 + 56);
        }

        while (1)
        {
          v55 = *(v42 + 263);
          v56 = v55;
          if ((v55 & 0x80u) != 0)
          {
            v55 = *(v42 + 248);
          }

          if (v54 == v55)
          {
            v57 = v53 >= 0 ? (v4 + 48) : *(v4 + 48);
            v58 = v56 >= 0 ? (v42 + 240) : *(v42 + 240);
            if (!memcmp(v57, v58, v54) && (*(v42 + 1225) & 1) != 0)
            {
              break;
            }
          }

          v42 += 1280;
          if (v42 == v12)
          {
            goto LABEL_163;
          }
        }
      }

      if (v42 != v12)
      {
        std::string::operator=((v42 + 480), (v4 + 72));
        CellularPlanDeliveryModel::notifyPlansUpdate(a1);
      }

LABEL_163:
      LOBYTE(__p) = 0;
      v3 = a3;
      v66 = a3[1];
      if (v66 >= a3[2])
      {
LABEL_131:
        v65 = sub_1007CCCB0(a3, &__p, v4);
LABEL_189:
        v6 = v65;
        goto LABEL_190;
      }

      *v66 = 0;
      v67 = *v4;
      *(v66 + 24) = *(v4 + 16);
      *(v66 + 8) = v67;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *v4 = 0;
      v68 = *(v4 + 24);
      *(v66 + 48) = *(v4 + 40);
      *(v66 + 32) = v68;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 24) = 0;
      v69 = *(v4 + 48);
      *(v66 + 72) = *(v4 + 64);
      *(v66 + 56) = v69;
      *(v4 + 56) = 0;
      *(v4 + 64) = 0;
      *(v4 + 48) = 0;
      v70 = *v7;
      *(v66 + 96) = *(v4 + 88);
      *(v66 + 80) = v70;
      *v7 = 0;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      v71 = *(v4 + 96);
      *(v66 + 120) = *(v4 + 112);
      *(v66 + 104) = v71;
      *(v4 + 96) = 0;
      *(v4 + 104) = 0;
      *(v4 + 112) = 0;
      *(v66 + 128) = *(v4 + 120);
      sub_1000DE908(v66 + 136, (v4 + 128));
      v6 = v66 + 320;
LABEL_190:
      v3[1] = v6;
      v4 += 312;
    }

    while (v4 != v79);
  }
}

void sub_1007C33A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  *(v19 - 112) = v18;
  sub_1007CD1B8((v19 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_1007C3418(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 176) == 1)
  {
    sub_1000DE530(a1, a2);
  }

  else
  {
    v3 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v3;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 48) = 0;
    *(a1 + 72) = *(a2 + 72);
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    v7 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v7;
    *(a2 + 112) = 0;
    *(a2 + 120) = 0;
    *(a2 + 104) = 0;
    v8 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v8;
    *(a2 + 136) = 0;
    *(a2 + 144) = 0;
    *(a2 + 128) = 0;
    v9 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v9;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a1 + 176) = 1;
  }

  return a1;
}

uint64_t CellularPlanDeliveryModel::appendPendingODAPlan(void *a1, uint64_t a2)
{
  bzero(&v13, 0x500uLL);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  std::string::operator=(v21, a2);
  BYTE8(v13) = 1;
  LOWORD(v13) = 2311;
  if (*(a2 + 304) == 1)
  {
    std::string::operator=(&v14, (a2 + 208));
    std::string::operator=(&v15, (a2 + 232));
    std::string::operator=(&v16, (a2 + 256));
    std::string::operator=(v17, (a2 + 280));
    std::string::operator=(v18, (a2 + 176));
    std::string::operator=(v20, (a2 + 128));
    v4 = *(a2 + 175);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a2 + 160);
    }

    if (v4)
    {
      v5 = (a2 + 152);
    }

    else
    {
      v5 = (a2 + 128);
    }

    std::string::operator=(&v19, v5);
  }

  v22 = 1;
  v10 = sub_1002811AC(&v9, &v13);
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v20;
    if ((v20[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v20[0].__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I append pending ODA plan with iccid: %s", buf, 0xCu);
  }

  (*(*a1 + 32))(a1, &v9);
  *buf = &v9;
  sub_10005C284(buf);
  return sub_1002813D0(&v13);
}

void sub_1007C370C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  va_copy(v8, va);
  sub_10005C284(va1);
  sub_1002813D0(va2);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::addExpiredPlan_sync(uint64_t a1, uint64_t ***a2)
{
  if (!sub_10016FA58(a1 + 376, a2))
  {
    v4 = *(a1 + 40);
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
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I add expired plan: %s", &v6, 0xCu);
    }

    sub_1007CF5E8((a1 + 376), a2, a2);
    if (!CellularPlanDeliveryModel::PersistenceHelper::savePlans(*(a1 + 128), (a1 + 376), @"com.apple.commcenter.cellular_plan", @"kExpiredPlans") && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EE00();
    }
  }
}

void CellularPlanDeliveryModel::deleteExpiredPlan_sync(uint64_t a1, char *a2)
{
  if (sub_10016FA58(a1 + 376, a2))
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I remove expired plan: %s", &v6, 0xCu);
    }

    sub_1000727F0((a1 + 376), a2);
    if (!CellularPlanDeliveryModel::PersistenceHelper::savePlans(*(a1 + 128), (a1 + 376), @"com.apple.commcenter.cellular_plan", @"kExpiredPlans") && os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EE00();
    }
  }
}

uint64_t CellularPlanDeliveryModel::getFilteredPlans_sync@<X0>(CellularPlanDeliveryModel *this@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_100074920(a2, this + 376);
  v5 = *(this + 33);
  v6 = this + 272;
  if (v5 != v6)
  {
    do
    {
      result = sub_100005BA0(a2, v5 + 7, (v5 + 7));
      v7 = v5[1];
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
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      v5 = v8;
    }

    while (v8 != v6);
  }

  return result;
}

void CellularPlanDeliveryModel::getSourcePlanInfo(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = (a2 + 23);
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177EE9C();
    }

    goto LABEL_84;
  }

  v8 = a1[39];
  v9 = a1[40];
  if (v8 != v9)
  {
    while (1)
    {
      v10 = *(v8 + 455);
      if (v10 >= 0)
      {
        v11 = *(v8 + 455);
      }

      else
      {
        v11 = *(v8 + 440);
      }

      v12 = *(a2 + 23);
      v13 = v12;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }

      if (v11 == v12)
      {
        v14 = v10 >= 0 ? (v8 + 432) : *(v8 + 432);
        v15 = v13 >= 0 ? a2 : *a2;
        if (!memcmp(v14, v15, v11))
        {
          break;
        }
      }

      if (*(v8 + 479) < 0)
      {
        sub_100005F2C(__dst, *(v8 + 456), *(v8 + 464));
        if ((*v6 & 0x80) != 0)
        {
LABEL_22:
          sub_100005F2C(v41, *a2, *(a2 + 8));
          goto LABEL_23;
        }
      }

      else
      {
        *__dst = *(v8 + 456);
        v44 = *(v8 + 472);
        if ((v13 & 0x80) != 0)
        {
          goto LABEL_22;
        }
      }

      *v41 = *a2;
      v42 = *(a2 + 16);
LABEL_23:
      if (sub_100922660(__dst, v41))
      {
        goto LABEL_24;
      }

      v17 = (v8 + 480);
      v18 = *(v8 + 503);
      if (v18 >= 0)
      {
        v19 = *(v8 + 503);
      }

      else
      {
        v19 = *(v8 + 488);
      }

      v20 = *(a2 + 23);
      v21 = v20;
      if ((v20 & 0x80u) != 0)
      {
        v20 = *(a2 + 8);
      }

      if (v19 == v20)
      {
        v22 = v18 >= 0 ? (v8 + 480) : *v17;
        v23 = v21 >= 0 ? a2 : *a2;
        if (!memcmp(v22, v23, v19))
        {
LABEL_24:
          v16 = 1;
          goto LABEL_69;
        }
      }

      sub_10092CDF4(a2, v39);
      v24 = *(v8 + 503);
      if (v24 >= 0)
      {
        v25 = *(v8 + 503);
      }

      else
      {
        v25 = *(v8 + 488);
      }

      v26 = v40;
      v27 = v40;
      if ((v40 & 0x80u) != 0)
      {
        v26 = v39[1];
      }

      if (v25 == v26)
      {
        v28 = v24 >= 0 ? (v8 + 480) : *v17;
        v29 = (v40 & 0x80u) == 0 ? v39 : v39[0];
        if (!memcmp(v28, v29, v25))
        {
          v16 = 1;
          if ((v27 & 0x80) == 0)
          {
            goto LABEL_69;
          }

LABEL_68:
          operator delete(v39[0]);
          goto LABEL_69;
        }
      }

      sub_10092CF84(a2, __p);
      v30 = *(v8 + 503);
      if (v30 >= 0)
      {
        v31 = *(v8 + 503);
      }

      else
      {
        v31 = *(v8 + 488);
      }

      v32 = v38;
      v33 = v38;
      if ((v38 & 0x80u) != 0)
      {
        v32 = __p[1];
      }

      if (v31 != v32)
      {
        v16 = 0;
        if ((v38 & 0x80000000) == 0)
        {
          goto LABEL_67;
        }

LABEL_66:
        operator delete(__p[0]);
        goto LABEL_67;
      }

      if (v30 >= 0)
      {
        v34 = (v8 + 480);
      }

      else
      {
        v34 = *v17;
      }

      if ((v38 & 0x80u) == 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      v16 = memcmp(v34, v35, v31) == 0;
      if (v33 < 0)
      {
        goto LABEL_66;
      }

LABEL_67:
      if ((v40 & 0x80) != 0)
      {
        goto LABEL_68;
      }

LABEL_69:
      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
      }

      if (SHIBYTE(v44) < 0)
      {
        operator delete(__dst[0]);
      }

      if (v16)
      {
        break;
      }

      v8 += 1280;
      if (v8 == v9)
      {
        v8 = v9;
        break;
      }
    }
  }

  if (v8 == a1[40])
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177EE34();
    }

LABEL_84:
    v36 = 0;
    *a3 = 0;
    goto LABEL_85;
  }

  sub_10027B690(a3, v8);
  v36 = 1;
LABEL_85:
  a3[1280] = v36;
}

void sub_1007C3D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::getPendingTransferPlansForCarrier@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *(result + 312);
  for (i = *(result + 320); v4 != i; v4 += 80)
  {
    bzero(v14, 0x500uLL);
    sub_10027B690(v14, v4);
    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = v15[1];
    }

    v8 = *(a2 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 8);
    }

    if (v7 == v8)
    {
      v10 = (v16 & 0x80u) == 0 ? v15 : v15[0];
      v11 = v9 >= 0 ? a2 : *a2;
      if (!memcmp(v10, v11, v7))
      {
        v12 = a3[1];
        if (v12 >= a3[2])
        {
          v13 = sub_1002811AC(a3, v14);
        }

        else
        {
          sub_10027B690(a3[1], v14);
          v13 = v12 + 1280;
        }

        a3[1] = v13;
      }
    }

    result = sub_1002813D0(v14);
  }

  return result;
}

void sub_1007C3ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  sub_1002813D0(&a10);
  a10 = v10;
  sub_10005C284(&a10);
  _Unwind_Resume(a1);
}

CellularPlanDeliveryModel *CellularPlanDeliveryModel::startPushListenerForPendingPlans_sync(CellularPlanDeliveryModel *this)
{
  v1 = *(this + 39);
  v2 = *(this + 40);
  if (v1 != v2)
  {
    v3 = this;
    do
    {
      if (*(v1 + 1) == 8)
      {
        v4[0] = off_101E7F9B0;
        v4[3] = v4;
        CellularPlanDeliveryModel::maybeStartEntitlementPushListenerForPlan(v3, v1 + 432, v4);
        this = sub_10002B644(v4);
      }

      v1 += 1280;
    }

    while (v1 != v2);
  }

  return this;
}

void sub_1007C3FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::maybeStartEntitlementPushListenerForPlan(CellularPlanDeliveryModel *this, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    v9 = *(a2 + 8);
    if (!v9)
    {
      return;
    }

    v6 = (this + 320);
    v7 = *(this + 39);
    v8 = *(this + 40);
    sub_100005F2C(__p, *a2, v9);
  }

  else
  {
    if (!*(a2 + 23))
    {
      return;
    }

    v6 = (this + 320);
    v7 = *(this + 39);
    v8 = *(this + 40);
    *__p = *a2;
    v22 = *(a2 + 16);
  }

  v10 = HIBYTE(v22);
  if (v7 == v8)
  {
LABEL_23:
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v22 >= 0)
    {
      v11 = HIBYTE(v22);
    }

    else
    {
      v11 = __p[1];
    }

    if (v22 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = v7 + 432;
    while (1)
    {
      v14 = *(v13 + 23);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v13 + 8);
      }

      if (v11 == v14)
      {
        v16 = v15 >= 0 ? v13 : *v13;
        if (!memcmp(v12, v16, v11))
        {
          break;
        }
      }

      v17 = v13 + 848;
      v13 += 1280;
      if (v17 == v8)
      {
        v7 = v8;
        goto LABEL_23;
      }
    }

    v7 = v13 - 432;
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_25;
    }
  }

  operator delete(__p[0]);
LABEL_25:
  if (v7 != *v6)
  {
    CellularPlanDeliveryModel::getPushPendingPlanController_sync(&v19, this);
    v18 = v19;
    if (v19)
    {
      sub_10025ABF0((v7 + 1248), a3);
      (*(*v18 + 16))(v18, a2, v7 + 24, v7 + 48, v7 + 72, v7 + 96);
    }

    else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10177EED0();
    }

    if (v20)
    {
      sub_100004A34(v20);
    }
  }
}

void sub_1007C4190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::getPushPendingPlanController_sync(uint64_t *__return_ptr a1@<X8>, CellularPlanDeliveryModel *this@<X0>)
{
  v4 = *(this + 45);
  if (!v4)
  {
    v5 = *(this + 14);
    sub_100004AA0(&v17, this + 1);
    v6 = v18;
    if (v18)
    {
      v7 = v17;
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v6);
      v14 = 0;
      v15 = 0;
      v8 = std::__shared_weak_count::lock(v6);
      v9 = v8;
      if (v8)
      {
        v10 = v7 + 48;
        if (!v7)
        {
          v10 = 0;
        }

        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v14 = v10;
        v15 = v8;
        std::__shared_weak_count::__release_weak(v6);
        sub_100004A34(v9);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        std::__shared_weak_count::__release_weak(v6);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    (*(*v5 + 496))(&v16, v5, this + 24, &v14);
    v11 = v16;
    v16 = 0uLL;
    v12 = *(this + 46);
    *(this + 360) = v11;
    if (v12)
    {
      sub_100004A34(v12);
      if (*(&v16 + 1))
      {
        sub_100004A34(*(&v16 + 1));
      }
    }

    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }

    v4 = *(this + 45);
  }

  v13 = *(this + 46);
  *a1 = v4;
  a1[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1007C4300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::getMonitorModeType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (((*(**(a1 + 112) + 360))(*(a1 + 112), a3, a4, a5, a6, a2) & 1) == 0)
  {
    v24 = *(a1 + 176);
    if (v24)
    {
      (*(*v24 + 64))(v24, a2, 1);
    }

    return 0;
  }

  (***(a1 + 112))(&v44);
  ServiceMap = Registry::getServiceMap(v44);
  v15 = ServiceMap;
  v16 = "22TravelHandlerInterface";
  if (("22TravelHandlerInterface" & 0x8000000000000000) != 0)
  {
    v17 = ("22TravelHandlerInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v46 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v46);
  v41 = a7;
  v39 = a5;
  v40 = a6;
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
      goto LABEL_12;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
LABEL_12:
  if (v45)
  {
    sub_100004A34(v45);
  }

  if (!v22 || ((*(*v22 + 48))(v22, a2) & 1) == 0)
  {
    v25 = 1;
    if (v23)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v25 = 0;
  if ((v23 & 1) == 0)
  {
LABEL_19:
    sub_100004A34(v21);
  }

LABEL_20:
  if (!v25)
  {
    return 0;
  }

  if ((*(**(a1 + 112) + 104))(*(a1 + 112)))
  {
    v26 = 1;
  }

  else
  {
    v26 = (*(**(a1 + 112) + 40))(*(a1 + 112));
  }

  v28 = *(a1 + 312);
  v29 = *(a1 + 320);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v43 = *(a2 + 16);
  }

  v30 = HIBYTE(v43);
  if (v28 == v29)
  {
    v29 = v28;
LABEL_47:
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (v43 >= 0)
    {
      v31 = HIBYTE(v43);
    }

    else
    {
      v31 = __p[1];
    }

    if (v43 >= 0)
    {
      v32 = __p;
    }

    else
    {
      v32 = __p[0];
    }

    v33 = v28 + 456;
    while (1)
    {
      v34 = *(v33 + 23);
      v35 = v34;
      if ((v34 & 0x80u) != 0)
      {
        v34 = *(v33 + 8);
      }

      if (v31 == v34)
      {
        v36 = v35 >= 0 ? v33 : *v33;
        if (!memcmp(v32, v36, v31))
        {
          break;
        }
      }

      v37 = v33 + 824;
      v33 += 1280;
      if (v37 == v29)
      {
        goto LABEL_47;
      }
    }

    v29 = v33 - 456;
    if ((v30 & 0x80) == 0)
    {
      goto LABEL_49;
    }
  }

  operator delete(__p[0]);
LABEL_49:
  if (v29 != *(a1 + 320))
  {
    if ((*(v29 + 8) & 1) == 0 && (v41 & 1) == 0)
    {
      v38 = *(a1 + 176);
      if (v38)
      {
        (*(*v38 + 64))(v38, a2, 1);
      }

      v26 = 0;
    }

    if (*(v29 + 984) == 2 && ((*(**(a1 + 112) + 344))(*(a1 + 112), a3, a4, v39, v40) & 1) != 0)
    {
      return 1;
    }
  }

  return v26;
}

void sub_1007C46F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::reportTransferSimServiceOnTimedOut(uint64_t a1, const void **a2)
{
  v35 = 0u;
  v37 = 0u;
  v36 = 0u;
  v42 = 0u;
  v41 = 0u;
  memset(__p, 0, sizeof(__p));
  v38 = 0u;
  v40 = 23;
  HIBYTE(v35) = 8;
  v34 = 0x72616C756C6C6543;
  BYTE7(v37) = 13;
  qmemcpy(&v36, "eSIM Transfer", 13);
  sub_1000167D4((&v37 + 8), "No service after 3 min timeout", 0x1EuLL);
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  memset(&v33, 0, sizeof(v33));
  v5 = &v33;
  sub_1000677C4(&v33, v4 + 1);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v33.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  *(&v5->__r_.__value_.__l.__data_ + v4) = 32;
  if (v38 >= 0)
  {
    v7 = &v37 + 8;
  }

  else
  {
    v7 = *(&v37 + 1);
  }

  if (v38 >= 0)
  {
    v8 = HIBYTE(v38);
  }

  else
  {
    v8 = v38;
  }

  v9 = std::string::append(&v33, v7, v8);
  v10 = v9->__r_.__value_.__r.__words[0];
  v45[0] = v9->__r_.__value_.__l.__size_;
  *(v45 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
  v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v10;
  __p[1] = v45[0];
  *(&__p[1] + 7) = *(v45 + 7);
  HIBYTE(__p[2]) = v11;
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  v40 |= 3uLL;
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I report Transfer Sim Service On Timeout.", &v33, 2u);
  }

  (***(a1 + 112))(&v33);
  ServiceMap = Registry::getServiceMap(v33.__r_.__value_.__l.__data_);
  v14 = ServiceMap;
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  v45[0] = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, v45);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
LABEL_31:
  sub_100D9EC48(__dst, &v34);
  v44 = 0;
  (*(*v21 + 16))(v21, __dst, v43);
  sub_10010DF14(v43);
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if ((v24 & 0x80000000) == 0)
  {
    if (v22)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  operator delete(__dst[0]);
  if ((v22 & 1) == 0)
  {
LABEL_41:
    sub_100004A34(v20);
  }

LABEL_42:
  if (v33.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v33.__r_.__value_.__l.__size_);
  }

  if (SBYTE7(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(*(&v37 + 1));
  }

  if (SBYTE7(v37) < 0)
  {
    operator delete(v36);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }
}

void sub_1007C4AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, std::__shared_weak_count *a28, int a29, __int16 a30, char a31, char a32, char a33)
{
  sub_10010DF14(v35 - 120);
  sub_100D9E764(&a10);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  if (a28)
  {
    sub_100004A34(a28);
  }

  sub_100D9E764(&a33);
  _Unwind_Resume(a1);
}

BOOL CellularPlanDeliveryModel::isOnDeviceTransferredPlan(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 312);
  v3 = *(a1 + 320);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v15 = *(a2 + 16);
  }

  v5 = HIBYTE(v15);
  if (v4 == v3)
  {
    v3 = v4;
LABEL_22:
    if (v5 < 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v15 >= 0)
    {
      v6 = HIBYTE(v15);
    }

    else
    {
      v6 = __p[1];
    }

    if (v15 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = v4 + 456;
    while (1)
    {
      v9 = v8[23];
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = *(v8 + 1);
      }

      if (v6 == v9)
      {
        v11 = v10 >= 0 ? v8 : *v8;
        if (!memcmp(v7, v11, v6))
        {
          break;
        }
      }

      v12 = v8 + 824;
      v8 += 1280;
      if (v12 == v3)
      {
        goto LABEL_22;
      }
    }

    v3 = v8 - 456;
    if (v5 < 0)
    {
LABEL_23:
      operator delete(__p[0]);
    }
  }

  return v3 != *(a1 + 320) && *v3 == 7;
}

void CellularPlanDeliveryModel::setPendingTransferPlansReportStateAsSent(uint64_t a1, __int128 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v5 = *(a1 + 320);
    do
    {
      v6 = *(a1 + 312);
      if (*(v2 + 23) < 0)
      {
        sub_100005F2C(__p, *v2, *(v2 + 1));
      }

      else
      {
        v7 = *v2;
        v18 = *(v2 + 2);
        *__p = v7;
      }

      v8 = HIBYTE(v18);
      if (v6 == v5)
      {
        v5 = v6;
LABEL_24:
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v18 >= 0)
        {
          v9 = HIBYTE(v18);
        }

        else
        {
          v9 = __p[1];
        }

        if (v18 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        v11 = v6 + 456;
        while (1)
        {
          v12 = *(v11 + 23);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(v11 + 8);
          }

          if (v9 == v12)
          {
            v14 = v13 >= 0 ? v11 : *v11;
            if (!memcmp(v10, v14, v9))
            {
              break;
            }
          }

          v15 = v11 + 824;
          v11 += 1280;
          if (v15 == v5)
          {
            goto LABEL_24;
          }
        }

        v5 = v11 - 456;
        if ((v8 & 0x80) == 0)
        {
          goto LABEL_26;
        }
      }

      operator delete(__p[0]);
LABEL_26:
      v16 = *(a1 + 320);
      if (v5 != v16 && (*(v5 + 11) & 1) == 0)
      {
        *(v5 + 11) = 1;
      }

      v2 = (v2 + 24);
      v5 = v16;
    }

    while (v2 != v3);
  }
}

void CellularPlanDeliveryModel::getTransferPlansNeedStatusReport(CellularPlanDeliveryModel *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(this + 39);
  v4 = *(this + 40);
  if (v3 != v4)
  {
    v6 = v3 + 456;
    do
    {
      sub_1007C4FBC(v6, (v6 + 24), this + 26, __p);
      if (v18 == 1)
      {
        if (v17 < 0)
        {
          operator delete(*__p);
        }

        if (sub_10064A68C(v6 - 456, this + 5))
        {
          v7 = a2[1];
          if (v7 >= a2[2])
          {
            v8 = sub_1000053A0(a2, v6);
          }

          else
          {
            sub_10011C7A4(a2, v6);
            v8 = v7 + 24;
          }

          a2[1] = v8;
          goto LABEL_20;
        }

        v13 = *(this + 5);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = v6;
          if (*(v6 + 23) < 0)
          {
            v14 = *v6;
          }

          *__p = 136315138;
          *&__p[4] = v14;
          v11 = v13;
          v12 = "#I Plan (%s) does not need status report";
LABEL_17:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, __p, 0xCu);
        }
      }

      else
      {
        v9 = *(this + 5);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v6;
          if (*(v6 + 23) < 0)
          {
            v10 = *v6;
          }

          *__p = 136315138;
          *&__p[4] = v10;
          v11 = v9;
          v12 = "#I Plan (%s) is not available yet";
          goto LABEL_17;
        }
      }

LABEL_20:
      v15 = v6 + 824;
      v6 += 1280;
    }

    while (v15 != v4);
  }
}

void sub_1007C4FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void sub_1007C4FBC(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a4;
  v5 = *a3;
  v6 = a3[1];
  if (*a3 == v6)
  {
    v30 = 0;
    goto LABEL_58;
  }

  while (1)
  {
    if (*(v5 + 12) == 3 && *(v5 + 80) == 1)
    {
      v9 = *(v5 + 64);
      v10 = *(v5 + 56);
      if (v10 != v9)
      {
        break;
      }
    }

LABEL_55:
    v5 += 88;
    if (v5 == v6)
    {
      v30 = 0;
      v4 = a4;
LABEL_58:
      *v4 = 0;
      goto LABEL_59;
    }
  }

  while (1)
  {
    v11 = *(a1 + 23);
    if (v11 >= 0)
    {
      v12 = *(a1 + 23);
    }

    else
    {
      v12 = *(a1 + 8);
    }

    v13 = *(v10 + 39);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(v10 + 24);
    }

    if (v12 == v13)
    {
      v15 = v11 >= 0 ? a1 : *a1;
      v16 = v14 >= 0 ? (v10 + 16) : *(v10 + 16);
      if (!memcmp(v15, v16, v12))
      {
        break;
      }
    }

    sub_10092CDF4(v10 + 16, v35);
    v17 = *(a2 + 23);
    if (v17 >= 0)
    {
      v18 = *(a2 + 23);
    }

    else
    {
      v18 = a2[1];
    }

    v19 = v36;
    v20 = v36;
    if ((v36 & 0x80u) != 0)
    {
      v19 = v35[1];
    }

    if (v18 == v19)
    {
      v21 = v17 >= 0 ? a2 : *a2;
      v22 = (v36 & 0x80u) == 0 ? v35 : v35[0];
      if (!memcmp(v21, v22, v18))
      {
        v29 = 1;
        if ((v20 & 0x80) == 0)
        {
          goto LABEL_49;
        }

LABEL_48:
        operator delete(v35[0]);
        goto LABEL_49;
      }
    }

    sub_10092CF84(v10 + 16, __p);
    v23 = *(a2 + 23);
    if (v23 >= 0)
    {
      v24 = *(a2 + 23);
    }

    else
    {
      v24 = a2[1];
    }

    v25 = v34;
    v26 = v34;
    if ((v34 & 0x80u) != 0)
    {
      v25 = __p[1];
    }

    if (v24 != v25)
    {
      v29 = 0;
      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

LABEL_46:
      operator delete(__p[0]);
      goto LABEL_47;
    }

    if (v23 >= 0)
    {
      v27 = a2;
    }

    else
    {
      v27 = *a2;
    }

    if ((v34 & 0x80u) == 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    v29 = memcmp(v27, v28, v24) == 0;
    if (v26 < 0)
    {
      goto LABEL_46;
    }

LABEL_47:
    if ((v36 & 0x80) != 0)
    {
      goto LABEL_48;
    }

LABEL_49:
    if (v29)
    {
      break;
    }

    v10 += 216;
    if (v10 == v9)
    {
      v10 = v9;
      break;
    }
  }

  if (v10 == *(v5 + 64))
  {
    goto LABEL_55;
  }

  if (*(v10 + 39) < 0)
  {
    v4 = a4;
    sub_100005F2C(a4, *(v10 + 16), *(v10 + 24));
  }

  else
  {
    v31 = *(v10 + 16);
    v4 = a4;
    *(a4 + 16) = *(v10 + 32);
    *a4 = v31;
  }

  v30 = 1;
LABEL_59:
  v4[24] = v30;
}

void sub_1007C5214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::encodeTransferStatusReport_sync(CellularPlanDeliveryModel *this@<X0>, std::string *a2@<X8>)
{
  v2 = a2;
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(this + 39);
  v4 = *(this + 40);
  if (v3 == v4)
  {
    return;
  }

  v6 = v3 + 264;
  do
  {
    v7 = (v6 + 192);
    sub_1007C4FBC(v6 + 192, (v6 + 216), this + 26, __p);
    if (BYTE8(v35) == 1)
    {
      if (SBYTE7(v35) < 0)
      {
        operator delete(__p[0]);
      }

      if (sub_10064A68C(v6 - 264, this + 5))
      {
        v8 = *(this + 5);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v6 + 215) < 0)
          {
            v9 = *v7;
          }

          else
          {
            v9 = (v6 + 192);
          }

          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Plan (%s) needs status report", __p, 0xCu);
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
        v41 = 0u;
        v39 = 0u;
        v40 = 0u;
        *__src = 0u;
        *v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        *__p = 0u;
        sub_10000D518(__p);
        v11 = sub_10000C030(__p, "{kIccid=", 8);
        v12 = *(v6 + 215);
        if (v12 >= 0)
        {
          v13 = v6 + 192;
        }

        else
        {
          v13 = *(v6 + 192);
        }

        if (v12 >= 0)
        {
          v14 = *(v6 + 215);
        }

        else
        {
          v14 = *(v6 + 200);
        }

        v15 = sub_10000C030(v11, v13, v14);
        v16 = sub_10000C030(v15, ";kPhoneNumber=", 14);
        v17 = *(v6 + 23);
        if (v17 >= 0)
        {
          v18 = v6;
        }

        else
        {
          v18 = *v6;
        }

        if (v17 >= 0)
        {
          v19 = *(v6 + 23);
        }

        else
        {
          v19 = *(v6 + 8);
        }

        v20 = sub_10000C030(v16, v18, v19);
        sub_10000C030(v20, "},", 2);
        if ((BYTE8(v40) & 0x10) != 0)
        {
          v22 = v40;
          if (v40 < __src[1])
          {
            *&v40 = __src[1];
            v22 = __src[1];
          }

          v23 = __src[0];
        }

        else
        {
          if ((BYTE8(v40) & 8) == 0)
          {
            v21 = 0;
            v33 = 0;
LABEL_41:
            *(__dst + v21) = 0;
            if ((v33 & 0x80u) == 0)
            {
              v24 = __dst;
            }

            else
            {
              v24 = __dst[0];
            }

            if ((v33 & 0x80u) == 0)
            {
              v25 = v33;
            }

            else
            {
              v25 = __dst[1];
            }

            std::string::append(v2, v24, v25);
            if (v33 < 0)
            {
              operator delete(__dst[0]);
            }

            __p[0] = v31;
            *(__p + *(v31 - 3)) = v30;
            if (SHIBYTE(v39) < 0)
            {
              operator delete(v38[1]);
            }

            std::locale::~locale(&v35);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_52;
          }

          v23 = *(&v35 + 1);
          v22 = *(&v36 + 1);
        }

        v21 = v22 - v23;
        if ((v22 - v23) >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_1000A2378();
        }

        if (v21 >= 0x17)
        {
          operator new();
        }

        v33 = v22 - v23;
        if (v21)
        {
          memmove(__dst, v23, v21);
        }

        goto LABEL_41;
      }
    }

    else
    {
      v10 = *(this + 5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v6 + 215) < 0)
        {
          v7 = *v7;
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Plan (%s) is not available yet", __p, 0xCu);
      }
    }

LABEL_52:
    v26 = v6 + 1016;
    v6 += 1280;
  }

  while (v26 != v4);
  v27 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  if (v27 < 0)
  {
    size = v2->__r_.__value_.__l.__size_;
    if (size)
    {
      v28 = size - 1;
      v2->__r_.__value_.__l.__size_ = v28;
      v2 = v2->__r_.__value_.__r.__words[0];
LABEL_58:
      v2->__r_.__value_.__s.__data_[v28] = 0;
    }
  }

  else if (*(&v2->__r_.__value_.__s + 23))
  {
    v28 = v27 - 1;
    *(&v2->__r_.__value_.__s + 23) = v28;
    goto LABEL_58;
  }
}

void sub_1007C56A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::ios::~ios();
  if (*(a10 + 23) < 0)
  {
    operator delete(*a10);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::maybeSubmitTransferTimestampsWhenVinylInfoUpdate(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1112) != 1 || (*(a2 + 1017) & 1) != 0)
  {
    return;
  }

  v4 = (a2 + 456);
  sub_1007C4FBC(a2 + 456, (a2 + 480), (a1 + 208), &__dst);
  v5 = v29;
  if (v29 == 1 && SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  if (!v5)
  {
    return;
  }

  if ((*(a2 + 1016) & 1) == 0)
  {
    v6 = *(a1 + 304);
    if (v6)
    {
      v7 = std::__shared_weak_count::lock(v6);
      if (v7)
      {
        v8 = *(a1 + 296);
        if (v8)
        {
          (*(*v8 + 72))(v8, a2 + 992);
          if (*(a2 + 1112) == 1)
          {
            if (*(a2 + 1015) < 0)
            {
              operator delete(*(a2 + 992));
            }

            *(a2 + 1112) = 0;
          }

LABEL_23:
          v9 = v7;
LABEL_52:
          sub_100004A34(v9);
          return;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
      if (!v7)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }

    goto LABEL_23;
  }

  v25 = 0;
  v26 = 0;
  Registry::getTimerService(&v25, *(a1 + 96));
  if (v25)
  {
    __dst = 0uLL;
    v28 = 0;
    if (*(a2 + 479) < 0)
    {
      sub_100005F2C(&__dst, *(a2 + 456), *(a2 + 464));
    }

    else
    {
      __dst = *v4;
      v28 = *(a2 + 472);
    }

    sub_100004AA0(&v30, (a1 + 8));
    v11 = v30;
    v10 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
    }

    v12 = v25;
    sub_10000501C(__p, "Delay Transfer Sim Timestamps Metric Submission");
    v13 = *(a1 + 24);
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_1007C5B44;
    aBlock[3] = &unk_101E7EFD0;
    aBlock[4] = a1;
    aBlock[5] = v11;
    v18 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(&v19, __dst, *(&__dst + 1));
    }

    else
    {
      v19 = __dst;
      v20 = v28;
    }

    v21 = _Block_copy(aBlock);
    sub_100D23364(v12, __p, 1, 180000000, &object, &v21);
    v14 = v30;
    v30 = 0;
    v15 = *(a1 + 344);
    *(a1 + 344) = v14;
    if (v15)
    {
      (*(*v15 + 8))(v15);
      v16 = v30;
      v30 = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }
    }

    if (v21)
    {
      _Block_release(v21);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(__dst);
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EF04();
  }

  v9 = v26;
  if (v26)
  {
    goto LABEL_52;
  }
}

void sub_1007C5A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *aBlock, dispatch_object_t object, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  if (*(v31 - 73) < 0)
  {
    operator delete(*(v31 - 96));
  }

  v33 = *(v31 - 104);
  if (v33)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C5B44(uint64_t a1)
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
LABEL_18:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 304);
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        if (v7)
        {
          v8 = *(v3 + 296);
          if (v8)
          {
            v9 = *(v3 + 344);
            *(v3 + 344) = 0;
            if (v9)
            {
              (*(*v9 + 8))(v9);
            }

            v10 = *(v3 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I 3min expiry, submit TransferTimestamps", buf, 2u);
            }

            v12 = *(v3 + 312);
            v11 = *(v3 + 320);
            if (*(a1 + 79) < 0)
            {
              sub_100005F2C(__p, *(a1 + 56), *(a1 + 64));
            }

            else
            {
              *__p = *(a1 + 56);
              v22 = *(a1 + 72);
            }

            v13 = HIBYTE(v22);
            if (v12 == v11)
            {
              v11 = v12;
            }

            else
            {
              if (v22 >= 0)
              {
                v14 = HIBYTE(v22);
              }

              else
              {
                v14 = __p[1];
              }

              if (v22 >= 0)
              {
                v15 = __p;
              }

              else
              {
                v15 = __p[0];
              }

              v16 = v12 + 456;
              while (1)
              {
                v17 = *(v16 + 23);
                v18 = v17;
                if ((v17 & 0x80u) != 0)
                {
                  v17 = *(v16 + 8);
                }

                if (v14 == v17)
                {
                  v19 = v18 >= 0 ? v16 : *v16;
                  if (!memcmp(v15, v19, v14))
                  {
                    break;
                  }
                }

                v20 = v16 + 824;
                v16 += 1280;
                if (v20 == v11)
                {
                  goto LABEL_40;
                }
              }

              v11 = v16 - 456;
            }

LABEL_40:
            if (v13 < 0)
            {
              operator delete(__p[0]);
            }

            if (v11 != *(v3 + 320) && *(v11 + 1112) == 1)
            {
              *(v11 + 1017) = 1;
              (*(*v8 + 72))(v8, v11 + 992);
              CellularPlanDeliveryModel::reportTransferSimServiceOnTimedOut(v3, (v11 + 240));
              if (*(v11 + 1112) == 1)
              {
                if (*(v11 + 1015) < 0)
                {
                  operator delete(*(v11 + 992));
                }

                *(v11 + 1112) = 0;
              }
            }

            goto LABEL_16;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177EBF0();
      }

LABEL_16:
      if (v7)
      {
        sub_100004A34(v7);
      }

      goto LABEL_18;
    }
  }
}

void sub_1007C5DA0(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

char *sub_1007C5DC0(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_1007C5E24(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C5E3C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void CellularPlanDeliveryModel::sessionInvalidated(CellularPlanDeliveryModel *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void CellularPlanDeliveryModel::handleActivateResult(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    LOBYTE(__p) = 0;
    v5 = 0;
    (*(*a1 + 112))(a1, a2, 11, &__p);
    if (v5 == 1 && v4 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_1007C5FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C600C(uint64_t a1)
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
LABEL_66:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 39);
      v7 = *(v3 + 40);
      if (*(a1 + 79) < 0)
      {
        sub_100005F2C(__dst, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        *__dst = *(a1 + 56);
        v30 = *(a1 + 72);
      }

      p_p = &__p;
      v9 = (a1 + 80);
      if (*(a1 + 103) < 0)
      {
        sub_100005F2C(&__p, *(a1 + 80), *(a1 + 88));
      }

      else
      {
        __p = *v9;
        v32 = *(a1 + 96);
      }

      if (v6 == v7)
      {
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v28 = v5;
        if (v30 >= 0)
        {
          v10 = HIBYTE(v30);
        }

        else
        {
          v10 = __dst[1];
        }

        if (v30 >= 0)
        {
          v11 = __dst;
        }

        else
        {
          v11 = __dst[0];
        }

        v12 = HIBYTE(v32);
        if (v32 >= 0)
        {
          v13 = HIBYTE(v32);
        }

        else
        {
          v13 = *(&__p + 1);
        }

        if (v32 < 0)
        {
          p_p = __p;
        }

        while (1)
        {
          v14 = *(v6 + 503);
          v15 = v14 >= 0 ? *(v6 + 503) : *(v6 + 488);
          if (v10 == v15)
          {
            v16 = v14 >= 0 ? (v6 + 480) : *(v6 + 480);
            if (!memcmp(v11, v16, v10))
            {
              break;
            }
          }

          v17 = *(v6 + 263);
          v18 = v17;
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v6 + 248);
          }

          if (v13 == v17)
          {
            v19 = v18 >= 0 ? (v6 + 240) : *(v6 + 240);
            if (!memcmp(p_p, v19, v13))
            {
              v20 = *(v6 + 455);
              if ((v20 & 0x80u) != 0)
              {
                v20 = *(v6 + 440);
              }

              if (!(v20 | v15))
              {
                break;
              }
            }
          }

          v6 += 1280;
          if (v6 == v7)
          {
            v6 = v7;
            break;
          }
        }

        v9 = (a1 + 80);
        v5 = v28;
        if ((v12 & 0x80) == 0)
        {
          goto LABEL_44;
        }
      }

      operator delete(__p);
LABEL_44:
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__dst[0]);
      }

      v21 = *(v3 + 40);
      if (v6 != v21)
      {
        if (*(a1 + 104) == 1)
        {
          v22 = *(v3 + 5);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v9;
            if (*(a1 + 103) < 0)
            {
              v23 = *v9;
            }

            *buf = 136315138;
            v34 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I deleting pending plan carrier (%s) after timeout", buf, 0xCu);
            v21 = *(v3 + 40);
          }

          if (v6 + 1280 != v21)
          {
            do
            {
              sub_1007CC0DC(v6, (v6 + 1280));
              v6 += 1280;
            }

            while (v6 + 1280 != v21);
            v21 = *(v3 + 40);
          }

          while (v21 != v6)
          {
            v21 -= 1280;
            sub_1002813D0(v21);
          }

          *(v3 + 40) = v6;
          v24 = *(v3 + 38);
          if (v24)
          {
            v25 = std::__shared_weak_count::lock(v24);
            if (v25)
            {
              v26 = v25;
              v27 = *(v3 + 37);
              if (v27)
              {
                (*(*v27 + 64))(v27, v9);
              }

              sub_100004A34(v26);
            }
          }
        }

        else
        {
          CellularPlanDeliveryModel::updatePlanStates_sync(v3, v6, 0xDu);
        }

        CellularPlanDeliveryModel::notifyPlansUpdate(v3);
      }

      goto LABEL_66;
    }
  }
}

void sub_1007C6344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_100004A34(v17);
  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

char *sub_1007C6384(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    result = sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(result + 9) = *(a2 + 72);
    *(result + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    return sub_100005F2C(v3 + 80, *(a2 + 80), *(a2 + 88));
  }

  v6 = *(a2 + 80);
  *(v3 + 12) = *(a2 + 96);
  *(v3 + 5) = v6;
  return result;
}

void sub_1007C6410(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007C6440(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void CellularPlanDeliveryModel::onEsimReleased(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

BOOL CellularPlanDeliveryModel::PersistenceHelper::savePlans(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 8))
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10177EF6C();
    return 0;
  }

  if (!a4)
  {
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_10177EF38();
    return 0;
  }

  v22 = 0;
  v8 = a2[2];
  if (v8)
  {
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, v8, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      v10 = v22;
      v22 = Mutable;
      __p[0] = v10;
      sub_1000279DC(__p);
    }

    v13 = *a2;
    v11 = a2 + 1;
    v12 = v13;
    if (v13 != v11)
    {
      do
      {
        v21 = 0;
        if (*(v12 + 55) < 0)
        {
          sub_100005F2C(v19, v12[4], v12[5]);
        }

        else
        {
          *v19 = *(v12 + 2);
          v20 = v12[6];
        }

        if (SHIBYTE(v20) < 0)
        {
          sub_100005F2C(__dst, v19[0], v19[1]);
        }

        else
        {
          *__dst = *v19;
          v25 = v20;
        }

        v23 = 0;
        if (SHIBYTE(v25) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v27 = v25;
        }

        v28 = 0;
        if (ctu::cf::convert_copy())
        {
          v14 = v23;
          v23 = v28;
          v29 = v14;
          sub_100005978(&v29);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        v21 = v23;
        v23 = 0;
        sub_100005978(&v23);
        if (SHIBYTE(v25) < 0)
        {
          operator delete(__dst[0]);
        }

        if (SHIBYTE(v20) < 0)
        {
          operator delete(v19[0]);
        }

        CFArrayAppendValue(v22, v21);
        sub_100005978(&v21);
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
            v17 = *v16 == v12;
            v12 = v16;
          }

          while (!v17);
        }

        v12 = v16;
      }

      while (v16 != v11);
    }
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), a4, v22, a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  (*(**(a1 + 8) + 48))(*(a1 + 8), a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_1000279DC(&v22);
  return 1;
}

void CellularPlanDeliveryModel::PersistenceHelper::loadPlans(uint64_t **__return_ptr a1@<X8>, CellularPlanDeliveryModel::PersistenceHelper *this@<X0>, const __CFString *a3@<X1>)
{
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 48))(v5, a3, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    theArray = 0;
    (*(**(this + 1) + 40))(&v14);
    sub_10006DD00(&theArray, &v14);
    sub_10000A1EC(&v14);
    v6 = theArray;
    a1[2] = 0;
    a1[1] = 0;
    *a1 = (a1 + 1);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          __p[0] = 0;
          __p[1] = 0;
          v12 = 0;
          CFArrayGetValueAtIndex(theArray, i);
          v14 = 0uLL;
          v15 = 0;
          ctu::cf::assign();
          *__p = v14;
          v12 = v15;
          v9 = *(&v14 + 1);
          v10 = HIBYTE(v15);
          if ((v15 & 0x8000000000000000) == 0)
          {
            v9 = HIBYTE(v15);
          }

          if (v9)
          {
            sub_10017695C(a1, __p, __p);
            v10 = HIBYTE(v12);
          }

          if (v10 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    sub_100010250(&theArray);
  }

  else
  {
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      sub_10177EF6C();
    }

    a1[2] = 0;
    a1[1] = 0;
    *a1 = (a1 + 1);
  }
}

void sub_1007C6AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  sub_100009970(v22, *(v22 + 8));
  sub_100010250(&a16);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::PersistenceHelper::saveStoreVisitStatus(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    v18 = 0;
    v4 = a2[2];
    if (v4)
    {
      Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, v4, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (Mutable)
      {
        v6 = v18;
        v18 = Mutable;
        __p[0] = v6;
        sub_1000296E0(__p);
      }

      v9 = *a2;
      v7 = a2 + 1;
      v8 = v9;
      if (v9 != v7)
      {
        do
        {
          v17 = 0;
          if (*(v8 + 55) < 0)
          {
            sub_100005F2C(v15, v8[4], v8[5]);
          }

          else
          {
            *v15 = *(v8 + 2);
            v16 = v8[6];
          }

          if (SHIBYTE(v16) < 0)
          {
            sub_100005F2C(__dst, v15[0], v15[1]);
          }

          else
          {
            *__dst = *v15;
            v21 = v16;
          }

          v19 = 0;
          if (SHIBYTE(v21) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v23 = v21;
          }

          v24 = 0;
          if (ctu::cf::convert_copy())
          {
            v10 = v19;
            v19 = v24;
            v25 = v10;
            sub_100005978(&v25);
          }

          if (SHIBYTE(v23) < 0)
          {
            operator delete(__p[0]);
          }

          v17 = v19;
          v19 = 0;
          sub_100005978(&v19);
          if (SHIBYTE(v21) < 0)
          {
            operator delete(__dst[0]);
          }

          if (SHIBYTE(v16) < 0)
          {
            operator delete(v15[0]);
          }

          if (*(v8 + 56))
          {
            v11 = kCFBooleanTrue;
          }

          else
          {
            v11 = kCFBooleanFalse;
          }

          CFDictionarySetValue(v18, v17, v11);
          sub_100005978(&v17);
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
              v14 = *v13 == v8;
              v8 = v13;
            }

            while (!v14);
          }

          v8 = v13;
        }

        while (v13 != v7);
      }
    }

    (*(**(a1 + 8) + 16))(*(a1 + 8), @"kVisitStoreStatus", v18, @"com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(**(a1 + 8) + 48))(*(a1 + 8), @"com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1000296E0(&v18);
  }

  else if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_10177EF6C();
  }
}

void CellularPlanDeliveryModel::PersistenceHelper::loadStoreVisitStatus(CellularPlanDeliveryModel::PersistenceHelper *this@<X0>, uint64_t **a2@<X8>)
{
  v4 = *(this + 1);
  if (v4)
  {
    (*(*v4 + 48))(v4, @"com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    theDict = 0;
    (*(**(this + 1) + 40))(&v20);
    sub_100010180(&theDict, &v20);
    sub_10000A1EC(&v20);
    v5 = theDict;
    a2[2] = 0;
    a2[1] = 0;
    *a2 = (a2 + 1);
    if (v5)
    {
      Count = CFDictionaryGetCount(v5);
      if (Count >= 1)
      {
        keys = 0;
        v17 = 0;
        v18 = 0;
        sub_100222418(&keys, Count);
        values = 0;
        v14 = 0;
        v15 = 0;
        sub_1007CD260(&values, Count);
        CFDictionaryGetKeysAndValues(theDict, keys, values);
        for (i = 0; i != Count; ++i)
        {
          __p[0] = 0;
          __p[1] = 0;
          v12 = 0;
          v20 = 0uLL;
          v21 = 0;
          ctu::cf::assign();
          v12 = v21;
          *__p = v20;
          v8 = HIBYTE(v21);
          v9 = HIBYTE(v21);
          if ((v21 & 0x8000000000000000) != 0)
          {
            v8 = __p[1];
          }

          if (v8)
          {
            v10 = values[i];
            if (v10)
            {
              LOBYTE(v20) = CFBooleanGetValue(v10) != 0;
              sub_1007CFD58(a2, __p, __p, &v20);
              v9 = HIBYTE(v12);
            }
          }

          if (v9 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (values)
        {
          v14 = values;
          operator delete(values);
        }

        if (keys)
        {
          v17 = keys;
          operator delete(keys);
        }
      }
    }

    sub_10001021C(&theDict);
  }

  else
  {
    if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
    {
      sub_10177EF6C();
    }

    a2[2] = 0;
    a2[1] = 0;
    *a2 = (a2 + 1);
  }
}

void sub_1007C70D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, const void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  sub_100009970(v22, *(v22 + 8));
  sub_10001021C(&a22);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::PersistenceHelper::saveSimSetupInfo(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 8))
  {
    if (*(a2 + 23) < 0)
    {
      v5 = *(a2 + 8);
      if (v5)
      {
        sub_100005F2C(v8, *a2, v5);
        goto LABEL_9;
      }
    }

    else if (*(a2 + 23))
    {
      *v8 = *a2;
      v9 = *(a2 + 16);
LABEL_9:
      if (SHIBYTE(v9) < 0)
      {
        sub_100005F2C(__dst, v8[0], v8[1]);
      }

      else
      {
        *__dst = *v8;
        v13 = v9;
      }

      v11 = 0;
      if (SHIBYTE(v13) < 0)
      {
        sub_100005F2C(__p, __dst[0], __dst[1]);
      }

      else
      {
        *__p = *__dst;
        v15 = v13;
      }

      v16 = 0;
      if (ctu::cf::convert_copy())
      {
        v6 = v11;
        v11 = v16;
        v17 = v6;
        sub_100005978(&v17);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = v11;
      v10 = v11;
      v11 = 0;
      sub_100005978(&v11);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__dst[0]);
      }

      if (SHIBYTE(v9) < 0)
      {
        operator delete(v8[0]);
      }

      (*(**(a1 + 8) + 16))(*(a1 + 8), v7, *a3, @"no_backup/com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      (*(**(a1 + 8) + 48))(*(a1 + 8), @"no_backup/com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100005978(&v10);
      return;
    }

    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_10177EFA0();
    }
  }

  else if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    sub_10177EF6C();
  }
}

void sub_1007C7384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::PersistenceHelper::loadSimSetupInfo(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  if (!v5)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_10177EF6C();
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a2 + 8))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*(a2 + 23))
  {
LABEL_9:
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_10177EFA0();
    }

LABEL_11:
    *a3 = 0;
    return;
  }

LABEL_4:
  (*(*v5 + 48))(v5, @"no_backup/com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v9, *a2, *(a2 + 8));
  }

  else
  {
    *v9 = *a2;
    v10 = *(a2 + 16);
  }

  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__dst, v9[0], v9[1]);
  }

  else
  {
    *__dst = *v9;
    v14 = v10;
  }

  v12 = 0;
  if (SHIBYTE(v14) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v16 = v14;
  }

  v17 = 0;
  if (ctu::cf::convert_copy())
  {
    v7 = v12;
    v12 = v17;
    v18 = v7;
    sub_100005978(&v18);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v12;
  v11 = v12;
  v12 = 0;
  sub_100005978(&v12);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  (*(**(a1 + 8) + 40))(*(a1 + 8), v8, @"no_backup/com.apple.commcenter.sim_setup_info", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v11);
}

void sub_1007C761C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::maybeRecoveryMonitorModeCompleted(CellularPlanDeliveryModel *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = asString(a2);
    v8 = a3 + 240;
    if (*(a3 + 455) >= 0)
    {
      v9 = a3 + 432;
    }

    else
    {
      v9 = *(a3 + 432);
    }

    if (*(a3 + 263) < 0)
    {
      v8 = *(a3 + 240);
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v9;
    *&buf[22] = 2080;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I recovery monitor mode completed with status: %s for sourceIccid: %s carrierName: %s", buf, 0x20u);
  }

  if (!a2)
  {
LABEL_30:
    v20 = *(a3 + 1200);
    *(a3 + 1192) = 0u;
    if (v20)
    {
      sub_100004A34(v20);
    }

    *(a3 + 1225) = 0;
    if (*(a3 + 1152) == 1 && *(a3 + 1128) > 0.0)
    {
      v21 = *(a1 + 38);
      if (v21)
      {
        v22 = std::__shared_weak_count::lock(v21);
        if (v22)
        {
          v23 = v22;
          v24 = *(a1 + 37);
          if (v24)
          {
            Current = CFAbsoluteTimeGetCurrent();
            v26 = *(a3 + 1128);
            v27 = *(a1 + 22);
            if (v27)
            {
              v28 = (*(*v27 + 72))(v27);
            }

            else
            {
              v28 = 0;
            }

            (*(*v24 + 136))(v24, 5, a3 + 240, a2, (Current - v26), a3 + 456, v28);
          }

          sub_100004A34(v23);
        }
      }

      *(a3 + 1128) = 0;
    }

    CellularPlanDeliveryModel::notifyPlansUpdate(a1);
  }

  (***(a1 + 14))(buf);
  ServiceMap = Registry::getServiceMap(*buf);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
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
  v29 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v29);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
LABEL_17:
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (v18)
      {
        (*(*v18 + 24))(v18, 3);
      }

      if ((v19 & 1) == 0)
      {
        sub_100004A34(v17);
      }

      if (*(a3 + 479) < 0)
      {
        sub_100005F2C(buf, *(a3 + 456), *(a3 + 464));
      }

      else
      {
        *buf = *(a3 + 456);
        *&buf[16] = *(a3 + 472);
      }

      LOBYTE(v31) = 1;
      (*(*a1 + 112))(a1, a3 + 432, 12, buf);
      if (v31 == 1 && (buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      CellularPlanDeliveryModel::maybeSubmitTransferTimestampsWhenVinylInfoUpdate(a1, a3);
      goto LABEL_30;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
  goto LABEL_17;
}

uint64_t CellularPlanDeliveryModel::isMultiPlanInstallation_sync(CellularPlanDeliveryModel *this)
{
  result = *(this + 22);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

void CellularPlanDeliveryModel::maybeRetryTransferMonitorModeCompleted(uint64_t a1, char a2, uint64_t a3, void **a4)
{
  v5 = *(a3 + 455);
  if (v5 >= 0)
  {
    v6 = *(a3 + 455);
  }

  else
  {
    v6 = *(a3 + 440);
  }

  v7 = *(a4 + 23);
  v8 = v7;
  if (v7 < 0)
  {
    v7 = a4[1];
  }

  if (v6 == v7)
  {
    v12 = v5 >= 0 ? (a3 + 432) : *(a3 + 432);
    v13 = v8 >= 0 ? a4 : *a4;
    if (!memcmp(v12, v13, v6))
    {
      if (a2)
      {
        v14 = *(a1 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = asString(1);
          if (*(a4 + 23) >= 0)
          {
            v16 = a4;
          }

          else
          {
            v16 = *a4;
          }

          *buf = 136315394;
          *&buf[4] = v15;
          *&buf[12] = 2080;
          *&buf[14] = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I retry transfer monitor mode completed with status: %s for sourceIccid: %s", buf, 0x16u);
        }

        v17 = *(a3 + 1216);
        v18 = 0uLL;
        *(a3 + 1208) = 0u;
        if (v17)
        {
          sub_100004A34(v17);
          v18 = 0uLL;
        }

        *(a3 + 1226) = 1;
        *(a3 + 16) = 0;
        v19 = *(a3 + 1240);
        *(a3 + 1232) = v18;
        if (v19)
        {
          sub_100004A34(v19);
        }

        if (*(a3 + 1152) == 1 && *(a3 + 1136) > 0.0)
        {
          v20 = *(a1 + 304);
          if (v20)
          {
            v21 = std::__shared_weak_count::lock(v20);
            if (v21)
            {
              v22 = v21;
              v23 = *(a1 + 296);
              if (v23)
              {
                Current = CFAbsoluteTimeGetCurrent();
                v25 = *(a3 + 1136);
                v26 = *(a1 + 176);
                if (v26)
                {
                  v27 = (*(*v26 + 72))(v26);
                }

                else
                {
                  v27 = 0;
                }

                (*(*v23 + 136))(v23, 5, a3 + 240, 1, (Current - v25), a3 + 456, v27);
              }

              sub_100004A34(v22);
            }
          }

          *(a3 + 1136) = 0;
        }

        CellularPlanDeliveryModel::notifyPlansUpdate(a1);
      }

      v37 = 0;
      v38 = 0;
      Registry::getTimerService(&v37, *(a1 + 96));
      if (v37)
      {
        sub_10000501C(v35, "cp.mm.ret.tr unsuccessful timer");
        *&v30 = a1;
        sub_100004AA0(buf, (a1 + 8));
        v28 = *&buf[8];
        *(&v30 + 1) = *buf;
        v31 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v28);
        }

        if (*(a4 + 23) < 0)
        {
          sub_100005F2C(v32, *a4, a4[1]);
        }

        else
        {
          *v32 = *a4;
          v33 = a4[2];
        }

        v34 = a2;
        *v39 = *v35;
        v40 = v36;
        v35[0] = 0;
        v35[1] = 0;
        v36 = 0;
        *buf = v30;
        *&buf[16] = v31;
        if (SHIBYTE(v33) < 0)
        {
          sub_100005F2C(__p, v32[0], v32[1]);
          v29 = v34;
        }

        else
        {
          v29 = 0;
          *__p = *v32;
          __p[2] = v33;
        }

        v43 = v29;
        v44 = 0;
        operator new();
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_10177EF04();
      }

      if (v38)
      {
        sub_100004A34(v38);
      }
    }
  }
}

void CellularPlanDeliveryModel::maybeDelayProvisioningMonitorModeCompleted(CellularPlanDeliveryModel *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(a1 + 5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asString(a2);
    if (a4[23] >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    *buf = 136315394;
    *&buf[4] = v9;
    v36 = 2080;
    v37 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I delay provisioning monitor mode completed with status: %s for targetIccid: %s", buf, 0x16u);
  }

  v11 = *(a3 + 479);
  if (v11 >= 0)
  {
    v12 = *(a3 + 479);
  }

  else
  {
    v12 = *(a3 + 464);
  }

  v13 = *(a4 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(a4 + 1);
  }

  if (v12 == v13)
  {
    v15 = v11 >= 0 ? (a3 + 456) : *(a3 + 456);
    v16 = v14 >= 0 ? a4 : *a4;
    if (!memcmp(v15, v16, v12))
    {
      v17 = *(a3 + 1184);
      *(a3 + 1176) = 0u;
      if (v17)
      {
        sub_100004A34(v17);
      }

      *(a3 + 1224) = 1;
      if (a2)
      {
LABEL_22:
        if (*(a3 + 1152) == 1 && *(a3 + 1120) > 0.0)
        {
          v18 = *(a1 + 38);
          if (v18)
          {
            v19 = std::__shared_weak_count::lock(v18);
            if (v19)
            {
              v20 = v19;
              v21 = *(a1 + 37);
              if (v21)
              {
                Current = CFAbsoluteTimeGetCurrent();
                v23 = *(a3 + 1120);
                v24 = *(a1 + 22);
                if (v24)
                {
                  v25 = (*(*v24 + 72))(v24);
                }

                else
                {
                  v25 = 0;
                }

                (*(*v21 + 136))(v21, 2, a3 + 240, a2, (Current - v23), a3 + 456, v25);
              }

              sub_100004A34(v20);
            }
          }

          *(a3 + 1120) = 0;
        }

        sub_10000501C(buf, "TransferSimServiceResponse");
        sub_10000501C(v39, "TransferSimServiceViaWebServiceResponse");
        memset(v33, 0, sizeof(v33));
        sub_10016FB64(v33, buf, &v40, 2uLL);
        (*(*a1 + 128))(a1, a3 + 432, v33);
        v34 = v33;
        sub_1000087B4(&v34);
        v32 = 0;
        while (1)
        {
          if (v39[v32 + 23] < 0)
          {
            operator delete(*&v39[v32]);
          }

          v32 -= 24;
          if (v32 == -48)
          {
            CellularPlanDeliveryModel::notifyPlansUpdate(a1);
          }
        }
      }

      v26 = *(a1 + 5);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        if (a4[23] < 0)
        {
          a4 = *a4;
        }

        v27 = sub_10064A0D0(*(a3 + 1));
        *buf = 136315394;
        *&buf[4] = a4;
        v36 = 2080;
        v37 = v27;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Setting display state of plan with target iccid: %s to %s", buf, 0x16u);
      }

      v28 = *(a3 + 1);
      buf[0] = 0;
      v39[0] = 0;
      (*(*a1 + 112))(a1, a3 + 432, v28, buf);
      if (v39[0] == 1 && v38 < 0)
      {
        operator delete(*buf);
      }

      *(a3 + 2) = 1;
      v29 = *(a1 + 38);
      if (v29)
      {
        v30 = std::__shared_weak_count::lock(v29);
        if (v30)
        {
          v31 = *(a1 + 37);
          if (v31)
          {
            (*(*v31 + 104))(v31, 0, a3 + 240, a3 + 264);
            sub_100004A34(v30);
            goto LABEL_22;
          }
        }
      }

      else
      {
        v30 = 0;
      }

      if (os_log_type_enabled(*(a1 + 5), OS_LOG_TYPE_ERROR))
      {
        sub_10177EBF0();
      }

      if (v30)
      {
        sub_100004A34(v30);
      }
    }
  }
}

void CellularPlanDeliveryModel::monitorModeCompleted(CellularPlanDeliveryModel *a1, unint64_t a2, char *a3, uint64_t a4)
{
  v5 = *(a1 + 39);
  v6 = *(a1 + 40);
  if (v5 != v6)
  {
    while (1)
    {
      v7 = v5[149];
      if (v7 && v7 == a4)
      {
        break;
      }

      v9 = v5[147];
      if (v9 && v9 == a4)
      {
        break;
      }

      v11 = v5[151];
      if (v11 && v11 == a4)
      {
        break;
      }

      v5 += 160;
      if (v5 == v6)
      {
        goto LABEL_23;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_23:
    v15 = *(a1 + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I No pending plan found for any monitor mode", v18, 2u);
    }
  }

  else
  {
    v13 = (a2 >> 8) & 1;
    if (v5[149] == a4)
    {
      v16 = v13 & a2;

      CellularPlanDeliveryModel::maybeRecoveryMonitorModeCompleted(a1, v16, v5);
    }

    if (v5[147] == a4)
    {
      v17 = v13 & a2;

      CellularPlanDeliveryModel::maybeDelayProvisioningMonitorModeCompleted(a1, v17, v5, a3);
    }

    else if (v5[151] == a4)
    {
      v14 = v13 & a2;

      CellularPlanDeliveryModel::maybeRetryTransferMonitorModeCompleted(a1, v14, v5, a3);
    }
  }
}

void non-virtual thunk toCellularPlanDeliveryModel::monitorModeCompleted(uint64_t a1, unsigned __int16 a2, char *a3, uint64_t a4)
{
  CellularPlanDeliveryModel::monitorModeCompleted((a1 - 64), a2, a3, a4);
}

{
  CellularPlanDeliveryModel::monitorModeCompleted((a1 - 72), a2, a3, a4);
}

void CellularPlanDeliveryModel::recoveryPullAndInstallProfile(CellularPlanDeliveryModel *this, const CellularPlanProvisioningMonitorModeInterface *a2)
{
  v3 = *(this + 38);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5 || (v6 = *(this + 37)) == 0)
  {
LABEL_17:
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10177EBF0();
    }

    goto LABEL_19;
  }

  v7 = *(this + 39);
  v8 = *(this + 40);
  if (v7 != v8)
  {
    do
    {
      sub_10027B690(&v16, v7);
      v9 = v20;
      if (v20)
      {
        sub_1002813D0(&v16);
        if (v9 == a2)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1002813D0(&v16);
      }

      v7 += 1280;
    }

    while (v7 != v8);
    v7 = v8;
LABEL_11:
    v8 = *(this + 40);
  }

  if (v7 == v8)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10177EFD4();
    }
  }

  else
  {
    v10 = *(v7 + 2);
    v11 = *(this + 5);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10 == 10)
    {
      if (v12)
      {
        LOWORD(v16) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Pending plan already undergoing installation. Skipping recovery monitor mode attempt", &v16, 2u);
      }
    }

    else
    {
      if (v12)
      {
        v13 = (v7 + 432);
        if (*(v7 + 455) < 0)
        {
          v13 = *v13;
        }

        v14 = (v7 + 240);
        if (*(v7 + 263) < 0)
        {
          v14 = *v14;
        }

        v16 = 136315394;
        v17 = v13;
        v18 = 2080;
        v19 = v14;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Attempting recovery installation of plan with sourceIccid:(%s) carrierName:(%s) using recovery monitor mode", &v16, 0x16u);
      }

      if (*(v7 + 17))
      {
        v15 = 1;
      }

      else
      {
        v15 = (*(**(this + 14) + 1008))(*(this + 14), v7 + 24, v7 + 48, v7 + 72, v7 + 96, v7 + 432) ^ 1;
      }

      (*(*v6 + 40))(v6, v7, 0, v15);
    }
  }

LABEL_19:
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void CellularPlanDeliveryModel::pullAndInstallProfile(void *a1, char *a2)
{
  v3 = a1[38];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[37];
      if (v6)
      {
        bzero(v21, 0x508uLL);
        (*(*a1 + 168))(v21, a1, a2);
        if (v23)
        {
          v7 = BYTE1(v21[0]);
          v8 = BYTE2(v21[0]);
          v9 = a1[5];
          v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          if (v7 == 12 || v8 == 10)
          {
            if (v10)
            {
              v12 = sub_10064A0D0(v7);
              v13 = sub_10064A0D0(SBYTE2(v21[0]));
              if (a2[23] >= 0)
              {
                v14 = a2;
              }

              else
              {
                v14 = *a2;
              }

              v15 = 136315650;
              v16 = v12;
              v17 = 2080;
              v18 = v13;
              v19 = 2080;
              v20 = v14;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Not attempting installation of plan with terminal state:%s, display state:%s using provisioning monitor mode for target iccid: %s", &v15, 0x20u);
            }
          }

          else
          {
            if (v10)
            {
              if (a2[23] >= 0)
              {
                v11 = a2;
              }

              else
              {
                v11 = *a2;
              }

              v15 = 136315138;
              v16 = v11;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Attempting installation of plan with targetIccid:%s using monitor mode", &v15, 0xCu);
              if ((v23 & 1) == 0)
              {
                sub_1000D1644();
              }
            }

            (*(*v6 + 40))(v6, v21, 0, (BYTE1(v21[0]) == 9) | (v22 & 1));
          }
        }

        else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
        {
          sub_10177F008();
        }

        if (v23 == 1)
        {
          sub_1002813D0(v21);
        }

LABEL_27:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  if (v5)
  {
    goto LABEL_27;
  }
}

void sub_1007C8B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (LOBYTE(STACK[0x520]) == 1)
  {
    sub_1002813D0(va);
  }

  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::retryTransfer(void *a1, uint64_t *a2)
{
  v3 = a1[38];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[37];
      if (v6)
      {
        bzero(v23, 0x508uLL);
        (*(*a1 + 168))(v23, a1, a2);
        if (v27)
        {
          v7 = BYTE1(v23[0]);
          if (BYTE1(v23[0]) != 11 || BYTE2(v23[0]) == 10)
          {
            v12 = a1[5];
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = sub_10064A0D0(v7);
              v14 = sub_10064A0D0(SBYTE2(v23[0]));
              if (*(a2 + 23) >= 0)
              {
                v15 = a2;
              }

              else
              {
                v15 = *a2;
              }

              v17 = 136315650;
              v18 = v13;
              v19 = 2080;
              v20 = v14;
              v21 = 2080;
              v22 = v15;
              _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Not attempting installation of plan with terminal state:%s, display state:%s using retry monitor mode for source iccid: %s", &v17, 0x20u);
            }
          }

          else
          {
            v8 = v26;
            v9 = a1[5];
            v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
            if (v8)
            {
              if (v10)
              {
                v11 = &v24;
                if (v25 < 0)
                {
                  v11 = v24;
                }

                v17 = 136315138;
                v18 = v11;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Not starting retry monitor mode for plan with recovery delay provisioning monitor mode ongoing. sourceIccid: %s", &v17, 0xCu);
              }
            }

            else
            {
              if (v10)
              {
                v16 = *(a2 + 23) >= 0 ? a2 : *a2;
                v17 = 136315138;
                v18 = v16;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Attempting installation of plan with sourceIccid:%s using retry transfer monitor mode", &v17, 0xCu);
                if ((v27 & 1) == 0)
                {
                  sub_1000D1644();
                }
              }

              (*(*v6 + 24))(v6, v23, &stru_101E7F050);
            }
          }
        }

        else if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
        {
          sub_10177F078();
        }

        if (v27 == 1)
        {
          sub_1002813D0(v23);
        }

LABEL_32:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  if (v5)
  {
    goto LABEL_32;
  }
}

void sub_1007C8E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (LOBYTE(STACK[0x520]) == 1)
  {
    sub_1002813D0(va);
  }

  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::checkPlanInstalled(void *a1, uint64_t a2)
{
  bzero(v6, 0x508uLL);
  (*(*a1 + 168))(v6, a1, a2);
  if (v7)
  {
    IsProfileInstalled = sIsProfileInstalled();
  }

  else
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177F078();
    }

    IsProfileInstalled = 0;
  }

  if (v7 == 1)
  {
    sub_1002813D0(v6);
  }

  return IsProfileInstalled;
}

void sub_1007C8FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (STACK[0x500])
  {
    sub_1002813D0(&a9);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::didTransferFromWebsheet(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  switch(a3)
  {
    case 1:
      v9 = a1[5];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = sub_100649E24(1);
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Transfer status: %s", __p, 0xCu);
      }

      if (*(a4 + 23) < 0)
      {
        sub_100005F2C(__p, *a4, *(a4 + 8));
      }

      else
      {
        *__p = *a4;
        v11 = *(a4 + 16);
      }

      v12 = 1;
      (*(*a1 + 112))(a1, a2, 7, __p);
      break;
    case 3:
      v8 = a1[5];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = sub_100649E24(3);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Waiting for ES push to install: %s", __p, 0xCu);
      }

      if (*(a4 + 23) < 0)
      {
        sub_100005F2C(__p, *a4, *(a4 + 8));
      }

      else
      {
        *__p = *a4;
        v11 = *(a4 + 16);
      }

      v12 = 1;
      (*(*a1 + 112))(a1, a2, 8, __p);
      break;
    case 4:
      v7 = a1[5];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = sub_100649E24(4);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Waiting DS trigger to install: %s", __p, 0xCu);
      }

      if (*(a4 + 23) < 0)
      {
        sub_100005F2C(__p, *a4, *(a4 + 8));
      }

      else
      {
        *__p = *a4;
        v11 = *(a4 + 16);
      }

      v12 = 1;
      (*(*a1 + 112))(a1, a2, 9, __p);
      break;
    default:
      return;
  }

  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1007C92C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::handleFailedInstallation(void *a1, size_t *a2)
{
  v4 = a1[5];
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

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Handling failed installation of plan with sourceIccid: %s", buf, 0xCu);
  }

  v6 = a1[39];
  v7 = a1[40];
  if (v6 != v7)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = *(a2 + 23);
    }

    else
    {
      v9 = a2[1];
    }

    if (v8 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    while (1)
    {
      v11 = *(v6 + 455);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = *(v6 + 440);
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? (v6 + 432) : *(v6 + 432);
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v14 = *(v6 + 479);
      v15 = v14;
      if ((v14 & 0x80u) != 0)
      {
        v14 = *(v6 + 464);
      }

      if (v14 == v9)
      {
        v16 = v15 >= 0 ? (v6 + 456) : *(v6 + 456);
        if (!memcmp(v16, v10, v9))
        {
          break;
        }
      }

      v6 += 1280;
      if (v6 == v7)
      {
        goto LABEL_42;
      }
    }
  }

  if (v6 != v7)
  {
    v17 = a1[5];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_10064A0D0(*(v6 + 1));
      *buf = 136315138;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Pending plan terminal state: %s", buf, 0xCu);
    }

    v19 = *(v6 + 1);
    buf[0] = 0;
    v26 = 0;
    if (v19 == 5)
    {
      (*(*a1 + 112))(a1, a2, 11, buf);
    }

    else
    {
      (*(*a1 + 112))(a1, a2, v19, buf);
    }

    if (v26 == 1 && v25 < 0)
    {
      operator delete(*buf);
    }

    if (!*(v6 + 1176))
    {
      v20 = a1[5];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Provisioning monitor mode exhausted. Setting display state of plan to kTransferable", buf, 2u);
      }

      *(v6 + 2) = 1;
    }
  }

LABEL_42:
  if (a1[57])
  {
    v21 = a1[5];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Invoking callback for activating pending plan", buf, 2u);
    }

    v22 = 0;
    v23 = 0;
    sub_1007BF334((a1 + 54), 0, &v23, &v22, 49);
    sub_10001021C(&v22);
    sub_100005978(&v23);
    sub_1007D03F4((a1 + 54));
  }
}

void sub_1007C9624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanDeliveryModel::setIsSimAvailableInBuddyTransferList_sync(uint64_t result, int a2, int a3)
{
  if (a3)
  {
    *(result + 468) = a2;
  }

  else
  {
    *(result + 464) = a2;
  }

  return result;
}

uint64_t CellularPlanDeliveryModel::getIsSimAvailableInBuddyTransferList_sync(CellularPlanDeliveryModel *this, int a2)
{
  v2 = 464;
  if (a2)
  {
    v2 = 468;
  }

  return *(this + v2);
}

void CellularPlanDeliveryModel::saveStoreVisitStatus_sync(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    CellularPlanDeliveryModel::PersistenceHelper::loadStoreVisitStatus(*(a1 + 128), &v9);
    v13 = a2;
    *(sub_100170224(&v9, a2, &unk_101802C98, &v13, &v12) + 56) = a3;
    v7 = *(a1 + 128);
    sub_100134BF4(v8, &v9);
    CellularPlanDeliveryModel::PersistenceHelper::saveStoreVisitStatus(v7, v8);
    sub_100009970(v8, v8[1]);
    sub_100009970(&v9, v10);
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177F0E8();
  }
}

void sub_1007C977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_100009970(&a9, a10);
  sub_100009970(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::loadStoreVisitStatus_sync(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    v8 = 0;
    v9[0] = 0;
    v9[1] = 0;
    CellularPlanDeliveryModel::PersistenceHelper::loadStoreVisitStatus(*(a1 + 128), &v8);
    v4 = sub_100007A6C(&v8, a2);
    if (v9 == v4)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v5 = *(v4 + 56);
      v6 = 1;
    }

    sub_100009970(&v8, v9[0]);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177F0E8();
    }

    v5 = 0;
    v6 = 0;
  }

  return v5 | (v6 << 8);
}

void CellularPlanDeliveryModel::loadStoreVisitStatus_sync(CellularPlanDeliveryModel::PersistenceHelper **this@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  CellularPlanDeliveryModel::PersistenceHelper::loadStoreVisitStatus(this[16], a2);
  v4 = this[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a2[2];
    v6 = 134217984;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I loaded store visit status for %zu carriers", &v6, 0xCu);
  }
}

void CellularPlanDeliveryModel::saveSimSetupInfo_sync(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4)
  {
    if (*a3)
    {
      v6 = *(a1 + 128);
      if (v5 < 0)
      {
        sub_100005F2C(__p, *a2, *(a2 + 8));
      }

      else
      {
        *__p = *a2;
        v9 = *(a2 + 16);
      }

      sub_100060E84(&v7, a3);
      CellularPlanDeliveryModel::PersistenceHelper::saveSimSetupInfo(v6, __p, &v7);
      sub_10000A1EC(&v7);
      if (SHIBYTE(v9) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_10177F11C();
    }
  }

  else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EFA0();
  }
}

void sub_1007C9A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_10000A1EC(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::loadSimSetupInfo_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      *a3 = 0;
      v4 = *(a1 + 128);
      sub_100005F2C(__p, *a2, v5);
LABEL_6:
      CellularPlanDeliveryModel::PersistenceHelper::loadSimSetupInfo(v4, __p, a3);
      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }
  }

  else if (*(a2 + 23))
  {
    *a3 = 0;
    v4 = *(a1 + 128);
    *__p = *a2;
    v7 = *(a2 + 16);
    goto LABEL_6;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177EFA0();
  }

  *a3 = 0;
}

void sub_1007C9AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanDeliveryModel::handleInstallMultiplePlans(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a1[22];
  if (v10)
  {
    if ((*(*v10 + 24))(v10))
    {
      v11 = a1[5];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Override the install plans at multi plan scheduler", buf, 2u);
      }
    }
  }

  *buf = 0;
  v27 = 0;
  v28 = 0;
  v12 = a1[14];
  sub_10000501C(__p, "");
  (*(*v12 + 160))(buf, v12, a4 + 32, a4 + 56, a4 + 80, a4 + 104, __p, 1);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  v13 = a1[14];
  v14 = a1[3];
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  sub_100004AA0(&v19, a1 + 1);
  if (v19)
  {
    v15 = v19 + 80;
  }

  else
  {
    v15 = 0;
  }

  v21 = v15;
  v22 = v20;
  v19 = 0;
  v20 = 0;
  (*(*v13 + 712))(__p, v13, &object, &v21);
  v16 = *__p;
  __p[0] = 0;
  __p[1] = 0;
  v17 = a1[23];
  *(a1 + 11) = v16;
  if (v17)
  {
    sub_100004A34(v17);
    if (__p[1])
    {
      sub_100004A34(__p[1]);
    }
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v18 = a1[22];
  sub_100293290(v29, a5);
  (*(*v18 + 16))(v18, a2, a3, buf, v29);
  sub_10028ED7C(v29);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1007C9D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  sub_10028ED7C(v27 - 88);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void CellularPlanDeliveryModel::cancelPlanInstallation(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1[22])
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v6 = a1[14];
    sub_10000501C(__p, "");
    (*(*v6 + 160))(v10, v6, a2 + 32, a2 + 56, a2 + 80, a2 + 104, __p, 1);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = a1[22];
    sub_100293290(v12, a3);
    (*(*v7 + 56))(v7, v10, v12);
    sub_10028ED7C(v12);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  else
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_10177F150();
    }

    sub_100186828(a3, 5);
  }
}

void sub_1007C9F58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_10028ED7C(&a22);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CellularPlanDeliveryModel::isDeferPlanEnablement_sync(CellularPlanDeliveryModel *this)
{
  result = *(this + 22);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void CellularPlanDeliveryModel::setUserEnabledIccids_sync(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176);
  if (v4)
  {
    v5 = *(*v4 + 80);

    v5();
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10177F184(a2, v6);
    }
  }
}

void CellularPlanDeliveryModel::handleTransferPlanTapped_sync(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[38];
  if (v8)
  {
    v10 = std::__shared_weak_count::lock(v8);
    if (v10 && a1[37])
    {
      v11 = a1[22];
      if (v11)
      {
        sub_10000501C(__dst, "");
        LOBYTE(v13[0]) = 2;
        (*(*v11 + 40))(v11, a3 + 40, __dst, v13);
        if (v25 < 0)
        {
          operator delete(__dst[0]);
        }
      }

      sub_10027E9BC(__dst, a3);
      memset(v13, 0, sizeof(v13));
      sub_1007CD2D8(v13, __dst, &v26, 1uLL);
      v18 = a1;
      sub_1007CEC24(&v19, a6);
      sub_10027E9BC(v20, a3);
      sub_100004AA0(&v16, a1 + 1);
      v12 = v17;
      v21 = v16;
      v22 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v12);
      }

      v23 = 0;
      operator new();
    }
  }

  else
  {
    v10 = 0;
  }

  if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  v14 = 0;
  v15 = 0;
  sub_1007BF334(a6, 0, &v15, &v14, 4);
  sub_10001021C(&v14);
  sub_100005978(&v15);
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1007CA360(_Unwind_Exception *a1)
{
  if (*(v2 - 225) < 0)
  {
    operator delete(*(v2 - 248));
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_1007CA418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, const void *);
  sub_10001021C(va);
  sub_100005978(va1);
  if (!v6)
  {
    JUMPOUT(0x1007CA3F8);
  }

  JUMPOUT(0x1007CA3F0);
}

uint64_t sub_1007CA434(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

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

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  sub_100643184(a1 + 8);
  return a1;
}

void CellularPlanDeliveryModel::handleInstallPendingPlan_sync(CellularPlanDeliveryModel *a1, std::string *a2, uint64_t a3)
{
  v5 = *(a1 + 38);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7 && *(a1 + 37))
    {
      v9 = *(a1 + 39);
      v8 = *(a1 + 40);
      sub_100FB5378(&__dst, a2);
      if (v9 == v8)
      {
        v8 = v9;
      }

      else
      {
        if ((v24 & 0x80u) == 0)
        {
          v10 = v24;
        }

        else
        {
          v10 = v23[1];
        }

        if ((v24 & 0x80u) == 0)
        {
          v11 = v23;
        }

        else
        {
          v11 = v23[0];
        }

        v12 = v9 + 30;
        while (1)
        {
          v13 = *(v12 + 23);
          v14 = v13;
          if ((v13 & 0x80u) != 0)
          {
            v13 = *(v12 + 1);
          }

          if (v10 == v13)
          {
            v15 = v14 >= 0 ? v12 : *v12;
            if (!memcmp(v11, v15, v10))
            {
              break;
            }
          }

          v16 = v12 + 50;
          v12 += 80;
          if (v16 == v8)
          {
            goto LABEL_29;
          }
        }

        v8 = v12 - 30;
      }

LABEL_29:
      if (v41 == 1)
      {
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

        if (v30 < 0)
        {
          operator delete(v29);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }
      }

      if (v26 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      if (v22 < 0)
      {
        operator delete(v21);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }

      if (v18 < 0)
      {
        operator delete(__dst);
      }

      if (v8 == *(a1 + 40))
      {
        v8 = sub_1007BDB1C(a1 + 39, v8);
      }

      std::string::operator=(v8 + 21, a2);
      std::string::operator=(v8 + 20, a2 + 3);
      std::string::operator=(v8 + 10, a2 + 2);
      *(v8 + 984) = 1;
      *(v8 + 8) = 1;
      *(v8 + 1) = 1033;
      CellularPlanDeliveryModel::handleDumpState_sync(a1);
      CellularPlanDeliveryModel::notifyPlansUpdate(a1);
    }
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(*(a1 + 5), OS_LOG_TYPE_ERROR))
  {
    sub_10177EBF0();
  }

  sub_100186828(a3, 4);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1007CA868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}