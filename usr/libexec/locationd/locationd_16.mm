void sub_10010BCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010BD64(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6)
{
  if (*(a1 + 16))
  {
    if ((*a2 & 0xFFFFFFFE) == 2)
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
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
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
          _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", v66, 14);
          v19 = v18;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRegistration(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &)", "%s\n", v18);
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
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", &buf, 0x3Au);
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
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v43, 2, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", v66, 58);
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

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRegistration(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &)", "%s\n", v52);
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
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,unsupported message type,%s", v66, 0xCu);
        if (SBYTE3(v79) < 0)
        {
          operator delete(buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DAC78();
      }
    }
  }
}

uint64_t sub_10010C5CC(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32, &unk_101C66300, buf) + 32) = v28;
        buf[0] = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10061FFC4(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D77F9;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014((a1 + 56), &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410((v31 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018E68F8();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_1018E8644(a1, a2);
    return 0;
  }

  return result;
}

void sub_10010C9F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010CA08(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4, uint64_t a5)
{
  v47 = a2;
  v5 = *a4;
  if (v5 <= 0x27)
  {
    if (((1 << v5) & 0x8000000019) != 0)
    {
      v8 = *(a1 + 304);
      if (v8 && (*(a1 + 679) & 1) == 0)
      {
        sub_1001F53F4(v8, a5);
      }

      v9 = *(a1 + 320);
      if (v9 && (*(a1 + 679) & 1) == 0)
      {
        sub_10054A680(v9, a5, 0);
      }

      sub_1001F5430(a1, a5);
      v36[0] = &v47;
      v10 = sub_100109DF4(a1 + 232, &v47, &unk_101C66300, v36);
      v11 = *(a5 + 16);
      *(v10 + 6) = *a5;
      *(v10 + 7) = v11;
      v12 = *(a5 + 32);
      v13 = *(a5 + 48);
      v14 = *(a5 + 80);
      *(v10 + 10) = *(a5 + 64);
      *(v10 + 11) = v14;
      *(v10 + 8) = v12;
      *(v10 + 9) = v13;
      v15 = *(a5 + 96);
      v16 = *(a5 + 112);
      v17 = *(a5 + 128);
      *(v10 + 236) = *(a5 + 140);
      *(v10 + 13) = v16;
      *(v10 + 14) = v17;
      *(v10 + 12) = v15;
      v36[0] = &v47;
      v18 = sub_100109DF4(a1 + 232, &v47, &unk_101C66300, v36);
      memcpy(v18 + 32, (a5 + 160), 0x201uLL);
      v19 = *(a5 + 680);
      v20 = *(a5 + 688);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v18[97] = v19;
      v21 = v18[98];
      v18[98] = v20;
      if (v21)
      {
        sub_100008080(v21);
      }

      v22 = *(a5 + 696);
      v23 = *(a5 + 728);
      *(v18 + 101) = *(a5 + 712);
      *(v18 + 103) = v23;
      *(v18 + 99) = v22;
      v24 = *(a5 + 744);
      v25 = *(a5 + 760);
      v26 = *(a5 + 776);
      *(v18 + 881) = *(a5 + 785);
      *(v18 + 107) = v25;
      *(v18 + 109) = v26;
      *(v18 + 105) = v24;
      sub_1001FFD2C(a1);
      sub_1001F4EE0(a1 + 2032, a5);
    }

    else if (v5 == 9)
    {

      sub_10010CFE8(a1, a2);
    }

    else if (v5 == 22)
    {
      v27 = *(a1 + 304);
      if (v27)
      {
        sub_10031DC6C(v27, a5);
      }

      v28 = *(a1 + 320);
      if (v28)
      {
        sub_10031DCEC(v28, a5);
      }

      sub_100022008(v36, a5);
      v29 = sub_10031DD70(a1, v38);
      v30 = -1.0;
      if (v29 && *(a1 + 1672))
      {
        v31 = +[CLLocationDerivedSpeedEstimator isSupportedForDerivedSpeedEstimate];
        v32 = -1.0;
        v33 = -1.0;
        if (v31)
        {
          [*(a1 + 1672) currentEstimate];
          v30 = v34;
        }
      }

      else
      {
        v32 = -1.0;
        v33 = -1.0;
      }

      v42 = v30;
      v43 = v32;
      v44 = v33;
      sub_10031DE04(a1, v36, v29);
      v35 = *(a1 + 280);
      if (v35)
      {
        (*(*v35 + 488))(v35, a5);
      }

      if (v45)
      {
        sub_100008080(v45);
      }

      if (v41 < 0)
      {
        operator delete(__p);
      }

      if (v39)
      {
        sub_100008080(v39);
      }

      if (v37)
      {
        sub_100008080(v37);
      }
    }
  }
}

uint64_t sub_10010CD1C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

void sub_10010CDD0(uint64_t a1, char *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_101873CF0();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    *buf = 67240192;
    v16 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "lost location from kDynamicLocationProvider,%{public}d,restarting all worse providers", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018752A8(a2);
  }

  v6 = *(a1 + 232);
  if (v6 != (a1 + 240))
  {
    v7 = 0;
    do
    {
      if (*(v6 + 8) && (*(v6 + 911) & 1) == 0 && *(v6 + 909) < *a2)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v8 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(v6 + 909);
          *buf = 67240192;
          v16 = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "restarting worse location provider kDynamicLocationProvider,%{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10187539C(&v13, v6 + 909, v14);
        }

        v7 = sub_100107E4C(a1, *(v6 + 8));
      }

      v10 = v6[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v6[2];
          v12 = *v11 == v6;
          v6 = v11;
        }

        while (!v12);
      }

      v6 = v11;
    }

    while (v11 != (a1 + 240));
    if (v7)
    {
      sub_100110094(a1);
    }
  }
}

uint64_t sub_10010CFE8(uint64_t a1, int a2)
{
  v81 = a2;
  v3 = (a1 + 240);
  v2 = *(a1 + 240);
  if (!v2)
  {
    goto LABEL_8;
  }

  v5 = (a1 + 232);
  v6 = a1 + 240;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v6 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
LABEL_8:
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "LocationController,notifyLocationUnavailable,could not find provider from list", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101AABDEC();
    }

    return 0;
  }

  if ((*(v6 + 911) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v61 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v62 = (v6 + 48);
      if (*(v6 + 71) < 0)
      {
        v62 = *v62;
      }

      *buf = 136446210;
      *&buf[4] = v62;
      _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "LocationController,notifyLocationUnavailable,Got location unavailable notification for non-active provider,%{public}s,ignoring", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AAB7EC(v6);
    }

    return 0;
  }

  *(v6 + 910) = 1;
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4600 != -1)
  {
    sub_101AAB6FC();
  }

  v11 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v12 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v13 = (v6 + 48);
    if (*(v6 + 71) < 0)
    {
      v13 = *v13;
    }

    *buf = 136446210;
    *&buf[4] = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "LocationController,notifyLocationUnavailable,Got location unavailable notification for location provider,%{public}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AAB8F0(v6);
  }

  if (*(a1 + 216) == 1)
  {
    sub_10010CDD0(a1, (v6 + 909));
  }

  *buf = &v81;
  v14 = sub_100109DF4((v3 - 1), &v81, &unk_101C66300, buf);
  if (*(v14 + 23) < 0.0)
  {
    v16 = sub_10000B1F8(v14, v15);
    *buf = 0;
    v17 = sub_10001A6B0(v16, buf);
    *buf = &v81;
    v18 = v17 - *(sub_100109DF4((v3 - 1), &v81, &unk_101C66300, buf) + 172);
    v19 = 15.0;
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
      v19 = 15.0;
    }

    v20 = v18 + v19;
    v21 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = &v81;
      v22 = sub_100109DF4((v3 - 1), &v81, &unk_101C66300, buf);
      v23 = v22 + 6;
      if (*(v22 + 71) < 0)
      {
        v23 = *v23;
      }

      *buf = &v81;
      v24 = sub_100109DF4((v3 - 1), &v81, &unk_101C66300, buf)[23];
      *buf = 136446722;
      *&buf[4] = v23;
      *&buf[12] = 2050;
      *&buf[14] = v24;
      *&buf[22] = 2050;
      *&buf[24] = v20;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "LocationController,notifyLocationUnavailable,setting provider %{public}s location to expire,curr_lifespan,%{public}.1lf,new_lifespan,%{public}.1lf", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v74 = qword_1025D4608;
      *v82 = &v81;
      v75 = sub_100109DF4((v3 - 1), &v81, &unk_101C66300, v82);
      v76 = v75 + 6;
      if (*(v75 + 71) < 0)
      {
        v76 = *v76;
      }

      *v82 = &v81;
      v77 = sub_100109DF4((v3 - 1), &v81, &unk_101C66300, v82)[23];
      *v82 = 136446722;
      *&v82[4] = v76;
      v83 = 2050;
      v84 = v77;
      v85 = 2050;
      v86 = v20;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v74, 2, "LocationController,notifyLocationUnavailable,setting provider %{public}s location to expire,curr_lifespan,%{public}.1lf,new_lifespan,%{public}.1lf", v82, 32);
      v79 = v78;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocationUnavailable(LocationProvider)", "%s\n", v78);
      if (v79 != buf)
      {
        free(v79);
      }
    }

    *buf = &v81;
    *(sub_100109DF4((v3 - 1), &v81, &unk_101C66300, buf) + 23) = v20;
  }

  v25 = *v5;
  if (*v5 != v3)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0.0;
    do
    {
      if ((*(v25 + 910) & 1) == 0 && *(v25 + 908) <= *(a1 + 161) && *(v25 + 116) > 0.0)
      {
        if (p_info[192] != -1)
        {
          sub_10022FB88();
        }

        v29 = v11[193];
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
        if (v30)
        {
          v32 = v25 + 6;
          if (*(v25 + 71) < 0)
          {
            v32 = *v32;
          }

          v33 = *(v25 + 100);
          v34 = *(v25 + 108);
          v35 = v25[23];
          v36 = sub_10000B1F8(v30, v31);
          *buf = 0;
          v37 = sub_10001A6B0(v36, buf) - *(v25 + 172);
          v40 = sub_10000B1F8(v38, v39);
          v41 = sub_100125220(v40);
          *buf = 136447491;
          *&buf[4] = v32;
          *&buf[12] = 2053;
          *&buf[14] = v33;
          *&buf[22] = 2053;
          *&buf[24] = v34;
          v94 = 2050;
          v95 = v35;
          v96 = 2050;
          v97 = v37;
          v98 = 2050;
          v99 = v41;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "LocationController,notifyLocationUnavailable,provider,%{public}s,still available,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,lifespan,%{public}.1lf,age,%{public}.3f,propagation_us,%{public}.3f", buf, 0x3Eu);
          v11 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (p_info[192] != -1)
          {
            sub_10022FB88();
          }

          v49 = qword_1025D4608;
          v50 = v25 + 6;
          if (*(v25 + 71) < 0)
          {
            v50 = *v50;
          }

          v51 = *(v25 + 100);
          v52 = *(v25 + 108);
          v53 = v25[23];
          v54 = sub_1000281DC(v47, v48) - *(v25 + 172);
          v57 = sub_10000B1F8(v55, v56);
          v58 = sub_100125220(v57);
          *v82 = 136447491;
          *&v82[4] = v50;
          v83 = 2053;
          v84 = v51;
          v85 = 2053;
          v86 = v52;
          v87 = 2050;
          v88 = v53;
          v89 = 2050;
          v90 = v54;
          v91 = 2050;
          v92 = v58;
          LODWORD(v80) = 62;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 2, "LocationController,notifyLocationUnavailable,provider,%{public}s,still available,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,lifespan,%{public}.1lf,age,%{public}.3f,propagation_us,%{public}.3f", v82, v80);
          v60 = v59;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::notifyLocationUnavailable(LocationProvider)", "%s\n", v59);
          if (v60 != buf)
          {
            free(v60);
          }

          v11 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v26 = (v26 + 1);
        v42 = *(v25 + 23);
        if (v28 < v42)
        {
          v43 = *(v25 + 23);
        }

        else
        {
          v43 = v28;
        }

        if (v42 >= 0.0)
        {
          v28 = v43;
        }

        else
        {
          v27 = 1;
        }
      }

      v44 = v25[1];
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = v25[2];
          v46 = *v45 == v25;
          v25 = v45;
        }

        while (!v46);
      }

      v25 = v45;
    }

    while (v45 != v3);
    if (!((v26 == 0) | v27 & 1))
    {
      if (p_info[192] != -1)
      {
        sub_10022FB88();
      }

      v70 = v11[193];
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        *buf = 67240704;
        *&buf[4] = v26;
        *&buf[8] = 2050;
        *&buf[10] = v28;
        *&buf[18] = 2050;
        *&buf[20] = 0x402E000000000000;
        _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_INFO, "LocationController,notifyLocationUnavailable,location available from %{public}d providers,setting location unavailable timer next delay to %{public}.1f plus deadline %{public}.1f sec", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AAB9F4(v26, v28);
      }

      [*(a1 + 664) setNextFireDelay:v28 + 15.0];
      return 0;
    }

    if (v26)
    {
      if (p_info[192] != -1)
      {
        sub_10022FB88();
      }

      v63 = v11[193];
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEBUG, "LocationController,notifyLocationUnavailable,Infinite lifespan location available; not starting location unavailable timer", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AABB20();
      }

      return 0;
    }
  }

  v64 = p_info[192];
  if (*(a1 + 161) <= 0)
  {
    if (v64 != -1)
    {
      sub_10022FB88();
    }

    v71 = v11[193];
    if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
    {
      v72 = *(a1 + 160);
      v73 = *(a1 + 161);
      *buf = 67240448;
      *&buf[4] = v72;
      *&buf[8] = 1026;
      *&buf[10] = v73;
      _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_INFO, "LocationController,notifyLocationUnavailable,Required granularity,%{public}d,not achievable with active granularity,%{public}d,starting fine", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AABCF4(a1, (a1 + 161));
    }

    buf[0] = 1;
    sub_10010FB88(a1, buf);
    return 0;
  }

  if (v64 != -1)
  {
    sub_10022FB88();
  }

  v65 = v11[193];
  v66 = os_log_type_enabled(v65, OS_LOG_TYPE_INFO);
  if (v66)
  {
    v68 = sub_10000B1F8(v66, v67);
    *buf = 1;
    v69 = sub_10001A6B0(v68, buf);
    *buf = 134349056;
    *&buf[4] = v69;
    _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_INFO, "LocationController,notifyLocationUnavailable,No location is available from any provider,notifying clients of location unavailable,now,%{public}.3f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AABBFC();
  }

  [*(a1 + 664) setNextFireDelay:1.79769313e308];
  *buf = 9;
  v8 = 1;
  sub_100E6ED50(a1, buf, 1);
  return v8;
}

void sub_10010DA40(uint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = vabdd_f64(Current, *(a1 + 376));
  if (v5 >= 60.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 520);
      v9 = *(a1 + 352);
      v10 = *(a1 + 432);
      v11 = *(a1 + 184);
      v12 = *(a1 + 264);
      v13 = *(a1 + 304);
      v14 = *(a1 + 344);
      *buf = 136317186;
      v43 = a2;
      v44 = 2048;
      v45 = v8;
      v46 = 1024;
      v47 = v9;
      v48 = 2048;
      v49 = v10;
      v50 = 2048;
      v51 = v11;
      v52 = 2048;
      v53 = v12;
      v54 = 2048;
      v55 = v13;
      v56 = 2048;
      v57 = v14;
      v58 = 2048;
      v59 = v5;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "NETWORK: resetRetryCounters, %s, %p, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, sinceLastReset, %.1lf", buf, 0x58u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_10190B63C();
      }

      v15 = *(a1 + 520);
      v16 = *(a1 + 352);
      v17 = *(a1 + 432);
      v18 = *(a1 + 184);
      v19 = *(a1 + 264);
      v20 = *(a1 + 304);
      v21 = *(a1 + 344);
      v24 = 136317186;
      v25 = a2;
      v26 = 2048;
      v27 = v15;
      v28 = 1024;
      v29 = v16;
      v30 = 2048;
      v31 = v17;
      v32 = 2048;
      v33 = v18;
      v34 = 2048;
      v35 = v19;
      v36 = 2048;
      v37 = v20;
      v38 = 2048;
      v39 = v21;
      v40 = 2048;
      v41 = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "NETWORK: resetRetryCounters, %s, %p, fQueryRetries, %d, pending, %lu, %lu, %lu, %lu, %lu, sinceLastReset, %.1lf", &v24, 88);
      v23 = v22;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNetworkLocationProvider::resetRetryCounters(const char *)", "%s\n", v22);
      if (v23 != buf)
      {
        free(v23);
      }
    }

    *(a1 + 352) = 0;
    *(a1 + 360) = Current;
    *(a1 + 376) = Current;
    sub_100185DCC(a1, "resetRetryCounters");
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10190BC08();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v43 = *&v5;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "NETWORK: resetRetryCounters, sinceLastReset, %.1lf", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190BEC8();
    }
  }
}

void sub_10010DD58(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLLocationController::sendTechStatusNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::sendTechStatusNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = [*(a1 + 32) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010E010;
  v5[3] = &unk_102449A78;
  v5[4] = a1;
  [v4 sync:v5];
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10010DF5C()
{
  if (qword_1025D4600 != -1)
  {
    sub_101AAB6FC();
  }

  v0 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_DEFAULT, "#techstatus,posting notification", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AAD35C();
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, CLTechStatusChangedNotification, 0, 0, 0);
}

void sub_10010E018(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018F8FF4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLLocationController::checkActiveProviders", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018F9008();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::checkActiveProviders, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = [*(a1 + 32) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010E4BC;
  v5[3] = &unk_102449A78;
  v5[4] = a1;
  [v4 sync:v5];
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10010E21C(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2 == (a1 + 240))
  {
    v3 = 0;
  }

  else
  {
    do
    {
      v3 = *(v2 + 911);
      if (v3)
      {
        break;
      }

      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (a1 + 240));
  }

  if (*(a1 + 677) != v3)
  {
    *(a1 + 677) = v3;
    sub_100021AFC(v10);
    v13 = *(a1 + 677);
    if (qword_1025D4600 != -1)
    {
      sub_1018F7C0C();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      v20 = v13;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Notifying clients of providers active update to %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F8644(buf);
      v18[0] = 67240192;
      v18[1] = v13;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "Notifying clients of providers active update to %{public}d", v18, 8);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::checkActiveProviders()", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    *buf = 11;
    (*(*a1 + 152))(a1, buf, v10, 0, 0xFFFFFFFFLL, 0);

    if (v16)
    {
      sub_100008080(v16);
    }

    if (v15 < 0)
    {
      operator delete(__p);
    }

    if (v12)
    {
      sub_100008080(v12);
    }

    if (v11)
    {
      sub_100008080(v11);
    }
  }
}

void sub_10010E488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10010E4C4(uint64_t a1)
{
  *(a1 + 128) |= 8u;
  if (!*(a1 + 32))
  {
    operator new();
  }

  return *(a1 + 32);
}

BOOL sub_10010E544(uint64_t a1, uint64_t a2)
{
  v3 = BYTE4(a1);
  v7 = a1;
  v4 = sub_10010E5D8(&v7);
  result = sub_100108BCC(v4);
  if (!result)
  {
    sub_101882604();
  }

  v6 = *(a2 + 20);
  *(a2 + 8) = v4;
  *(a2 + 20) = v6 | 3;
  *(a2 + 12) = v3;
  return result;
}

uint64_t sub_10010E5AC(uint64_t result)
{
  *result = off_1024523B0;
  *(result + 16) = 0;
  *(result + 8) = 0;
  *(result + 12) = 0;
  return result;
}

uint64_t sub_10010E5D8(unsigned int *a1)
{
  result = *a1;
  if (result >= 0xE)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v3 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4 = *a1;
      v6[0] = 67240192;
      v6[1] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled location type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84414(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10010E6C8(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 20);
  if (v3)
  {
    if (*(a1 + 20))
    {
      v6 = *(a1 + 8);
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = *(a1 + 20);
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2u) + v4;
  }

  else
  {
    result = 0;
  }

  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10010E73C(uint64_t result, char a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 20);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return result;
}

void sub_10010E7A8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024523B0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10010E7FC(uint64_t a1, unsigned int *a2, int32x4_t *a3, unsigned int *a4, int *a5, unsigned int *a6, uint64_t a7)
{
  if (!*(a1 + 16))
  {
    return;
  }

  if ((*a2 & 0xFFFFFFFE) == 2)
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
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", &buf, 0xEu);
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
        *v76 = 67109376;
        *&v76[4] = v16;
        *&v76[8] = 1024;
        *&v76[10] = v18;
        _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,silo entry invalid,from_valid,%d,to_valid,%d", v76, 14);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRegistration(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::RegInfo &)", "%s\n", v19);
        if (v20 != &buf)
        {
          free(v20);
        }
      }

      return;
    }

    v27 = sub_10000AED0();
    v29 = sub_10000B1F8(v27, v28);
    sub_10000AED4(v29, v72);
    sub_10000AFE4(v73, a2, a3, a4, v72);
    v75 |= 2u;
    v30 = v74;
    if (!v74)
    {
      operator new();
    }

    *(v74 + 492) |= 0x800u;
    v31 = *(v30 + 352);
    if (!v31)
    {
      operator new();
    }

    *(v31 + 200) |= 0x10000u;
    v32 = *(v31 + 128);
    if (!v32)
    {
      operator new();
    }

    v33 = *a5;
    *(v32 + 36) |= 1u;
    *(v32 + 8) = v33;
    v34 = sub_100021DC4(a6);
    if (!sub_100DF8570(v34))
    {
      __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13026, "::CLP::LogEntry::PrivateData::LocationProviderNotification_NotificationType_IsValid(value)");
    }

    v35 = *(v32 + 36);
    *(v32 + 12) = v34;
    *(v32 + 36) = v35 | 0xA;
    v36 = *(v32 + 24);
    if (!v36)
    {
      operator new();
    }

    v37 = *(v36 + 60);
    *(v36 + 8) = *a7;
    *(v36 + 33) = *(a7 + 16);
    *(v36 + 60) = v37 | 0x33;
    v38 = sub_10010F16C((a7 + 20));
    if (sub_10041ECF8(v38))
    {
      *(v36 + 60) |= 0x100u;
      *(v36 + 48) = v38;
      v39 = sub_10010F278((a7 + 24));
      if (sub_10041ECEC(v39))
      {
        *(v36 + 60) |= 0x200u;
        *(v36 + 52) = v39;
        v40 = sub_10000BFC0(a1, v73);
        if (*(a1 + 8) == 1)
        {
          v41 = v40;
          if (qword_1025D4600 != -1)
          {
            sub_1018D8CDC();
          }

          v42 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            sub_101322EE0(a2, v76);
            if (SBYTE3(v78) >= 0)
            {
              v43 = v76;
            }

            else
            {
              v43 = *v76;
            }

            v63 = v43;
            LODWORD(v65[0]) = a3->i32[0];
            sub_1013230DC(v65, v70);
            if (v71 >= 0)
            {
              v44 = v70;
            }

            else
            {
              v44 = v70[0];
            }

            v67 = *a4;
            v45 = __p;
            sub_1013230DC(&v67, __p);
            if (v69 < 0)
            {
              v45 = __p[0];
            }

            v46 = sub_100048D98(*a6);
            v48 = sub_10000B1F8(v46, v47);
            v49 = sub_100125220(v48);
            LODWORD(buf) = 67110402;
            HIDWORD(buf) = v41;
            v86 = 2080;
            v87 = v63;
            v88 = 2080;
            v89 = v44;
            v90 = 2080;
            v91 = v45;
            v92 = 2080;
            v93 = v46;
            v94 = 2050;
            v95 = v49;
            _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", &buf, 0x3Au);
            if (v69 < 0)
            {
              operator delete(__p[0]);
            }

            if (v71 < 0)
            {
              operator delete(v70[0]);
            }

            if (SBYTE3(v78) < 0)
            {
              operator delete(*v76);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018D8D04(&buf);
            v53 = qword_1025D4608;
            sub_101322EE0(a2, v70);
            if (v71 >= 0)
            {
              v54 = v70;
            }

            else
            {
              v54 = v70[0];
            }

            v67 = a3->i32[0];
            v55 = __p;
            sub_1013230DC(&v67, __p);
            if (v69 < 0)
            {
              v55 = __p[0];
            }

            v64 = *a4;
            sub_1013230DC(&v64, v65);
            if (v66 >= 0)
            {
              v56 = v65;
            }

            else
            {
              v56 = v65[0];
            }

            v57 = sub_100048D98(*a6);
            v59 = sub_10000B1F8(v57, v58);
            v60 = sub_100125220(v59);
            *v76 = 67110402;
            *&v76[4] = v41;
            *&v76[8] = 2080;
            *&v76[10] = v54;
            v77 = 2080;
            v78 = v55;
            v79 = 2080;
            v80 = v56;
            v81 = 2080;
            v82 = v57;
            v83 = 2050;
            v84 = v60;
            _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, v53, 2, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,success,%d,message_type,%s,from,%s,to,%s,notification_type,%s,propagation_us,%{public}.3f", v76, 58);
            v62 = v61;
            if (v66 < 0)
            {
              operator delete(v65[0]);
            }

            if (v69 < 0)
            {
              operator delete(__p[0]);
            }

            if (v71 < 0)
            {
              operator delete(v70[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordRegistration(const CLLocationControllerRecorder_Types::MessageType &, const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const int &, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::RegInfo &)", "%s\n", v62);
            if (v62 != &buf)
            {
              free(v62);
            }
          }
        }

        sub_10000CE1C(v73);
        return;
      }

      v50 = "::CLP::LogEntry::PrivateData::PipelineOperatingMode_IsValid(value)";
      v51 = 12977;
      v52 = "set_pipeline_operating_mode";
    }

    else
    {
      v50 = "::CLP::LogEntry::PrivateData::OperatingMode_IsValid(value)";
      v51 = 12954;
      v52 = "set_operating_mode";
    }

    __assert_rtn(v52, "CLPLocationController.pb.h", v51, v50);
  }

  if (qword_1025D4600 != -1)
  {
    sub_100287074();
  }

  v21 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    sub_101322EE0(a2, &buf);
    v22 = SBYTE3(v89) >= 0 ? &buf : buf;
    *v76 = 136315138;
    *&v76[4] = v22;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordRegistration,CLLocationProvider_Type,unsupported message type,%s", v76, 0xCu);
    if (SBYTE3(v89) < 0)
    {
      operator delete(buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DAD7C();
  }
}

double sub_10010F130(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(a1 + 36) = 0;
  *a1 = off_1024B4678;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 31) = 0;
  *&result = 0x100000001;
  *(a1 + 48) = xmmword_101C65580;
  return result;
}

uint64_t sub_10010F16C(int *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 1;
  }

  if (v1 == 11)
  {
    return 3;
  }

  if (v1 == 10)
  {
    return 2;
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
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertOperatingModeTypeToProtobuf,unhandled type,%d", v6, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DAE80(a1);
    return 0;
  }

  return result;
}

uint64_t sub_10010F278(int *a1)
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
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#locctl,#rec,convertPipelineOperatingModeTypeToProtobuf,unhandled type,%d", v5, 8u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_1018DAF6C(a1);
    return 0;
  }

  return result;
}

uint64_t sub_10010F374(unsigned int *a1, unsigned int a2)
{
  v3 = a1[15];
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 9;
    }

    v5 = ((v3 >> 3) & 2) + ((v3 >> 2) & 2) + ((v3 >> 4) & 2) + v4;
    if ((v3 & 0x40) != 0)
    {
      v6 = v5 + 9;
    }

    else
    {
      v6 = v5;
    }

    if ((v3 & 0x80) != 0)
    {
      v7 = a1[9];
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = a1[15];
      }

      else
      {
        v8 = 2;
      }

      v6 = (v8 + v6);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      v9 = a1[12];
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2) + 1;
        v3 = a1[15];
      }

      else
      {
        v10 = 2;
      }

      v6 = (v10 + v6);
    }

    if ((v3 & 0x200) != 0)
    {
      v11 = a1[13];
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 11;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11, a2) + 1;
      }

      else
      {
        v12 = 2;
      }

      v6 = (v12 + v6);
    }
  }

  a1[14] = v6;
  return v6;
}

uint64_t sub_10010F4A4(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 60);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 60);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 60);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 60);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 33), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 34), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 60);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 48), a2, a4);
    if ((*(v5 + 60) & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_19:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(8, *(v5 + 36), a2, a4);
  v6 = *(v5 + 60);
  if ((v6 & 0x100) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 0x200) == 0)
  {
    return result;
  }

LABEL_21:
  v7 = *(v5 + 52);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, v7, a2, a4);
}

void sub_10010F5FC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B4678;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10010F650(uint64_t a1, unsigned int *a2, int a3, int a4, int a5, double a6)
{
  if (qword_1025D4600 != -1)
  {
    sub_101B0C0DC();
  }

  v12 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v13 = *a2;
    *buf = 67241216;
    v45 = v13;
    v46 = 1026;
    v47 = a3 != 0;
    v48 = 1026;
    v49 = a4 != 0;
    v50 = 1026;
    v51 = a5 != 0;
    v52 = 2050;
    *v53 = a6;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#LCStats,feedLCFuserSessionStartMetrics,ntfy,%{public}d,%{public}d,%{public}d,%{public}d,hunc,%{public}0.2f", buf, 0x24u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_100232CD4();
    }

    v32 = *a2;
    v35[0] = 67241216;
    v35[1] = v32;
    v36 = 1026;
    v37 = a3 != 0;
    v38 = 1026;
    v39 = a4 != 0;
    v40 = 1026;
    v41 = a5 != 0;
    v42 = 2050;
    v43 = a6;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#LCStats,feedLCFuserSessionStartMetrics,ntfy,%{public}d,%{public}d,%{public}d,%{public}d,hunc,%{public}0.2f", v35, 36);
    v34 = v33;
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerCAStats::feedLCFuserSessionStartMetrics(const CLLocationProvider_Type::Notification &, const int, const int, const int, const double)", "%s\n", v33);
    if (v34 != buf)
    {
      free(v34);
    }
  }

  v14 = *a2;
  if (*a2 <= 2)
  {
    if (a3 >= 2 && !v14)
    {
      goto LABEL_9;
    }

    if (v14 == 2)
    {
      if (a3 > 0 || a4 > 0 || a5 >= 2)
      {
        goto LABEL_9;
      }
    }

    else if (v14 == 1 && (a3 > 0 || a4 > 1))
    {
LABEL_9:
      if (qword_1025D4600 != -1)
      {
        sub_100232CD4();
      }

      v15 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#LCStats,feedLCFuserSessionStartMetrics,not a first client at given granularity", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0D448();
      }

      return;
    }

    v16 = *(a1 + 384) ^ 1;
    v17 = *(a1 + 344);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 352) - v17) >> 4) <= v16)
    {
      sub_10046F324();
    }

    v18 = v17 + 48 * v16;
    if (v14 == 2)
    {
      ++*(v18 + 44);
      if (a6 >= 1000.0)
      {
        goto LABEL_32;
      }

      v19 = (v18 + 8);
    }

    else if (v14 == 1)
    {
      ++*(v18 + 40);
      if (a6 >= 100.0)
      {
        goto LABEL_32;
      }

      v19 = (v18 + 4);
    }

    else
    {
      ++*(v18 + 36);
      v19 = (v17 + 48 * v16);
      if (a6 >= 50.0)
      {
        goto LABEL_32;
      }
    }

    ++*v19;
LABEL_32:
    if (a6 >= 25.0)
    {
      if (a6 >= 50.0)
      {
        if (a6 < 100.0)
        {
          *(v18 + 20) = vadd_s32(*(v18 + 20), 0x100000001);
          goto LABEL_39;
        }

        if (a6 >= 200.0)
        {
          v21 = 32;
          if (a6 < 500.0)
          {
            v21 = 28;
          }

          goto LABEL_40;
        }
      }

      else
      {
        *(v18 + 16) = vadd_s32(*(v18 + 16), 0x100000001);
      }

      ++*(v18 + 24);
    }

    else
    {
      v20.i64[0] = 0x100000001;
      v20.i64[1] = 0x100000001;
      *(v18 + 12) = vaddq_s32(*(v18 + 12), v20);
    }

LABEL_39:
    v21 = 28;
LABEL_40:
    ++*(v18 + v21);
    if (qword_1025D4600 != -1)
    {
      sub_100232CD4();
    }

    v22 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 384);
      v24 = *(v18 + 12);
      v25 = *(v18 + 16);
      v26 = *(v18 + 20);
      v27 = *(v18 + 24);
      v28 = *(v18 + 28);
      v29 = *(v18 + 36);
      v30 = *(v18 + 40);
      v31 = *(v18 + 44);
      *buf = 67176705;
      v45 = v23;
      v46 = 1026;
      v47 = v24;
      v48 = 1026;
      v49 = v25;
      v50 = 1026;
      v51 = v26;
      v52 = 1026;
      *v53 = v27;
      *&v53[4] = 1026;
      *&v53[6] = v28;
      v54 = 1026;
      v55 = v29;
      v56 = 1026;
      v57 = v30;
      v58 = 1026;
      v59 = v31;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "#LCStats,feedLCFuserSessionStartMetrics,homeVisit,%{private}d,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d,%{public}d", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0D2EC((a1 + 384), v18);
    }
  }
}

void sub_10010FB88(uint64_t a1, char *a2)
{
  sub_10010B730(a1, a2);
  if (*(a1 + 161) < *a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873CF0();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v5 = *a2;
      *buf = 68289538;
      *v34 = 0;
      *&v34[4] = 2082;
      *&v34[6] = "";
      v35 = 1026;
      v36 = v5;
      v37 = 2050;
      v38 = sub_100107BB8(a1);
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:@ClxProvider,starting all location providers up to threshold, threshold:%{public}d, desiredAccuracy:%{public}f}", buf, 0x22u);
    }

    v6 = *a2;
    if (v6 <= 2)
    {
      v7 = (a1 + 240);
      while (1)
      {
        v8 = *(a1 + 232);
        if (v8 != v7)
        {
          v9 = 0;
          do
          {
            v10 = *(v8 + 908);
            v11 = *(v8 + 10);
            if (v10 <= *(a1 + 161) || v10 > v6)
            {
              if (v11)
              {
                if (qword_1025D4600 != -1)
                {
                  sub_101873804();
                }

                v12 = qword_1025D4608;
                if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
                {
                  v13 = v8 + 6;
                  if (*(v8 + 71) < 0)
                  {
                    v13 = *v13;
                  }

                  v14 = *(a1 + 160);
                  v15 = *(a1 + 161);
                  *buf = 136446722;
                  *v34 = v13;
                  *&v34[8] = 1026;
                  *&v34[10] = v14;
                  v35 = 1026;
                  v36 = v15;
                  _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Not starting location provider,%{public}s,fRequiredLocationGranularity,%{public}d,fActiveLocationGranularity,%{public}d", buf, 0x18u);
                }

                if (sub_10000A100(121, 2))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1025D4600 != -1)
                  {
                    sub_101873804();
                  }

                  v19 = v8 + 6;
                  if (*(v8 + 71) < 0)
                  {
                    v19 = *v19;
                  }

                  v20 = *(a1 + 160);
                  v21 = *(a1 + 161);
                  v27 = 136446722;
                  v28 = v19;
                  v29 = 1026;
                  v30 = v20;
                  v31 = 1026;
                  v32 = v21;
                  LODWORD(v26) = 24;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "Not starting location provider,%{public}s,fRequiredLocationGranularity,%{public}d,fActiveLocationGranularity,%{public}d", &v27, v26);
                  v23 = v22;
                  sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::startLocation(const Granularity &)", "%s\n", v22);
                  if (v23 != buf)
                  {
                    free(v23);
                  }
                }
              }
            }

            else
            {
              v9 = sub_100107E4C(a1, v11);
            }

            v16 = v8[1];
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
                v17 = v8[2];
                v18 = *v17 == v8;
                v8 = v17;
              }

              while (!v18);
            }

            v8 = v17;
          }

          while (v17 != v7);
          if (v9)
          {
            break;
          }
        }

        v6 = (v6 + 1);
        if (v6 >= 3)
        {
          goto LABEL_38;
        }
      }

      sub_100110094(a1);
    }

LABEL_38:
    v24 = *(a1 + 161);
    if (v24 != 2)
    {
      if (v24 == 255 || ([*(a1 + 664) nextFireDelay], v25 < 15.0))
      {
        [*(a1 + 664) setNextFireDelay:15.0];
      }
    }

    *(a1 + 161) = v6;
  }
}

uint64_t sub_10010FF14(_BYTE *a1, void *a2)
{
  v2 = a2;
  v11 = a2;
  v4 = sub_10000AE98(a1, a2);
  LODWORD(v2) = sub_100111400(v2);
  v12 = &v11;
  v5 = *(sub_100109DF4((a1 + 232), &v11, &unk_101C66300, &v12) + 911);
  v6 = sub_100111300(a1[160]);
  v7 = sub_100111300(a1[161]);
  v9 = sub_100027514(a1 + 800, v8);
  return sub_100108CB4(v4, v2, v5, v6, v7, v9, a1[682]);
}

uint64_t sub_10010FFD0(uint64_t result, int a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 8), a2, a4);
    v6 = *(v5 + 28);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 20), a2, a4);
    if ((*(v5 + 28) & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_9:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 12), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return result;
  }

LABEL_11:
  v7 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

void sub_100110094(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101AAB6FC();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#techstatus,signalling", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AAB710();
  }

  CFRunLoopSourceSignal(*(a1 + 696));
  CFRunLoopSourceSignal(*(a1 + 704));
  v3 = sub_100107858();
  CFRunLoopWakeUp(v3);
}

uint64_t sub_100110144(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v7 = sub_100109F14(a4);
  if (v7)
  {
    v10 = a3;
    return (*(*a1 + 96))(a1, a2, &v10, v7);
  }

  else
  {
    v9 = a3;
    return (*(*a1 + 88))(a1, a2, &v9);
  }
}

uint64_t sub_100110224(uint64_t a1, uint64_t a2, int *a3, char *a4)
{
  v32 = a2;
  if (*(a1 + 108))
  {
    return 0;
  }

  v5 = a2;
  v7 = *(a1 + 88);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 32) >= a2)
      {
        v10 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a2));
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 32) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 48);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 28) >= v14)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 28) < v14));
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 28))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 64);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 32) >= v14)
        {
          v20 = v19;
        }

        v19 = *(v19 + 8 * (*(v19 + 32) < v14));
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 32))
      {
        v30 = v20;
        v27 = *(v20 + 56);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0(v20 + 40, &v32, &unk_101C66300, buf) + 32) = v28;
        *buf = 0;
        *&buf[8] = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_1006E32E0(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = a1 + 56;
        v30 = a1 + 64;
        v22 = byte_1025D7F49;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014(a1 + 56, &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014(a1 + 56, &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410(v31 + 40, buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    *&buf[12] = 1026;
    *&buf[14] = v5;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_10190F3D4();
    return 0;
  }

  return result;
}

uint64_t sub_1001105DC(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *buf = &v32;
        *(sub_100007FA0((v20 + 40), &v32, &unk_101C66300, buf) + 32) = v28;
        buf[2] = 0;
        *buf = 0;
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_100ED5884(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_102630969;
        v29 = v14;
        *buf = &v29;
        *(sub_100024014((a1 + 56), &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *buf = &v29;
        v23 = sub_100024014((a1 + 56), &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *buf = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *buf = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        *buf = *a3;
        sub_1003C9410((v31 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_101ABD9FC();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    *buf = 136446466;
    *&buf[4] = v12;
    v34 = 1026;
    v35 = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_101ABDB10(a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_100110998(uint64_t a1)
{
  v3 = 0;
  if (sub_10000608C(a1, &v3, 1))
  {
    sub_100110A44(a1);
  }

  return 1;
}

uint64_t sub_1001109E0(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = *v8;
  *(a3 + 2) = *(v8 + 2);
  *a3 = v9;
  return 1;
}

id sub_100110A44(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_101B1984C();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "PAUSE: Starting auto-pause monitoring.", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B19AB8();
  }

  [*(*(a1 + 120) + 16) register:*(*(a1 + 120) + 8) forNotification:4 registrationInfo:0];
  [*(*(a1 + 112) + 16) register:*(*(a1 + 112) + 8) forNotification:2 registrationInfo:0];
  [*(*(a1 + 128) + 16) register:*(*(a1 + 128) + 8) forNotification:2 registrationInfo:0];
  [*(*(a1 + 128) + 16) register:*(*(a1 + 128) + 8) forNotification:3 registrationInfo:0];
  return [*(a1 + 136) setNextFireDelay:900.0];
}

uint64_t sub_100110B3C(char *a1, void *a2, int *a3, char *a4)
{
  v32 = a2;
  if (a1[108])
  {
    return 0;
  }

  v7 = *(a1 + 11);
  if (v7)
  {
    v10 = a1 + 88;
    do
    {
      if (*(v7 + 8) >= a2)
      {
        v10 = v7;
      }

      v7 = *&v7[8 * (*(v7 + 8) < a2)];
    }

    while (v7);
    if (v10 != a1 + 88 && *(v10 + 8) <= a2)
    {
      v31 = v10;
      v14 = *a3;
      v17 = *(v10 + 6);
      v16 = v10 + 48;
      v15 = v17;
      if (!v17)
      {
        goto LABEL_25;
      }

      v18 = v16;
      do
      {
        if (*(v15 + 7) >= v14)
        {
          v18 = v15;
        }

        v15 = *&v15[8 * (*(v15 + 7) < v14)];
      }

      while (v15);
      if (v18 == v16 || v14 < *(v18 + 7))
      {
LABEL_25:
        v18 = v16;
      }

      v19 = *(a1 + 8);
      if (!v19)
      {
        goto LABEL_33;
      }

      v20 = a1 + 64;
      do
      {
        if (*(v19 + 8) >= v14)
        {
          v20 = v19;
        }

        v19 = *&v19[8 * (*(v19 + 8) < v14)];
      }

      while (v19);
      if (v20 != a1 + 64 && v14 >= *(v20 + 8))
      {
        v30 = v20;
        v27 = *(v20 + 7);
        v28 = *a4;
        *&buf[0] = &v32;
        *(sub_100007FA0((v20 + 40), &v32, &unk_101C66300, buf) + 32) = v28;
        memset(buf, 0, sizeof(buf));
        if (v18 == v16 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_100110F10(buf);
        }

        if (v27)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v21 = (a1 + 56);
        v30 = a1 + 64;
        v22 = byte_1025D7301;
        v29 = v14;
        *&buf[0] = &v29;
        *(sub_100024014((a1 + 56), &v29, &unk_101C66300, buf) + 80) = v22;
        v29 = *a3;
        *&buf[0] = &v29;
        v23 = sub_100024014((a1 + 56), &v29, &unk_101C66300, buf);
        v24 = v23[9];
        v23[8] = 0;
        v23[9] = 0;
        if (v24)
        {
          sub_100008080(v24);
        }

        v25 = *a4;
        v29 = *a3;
        *&buf[0] = &v29;
        v26 = sub_100024014(v21, &v29, &unk_101C66300, buf);
        *&buf[0] = &v32;
        *(sub_100007FA0((v26 + 5), &v32, &unk_101C66300, buf) + 32) = v25;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v18 == v16)
      {
        LODWORD(buf[0]) = *a3;
        sub_1003C9410((v31 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1018D60CC();
  }

  v11 = qword_1025D47F8;
  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
  {
    v12 = a1 + 8;
    if (a1[31] < 0)
    {
      v12 = *v12;
    }

    LODWORD(buf[0]) = 136446466;
    *(buf + 4) = v12;
    WORD6(buf[0]) = 1026;
    *(buf + 14) = a2;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  v13 = sub_10000A100(121, 0);
  result = 0;
  if (v13)
  {
    sub_1018D61E0(a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_100110FDC(uint64_t a1, int *a2, _OWORD *a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = v3;
  do
  {
    if (*(v4 + 32) >= v6)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v6));
  }

  while (v4);
  if (v7 == v3)
  {
    return 0;
  }

  if (v6 < *(v7 + 32))
  {
    return 0;
  }

  v8 = *(v7 + 64);
  if (!v8)
  {
    return 0;
  }

  v9 = v8[1];
  *a3 = *v8;
  a3[1] = v9;
  v10 = v8[2];
  v11 = v8[3];
  v12 = v8[5];
  a3[4] = v8[4];
  a3[5] = v12;
  a3[2] = v10;
  a3[3] = v11;
  v13 = v8[6];
  v14 = v8[7];
  v15 = v8[9];
  a3[8] = v8[8];
  a3[9] = v15;
  a3[6] = v13;
  a3[7] = v14;
  return 1;
}

void sub_100111058(void *a1)
{
  v2 = a1[20];
  if (!v2)
  {
    sub_100ED4788();
  }

  [*(v2 + 16) register:*(v2 + 8) forNotification:0 registrationInfo:{0, v5}];
  if (qword_1025D4790 != -1)
  {
    sub_101B133E0();
  }

  v3 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v4 = a1[3];
    v5 = 68289282;
    v6 = 2082;
    v7 = "";
    v8 = 2114;
    v9 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Client registered for autopause notifications, Client:%{public, location:escape_only}@}", &v5, 0x1Cu);
  }
}

uint64_t sub_100111300(void *a1)
{
  if ((a1 + 1) < 5)
  {
    return dword_101D7A8B0[(a1 + 1)];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67240192;
    v5[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "ConvertLocationProviderToLocationType,unhandled type,%{public}d", v5, 8u);
  }

  v4 = sub_10000A100(121, 0);
  result = 0;
  if (v4)
  {
    sub_101B8CBC8(a1);
    return 0;
  }

  return result;
}

uint64_t sub_100111400(void *a1)
{
  if (a1 < 9)
  {
    return dword_101D7A88C[a1];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5[0] = 67240192;
    v5[1] = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "ConvertLocationProviderToLocationType,unhandled type,%{public}d", v5, 8u);
  }

  v4 = sub_10000A100(121, 0);
  result = 0;
  if (v4)
  {
    sub_101B8CAD8(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1001114F8(uint64_t result)
{
  *(result + 20) = 0;
  *result = &off_1024B3520;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100111520(uint64_t result)
{
  *(result + 24) = 0;
  *(result + 20) = 0;
  *result = off_1024B3598;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_10011154C(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 76);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_61;
  }

  if ((*(a1 + 76) & 1) == 0)
  {
    v4 = 0;
    if ((*(a1 + 76) & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    v5 = *(qword_102637DE0 + 8);
  }

  v6 = sub_10014DFFC(v5, a2);
  v7 = v6;
  if (v6 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2);
  }

  else
  {
    v8 = 1;
  }

  v4 = (v7 + v8 + 1);
  v3 = *(a1 + 76);
  if ((v3 & 2) != 0)
  {
LABEL_12:
    v9 = *(a1 + 16);
    if (!v9)
    {
      v9 = *(qword_102637DE0 + 16);
    }

    v10 = sub_1001117E8(v9, a2);
    v11 = v10;
    if (v10 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
    v3 = *(a1 + 76);
  }

LABEL_18:
  if ((v3 & 4) != 0)
  {
    v13 = *(a1 + 24);
    if (!v13)
    {
      v13 = *(qword_102637DE0 + 24);
    }

    v14 = sub_100111880(v13, a2);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14, a2);
    }

    else
    {
      v16 = 1;
    }

    v4 = (v4 + v15 + v16 + 1);
    v3 = *(a1 + 76);
    if ((v3 & 8) == 0)
    {
LABEL_20:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 32);
  if (!v17)
  {
    v17 = *(qword_102637DE0 + 32);
  }

  v18 = sub_100DE98A8(v17);
  v19 = v18;
  if (v18 >= 0x80)
  {
    v20 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2);
  }

  else
  {
    v20 = 1;
  }

  v4 = (v4 + v19 + v20 + 1);
  v3 = *(a1 + 76);
  if ((v3 & 0x10) == 0)
  {
LABEL_21:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v21 = *(a1 + 40);
  if (!v21)
  {
    v21 = *(qword_102637DE0 + 40);
  }

  v22 = sub_100DEA030(v21, a2);
  v23 = v22;
  if (v22 >= 0x80)
  {
    v24 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2);
  }

  else
  {
    v24 = 1;
  }

  v4 = (v4 + v23 + v24 + 1);
  v3 = *(a1 + 76);
  if ((v3 & 0x20) == 0)
  {
LABEL_22:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v25 = *(a1 + 48);
  if (!v25)
  {
    v25 = *(qword_102637DE0 + 48);
  }

  v26 = sub_100DEB100(v25, a2);
  v27 = v26;
  if (v26 >= 0x80)
  {
    v28 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2);
  }

  else
  {
    v28 = 1;
  }

  v4 = (v4 + v27 + v28 + 1);
  v3 = *(a1 + 76);
  if ((v3 & 0x40) == 0)
  {
LABEL_23:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v29 = *(a1 + 56);
  if (!v29)
  {
    v29 = *(qword_102637DE0 + 56);
  }

  v30 = sub_100DEBA38(v29, a2);
  v31 = v30;
  if (v30 >= 0x80)
  {
    v32 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30, a2);
  }

  else
  {
    v32 = 1;
  }

  v4 = (v4 + v31 + v32 + 1);
  if ((*(a1 + 76) & 0x80) != 0)
  {
LABEL_55:
    v33 = *(a1 + 64);
    if (!v33)
    {
      v33 = *(qword_102637DE0 + 64);
    }

    v34 = sub_100DEBF7C(v33, a2);
    v36 = v34;
    if (v34 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34, v35);
    }

    else
    {
      v37 = 1;
    }

    v4 = (v4 + v36 + v37 + 1);
  }

LABEL_61:
  *(a1 + 72) = v4;
  return v4;
}

uint64_t sub_1001117E8(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (v3)
    {
      v6 = *(a1 + 8);
      if (!v6)
      {
        v6 = *(qword_102637D90 + 8);
      }

      v7 = sub_1001F4208(v6, a2);
      v9 = v7;
      if (v7 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, v8);
      }

      else
      {
        v10 = 1;
      }

      v4 = v9 + v10 + 1;
      v3 = *(a1 + 24);
    }

    else
    {
      v4 = 0;
    }

    result = (v3 & 2) + v4 + ((v3 >> 1) & 2);
  }

  else
  {
    result = 0;
  }

  *(a1 + 20) = result;
  return result;
}

uint64_t sub_100111880(unsigned int *a1, unsigned int a2)
{
  v3 = a1[7];
  if (v3)
  {
    if (v3)
    {
      v6 = a1[2];
      if ((v6 & 0x80000000) != 0)
      {
        v4 = 11;
      }

      else if (v6 >= 0x80)
      {
        v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    v7 = (v3 & 2) + v4;
    if ((v3 & 4) != 0)
    {
      v8 = a1[3];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    if ((v3 & 8) != 0)
    {
      v10 = a1[5];
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = a1[7];
      }

      else
      {
        v11 = 2;
      }

      v7 += v11;
    }

    result = ((v3 >> 3) & 2) + v7;
  }

  else
  {
    result = 0;
  }

  a1[6] = result;
  return result;
}

uint64_t sub_100111974(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 76);
  if (v6)
  {
    v7 = *(result + 8);
    if (!v7)
    {
      v7 = *(qword_102637DE0 + 8);
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 76);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(qword_102637DE0 + 16);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_16:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(qword_102637DE0 + 24);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_19:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(qword_102637DE0 + 32);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_22:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(qword_102637DE0 + 40);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v12 = *(v5 + 48);
  if (!v12)
  {
    v12 = *(qword_102637DE0 + 48);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = *(v5 + 76);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_31;
  }

LABEL_28:
  v13 = *(v5 + 56);
  if (!v13)
  {
    v13 = *(qword_102637DE0 + 56);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  if ((*(v5 + 76) & 0x80) != 0)
  {
LABEL_31:
    v14 = *(v5 + 64);
    if (!v14)
    {
      v14 = *(qword_102637DE0 + 64);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v14, a2, a4);
  }

  return result;
}

uint64_t sub_100111B0C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 24);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 16), a2, a4);
    if ((*(v5 + 24) & 4) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

  v7 = *(result + 8);
  if (!v7)
  {
    v7 = *(qword_102637D90 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
  v6 = *(v5 + 24);
  if ((v6 & 2) != 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_9:
  v8 = *(v5 + 17);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v8, a2, a4);
}

void sub_100111BA8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B3958;
  sub_100111CD4(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100111C10(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_100111C48(a1);

  operator delete();
}

void sub_100111C48(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B3520;
  if (qword_102637D90 != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void *sub_100111CD4(void *result)
{
  if (qword_102637DE0 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[3];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[4];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[5];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[6];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[7];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    result = v1[8];
    if (result)
    {
      v9 = *(*result + 8);

      return v9();
    }
  }

  return result;
}

double sub_100111E84(uint64_t a1)
{
  *a1 = off_1024B3958;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  return result;
}

void sub_100111EBC(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B3598;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_100111F10(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onSimulatedNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onSimulatedNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001120EC(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001120EC(uint64_t a1, uint64_t a2, unsigned int *a3, uint64_t a4)
{
  v12 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v13);
  sub_10000B324(v7, v13[0].i64);
  v14 = 19;
  v13[0].i32[0] = 19;
  v8 = sub_10000AD98(&v14);
  v13[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v14 = 4;
  sub_10001E898(v10, &v14, v13, (a1 + 5220), &v12, a3, a4);
  sub_10010CA08(a1, *(a1 + 348), v11, a3, a4);
}

void sub_10011219C(uint64_t a1, CLConnection *this)
{
  v4 = *(a1 + 848);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = a1 + 848;
  do
  {
    v6 = *(v4 + 32);
    v7 = v6 >= this;
    v8 = v6 < this;
    if (v7)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * v8);
  }

  while (v4);
  if (v5 != a1 + 848 && *(v5 + 32) <= this)
  {

    sub_100112718(a1, this);
  }

  else
  {
LABEL_9:
    v9 = *(a1 + 872);
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = a1 + 872;
    do
    {
      v11 = *(v9 + 32);
      v7 = v11 >= this;
      v12 = v11 < this;
      if (v7)
      {
        v10 = v9;
      }

      v9 = *(v9 + 8 * v12);
    }

    while (v9);
    if (v10 != a1 + 872 && *(v10 + 32) <= this)
    {

      sub_1001431E8(a1, this);
    }

    else
    {
LABEL_17:
      v13 = *(a1 + 920);
      if (v13)
      {
        v14 = a1 + 920;
        do
        {
          v15 = *(v13 + 32);
          v7 = v15 >= this;
          v16 = v15 < this;
          if (v7)
          {
            v14 = v13;
          }

          v13 = *(v13 + 8 * v16);
        }

        while (v13);
        if (v14 != a1 + 920 && *(v14 + 32) <= this)
        {
          __p = *(v14 + 40);
          sub_10102C774(__p);
          sub_1006E2330(a1 + 936, &__p, &__p);
          sub_10045E8A0((a1 + 912), v14);
          v27 = v14;
LABEL_74:
          operator delete(v27);
          return;
        }
      }

      if (*(a1 + 960) == this)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_10028840C();
        }

        v24 = (a1 + 960);
        v25 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
        {
          CLConnection::getName(*v24);
          v26 = SBYTE3(v38) >= 0 ? &__p : __p;
          *buf = 136446210;
          *&buf[4] = v26;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "Client %{public}s disconnected", buf, 0xCu);
          if (SBYTE3(v38) < 0)
          {
            operator delete(__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10192E2C4(v24);
        }

        CLConnection::deferredDelete(*v24);
        *v24 = 0;
      }

      else
      {
        CLConnection::getUserName(this);
        v17 = sub_10045EF04(a1 + 888, &__p);
        if (SBYTE3(v38) < 0)
        {
          operator delete(__p);
        }

        if (a1 + 896 != v17)
        {
          CLConnection::getUserName(this);
          v18 = sub_10045EF04(a1 + 888, buf);
          sub_1001D2ED0((a1 + 888), v18);
          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }

          v19 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v42;
            v21 = *buf;
            CLConnection::getName(this);
            v22 = buf;
            if (v20 < 0)
            {
              v22 = v21;
            }

            if (v33 >= 0)
            {
              v23 = &v32;
            }

            else
            {
              v23 = v32;
            }

            __p = 68289538;
            v35 = 2082;
            v36 = "";
            v37 = 2082;
            v38 = v22;
            v39 = 2082;
            v40 = v23;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CoreLocationAgent disconnected, UserName:%{public, location:escape_only}s, Connection:%{public, location:escape_only}s}", &__p, 0x26u);
            if (v33 < 0)
            {
              operator delete(v32);
            }
          }

          goto LABEL_72;
        }

        if (qword_1025D47A0 != -1)
        {
          sub_10192D4D0();
        }

        v28 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          CLConnection::getName(this);
          if (v42 >= 0)
          {
            v29 = buf;
          }

          else
          {
            v29 = *buf;
          }

          __p = 68289282;
          v35 = 2082;
          v36 = "";
          v37 = 2082;
          v38 = v29;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got disconnection for unknown client, Connection:%{public, location:escape_only}s}", &__p, 0x1Cu);
          if (v42 < 0)
          {
            operator delete(*buf);
          }

          if (qword_1025D47A0 != -1)
          {
            sub_10192D4D0();
          }
        }

        v30 = off_1025D47A8;
        if (os_signpost_enabled(off_1025D47A8))
        {
          CLConnection::getName(this);
          if (v42 >= 0)
          {
            v31 = buf;
          }

          else
          {
            v31 = *buf;
          }

          __p = 68289282;
          v35 = 2082;
          v36 = "";
          v37 = 2082;
          v38 = v31;
          _os_signpost_emit_with_name_impl(dword_100000000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got disconnection for unknown client", "{msg%{public}.0s:Got disconnection for unknown client, Connection:%{public, location:escape_only}s}", &__p, 0x1Cu);
LABEL_72:
          if ((v42 & 0x80000000) == 0)
          {
            return;
          }

          v27 = *buf;
          goto LABEL_74;
        }
      }
    }
  }
}

void sub_1001126DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100112718(uint64_t *a1, CLConnection *a2)
{
  v2 = a1[106];
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = a2;
  v4 = a1;
  v5 = a1 + 106;
  do
  {
    v6 = *(v2 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v2;
    }

    v2 = *(v2 + 8 * v8);
  }

  while (v2);
  if (v5 == a1 + 106 || v5[4] > a2)
  {
LABEL_9:
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v9 = off_1025D47A8;
    v3 = &off_101C65000;
    v5 = "iter != fDaemonClients.end()";
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *v20 = 0;
      *&v20[4] = 2082;
      *&v20[6] = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "iter != fDaemonClients.end()";
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v10 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289539;
      *v20 = 0;
      *&v20[4] = 2082;
      *&v20[6] = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "iter != fDaemonClients.end()";
      _os_signpost_emit_with_name_impl(dword_100000000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "No client found for the connection", "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *v20 = 0;
      *&v20[4] = 2082;
      *&v20[6] = "";
      v21 = 2082;
      v22 = "assert";
      v23 = 2081;
      v24 = "iter != fDaemonClients.end()";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:No client found for the connection, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/ClientManagement/CLClientManager.mm", 2723, "handleDaemonClientDisconnection");
  }

  v11 = v5[5];
  if (qword_1025D47A0 != -1)
  {
    sub_10028840C();
  }

  v12 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = sub_1000344B0(v11, 0);
    *buf = 138543362;
    *v20 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "Client %{public}@ disconnected", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192E1BC(v11);
  }

  if (sub_100050B40(v11))
  {
    v14 = sub_1000344B0(v11, 0);
    UniqueRemotePid = CLConnection::getUniqueRemotePid(v3);
    sub_100057698(v4, v14, UniqueRemotePid, 0);
  }

  if (sub_100050B40(v11))
  {
    v16 = sub_1000344B0(v11, 0);
    if (([v16 isValidCKP] & 1) == 0)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }

      v17 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *v20 = 0;
        *&v20[4] = 2082;
        *&v20[6] = "";
        v21 = 2050;
        v22 = v11;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Disconnecting client has successful registration, but no valid CKP, CLDC:%{public}p}", buf, 0x1Cu);
      }
    }

    sub_100049444(v4, v16, v11);
    sub_10004ED44(v4, v11, 0);
  }

  v18 = v5[5];
  sub_10045E8A0(v4 + 105, v5);
  operator delete(v5);
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  if (!v4[107])
  {
    [*(v4[20] + 16) unregister:*(v4[20] + 8) forNotification:19];
  }
}

void sub_100112BB4(uint64_t a1)
{
  *a1 = off_102494BF8;
  *(a1 + 8) = &off_102494CD0;
  if (*(a1 + 72) == 1 && *(a1 + 91) == 1)
  {
    sub_1002FE214(*(a1 + 16), *(a1 + 48), 0, 1, 0, 0, 0, 0);
  }

  *(a1 + 152) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;

  *(a1 + 392) = 0;
  sub_100112EA4(a1);
  if (qword_1025D47A0 != -1)
  {
    sub_1019EEDF4();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v3[0] = 68290562;
    v3[1] = 0;
    v4 = 2082;
    v5 = "";
    v6 = 2082;
    v7 = "state_transition";
    v8 = 2082;
    v9 = "DaemonClient";
    v10 = 2050;
    v12 = 2082;
    v11 = a1;
    v13 = "lifecycle";
    v14 = 2050;
    v15 = a1;
    v16 = 2050;
    v17 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", v3, 0x4Eu);
  }

  sub_1001130E4((a1 + 400));
}

void sub_100112E98(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_100112EA4(uint64_t a1)
{
  if ((*(a1 + 64) & 0x14) != 0)
  {
    (*(*a1 + 176))(a1);
  }

  *(a1 + 48) = 0;
  *(a1 + 96) = 0;
  [*(a1 + 40) setValid:0];

  *(a1 + 40) = 0;
  for (i = *(a1 + 344); i; i = *i)
  {
    (*(*i[3] + 24))(i[3], a1 + 8);
  }

  sub_100113088(a1 + 328);
  sub_10004FF5C((a1 + 128));
  v3 = *(a1 + 264);
  if (v3)
  {
    CLConnection::deferredDelete(v3);
    *(a1 + 264) = 0;
  }

  v4 = *(a1 + 208);
  *(a1 + 208) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 216);
  *(a1 + 216) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  if (*(a1 + 276) == 1)
  {
    *(a1 + 276) = 0;
    v8 = sub_100146590(v6, v7);
    sub_1001464F8(v8, a1, 0, 0);
  }

  v9 = *(a1 + 224);
  *(a1 + 224) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 232);
  *(a1 + 232) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(a1 + 112) = 0;
}

void sub_100113088(uint64_t result)
{
  if (*(result + 24))
  {
    sub_100113174(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void **sub_100113138(void **a1)
{
  sub_100113174(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100113174(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        sub_100008080(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void **sub_1001131BC(void **a1)
{
  sub_1001131F8(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1001131F8(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t *sub_100113290(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10045E8A0(a1, a2);
  sub_1003C93BC((a2 + 5), a2[6]);
  operator delete(a2);
  return v3;
}

uint64_t sub_1001132D0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_100113290(a1, v4);
  return 1;
}

void sub_100113340(uint64_t result, uint64_t a2)
{
  v9 = a2;
  if ((*(result + 108) & 1) == 0)
  {
    v4 = *(result + 88);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = result + 80;
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 32) <= a2)
    {
      while (*(v6 + 56))
      {
        *buf = *(*(v6 + 40) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_101961988();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = (result + 8);
        if (*(result + 31) < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101963534();
      }
    }
  }
}

uint64_t sub_1001134E4(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10011400C(a1, v4);
  return 1;
}

uint64_t sub_100113554(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_1001134E4((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_101929490();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_101929490();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLBTLEFenceManager_Type::Notification, CLBTLEFenceManager_Type::NotificationData, char, std::string>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLBTLEFenceManager_Type::Notification, NotificationData_T = CLBTLEFenceManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = std::string]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

void sub_1001138F8(uint64_t a1)
{
  sub_100113930(a1);

  operator delete();
}

uint64_t sub_100113930(uint64_t a1)
{
  *a1 = off_102463DA8;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_1001139A0(_BYTE *result, void *a2)
{
  v9 = a2;
  if ((result[108] & 1) == 0)
  {
    v4 = *(result + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (result + 80);
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_1018E43B0();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = result + 8;
        if (result[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E4960(result, a2);
      }
    }
  }
}

uint64_t sub_100113B44(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10011753C((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_1018E43C4();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1018E43C4();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLCompanionNotifier_Type::Notification, CLCompanionNotifier_Type::NotificationData, char, CLCompanionNotifier_Type::RegistrationInfo>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLCompanionNotifier_Type::Notification, NotificationData_T = CLCompanionNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLCompanionNotifier_Type::RegistrationInfo]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

void *sub_100113EE8(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  for (result = *v8; result; result = *result)
  {
    v10 = result[1];
    if (v10 == v5)
    {
      if (result[2] == *a2)
      {
        return result;
      }
    }

    else
    {
      if (v6.u32[0] > 1uLL)
      {
        if (v10 >= *&v2)
        {
          v10 %= *&v2;
        }
      }

      else
      {
        v10 &= *&v2 - 1;
      }

      if (v10 != v7)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_10011400C(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10045E8A0(a1, a2);
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_100114050(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_1001134E4((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10196199C();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10196199C();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLFenceManager_Type::Notification, CLFenceManager_Type::NotificationData, char, std::string>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLFenceManager_Type::Notification, NotificationData_T = CLFenceManager_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = std::string]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

uint64_t sub_1001143F4(uint64_t a1)
{
  *a1 = off_10247C8E8;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_100114464(uint64_t a1)
{
  sub_10011449C(a1);

  operator delete();
}

uint64_t sub_10011449C(uint64_t a1)
{
  *a1 = off_1024D35F0;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_10011450C(_BYTE *result, void *a2)
{
  v9 = a2;
  if ((result[108] & 1) == 0)
  {
    v4 = *(result + 11);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = (result + 80);
    v6 = result + 88;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result + 88 && *(v6 + 8) <= a2)
    {
      while (*(v6 + 7))
      {
        *buf = *(*(v6 + 5) + 28);
        (*(*result + 112))(result, a2, buf);
      }

      sub_1001132D0(v5, &v9);
    }

    else
    {
LABEL_9:
      if (qword_1025D47F0 != -1)
      {
        sub_10192947C();
      }

      v7 = qword_1025D47F8;
      if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
      {
        v8 = result + 8;
        if (result[31] < 0)
        {
          v8 = *v8;
        }

        *buf = 136446466;
        v11 = v8;
        v12 = 1026;
        v13 = a2;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101929A24(result, a2);
      }
    }
  }
}

uint64_t sub_1001146B0(uint64_t result, uint64_t a2)
{
  v4 = a2;
  if (*(result + 248) == 1)
  {
    v2 = result;
    v3 = (*(*a2 + 24))(a2);
    sub_100114754((v2 + 24), &v3);
    sub_100114860((v2 + 160), &v4);
    return (*(*v2 + 48))(v2);
  }

  return result;
}

uint64_t sub_100114754(uint64_t **a1, int *a2)
{
  v3 = sub_1001147D0(a1, a2);
  if (v3 == v4)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  v5 = 0;
  do
  {
    v8 = sub_10045E8A0(a1, v6);
    operator delete(v6);
    ++v5;
    v6 = v8;
  }

  while (v8 != v7);
  return v5;
}

uint64_t *sub_1001147D0(uint64_t a1, int *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v3 + 28);
    if (v4 >= v5)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (v5 < v4)
  {
    v3 += 8;
    goto LABEL_7;
  }

  v7 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      if (*(v7 + 28) >= v4)
      {
        result = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 28) < v4));
    }

    while (v7);
  }

    ;
  }

  return result;
}

uint64_t sub_100114860(void *a1, void *a2)
{
  result = sub_100113EE8(a1, a2);
  if (result)
  {
    sub_1005465E4(a1, result);
    return 1;
  }

  return result;
}

void sub_100114898(uint64_t a1)
{
  *a1 = off_1024CAC08;
  sub_10004DAD8(a1, 0xFFFFFFFFLL);

  *(a1 + 216) = 0;
  *(a1 + 176) = 0;
  Current = CFAbsoluteTimeGetCurrent();
  if (*(a1 + 312) == 1)
  {
    v3 = Current;
    if (qword_1025D4790 != -1)
    {
      sub_100312440();
    }

    v4 = qword_1025D4798;
    v5 = os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG);
    if (v5)
    {
      v7 = *(a1 + 24);
      *v22 = 68289282;
      *&v22[8] = 2082;
      *&v22[10] = "";
      *&v22[18] = 2114;
      *&v22[20] = v7;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:ending metric session (LocationUpdateSession), Client:%{public, location:escape_only}@}", v22, 0x1Cu);
    }

    *(a1 + 376) = v3;
    *(a1 + 432) = *(a1 + 236);
    if (*(a1 + 58) == 1)
    {
      *(a1 + 504) = *(a1 + 504) + v3 - *(a1 + 64);
    }

    v8 = sub_1001EC310(v5, v6);
    sub_1001F262C(v8, (a1 + 312));
    memset(v22, 0, sizeof(v22));
    v9 = 0uLL;
    *(a1 + 312) = 0;
    *(a1 + 320) = 0xBFF0000000000000;
    v10 = (a1 + 328);
    if (*(a1 + 351) < 0)
    {
      operator delete(*v10);
      v9 = 0uLL;
    }

    *v10 = v9;
    *(a1 + 344) = v9;
    *(a1 + 360) = 1000;
    *(a1 + 372) = 0;
    *(a1 + 364) = 0;
    *(a1 + 376) = 0xBFF0000000000000;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0xBFF0000000000000;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 400) = _Q0;
    *(a1 + 416) = _Q0;
    *(a1 + 432) = 0;
    *(a1 + 496) = *&v22[63];
    *(a1 + 504) = 0xBFF0000000000000;
    v16 = *&v22[48];
    *(a1 + 465) = *&v22[32];
    *(a1 + 481) = v16;
    v17 = *&v22[16];
    *(a1 + 433) = *v22;
    *(a1 + 449) = v17;
  }

  [*(a1 + 576) invalidate];

  *(a1 + 576) = 0;
  if (*(a1 + 88) == 1)
  {
    [*(a1 + 72) releaseAccuracyEnablementAssertionForClient:*(a1 + 48)];
  }

  *(a1 + 72) = 0;
  *(a1 + 168) = 0;
  v18 = sub_100114CE4(a1, 0);
  [v18 invalidate:1];

  v19 = *(a1 + 112);
  if (v19)
  {
    [v19 invalidate];

    *(a1 + 112) = 0;
  }

  [*(a1 + 280) invalidate];

  *(a1 + 280) = 0;
  v20 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v21 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  [*(a1 + 48) setValid:0];

  *(a1 + 48) = 0;
  sub_1001130E4((a1 + 552));
}

void sub_100114CD8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100114CE4(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 96);
  v4 = *(a1 + 96);
  if (a2)
  {
    if (v4)
    {
      sub_101B13734((a1 + 96));
    }
  }

  else if (!v4)
  {
    return 0;
  }

  if (qword_1025D47A0 != -1)
  {
    sub_101B13524();
  }

  v6 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 96);
    v9[0] = 68290562;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "state_transition";
    v14 = 2082;
    v15 = "DaemonClient";
    v16 = 2050;
    v17 = a1;
    v18 = 2082;
    v19 = "visibilityAssertion";
    v20 = 2050;
    v21 = v7;
    v22 = 2050;
    v23 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:state transition, event:%{public, location:escape_only}s, state:%{public, location:escape_only}s, id:%{public}p, property:%{public, location:escape_only}s, old:%{public}p, new:%{public}p}", v9, 0x4Eu);
  }

  result = *v5;
  *v5 = a2;
  return result;
}

uint64_t sub_100114E74(uint64_t a1)
{
  *a1 = &off_1024BE7F0;

  return a1;
}

uint64_t sub_100114ED0(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10014588C(result);

    operator delete();
  }

  return result;
}

void sub_100114F1C(void *a1)
{
  sub_100114F54(a1);

  operator delete();
}

uint64_t sub_100114F54(void *a1)
{
  *a1 = off_1024575E0;
  sub_100005DA4();
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[6];
  a1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_100114E74(a1);
}

void sub_100115008(uint64_t a1)
{
  sub_1001143F4(a1);

  operator delete();
}

double sub_100115040(void **a1, uint64_t *__src, void **a3, uint64_t *a4, void ***a5)
{
  if (a1 == a3)
  {
    v7 = *a5;
    v8 = a5[1];
    v9 = __src;
  }

  else
  {
    v11 = a1 + 1;
    sub_100115104(&v15, __src, a5[1], *a1 + 512, *a5);
    for (i = v16; ; i = v16)
    {
      *a5 = i;
      if (v11 == a3)
      {
        break;
      }

      v13 = *v11++;
      sub_100115104(&v15, v13, a5[1], v13 + 512, *a5);
    }

    v9 = *v11;
    v7 = *a5;
    v8 = a5[1];
  }

  sub_100115104(&v15, v9, v8, a4, v7);
  result = *&v16;
  *a5 = v16;
  return result;
}

uint64_t *sub_100115104@<X0>(uint64_t **__return_ptr a1@<X8>, uint64_t *__src@<X0>, char *__dst@<X3>, uint64_t *a4@<X1>, void **a5@<X2>)
{
  v6 = a5;
  if (__src != a4)
  {
    v9 = __src;
    v6 = a5 + 1;
    v10 = *a5;
    while (1)
    {
      v11 = v10 - __dst + 4096;
      v12 = (a4 - v9) >> 4 >= v11 >> 4 ? v11 >> 4 : (a4 - v9) >> 4;
      if (v12)
      {
        __src = memmove(__dst, v9, 16 * v12);
      }

      v9 += 2 * v12;
      if (v9 == a4)
      {
        break;
      }

      v13 = *v6++;
      v10 = v13;
      __dst = v13;
    }

    __dst += 16 * v12;
    if (*(v6 - 1) + 4096 == __dst)
    {
      __dst = *v6;
    }

    else
    {
      --v6;
    }
  }

  *a1 = a4;
  a1[1] = v6;
  a1[2] = __dst;
  return __src;
}

uint64_t sub_1001151D0(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x100)
  {
    a2 = 1;
  }

  if (v5 < 0x200)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

float sub_100115240(float a1, float a2, float a3, float a4)
{
  v7 = a4 / 57.296;
  v8 = sinf(a4 / 57.296);
  v9 = a1;
  v10 = (v9 * -0.000101 + 0.019993) * sinf(v7 + v7) + v8 * (1.914602 - v9 * (v9 * 0.000014 + 0.004817));
  v11 = v10 + sinf(v7 * 3.0) * 0.000289;
  v12 = (v11 + a3) + -0.00569;
  v13 = v9 * -1934.136 + 125.04;
  *&v12 = v12 + sinf(v13 / 57.296) * -0.00478;
  v14 = sinf(a2 / 57.296);
  v15 = sinf(*&v12 / 57.296);
  return asinf(v14 * v15) * 57.296;
}

float sub_10011536C(float a1, float a2, float a3, float a4)
{
  v8 = tanf((a2 * 0.5) / 57.296);
  v9 = v8 * tanf((a2 / 57.296) * 0.5);
  v10 = 0.016708634 - a1 * (a1 * 0.0000001267 + 0.000042037);
  v11 = a4 / 57.296;
  v12 = sinf(v11);
  v13 = __sincosf_stret((a3 / 57.296) + (a3 / 57.296));
  v14 = ((((v10 * -2.0) * v12) + (v9 * v13.__sinval)) + ((v12 * ((v10 * 4.0) * v9)) * v13.__cosval)) + v9 * -0.5 * v9 * sinf((a3 / 57.296) * 4.0);
  v15 = v14 + v10 * -1.25 * v10 * sinf(v11 + v11);
  return (v15 * 57.296) * 4.0;
}

uint64_t sub_1001154A0(uint64_t a1, uint64_t a2)
{
  result = sub_100062F64(a1 - 352);
  if ((result & 1) == 0)
  {

    return sub_1001154F4(a1 + 256, a2);
  }

  return result;
}

uint64_t sub_1001154F4(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(CLPIndoorEvent);
  [v4 setType:12];
  [v4 setOutdoorUpdate:objc_alloc_init(CLPOutdoorUpdate)];
  [objc_msgSend(v4 "outdoorUpdate")];
  [objc_msgSend(v4 "outdoorUpdate")];
  [objc_msgSend(v4 "outdoorUpdate")];
  [objc_msgSend(v4 "outdoorUpdate")];
  [objc_msgSend(v4 "outdoorUpdate")];
  [*(a1 + 48) addObject:v4];

  return sub_100063090(a1);
}

void sub_1001155EC(uint64_t a1, const CLMotionActivity *a2, int *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101BC0EDC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLVehicleStateNotifier::onMotionStateUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101BC0EF0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLVehicleStateNotifier::onMotionStateUpdate, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001157B8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001157B8(uint64_t a1, uint64_t a2, const CLMotionActivity *a3, int *a4)
{
  if (a3->type == 9)
  {
    sub_100115824(a1, a4);
  }

  else if (a3->type == 1)
  {
    sub_101335640(a1, a4, a3);
  }

  sub_100115A7C(a1);

  sub_100115F40(a1);
}

void sub_100115824(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) <= 150.0 && vabdd_f64(CFAbsoluteTimeGetCurrent(), *(a2 + 76)) <= 30.0)
  {
    if (*(a1 + 1104) == 1)
    {
      v4 = *(a1 + 1232) + 60.0;
      if (v4 < sub_100117154(*(a1 + 1240), *(a1 + 1248), *(a2 + 4), *(a2 + 12)))
      {
        if (qword_1025D4250 != -1)
        {
          sub_101BC09A8();
        }

        v5 = qword_1025D4258;
        if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "VEHICULAR: too far from center of DNDLOI", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BC11F4();
        }

        sub_101335AC8(a1);
      }
    }

    else
    {
      v6 = (a1 + 1256);
      if (sub_100117154(*(a1 + 1256), *(a1 + 1264), *(a2 + 4), *(a2 + 12)) >= 10.0 || *(a1 + 1209) != 1 || *(a1 + 1264) == kCLLocationCoordinate2DInvalid.longitude || *v6 == kCLLocationCoordinate2DInvalid.latitude)
      {
        v8 = *(a2 + 4);
        *v6 = v8;
        if (*(a1 + 1152) == 2 || (*(a1 + 1208) & 1) != 0 || (*(a1 + 1209) & 1) == 0)
        {

          sub_1013362E8(a1, a2, *&v8);
        }
      }

      else
      {
        if (qword_1025D4250 != -1)
        {
          sub_101BC09A8();
        }

        v7 = qword_1025D4258;
        if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
        {
          *v9 = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "VEHICULAR: skipping repeated nearby location", v9, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BC1110();
        }
      }
    }
  }
}

uint64_t sub_100115A5C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_100115A7C(uint64_t a1)
{
  v2 = sub_100115ED8(a1);
  HIDWORD(v31) = v2;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1001CF1EC(v2, (a1 + 936), (a1 + 144));
  }

  if (*(a1 + 144) <= 0.0 || *(a1 + 152) >= 0.0)
  {
    v4 = 0;
    v5 = v3;
  }

  else
  {
    v4 = *(a1 + 1136) == 2;
    if (*(a1 + 1136) == 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = v3;
    }
  }

  if (CLMotionActivity::isTypeInVehicle())
  {
    v6 = *(a1 + 1032) & 0x1F;
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 144) > 0.0 && *(a1 + 152) < 0.0)
  {
    v7 = v6 | 0x10;
  }

  else
  {
    v7 = v6;
  }

  v9 = *(a1 + 1272) == 1 || *(a1 + 1280) == 1;
  v10 = *(a1 + 1152);
  if (v5 != *(a1 + 1144) || v3 != v10 || (v10 = v3, v7 != *(a1 + 1160)) || (v10 = v3, *(a1 + 1168) != v9))
  {
    if (*(a1 + 1136) == 3)
    {
      if (v3 != 2 || v10 == 2)
      {
        if (*(a1 + 144) > 0.0 && *(a1 + 152) < 0.0)
        {
          v12 = 0;
        }

        else
        {
          v12 = 2;
        }

        if (v10 != 2 || v3 == 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = v12;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 2;
    }

    sub_101335D3C(a1, v11);
    *(a1 + 1144) = v5;
    *(a1 + 1152) = v3;
    *(a1 + 1160) = v7;
    *(a1 + 1168) = v9;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4250 != -1)
    {
      sub_101BC09A8();
    }

    v15 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v16 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 1104);
      v18 = *(a1 + 1208);
      v19 = sub_100125670(*(a1 + 1112));
      v20 = *(a1 + 1140);
      *buf = 134350848;
      v49 = v3;
      v50 = 2050;
      v51 = v7;
      v52 = 1026;
      v53 = HIDWORD(v31);
      v54 = 1026;
      v55 = v17;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v15 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      v56 = 1026;
      v57 = v18;
      v58 = 1026;
      v59 = v19;
      v60 = 1026;
      v61 = v20;
      v62 = 1026;
      v63 = v4;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "VEHICULAR: state, %{public}lu, hints, %{public}lu, fpSuppress, %{public}u, inDNDLOI, %{public}u, inFastSuppressionRange, %{public}u, wifiPowered, %{public}u, disableFpSuppressDnD, %{public}u, dndOverride, %{public}u", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4250 != -1)
      {
        sub_101BC0F18();
      }

      v24 = qword_1025D4258;
      v25 = *(a1 + 1104);
      v26 = *(a1 + 1208);
      v27 = sub_100125670(*(a1 + 1112));
      v28 = *(a1 + 1140);
      v32 = 134350848;
      v33 = v3;
      v34 = 2050;
      v35 = v7;
      v36 = 1026;
      v37 = HIDWORD(v31);
      v38 = 1026;
      v39 = v25;
      v40 = 1026;
      v41 = v26;
      v42 = 1026;
      v43 = v27;
      v44 = 1026;
      v45 = v28;
      v46 = 1026;
      v47 = v4;
      LODWORD(v31) = 58;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v24, 0, "VEHICULAR: state, %{public}lu, hints, %{public}lu, fpSuppress, %{public}u, inDNDLOI, %{public}u, inFastSuppressionRange, %{public}u, wifiPowered, %{public}u, disableFpSuppressDnD, %{public}u, dndOverride, %{public}u", &v32, v31);
      v30 = v29;
      sub_100152C7C("Generic", 1, 0, 2, "void CLVehicleStateNotifier::updateVehicularDnd()", "%s\n", v29);
      if (v30 != buf)
      {
        free(v30);
      }

      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      v15 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v21 = *(a1 + 1576);
    if (v21)
    {
      sub_100C1E72C(v21, v5, v9, v7);
      if (sub_100C1E5FC(*(a1 + 1576)))
      {
        AnalyticsSendEvent();
        if (p_info[74] != -1)
        {
          sub_101BC0F18();
        }

        v22 = v15[75];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v49 = @"com.apple.carexperience.vehiclestate";
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "VEHICULAR: submitted metrics, %@", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BC12D8();
        }
      }
    }

    sub_1013351D0(a1);
    sub_101336A84(a1, v23);
  }
}

uint64_t sub_100115ED8(uint64_t a1)
{
  if (*(a1 + 1292))
  {
    v1 = 1;
  }

  else if (((*(a1 + 1104) & 1) != 0 || *(a1 + 1208) == 1) && sub_100125670(*(a1 + 1112)))
  {
    v1 = *(a1 + 1140) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_100115F40(uint64_t a1)
{
  v2 = sub_100115ED8(a1);
  v3 = v2;
  if (v2)
  {
    if (qword_1025D4250 != -1)
    {
      sub_101BC09A8();
    }

    v4 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[MotionCues] suppressed vehicular", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BC13D8();
    }

    v5 = 1;
  }

  else
  {
    v5 = sub_1001CF1EC(v2, (a1 + 936), (a1 + 144));
  }

  if (CLMotionActivity::isTypeInVehicle())
  {
    v6 = *(a1 + 1032) & 0x1F;
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 144) > 0.0 && *(a1 + 152) < 0.0)
  {
    v7 = v6 | 0x10;
  }

  else
  {
    v7 = v6;
  }

  v9 = *(a1 + 1272) == 1 || *(a1 + 1280) == 1;
  if (v5 != *(a1 + 1184) || v7 != *(a1 + 1192) || *(a1 + 1200) != v9)
  {
    if (*(a1 + 1136) == 3)
    {
      v10 = *(a1 + 1152);
      if (v5 != 2 || v10 == 2)
      {
        if (*(a1 + 144) > 0.0 && *(a1 + 152) < 0.0)
        {
          v12 = 0;
        }

        else
        {
          v12 = 2;
        }

        if (v10 != 2 || v5 == 2)
        {
          v11 = 0;
        }

        else
        {
          v11 = v12;
        }
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 2;
    }

    sub_101335D3C(a1, v11);
    *(a1 + 1184) = v5;
    *(a1 + 1192) = v7;
    *(a1 + 1200) = v9;
    if (qword_1025D4250 != -1)
    {
      sub_101BC0F18();
    }

    v14 = qword_1025D4258;
    if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 1104);
      v16 = *(a1 + 1208);
      v17 = sub_100125670(*(a1 + 1112));
      v18 = *(a1 + 1140);
      *buf = 134350592;
      v41 = v5;
      v42 = 2050;
      v43 = v7;
      v44 = 1026;
      v45 = v3;
      v46 = 1026;
      v47 = v15;
      v48 = 1026;
      v49 = v16;
      v50 = 1026;
      v51 = v17;
      v52 = 1026;
      v53 = v18;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "[MotionCues] VEHICULAR: motionCues, state, %{public}lu, hints, %{public}lu, fpSuppress, %{public}u, inDNDLOI, %{public}u, inFastSuppressionRange, %{public}u, wifiPowered, %{public}u, disableFpSuppressDnD, %{public}u", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4250 != -1)
      {
        sub_101BC0F18();
      }

      v19 = qword_1025D4258;
      v20 = *(a1 + 1104);
      v21 = *(a1 + 1208);
      v22 = sub_100125670(*(a1 + 1112));
      v23 = *(a1 + 1140);
      v26 = 134350592;
      v27 = v5;
      v28 = 2050;
      v29 = v7;
      v30 = 1026;
      v31 = v3;
      v32 = 1026;
      v33 = v20;
      v34 = 1026;
      v35 = v21;
      v36 = 1026;
      v37 = v22;
      v38 = 1026;
      v39 = v23;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v19, 0, "[MotionCues] VEHICULAR: motionCues, state, %{public}lu, hints, %{public}lu, fpSuppress, %{public}u, inDNDLOI, %{public}u, inFastSuppressionRange, %{public}u, wifiPowered, %{public}u, disableFpSuppressDnD, %{public}u", &v26, 52);
      v25 = v24;
      sub_100152C7C("Generic", 1, 0, 2, "void CLVehicleStateNotifier::updateMotionCues()", "%s\n", v24);
      if (v25 != buf)
      {
        free(v25);
      }
    }

    sub_101336920(a1);
  }
}

void sub_1001162D8(uint64_t a1, int *a2)
{
  v4 = *(a1 + 64);
  v2 = a1 + 64;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = v2;
    do
    {
      if (*(v3 + 32) >= v5)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v5));
    }

    while (v3);
    if (v6 != v2 && v5 >= *(v6 + 32))
    {
      v7 = *(v6 + 72);
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      if (v7)
      {
        sub_100008080(v7);
      }
    }
  }
}

uint64_t sub_100116328(uint64_t a1, int a2, int *a3, uint64_t a4)
{
  v19 = a2;
  if (*a3)
  {
    if (qword_1025D47B0 != -1)
    {
      sub_101A83044();
    }

    v6 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      *buf = &v19;
      v7 = [objc_msgSend(sub_1000488C8(a1 + 80 &v19];
      v8 = *a3;
      *buf = 68289538;
      *&buf[4] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = v7;
      v25 = 2050;
      v26 = v8;
      v9 = "{msg%{public}.0s:notifying, client:%{public, location:escape_only}s, notification:%{public, location:CLLocationProvider_Type::Notification}lld}";
      v10 = v6;
      v11 = 38;
LABEL_10:
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
    }
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_101A83044();
    }

    v13 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      *buf = &v19;
      v14 = [objc_msgSend(sub_1000488C8(a1 + 80 &v19];
      v15 = *(a4 + 20);
      v16 = *(a4 + 96);
      v17 = *(a4 + 512);
      *buf = 68290050;
      *&buf[4] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2082;
      v24 = v14;
      v25 = 2050;
      v26 = v15;
      v27 = 2050;
      v28 = v16;
      v29 = 2050;
      v30 = v17;
      v9 = "{msg%{public}.0s:notifying location, client:%{public, location:escape_only}s, accuracy:%{public}f, type:%{public, location:CLLocationType}lld, origin device:%{public, location:CLClientLocationOriginDevice}lld}";
      v10 = v13;
      v11 = 58;
      goto LABEL_10;
    }
  }

  return 1;
}

void sub_10011652C(uint64_t a1)
{
  sub_100106C38(a1, v11);
  *(a1 + 128) = *v11;
  *(a1 + 144) = v11[16];
  *(a1 + 184) = CFAbsoluteTimeGetCurrent();
  *v11 = 0;
  if (sub_10000608C(a1, v11, 1) && (*(a1 + 248) & 1) != 0)
  {
    *(a1 + 288) = 1;
    if (*(a1 + 144))
    {
      v2 = 3;
    }

    else
    {
      v2 = 4;
    }

    sub_100106DDC(a1, v2);
    sub_100106D34(a1, 1);
    if (*(a1 + 249) == 1)
    {
      v3 = *(a1 + 128);
    }

    else
    {
      *(a1 + 128) = 0x7FF0000000000000;
      v3 = INFINITY;
    }

    v7 = *(a1 + 184) + *(a1 + 120);
    if (vabdd_f64(v7, *(a1 + 160)) < v3)
    {
      sub_100106E44(a1);
      v8 = *(a1 + 128);
      v9 = INFINITY;
      if (v8 != INFINITY)
      {
        v10 = *(a1 + 160);
LABEL_22:
        v9 = v8 + v10;
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    if (vabdd_f64(v7, *(a1 + 168)) < *(a1 + 136))
    {
      sub_100106E44(a1);
      v8 = *(a1 + 168);
      v9 = -INFINITY;
      if (v8 != -INFINITY)
      {
        v10 = *(a1 + 136);
        goto LABEL_22;
      }

LABEL_23:
      sub_100109578(a1, v9);
      return;
    }

    sub_100FE8EB8(a1);
  }

  else
  {
    if (*(a1 + 288) == 1)
    {
      if (qword_1025D47A0 != -1)
      {
        sub_101AFD408();
      }

      v4 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        v5 = sub_10000608C(a1, v11, 1);
        v6 = *(a1 + 248);
        *v11 = 68289538;
        *&v11[8] = 2082;
        *&v11[10] = "";
        v12 = 1026;
        v13 = v5 != 0;
        v14 = 1026;
        v15 = v6;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Awareness Shutting down, hasClients:%{public}hhd, bigSwitch:%{public}hhd}", v11, 0x1Eu);
      }

      sub_100FE80C4(a1);
    }

    *(a1 + 288) = 0;
  }
}

void sub_100116760(_BYTE *a1, int *a2, _OWORD *a3, int a4, int a5)
{
  if ((a1[108] & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 8))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100FEA440(buf, a2, &v12);
      sub_10047D8C8((v7 - 8), buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 9);
    *(v9 + 8) = 0;
    *(v9 + 9) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 7))
    {
      sub_100116C94(a3);
    }
  }
}

void sub_100116C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

BOOL sub_100116D68(uint64_t a1, const char *a2, const void *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_100116DD4(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_100116DD4(uint64_t a1, const __CFString *a2, const void *a3)
{
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat64Type, a3);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018A9CF4();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, __p);
      v7 = v10 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB70C();
    }
  }

  return v5 != 0;
}

id sub_100116F50(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D6618();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80000 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D682C();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018D6618();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80000 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018D692C();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_100117158(uint64_t a1, unsigned int *a2)
{
  if (qword_1025D4620 != -1)
  {
    sub_101A60CCC();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    *buf = 67240192;
    LODWORD(v20) = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CellLoc, registerForNotificationInternal, notification, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A60F5C(a2);
  }

  sub_1000F4588();
  if (*a2 <= 4 && ((1 << *a2) & 0x19) != 0)
  {
    [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
    if (qword_1025D4620 != -1)
    {
      sub_101A60DCC();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100048D98(*a2);
      *buf = 136446210;
      v20 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CellFlow, locreq, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A61048(a2);
    }

    v8 = *(a1 + 136);
    sub_1001CBE2C(buf, @"kCellInfoNotification");
    [*(v8 + 16) register:*(v8 + 8) forNotification:sub_10006E830(buf registrationInfo:{v9), 0}];
    v10 = *(a1 + 136);
    sub_1001CBE2C(buf, @"kTimingAdvanceInfoNotification");
    [*(v10 + 16) register:*(v10 + 8) forNotification:sub_10006E830(buf registrationInfo:{v11), 0}];
    v12 = *(a1 + 136);
    sub_1001CBE2C(buf, @"kCLCellularTransmitStateNotification");
    [*(v12 + 16) register:*(v12 + 8) forNotification:sub_10006E830(buf registrationInfo:{v13), 0}];
    v14 = *(a1 + 136);
    sub_1001CBE2C(buf, @"kCellMonitorRefreshResultNotification");
    [*(v14 + 16) register:*(v14 + 8) forNotification:sub_10006E830(buf registrationInfo:{v15), 0}];
    [*(*(a1 + 144) + 16) register:*(*(a1 + 144) + 8) forNotification:3 registrationInfo:0];
    [*(*(a1 + 144) + 16) register:*(*(a1 + 144) + 8) forNotification:0 registrationInfo:0];
    if (!*a2)
    {
      sub_1001CBE30(a1, "register");
      *buf = 0;
      v16 = sub_10000608C(a1, buf, 1);
      if (qword_1025D4620 != -1)
      {
        sub_101A60DCC();
      }

      v17 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240192;
        LODWORD(v20) = v16;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "UclpMetric, registrant, %{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A6114C(v16);
      }

      AnalyticsSendEventLazy();
      if (*(a1 + 3504) == 0.0)
      {
        *(a1 + 3504) = CFAbsoluteTimeGetCurrent();
      }

      ++*(a1 + 3480);
    }
  }

  return 1;
}

uint64_t sub_10011753C(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_10045E8A0(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_1001175C0(uint64_t a1, unsigned int *a2, int **a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101919BEC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFilteredLocationController::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101919C00();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFilteredLocationController::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10011778C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10011778C(uint64_t a1, uint64_t a2, unsigned int *a3, int **a4)
{
  v6 = *a3;
  v27 = v6;
  if (v6 <= 2)
  {
    v27 = 0;
    if (*(a1 + 1032) >= 0.0 && *(a1 + 1040) >= 15.0)
    {
      v7 = sub_1000EEEC0(a1, a4);
      if (v7 < CFAbsoluteTimeGetCurrent() + 15.0)
      {
        if (qword_1025D47A0 != -1)
        {
          sub_101919C50();
        }

        v8 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
        {
          LODWORD(buf[0]) = 134217984;
          *(buf + 4) = v7 - CFAbsoluteTimeGetCurrent();
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "leaving location as it would turn on in %.3fs anyway", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10191A804();
        }

        return;
      }

      if (qword_1025D47A0 != -1)
      {
        sub_101919C50();
      }

      v9 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v7 - CFAbsoluteTimeGetCurrent();
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "turning off location requests and re-scheduling for %.3fs later", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191A6F4();
      }

      v10 = a1 + 168;
      [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:0];
      [*(*v10 + 16) unregister:*(*v10 + 8) forNotification:1];
      [*(*v10 + 16) unregister:*(*v10 + 8) forNotification:2];
      LODWORD(v25[0]) = 0;
      *&buf[0] = v25;
      *(sub_100007FA0(a1 + 1048, v25, &unk_101C66300, buf) + 32) = 0;
      LODWORD(v25[0]) = 1;
      *&buf[0] = v25;
      *(sub_100007FA0(a1 + 1048, v25, &unk_101C66300, buf) + 32) = 0;
      LODWORD(v25[0]) = 2;
      *&buf[0] = v25;
      *(sub_100007FA0(a1 + 1048, v25, &unk_101C66300, buf) + 32) = 0;
      [*(a1 + 1024) setNextFireTime:v7];
      v11 = [objc_msgSend(*(a1 + 32) "vendor")];
      v12 = *(a1 + 1104);
      if (v12 && (AbsoluteTime = CFDateGetAbsoluteTime(v12), AbsoluteTime < CFAbsoluteTimeGetCurrent()))
      {
        v14 = [v11 syncgetRegisterPowerKeepAlive:1 client:a1 dbgMessage:@"CLFilteredLocationController::onLocationNotification"];
        sub_10070FF98(a1);
        if (v14)
        {
          [v11 syncgetRegisterPowerKeepAlive:0 client:a1 dbgMessage:@"CLFilteredLocationController::onLocationNotification"];
        }
      }

      else
      {
        sub_10070FF98(a1);
      }
    }

    v6 = 0;
  }

  if (sub_10001CF3C())
  {
    sub_100022008(buf, a4);
    v15 = *(a1 + 1112);
    v25[6] = buf[6];
    v25[7] = buf[7];
    v26[0] = v29[0];
    *(v26 + 12) = *(v29 + 12);
    v25[2] = buf[2];
    v25[3] = buf[3];
    v25[4] = buf[4];
    v25[5] = buf[5];
    v25[0] = buf[0];
    v25[1] = buf[1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3321888768;
    v16[2] = sub_100710054;
    v16[3] = &unk_10246CB68;
    v16[4] = a1;
    v24 = v6;
    sub_100022008(&v17, buf);
    [v15 checkAuthorizationforLocation:v25 withReply:v16];

    if (v22)
    {
      sub_100008080(v22);
    }

    if (v21 < 0)
    {
      operator delete(__p);
    }

    if (v19)
    {
      sub_100008080(v19);
    }

    if (v18)
    {
      sub_100008080(v18);
    }

    if (v34)
    {
      sub_100008080(v34);
    }

    if (v33 < 0)
    {
      operator delete(v32);
    }

    if (v31)
    {
      sub_100008080(v31);
    }

    if (v30)
    {
      sub_100008080(v30);
    }
  }

  else
  {
    (*(*a1 + 152))(a1, &v27, a4, 1, 0xFFFFFFFFLL, 0);
    sub_100117C60(a1 + 184, &v27, a4);
  }
}

void sub_100117C20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100117C60(uint64_t a1, _DWORD *a2, int **a3)
{
  [*(a1 + 8) silo];
  if (*(a1 + 24) == 1)
  {
    if (*a2 >= 6u)
    {
      if (*a2 == 22)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B4363C();
        }

        v6 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v7 = *(a1 + 832);
          v8 = sub_10030D934(a3[101]);
          v9[0] = 67240448;
          v9[1] = v7;
          v10 = 2050;
          v11 = v8;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#LastConfLoc,Received kNotificationWifiLocationBatched,num,%{public}u,size,%{public}lu,not caching locations(no-op)", v9, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B43650(a1, a3);
        }
      }
    }

    else
    {

      sub_100107534(a1, a3, (a3 + 20), 0);
    }
  }
}

uint64_t sub_100117DD4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 8) silo];
  result = 0;
  v4 = *(a2 + 20);
  if (v4 <= 100.0 && v4 >= 0.0)
  {
    if (sub_100020608(*(a2 + 4), *(a2 + 12)))
    {
      if (sub_100020608(*(a2 + 100), *(a2 + 108)))
      {
        if (sub_10002807C(*(a2 + 4), *(a2 + 12)))
        {
          if (qword_1025D4620 != -1)
          {
            sub_101B4363C();
          }

          v5 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "#LastConfLoc,Skipping new location with coordinate in null-island", buf, 2u);
          }

          result = sub_10000A100(121, 0);
          if (result)
          {
            sub_101B4386C();
            return 0;
          }
        }

        else if (sub_10002807C(*(a2 + 100), *(a2 + 108)))
        {
          if (qword_1025D4620 != -1)
          {
            sub_101B4363C();
          }

          v8 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
          {
            *v9 = 0;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#LastConfLoc,Skipping new location with rawCoordinate in null-island", v9, 2u);
          }

          result = sub_10000A100(121, 0);
          if (result)
          {
            sub_101B43788();
            return 0;
          }
        }

        else
        {
          return 1;
        }
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101B4363C();
        }

        v7 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
        {
          *v11 = 0;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "#LastConfLoc,Skipping new location with invalid rawCoordinate", v11, 2u);
        }

        result = sub_10000A100(121, 0);
        if (result)
        {
          sub_101B43950();
          return 0;
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B4363C();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "#LastConfLoc,Skipping new location with invalid coordinate", v12, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101B43A34();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10011802C(uint64_t a1, uint64_t a2, int a3)
{
  [*(a1 + 8) silo];
  Current = CFAbsoluteTimeGetCurrent();
  v7 = (a1 + 104);
  v8 = *(a1 + 104);
  if (Current < v8)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B4363C();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v10 = *v7;
      *buf = 134349056;
      *&buf[4] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#LastConfLoc,#Warning Last confident location is in future,timestamp,%{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B43B18((a1 + 104));
    }

    *(a1 + 28) = 0xFFFF;
    *(a1 + 32) = 0u;
    *(a1 + 48) = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 64) = _Q0;
    *(a1 + 80) = _Q0;
    *(a1 + 96) = _Q0;
    *(a1 + 112) = 0;
    *(a1 + 116) = 0xBFF0000000000000;
    *(a1 + 124) = 0u;
    *(a1 + 140) = 0;
    *(a1 + 144) = 0xBFF0000000000000;
    *(a1 + 152) = 0x7FFFFFFF;
    *(a1 + 156) = 0;
    *(a1 + 164) = 0u;
    *(a1 + 180) = 0;
    sub_100021ED8(buf);
    memcpy((a1 + 184), buf, 0x201uLL);
    v15 = v57;
    v57 = 0u;
    v16 = *(a1 + 712);
    *(a1 + 704) = v15;
    if (v16)
    {
      sub_100008080(v16);
      v17 = *(&v57 + 1);
      v18 = v63[0];
      *(a1 + 784) = v62;
      *(a1 + 800) = v18;
      *(a1 + 809) = *(v63 + 9);
      v19 = v59;
      *(a1 + 720) = v58;
      *(a1 + 736) = v19;
      v20 = v61;
      *(a1 + 752) = v60;
      *(a1 + 768) = v20;
      if (v17)
      {
        sub_100008080(v17);
      }
    }

    else
    {
      v21 = v63[0];
      *(a1 + 784) = v62;
      *(a1 + 800) = v21;
      *(a1 + 809) = *(v63 + 9);
      v22 = v59;
      *(a1 + 720) = v58;
      *(a1 + 736) = v22;
      v23 = v61;
      *(a1 + 752) = v60;
      *(a1 + 768) = v23;
    }

    v8 = *v7;
  }

  v24 = *(a2 + 76);
  if (v24 < v8)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B43C10();
    }

    v25 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a2 + 76);
      v27 = *(a1 + 104);
      v28 = *(a2 + 20);
      v29 = *(a1 + 48);
      *buf = 134350080;
      *&buf[4] = v26;
      *&buf[12] = 2050;
      *&buf[14] = v27;
      *&buf[22] = 2050;
      *&buf[24] = v27 - v26;
      *&buf[32] = 2050;
      *&buf[34] = v28;
      *&buf[42] = 2050;
      *&buf[44] = v29;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "#LastConfLoc,Skipping new location with an older timestamp,%{public}.3f,cached,%{public}.3f,diff,%{public}.3f,hunc,%{public}.2f,cached_hunc,%{public}.2f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101B43C10();
      }

      v40 = *(a2 + 76);
      v41 = *(a1 + 104);
      v42 = *(a2 + 20);
      v43 = *(a1 + 48);
      v46 = 134350080;
      v47 = v40;
      v48 = 2050;
      v49 = v41;
      v50 = 2050;
      v51 = v41 - v40;
      v52 = 2050;
      v53 = v42;
      v54 = 2050;
      v55 = v43;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "#LastConfLoc,Skipping new location with an older timestamp,%{public}.3f,cached,%{public}.3f,diff,%{public}.3f,hunc,%{public}.2f,cached_hunc,%{public}.2f", &v46, 52);
      v45 = v44;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLastConfidentLocation::isPreviousLocationPreferred(const CLDaemonLocation &, BOOL)", "%s\n", v44);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    return 1;
  }

  v32 = *(a1 + 48);
  v31 = (a1 + 48);
  if (v32 < 65.0)
  {
    v34 = *(a2 + 20);
    v33 = (a2 + 20);
    v35 = v34 >= 65.0 ? 1 : a3;
    if (v24 < v8 + 10.0 && v35 != 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101B43C10();
      }

      v37 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v38 = *v33;
        v39 = *v31;
        *buf = 134349312;
        *&buf[4] = v38;
        *&buf[12] = 2050;
        *&buf[14] = v39;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEBUG, "#LastConfLoc,Skipping new location since cached location is more confident,hunc,%{public}.2f,cached_hunc,%{public}.2f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B43C38(v33, v31);
      }

      return 1;
    }
  }

  return 0;
}

void sub_1001184A8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A83080();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLStreamingAwareLocationProvider::onLocalLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A83094();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStreamingAwareLocationProvider::onLocalLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100118674(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100118674(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D47B0 != -1)
  {
    sub_101A83044();
  }

  v7 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v8 = *a3;
    v12[0] = 68289282;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2050;
    v16 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received local notification, notification:%{public, location:CLLocationProvider_Type::Notification}lld}", v12, 0x1Cu);
  }

  v9 = *(a1 + 128);
  Current = CFAbsoluteTimeGetCurrent();
  return sub_10011877C(v9, 0, a3, a4, Current);
}

uint64_t sub_10011877C(uint64_t a1, unsigned int a2, _DWORD *a3, uint64_t a4, double a5)
{
  v8 = a2;
  v48 = a2;
  if (*a3 >= 3u)
  {
    if (*a3 != 9)
    {
      goto LABEL_16;
    }

    if (qword_1025D47B0 != -1)
    {
      sub_101A7D5D0();
    }

    v13 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v8;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Source no longer available, source:%{public, location:CLStreamingAwareLocationProviderStateMachine::LocationSource}lld}", buf, 0x1Cu);
    }

    *buf = &v48;
    v11 = sub_1000B91DC(a1 + 40, &v48, &unk_101C66300, buf);
    v12 = 1;
  }

  else
  {
    if (qword_1025D47B0 != -1)
    {
      sub_101A7D5D0();
    }

    v10 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v8;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Source now available, source:%{public, location:CLStreamingAwareLocationProviderStateMachine::LocationSource}lld}", buf, 0x1Cu);
    }

    if (*(a4 + 96) == 1)
    {
      *buf = &v48;
      v11 = sub_1000B91DC(a1 + 40, &v48, &unk_101C66300, buf);
      v12 = 3;
    }

    else
    {
      *buf = &v48;
      v11 = sub_1000B91DC(a1 + 40, &v48, &unk_101C66300, buf);
      v12 = 2;
    }
  }

  *(v11 + 8) = v12;
  v8 = v48;
LABEL_16:
  if (v8 == 1)
  {
    v14 = (a1 + 64);
    v15 = a1 + 40;
    v16 = (a1 + 72);
    if (*(a1 + 72) - *(a1 + 64) < 0x2CDuLL)
    {
      *buf = &v48;
      v20 = sub_1000B91DC(v15, &v48, &unk_101C66300, buf);
      v22 = *(a1 + 72);
      v21 = *(a1 + 80);
      if (v22 >= v21)
      {
        v24 = *v14;
        v25 = v22 - *v14;
        v26 = (v25 >> 2) + 1;
        if (v26 >> 62)
        {
          sub_10028C64C();
        }

        v27 = v21 - v24;
        if (v27 >> 1 > v26)
        {
          v26 = v27 >> 1;
        }

        v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
        v29 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v28)
        {
          v29 = v26;
        }

        if (v29)
        {
          sub_1000B85D0(a1 + 64, v29);
        }

        v30 = (4 * (v25 >> 2));
        *v30 = *(v20 + 8);
        v23 = v30 + 1;
        memcpy(0, v24, v25);
        v31 = *(a1 + 64);
        *(a1 + 64) = 0;
        *(a1 + 72) = v23;
        *(a1 + 80) = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v22 = *(v20 + 8);
        v23 = v22 + 4;
      }

      *(a1 + 72) = v23;
      v19 = 180;
    }

    else
    {
      *buf = &v48;
      v17 = sub_1000B91DC(v15, &v48, &unk_101C66300, buf);
      v18 = *(a1 + 88);
      *(*(a1 + 64) + 4 * (v18 % 180)) = *(v17 + 8);
      v19 = v18 + 1;
    }

    *(a1 + 88) = v19;
    if (qword_1025D47B0 != -1)
    {
      sub_101A7D564();
    }

    v32 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
    {
      v33 = *v16;
      if (*v14 == *v16)
      {
        v40 = 0;
        v34 = 0;
        v37 = 0;
        v43 = 0;
      }

      else
      {
        v34 = 0;
        v35 = *v14;
        do
        {
          v36 = *v35;
          v35 += 4;
          if (v36 == 3)
          {
            ++v34;
          }
        }

        while (v35 != v33);
        v37 = 0;
        v38 = *v14;
        do
        {
          v39 = *v38;
          v38 += 4;
          if (v39 == 2)
          {
            ++v37;
          }
        }

        while (v38 != v33);
        v40 = 0;
        v41 = *v14;
        do
        {
          v42 = *v41;
          v41 += 4;
          if (v42 == 1)
          {
            ++v40;
          }
        }

        while (v41 != v33);
        v43 = 0;
        v44 = *v14;
        do
        {
          v45 = *v44;
          v44 += 4;
          if (!v45)
          {
            ++v43;
          }
        }

        while (v44 != v33);
      }

      v46 = (v33 - *v14) >> 2;
      *buf = 134350080;
      *&buf[4] = v34;
      *&buf[12] = 2050;
      *&buf[14] = v37;
      *&buf[22] = 2050;
      *&buf[24] = v40;
      v50 = 2050;
      v51 = v43;
      v52 = 2050;
      v53 = v46;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "Companion Availability Statistics,ahq,%{public}ld,a,%{public}ld,ua,%{public}ld,uk,%{public}ld,s,%{public}zu", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7D8DC((a1 + 64), (a1 + 72));
    }
  }

  (*(*a1 + 96))(a1, a5);
  return (*(*a1 + 104))(a1, v48, a3, a4, a5);
}

uint64_t sub_100118CD4(uint64_t a1, unsigned int a2)
{
  if (a2 == 39)
  {
    v2 = 0;
  }

  else
  {
    v2 = a2;
  }

  if (a2 < 6)
  {
    v2 = 0;
  }

  v4 = v2;
  return (*(*(a1 - 120) + 152))();
}

uint64_t sub_100118D68(uint64_t a1, __int128 *a2)
{
  *&v24[24] = 0;
  v11 = sub_100040914(a1, *(a1 + 352));
  v4 = a2[11];
  v22 = a2[10];
  v23 = v4;
  *v24 = a2[12];
  *&v24[14] = *(a2 + 206);
  v5 = a2[7];
  v18 = a2[6];
  v19 = v5;
  v6 = a2[9];
  v20 = a2[8];
  v21 = v6;
  v7 = a2[3];
  v14 = a2[2];
  v15 = v7;
  v8 = a2[5];
  v16 = a2[4];
  v17 = v8;
  v9 = a2[1];
  v12 = *a2;
  v13 = v9;
  return sub_100013B00(a1, 51, &v11, 232);
}

void sub_100118E40(uint64_t a1, void *a2)
{
  if ([a2 referenceFrame] == 1)
  {
    v5 = sub_10000B1F8(1, v4);
    sub_10000B230(buf);
    sub_10000B324(v5, buf[0].i64);
    v11[0] = 24;
    buf[0].i32[0] = 24;
    buf[0].i32[1] = sub_10000AD98(v11);
    v12 = 21;
    v11[0] = 21;
    v6 = sub_10000AD98(&v12);
    v11[1] = v6;
    v8 = sub_10000AE98(v6, v7);
    sub_100118FBC(v8, buf, v11, a2);
    v9 = *(a1 + 304);
    if (v9)
    {
      sub_10011A2B8(v9, a2);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1002976C8();
    }

    v10 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      buf[0].i32[0] = 67240192;
      buf[0].i32[1] = [a2 referenceFrame];
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "LocationController,onBackgroundInertialOdometryState, unsupported reference frame: %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018FBC80(a2);
    }
  }
}

void sub_100118FBC(uint64_t a1, int32x4_t *a2, unsigned int *a3, void *a4)
{
  if (*(a1 + 16))
  {
    if (vmaxv_u16(vmovn_s32(vceqzq_s32(*a2))))
    {
      if (qword_1025D4600 != -1)
      {
        sub_100287074();
      }

      v6 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        if (a2->i32[0])
        {
          v7 = a2->i32[1] == 0;
        }

        else
        {
          v7 = 1;
        }

        v8 = !v7;
        if (*a3)
        {
          v9 = a3[1] == 0;
        }

        else
        {
          v9 = 1;
        }

        v10 = !v9;
        *buf = 67109376;
        *v89 = v8;
        *&v89[4] = 1024;
        *&v89[6] = v10;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,InertialOdometry,silo entry invalid,from_valid,%d,to_valid,%d", buf, 0xEu);
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
          v11 = a2->i32[1] == 0;
        }

        else
        {
          v11 = 1;
        }

        v12 = !v11;
        if (*a3)
        {
          v13 = a3[1] == 0;
        }

        else
        {
          v13 = 1;
        }

        v14 = !v13;
        v83[0] = 67109376;
        v83[1] = v12;
        v84 = 1024;
        v85 = v14;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#locctl,#rec,recordMessage,InertialOdometry,silo entry invalid,from_valid,%d,to_valid,%d", v83, 14);
        v16 = v15;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CMOdometry *)", "%s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }
    }

    else
    {
      v19 = sub_10000AED0();
      v21 = sub_10000B1F8(v19, v20);
      sub_10000AED4(v21, v79);
      v78 = 4;
      sub_10000AFE4(v83, &v78, a2, a3, v79);
      v87 |= 2u;
      v22 = v86;
      if (!v86)
      {
        operator new();
      }

      *(v86 + 492) |= 0x800u;
      v23 = *(v22 + 352);
      if (!v23)
      {
        operator new();
      }

      *(v23 + 200) |= 0x80000u;
      v24 = *(v23 + 152);
      if (!v24)
      {
        operator new();
      }

      *(v24 + 28) |= 1u;
      *(v24 + 8) = -1;
      if (!sub_100437D64(1u))
      {
        __assert_rtn("set_notification_type", "CLPLocationController.pb.h", 13462, "::CLP::LogEntry::PrivateData::InertialOdometryNotification_NotificationType_IsValid(value)");
      }

      v25 = *(v24 + 28);
      *(v24 + 12) = 1;
      *(v24 + 28) = v25 | 6;
      v26 = *(v24 + 16);
      if (!v26)
      {
        operator new();
      }

      v27 = v26[5];
      v28 = v26[4];
      if (v28 >= v27)
      {
        if (v27 == v26[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v26 + 2), v27 + 1);
          v27 = v26[5];
        }

        v26[5] = v27 + 1;
        sub_10011A6E0();
      }

      v29 = *(v26 + 1);
      v26[4] = v28 + 1;
      sub_1001199E4(a4, *(v29 + 8 * v28));
      v30 = sub_10000BFC0(a1, v83);
      if (*(a1 + 8) == 1)
      {
        v31 = v30;
        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        v32 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          sub_101322EE0(&v78, v80);
          if (v80[23] >= 0)
          {
            v33 = v80;
          }

          else
          {
            v33 = *v80;
          }

          LODWORD(v71[0]) = a2->i32[0];
          sub_1013230DC(v71, v76);
          if (v77 >= 0)
          {
            v34 = v76;
          }

          else
          {
            v34 = v76[0];
          }

          v73 = *a3;
          v35 = __p;
          v36 = sub_1013230DC(&v73, __p);
          if (v75 < 0)
          {
            v35 = __p[0];
          }

          v38 = sub_10000B1F8(v36, v37);
          v39 = sub_100125220(v38);
          *buf = 67110146;
          *v89 = v31;
          *&v89[4] = 2080;
          *&v89[6] = v33;
          *&v89[14] = 2080;
          *&v89[16] = v34;
          *&v89[24] = 2080;
          *&v89[26] = v35;
          v90 = 2050;
          v91 = v39;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#locctl,#rec,recordMessage,InertialOdometry,success,%d,message_type,%s,from,%s,to,%s,propagation_us,%{public}.3f", buf, 0x30u);
          if (v75 < 0)
          {
            operator delete(__p[0]);
          }

          if (v77 < 0)
          {
            operator delete(v76[0]);
          }

          if ((v80[23] & 0x80000000) != 0)
          {
            operator delete(*v80);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D8D04(buf);
          v49 = qword_1025D4608;
          sub_101322EE0(&v78, v76);
          if (v77 >= 0)
          {
            v50 = v76;
          }

          else
          {
            v50 = v76[0];
          }

          v73 = a2->i32[0];
          v51 = __p;
          sub_1013230DC(&v73, __p);
          if (v75 < 0)
          {
            v51 = __p[0];
          }

          v70 = *a3;
          v52 = v71;
          v53 = sub_1013230DC(&v70, v71);
          if (v72 < 0)
          {
            v52 = v71[0];
          }

          v55 = sub_10000B1F8(v53, v54);
          v56 = sub_100125220(v55);
          *v80 = 67110146;
          *&v80[4] = v31;
          *&v80[8] = 2080;
          *&v80[10] = v50;
          *&v80[18] = 2080;
          *&v80[20] = v51;
          *&v80[28] = 2080;
          *&v80[30] = v52;
          v81 = 2050;
          v82 = v56;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 2, "#locctl,#rec,recordMessage,InertialOdometry,success,%d,message_type,%s,from,%s,to,%s,propagation_us,%{public}.3f", v80, 48);
          v58 = v57;
          if (v72 < 0)
          {
            operator delete(v71[0]);
          }

          if (v75 < 0)
          {
            operator delete(__p[0]);
          }

          if (v77 < 0)
          {
            operator delete(v76[0]);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CMOdometry *)", "%s\n", v58);
          if (v58 != buf)
          {
            free(v58);
          }
        }

        if (qword_1025D4600 != -1)
        {
          sub_1018D8CDC();
        }

        v40 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v41 = [a4 description];
          v43 = sub_10000B1F8(v41, v42);
          *v80 = 0;
          v44 = sub_10001A6B0(v43, v80);
          v47 = sub_10000B1F8(v45, v46);
          v48 = sub_100125220(v47);
          *buf = 138543874;
          *v89 = v41;
          *&v89[8] = 2050;
          *&v89[10] = v44;
          *&v89[18] = 2050;
          *&v89[20] = v48;
          _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "#locctl,#rec,#pbio CMOdometry, %{public}@, now, %{public}.3f, propagation_us, %{public}.3f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018D8D04(buf);
          v59 = qword_1025D4608;
          v60 = [a4 description];
          v62 = sub_1000281DC(v60, v61);
          v65 = sub_10000B1F8(v63, v64);
          v66 = sub_100125220(v65);
          *v80 = 138543874;
          *&v80[4] = v60;
          *&v80[12] = 2050;
          *&v80[14] = v62;
          *&v80[22] = 2050;
          *&v80[24] = v66;
          LODWORD(v69) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v59, 2, "#locctl,#rec,#pbio CMOdometry, %{public}@, now, %{public}.3f, propagation_us, %{public}.3f", v80, v69);
          v68 = v67;
          sub_100152C7C("Generic", 1, 0, 2, "void CLLocationControllerRecorder::recordMessage(const CLLocationControllerRecorder_Types::Silo &, const CLLocationControllerRecorder_Types::Silo &, const CMOdometry *)", "%s\n", v67);
          if (v68 != buf)
          {
            free(v68);
          }
        }
      }

      sub_10000CE1C(v83);
    }
  }
}

void *sub_100119958(void *result)
{
  *result = &off_1024B49C0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_10011997C(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_1024B4948;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

double sub_1001199A8(uint64_t a1)
{
  *a1 = off_102454750;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 70) = 0u;
  return result;
}

void sub_1001199E4(void *a1, uint64_t a2)
{
  if (a2)
  {
    [a1 timestamp];
    *(a2 + 92) |= 2u;
    *(a2 + 16) = v4;
    [a1 rotationArbitraryToTrueNorth];
    if (v5 != 0.0)
    {
      *(a2 + 92) |= 0x40000u;
      *(a2 + 80) = v5;
    }

    if ([a1 deltaPositionX])
    {
      [objc_msgSend(a1 "deltaPositionX")];
      *(a2 + 92) |= 8u;
      *(a2 + 28) = v6;
    }

    if ([a1 deltaPositionY])
    {
      [objc_msgSend(a1 "deltaPositionY")];
      *(a2 + 92) |= 0x10u;
      *(a2 + 32) = v7;
    }

    if ([a1 deltaPositionZ])
    {
      [objc_msgSend(a1 "deltaPositionZ")];
      *(a2 + 92) |= 0x20u;
      *(a2 + 36) = v8;
    }

    if ([a1 deltaVelocityX])
    {
      [objc_msgSend(a1 "deltaVelocityX")];
      *(a2 + 92) |= 0x40u;
      *(a2 + 40) = v9;
    }

    if ([a1 deltaVelocityY])
    {
      [objc_msgSend(a1 "deltaVelocityY")];
      *(a2 + 92) |= 0x80u;
      *(a2 + 44) = v10;
    }

    if ([a1 deltaVelocityZ])
    {
      [objc_msgSend(a1 "deltaVelocityZ")];
      *(a2 + 92) |= 0x100u;
      *(a2 + 48) = v11;
    }

    if ([a1 quaternionX])
    {
      [objc_msgSend(a1 "quaternionX")];
      *(a2 + 92) |= 0x200u;
      *(a2 + 52) = v12;
    }

    if ([a1 quaternionY])
    {
      [objc_msgSend(a1 "quaternionY")];
      *(a2 + 92) |= 0x400u;
      *(a2 + 56) = v13;
    }

    if ([a1 quaternionZ])
    {
      [objc_msgSend(a1 "quaternionZ")];
      *(a2 + 92) |= 0x800u;
      *(a2 + 60) = v14;
    }

    if ([a1 quaternionW])
    {
      [objc_msgSend(a1 "quaternionW")];
      *(a2 + 92) |= 0x1000u;
      *(a2 + 64) = v15;
    }

    *v22 = [a1 referenceFrame];
    v16 = sub_100119D90(v22);
    if (!sub_10041ECEC(v16))
    {
      sub_101882FD0();
    }

    *(a2 + 92) |= 0x2000u;
    *(a2 + 68) = v16;
    *v22 = [a1 staticFlag];
    v17 = sub_100119EA8(v22);
    if (!sub_10041ECF8(v17))
    {
      sub_101882FFC();
    }

    *(a2 + 92) |= 0x20000u;
    *(a2 + 76) = v17;
    v18 = [a1 isDOTBiasChangePossible];
    *(a2 + 92) |= 0x80000u;
    *(a2 + 75) = v18;
    v19 = [a1 isMounted];
    *(a2 + 92) |= 0x100000u;
    *(a2 + 84) = v19;
    v20 = [a1 isZUPT];
    *(a2 + 92) |= 0x200000u;
    *(a2 + 85) = v20;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v21 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v22 = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "ConvertCMOdometryStateToProtobuf,invalid pMsg pointer", v22, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B8C9FC();
    }
  }
}

uint64_t sub_100119D90(uint64_t *a1)
{
  if (*a1 == 1)
  {
    return 1;
  }

  if (*a1 == 8)
  {
    return 2;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "ConvertCMInertialOdometryReferenceFrameTypeToProtobuf,unhandled type,%{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B8C824(a1);
    return 0;
  }

  return result;
}

uint64_t sub_100119EA8(unint64_t *a1)
{
  if (*a1 < 3)
  {
    return *a1 + 1;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v3 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v4 = *a1;
    v6[0] = 67240192;
    v6[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "ConvertCMInertialOdometryStaticIndicatorTypeToProtobuf,unhandled type,%{public}d", v6, 8u);
  }

  v5 = sub_10000A100(121, 0);
  result = 0;
  if (v5)
  {
    sub_101B8C910(a1);
    return 0;
  }

  return result;
}

uint64_t sub_100119FB0(uint64_t a1, unsigned int a2)
{
  LOBYTE(v3) = *(a1 + 28);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_26;
  }

  if (*(a1 + 28))
  {
    v5 = *(a1 + 8);
    if ((v5 & 0x80000000) != 0)
    {
      v4 = 11;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v5 >= 0x80)
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2) + 1;
      v3 = *(a1 + 28);
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v4 = 2;
      if ((v3 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 28) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v6 = *(a1 + 12);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 11;
  }

  else if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
    v3 = *(a1 + 28);
  }

  else
  {
    v7 = 2;
  }

  v4 = (v7 + v4);
LABEL_19:
  if ((v3 & 4) != 0)
  {
    v8 = *(a1 + 16);
    if (!v8)
    {
      v8 = *(qword_102637EE8 + 16);
    }

    v9 = sub_10011A4C0(v8, a2);
    v11 = v9;
    if (v9 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, v10);
    }

    else
    {
      v12 = 1;
    }

    v4 = (v4 + v11 + v12 + 1);
  }

LABEL_26:
  *(a1 + 24) = v4;
  return v4;
}

uint64_t sub_10011A0AC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
    if ((*(v5 + 28) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(1, *(result + 8), a2, a4);
  v6 = *(v5 + 28);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(qword_102637EE8 + 16);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v7, a2, a4);
}

void sub_10011A148(wireless_diagnostics::google::protobuf::MessageLite *this)
{
  *this = &off_1024B49C0;
  if (qword_102637EE8 != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

void sub_10011A1D4(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10011A260(a1);

  operator delete();
}

void sub_10011A20C(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102454750;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_10011A260(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024B4948;
  sub_100027438(a1 + 8);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

void sub_10011A2B8(uint64_t a1, void *a2)
{
  v11 = 0.0;
  v4 = sub_10000B1F8(a1, a2);
  sub_10000AED4(v4, v10);
  if (sub_100125300(v10, &v11))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AB30B4();
    }

    v5 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      [a2 rotationArbitraryToTrueNorth];
      *buf = 134349056;
      v13 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "#pbio CLProactiveInertialOdometryManager::onBackgroundInertialOdometryState, CMOdometry::rotationArbitraryToTrueNorth, %{public}.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AB3418();
    }

    [a2 timestamp];
    v9 = v7 + v11;
    sub_10011F14C(a1, &v9, a2, buf);
    sub_10011F8F0(a1, buf);
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AB30B4();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = *&a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#pbio cannot compute fMachContinuousToCFAbsoluteOffset_s, discarding sample %@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AB3320(a2);
    }
  }
}

uint64_t sub_10011A4C0(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      v5 = sub_10011A540(*(*(a1 + 8) + 8 * v4), a2);
      v6 = v5;
      if (v5 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5, a2);
      }

      else
      {
        v7 = 1;
      }

      v3 = (v6 + v3 + v7);
      ++v4;
    }

    while (v4 < *(a1 + 16));
  }

  *(a1 + 32) = v3;
  return v3;
}

uint64_t sub_10011A540(unsigned int *a1, unsigned int a2)
{
  v3 = a1[23];
  if (v3)
  {
    v4 = ((v3 << 31) >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 8) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x20) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x40) != 0)
    {
      v4 += 5;
    }

    if ((v3 & 0x80) != 0)
    {
      result = v4 + 5;
    }

    else
    {
      result = v4;
    }
  }

  else
  {
    result = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v6 = result + 5;
    if ((v3 & 0x100) == 0)
    {
      v6 = result;
    }

    if ((v3 & 0x200) != 0)
    {
      v6 += 5;
    }

    if ((v3 & 0x400) != 0)
    {
      v6 += 5;
    }

    if ((v3 & 0x800) != 0)
    {
      v6 += 5;
    }

    if ((v3 & 0x1000) != 0)
    {
      v7 = v6 + 5;
    }

    else
    {
      v7 = v6;
    }

    if ((v3 & 0x2000) != 0)
    {
      v8 = a1[17];
      if ((v8 & 0x80000000) != 0)
      {
        v9 = 11;
      }

      else if (v8 >= 0x80)
      {
        v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8, a2) + 1;
        v3 = a1[23];
      }

      else
      {
        v9 = 2;
      }

      v7 += v9;
    }

    v10 = ((v3 >> 13) & 2) + v7;
    if ((v3 & 0x8000) != 0)
    {
      result = v10 + 3;
    }

    else
    {
      result = v10;
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v11 = result + 3;
    }

    else
    {
      v11 = result;
    }

    if ((v3 & 0x20000) != 0)
    {
      v12 = a1[19];
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 12;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 2;
        v3 = a1[23];
      }

      else
      {
        v13 = 3;
      }

      v11 += v13;
    }

    v14 = v11 + 6;
    if ((v3 & 0x40000) == 0)
    {
      v14 = v11;
    }

    if ((v3 & 0x80000) != 0)
    {
      v14 += 3;
    }

    if ((v3 & 0x100000) != 0)
    {
      v14 += 3;
    }

    if ((v3 & 0x200000) != 0)
    {
      result = v14 + 3;
    }

    else
    {
      result = v14;
    }
  }

  a1[22] = result;
  return result;
}

uint64_t sub_10011A744(uint64_t result, wireless_diagnostics::google::protobuf::MessageLite *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  if (*(result + 16) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

uint64_t sub_10011A7A8(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 92);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 92);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 92);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_27;
  }

LABEL_26:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 92);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_28;
  }

LABEL_27:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 36), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 52), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xB, a2, *(v5 + 56), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xC, a2, *(v5 + 60), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 64), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 68), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 72), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_40;
  }

LABEL_39:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 73), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_41;
  }

LABEL_40:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 74), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_42;
  }

LABEL_41:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 76), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x13, a2, *(v5 + 80), a3);
  v6 = *(v5 + 92);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

LABEL_44:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x15, *(v5 + 84), a2, a4);
    if ((*(v5 + 92) & 0x200000) == 0)
    {
      return result;
    }

    goto LABEL_45;
  }

LABEL_43:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x14, *(v5 + 75), a2, a4);
  v6 = *(v5 + 92);
  if ((v6 & 0x100000) != 0)
  {
    goto LABEL_44;
  }

LABEL_22:
  if ((v6 & 0x200000) == 0)
  {
    return result;
  }

LABEL_45:
  v7 = *(v5 + 85);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x16, v7, a2, a4);
}

void sub_10011AA48(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_10011A148(a1);

  operator delete();
}

void sub_10011AA80(uint64_t a1)
{
  v2 = *(a1 + 784);
  v3 = *(a1 + 672) - v2;
  if (v3 <= *(a1 + 56) || v3 >= *(a1 + 64) || *(a1 + 770) == 1 || *(a1 + 882) == 1 || *(a1 + 769) || *(a1 + 881) || (*(a1 + 774) & 4) == 0 || (*(a1 + 886) & 4) == 0 || *(a1 + 1104) != 1 || *(a1 + 1096) > v2)
  {
    sub_10011FA30(a1, a1 + 776, a1 + 664);
    v4 = 0;
    v6 = v5 * v5 + *(a1 + 1064);
    v7 = *(a1 + 1072);
  }

  else
  {
    sub_10011FA30(a1, a1 + 776, a1 + 664);
    v7 = v14;
    *(a1 + 1072) = v14;
    v15 = v14 + *(a1 + 1056);
    if (v15 < 0.0 || v15 >= 6.28318531)
    {
      v15 = fmod(v15, 6.28318531);
      if (v15 < 0.0)
      {
        v15 = v15 + 6.28318531;
      }
    }

    *(a1 + 1056) = v15;
    v6 = *(a1 + 1064);
    v4 = 1;
  }

  v8 = *(a1 + 672);
  v9 = (v8 - *(a1 + 1088)) * (*(a1 + 72) + *(a1 + 80) * fabs(v7));
  v10 = v6 + v9;
  *(a1 + 1064) = v10;
  *(a1 + 1080) = v9;
  *(a1 + 1088) = v8;
  if (v10 >= 6.28318531)
  {
    v11 = 0;
    *(a1 + 1064) = 0x401921FB54442D18;
  }

  else
  {
    v11 = 1;
  }

  *(a1 + 1105) = v11;
  if (v9 <= 1.57079633)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0;
    *(a1 + 1080) = 0x3FF921FB54442D18;
  }

  *(a1 + 1106) = v12;
  v13 = *(a1 + 664);

  sub_10011AFE4(a1, v4, v13);
}