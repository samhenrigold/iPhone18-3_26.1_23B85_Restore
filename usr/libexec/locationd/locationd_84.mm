uint64_t sub_1005CA580(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40) >= 60.0 || *(a2 + 72) == 1;
  v3 = v2;
  if (!v2)
  {
    if (qword_1025D4430 != -1)
    {
      sub_1018D7CC8();
    }

    v4 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Discarding bout since it does not meet minimum timeWithSteps requirement", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D89F8();
    }
  }

  return v3;
}

void sub_1005CA638(uint64_t a1, __int128 *a2)
{
  if (qword_1025D4430 != -1)
  {
    sub_1018D7CC8();
  }

  v4 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
  {
    if (*(a1 + 252))
    {
      v5 = "update";
    }

    else
    {
      v5 = "init";
    }

    v12 = 136315138;
    v13 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLPredictedWalkDistanceBoutDetector: Received user info (%s)", &v12, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D8AD4();
  }

  v6 = *(a1 + 200);
  v7 = *(a2 + 44);
  v8 = *a2;
  v9 = a2[1];
  *(a1 + 288) = a2[2];
  *(a1 + 272) = v9;
  *(a1 + 256) = v8;
  *(a1 + 300) = v7;
  *(a1 + 252) = 1;
  if (v6 != *(a1 + 208) && *(a1 + 296))
  {
    if (qword_1025D4430 != -1)
    {
      sub_1018D7F50();
    }

    v10 = qword_1025D4438;
    if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
    {
      v11 = **(a1 + 200);
      v12 = 134349056;
      v13 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLPredictedWalkDistanceBoutDetector: Ending walking bout due to wheelchair (%{public}.2f)", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8BD8();
    }

    sub_1005C904C(a1);
  }
}

void sub_1005CA804(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1005CA890(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x492492492492492)
    {
      sub_10028C64C();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_1005CA804(a1, v13);
    }

    v14 = 56 * v10;
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[2];
    *(v14 + 48) = *(a2 + 6);
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    v9 = 56 * v10 + 56;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 16) = v7;
    *(v4 + 32) = v8;
    *v4 = v6;
    v9 = v4 + 56;
  }

  *(a1 + 8) = v9;
  return v9 - 56;
}

void sub_1005CA9C8()
{
  sub_10001CAF4(buf);
  v0 = *buf;
  sub_100ED3410();
  LOBYTE(v1) = 0;
  sub_10001CB4C(v0, "EnableLocationControllerRecorder", &v1, 0xFFFFFFFFLL);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_10001CAF4(buf);
  LOBYTE(v1) = 0;
  sub_10001CB4C(*buf, "EnableLocationControllerRecorderDebugLogs", &v1, 0xFFFFFFFFLL);
  if (v3)
  {
    sub_100008080(v3);
  }

  operator new();
}

void sub_1005CAC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1005D64CC(va);
  _Unwind_Resume(a1);
}

void sub_1005CACA4()
{
  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v0 = qword_1025D4608;
  v1 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    v3 = sub_10000B1F8(v1, v2);
    v5 = 1;
    v4 = sub_10001A6B0(v3, &v5);
    v5 = 134349056;
    v6 = v4;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "#locctl,#rec,shutdown recorder instance,mct,%{public}.3f", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D8D48();
  }

  if (qword_102658230 != -1)
  {
    sub_1018D8E48();
  }

  if (qword_102637048)
  {
    sub_1005CADAC(qword_102637048);
  }
}

void sub_1005CADAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10106A17C(v2);
    v5 = sub_10000B1F8(v3, v4);
    v23 = 1;
    *(a1 + 32) = sub_10001A6B0(v5, &v23);
    *(a1 + 24) = 0;
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v6 = qword_1025D4608;
    v7 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO);
    if (v7)
    {
      v9 = sub_10000B1F8(v7, v8);
      v23 = 1;
      v10 = sub_10001A6B0(v9, &v23);
      v13 = sub_10000B1F8(v11, v12);
      v14 = sub_100125220(v13);
      v23 = 134349312;
      v24 = v10;
      v25 = 2050;
      v26 = v14;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#locctl,#rec,close record session,mct,%{public}.3f,propagation_us,%{public}.3f", &v23, 0x16u);
    }

    v15 = sub_10000A100(121, 2);
    if (v15)
    {
      sub_1018D8E70(v15, v16, v17, v18, v19, v20, v21, v22);
    }
  }
}

void sub_1005CAEDC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*(a1 + 24) == 1)
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v3 = qword_1025D4608;
      v4 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO);
      if (v4)
      {
        v6 = sub_10000B1F8(v4, v5);
        v57 = 1;
        v7 = sub_10001A6B0(v6, &v57);
        v10 = sub_10000B1F8(v8, v9);
        v11 = sub_100125220(v10);
        v57 = 134349312;
        v58 = v7;
        v59 = 2050;
        v60 = v11;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "#locctl,#rec,#Warning,previous record session is still open,ignoring open,mct,%{public}.3f,propagation_us,%{public}.3f", &v57, 0x16u);
      }

      v12 = sub_10000A100(121, 2);
      if (v12)
      {
        sub_1018D9170(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }

    else
    {
      sub_101066F20(v2);
      *(a1 + 24) = 1;
      if (*(a1 + 32) < 0.0)
      {
        v22 = sub_10000B1F8(v20, v21);
        v57 = 1;
        *(a1 + 32) = sub_10001A6B0(v22, &v57);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        v23 = qword_1025D4608;
        v24 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO);
        if (v24)
        {
          v26 = sub_10000B1F8(v24, v25);
          v57 = 1;
          v27 = sub_10001A6B0(v26, &v57);
          v30 = sub_10000B1F8(v28, v29);
          v31 = sub_100125220(v30);
          v57 = 134349312;
          v58 = v27;
          v59 = 2050;
          v60 = v31;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_INFO, "#locctl,#rec,open record session for the first time since boot,mct,%{public}.3f,propagation_us,%{public}.3f", &v57, 0x16u);
        }

        v32 = sub_10000A100(121, 2);
        if (v32)
        {
          sub_1018D8F70(v32, v33, v34, v35, v36, v37, v38, v39);
        }
      }

      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v40 = qword_1025D4608;
      v41 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO);
      if (v41)
      {
        v43 = sub_10000B1F8(v41, v42);
        v57 = 1;
        v44 = sub_10001A6B0(v43, &v57);
        v47 = sub_10000B1F8(v45, v46);
        v48 = sub_100125220(v47);
        v57 = 134349312;
        v58 = v44;
        v59 = 2050;
        v60 = v48;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_INFO, "#locctl,#rec,open record session,mct,%{public}.3f,propagation_us,%{public}.3f", &v57, 0x16u);
      }

      v49 = sub_10000A100(121, 2);
      if (v49)
      {
        sub_1018D9070(v49, v50, v51, v52, v53, v54, v55, v56);
      }
    }
  }
}

void sub_1005CB16C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10106A2E0(v1);
  }
}

uint64_t sub_1005CB17C(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    v2 = sub_10000AED0();
    v4 = sub_10000B1F8(v2, v3);
    sub_10000AED4(v4, v26);
    sub_100017DD0(v26, v27);
    v29 |= 2u;
    v7 = v28;
    if (!v28)
    {
      operator new();
    }

    *(v28 + 492) |= 0x10u;
    v8 = *(v7 + 296);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 28) |= 2u;
    v9 = *(v8 + 16);
    if (!v9)
    {
      operator new();
    }

    v10 = sub_1001AE054(v5, v6);
    sub_10126E388(v9, v10);
    v11 = sub_10000BFC0(v1, v27);
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v12 = qword_1025D4608;
    v13 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      v15 = v26[0].n128_u64[0];
      v16 = sub_10000B1F8(v13, v14);
      v17 = sub_100125220(v16);
      *buf = 67240704;
      v36 = v11;
      v37 = 2050;
      v38 = v15;
      v39 = 2050;
      v40 = v17;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#locctl,#rec,wrote platform info,success,%{public}d,mct,%{public}.3f,propagation_us,%{public}.3f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8D04(buf);
      v18 = qword_1025D4608;
      v19 = v26[0].n128_u64[0];
      v22 = sub_10000B1F8(v20, v21);
      v23 = sub_100125220(v22);
      v30[0] = 67240704;
      v30[1] = v11;
      v31 = 2050;
      v32 = v19;
      v33 = 2050;
      v34 = v23;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v18, 2, "#locctl,#rec,wrote platform info,success,%{public}d,mct,%{public}.3f,propagation_us,%{public}.3f", v30, 28);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRavenPlatformInfo()", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    return sub_10000CE1C(v27);
  }

  return result;
}

void sub_1005CB430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CB4AC(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    v3 = result;
    v4 = sub_10000AED0();
    v6 = sub_10000B1F8(v4, v5);
    sub_10000AED4(v6, v41);
    v40 = 1;
    LODWORD(__str.__r_.__value_.__l.__data_) = 21;
    v39[0] = 21;
    v39[1] = sub_10000AD98(&__str);
    sub_10000AFE4(v42, &v40, v39, v39, v41);
    v44 |= 2u;
    v7 = v43;
    if (!v43)
    {
      operator new();
    }

    *(v43 + 492) |= 0x800u;
    v8 = *(v7 + 352);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 200) |= 0x10u;
    v9 = *(v8 + 32);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 28) |= 1u;
    *(v9 + 8) = -1;
    if (!sub_1000183C8(2u))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
    }

    v10 = *(v9 + 28);
    *(v9 + 12) = 2;
    *(v9 + 28) = v10 | 6;
    v11 = *(v9 + 16);
    if (!v11)
    {
      operator new();
    }

    v12 = getpid();
    v37 = v3;
    v38 = a2;
    v11[19] |= 4u;
    v11[5] = v12;
    v13 = a2 + 1;
    v14 = *a2;
    if (*a2 != a2 + 1)
    {
      do
      {
        v15 = v11[9];
        v16 = v11[8];
        if (v16 >= v15)
        {
          if (v15 == v11[10])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v11 + 6), v15 + 1);
            v15 = v11[9];
          }

          v11[9] = v15 + 1;
          sub_1005D6588();
        }

        v17 = *(v11 + 3);
        v11[8] = v16 + 1;
        v18 = *(v17 + 8 * v16);
        v19 = *(v14 + 8);
        v20 = *(v18 + 40) | 1;
        *(v18 + 40) = v20;
        *(v18 + 32) = v19;
        if (*(v14 + 63) < 0)
        {
          sub_100007244(&__str, v14[5], v14[6]);
          v20 = *(v18 + 40);
        }

        else
        {
          __str = *(v14 + 5);
        }

        *(v18 + 40) = v20 | 2;
        v21 = *(v18 + 8);
        if (v21 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v21, &__str);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_1005D65EC(&__str, (v14 + 8));
        v22 = __str.__r_.__value_.__r.__words[0];
        if (__str.__r_.__value_.__l.__data_ != &__str.__r_.__value_.__r.__words[1])
        {
          do
          {
            v23 = *(v22 + 28);
            v24 = *(v18 + 24);
            if (v24 == *(v18 + 28))
            {
              sub_1003945DC((v18 + 16), v24 + 1);
              v24 = *(v18 + 24);
            }

            v25 = *(v18 + 16);
            *(v18 + 24) = v24 + 1;
            *(v25 + 4 * v24) = v23;
            v26 = *(v22 + 8);
            if (v26)
            {
              do
              {
                v27 = v26;
                v26 = v26->__r_.__value_.__r.__words[0];
              }

              while (v26);
            }

            else
            {
              do
              {
                v27 = *(v22 + 16);
                v28 = v27->__r_.__value_.__r.__words[0] == v22;
                v22 = v27;
              }

              while (!v28);
            }

            v22 = v27;
          }

          while (v27 != &__str.__r_.__value_.__r.__words[1]);
        }

        sub_1003C93BC(&__str, __str.__r_.__value_.__l.__size_);
        v29 = v14[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v14[2];
            v28 = *v30 == v14;
            v14 = v30;
          }

          while (!v28);
        }

        v14 = v30;
      }

      while (v30 != v13);
    }

    v31 = sub_10000BFC0(v37, v42);
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v32 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v33 = v38[2];
      LODWORD(__str.__r_.__value_.__l.__data_) = 67240448;
      HIDWORD(__str.__r_.__value_.__r.__words[0]) = v31;
      LOWORD(__str.__r_.__value_.__r.__words[1]) = 2050;
      *(&__str.__r_.__value_.__r.__words[1] + 2) = v33;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordLocationControllerClientList,success,%{public}d,clientList_size,%{public}zu", &__str, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8D04(&__str);
      v34 = v38[2];
      v45[0] = 67240448;
      v45[1] = v31;
      v46 = 2050;
      v47 = v34;
      _os_log_send_and_compose_impl(2, 0, &__str, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordLocationControllerClientList,success,%{public}d,clientList_size,%{public}zu", v45, 18);
      v36 = v35;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordLocationControllerClientList(const CLLocationControllerRecorder_Types::ClientList &)", "%s\n", v35);
      if (v36 != &__str)
      {
        free(v36);
      }
    }

    return sub_10000CE1C(v42);
  }

  return result;
}

void sub_1005CB9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CBAC0(uint64_t result, int a2, int a3)
{
  if (!*(result + 16))
  {
    return result;
  }

  v5 = result;
  v6 = sub_10000AED0();
  v8 = sub_10000B1F8(v6, v7);
  sub_10000AED4(v8, v27);
  v26 = 1;
  LODWORD(__str.__r_.__value_.__l.__data_) = 21;
  v25[0] = 21;
  v25[1] = sub_10000AD98(&__str);
  sub_10000AFE4(v28, &v26, v25, v25, v27);
  v30 |= 2u;
  v9 = v29;
  if (!v29)
  {
    operator new();
  }

  *(v29 + 492) |= 0x800u;
  v10 = *(v9 + 352);
  if (!v10)
  {
    operator new();
  }

  *(v10 + 200) |= 0x10u;
  v11 = *(v10 + 32);
  if (!v11)
  {
    operator new();
  }

  *(v11 + 28) |= 1u;
  *(v11 + 8) = -1;
  if (!sub_1000183C8(3u))
  {
    __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
  }

  v12 = *(v11 + 28);
  *(v11 + 12) = 3;
  *(v11 + 28) = v12 | 6;
  v13 = *(v11 + 16);
  if (!v13)
  {
    operator new();
  }

  if (a2)
  {
    if (sub_10041ECEC(1u))
    {
      v14 = 1;
      goto LABEL_16;
    }

LABEL_37:
    v19 = "::CLP::LogEntry::PrivateData::SystemNotification_FilterType_IsValid(value)";
    v20 = 9682;
    v21 = "set_filter_type";
    goto LABEL_39;
  }

  if (!sub_10041ECEC(2u))
  {
    goto LABEL_37;
  }

  v14 = 2;
LABEL_16:
  *(v13 + 76) |= 0x10u;
  *(v13 + 56) = v14;
  if (!a3)
  {
    if (sub_10041ECEC(1u))
    {
      v15 = 1;
      goto LABEL_21;
    }

    goto LABEL_38;
  }

  if (!sub_10041ECEC(2u))
  {
LABEL_38:
    v19 = "::CLP::LogEntry::PrivateData::SystemNotification_GnssOdometerProcessingSilo_IsValid(value)";
    v20 = 9817;
    v21 = "set_gnss_odometer_processing_silo";
LABEL_39:
    __assert_rtn(v21, "CLPLocationController.pb.h", v20, v19);
  }

  v15 = 2;
LABEL_21:
  *(v13 + 76) |= 0x80u;
  *(v13 + 60) = v15;
  sub_10001CAF4(&v31);
  __p.__r_.__value_.__r.__words[0] = 1685025392;
  *(&__p.__r_.__value_.__s + 23) = 4;
  sub_1005CC044(v31, "LCPlaybackSystemVersionInfo", &__p, &__str);
  *(v13 + 76) |= 0x20u;
  v16 = *(v13 + 48);
  if (v16 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
  {
    operator new();
  }

  std::string::operator=(v16, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v32)
  {
    sub_100008080(v32);
  }

  v17 = sub_10000BFC0(v5, v28);
  if (qword_1025D4600 != -1)
  {
    sub_1018D8CDC();
  }

  v18 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    LODWORD(__str.__r_.__value_.__l.__data_) = 67240704;
    HIDWORD(__str.__r_.__value_.__r.__words[0]) = v17;
    LOWORD(__str.__r_.__value_.__r.__words[1]) = 1026;
    *(&__str.__r_.__value_.__r.__words[1] + 2) = a2;
    HIWORD(__str.__r_.__value_.__r.__words[1]) = 1026;
    LODWORD(__str.__r_.__value_.__r.__words[2]) = a3;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "#locctl,#rec,recordLocationControllerVersionParameters,success,%{public}d,locationControllerFilterUsageIsLegacy,%{public}d,enableGnssOdometerInLocationController,%{public}d", &__str, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D8D04(&__str);
    LODWORD(v31) = 67240704;
    HIDWORD(v31) = v17;
    LOWORD(v32) = 1026;
    *(&v32 + 2) = a2;
    HIWORD(v32) = 1026;
    v33 = a3;
    _os_log_send_and_compose_impl(2, 0, &__str, 1628, dword_100000000, qword_1025D4608, 1, "#locctl,#rec,recordLocationControllerVersionParameters,success,%{public}d,locationControllerFilterUsageIsLegacy,%{public}d,enableGnssOdometerInLocationController,%{public}d", &v31, 20);
    v23 = v22;
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordLocationControllerVersionParameters(BOOL, BOOL)", "%s\n", v22);
    if (v23 != &__str)
    {
      free(v23);
    }
  }

  return sub_10000CE1C(v28);
}

void sub_1005CC044(uint64_t a1@<X0>, const char *a2@<X1>, std::string *a3@<X2>, uint64_t a4@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  v6 = sub_100175094(a1, a2, &__p);
  if (v6)
  {
    p_p = &__p;
  }

  else
  {
    p_p = a3;
  }

  if (SHIBYTE(p_p->__r_.__value_.__r.__words[2]) < 0)
  {
    v8 = p_p->__r_.__value_.__r.__words[0];
    v9 = &__p;
    if (!v6)
    {
      v9 = a3;
    }

    sub_100007244(a4, v8, v9->__r_.__value_.__l.__size_);
  }

  else
  {
    *a4 = *&p_p->__r_.__value_.__l.__data_;
    *(a4 + 16) = *(&p_p->__r_.__value_.__l + 2);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1005CC0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CC0FC(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, int *a6, uint64_t a7)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v10 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v11 = a3->i32[1] == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (*a4)
          {
            v13 = a4[1] == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = !v13;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v12;
          v86 = 1024;
          LODWORD(v87) = v14;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLClientManager_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v15 = a3->i32[1] == 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (*a4)
          {
            v17 = a4[1] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *v81 = 67109376;
          *v82 = v16;
          *&v82[4] = 1024;
          *&v82[6] = v18;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLClientManager_Type,silo entry invalid,from_valid,%d,to_valid,%d", v81, 14);
          v20 = v19;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v19);
          if (v20 != &buf)
          {
            free(v20);
          }
        }
      }

      else
      {
        v27 = sub_10000AED0();
        v29 = sub_10000B1F8(v27, v28);
        sub_10000AED4(v29, v69);
        sub_10000AFE4(v81, a2, a3, a4, v69);
        v84 |= 2u;
        v30 = v83;
        if (!v83)
        {
          operator new();
        }

        *(v83 + 492) |= 0x800u;
        v31 = *(v30 + 352);
        if (!v31)
        {
          operator new();
        }

        *(v31 + 200) |= 0x40u;
        v32 = *(v31 + 48);
        if (!v32)
        {
          operator new();
        }

        v33 = *a5;
        *(v32 + 28) |= 1u;
        *(v32 + 8) = v33;
        v34 = sub_1005CC9C4(a6);
        if (!sub_10041ECEC(v34))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 10317, "::CLP::LogEntry::PrivateData::ClientManagerNotification_NotificationType_IsValid(value)");
        }

        v35 = *(v32 + 28);
        *(v32 + 12) = v34;
        *(v32 + 28) = v35 | 6;
        v36 = *(v32 + 16);
        if (!v36)
        {
          operator new();
        }

        v37 = sub_1005CCAC0((a7 + 188));
        if (!sub_10041ECF8(v37))
        {
          __assert_rtn("set_location_enabled", "CLPLocationController.pb.h", 10268, "::CLP::LogEntry::PrivateData::LocationServicesEnabled_IsValid(value)");
        }

        *(v36 + 16) |= 1u;
        *(v36 + 8) = v37;
        v38 = sub_10000BFC0(a1, v81);
        if (*(a1 + 8) == 1)
        {
          v39 = v38;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v40 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v70);
            if (SBYTE3(v74) >= 0)
            {
              v41 = &v70;
            }

            else
            {
              v41 = v70;
            }

            v60 = v41;
            LODWORD(v62[0]) = a3->i32[0];
            sub_1013230DC(v62, v67);
            if (v68 >= 0)
            {
              v42 = v67;
            }

            else
            {
              v42 = v67[0];
            }

            v64 = *a4;
            v43 = __p;
            v44 = sub_1013230DC(&v64, __p);
            if (v66 < 0)
            {
              v43 = __p[0];
            }

            v46 = *a6;
            v47 = sub_10000B1F8(v44, v45);
            v48 = sub_100125220(v47);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v39;
            v86 = 2080;
            v87 = v60;
            v88 = 2080;
            v89 = v42;
            v90 = 2080;
            v91 = v43;
            v92 = 1024;
            v93 = v46;
            v94 = 2050;
            v95 = v48;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLClientManager_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v66 < 0)
            {
              operator delete(__p[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            if (SBYTE3(v74) < 0)
            {
              operator delete(v70);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            v49 = qword_1025D4608;
            sub_101322EE0(a2, v67);
            if (v68 >= 0)
            {
              v50 = v67;
            }

            else
            {
              v50 = v67[0];
            }

            v64 = a3->i32[0];
            v51 = __p;
            sub_1013230DC(&v64, __p);
            if (v66 < 0)
            {
              v51 = __p[0];
            }

            v61 = *a4;
            v52 = sub_1013230DC(&v61, v62);
            if (v63 >= 0)
            {
              v54 = v62;
            }

            else
            {
              v54 = v62[0];
            }

            v55 = *a6;
            v56 = sub_10000B1F8(v52, v53);
            v57 = sub_100125220(v56);
            LODWORD(v70) = 67110402;
            HIDWORD(v70) = v39;
            v71 = 2080;
            v72 = v50;
            v73 = 2080;
            v74 = v51;
            v75 = 2080;
            v76 = v54;
            v77 = 1024;
            v78 = v55;
            v79 = 2050;
            v80 = v57;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v49, 2, "#locctl,#rec,recordMessage,CLClientManager_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v70, 54);
            v59 = v58;
            if (v63 < 0)
            {
              operator delete(v62[0]);
            }

            if (v66 < 0)
            {
              operator delete(__p[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLClientManager_Type::Notification &, const CLClientManager_Type::NotificationData &)", "%s\n", v59);
            if (v59 != &buf)
            {
              free(v59);
            }
          }
        }

        sub_10000CE1C(v81);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v22 = SBYTE3(v89) >= 0 ? &buf : buf;
        *v81 = 136315138;
        *v82 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLClientManager_Type,unsupported message type,%s", v81, 0xCu);
        if (SBYTE3(v89) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D9668();
      }
    }
  }
}

uint64_t sub_1005CC9C4(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 4)
  {
    return 2;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertClientManagerNotificationTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018D976C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005CCAC0(unsigned int *a1)
{
  if (*a1 < 3)
  {
    return *a1 + 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLocationServicesEnabledTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018D9858(a1);
    return 0;
  }

  return result;
}

void sub_1005CCBB0(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6, uint64_t *a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v92 = 1024;
        LODWORD(v93) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLWifiService_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v87 = 67109376;
        *v88 = v16;
        *&v88[4] = 1024;
        *&v88[6] = v18;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLWifiService_Type,silo entry invalid,from_valid,%d,to_valid,%d", v87, 14);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v19);
        if (v20 != &buf)
        {
          free(v20);
        }
      }

      return;
    }

    v27 = sub_10000AED0();
    v29 = sub_10000B1F8(v27, v28);
    sub_10000AED4(v29, v75);
    sub_10000AFE4(v87, a2, a3, a4, v75);
    v90 |= 2u;
    v30 = v89;
    if (!v89)
    {
      operator new();
    }

    *(v89 + 492) |= 0x800u;
    v31 = *(v30 + 352);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 200) |= 0x80u;
    v32 = *(v31 + 56);
    if (!v32)
    {
      operator new();
    }

    v33 = *a5;
    *(v32 + 28) |= 1u;
    *(v32 + 8) = v33;
    v34 = sub_1002E5A3C(a6);
    if (!sub_1002E5B3C(v34))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 10607, "::CLP::LogEntry::PrivateData::WifiNotificationType_IsValid(value)");
    }

    v35 = *(v32 + 28);
    *(v32 + 12) = v34;
    *(v32 + 28) = v35 | 6;
    v36 = *(v32 + 16);
    if (!v36)
    {
      operator new();
    }

    v37 = *a6;
    if (*a6 > 9)
    {
      if (v37 - 10 < 2)
      {
        v39 = *(a7 + 137);
        *(v36 + 36) |= 0x20u;
        *(v36 + 30) = v39;
      }
    }

    else
    {
      switch(v37)
      {
        case 1u:
          v40 = *a7;
          *(v36 + 36) |= 1u;
          *(v36 + 28) = v40;
          goto LABEL_70;
        case 3u:
          v41 = sub_1002E5B48(a7 + 1);
          sub_1005CD54C(v36, v41);
          v42 = sub_1005CD590(v36);
          sub_1002E5FF8(a7 + 13, v42, 0);
          v37 = *a6;
          break;
        case 6u:
          v38 = *(a7 + 138);
          *(v36 + 36) |= 0x40u;
          *(v36 + 31) = v38;
LABEL_67:
          *(v36 + 36) |= 4u;
          v43 = *(v36 + 8);
          if (!v43)
          {
            operator new();
          }

          sub_1002E5C54((a7 + 1), v43, 0);
          goto LABEL_70;
      }
    }

    if (v37 <= 7 && ((1 << v37) & 0xC8) != 0)
    {
      goto LABEL_67;
    }

LABEL_70:
    v44 = sub_10000BFC0(a1, v87);
    if (*(a1 + 8) == 1)
    {
      v45 = v44;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v46 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &v76);
        if (SBYTE3(v80) >= 0)
        {
          v47 = &v76;
        }

        else
        {
          v47 = v76;
        }

        v66 = v47;
        LODWORD(v68[0]) = a3->i32[0];
        sub_1013230DC(v68, v73);
        if (v74 >= 0)
        {
          v48 = v73;
        }

        else
        {
          v48 = v73[0];
        }

        v70 = *a4;
        v49 = __p;
        v50 = sub_1013230DC(&v70, __p);
        if (v72 < 0)
        {
          v49 = __p[0];
        }

        v52 = *a6;
        v53 = sub_10000B1F8(v50, v51);
        v54 = sub_100125220(v53);
        LODWORD(buf) = 67110402;
        HIDWORD(buf) = v45;
        v92 = 2080;
        v93 = v66;
        v94 = 2080;
        v95 = v48;
        v96 = 2080;
        v97 = v49;
        v98 = 1024;
        v99 = v52;
        v100 = 2050;
        v101 = v54;
        _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLWifiService_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        if (SBYTE3(v80) < 0)
        {
          operator delete(v76);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(&buf);
        v55 = qword_1025D4608;
        sub_101322EE0(a2, v73);
        if (v74 >= 0)
        {
          v56 = v73;
        }

        else
        {
          v56 = v73[0];
        }

        v70 = a3->i32[0];
        v57 = __p;
        sub_1013230DC(&v70, __p);
        if (v72 < 0)
        {
          v57 = __p[0];
        }

        v67 = *a4;
        v58 = sub_1013230DC(&v67, v68);
        if (v69 >= 0)
        {
          v60 = v68;
        }

        else
        {
          v60 = v68[0];
        }

        v61 = *a6;
        v62 = sub_10000B1F8(v58, v59);
        v63 = sub_100125220(v62);
        LODWORD(v76) = 67110402;
        HIDWORD(v76) = v45;
        v77 = 2080;
        v78 = v56;
        v79 = 2080;
        v80 = v57;
        v81 = 2080;
        v82 = v60;
        v83 = 1024;
        v84 = v61;
        v85 = 2050;
        v86 = v63;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v55, 2, "#locctl,#rec,recordMessage,CLWifiService_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v76, 54);
        v65 = v64;
        if (v69 < 0)
        {
          operator delete(v68[0]);
        }

        if (v72 < 0)
        {
          operator delete(__p[0]);
        }

        if (v74 < 0)
        {
          operator delete(v73[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLWifiService_Type::Notification &, const CLWifiService_Type::NotificationData &)", "%s\n", v65);
        if (v65 != &buf)
        {
          free(v65);
        }
      }
    }

    sub_10000CE1C(v87);
    return;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v21 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v22 = SBYTE3(v95) >= 0 ? &buf : buf;
    *v87 = 136315138;
    *v88 = v22;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLWifiService_Type,unsupported message type,%s", v87, 0xCu);
    if (SBYTE3(v95) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D9944();
  }
}

BOOL sub_1005CD54C(uint64_t a1, unsigned int a2)
{
  result = sub_1002E5B3C(a2);
  if (!result)
  {
    sub_1018D9A48();
  }

  *(a1 + 36) |= 2u;
  *(a1 + 24) = a2;
  return result;
}

uint64_t sub_1005CD590(uint64_t a1)
{
  *(a1 + 36) |= 8u;
  if (!*(a1 + 16))
  {
    operator new();
  }

  return *(a1 + 16);
}

void sub_1005CD610(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, int *a6, int *a7)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v10 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v11 = a3->i32[1] == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (*a4)
          {
            v13 = a4[1] == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = !v13;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v12;
          v86 = 1024;
          LODWORD(v87) = v14;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLDataProtectionManager_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v15 = a3->i32[1] == 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (*a4)
          {
            v17 = a4[1] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *v81 = 67109376;
          *v82 = v16;
          *&v82[4] = 1024;
          *&v82[6] = v18;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLDataProtectionManager_Type,silo entry invalid,from_valid,%d,to_valid,%d", v81, 14);
          v20 = v19;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLDataProtectionManager_Type::Notification &, const CLDataProtectionManager_Type::NotificationData &)", "%s\n", v19);
          if (v20 != &buf)
          {
            free(v20);
          }
        }
      }

      else
      {
        v27 = sub_10000AED0();
        v29 = sub_10000B1F8(v27, v28);
        sub_10000AED4(v29, v69);
        sub_10000AFE4(v81, a2, a3, a4, v69);
        v84 |= 2u;
        v30 = v83;
        if (!v83)
        {
          operator new();
        }

        *(v83 + 492) |= 0x800u;
        v31 = *(v30 + 352);
        if (!v31)
        {
          operator new();
        }

        *(v31 + 200) |= 0x100u;
        v32 = *(v31 + 64);
        if (!v32)
        {
          operator new();
        }

        v33 = *a5;
        *(v32 + 28) |= 1u;
        *(v32 + 8) = v33;
        v34 = sub_1005CDED8(a6);
        if (!sub_100437D64(v34))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 10725, "::CLP::LogEntry::PrivateData::DataProtectionManagerNotification_NotificationType_IsValid(value)");
        }

        v35 = *(v32 + 28);
        *(v32 + 12) = v34;
        *(v32 + 28) = v35 | 6;
        v36 = *(v32 + 16);
        if (!v36)
        {
          operator new();
        }

        v37 = sub_1005CDFC0(a7);
        if (!sub_10041ECEC(v37))
        {
          __assert_rtn("set_availability", "CLPLocationController.pb.h", 10676, "::CLP::LogEntry::PrivateData::DataAvailability_IsValid(value)");
        }

        *(v36 + 16) |= 1u;
        *(v36 + 8) = v37;
        v38 = sub_10000BFC0(a1, v81);
        if (*(a1 + 8) == 1)
        {
          v39 = v38;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v40 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v70);
            if (SBYTE3(v74) >= 0)
            {
              v41 = &v70;
            }

            else
            {
              v41 = v70;
            }

            v60 = v41;
            LODWORD(v62[0]) = a3->i32[0];
            sub_1013230DC(v62, v67);
            if (v68 >= 0)
            {
              v42 = v67;
            }

            else
            {
              v42 = v67[0];
            }

            v64 = *a4;
            v43 = __p;
            v44 = sub_1013230DC(&v64, __p);
            if (v66 < 0)
            {
              v43 = __p[0];
            }

            v46 = *a6;
            v47 = sub_10000B1F8(v44, v45);
            v48 = sub_100125220(v47);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v39;
            v86 = 2080;
            v87 = v60;
            v88 = 2080;
            v89 = v42;
            v90 = 2080;
            v91 = v43;
            v92 = 1024;
            v93 = v46;
            v94 = 2050;
            v95 = v48;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLDataProtectionManager_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v66 < 0)
            {
              operator delete(__p[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            if (SBYTE3(v74) < 0)
            {
              operator delete(v70);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            v49 = qword_1025D4608;
            sub_101322EE0(a2, v67);
            if (v68 >= 0)
            {
              v50 = v67;
            }

            else
            {
              v50 = v67[0];
            }

            v64 = a3->i32[0];
            v51 = __p;
            sub_1013230DC(&v64, __p);
            if (v66 < 0)
            {
              v51 = __p[0];
            }

            v61 = *a4;
            v52 = sub_1013230DC(&v61, v62);
            if (v63 >= 0)
            {
              v54 = v62;
            }

            else
            {
              v54 = v62[0];
            }

            v55 = *a6;
            v56 = sub_10000B1F8(v52, v53);
            v57 = sub_100125220(v56);
            LODWORD(v70) = 67110402;
            HIDWORD(v70) = v39;
            v71 = 2080;
            v72 = v50;
            v73 = 2080;
            v74 = v51;
            v75 = 2080;
            v76 = v54;
            v77 = 1024;
            v78 = v55;
            v79 = 2050;
            v80 = v57;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v49, 2, "#locctl,#rec,recordMessage,CLDataProtectionManager_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v70, 54);
            v59 = v58;
            if (v63 < 0)
            {
              operator delete(v62[0]);
            }

            if (v66 < 0)
            {
              operator delete(__p[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLDataProtectionManager_Type::Notification &, const CLDataProtectionManager_Type::NotificationData &)", "%s\n", v59);
            if (v59 != &buf)
            {
              free(v59);
            }
          }
        }

        sub_10000CE1C(v81);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v22 = SBYTE3(v89) >= 0 ? &buf : buf;
        *v81 = 136315138;
        *v82 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLDataProtectionManager_Type,unsupported message type,%s", v81, 0xCu);
        if (SBYTE3(v89) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D9A74();
      }
    }
  }
}

uint64_t sub_1005CDED8(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertDataProtectionManagerNotificationTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018D9B78(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005CDFC0(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    return 2;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertDataAvailabilityTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018D9C64(a1);
    return 0;
  }

  return result;
}

void sub_1005CE0BC(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6, uint64_t a7)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v10 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v11 = a3->i32[1] == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (*a4)
          {
            v13 = a4[1] == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = !v13;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v12;
          v86 = 1024;
          LODWORD(v87) = v14;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLBluetoothService_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v15 = a3->i32[1] == 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (*a4)
          {
            v17 = a4[1] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *v81 = 67109376;
          *v82 = v16;
          *&v82[4] = 1024;
          *&v82[6] = v18;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLBluetoothService_Type,silo entry invalid,from_valid,%d,to_valid,%d", v81, 14);
          v20 = v19;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLBluetoothService_Type::Notification &, const CLBluetoothService_Type::NotificationData &)", "%s\n", v19);
          if (v20 != &buf)
          {
            free(v20);
          }
        }
      }

      else
      {
        v27 = sub_10000AED0();
        v29 = sub_10000B1F8(v27, v28);
        sub_10000AED4(v29, v69);
        sub_10000AFE4(v81, a2, a3, a4, v69);
        v84 |= 2u;
        v30 = v83;
        if (!v83)
        {
          operator new();
        }

        *(v83 + 492) |= 0x800u;
        v31 = *(v30 + 352);
        if (!v31)
        {
          operator new();
        }

        *(v31 + 200) |= 0x200u;
        v32 = *(v31 + 72);
        if (!v32)
        {
          operator new();
        }

        v33 = *a5;
        *(v32 + 28) |= 1u;
        *(v32 + 8) = v33;
        v34 = sub_10126ED48(a6);
        if (!sub_10041ECF8(v34))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11209, "::CLP::LogEntry::PrivateData::BluetoothServiceNotification_NotificationType_IsValid(value)");
        }

        v35 = *(v32 + 28);
        *(v32 + 12) = v34;
        *(v32 + 28) = v35 | 6;
        v36 = *(v32 + 16);
        if (!v36)
        {
          operator new();
        }

        v37 = *(a7 + 113);
        *(v36 + 24) |= 1u;
        *(v36 + 16) = v37;
        v38 = sub_10000BFC0(a1, v81);
        if (*(a1 + 8) == 1)
        {
          v39 = v38;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v40 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v70);
            if (SBYTE3(v74) >= 0)
            {
              v41 = &v70;
            }

            else
            {
              v41 = v70;
            }

            v60 = v41;
            LODWORD(v62[0]) = a3->i32[0];
            sub_1013230DC(v62, v67);
            if (v68 >= 0)
            {
              v42 = v67;
            }

            else
            {
              v42 = v67[0];
            }

            v64 = *a4;
            v43 = __p;
            v44 = sub_1013230DC(&v64, __p);
            if (v66 < 0)
            {
              v43 = __p[0];
            }

            v46 = *a6;
            v47 = sub_10000B1F8(v44, v45);
            v48 = sub_100125220(v47);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v39;
            v86 = 2080;
            v87 = v60;
            v88 = 2080;
            v89 = v42;
            v90 = 2080;
            v91 = v43;
            v92 = 1024;
            v93 = v46;
            v94 = 2050;
            v95 = v48;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLBluetoothService_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v66 < 0)
            {
              operator delete(__p[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            if (SBYTE3(v74) < 0)
            {
              operator delete(v70);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            v49 = qword_1025D4608;
            sub_101322EE0(a2, v67);
            if (v68 >= 0)
            {
              v50 = v67;
            }

            else
            {
              v50 = v67[0];
            }

            v64 = a3->i32[0];
            v51 = __p;
            sub_1013230DC(&v64, __p);
            if (v66 < 0)
            {
              v51 = __p[0];
            }

            v61 = *a4;
            v52 = sub_1013230DC(&v61, v62);
            if (v63 >= 0)
            {
              v54 = v62;
            }

            else
            {
              v54 = v62[0];
            }

            v55 = *a6;
            v56 = sub_10000B1F8(v52, v53);
            v57 = sub_100125220(v56);
            LODWORD(v70) = 67110402;
            HIDWORD(v70) = v39;
            v71 = 2080;
            v72 = v50;
            v73 = 2080;
            v74 = v51;
            v75 = 2080;
            v76 = v54;
            v77 = 1024;
            v78 = v55;
            v79 = 2050;
            v80 = v57;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v49, 2, "#locctl,#rec,recordMessage,CLBluetoothService_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v70, 54);
            v59 = v58;
            if (v63 < 0)
            {
              operator delete(v62[0]);
            }

            if (v66 < 0)
            {
              operator delete(__p[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLBluetoothService_Type::Notification &, const CLBluetoothService_Type::NotificationData &)", "%s\n", v59);
            if (v59 != &buf)
            {
              free(v59);
            }
          }
        }

        sub_10000CE1C(v81);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v22 = SBYTE3(v89) >= 0 ? &buf : buf;
        *v81 = 136315138;
        *v82 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLBluetoothService_Type,unsupported message type,%s", v81, 0xCu);
        if (SBYTE3(v89) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D9D50();
      }
    }
  }
}

void sub_1005CE950(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6, char *a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v90 = 1024;
        LODWORD(v91) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v85 = 67109376;
        *v86 = v16;
        *&v86[4] = 1024;
        *&v86[6] = v18;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,silo entry invalid,from_valid,%d,to_valid,%d", v85, 14);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v19);
        if (v20 != &buf)
        {
          free(v20);
        }
      }

      return;
    }

    v27 = sub_10000AED0();
    v29 = sub_10000B1F8(v27, v28);
    sub_10000AED4(v29, v73);
    sub_10000AFE4(v85, a2, a3, a4, v73);
    v88 |= 2u;
    v30 = v87;
    if (!v87)
    {
      operator new();
    }

    *(v87 + 492) |= 0x800u;
    v31 = *(v30 + 352);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 200) |= 0x400u;
    v32 = *(v31 + 80);
    if (!v32)
    {
      operator new();
    }

    v33 = *a5;
    *(v32 + 28) |= 1u;
    *(v32 + 8) = v33;
    v34 = sub_10126EF8C(a6);
    if (!sub_100437D64(v34))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11326, "::CLP::LogEntry::PrivateData::CompanionNotifierNotification_NotificationType_IsValid(value)");
    }

    v35 = *(v32 + 28);
    *(v32 + 12) = v34;
    *(v32 + 28) = v35 | 6;
    v36 = *(v32 + 16);
    if (!v36)
    {
      operator new();
    }

    if (*a6 == 5)
    {
      v37 = *a7;
      *(v36 + 16) |= 1u;
      *(v36 + 8) = v37;
      v38 = sub_10000BFC0(a1, v85);
      if (*(a1 + 8) != 1)
      {
        goto LABEL_97;
      }

      v39 = v38;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v40 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &v74);
        if (SBYTE3(v78) >= 0)
        {
          v41 = &v74;
        }

        else
        {
          v41 = v74;
        }

        v64 = v41;
        LODWORD(v66[0]) = a3->i32[0];
        sub_1013230DC(v66, v71);
        if (v72 >= 0)
        {
          v42 = v71;
        }

        else
        {
          v42 = v71[0];
        }

        v68 = *a4;
        v43 = __p;
        v44 = sub_1013230DC(&v68, __p);
        if (v70 < 0)
        {
          v43 = __p[0];
        }

        v46 = *a6;
        v47 = sub_10000B1F8(v44, v45);
        v48 = sub_100125220(v47);
        LODWORD(buf) = 67110402;
        HIDWORD(buf) = v39;
        v90 = 2080;
        v91 = v64;
        v92 = 2080;
        v93 = v42;
        v94 = 2080;
        v95 = v43;
        v96 = 1024;
        v97 = v46;
        v98 = 2050;
        v99 = v48;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
        if (v70 < 0)
        {
          operator delete(__p[0]);
        }

        if (v72 < 0)
        {
          operator delete(v71[0]);
        }

        if (SBYTE3(v78) < 0)
        {
          operator delete(v74);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_97;
      }

      sub_1018D8D04(&buf);
      v49 = qword_1025D4608;
      sub_101322EE0(a2, v71);
      if (v72 >= 0)
      {
        v50 = v71;
      }

      else
      {
        v50 = v71[0];
      }

      v68 = a3->i32[0];
      v51 = __p;
      sub_1013230DC(&v68, __p);
      if (v70 < 0)
      {
        v51 = __p[0];
      }

      v65 = *a4;
      v52 = sub_1013230DC(&v65, v66);
      if (v67 >= 0)
      {
        v54 = v66;
      }

      else
      {
        v54 = v66[0];
      }

      v55 = *a6;
      v56 = sub_10000B1F8(v52, v53);
      v57 = sub_100125220(v56);
      LODWORD(v74) = 67110402;
      HIDWORD(v74) = v39;
      v75 = 2080;
      v76 = v50;
      v77 = 2080;
      v78 = v51;
      v79 = 2080;
      v80 = v54;
      v81 = 1024;
      v82 = v55;
      v83 = 2050;
      v84 = v57;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v49, 2, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v74, 54);
      v59 = v58;
      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      if (v70 < 0)
      {
        operator delete(__p[0]);
      }

      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v59);
      if (v59 == &buf)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v60 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v61 = *a6;
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v61;
        _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,unsupported notification type,%d", &buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_97;
      }

      sub_1018D8D04(&buf);
      v62 = *a6;
      LODWORD(v74) = 67109120;
      HIDWORD(v74) = v62;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,unsupported notification type,%d", &v74);
      v59 = v63;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v63);
      if (v59 == &buf)
      {
        goto LABEL_97;
      }
    }

    free(v59);
LABEL_97:
    sub_10000CE1C(v85);
    return;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v21 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v22 = SBYTE3(v93) >= 0 ? &buf : buf;
    *v85 = 136315138;
    *v86 = v22;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLCompanionNotifier_Type,unsupported message type,%s", v85, 0xCu);
    if (SBYTE3(v93) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D9E54();
  }
}

void sub_1005CF304(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, int *a6, uint64_t a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v90 = 1024;
        LODWORD(v91) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v85 = 67109376;
        *v86 = v16;
        *&v86[4] = 1024;
        *&v86[6] = v18;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,silo entry invalid,from_valid,%d,to_valid,%d", v85, 14);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionStateObserver_Type::Notification &, const CLMotionStateObserver_Type::NotificationData &)", "%s\n", v19);
        if (v20 != &buf)
        {
          free(v20);
        }
      }

      return;
    }

    v27 = sub_10000AED0();
    v29 = sub_10000B1F8(v27, v28);
    sub_10000AED4(v29, v73);
    sub_10000AFE4(v85, a2, a3, a4, v73);
    v88 |= 2u;
    v30 = v87;
    if (!v87)
    {
      operator new();
    }

    *(v87 + 492) |= 0x800u;
    v31 = *(v30 + 352);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 200) |= 0x1000u;
    v32 = *(v31 + 96);
    if (!v32)
    {
      operator new();
    }

    v33 = *a5;
    *(v32 + 28) |= 1u;
    *(v32 + 8) = v33;
    v34 = sub_1005CFCF4(a6);
    if (!sub_100437D64(v34))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11600, "::CLP::LogEntry::PrivateData::MotionStateObserverNotification_NotificationType_IsValid(value)");
    }

    v35 = *(v32 + 28);
    *(v32 + 12) = v34;
    *(v32 + 28) = v35 | 6;
    v36 = *(v32 + 16);
    if (!v36)
    {
      operator new();
    }

    if (*a6)
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v37 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v38 = *a6;
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v38;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,unsupported notification type,%d", &buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_85;
      }

      sub_1018D8D04(&buf);
      v39 = *a6;
      LODWORD(v74) = 67109120;
      HIDWORD(v74) = v39;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,unsupported notification type,%d", &v74);
      v41 = v40;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionStateObserver_Type::Notification &, const CLMotionStateObserver_Type::NotificationData &)", "%s\n", v40);
      if (v41 == &buf)
      {
        goto LABEL_85;
      }
    }

    else
    {
      *(v36 + 20) |= 1u;
      v42 = *(v36 + 8);
      if (!v42)
      {
        operator new();
      }

      sub_10126D988(a7, v42);
      v43 = sub_10000BFC0(a1, v85);
      if (*(a1 + 8) != 1)
      {
        goto LABEL_85;
      }

      v44 = v43;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v45 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &v74);
        if (SBYTE3(v78) >= 0)
        {
          v46 = &v74;
        }

        else
        {
          v46 = v74;
        }

        v64 = v46;
        LODWORD(v66[0]) = a3->i32[0];
        sub_1013230DC(v66, v71);
        if (v72 >= 0)
        {
          v47 = v71;
        }

        else
        {
          v47 = v71[0];
        }

        v68 = *a4;
        v48 = __p;
        v49 = sub_1013230DC(&v68, __p);
        if (v70 < 0)
        {
          v48 = __p[0];
        }

        v51 = *a6;
        v52 = sub_10000B1F8(v49, v50);
        v53 = sub_100125220(v52);
        LODWORD(buf) = 67110402;
        HIDWORD(buf) = v44;
        v90 = 2080;
        v91 = v64;
        v92 = 2080;
        v93 = v47;
        v94 = 2080;
        v95 = v48;
        v96 = 1024;
        v97 = v51;
        v98 = 2050;
        v99 = v53;
        _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
        if (v70 < 0)
        {
          operator delete(__p[0]);
        }

        if (v72 < 0)
        {
          operator delete(v71[0]);
        }

        if (SBYTE3(v78) < 0)
        {
          operator delete(v74);
        }
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_85;
      }

      sub_1018D8D04(&buf);
      v54 = qword_1025D4608;
      sub_101322EE0(a2, v71);
      if (v72 >= 0)
      {
        v55 = v71;
      }

      else
      {
        v55 = v71[0];
      }

      v68 = a3->i32[0];
      v56 = __p;
      sub_1013230DC(&v68, __p);
      if (v70 < 0)
      {
        v56 = __p[0];
      }

      v65 = *a4;
      v57 = sub_1013230DC(&v65, v66);
      if (v67 >= 0)
      {
        v59 = v66;
      }

      else
      {
        v59 = v66[0];
      }

      v60 = *a6;
      v61 = sub_10000B1F8(v57, v58);
      v62 = sub_100125220(v61);
      LODWORD(v74) = 67110402;
      HIDWORD(v74) = v44;
      v75 = 2080;
      v76 = v55;
      v77 = 2080;
      v78 = v56;
      v79 = 2080;
      v80 = v59;
      v81 = 1024;
      v82 = v60;
      v83 = 2050;
      v84 = v62;
      _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v54, 2, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v74, 54);
      v41 = v63;
      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      if (v70 < 0)
      {
        operator delete(__p[0]);
      }

      if (v72 < 0)
      {
        operator delete(v71[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionStateObserver_Type::Notification &, const CLMotionStateObserver_Type::NotificationData &)", "%s\n", v41);
      if (v41 == &buf)
      {
        goto LABEL_85;
      }
    }

    free(v41);
LABEL_85:
    sub_10000CE1C(v85);
    return;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v21 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v22 = SBYTE3(v93) >= 0 ? &buf : buf;
    *v85 = 136315138;
    *v86 = v22;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionStateObserver_Type,unsupported message type,%s", v85, 0xCu);
    if (SBYTE3(v93) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D9F58();
  }
}

uint64_t sub_1005CFCF4(int *a1)
{
  if (!*a1)
  {
    return 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertMotionStateObserverNotificationTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DA05C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005CFDDC(uint64_t a1)
{
  *(a1 + 28) |= 2u;
  if (!*(a1 + 16))
  {
    operator new();
  }

  return *(a1 + 16);
}

void sub_1005CFE5C(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6, uint64_t a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v87 = 1024;
        LODWORD(v88) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionState_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v82 = 67109376;
        *v83 = v16;
        *&v83[4] = 1024;
        *&v83[6] = v18;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLMotionState_Type,silo entry invalid,from_valid,%d,to_valid,%d", v82, 14);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v19);
        if (v20 != &buf)
        {
          free(v20);
        }
      }

      return;
    }

    v27 = sub_10000AED0();
    v29 = sub_10000B1F8(v27, v28);
    sub_10000AED4(v29, v70);
    sub_10000AFE4(v82, a2, a3, a4, v70);
    v85 |= 2u;
    v30 = v84;
    if (!v84)
    {
      operator new();
    }

    *(v84 + 492) |= 0x800u;
    v31 = *(v30 + 352);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 200) |= 0x800u;
    v32 = *(v31 + 88);
    if (!v32)
    {
      operator new();
    }

    v33 = *a5;
    *(v32 + 28) |= 1u;
    *(v32 + 8) = v33;
    v34 = sub_10126F7D8(a6);
    if (!sub_1000183C8(v34))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11463, "::CLP::LogEntry::PrivateData::MotionStateNotification_NotificationType_IsValid(value)");
    }

    v35 = *(v32 + 28);
    *(v32 + 12) = v34;
    *(v32 + 28) = v35 | 6;
    v36 = *(v32 + 16);
    if (!v36)
    {
      operator new();
    }

    v37 = *a6;
    if (*a6 - 3 < 9)
    {
LABEL_57:
      sub_10000CE1C(v82);
      return;
    }

    if (v37 - 1 >= 2)
    {
      if (!v37)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v38 = sub_1005D0718(v36);
      sub_1000D2CD4(a7, v38, 0);
    }

    v39 = sub_10000BFC0(a1, v82);
    if (*(a1 + 8) == 1)
    {
      v40 = v39;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v41 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &v71);
        if (SBYTE3(v75) >= 0)
        {
          v42 = &v71;
        }

        else
        {
          v42 = v71;
        }

        v61 = v42;
        LODWORD(v63[0]) = a3->i32[0];
        sub_1013230DC(v63, v68);
        if (v69 >= 0)
        {
          v43 = v68;
        }

        else
        {
          v43 = v68[0];
        }

        v65 = *a4;
        v44 = __p;
        v45 = sub_1013230DC(&v65, __p);
        if (v67 < 0)
        {
          v44 = __p[0];
        }

        v47 = *a6;
        v48 = sub_10000B1F8(v45, v46);
        v49 = sub_100125220(v48);
        LODWORD(buf) = 67110402;
        HIDWORD(buf) = v40;
        v87 = 2080;
        v88 = v61;
        v89 = 2080;
        v90 = v43;
        v91 = 2080;
        v92 = v44;
        v93 = 1024;
        v94 = v47;
        v95 = 2050;
        v96 = v49;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionState_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
        if (v67 < 0)
        {
          operator delete(__p[0]);
        }

        if (v69 < 0)
        {
          operator delete(v68[0]);
        }

        if (SBYTE3(v75) < 0)
        {
          operator delete(v71);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(&buf);
        v50 = qword_1025D4608;
        sub_101322EE0(a2, v68);
        if (v69 >= 0)
        {
          v51 = v68;
        }

        else
        {
          v51 = v68[0];
        }

        v65 = a3->i32[0];
        v52 = __p;
        sub_1013230DC(&v65, __p);
        if (v67 < 0)
        {
          v52 = __p[0];
        }

        v62 = *a4;
        v53 = sub_1013230DC(&v62, v63);
        if (v64 >= 0)
        {
          v55 = v63;
        }

        else
        {
          v55 = v63[0];
        }

        v56 = *a6;
        v57 = sub_10000B1F8(v53, v54);
        v58 = sub_100125220(v57);
        LODWORD(v71) = 67110402;
        HIDWORD(v71) = v40;
        v72 = 2080;
        v73 = v51;
        v74 = 2080;
        v75 = v52;
        v76 = 2080;
        v77 = v55;
        v78 = 1024;
        v79 = v56;
        v80 = 2050;
        v81 = v58;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v50, 2, "#locctl,#rec,recordMessage,CLMotionState_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v71, 54);
        v60 = v59;
        if (v64 < 0)
        {
          operator delete(v63[0]);
        }

        if (v67 < 0)
        {
          operator delete(__p[0]);
        }

        if (v69 < 0)
        {
          operator delete(v68[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLMotionState_Type::Notification &, const CLMotionState_Type::NotificationData &)", "%s\n", v60);
        if (v60 != &buf)
        {
          free(v60);
        }
      }
    }

    goto LABEL_57;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v21 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v22 = SBYTE3(v90) >= 0 ? &buf : buf;
    *v82 = 136315138;
    *v83 = v22;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLMotionState_Type,unsupported message type,%s", v82, 0xCu);
    if (SBYTE3(v90) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DA338();
  }
}

uint64_t sub_1005D0718(uint64_t a1)
{
  *(a1 + 20) |= 1u;
  if (!*(a1 + 8))
  {
    operator new();
  }

  return *(a1 + 8);
}

void sub_1005D0798(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, int *a6, unsigned int *a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (*a2 == 4)
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v10 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a3->i32[0])
        {
          v11 = a3->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a4)
        {
          v13 = a4[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        LODWORD(buf) = 67109376;
        HIDWORD(buf) = v12;
        v92 = 1024;
        LODWORD(v93) = v14;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLSignalEnvironmentProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        if (a3->i32[0])
        {
          v15 = a3->i32[1] == 0;
        }

        else
        {
          v15 = 1;
        }

        v16 = !v15;
        if (*a4)
        {
          v17 = a4[1] == 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = !v17;
        *v87 = 67109376;
        *v88 = v16;
        *&v88[4] = 1024;
        *&v88[6] = v18;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLSignalEnvironmentProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", v87, 14);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLSignalEnvironmentProvider_Type::Notification &, const CLSignalEnvironmentProvider_Type::NotificationData &)", "%s\n", v19);
        if (v20 != &buf)
        {
          free(v20);
        }
      }

      return;
    }

    v27 = sub_10000AED0();
    v29 = sub_10000B1F8(v27, v28);
    sub_10000AED4(v29, v75);
    sub_10000AFE4(v87, a2, a3, a4, v75);
    v90 |= 2u;
    v30 = v89;
    if (!v89)
    {
      operator new();
    }

    *(v89 + 492) |= 0x800u;
    v31 = *(v30 + 352);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 200) |= 0x2000u;
    v32 = *(v31 + 104);
    if (!v32)
    {
      operator new();
    }

    v33 = *a5;
    *(v32 + 28) |= 1u;
    *(v32 + 8) = v33;
    v34 = sub_10126F4F8(a6);
    if (!sub_100437D64(v34))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11737, "::CLP::LogEntry::PrivateData::SignalEnvironmentNotification_NotificationType_IsValid(value)");
    }

    v35 = *(v32 + 28);
    *(v32 + 12) = v34;
    *(v32 + 28) = v35 | 6;
    v36 = *(v32 + 16);
    if (!v36)
    {
      operator new();
    }

    *(v36 + 20) |= 1u;
    v37 = *(v36 + 8);
    if (!v37)
    {
      operator new();
    }

    v38 = sub_1001F3804(a7);
    if (sub_1001F161C(v38))
    {
      *(v37 + 20) |= 1u;
      *(v37 + 8) = v38;
      *(v36 + 20) |= 1u;
      v39 = *(v36 + 8);
      if (!v39)
      {
        operator new();
      }

      v40 = sub_10126F6E0(a7 + 1);
      if (sub_10041ECF8(v40))
      {
        *(v39 + 20) |= 2u;
        *(v39 + 12) = v40;
        v41 = sub_10000BFC0(a1, v87);
        if (*(a1 + 8) == 1)
        {
          v42 = v41;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v43 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v76);
            if (SBYTE3(v80) >= 0)
            {
              v44 = &v76;
            }

            else
            {
              v44 = v76;
            }

            v66 = v44;
            LODWORD(v68[0]) = a3->i32[0];
            sub_1013230DC(v68, v73);
            if (v74 >= 0)
            {
              v45 = v73;
            }

            else
            {
              v45 = v73[0];
            }

            v70 = *a4;
            v46 = __p;
            v47 = sub_1013230DC(&v70, __p);
            if (v72 < 0)
            {
              v46 = __p[0];
            }

            v49 = *a6;
            v50 = sub_10000B1F8(v47, v48);
            v51 = sub_100125220(v50);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v42;
            v92 = 2080;
            v93 = v66;
            v94 = 2080;
            v95 = v45;
            v96 = 2080;
            v97 = v46;
            v98 = 1024;
            v99 = v49;
            v100 = 2050;
            v101 = v51;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLSignalEnvironmentProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v72 < 0)
            {
              operator delete(__p[0]);
            }

            if (v74 < 0)
            {
              operator delete(v73[0]);
            }

            if (SBYTE3(v80) < 0)
            {
              operator delete(v76);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            v55 = qword_1025D4608;
            sub_101322EE0(a2, v73);
            if (v74 >= 0)
            {
              v56 = v73;
            }

            else
            {
              v56 = v73[0];
            }

            v70 = a3->i32[0];
            v57 = __p;
            sub_1013230DC(&v70, __p);
            if (v72 < 0)
            {
              v57 = __p[0];
            }

            v67 = *a4;
            v58 = sub_1013230DC(&v67, v68);
            if (v69 >= 0)
            {
              v60 = v68;
            }

            else
            {
              v60 = v68[0];
            }

            v61 = *a6;
            v62 = sub_10000B1F8(v58, v59);
            v63 = sub_100125220(v62);
            LODWORD(v76) = 67110402;
            HIDWORD(v76) = v42;
            v77 = 2080;
            v78 = v56;
            v79 = 2080;
            v80 = v57;
            v81 = 2080;
            v82 = v60;
            v83 = 1024;
            v84 = v61;
            v85 = 2050;
            v86 = v63;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v55, 2, "#locctl,#rec,recordMessage,CLSignalEnvironmentProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v76, 54);
            v65 = v64;
            if (v69 < 0)
            {
              operator delete(v68[0]);
            }

            if (v72 < 0)
            {
              operator delete(__p[0]);
            }

            if (v74 < 0)
            {
              operator delete(v73[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLSignalEnvironmentProvider_Type::Notification &, const CLSignalEnvironmentProvider_Type::NotificationData &)", "%s\n", v65);
            if (v65 != &buf)
            {
              free(v65);
            }
          }
        }

        sub_10000CE1C(v87);
        return;
      }

      v52 = "::CLP::LogEntry::PrivateData::SignalEnvironmentFidelityLevel_IsValid(value)";
      v53 = 22943;
      v54 = "set_fidelity_level";
    }

    else
    {
      v52 = "::CLP::LogEntry::PrivateData::SignalEnvironment_SignalEnvironmentType_IsValid(value)";
      v53 = 22920;
      v54 = "set_type";
    }

    __assert_rtn(v54, "CLPPrivateDataShared.pb.h", v53, v52);
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v21 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v22 = SBYTE3(v95) >= 0 ? &buf : buf;
    *v87 = 136315138;
    *v88 = v22;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLSignalEnvironmentProvider_Type,unsupported message type,%s", v87, 0xCu);
    if (SBYTE3(v95) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DA43C();
  }
}

void sub_1005D1128(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6, uint64_t a7)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v10 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v11 = a3->i32[1] == 0;
          }

          else
          {
            v11 = 1;
          }

          v12 = !v11;
          if (*a4)
          {
            v13 = a4[1] == 0;
          }

          else
          {
            v13 = 1;
          }

          v14 = !v13;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v12;
          v86 = 1024;
          LODWORD(v87) = v14;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLStepCountNotifier_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v15 = a3->i32[1] == 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = !v15;
          if (*a4)
          {
            v17 = a4[1] == 0;
          }

          else
          {
            v17 = 1;
          }

          v18 = !v17;
          *v81 = 67109376;
          *v82 = v16;
          *&v82[4] = 1024;
          *&v82[6] = v18;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLStepCountNotifier_Type,silo entry invalid,from_valid,%d,to_valid,%d", v81, 14);
          v20 = v19;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLStepCountNotifier_Type::Notification &, const CLStepCountNotifier_Type::NotificationData &)", "%s\n", v19);
          if (v20 != &buf)
          {
            free(v20);
          }
        }
      }

      else
      {
        v27 = sub_10000AED0();
        v29 = sub_10000B1F8(v27, v28);
        sub_10000AED4(v29, v69);
        sub_10000AFE4(v81, a2, a3, a4, v69);
        v84 |= 2u;
        v30 = v83;
        if (!v83)
        {
          operator new();
        }

        *(v83 + 492) |= 0x800u;
        v31 = *(v30 + 352);
        if (!v31)
        {
          operator new();
        }

        *(v31 + 200) |= 0x400000u;
        v32 = *(v31 + 176);
        if (!v32)
        {
          operator new();
        }

        v33 = *a5;
        *(v32 + 28) |= 1u;
        *(v32 + 8) = v33;
        v34 = sub_10126F5E8(a6);
        if (!sub_1001744A4(v34))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11874, "::CLP::LogEntry::PrivateData::StepCountNotification_NotificationType_IsValid(value)");
        }

        v35 = *(v32 + 28);
        *(v32 + 12) = v34;
        *(v32 + 28) = v35 | 6;
        v36 = *(v32 + 16);
        if (!v36)
        {
          operator new();
        }

        *(v36 + 20) |= 1u;
        v37 = *(v36 + 8);
        if (!v37)
        {
          operator new();
        }

        sub_10126A094(a7, v37);
        v38 = sub_10000BFC0(a1, v81);
        if (*(a1 + 8) == 1)
        {
          v39 = v38;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v40 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, &v70);
            if (SBYTE3(v74) >= 0)
            {
              v41 = &v70;
            }

            else
            {
              v41 = v70;
            }

            v60 = v41;
            LODWORD(v62[0]) = a3->i32[0];
            sub_1013230DC(v62, v67);
            if (v68 >= 0)
            {
              v42 = v67;
            }

            else
            {
              v42 = v67[0];
            }

            v64 = *a4;
            v43 = __p;
            v44 = sub_1013230DC(&v64, __p);
            if (v66 < 0)
            {
              v43 = __p[0];
            }

            v46 = *a6;
            v47 = sub_10000B1F8(v44, v45);
            v48 = sub_100125220(v47);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v39;
            v86 = 2080;
            v87 = v60;
            v88 = 2080;
            v89 = v42;
            v90 = 2080;
            v91 = v43;
            v92 = 1024;
            v93 = v46;
            v94 = 2050;
            v95 = v48;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLStepCountNotifier_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &buf, 0x36u);
            if (v66 < 0)
            {
              operator delete(__p[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            if (SBYTE3(v74) < 0)
            {
              operator delete(v70);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            v49 = qword_1025D4608;
            sub_101322EE0(a2, v67);
            if (v68 >= 0)
            {
              v50 = v67;
            }

            else
            {
              v50 = v67[0];
            }

            v64 = a3->i32[0];
            v51 = __p;
            sub_1013230DC(&v64, __p);
            if (v66 < 0)
            {
              v51 = __p[0];
            }

            v61 = *a4;
            v52 = sub_1013230DC(&v61, v62);
            if (v63 >= 0)
            {
              v54 = v62;
            }

            else
            {
              v54 = v62[0];
            }

            v55 = *a6;
            v56 = sub_10000B1F8(v52, v53);
            v57 = sub_100125220(v56);
            LODWORD(v70) = 67110402;
            HIDWORD(v70) = v39;
            v71 = 2080;
            v72 = v50;
            v73 = 2080;
            v74 = v51;
            v75 = 2080;
            v76 = v54;
            v77 = 1024;
            v78 = v55;
            v79 = 2050;
            v80 = v57;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v49, 2, "#locctl,#rec,recordMessage,CLStepCountNotifier_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%d,propagation_us,%{public}.3f", &v70, 54);
            v59 = v58;
            if (v63 < 0)
            {
              operator delete(v62[0]);
            }

            if (v66 < 0)
            {
              operator delete(__p[0]);
            }

            if (v68 < 0)
            {
              operator delete(v67[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLStepCountNotifier_Type::Notification &, const CLStepCountNotifier_Type::NotificationData &)", "%s\n", v59);
            if (v59 != &buf)
            {
              free(v59);
            }
          }
        }

        sub_10000CE1C(v81);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v22 = SBYTE3(v89) >= 0 ? &buf : buf;
        *v81 = 136315138;
        *v82 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLStepCountNotifier_Type,unsupported message type,%s", v81, 0xCu);
        if (SBYTE3(v89) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DA540();
      }
    }
  }
}

void sub_1005D19F8(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, int *a6)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v9 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v10 = a3->i32[1] == 0;
          }

          else
          {
            v10 = 1;
          }

          v11 = !v10;
          if (*a4)
          {
            v12 = a4[1] == 0;
          }

          else
          {
            v12 = 1;
          }

          v13 = !v12;
          *buf = 67109376;
          *&buf[4] = v11;
          v82 = 1024;
          LODWORD(v83) = v13;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLTelephonyService_Type,silo entry invalid,from_valid,%d,to_valid,%d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v14 = a3->i32[1] == 0;
          }

          else
          {
            v14 = 1;
          }

          v15 = !v14;
          if (*a4)
          {
            v16 = a4[1] == 0;
          }

          else
          {
            v16 = 1;
          }

          v17 = !v16;
          *v72 = 67109376;
          *&v72[4] = v15;
          *&v72[8] = 1024;
          *&v72[10] = v17;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLTelephonyService_Type,silo entry invalid,from_valid,%d,to_valid,%d", v72, 14);
          v19 = v18;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLTelephonyService_Type::Notification &)", "%s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }
      }

      else
      {
        v25 = sub_10000AED0();
        v27 = sub_10000B1F8(v25, v26);
        sub_10000AED4(v27, v68);
        sub_10000AFE4(v69, a2, a3, a4, v68);
        v71 |= 2u;
        v28 = v70;
        if (!v70)
        {
          operator new();
        }

        *(v70 + 492) |= 0x800u;
        v29 = *(v28 + 352);
        if (!v29)
        {
          operator new();
        }

        *(v29 + 200) |= 0x4000u;
        v30 = *(v29 + 112);
        if (!v30)
        {
          operator new();
        }

        v31 = *a5;
        v30[5] |= 1u;
        v30[2] = v31;
        v32 = sub_1005D22B8(a6);
        if (!sub_10041ECEC(v32))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 11965, "::CLP::LogEntry::PrivateData::TelephonyServiceNotification_NotificationType_IsValid(value)");
        }

        v30[5] |= 2u;
        v30[3] = v32;
        v33 = sub_10000BFC0(a1, v69);
        if (*(a1 + 8) == 1)
        {
          v34 = v33;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v35 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, v72);
            if (SBYTE3(v74) >= 0)
            {
              v36 = v72;
            }

            else
            {
              v36 = *v72;
            }

            v57 = v36;
            LODWORD(v58[0]) = a3->i32[0];
            sub_1013230DC(v58, v66);
            if (v67 >= 0)
            {
              v37 = v66;
            }

            else
            {
              v37 = v66[0];
            }

            v63 = *a4;
            sub_1013230DC(&v63, v64);
            if (v65 >= 0)
            {
              v38 = v64;
            }

            else
            {
              v38 = v64[0];
            }

            v39 = sub_100072010(a6);
            v40 = __p;
            v41 = sub_1000238CC(v39, __p);
            if (v62 < 0)
            {
              v40 = __p[0];
            }

            v43 = sub_10000B1F8(v41, v42);
            v44 = sub_100125220(v43);
            *buf = 67110402;
            *&buf[4] = v34;
            v82 = 2080;
            v83 = v57;
            v84 = 2080;
            v85 = v37;
            v86 = 2080;
            v87 = v38;
            v88 = 2080;
            v89 = v40;
            v90 = 2050;
            v91 = v44;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLTelephonyService_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", buf, 0x3Au);
            if (v62 < 0)
            {
              operator delete(__p[0]);
            }

            if (v65 < 0)
            {
              operator delete(v64[0]);
            }

            if (v67 < 0)
            {
              operator delete(v66[0]);
            }

            if (SBYTE3(v74) < 0)
            {
              operator delete(*v72);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(buf);
            v45 = qword_1025D4608;
            sub_101322EE0(a2, v66);
            if (v67 >= 0)
            {
              v46 = v66;
            }

            else
            {
              v46 = v66[0];
            }

            v63 = a3->i32[0];
            v47 = v64;
            sub_1013230DC(&v63, v64);
            if (v65 < 0)
            {
              v47 = v64[0];
            }

            v60 = *a4;
            v48 = __p;
            sub_1013230DC(&v60, __p);
            if (v62 < 0)
            {
              v48 = __p[0];
            }

            v49 = sub_100072010(a6);
            v50 = v58;
            v51 = sub_1000238CC(v49, v58);
            if (v59 < 0)
            {
              v50 = v58[0];
            }

            v53 = sub_10000B1F8(v51, v52);
            v54 = sub_100125220(v53);
            *v72 = 67110402;
            *&v72[4] = v34;
            *&v72[8] = 2080;
            *&v72[10] = v46;
            v73 = 2080;
            v74 = v47;
            v75 = 2080;
            v76 = v48;
            v77 = 2080;
            v78 = v50;
            v79 = 2050;
            v80 = v54;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v45, 2, "#locctl,#rec,recordMessage,CLTelephonyService_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", v72, 58);
            v56 = v55;
            if (v59 < 0)
            {
              operator delete(v58[0]);
            }

            if (v62 < 0)
            {
              operator delete(__p[0]);
            }

            if (v65 < 0)
            {
              operator delete(v64[0]);
            }

            if (v67 < 0)
            {
              operator delete(v66[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLTelephonyService_Type::Notification &)", "%s\n", v56);
            if (v56 != buf)
            {
              free(v56);
            }
          }
        }

        sub_10000CE1C(v69);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, buf);
        v21 = SBYTE3(v85) >= 0 ? buf : *buf;
        *v72 = 136315138;
        *&v72[4] = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLTelephonyService_Type,unsupported message type,%s", v72, 0xCu);
        if (SBYTE3(v85) < 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DA644();
      }
    }
  }
}

uint64_t sub_1005D22B8(int *a1)
{
  v2 = sub_100072010(a1);
  if (CFEqual(v2, kCTRegistrationStatusChangedNotification))
  {
    return 1;
  }

  v4 = sub_100072010(a1);
  if (CFEqual(v4, kCTCallStatusChangeNotification))
  {
    return 2;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = sub_10006E830(a1, v6);
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertTelephonyServiceNotificationTypeToProtobuf,unhandled type,%d", v7, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DA748(a1);
    return 0;
  }

  return result;
}

void sub_1005D23DC(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6)
{
  if (*(a1 + 16))
  {
    if (*a2 == 4)
    {
      if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a3))))
      {
        if (qword_1025D4600 != -1)
        {
          sub_100287074();
        }

        v9 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          if (a3->i32[0])
          {
            v10 = a3->i32[1] == 0;
          }

          else
          {
            v10 = 1;
          }

          v11 = !v10;
          if (*a4)
          {
            v12 = a4[1] == 0;
          }

          else
          {
            v12 = 1;
          }

          v13 = !v12;
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v11;
          v76 = 1024;
          LODWORD(v77) = v13;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          if (a3->i32[0])
          {
            v14 = a3->i32[1] == 0;
          }

          else
          {
            v14 = 1;
          }

          v15 = !v14;
          if (*a4)
          {
            v16 = a4[1] == 0;
          }

          else
          {
            v16 = 1;
          }

          v17 = !v16;
          *v66 = 67109376;
          *&v66[4] = v15;
          *&v66[8] = 1024;
          *&v66[10] = v17;
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", v66, 14);
          v19 = v18;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &)", "%s\n", v18);
          if (v19 != &buf)
          {
            free(v19);
          }
        }
      }

      else
      {
        v25 = sub_10000AED0();
        v27 = sub_10000B1F8(v25, v26);
        sub_10000AED4(v27, v62);
        sub_10000AFE4(v63, a2, a3, a4, v62);
        v65 |= 2u;
        v28 = v64;
        if (!v64)
        {
          operator new();
        }

        *(v64 + 492) |= 0x800u;
        v29 = *(v28 + 352);
        if (!v29)
        {
          operator new();
        }

        *(v29 + 200) |= 0x10000u;
        v30 = *(v29 + 128);
        if (!v30)
        {
          operator new();
        }

        v31 = *a5;
        v30[9] |= 1u;
        v30[2] = v31;
        v32 = sub_100021DC4(a6);
        if (!sub_100DF8570(v32))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13026, "::CLP::LogEntry::PrivateData::LocationProviderNotification_NotificationType_IsValid(value)");
        }

        v30[9] |= 2u;
        v30[3] = v32;
        v33 = sub_10000BFC0(a1, v63);
        if (*(a1 + 8) == 1)
        {
          v34 = v33;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v35 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, v66);
            if (SBYTE3(v68) >= 0)
            {
              v36 = v66;
            }

            else
            {
              v36 = *v66;
            }

            v53 = v36;
            LODWORD(v55[0]) = a3->i32[0];
            sub_1013230DC(v55, v60);
            if (v61 >= 0)
            {
              v37 = v60;
            }

            else
            {
              v37 = v60[0];
            }

            v57 = *a4;
            v38 = __p;
            sub_1013230DC(&v57, __p);
            if (v59 < 0)
            {
              v38 = __p[0];
            }

            v39 = sub_100048D98(*a6);
            v41 = sub_10000B1F8(v39, v40);
            v42 = sub_100125220(v41);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v34;
            v76 = 2080;
            v77 = v53;
            v78 = 2080;
            v79 = v37;
            v80 = 2080;
            v81 = v38;
            v82 = 2080;
            v83 = v39;
            v84 = 2050;
            v85 = v42;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", &buf, 0x3Au);
            if (v59 < 0)
            {
              operator delete(__p[0]);
            }

            if (v61 < 0)
            {
              operator delete(v60[0]);
            }

            if (SBYTE3(v68) < 0)
            {
              operator delete(*v66);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            v43 = qword_1025D4608;
            sub_101322EE0(a2, v60);
            if (v61 >= 0)
            {
              v44 = v60;
            }

            else
            {
              v44 = v60[0];
            }

            v57 = a3->i32[0];
            v45 = __p;
            sub_1013230DC(&v57, __p);
            if (v59 < 0)
            {
              v45 = __p[0];
            }

            v54 = *a4;
            sub_1013230DC(&v54, v55);
            if (v56 >= 0)
            {
              v46 = v55;
            }

            else
            {
              v46 = v55[0];
            }

            v47 = sub_100048D98(*a6);
            v49 = sub_10000B1F8(v47, v48);
            v50 = sub_100125220(v49);
            *v66 = 67110402;
            *&v66[4] = v34;
            *&v66[8] = 2080;
            *&v66[10] = v44;
            v67 = 2080;
            v68 = v45;
            v69 = 2080;
            v70 = v46;
            v71 = 2080;
            v72 = v47;
            v73 = 2050;
            v74 = v50;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v43, 2, "#locctl,#rec,recordMessage,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", v66, 58);
            v52 = v51;
            if (v56 < 0)
            {
              operator delete(v55[0]);
            }

            if (v59 < 0)
            {
              operator delete(__p[0]);
            }

            if (v61 < 0)
            {
              operator delete(v60[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &)", "%s\n", v52);
            if (v52 != &buf)
            {
              free(v52);
            }
          }
        }

        sub_10000CE1C(v63);
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v20 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        sub_101322EE0(a2, &buf);
        v21 = SBYTE3(v79) >= 0 ? &buf : buf;
        *v66 = 136315138;
        *&v66[4] = v21;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,CLLocationProvider_Type,unsupported message type,%s", v66, 0xCu);
        if (SBYTE3(v79) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DAA44();
      }
    }
  }
}

uint64_t sub_1005D2C14(uint64_t a1)
{
  *(a1 + 128) |= 0x2000u;
  if (!*(a1 + 96))
  {
    operator new();
  }

  return *(a1 + 96);
}

uint64_t sub_1005D2C94(uint64_t a1)
{
  *(a1 + 128) |= 0x8000u;
  if (!*(a1 + 104))
  {
    operator new();
  }

  return *(a1 + 104);
}

uint64_t sub_1005D2D14(uint64_t a1)
{
  *(a1 + 128) |= 0x10000u;
  if (!*(a1 + 112))
  {
    operator new();
  }

  return *(a1 + 112);
}

void sub_1005D2D94(uint64_t a1, int32x4_t *a2, unsigned int *a3, void *a4, int a5)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a2))))
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      if (a2->i32[0])
      {
        v8 = a2->i32[1] == 0;
      }

      else
      {
        v8 = 1;
      }

      v9 = !v8;
      if (*a3)
      {
        v10 = a3[1] == 0;
      }

      else
      {
        v10 = 1;
      }

      v11 = !v10;
      *buf = 67109376;
      v78 = v9;
      v79 = 1024;
      LODWORD(v80) = v11;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,RoutineVisit,silo entry invalid,from_valid,%d,to_valid,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      if (a2->i32[0])
      {
        v12 = a2->i32[1] == 0;
      }

      else
      {
        v12 = 1;
      }

      v13 = !v12;
      if (*a3)
      {
        v14 = a3[1] == 0;
      }

      else
      {
        v14 = 1;
      }

      v15 = !v14;
      v72[0] = 67109376;
      v72[1] = v13;
      v73 = 1024;
      v74 = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,RoutineVisit,silo entry invalid,from_valid,%d,to_valid,%d", v72, 14);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CLVisit *, const BOOL)", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return;
  }

  v21 = sub_10000AED0();
  v23 = sub_10000B1F8(v21, v22);
  sub_10000AED4(v23, v60);
  v59 = 4;
  sub_10000AFE4(v72, &v59, a2, a3, v60);
  v76 |= 2u;
  v24 = v75;
  if (!v75)
  {
    operator new();
  }

  *(v75 + 492) |= 0x800u;
  v25 = *(v24 + 352);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 200) |= 0x40000u;
  v26 = *(v25 + 144);
  if (!v26)
  {
    operator new();
  }

  *(v26 + 28) |= 1u;
  *(v26 + 8) = -1;
  if (!a5)
  {
    if (sub_10041ECEC(1u))
    {
      v27 = 1;
      goto LABEL_47;
    }

LABEL_70:
    __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13342, "::CLP::LogEntry::PrivateData::RoutineVisitNotification_NotificationType_IsValid(value)");
  }

  if (!sub_10041ECEC(2u))
  {
    goto LABEL_70;
  }

  v27 = 2;
LABEL_47:
  v28 = *(v26 + 28);
  *(v26 + 12) = v27;
  *(v26 + 28) = v28 | 6;
  v29 = *(v26 + 16);
  if (!v29)
  {
    operator new();
  }

  *(v29 + 20) |= 1u;
  v30 = *(v29 + 8);
  if (!v30)
  {
    operator new();
  }

  sub_10126B660(a4, v30);
  v31 = sub_10000BFC0(a1, v72);
  if (*(a1 + 8) == 1)
  {
    v32 = v31;
    if (qword_1025D4600 != -1)
    {
      sub_1018D8CDC();
    }

    v33 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v34 = &v61;
      sub_101322EE0(&v59, &v61);
      if (SBYTE3(v65) < 0)
      {
        v34 = v61;
      }

      LODWORD(v52[0]) = a2->i32[0];
      v35 = v57;
      sub_1013230DC(v52, v57);
      if (v58 < 0)
      {
        v35 = v57[0];
      }

      v54 = *a3;
      v36 = __p;
      v37 = sub_1013230DC(&v54, __p);
      if (v56 < 0)
      {
        v36 = __p[0];
      }

      v39 = sub_10000B1F8(v37, v38);
      v40 = sub_100125220(v39);
      *buf = 67110402;
      v78 = v32;
      v79 = 2080;
      v80 = v34;
      v81 = 2080;
      v82 = v35;
      v83 = 2080;
      v84 = v36;
      v85 = 1024;
      v86 = a5;
      v87 = 2050;
      v88 = v40;
      _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,RoutineVisit,success,%d,message_type,%s,from,%s,to,%s,isLOI,%d,propagation_us,%{public}.3f", buf, 0x36u);
      if (v56 < 0)
      {
        operator delete(__p[0]);
      }

      if (v58 < 0)
      {
        operator delete(v57[0]);
      }

      if (SBYTE3(v65) < 0)
      {
        operator delete(v61);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018D8D04(buf);
      v41 = qword_1025D4608;
      v42 = v57;
      sub_101322EE0(&v59, v57);
      if (v58 < 0)
      {
        v42 = v57[0];
      }

      v54 = a2->i32[0];
      v43 = __p;
      sub_1013230DC(&v54, __p);
      if (v56 < 0)
      {
        v43 = __p[0];
      }

      v51 = *a3;
      v44 = v52;
      v45 = sub_1013230DC(&v51, v52);
      if (v53 < 0)
      {
        v44 = v52[0];
      }

      v47 = sub_10000B1F8(v45, v46);
      v48 = sub_100125220(v47);
      LODWORD(v61) = 67110402;
      HIDWORD(v61) = v32;
      v62 = 2080;
      v63 = v42;
      v64 = 2080;
      v65 = v43;
      v66 = 2080;
      v67 = v44;
      v68 = 1024;
      v69 = a5;
      v70 = 2050;
      v71 = v48;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 2, "#locctl,#rec,recordMessage,RoutineVisit,success,%d,message_type,%s,from,%s,to,%s,isLOI,%d,propagation_us,%{public}.3f", &v61, 54);
      v50 = v49;
      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (v56 < 0)
      {
        operator delete(__p[0]);
      }

      if (v58 < 0)
      {
        operator delete(v57[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CLVisit *, const BOOL)", "%s\n", v50);
      if (v50 != buf)
      {
        free(v50);
      }
    }
  }

  sub_10000CE1C(v72);
}

uint64_t sub_1005D35A4(uint64_t result, int a2, const std::string *a3, void *a4, void *a5)
{
  v5 = a2 ^ 1;
  if (a5)
  {
    v5 = 0;
  }

  if ((v5 & 1) == 0)
  {
    v6 = result;
    if (*(result + 16))
    {
      v7 = a5;
      *buf = 1;
      LODWORD(v49) = 1;
      HIDWORD(v49) = sub_10000AD98(buf);
      *buf = 21;
      LODWORD(v48) = 21;
      HIDWORD(v48) = sub_10000AD98(buf);
      if ((a2 & 1) == 0)
      {
        *buf = 21;
        v49 = (sub_10000AD98(buf) << 32) | 0x15;
        *buf = 1;
        v48 = (sub_10000AD98(buf) << 32) | 1;
      }

      v11 = sub_10000AED0();
      v13 = sub_10000B1F8(v11, v12);
      sub_10000AED4(v13, v44);
      v43 = 4;
      sub_10000AFE4(v45, &v43, &v49, &v48, v44);
      v47 |= 2u;
      v14 = v46;
      if (!v46)
      {
        operator new();
      }

      *(v46 + 492) |= 0x800u;
      v15 = *(v14 + 352);
      if (!v15)
      {
        operator new();
      }

      *(v15 + 200) |= 0x800000u;
      v16 = *(v15 + 184);
      if (!v16)
      {
        operator new();
      }

      *(v16 + 28) |= 1u;
      *(v16 + 8) = -1;
      if (a2)
      {
        if (sub_10041ECEC(1u))
        {
          v17 = 1;
LABEL_18:
          v18 = *(v16 + 28);
          *(v16 + 12) = v17;
          *(v16 + 28) = v18 | 6;
          v19 = *(v16 + 16);
          if (!v19)
          {
            operator new();
          }

          *(v19 + 52) |= 1u;
          v20 = *(v19 + 8);
          if (v20 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          std::string::operator=(v20, a3);
          *(v19 + 52) |= 2u;
          v21 = *(v19 + 16);
          if (!v21)
          {
            operator new();
          }

          sub_10126FF24(a4, v21);
          if (v7 && [v7 count])
          {
            for (i = 0; [v7 count] > i; ++i)
            {
              v23 = [v7 objectAtIndexedSubscript:i];
              v24 = *(v19 + 36);
              v25 = *(v19 + 32);
              if (v25 >= v24)
              {
                if (v24 == *(v19 + 40))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v19 + 24), v24 + 1);
                  v24 = *(v19 + 36);
                }

                *(v19 + 36) = v24 + 1;
                sub_1005D690C();
              }

              v26 = *(v19 + 24);
              *(v19 + 32) = v25 + 1;
              sub_10126FFF8(v23, *(v26 + 8 * v25));
            }
          }

          v27 = sub_10000BFC0(v6, v45);
          if (*(v6 + 8) == 1)
          {
            v28 = v27;
            if (qword_1025D4600 != -1)
            {
              sub_1018D8CDC();
            }

            v29 = qword_1025D4608;
            v30 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
            if (v30)
            {
              v32 = a3;
              if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
              {
                v32 = a3->__r_.__value_.__r.__words[0];
              }

              if (v7)
              {
                v30 = [v7 count];
                v33 = v30;
              }

              else
              {
                v33 = 0;
              }

              v34 = sub_10000B1F8(v30, v31);
              v35 = sub_100125220(v34);
              *buf = 67241218;
              v60 = v28;
              v61 = 1026;
              v62 = a2;
              v63 = 2082;
              v64 = v32;
              v65 = 1026;
              v66 = v33;
              v67 = 2050;
              v68 = v35;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,FetchRecentLocationsWithOptions,success,%{public}d,is_input,%{public}d,client_str,%{public}s,loc_sz,%{public}d,propagation_us,%{public}.3f", buf, 0x28u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_1018D8CDC();
              }

              if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
              {
                a3 = a3->__r_.__value_.__r.__words[0];
              }

              v38 = qword_1025D4608;
              if (v7)
              {
                v36 = [v7 count];
                LODWORD(v7) = v36;
              }

              v39 = sub_10000B1F8(v36, v37);
              v40 = sub_100125220(v39);
              v50[0] = 67241218;
              v50[1] = v28;
              v51 = 1026;
              v52 = a2;
              v53 = 2082;
              v54 = a3;
              v55 = 1026;
              v56 = v7;
              v57 = 2050;
              v58 = v40;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v38, 2, "#locctl,#rec,recordMessage,FetchRecentLocationsWithOptions,success,%{public}d,is_input,%{public}d,client_str,%{public}s,loc_sz,%{public}d,propagation_us,%{public}.3f", v50, 40);
              v42 = v41;
              sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordFetchRecentLocationsWithOptions(const BOOL, const std::string, CLRecentLocationsFetchOptions *, NSArray<CLLocationExtendedTimestamps *> *)", "%s\n", v41);
              if (v42 != buf)
              {
                free(v42);
              }
            }
          }

          return sub_10000CE1C(v45);
        }
      }

      else if (sub_10041ECEC(2u))
      {
        v17 = 2;
        goto LABEL_18;
      }

      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 14010, "::CLP::LogEntry::PrivateData::FetchRecentLocationsNotification_NotificationType_IsValid(value)");
    }
  }

  return result;
}

void sub_1005D3B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D3C2C(uint64_t result, int a2, const std::string *a3, void *a4, double a5, double a6)
{
  v6 = a2 ^ 1;
  if (a4)
  {
    v6 = 0;
  }

  if ((v6 & 1) == 0)
  {
    v7 = result;
    if (*(result + 16))
    {
      v8 = a4;
      *buf = 1;
      LODWORD(v51) = 1;
      HIDWORD(v51) = sub_10000AD98(buf);
      *buf = 21;
      LODWORD(v50) = 21;
      HIDWORD(v50) = sub_10000AD98(buf);
      if ((a2 & 1) == 0)
      {
        *buf = 21;
        v51 = (sub_10000AD98(buf) << 32) | 0x15;
        *buf = 1;
        v50 = (sub_10000AD98(buf) << 32) | 1;
      }

      v13 = sub_10000AED0();
      v15 = sub_10000B1F8(v13, v14);
      sub_10000AED4(v15, v46);
      v45 = 4;
      sub_10000AFE4(v47, &v45, &v51, &v50, v46);
      v49 |= 2u;
      v16 = v48;
      if (!v48)
      {
        operator new();
      }

      *(v48 + 492) |= 0x800u;
      v17 = *(v16 + 352);
      if (!v17)
      {
        operator new();
      }

      *(v17 + 200) |= 0x800000u;
      v18 = *(v17 + 184);
      if (!v18)
      {
        operator new();
      }

      *(v18 + 28) |= 1u;
      *(v18 + 8) = -1;
      if (a2)
      {
        if (sub_10041ECEC(1u))
        {
          v19 = 1;
LABEL_18:
          v20 = *(v18 + 28);
          *(v18 + 12) = v19;
          *(v18 + 28) = v20 | 6;
          v21 = *(v18 + 16);
          if (!v21)
          {
            operator new();
          }

          *(v21 + 52) |= 1u;
          v22 = *(v21 + 8);
          if (v22 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
          {
            operator new();
          }

          std::string::operator=(v22, a3);
          *(v21 + 52) |= 2u;
          v23 = *(v21 + 16);
          if (!v23)
          {
            operator new();
          }

          *(v23 + 36) |= 2u;
          *(v23 + 16) = a5;
          *(v21 + 52) |= 2u;
          *(v23 + 36) |= 4u;
          *(v23 + 24) = (a6 - a5);
          *(v21 + 52) |= 2u;
          *(v23 + 36) |= 8u;
          *(v23 + 28) = 1;
          *(v21 + 52) |= 2u;
          *(v23 + 36) |= 0x10u;
          if (v8 && [v8 count])
          {
            for (i = 0; [v8 count] > i; ++i)
            {
              v25 = [v8 objectAtIndexedSubscript:i];
              v26 = *(v21 + 36);
              v27 = *(v21 + 32);
              if (v27 >= v26)
              {
                if (v26 == *(v21 + 40))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v21 + 24), v26 + 1);
                  v26 = *(v21 + 36);
                }

                *(v21 + 36) = v26 + 1;
                sub_1005D690C();
              }

              v28 = *(v21 + 24);
              *(v21 + 32) = v27 + 1;
              sub_10126FFF8(v25, *(v28 + 8 * v27));
            }
          }

          v29 = sub_10000BFC0(v7, v47);
          if (*(v7 + 8) == 1)
          {
            v30 = v29;
            if (qword_1025D4600 != -1)
            {
              sub_1018D8CDC();
            }

            v31 = qword_1025D4608;
            v32 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
            if (v32)
            {
              v34 = a3;
              if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
              {
                v34 = a3->__r_.__value_.__r.__words[0];
              }

              if (v8)
              {
                v32 = [v8 count];
                v35 = v32;
              }

              else
              {
                v35 = 0;
              }

              v36 = sub_10000B1F8(v32, v33);
              v37 = sub_100125220(v36);
              *buf = 67241730;
              v66 = v30;
              v67 = 1026;
              v68 = a2;
              v69 = 2082;
              v70 = v34;
              v71 = 2050;
              v72 = a5;
              v73 = 2050;
              v74 = a6;
              v75 = 1026;
              v76 = v35;
              v77 = 2050;
              v78 = v37;
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,recordFetchRecentSparseLocations,success,%{public}d,is_input,%{public}d,client_str,%{public}s,startMctSec,%{public}.3f,endMctSec,%{public}.3f,loc_sz,%{public}d,propagation_us,%{public}.3f", buf, 0x3Cu);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_1018D8CDC();
              }

              if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
              {
                a3 = a3->__r_.__value_.__r.__words[0];
              }

              v40 = qword_1025D4608;
              if (v8)
              {
                v38 = [v8 count];
                LODWORD(v8) = v38;
              }

              v41 = sub_10000B1F8(v38, v39);
              v42 = sub_100125220(v41);
              v52[0] = 67241730;
              v52[1] = v30;
              v53 = 1026;
              v54 = a2;
              v55 = 2082;
              v56 = a3;
              v57 = 2050;
              v58 = a5;
              v59 = 2050;
              v60 = a6;
              v61 = 1026;
              v62 = v8;
              v63 = 2050;
              v64 = v42;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v40, 2, "#locctl,#rec,recordMessage,recordFetchRecentSparseLocations,success,%{public}d,is_input,%{public}d,client_str,%{public}s,startMctSec,%{public}.3f,endMctSec,%{public}.3f,loc_sz,%{public}d,propagation_us,%{public}.3f", v52, 60);
              v44 = v43;
              sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordFetchRecentSparseLocations(const BOOL, const std::string, const double, const double, NSArray<CLLocationExtendedTimestamps *> *)", "%s\n", v43);
              if (v44 != buf)
              {
                free(v44);
              }
            }
          }

          return sub_10000CE1C(v47);
        }
      }

      else if (sub_10041ECEC(2u))
      {
        v19 = 2;
        goto LABEL_18;
      }

      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 14010, "::CLP::LogEntry::PrivateData::FetchRecentLocationsNotification_NotificationType_IsValid(value)");
    }
  }

  return result;
}

void sub_1005D4280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D4344(uint64_t result, uint64_t a2, uint64_t *a3, char a4, char a5, char a6, char a7, unsigned int *a8, unsigned int *a9, unsigned int *a10, int a11, unsigned int *a12, uint64_t a13)
{
  v50 = result;
  if (!*(result + 16))
  {
    return result;
  }

  v20 = sub_10000AED0();
  v22 = sub_10000B1F8(v20, v21);
  sub_10000AED4(v22, v53);
  v52 = 1;
  *buf = 21;
  v51[0] = 21;
  v51[1] = sub_10000AD98(buf);
  sub_10000AFE4(v54, &v52, v51, v51, v53);
  v56 |= 2u;
  v23 = v55;
  if (!v55)
  {
    operator new();
  }

  *(v55 + 492) |= 0x800u;
  v24 = *(v23 + 352);
  if (!v24)
  {
    operator new();
  }

  *(v24 + 200) |= 0x10u;
  v25 = *(v24 + 32);
  if (!v25)
  {
    operator new();
  }

  *(v25 + 28) |= 1u;
  *(v25 + 8) = -1;
  if (!sub_1000183C8(4u))
  {
    __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
  }

  v26 = *(v25 + 28);
  *(v25 + 12) = 4;
  *(v25 + 28) = v26 | 6;
  v27 = *(v25 + 16);
  if (!v27)
  {
    operator new();
  }

  *(v27 + 76) |= 0x40u;
  v28 = *(v27 + 64);
  if (!v28)
  {
    operator new();
  }

  *(v28 + 76) |= 1u;
  v29 = *(v28 + 8);
  if (!v29)
  {
    operator new();
  }

  *(v29 + 64) |= 1u;
  v30 = *(v29 + 8);
  if (!v30)
  {
    operator new();
  }

  sub_1001F34E4(a2, v30);
  *(v28 + 76) |= 1u;
  v31 = *(v28 + 8);
  if (!v31)
  {
    operator new();
  }

  v32 = *a3;
  *(v31 + 64) |= 2u;
  *(v31 + 16) = v32;
  *(v28 + 76) |= 1u;
  *(v31 + 64) |= 4u;
  *(v31 + 24) = a4;
  *(v28 + 76) |= 1u;
  *(v31 + 64) |= 8u;
  *(v31 + 25) = a5;
  *(v28 + 76) |= 1u;
  *(v31 + 64) |= 0x10u;
  *(v31 + 26) = a6;
  *(v28 + 76) |= 1u;
  *(v31 + 64) |= 0x20u;
  *(v31 + 27) = a7;
  *(v28 + 76) |= 1u;
  v33 = sub_1005D4B6C(a8);
  if (!sub_100DE648C(v33))
  {
    v45 = "::CLP::LogEntry::PrivateData::DynamicsMode_IsValid(value)";
    v46 = 7924;
    v47 = "set_dynamics_mode";
    goto LABEL_45;
  }

  *(v31 + 64) |= 0x40u;
  *(v31 + 28) = v33;
  *(v28 + 76) |= 1u;
  v34 = *(v28 + 8);
  if (!v34)
  {
    operator new();
  }

  v35 = sub_1000D1634((a13 + 8));
  if (!sub_1000D1A24(v35))
  {
    v45 = "::CLP::LogEntry::PrivateData::DominantMotionModeType_IsValid(value)";
    v46 = 7947;
    v47 = "set_motion_activity";
    goto LABEL_45;
  }

  *(v34 + 64) |= 0x80u;
  *(v34 + 32) = v35;
  *(v28 + 76) |= 1u;
  v36 = *(v28 + 8);
  if (!v36)
  {
    operator new();
  }

  v37 = sub_1005D4C5C(a9 + 2);
  if (!sub_1000183C8(v37))
  {
    v45 = "::CLP::LogEntry::PrivateData::IODerivedMotionActivity_IsValid(value)";
    v46 = 7970;
    v47 = "set_io_derived_motion_activity";
    goto LABEL_45;
  }

  *(v36 + 64) |= 0x100u;
  *(v36 + 36) = v37;
  *(v28 + 76) |= 1u;
  v38 = *(v28 + 8);
  if (!v38)
  {
    operator new();
  }

  v39 = *a9;
  *(v38 + 64) |= 0x200u;
  *(v38 + 40) = v39;
  *(v28 + 76) |= 1u;
  v40 = sub_10010E5D8(a10);
  if (!sub_100108BCC(v40))
  {
    v45 = "::CLP::LogEntry::PrivateData::LocationType_IsValid(value)";
    v46 = 8015;
    v47 = "set_original_location_type";
    goto LABEL_45;
  }

  *(v38 + 64) |= 0x400u;
  *(v38 + 48) = v40;
  *(v28 + 76) |= 1u;
  v41 = *(v28 + 8);
  if (!v41)
  {
    operator new();
  }

  v41[16] |= 0x800u;
  v41[13] = a11;
  *(v28 + 76) |= 1u;
  v42 = sub_1005D4D54(a12);
  if (!sub_10042B16C(v42))
  {
    v45 = "::CLP::LogEntry::PrivateData::LCFusionState_IsValid(value)";
    v46 = 8060;
    v47 = "set_fusion_state";
LABEL_45:
    __assert_rtn(v47, "CLPLocationController.pb.h", v46, v45);
  }

  v41[16] |= 0x1000u;
  v41[14] = v42;
  v43 = sub_10000BFC0(v50, v54);
  if (qword_1025D4600 != -1)
  {
    sub_1018D8CDC();
  }

  v44 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *buf = 67240192;
    v59 = v43;
    _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_INFO, "#locctl,#rec,recordLCFusionStatus,success,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D8D04(buf);
    v57[0] = 67240192;
    v57[1] = v43;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 1, "#locctl,#rec,recordLCFusionStatus,success,%{public}d", v57, 8);
    v49 = v48;
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordLCFusionStatus(const CLDaemonLocation &, const double &, const BOOL, const BOOL, const BOOL, const BOOL, const cllcf::LCFusionDynamicsMode::DynamicsMode &, const cllcf::IODerivedMotionActivityState &, const CLLocationType &, const int, const cllcf::LCFusionState &, const cllcf::TaggedMotionActivity &)", "%s\n", v48);
    if (v49 != buf)
    {
      free(v49);
    }
  }

  return sub_10000CE1C(v54);
}

void sub_1005D4A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D4B6C(unsigned int *a1)
{
  if (*a1 < 0xB)
  {
    return *a1 + 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLCFusionDynamicsModeTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DB058(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005D4C5C(unsigned int *a1)
{
  v1 = *a1;
  if (v1 < 6)
  {
    return dword_101C80828[v1];
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a1;
    v6[0] = 67109120;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertIODerivedMotionActivityTypeToProtobuf,unhandled type,%d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DB144(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005D4D54(unsigned int *a1)
{
  if (*a1 < 5)
  {
    return *a1 + 1;
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a1;
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLCFusionStateTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DB230(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005D4E44(uint64_t result, int a2, int a3, int a4, void *a5, uint64_t *a6)
{
  if (*(result + 16))
  {
    v11 = result;
    v12 = sub_10000AED0();
    v14 = sub_10000B1F8(v12, v13);
    sub_10000AED4(v14, v40);
    v39 = 1;
    *buf = 21;
    HIDWORD(v37) = 21;
    v38 = sub_10000AD98(buf);
    sub_10000AFE4(v41, &v39, &v37 + 1, &v37 + 1, v40);
    v43 |= 2u;
    v15 = v42;
    if (!v42)
    {
      operator new();
    }

    *(v42 + 492) |= 0x800u;
    v16 = *(v15 + 352);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 200) |= 0x10u;
    v17 = *(v16 + 32);
    if (!v17)
    {
      operator new();
    }

    *(v17 + 28) |= 1u;
    *(v17 + 8) = -1;
    if (!sub_1000183C8(4u))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
    }

    v18 = *(v17 + 28);
    *(v17 + 12) = 4;
    *(v17 + 28) = v18 | 6;
    v19 = *(v17 + 16);
    if (!v19)
    {
      operator new();
    }

    *(v19 + 76) |= 0x40u;
    v20 = *(v19 + 64);
    if (!v20)
    {
      operator new();
    }

    *(v20 + 76) |= 0x20u;
    v21 = *(v20 + 48);
    if (!v21)
    {
      operator new();
    }

    v21[13] |= 1u;
    v21[2] = a2;
    *(v20 + 76) |= 0x20u;
    v21[13] |= 2u;
    v21[3] = a3;
    *(v20 + 76) |= 0x20u;
    v21[13] |= 4u;
    v21[4] = a4;
    if (!a5 || a6[1] == *a6)
    {
      v29 = 0;
    }

    else
    {
      *(v20 + 76) |= 0x20u;
      v22 = sub_1005D54EC(a5);
      if (!sub_100437D64(v22))
      {
        __assert_rtn("set_snapshot_reason", "CLPLocationController.pb.h", 8991, "::CLP::LogEntry::PrivateData::LCBufferStatus_BufferSnapshotReason_IsValid(value)");
      }

      v21[13] |= 8u;
      v21[5] = v22;
      v23 = *a6;
      v24 = a6[1];
      if (*a6 != v24)
      {
        do
        {
          *(v20 + 76) |= 0x20u;
          v25 = *(v20 + 48);
          if (!v25)
          {
            operator new();
          }

          v26 = v25[9];
          v27 = v25[8];
          if (v27 >= v26)
          {
            if (v26 == v25[10])
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v25 + 6), v26 + 1);
              v26 = v25[9];
            }

            v25[9] = v26 + 1;
            sub_1005D6970();
          }

          v28 = *(v25 + 3);
          v25[8] = v27 + 1;
          sub_1005D55D0(v23, *(v28 + 8 * v27));
          v23 += 144;
        }

        while (v23 != v24);
      }

      v29 = 1;
    }

    v30 = sub_10000BFC0(v11, v41);
    if (*(v11 + 8) == 1)
    {
      v31 = v30;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v32 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v33 = 0x8E38E38E38E38E39 * ((a6[1] - *a6) >> 4);
        *buf = 67241472;
        v56 = v31;
        v57 = 1026;
        v58 = a2;
        v59 = 1026;
        v60 = a4;
        v61 = 1026;
        v62 = v29;
        v63 = 1026;
        v64 = a5;
        v65 = 2050;
        v66 = v33;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordOutputBufferInternalState,success,%{public}d,epoch_size,%{public}d,epoch_max_sample_gap,%{public}d,containsSnapshotBuffer,%{public}d,reason,%{public}d,locations_sz,%{public}zu", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(buf);
        v34 = 0x8E38E38E38E38E39 * ((a6[1] - *a6) >> 4);
        v44[0] = 67241472;
        v44[1] = v31;
        v45 = 1026;
        v46 = a2;
        v47 = 1026;
        v48 = a4;
        v49 = 1026;
        v50 = v29;
        v51 = 1026;
        v52 = a5;
        v53 = 2050;
        v54 = v34;
        LODWORD(v37) = 42;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordOutputBufferInternalState,success,%{public}d,epoch_size,%{public}d,epoch_max_sample_gap,%{public}d,containsSnapshotBuffer,%{public}d,reason,%{public}d,locations_sz,%{public}zu", v44, v37);
        v36 = v35;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordOutputBufferInternalState(const int, const int, const int, const CLLocationControllerRecorder_Types::LCBufferSnapshotReason, const std::vector<CLLocationBufferBase::LCBufferLocation> &)", "%s\n", v35);
        if (v36 != buf)
        {
          free(v36);
        }
      }
    }

    return sub_10000CE1C(v41);
  }

  return result;
}

void sub_1005D540C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void *sub_1005D54EC(void *a1)
{
  v1 = a1;
  if (a1 >= 2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v2 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLCBufferSnapshotReasonToProtobuf,unhandled type,%d", v4, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DB31C(v1);
    }

    return 0;
  }

  return v1;
}

void sub_1005D55D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v14 = 0xFFFF;
    v16 = 0;
    v15 = 0;
    v17 = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    v18 = _Q0;
    v19 = _Q0;
    v20 = _Q0;
    v21 = 0;
    v23 = 0;
    v24 = 0;
    v22 = 0xBFF0000000000000;
    v25 = 0;
    v26 = 0xBFF0000000000000;
    v27 = 0x7FFFFFFF;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v31 = 0;
    sub_10002790C(a1, &v14);
    *(a2 + 40) |= 1u;
    v9 = *(a2 + 8);
    if (!v9)
    {
      operator new();
    }

    sub_1001F34E4(&v14, v9);
    v10 = *(a2 + 40);
    *(a2 + 16) = *(a1 + 16);
    v11 = *(a1 + 128);
    *(a2 + 40) = v10 | 6;
    *(a2 + 24) = v11;
    v12 = sub_1005D62D8(*(a1 + 136));
    if (!sub_1000183C8(v12))
    {
      sub_1018DB414();
    }

    *(a2 + 40) |= 8u;
    *(a2 + 32) = v12;
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_100287074();
    }

    v13 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLCBufferLocationToProtobuf,pLocation is nullptr", &v14, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DB440();
    }
  }
}

uint64_t sub_1005D5780(uint64_t result, char *a2, uint64_t *a3)
{
  if (a2)
  {
    v3 = result;
    if (*(result + 16))
    {
      if (*a2)
      {
        v6 = sub_10000AED0();
        v8 = sub_10000B1F8(v6, v7);
        sub_10000AED4(v8, v28);
        HIDWORD(v27) = 1;
        *buf = 21;
        HIDWORD(v26) = 21;
        LODWORD(v27) = sub_10000AD98(buf);
        sub_10000AFE4(v29, &v27 + 1, &v26 + 1, &v26 + 1, v28);
        v31 |= 2u;
        v9 = v30;
        if (!v30)
        {
          operator new();
        }

        *(v30 + 492) |= 0x800u;
        v10 = *(v9 + 352);
        if (!v10)
        {
          operator new();
        }

        *(v10 + 200) |= 0x10u;
        v11 = *(v10 + 32);
        if (!v11)
        {
          operator new();
        }

        *(v11 + 28) |= 1u;
        *(v11 + 8) = 1;
        if (!sub_1000183C8(4u))
        {
          __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
        }

        v12 = *(v11 + 28);
        *(v11 + 12) = 4;
        *(v11 + 28) = v12 | 6;
        v13 = *(v11 + 16);
        if (!v13)
        {
          operator new();
        }

        *(v13 + 76) |= 0x40u;
        v14 = *(v13 + 64);
        if (!v14)
        {
          operator new();
        }

        *(v14 + 76) |= 0x10u;
        v15 = *(v14 + 40);
        if (!v15)
        {
          operator new();
        }

        *(v15 + 28) |= 1u;
        v16 = *(v15 + 8);
        if (!v16)
        {
          operator new();
        }

        sub_10027E930(a3, v16);
        *(v14 + 76) |= 0x10u;
        v17 = *(v14 + 40);
        if (!v17)
        {
          operator new();
        }

        *(v17 + 28) |= 2u;
        v18 = *(v17 + 16);
        if (v18 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        sub_100006044(v18, a2);
        v19 = sub_10000BFC0(v3, v29);
        if (*(v3 + 8) == 1)
        {
          v20 = v19;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v21 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v22 = a3[2];
            *buf = 67109634;
            v38 = v20;
            v39 = 2048;
            v40 = v22;
            v41 = 2080;
            v42 = a2;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,success:%d,log_cfat:%.3f,log:%s", buf, 0x1Cu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(buf);
            v23 = a3[2];
            v32[0] = 67109634;
            v32[1] = v20;
            v33 = 2048;
            v34 = v23;
            v35 = 2080;
            v36 = a2;
            LODWORD(v26) = 28;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,success:%d,log_cfat:%.3f,log:%s", v32, v26, v27);
            v25 = v24;
            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordLogLine(const char *, const CLUtils::Timestamp &)", "%s\n", v24);
            if (v25 != buf)
            {
              free(v25);
            }
          }
        }

        return sub_10000CE1C(v29);
      }
    }
  }

  return result;
}

void sub_1005D5C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D5CFC(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    v3 = result;
    v4 = sub_10000AED0();
    v6 = sub_10000B1F8(v4, v5);
    sub_10000AED4(v6, v28);
    v27 = 1;
    *buf = 28;
    v26[0] = 28;
    v26[1] = sub_10000AD98(buf);
    *buf = 1;
    v25[0] = 1;
    v25[1] = sub_10000AD98(buf);
    sub_10000AFE4(v29, &v27, v26, v25, v28);
    v31 |= 2u;
    v7 = v30;
    if (!v30)
    {
      operator new();
    }

    *(v30 + 492) |= 0x800u;
    v8 = *(v7 + 352);
    if (!v8)
    {
      operator new();
    }

    *(v8 + 200) |= 0x10u;
    v9 = *(v8 + 32);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 28) |= 1u;
    *(v9 + 8) = -1;
    if (!sub_1000183C8(4u))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 9866, "::CLP::LogEntry::PrivateData::SystemNotification_NotificationType_IsValid(value)");
    }

    v10 = *(v9 + 28);
    *(v9 + 12) = 4;
    *(v9 + 28) = v10 | 6;
    v11 = *(v9 + 16);
    if (!v11)
    {
      operator new();
    }

    *(v11 + 76) |= 0x40u;
    v12 = *(v11 + 64);
    if (!v12)
    {
      operator new();
    }

    if (a2 && [a2 count])
    {
      for (i = 0; [a2 count] > i; ++i)
      {
        *(v12 + 76) |= 0x80u;
        v14 = *(v12 + 64);
        if (!v14)
        {
          operator new();
        }

        v15 = v14[5];
        v16 = v14[4];
        if (v16 >= v15)
        {
          if (v15 == v14[6])
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v14 + 2), v15 + 1);
            v15 = v14[5];
          }

          v14[5] = v15 + 1;
          sub_10030D93C();
        }

        v17 = *(v14 + 1);
        v14[4] = v16 + 1;
        v18 = *(v17 + 8 * v16);
        v19 = [a2 objectAtIndexedSubscript:i];
        if (v19)
        {
          objc_msgSend_clientLocation(v19);
        }

        else
        {
          v46 = 0u;
          memset(v47, 0, 28);
          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v41 = 0u;
          memset(v40, 0, sizeof(v40));
        }

        v37 = v45;
        v38 = v46;
        v39[0] = v47[0];
        *(v39 + 12) = *(v47 + 12);
        v33 = v41;
        v34 = v42;
        v35 = v43;
        v36 = v44;
        *buf = v40[0];
        *&buf[16] = v40[1];
        sub_1001F34E4(buf, v18);
      }
    }

    else
    {
      LODWORD(i) = 0;
    }

    v20 = sub_10000BFC0(v3, v29);
    if (*(v3 + 8) == 1)
    {
      v21 = v20;
      if (qword_1025D4600 != -1)
      {
        sub_1018D8CDC();
      }

      v22 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240705;
        *&buf[4] = v21;
        *&buf[8] = 2050;
        *&buf[10] = v28[0].n128_u64[0];
        *&buf[18] = 1025;
        *&buf[20] = i;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRoutineMonitorOutput,success,%{public}d,mct,%{public}.3f,num_locations,%{private}d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018D8D04(buf);
        LODWORD(v40[0]) = 67240705;
        DWORD1(v40[0]) = v21;
        WORD4(v40[0]) = 2050;
        *(v40 + 10) = v28[0].n128_u64[0];
        WORD1(v40[1]) = 1025;
        DWORD1(v40[1]) = i;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordRoutineMonitorOutput,success,%{public}d,mct,%{public}.3f,num_locations,%{private}d", v40, 24);
        v24 = v23;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRoutineMonitorOutput(NSArray<CLLocation *> *)", "%s\n", v23);
        if (v24 != buf)
        {
          free(v24);
        }
      }
    }

    return sub_10000CE1C(v29);
  }

  return result;
}

void sub_1005D61F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D62D8(void *a1)
{
  if (a1 < 6)
  {
    return dword_101C80840[a1];
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertLCBufferSnapshotReasonToProtobuf,unhandled type,%d", v4, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DB92C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1005D63C8(uint64_t a1, int a2, char a3)
{
  *a1 = 0;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xBFF0000000000000;
  if (a2)
  {
    operator new();
  }

  return a1;
}

uint64_t **sub_1005D64CC(uint64_t **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1[2];
    v1[2] = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      sub_1004949C8(v1, v3);
    }

    operator delete();
  }

  return a1;
}

void *sub_1005D65EC(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1005D6644(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1005D6644(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005D66CC(v5, (v5 + 8), v4 + 7, v4 + 7);
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

uint64_t sub_1005D66CC(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v4 = *sub_1005D6764(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1005D6764(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
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
    if (*(v10 + 7) < *a5)
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
          v18 = *(v16 + 28);
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

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
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

void *sub_1005D69D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_101322EE0(v6, va);
}

void sub_1005D69F0(uint64_t result@<X0>, float *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = a2[2];
  if (v7 <= 0.5)
  {
    v9 = *(result + 16);
    if (v9 >= 1)
    {
      v12 = a4 + 1.27999997;
      v10 = *result;
      if (v12 - *result / v9 > 0.200000003)
      {
        v11 = 0;
        v8 = 0.0;
        v7 = 0.0;
        goto LABEL_8;
      }
    }

    v16 = 0;
    *(result + 12) = *(result + 12) + ((fmaxf(*a2, 0.0) / 2.23693629) * 0.08);
LABEL_19:
    *a3 = 0;
    goto LABEL_28;
  }

  v8 = ((a2[3] + 64.0) / 50.0) + a4;
  v9 = *(result + 16);
  if (v9 <= 0)
  {
    if (qword_1025D4270 != -1)
    {
      sub_1018DBA18();
    }

    v17 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "Previous cluster did not have a step or was just finalized as a step cluster so starting a new cluster with this output.", &v25, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DBA2C();
    }

    v16 = 0;
    v18 = *(a2 + 2);
    v19 = fmaxf(*a2, 0.0);
    *(result + 16) = 1;
    v20 = *(result + 12);
    *result = v8;
    *(result + 8) = v18;
    *(result + 12) = v20 + ((v19 / 2.23693629) * 0.08);
    goto LABEL_19;
  }

  v10 = *result;
  if (v8 - *result / v9 <= 0.200000003)
  {
    v16 = 0;
    v21 = *(result + 12);
    v22 = v7 + *(result + 8);
    v23 = fmaxf(*a2, 0.0) / 2.23693629;
    *result = v8 + v10;
    *(result + 8) = v22;
    *(result + 12) = v21 + (v23 * 0.08);
    *(result + 16) = v9 + 1;
    goto LABEL_19;
  }

  v11 = 1;
LABEL_8:
  v13 = (fmaxf(*a2, 0.0) / 2.23693629) * 0.08;
  v14 = v10 / v9;
  v15 = *(result + 12);
  if (*(result + 8) >= 0.5)
  {
    if (qword_1025D4270 != -1)
    {
      sub_1018DBA18();
    }

    v24 = qword_1025D4278;
    if (os_log_type_enabled(qword_1025D4278, OS_LOG_TYPE_INFO))
    {
      v25 = 134217984;
      v26 = v14;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "Detected a PedNet Step and Finalized a cluster: timestamp: %f", &v25, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DBB30(v14);
    }

    *result = v8;
    *(result + 8) = v7;
    *(result + 12) = v13;
    *(result + 16) = v11;
    *a3 = v14;
    *(a3 + 8) = v15;
  }

  else
  {
    *result = v8;
    *(result + 16) = v11;
    *(result + 8) = v7;
    *(result + 12) = v13 + v15;
    *a3 = v14;
    *(a3 + 8) = 0;
  }

  v16 = 1;
  *(a3 + 12) = 1;
LABEL_28:
  *(a3 + 16) = v16;
  *(a3 + 24) = v16;
}

void sub_1005D7038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1005D7548(va);
  *(v11 - 40) = &a9;
  sub_1005D7594((v11 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_1005D7064(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1005D76A8(a1, a2);
  }

  else
  {
    sub_1005D7638(a1, a2);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

char *sub_1005D74D4(char *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  *(__dst + 5) = 0;
  *(__dst + 24) = *a3;
  *(__dst + 5) = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return __dst;
}

uint64_t sub_1005D7548(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_1005D7594(&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005D7594(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005D75E8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1005D75E8(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

__n128 sub_1005D7638(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100007244(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 24);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 40;
  return result;
}

uint64_t sub_1005D76A8(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_10028C64C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1005D7804(a1, v6);
  }

  v7 = 40 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100007244(v7, *a2, *(a2 + 1));
    v9 = v18;
    v10 = v19;
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
    v9 = v7;
    v10 = v7;
  }

  *(v7 + 24) = *(a2 + 24);
  *&v19 = v10 + 40;
  v11 = a1[1];
  v12 = v9 + *a1 - v11;
  sub_1005D785C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1005D7998(&v17);
  return v16;
}

void sub_1005D77F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1005D7998(va);
  _Unwind_Resume(a1);
}

void sub_1005D7804(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1005D785C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
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
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 = (v6 + 40);
      a4 += 40;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 40);
    }
  }

  return sub_1005D7918(v9);
}

uint64_t sub_1005D7918(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1005D7950(a1);
  }

  return a1;
}

void sub_1005D7950(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 17);
    v1 -= 5;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t sub_1005D7998(uint64_t a1)
{
  sub_1005D79D0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1005D79D0(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_1005D7A5C(uint64_t a1)
{
  sub_1005D7A98(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1005D7A98(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1005D7ADC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1005D7ADC(uint64_t a1)
{
  v2 = (a1 + 24);
  sub_1005D7594(&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1005D7B24(uint64_t a1, uint64_t *a2)
{
  sub_1005D7BC8(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void sub_1005D7BC8(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_1005D7A98(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const void **sub_1005D7C24(void *a1, uint64_t *a2)
{
  v4 = sub_100007070(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_100019DF4(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

const void **sub_1005D7D20(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100007070(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1005D7FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1005D7FBC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005D7FBC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1005D7ADC(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1005D8008()
{
  if (qword_1025D4340 != -1)
  {
    sub_1018DBF90();
  }

  v0 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "configureAOP", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DBFA4();
  }

  v41 = xmmword_101C80878;
  v42 = unk_101C80888;
  v43 = 65546;
  v1 = sub_10004FD18();
  v3 = sub_1000206B4(v1, v2);
  if (sub_100185ADC(v3, "Kappa", v40, 0xFFFFFFFFLL))
  {
    v4 = sub_10007005C(v40);
    v5 = [v4 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "triggerHorizontalDecelThreshold")}];
    v6 = [v4 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "triggerImpactThreshold")}];
    v7 = [v4 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "skiLiftWindowSec")}];
    if (v5)
    {
      [v5 floatValue];
      DWORD1(v41) = v8;
    }

    if (v6)
    {
      [v6 floatValue];
      DWORD2(v41) = v9;
    }

    if (v7)
    {
      WORD6(v41) = [v7 unsignedShortValue];
    }

    v10 = [v4 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "kill")}];
    if (v10 && [v10 BOOLValue])
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v11 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "kill config", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DC0B8(buf);
        LOWORD(v44) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4348, 16, "kill config", &v44, 2);
        v38 = v37;
        sub_100152C7C("Generic", 1, 0, 0, "void SafetyUtils::configureAOP()", "%s\n", v37);
        if (v38 != buf)
        {
          free(v38);
        }
      }

      v12 = 0;
      LOBYTE(v41) = 0;
    }

    else
    {
      v12 = 1;
    }

    v15 = [v4 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "martyImpactThreshold")}];
    v16 = [v4 valueForKey:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "martyRotationThreshold")}];
    if (v15)
    {
      [v15 floatValue];
      LODWORD(v42) = v17;
    }

    if (v16)
    {
      [v16 floatValue];
      DWORD1(v42) = v18;
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v13 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "using default config", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DC0B8(buf);
      LOWORD(v44) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4348, 1, "using default config", &v44, 2);
      v36 = v35;
      sub_100152C7C("Generic", 1, 0, 2, "void SafetyUtils::configureAOP()", "%s\n", v35);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    v12 = 1;
  }

  v19 = sub_1005D8750("CLIgneousMotionTriggerProbability", v14, 1.0);
  *(&v42 + 2) = v19;
  v21 = sub_1005D8750("CLIgneousMotionTriggerRotationThreshold", v20, 0.09);
  *(&v42 + 3) = v21;
  v22 = sub_1005D87A8("CLIgneousMotionTriggerTokensOnCharger", 10);
  v23 = sub_1005D87A8("CLIgneousMotionTriggerTokensOffCharger", 1);
  v24 = sub_1005D87A8("CLIgneousMotionTriggerCountOnCharger", 0);
  v25 = sub_1005D87A8("CLIgneousMotionTriggerCountOffCharger", 0);
  if (v19 < 0.0 || v19 > 1.0)
  {
    DWORD2(v42) = 0;
    v19 = 0.0;
  }

  if (v21 < 0.0)
  {
    HIDWORD(v42) = 0;
    v21 = 0.0;
  }

  v26 = v22 & ~(v22 >> 31);
  LOWORD(v43) = v22 & ~(v22 >> 31);
  v27 = v23 & ~(v23 >> 31);
  WORD1(v43) = v23 & ~(v23 >> 31);
  v28 = v24 & ~(v24 >> 31);
  WORD2(v43) = v24 & ~(v24 >> 31);
  v29 = v25 & ~(v25 >> 31);
  HIWORD(v43) = v25 & ~(v25 >> 31);
  if (qword_1025D4550 != -1)
  {
    sub_1018DC0FC();
  }

  v30 = qword_1025D4558;
  if (os_log_type_enabled(qword_1025D4558, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219264;
    v57 = v19;
    v58 = 2048;
    v59 = v21;
    v60 = 1024;
    v61 = v26;
    v62 = 1024;
    v63 = v27;
    v64 = 1024;
    v65 = v28;
    v66 = 1024;
    v67 = v29;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "Sending motion trigger parameters to AOP, %.3f, %.3f, %u, %u, %u, %u", buf, 0x2Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DC124(buf);
    v44 = 134219264;
    v45 = v19;
    v46 = 2048;
    v47 = v21;
    v48 = 1024;
    v49 = v26;
    v50 = 1024;
    v51 = v27;
    v52 = 1024;
    v53 = v28;
    v54 = 1024;
    v55 = v29;
    LODWORD(v39) = 46;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4558, 0, "Sending motion trigger parameters to AOP, %.3f, %.3f, %u, %u, %u, %u", COERCE_DOUBLE(&v44), v39, LODWORD(v40[0]), LODWORD(v40[1]), v41, DWORD2(v41));
    v34 = v33;
    sub_100152C7C("Generic", 1, 0, 2, "void SafetyUtils::configureAOP()", "%s\n", v33);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  if (objc_opt_class())
  {
    if (+[SOSUtilities isKappaVisible])
    {
      v31 = v12;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  LOBYTE(v41) = v31;
  sub_10012888C(0, &v41, 0x28uLL);
  return sub_100005DA4();
}

double sub_1005D8750(const char *a1, uint64_t a2, double a3)
{
  v8 = a3;
  v4 = sub_1000206B4(a1, a2);
  sub_1000B9370(v4, a1, &v8);
  sub_10183A3AC(v6, a1, &v8, 0);
  return v7;
}

uint64_t sub_1005D87A8(const char *a1, uint64_t a2)
{
  v7 = a2;
  v3 = sub_1000206B4(a1, a2);
  sub_10005BBE4(v3, a1, &v7);
  sub_1004861C8(v5, a1, &v7, 0);
  return v6;
}

id sub_1005D8800(void *a1, uint64_t a2)
{
  v3 = [a1 objectForKey:a2];
  if (!v3)
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "Config missing top level key %@", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC258();
    }

    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v5 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "data format error for top level key %@", &v8, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC168();
    }

    return 0;
  }

  return v4;
}

void sub_1005D8BA8(void *a1, const char *a2, uint64_t a3, float a4)
{
  *v7 = sub_1005D9F80(a1, a2, a4);
  if (!sub_100116D68(a3, a2, v7))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *v7 = 136315138;
      *&v7[4] = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "DaemonCache failed to set %s", v7, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC348();
    }
  }
}

void sub_1005D8CA0(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1005DA1CC(a1, a2, a3);
  if (!sub_100043360(a4, a2, &v7))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "DaemonCache failed to set %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC438();
    }
  }
}

void sub_1005D8D94(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1005DA414(a1, a2, a3);
  if (!sub_1004FCC04(a4, a2, &v7))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "DaemonCache failed to set %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC528();
    }
  }
}

void sub_1005D8E88(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1005DA65C(a1, a2, a3);
  if (!sub_10004345C(a4, a2, &v7))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v6 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v9 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "DaemonCache failed to set %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC618();
    }
  }
}

void sub_1005D8F7C(float a1, float a2, float a3, void *a4, const char *a5, uint64_t a6)
{
  v11 = sub_1005D9F80(a4, a5, a1);
  if (a3 < v11 || a2 > v11)
  {
    v11 = a1;
  }

  *v14 = v11;
  if (!sub_100116D68(a6, a5, v14))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v13 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315138;
      *&v14[4] = a5;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "DaemonCache failed to set %s", v14, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DC708();
    }
  }
}

uint64_t sub_1005D909C(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1000206B4(a1, a2);
  v4 = sub_1004FD480(v3, "Kappa", *a1);
  v6 = *(*sub_1000206B4(v4, v5) + 944);

  return v6();
}

BOOL sub_1005D9118(void *a1)
{
  v2 = sub_1005D8800(a1, @"locationd");
  sub_1005D9228(v2, "CLIgneousMaxArmMinutes", 0x5A0uLL, 1440);
  sub_1005D9288(3000.0, 0.0, 86400.0, v2, "CLIgneousMaxScheduledArmSec");
  sub_1005D9288(1.0, 0.0, 1.0, v2, "CLIgneousAlertTriggerProbability");
  v3 = sub_1005D8800(a1, @"untrusted aop");
  sub_1005D9288(1.0, 0.0, 1.0, v3, "CLIgneousMotionTriggerProbability");
  sub_1005D9288(0.09, 0.0, 3.14159265, v3, "CLIgneousMotionTriggerRotationThreshold");
  sub_1005D9228(v3, "CLIgneousMotionTriggerTokensOnCharger", 0xAuLL, 10);

  return sub_1005D9228(v3, "CLIgneousMotionTriggerTokensOffCharger", 1uLL, 10);
}

BOOL sub_1005D9228(void *a1, const char *a2, unint64_t a3, int a4)
{
  v5 = a3;
  v7 = HIDWORD(a3);
  v8 = sub_1005DA65C(a1, a2, a3);
  if (v8 > a4 || v8 < v7)
  {
    v11 = v5;
  }

  else
  {
    v11 = v8;
  }

  v14 = v11;
  v12 = sub_1000206B4(v8, v9);
  return sub_10004345C(v12, a2, &v14);
}

BOOL sub_1005D9288(double a1, double a2, double a3, void *a4, const char *a5)
{
  v11 = sub_1005DA8A4(a4, a5, a1);
  if (a3 < v11 || a2 > v11)
  {
    v11 = a1;
  }

  v15 = v11;
  v13 = sub_1000206B4(v9, v10);
  return sub_100116D68(v13, a5, &v15);
}

id sub_1005D92F0(void *a1, uint64_t a2)
{
  v3 = [a1 assetNamed:a2];
  if (!v3)
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v7 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "nil asset for %@", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DC8E8();
    }

    return 0;
  }

  v4 = v3;
  if (!objc_msgSend_location(v3))
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "nil asset location for %@", &v9, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DC7F8();
    }

    return 0;
  }

  v5 = objc_msgSend_location(v4);

  return [v5 URLByAppendingPathComponent:@"untrusted.json"];
}

_TtC10CLAONSense28CLAONSenseKappaConfigService *sub_1005D94A8(void *a1)
{
  v5 = 0;
  v1 = [[_TtC10CLAONSense28CLAONSenseKappaConfigService alloc] initWithQueue:*a1 error:&v5 objCCallback:&stru_102462B50];
  if (v5)
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v2 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Error initializing CLAONSenseKappaConfigService. , Error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }
    }

    v3 = qword_1025D4348;
    if (os_signpost_enabled(qword_1025D4348))
    {
      *buf = 68289282;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2114;
      v11 = v5;
      _os_signpost_emit_with_name_impl(dword_100000000, v3, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Error initializing CLAONSenseKappaConfigService. ", "{msg%{public}.0s:Error initializing CLAONSenseKappaConfigService. , Error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  sub_1005D8008();
  return v1;
}

void sub_1005D9650(id a1, NSDictionary *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (qword_1025D4340 != -1)
  {
    sub_1018DBF90();
  }

  v4 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "Entered SMA objc cb", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DC9D8();
  }

  v5 = [+[UAFAssetSetManager sharedManager](UAFAssetSetManager "sharedManager")];
  v6 = v5;
  if (v5)
  {
    v7 = sub_1005D92F0(v5, @"com.apple.aonsense.safety.generic");
    if (v7)
    {
      v8 = sub_1005D92F0(v6, @"com.apple.aonsense.safety.country");
      v13 = @"UAFUsages";
      v14 = a2;
      if (sub_1005D99AC(v7, v8, [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1]))
      {
        sub_1005D8988();
      }

      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v11 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "Error reading and combining configs", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DCAFC();
      }
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v10 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "nil baseUrl", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DCBE8();
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v9 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "Error retrieving asset set", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DCCD4();
    }
  }

  objc_autoreleasePoolPop(v3);
}

void sub_1005D998C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_1018DCAC4(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005D99AC(void *a1, void *a2, void *a3)
{
  v5 = sub_1005D9B9C(a1);
  if (v5)
  {
    if (a2)
    {
      v6 = sub_1005D9B9C(a2);
      if (v6)
      {
        v7 = v6;
        if (qword_1025D4340 != -1)
        {
          sub_1018DBF90();
        }

        v8 = qword_1025D4348;
        if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v12) = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Found config for country. Overlaying asset.", &v12, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018DCDC0();
        }

        v12 = _NSConcreteStackBlock;
        v13 = 3221225472;
        v14 = sub_1005D9E10;
        v15 = &unk_10245EB08;
        v16 = v5;
        [v7 enumerateKeysAndObjectsUsingBlock:&v12];
      }
    }

    v9 = [v5 objectForKeyedSubscript:@"anomalydetectiond"];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_1005D9E10;
    v15 = &unk_10245EB08;
    v16 = v9;
    [a3 enumerateKeysAndObjectsUsingBlock:&v12];
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v10 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v12) = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "No base asset", &v12, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DCEA4();
    }
  }

  return v5;
}

id sub_1005D9B9C(void *a1)
{
  v13 = 0;
  v2 = [NSData dataWithContentsOfURL:a1 options:0 error:&v13];
  if (qword_1025D4340 != -1)
  {
    sub_1018DC090();
  }

  v3 = qword_1025D4348;
  if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
  {
    v4 = [a1 path];
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "fileUrl %@", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DCF88(a1);
  }

  if (v13)
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v5 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      v6 = [a1 path];
      v7 = [v13 localizedDescription];
      *buf = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "%@: json read failed with error %@", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DD0A8(a1, &v13);
    }
  }

  else
  {
    v12 = 0;
    result = [NSJSONSerialization JSONObjectWithData:v2 options:1 error:&v12];
    if (!v12)
    {
      return result;
    }

    if (qword_1025D4340 != -1)
    {
      sub_1018DC090();
    }

    v9 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_ERROR))
    {
      v10 = [a1 path];
      v11 = [v12 localizedDescription];
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "%@: json parse failed with error %@", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DD1CC(a1, &v12);
    }
  }

  return 0;
}

id sub_1005D9E10(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v6 && (v7 = v6, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005D9E10;
    v10[3] = &unk_10245EB08;
    v10[4] = v7;
    return [a3 enumerateKeysAndObjectsUsingBlock:v10];
  }

  else
  {
    v9 = *(a1 + 32);

    return [v9 setObject:a3 forKeyedSubscript:a2];
  }
}

float sub_1005D9F80(void *a1, uint64_t a2, float a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "configKey %@: %@", &v13, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DD2F0();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      return v9;
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v11 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_FAULT))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Error extracting value for key %@", &v13, 0xCu);
      }

      a3 = 0.0;
      if (sub_10000A100(121, 0))
      {
        sub_1018DD3E0();
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v10 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "No value found for %@, using default", &v13, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DD4D0();
    }
  }

  return a3;
}

id sub_1005DA1CC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "configKey %@: %@", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DD5C0();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [v7 BOOLValue];
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v10 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_FAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Error extracting value for key %@", &v12, 0xCu);
      }

      a3 = 0;
      if (sub_10000A100(121, 0))
      {
        sub_1018DD6B0();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v9 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "No value found for %@, using default", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DD7A0();
    }
  }

  return a3;
}

id sub_1005DA414(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "configKey %@: %@", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DD890();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [v7 unsignedShortValue];
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v10 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_FAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Error extracting value for key %@", &v12, 0xCu);
      }

      a3 = 0;
      if (sub_10000A100(121, 0))
      {
        sub_1018DD980();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v9 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "No value found for %@, using default", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DDA70();
    }
  }

  return a3;
}

id sub_1005DA65C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "configKey %@: %@", &v12, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DDB60();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return [v7 intValue];
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v10 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_FAULT))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "Error extracting value for key %@", &v12, 0xCu);
      }

      a3 = 0;
      if (sub_10000A100(121, 0))
      {
        sub_1018DDC50();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v9 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "No value found for %@, using default", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DDD40();
    }
  }

  return a3;
}

double sub_1005DA8A4(void *a1, uint64_t a2, double a3)
{
  v5 = [NSString stringWithUTF8String:a2];
  v6 = [a1 objectForKey:v5];
  if (v6)
  {
    v7 = v6;
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v8 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "configKey %@: %@", &v13, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DDE30();
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      return v9;
    }

    else
    {
      if (qword_1025D4340 != -1)
      {
        sub_1018DC090();
      }

      v11 = qword_1025D4348;
      if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_FAULT))
      {
        v13 = 138412290;
        v14 = v5;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "Error extracting value for key %@", &v13, 0xCu);
      }

      a3 = 0.0;
      if (sub_10000A100(121, 0))
      {
        sub_1018DDF20();
      }
    }
  }

  else
  {
    if (qword_1025D4340 != -1)
    {
      sub_1018DBF90();
    }

    v10 = qword_1025D4348;
    if (os_log_type_enabled(qword_1025D4348, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "No value found for %@, using default", &v13, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DE010();
    }
  }

  return a3;
}

uint64_t sub_1005DAAF0(uint64_t result, float a2)
{
  *(v4 - 80) = a2;
  *(v3 + 4) = v2;
  *(v4 - 68) = 2112;
  *(v3 + 14) = result;
  return result;
}

void sub_1005DAB14(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = off_102462BC0;
  sub_100536F74(a1 + 8, "CLFileUpdate", 1, 1);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 48) = 0;
  v8 = [objc_msgSend(a2 "silo")];
  *(a1 + 128) = 0u;
  *(a1 + 56) = v8;
  *(a1 + 64) = 0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a1 + 72) = _Q1;
  *(a1 + 88) = _Q1;
  *(a1 + 104) = _Q1;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0;
  [*(a1 + 24) silo];
  [*(a1 + 24) silo];
  operator new();
}

void sub_1005DAF4C(_Unwind_Exception *a1)
{
  v5 = *(v1 + 232);
  *(v1 + 232) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 224);
  *(v1 + 224) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*(v1 + 223) < 0)
  {
    operator delete(*(v1 + 200));
  }

  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 175) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*v2);
  }

  v7 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_10053700C(v1 + 8);
  _Unwind_Resume(a1);
}

void sub_1005DB07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018DE128();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLFileUpdate::onDownloaded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018DE13C();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2082;
      v15 = "activity";
      v16 = 2050;
      v17 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFileUpdate::onDownloaded, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  sub_1005DC1D4(a3, v5, v4);
  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005DB240(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(v1 + 8) + 16))(v1 + 8);
  sub_10001A3E8(v2, v3);
  if (sub_10001CF3C() && *(v1 + 240) == 1 && (*(v1 + 241) & 1) != 0 || [objc_msgSend(objc_msgSend(*(v1 + 24) "vendor")])
  {
    v4 = (v1 + 152);
    v5 = (v1 + 152);
    if (*(v1 + 175) < 0)
    {
      v5 = *v4;
    }

    v6 = (v1 + 200);
    v7 = (v1 + 200);
    if (*(v1 + 223) < 0)
    {
      v7 = *v6;
    }

    if ((*(**(v1 + 48) + 16))(*(v1 + 48), v5, v7, v1 + 72))
    {
      if (qword_1025D4860 != -1)
      {
        sub_1003115C0();
      }

      v8 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v9 = (v1 + 152);
        if (*(v1 + 175) < 0)
        {
          v9 = *v4;
        }

        v10 = (v1 + 200);
        if (*(v1 + 223) < 0)
        {
          v10 = *v6;
        }

        *buf = 136446466;
        v31 = v9;
        v32 = 2082;
        v33 = v10;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "CLFU,downloading from %{public}s to %{public}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        if (*(v1 + 175) < 0)
        {
          v4 = *v4;
        }

        if (*(v1 + 223) < 0)
        {
          v6 = *v6;
        }

        v26 = 136446466;
        v27 = v4;
        v28 = 2082;
        v29 = v6;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,downloading from %{public}s to %{public}s", &v26, 22);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "CLFileUpdate::CLFileUpdate(id<CLIntersiloUniverse>, OnUpdated, void *)_block_invoke", "%s\n", v19);
        if (v20 != buf)
        {
          free(v20);
        }
      }

      *(v1 + 120) = 1;
      v11 = 0;
      *(v1 + 104) = CFAbsoluteTimeGetCurrent();
      v12 = 1;
    }

    else
    {
      if (qword_1025D4860 != -1)
      {
        sub_1003115C0();
      }

      v13 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v14 = (v1 + 152);
        if (*(v1 + 175) < 0)
        {
          v14 = *v4;
        }

        v15 = (v1 + 200);
        if (*(v1 + 223) < 0)
        {
          v15 = *v6;
        }

        *buf = 136446466;
        v31 = v14;
        v32 = 2082;
        v33 = v15;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning,CLFU,could not download from %{public}s to %{public}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        if (*(v1 + 175) < 0)
        {
          v4 = *v4;
        }

        if (*(v1 + 223) < 0)
        {
          v6 = *v6;
        }

        v26 = 136446466;
        v27 = v4;
        v28 = 2082;
        v29 = v6;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "#Warning,CLFU,could not download from %{public}s to %{public}s", &v26, 22);
        v22 = v21;
        sub_100152C7C("Generic", 1, 0, 2, "CLFileUpdate::CLFileUpdate(id<CLIntersiloUniverse>, OnUpdated, void *)_block_invoke", "%s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      v11 = 0;
      v12 = 3;
    }
  }

  else
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v16 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v17 = (v1 + 152);
      if (*(v1 + 175) < 0)
      {
        v17 = *v17;
      }

      *buf = 136380675;
      v31 = v17;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "CLFU,data reachability is not available - not downloading %{private}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v23 = (v1 + 152);
      if (*(v1 + 175) < 0)
      {
        v23 = *v23;
      }

      v26 = 136380675;
      v27 = v23;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,data reachability is not available - not downloading %{private}s", &v26, 12);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "CLFileUpdate::CLFileUpdate(id<CLIntersiloUniverse>, OnUpdated, void *)_block_invoke", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    v12 = 0;
    v11 = 1;
  }

  result = (*(*(v1 + 8) + 24))(v1 + 8);
  if ((v11 & 1) == 0)
  {
    return (*(v1 + 32))(v1, v12, *(v1 + 40));
  }

  return result;
}

void sub_1005DB810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_1005DB84C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018DE128();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFileUpdate::onStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018DE13C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFileUpdate::onStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1005DC108(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005DBA18(uint64_t a1, int *a2, _BYTE *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 24) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018DE128();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFileUpdate::onCompanionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018DE13C();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFileUpdate::onCompanionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1005DBD4C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005DBBE8(uint64_t a1)
{
  *a1 = off_102462BC0;
  sub_1005DD8B0(a1);

  v2 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
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

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_10053700C(a1 + 8);
  return a1;
}

void sub_1005DBD14(uint64_t a1)
{
  sub_1005DBBE8(a1);

  operator delete();
}

uint64_t sub_1005DBD4C(uint64_t a1, uint64_t a2, int *a3, _BYTE *a4)
{
  v7 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8, a2);
  if (qword_1025D4860 != -1)
  {
    sub_1003115C0();
  }

  v8 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a3;
    *buf = 67109120;
    v28 = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLFU,onCompanionNotification, notification, %d", buf, 8u);
  }

  v10 = sub_10000A100(121, 2);
  if (v10)
  {
    sub_1018DE164(buf);
    v16 = *a3;
    v23 = 67109120;
    v24 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 2, "CLFU,onCompanionNotification, notification, %d", &v23);
    v18 = v17;
    v10 = sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onCompanionNotification(int, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }

  if (*a3 == 5)
  {
    sub_10001A3E8(v10, v11);
    if (sub_10001CF3C())
    {
      *(a1 + 241) = *a4;
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v12 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 241);
        v14 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v14 = *v14;
        }

        *buf = 67240450;
        v28 = v13;
        v29 = 2082;
        v30 = v14;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "CLFU,fCompanionIsNearby,%{public}d,fDownloadDst,%{public}s", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v19 = *(a1 + 241);
        v20 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v20 = *v20;
        }

        v23 = 67240450;
        v24 = v19;
        v25 = 2082;
        v26 = v20;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 2, "CLFU,fCompanionIsNearby,%{public}d,fDownloadDst,%{public}s", &v23, 18);
        v22 = v21;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onCompanionNotification(int, const CLCompanionNotifier_Type::Notification &, const CLCompanionNotifier_Type::NotificationData &)", "%s\n", v21);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      if (*(a1 + 241) == 1)
      {
        sub_100254FFC(a1);
      }
    }
  }

  return (*(*v7 + 24))(v7);
}

void sub_1005DC0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DC108(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v7 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8, a2);
  if (*a3 == 6 && *(a4 + 4) != 0)
  {
    sub_100254FFC(a1);
  }

  return (*(*v7 + 24))(v7);
}

void sub_1005DC1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DC1D4(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (a1 + 8);
  v5 = *(a1 + 8);
  *&v75[1] = a1 + 8;
  (*(v5 + 16))(a1 + 8, a2);
  v76 = 256;
  v6[112] = 0;
  if (a3)
  {
    v8 = (a1 + 200);
    v9 = (a1 + 200);
    if (*(a1 + 223) < 0)
    {
      v9 = *v8;
    }

    v10 = (a1 + 176);
    v11 = (a1 + 176);
    if (*(a1 + 199) < 0)
    {
      v11 = *v10;
    }

    rename(v9, v11, v7);
    if (v12)
    {
      v13 = *__error();
      if (qword_1025D4860 != -1)
      {
        sub_1003115C0();
      }

      v14 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
      {
        v15 = (a1 + 200);
        if (*(a1 + 223) < 0)
        {
          v15 = *v8;
        }

        v16 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v16 = *v10;
        }

        *buf = 136446722;
        *v80 = v15;
        *&v80[8] = 2082;
        *&v80[10] = v16;
        *&v80[18] = 1026;
        *&v80[20] = v13;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLFU,could not rename %{public}s to %{public}s,%{public}d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 0))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        if (*(a1 + 223) < 0)
        {
          v8 = *v8;
        }

        if (*(a1 + 199) < 0)
        {
          v10 = *v10;
        }

        v77 = 136446722;
        *v78 = v8;
        *&v78[8] = 2082;
        *&v78[10] = v10;
        *&v78[18] = 1026;
        *&v78[20] = v13;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 16, "CLFU,could not rename %{public}s to %{public}s,%{public}d", &v77, 28);
        v54 = v53;
        sub_100152C7C("Generic", 1, 0, 0, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v53);
        if (v54 != buf)
        {
          free(v54);
        }
      }

      v17 = 3;
    }

    else
    {
      if (qword_1025D4860 != -1)
      {
        sub_1003115C0();
      }

      v32 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v33 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v33 = *v10;
        }

        *buf = 136446210;
        *v80 = v33;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "CLFU,download completed to %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v59 = (a1 + 176);
        if (*(a1 + 199) < 0)
        {
          v59 = *v10;
        }

        v77 = 136446210;
        *v78 = v59;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,download completed to %{public}s", &v77, 12);
        v61 = v60;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v60);
        if (v61 != buf)
        {
          free(v61);
        }
      }

      v75[0] = 0.0;
      if (sub_100256384(a1, v75))
      {
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v34 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
        {
          v35 = (a1 + 200);
          if (*(a1 + 223) < 0)
          {
            v35 = *v8;
          }

          v36 = (a1 + 176);
          if (*(a1 + 199) < 0)
          {
            v36 = *v10;
          }

          *buf = 136446722;
          *v80 = v35;
          *&v80[8] = 2082;
          *&v80[10] = v36;
          *&v80[18] = 2050;
          *&v80[20] = v75[0];
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "CLFU,newly downloaded %{public}s file is now %{public}s (time %{public}.3f)", buf, 0x20u);
        }

        v37 = sub_10000A100(121, 2);
        if (v37)
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4860 != -1)
          {
            sub_1018DE100();
          }

          if (*(a1 + 223) < 0)
          {
            v8 = *v8;
          }

          if (*(a1 + 199) < 0)
          {
            v10 = *v10;
          }

          v77 = 136446722;
          *v78 = v8;
          *&v78[8] = 2082;
          *&v78[10] = v10;
          *&v78[18] = 2050;
          *&v78[20] = v75[0];
          LODWORD(v74) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 2, "CLFU,newly downloaded %{public}s file is now %{public}s (time %{public}.3f)", &v77, v74);
          v66 = v65;
          v37 = sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v65);
          if (v66 != buf)
          {
            free(v66);
          }
        }

        v39 = sub_1000206B4(v37, v38);
        v40 = (a1 + 128);
        if (*(a1 + 151) < 0)
        {
          v40 = *v40;
        }

        v41 = sub_100116D68(v39, v40, v75);
        v43 = sub_1000206B4(v41, v42);
        (*(*v43 + 944))(v43);
      }

      else
      {
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v46 = qword_1025D4868;
        if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
        {
          v47 = (a1 + 176);
          if (*(a1 + 199) < 0)
          {
            v47 = *v10;
          }

          *buf = 136446210;
          *v80 = v47;
          _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "#Warning,CLFU, could not get modified time for %{public}s", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4860 != -1)
          {
            sub_1018DE100();
          }

          if (*(a1 + 199) < 0)
          {
            v10 = *v10;
          }

          v77 = 136446210;
          *v78 = v10;
          LODWORD(v74) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "#Warning,CLFU, could not get modified time for %{public}s", &v77, v74);
          v68 = v67;
          sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v67);
          if (v68 != buf)
          {
            free(v68);
          }
        }
      }

      *(a1 + 96) = 0xBFF0000000000000;
      v17 = 2;
    }

    *(a1 + 112) = 0xBFF0000000000000;
    *(a1 + 64) = 0;
    sub_100254FFC(a1);
  }

  else
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v18 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v19 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v19 = *v19;
      }

      v20 = (a1 + 200);
      if (*(a1 + 223) < 0)
      {
        v20 = *v20;
      }

      *buf = 136380931;
      *v80 = v19;
      *&v80[8] = 2082;
      *&v80[10] = v20;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#Warning,CLFU, could not download from %{private}s to %{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v49 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v49 = *v49;
      }

      v50 = (a1 + 200);
      if (*(a1 + 223) < 0)
      {
        v50 = *v50;
      }

      v77 = 136380931;
      *v78 = v49;
      *&v78[8] = 2082;
      *&v78[10] = v50;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "#Warning,CLFU, could not download from %{private}s to %{public}s", &v77, 22);
      v52 = v51;
      sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v51);
      if (v52 != buf)
      {
        free(v52);
      }
    }

    v21 = [objc_msgSend(objc_msgSend(*(a1 + 24) "vendor")];
    if (v21)
    {
      Current = CFAbsoluteTimeGetCurrent();
      v23 = sub_1004E9660(*(a1 + 64), 10, 4);
      if (v21 == 2)
      {
        v24 = *(a1 + 88);
        if (v24 > 0.0 && v23 > v24)
        {
          if (qword_1025D4860 != -1)
          {
            sub_1018DE100();
          }

          v25 = qword_1025D4868;
          if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
          {
            v26 = *(a1 + 64);
            v27 = *(a1 + 88);
            v28 = (a1 + 152);
            if (*(a1 + 175) < 0)
            {
              v28 = *v28;
            }

            *buf = 134349827;
            *v80 = v23;
            *&v80[8] = 1026;
            *&v80[10] = v26;
            *&v80[14] = 2050;
            *&v80[16] = v27;
            *&v80[24] = 2081;
            *&v80[26] = v28;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "CLFU,delay %{public}.3f for retry count %{public}d exceeds current update period of %{public}.3f, setting delay to half the current update period for %{private}s", buf, 0x26u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4860 != -1)
            {
              sub_1018DE100();
            }

            v69 = *(a1 + 64);
            v70 = *(a1 + 88);
            v71 = (a1 + 152);
            if (*(a1 + 175) < 0)
            {
              v71 = *v71;
            }

            v77 = 134349827;
            *v78 = v23;
            *&v78[8] = 1026;
            *&v78[10] = v69;
            *&v78[14] = 2050;
            *&v78[16] = v70;
            *&v78[24] = 2081;
            *&v78[26] = v71;
            LODWORD(v74) = 38;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,delay %{public}.3f for retry count %{public}d exceeds current update period of %{public}.3f, setting delay to half the current update period for %{private}s", &v77, v74);
            v73 = v72;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v72);
            if (v73 != buf)
            {
              free(v73);
            }
          }

          v23 = *(a1 + 88) * 0.5;
        }
      }

      *(a1 + 112) = Current + v23;
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v29 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v30 = *(a1 + 64);
        v31 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v31 = *v31;
        }

        *buf = 67240707;
        *v80 = v30;
        *&v80[4] = 2081;
        *&v80[6] = v31;
        *&v80[14] = 2050;
        *&v80[16] = v23;
        _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "CLFU,retry count %{public}d, will re-download for %{private}s after delay of %{public}.3f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v55 = *(a1 + 64);
        v56 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v56 = *v56;
        }

        v77 = 67240707;
        *v78 = v55;
        *&v78[4] = 2081;
        *&v78[6] = v56;
        *&v78[14] = 2050;
        *&v78[16] = v23;
        LODWORD(v74) = 28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,retry count %{public}d, will re-download for %{private}s after delay of %{public}.3f", &v77, v74);
        v58 = v57;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v57);
        if (v58 != buf)
        {
          free(v58);
        }
      }

      ++*(a1 + 64);
      [*(a1 + 56) setNextFireTime:*(a1 + 112)];
    }

    else
    {
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v44 = qword_1025D4868;
      if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
      {
        v45 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v45 = *v45;
        }

        *buf = 136380675;
        *v80 = v45;
        _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "CLFU,data reachability is not available - not retrying %{private}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4860 != -1)
        {
          sub_1018DE100();
        }

        v62 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v62 = *v62;
        }

        v77 = 136380675;
        *v78 = v62;
        LODWORD(v74) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,data reachability is not available - not retrying %{private}s", &v77, v74);
        v64 = v63;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFileUpdate::onDownloaded(CLFileDownload *, BOOL)", "%s\n", v63);
        if (v64 != buf)
        {
          free(v64);
        }
      }
    }

    v17 = 3;
  }

  (*(*v6 + 24))(v6);
  return (*(a1 + 32))(a1, v17, *(a1 + 40));
}