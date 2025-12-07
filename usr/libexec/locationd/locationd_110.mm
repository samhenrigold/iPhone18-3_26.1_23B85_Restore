uint64_t sub_1007FDBDC(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleNilrBegin", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194340C();
  }

  *(a1 + 1249) = 1;
  return sub_1001BF630(a1 + 2576, 13);
}

uint64_t sub_1007FDC88(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleNilrEnd", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019434E8();
  }

  *(a1 + 1249) = 0;
  return sub_1001BF630(a1 + 2576, 14);
}

uint64_t sub_1007FDD30(uint64_t a1)
{
  v3 = off_102474048;
  v4 = a1;
  v5 = &v3;
  sub_100806178(&v3, (a1 + 584));
  sub_1001C5560(&v3);
  v3 = off_1024740C8;
  v4 = a1;
  v5 = &v3;
  sub_100806178(&v3, (a1 + 616));
  return sub_1001C5560(&v3);
}

uint64_t sub_1007FDDF0(uint64_t a1)
{
  v3 = off_102474148;
  v4 = a1;
  v5 = &v3;
  sub_100806178(&v3, (a1 + 584));
  sub_1001C5560(&v3);
  v3 = off_1024741C8;
  v4 = a1;
  v5 = &v3;
  sub_100806178(&v3, (a1 + 616));
  return sub_1001C5560(&v3);
}

void sub_1007FDEB8(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 1000);
  if (v3)
  {
    sub_101221ABC(v3, a2);
  }

  v4 = *(a1 + 992);
  if (v4)
  {

    sub_100E0DD48(v4);
  }
}

void sub_1007FDF08(void *a1)
{
  v2 = a1[145];
  if (v2)
  {
    sub_1016AD088(v2);
  }

  v3 = a1[91];
  if (v3)
  {
    sub_10168A7F8(v3);
  }

  v4 = a1[124];
  if (v4)
  {
    sub_100E0DE2C(v4);
  }

  v5 = a1[131];
  if (v5)
  {
    sub_10167EAAC(v5);
  }

  if (a1[125])
  {
    sub_101221B5C();
  }

  v6 = a1[150];
  if (v6)
  {
    sub_100EAC584(v6);
  }

  v7 = a1[128];
  if (v7)
  {

    sub_101754E14(v7);
  }
}

void sub_1007FDF94(uint64_t a1)
{
  v2 = *(a1 + 1184);
  if (v2)
  {
    sub_100D09384(v2);
  }

  v3 = *(a1 + 1192);
  if (v3)
  {
    sub_1010C043C(v3);
  }

  sub_1001B9940(a1);
}

void sub_1007FDFE0(uint64_t *a1, _DWORD *a2)
{
  v4 = a1 + 1228;
  v5 = sub_100265700(a1 + 1228);
  v6 = sub_100265700(a2);
  v7 = *(a1 + 2496);
  *(a1 + 2496) = sub_100C3DA80(a2);
  *(a1 + 2498) = sub_100C3DAB0(a2);
  if (qword_1025D4660 != -1)
  {
    sub_1019435C4();
  }

  v8 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 2496);
    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 1026;
    *v24 = v7;
    *&v24[4] = 1026;
    *&v24[6] = v9;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#thumper, Updating emergency state, wasInWifiEmergency:%{public}d, fInWifiEmergency:%{public}d}", buf, 0x1Eu);
    if (qword_1025D4660 != -1)
    {
      sub_1019435D8();
    }
  }

  v10 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
  {
    sub_100C3D494(a2, &__p);
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *v24 = v11;
    *&v24[8] = 1026;
    v25 = v5;
    v26 = 1026;
    v27 = v6;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, state:%{public, location:escape_only}s, wasInEmergency:%{public}hhd, inEmergencyNow:%{public}hhd}", buf, 0x28u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (!sub_100C3DAB0(v4) && sub_100C3DAB0(a2))
  {
    if (qword_1025D4660 != -1)
    {
      sub_1019435D8();
    }

    v12 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 1221);
      v14 = *(a1 + 1222);
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *v24 = v13;
      *&v24[4] = 1026;
      *&v24[6] = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#EmgContext, SimulationMode:%{public}d, ConformanceMode:%{public}d}", buf, 0x1Eu);
    }

    v15 = a1[141];
    if (v15)
    {
      sub_1016AAC40(v15);
    }

    v16 = a1[142];
    if (v16)
    {
      sub_1016C4C80(v16);
    }
  }

  v17 = *a2;
  *(v4 + 4) = a2[4];
  *v4 = v17;
  v18 = a1[124];
  if (v18)
  {
    *buf = *a2;
    *&buf[16] = a2[4];
    sub_100E10D4C(v18, buf);
  }

  if (v5 || !v6)
  {
    v19 = *a1;
    if (v6 || !v5)
    {
      *buf = *a2;
      *&buf[16] = a2[4];
      (*(*v19 + 304))(v19, buf);
      if (!v7)
      {
        goto LABEL_36;
      }
    }

    else
    {
      *buf = *a2;
      *&buf[16] = a2[4];
      (*(*v19 + 304))(v19, buf);
      sub_1001BF630((a1 + 322), 12);
      *(a1 + 2497) = 0;
      if (!v7)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
    sub_1001BF630((a1 + 322), 11);
    v20 = *a1;
    *buf = *a2;
    *&buf[16] = a2[4];
    (*(*v20 + 304))();
    *(*a1 + 1144) = 1;
    *(a1 + 2497) = 1;
    if (!v7)
    {
      goto LABEL_36;
    }
  }

  if ((a1[312] & 1) == 0 && *(a1 + 336) == 3 && *(a1 + 1296) == 1 && a1[141])
  {
    sub_101751B14((a1 + 157));
    sub_1016AA218(a1[141], (a1 + 157));
    sub_101752A9C((a1 + 157));
  }

LABEL_36:
  v21 = a1[128];
  if (v21)
  {
    sub_101754F64(v21, v6);
  }
}

void sub_1007FE440(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (sub_1000735F4(a1 + 316, a2))
  {
    *buf = a2;
    v6 = sub_10080DE84(a1 + 316, a2);
    sub_1007FE7B0((v6 + 3), a2);
    *(a1 + 1248) = *(a2 + 4);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 1248);
      *buf = 68289282;
      *&buf[4] = 0;
      v22 = 2082;
      v23 = "";
      v24 = 1026;
      v25 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Emergency Settings, HELO state:%{public}hhd}", buf, 0x18u);
    }

    v10 = a1[124];
    if (v10)
    {
      sub_100E11D00(v10, *(a2 + 4));
    }

    if (sub_10001CF04(v10, v8))
    {
      v11 = *(a1 + 2568) ^ 1;
      *buf = a2;
      *(sub_10080DE84(a1 + 316, a2) + 29) = v11;
      v12 = *(a1 + 2568);
      *buf = a2;
      *(sub_10080DE84(a1 + 316, a2) + 128) = v12;
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v14 = *a2;
        *buf = a2;
        v15 = *(sub_10080DE84(a1 + 316, a2) + 29);
        *buf = a2;
        v16 = *(sub_10080DE84(a1 + 316, a2) + 128);
        *buf = 68289794;
        *&buf[4] = 0;
        v22 = 2082;
        v23 = "";
        v24 = 1026;
        v25 = v14;
        v26 = 1026;
        v27 = v15;
        v28 = 1026;
        v29 = v16;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Emergency Settings, sim:%{public}d, enableEarlyReturnDuringEmergencyMode:%{public}hhd, configureVerticalUncertainty:%{public}hhd}", buf, 0x24u);
      }
    }

    v17 = *a1;
    *buf = a2;
    v18 = sub_10080DE84(a1 + 316, a2);
    (*(*v17 + 312))(v17, v18 + 3, a3);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v19 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v20 = *a2;
      *buf = 67240192;
      *&buf[4] = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "#Warning, Unexpected SimInstance,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101943600(a2);
    }
  }
}

uint64_t sub_1007FE7B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *a1 = v4;
  v6 = *(a2 + 5);
  v5 = *(a2 + 6);
  v7 = *(a2 + 4);
  *(a1 + 112) = a2[14];
  *(a1 + 80) = v6;
  *(a1 + 96) = v5;
  *(a1 + 64) = v7;
  v8 = *(a2 + 1);
  v9 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v9;
  *(a1 + 16) = v8;
  sub_10080640C(a1 + 120, (a2 + 15));
  std::string::operator=((a1 + 944), (a2 + 118));
  std::string::operator=((a1 + 968), (a2 + 121));
  v10 = a2[124];
  *(a1 + 1000) = *(a2 + 250);
  *(a1 + 992) = v10;
  v11 = a2[132];
  v12 = *(a2 + 65);
  v13 = *(a2 + 64);
  *(a1 + 1008) = *(a2 + 63);
  *(a1 + 1024) = v13;
  *(a1 + 1040) = v12;
  *(a1 + 1056) = v11;
  *(a1 + 1064) = *(a2 + 1064);
  std::string::operator=((a1 + 1072), (a2 + 134));
  v14 = *(a2 + 1108);
  *(a1 + 1096) = *(a2 + 137);
  *(a1 + 1108) = v14;
  if (a1 == a2)
  {
    *(a1 + 1152) = *(a2 + 1152);
    std::string::operator=((a1 + 1160), (a2 + 145));
    v16 = *(a2 + 1196);
    *(a1 + 1184) = *(a2 + 74);
    *(a1 + 1196) = v16;
  }

  else
  {
    sub_100806B38(a1 + 1128, a2[141], a2[142], 0xAAAAAAAAAAAAAAABLL * ((a2[142] - a2[141]) >> 4));
    *(a1 + 1152) = *(a2 + 1152);
    std::string::operator=((a1 + 1160), (a2 + 145));
    v15 = *(a2 + 74);
    *(a1 + 1196) = *(a2 + 1196);
    *(a1 + 1184) = v15;
    sub_100806B38(a1 + 1216, a2[152], a2[153], 0xAAAAAAAAAAAAAAABLL * ((a2[153] - a2[152]) >> 4));
  }

  std::string::operator=((a1 + 1240), (a2 + 155));
  std::string::operator=((a1 + 1264), (a2 + 158));
  std::string::operator=((a1 + 1288), (a2 + 161));
  std::string::operator=((a1 + 1312), (a2 + 164));
  return a1;
}

uint64_t sub_1007FE964(_BYTE *a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:NILR lockout status, locked:%{public}hhd}", v6, 0x18u);
  }

  a1[2499] = a2;
  (*(**a1 + 320))(*a1, a2);
  return sub_1001BF630((a1 + 2576), 17);
}

uint64_t sub_1007FEA8C(uint64_t a1, double *a2)
{
  v11 = 0xFFFF;
  v13 = 0;
  v12 = 0;
  v14 = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v15 = _Q0;
  v16 = _Q0;
  v17 = _Q0;
  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0xBFF0000000000000;
  v22 = 0;
  v23 = 0xBFF0000000000000;
  v24 = 0x7FFFFFFF;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v28 = 0;
  sub_100021ED8(&v29);
  v9 = sub_1002A9660(a1, a2, &v11);
  if (v30)
  {
    sub_100008080(v30);
  }

  return v9;
}

void sub_1007FEB48(_Unwind_Exception *a1)
{
  if (STACK[0x2B8])
  {
    sub_100008080(STACK[0x2B8]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007FEB60(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_1000CF05C();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1007FEBA8(uint64_t *result, double a2)
{
  v2 = result + 383;
  if (result[383])
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4 = *v2;
      *v21 = 134349056;
      *&v21[4] = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "constructRavenCtrl,fRavenController,exists,%{public}p,abort", v21, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101943E10();
    }
  }

  else
  {
    v7 = (result + 387);
    v8 = *(result + 387);
    if (v8 >= 0.0)
    {
      if (v8 < a2)
      {
        if (qword_1025D4650 != -1)
        {
          sub_10194117C();
        }

        v11 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v7;
          *v21 = 134349312;
          *&v21[4] = a2;
          *&v21[12] = 2050;
          *&v21[14] = v12;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "constructRavenCtrl,start,now,%{public}.3f,toEnable,%{public}.3f", v21, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101943EFC();
        }

        sub_100C03784(result[95], (result + 385), v21);
        v14 = *v21;
        v13 = *&v21[8];
        *v21 = 0;
        *&v21[8] = 0;
        result[383] = v14;
        v15 = result[384];
        result[384] = v13;
        if (v15)
        {
          sub_100008080(v15);
          if (*&v21[8])
          {
            sub_100008080(*&v21[8]);
          }

          v13 = result[384];
        }

        v16 = *v2;
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
        }

        result[385] = v16;
        v17 = result[386];
        result[386] = v13;
        if (v17)
        {
          std::__shared_weak_count::__release_weak(v17);
        }

        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v18 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v19 = *v2;
          *v21 = 134349056;
          *&v21[4] = v19;
          _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "constructRavenCtrl,finish,%{public}p", v21, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101944008();
        }

        if (*v2)
        {
          sub_100C04344(*v2);
          if (*result)
          {
            (*(**result + 232))(*result);
          }

          v20 = result[388];
          if (v20)
          {
            *(v20 + 24) = a2;
            *(v20 + 32) = 1;
          }
        }

        else
        {
          *v7 = 1.79769313e308;
        }

        sub_1007FEF34(result);
      }
    }

    else
    {
      *v7 = a2 + 10.0;
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v7;
        *v21 = 134349312;
        *&v21[4] = a2;
        *&v21[12] = 2050;
        *&v21[14] = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "constructRavenCtrl,deferred,now,%{public}.3f,toEnable,%{public}.3f", v21, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019440F4();
      }
    }
  }
}

void sub_1007FEF34(uint64_t *a1)
{
  v1 = a1[116];
  if (v1)
  {
    v10 = 0xBFF0000000000000;
    sub_1016B0E50(v1 + 24, &v10, &__p);
    if (a1[383])
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v4 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289282;
          *&buf[4] = 0;
          v12 = 2082;
          v13 = "";
          v14 = 2082;
          v15 = "#rof,injectRavenOrbitFile";
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        sub_100C09260(a1[383], &__p);
      }
    }

    v5 = *a1;
    if (*a1)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v6 = __p.__r_.__value_.__l.__size_;
      }

      v7 = a1[116];
      v8 = (v7 + 24);
      if (*(v7 + 47) < 0)
      {
        v8 = *v8;
      }

      sub_10000EC00(buf, v8);
      sub_1016C3E0C(v5 + 8, buf, v6 == 0, 4, &v10);
      if (SBYTE3(v15) < 0)
      {
        operator delete(*buf);
      }
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1007FF0D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007FF118(uint64_t a1)
{
  v2 = sub_1000081AC();
  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    if (v2 > v3)
    {
      *(a1 + 8) = v2 - v3 + *(a1 + 8);
    }

    *(a1 + 32) = 0;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 8);
    v6 = 134349056;
    v7 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#raven,runtime,%{public}.1f,sec", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101944200();
  }
}

void sub_1007FF220(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 1200);
  if (v4)
  {
    sub_100EABEF8(v4, a2);
  }

  v5 = *(a1 + 1208);
  if (v5)
  {
    sub_1009BA79C(v5, a2);
  }

  if (*(a2 + 96) == 19)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a2 + 16);
      *buf = 67240192;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,swimming,ignored,event,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101944940();
    }

    return;
  }

  v10 = *(a2 + 16);
  v9 = (a2 + 16);
  v8 = v10;
  if (v10 <= 2)
  {
    if (!v8)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v17 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,DidStart", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10194467C();
      }

      goto LABEL_57;
    }

    if (v8 != 1)
    {
      goto LABEL_79;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,DidStop", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019442EC();
    }

LABEL_42:
    if (**(a1 + 3112) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v15 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,deconstructRavenController", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019444B4();
      }

      sub_1001C55E4(a1);
    }

    v16 = 0;
    goto LABEL_58;
  }

  switch(v8)
  {
    case 3:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v13 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,WillResume", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101944598();
      }

      goto LABEL_57;
    case 15:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,DidEnd", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019443D0();
      }

      goto LABEL_42;
    case 13:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v11 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "handleHkWorkoutCallback,SessionDidBegin", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101944760();
      }

LABEL_57:
      v16 = 1;
LABEL_58:
      **(a1 + 3112) = v16;
      v18 = *(a1 + 896);
      if (v18)
      {
        sub_1002546D0(v18, v16);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v19 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289538;
          *&buf[4] = 0;
          *v30 = 2082;
          *&v30[2] = "";
          v31 = 2082;
          v32 = "#rti,updateRtiDownloadRateOnWorkoutOrFocusedNav";
          v33 = 1026;
          v34 = v16;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isHkWorkoutSession:%{public}hhd}", buf, 0x22u);
        }
      }

      if (*(a1 + 872))
      {
        sub_10001CAF4(buf);
        v28 = 0;
        v20 = sub_10001CB4C(*buf, "EnableRteUpdateOnHkWorkoutSession", &v28, 0xFFFFFFFFLL);
        v21 = v20 ^ 1 | v28;
        if (*v30)
        {
          sub_100008080(*v30);
        }

        if (v21)
        {
          sub_1002568F8(*(a1 + 872), v16, 0);
          if (qword_1025D4650 != -1)
          {
            sub_101940C48();
          }

          v22 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *v30 = 2082;
            *&v30[2] = "";
            v31 = 2082;
            v32 = "#rte,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
            v33 = 1026;
            v34 = v16;
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isHkWorkoutSession:%{public}hhd}", buf, 0x22u);
          }
        }
      }

      if (*(a1 + 944))
      {
        sub_10001CAF4(buf);
        v28 = 0;
        v23 = sub_10001CB4C(*buf, "EnableRteUpdateOnHkWorkoutSession", &v28, 0xFFFFFFFFLL);
        v24 = v23 ^ 1 | v28;
        if (*v30)
        {
          sub_100008080(*v30);
        }

        if (v24)
        {
          sub_1002568F8(*(a1 + 944), v16, 1);
          if (qword_1025D4650 != -1)
          {
            sub_101940C48();
          }

          v25 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289538;
            *&buf[4] = 0;
            *v30 = 2082;
            *&v30[2] = "";
            v31 = 2082;
            v32 = "#rof,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
            v33 = 1026;
            v34 = v16;
            _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isHkWorkoutSession:%{public}hhd}", buf, 0x22u);
          }
        }
      }

      return;
  }

LABEL_79:
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v26 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v27 = *v9;
    *buf = 67240192;
    *&buf[4] = v27;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "handleHkWorkoutCallback,Unhandled,eventType,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101944844();
  }
}

void sub_1007FF8F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007FF918(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleSleep,treat as a device disconnect event", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101944A3C();
  }

  *(a1 + 8) = 0;
  return sub_1001BF630(a1 + 2576, 6);
}

void sub_1007FF9C0(uint64_t *a1, uint64_t *a2)
{
  if (*a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "injectassistancefile";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v5 = *a1;
    v6 = *a2;
    if (*(*a2 + 47) < 0)
    {
      sub_100007244(__p, *(v6 + 24), *(v6 + 32));
    }

    else
    {
      *__p = *(v6 + 24);
      v10 = *(v6 + 40);
    }

    (*(*v5 + 56))(v5, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[142];
    if (v8)
    {
      sub_1016C57A8(v8, 2);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "assistanceFile,null,invalid parameter", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101944B18();
    }
  }
}

void sub_1007FFB94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007FFBB8(uint64_t *a1, uint64_t *a2)
{
  if (*a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "injectRealTimeEphemerisFile";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v5 = *a1;
    v6 = *a2;
    if (*(*a2 + 47) < 0)
    {
      sub_100007244(__p, *(v6 + 24), *(v6 + 32));
    }

    else
    {
      *__p = *(v6 + 24);
      v10 = *(v6 + 40);
    }

    (*(*v5 + 144))(v5, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[142];
    if (v8)
    {
      sub_1016C57A8(v8, 1);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "rteFile,null,invalid parameter", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101944C04();
    }
  }
}

void sub_1007FFD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007FFDB0(uint64_t *a1, void *a2)
{
  if (*a2)
  {
    sub_1007FEF34(a1);
    if (*a1)
    {
      (*(**a1 + 168))(*a1, *a2 + 24);
    }

    v4 = a1[142];
    if (v4)
    {

      sub_1016C57A8(v4, 4);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "#rof,null,invalid file parameter", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101944CF0();
    }
  }
}

void sub_1007FFEB8(uint64_t *a1, uint64_t *a2)
{
  if (*a2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "injectrtifile";
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v5 = *a1;
    v6 = *a2;
    if (*(*a2 + 47) < 0)
    {
      sub_100007244(__p, *(v6 + 24), *(v6 + 32));
    }

    else
    {
      *__p = *(v6 + 24);
      v10 = *(v6 + 40);
    }

    (*(*v5 + 160))(v5, __p);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[142];
    if (v8)
    {
      sub_1016C57A8(v8, 3);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "rtiFile,null,invalid parameter", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101944DD4();
    }
  }
}

void sub_10080008C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008000B0(void *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "injectbroadcastephemerisfile";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  (*(**a1 + 184))();
  v3 = a1[142];
  if (v3)
  {
    sub_1016C57A8(v3, 1);
  }
}

uint64_t sub_1008001C4(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "handleMeasurementFeatures";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  result = *(a1 + 520);
  if (result)
  {
    if ((*(a1 + 560) & 1) == 0)
    {
      return (*(*result + 48))(result, a2);
    }
  }

  return result;
}

void sub_1008002E4(uint64_t *a1, unsigned int a2, __int128 *a3)
{
  if (a2 > 1)
  {
    if (a2 - 2 < 2 || a2 == 6)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2)
  {
    if (a2 != 1)
    {
LABEL_18:
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = a2;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Warning Unsupported notification, notification:%{public, location:CLGpsAssistant_Type::Notification}lld}", buf, 0x1Cu);
      }

      return;
    }

    v10 = *a3;
    v12 = a3[1];
    v14 = a3[2];
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68291330;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "MMP";
      *&buf[28] = 2050;
      *&buf[30] = v10;
      *&buf[38] = 1040;
      *&buf[40] = LocationLogEncryptionDataSize();
      *&buf[44] = 2098;
      *&buf[46] = LocationLogEncryptionEncryptData();
      *&buf[54] = 1040;
      *&buf[56] = LocationLogEncryptionDataSize();
      *&buf[60] = 2098;
      *&buf[62] = LocationLogEncryptionEncryptData();
      *&buf[70] = 2050;
      *&buf[72] = *(&v12 + 1);
      *v21 = 2050;
      *&v21[2] = v14;
      *&v21[10] = 2050;
      *&v21[12] = *(&v14 + 1);
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, timestamp:%{public}f, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, uncEllipseSemiMajor:%{public}f, uncEllipseSemiMinor:%{public}f, uncEllipseAzimuth:%{public}f}", buf, 0x64u);
    }

    v6 = *a1;
    *buf = v10;
    *&buf[16] = v12;
    *&buf[32] = v14;
    (*(*v6 + 72))(v6, buf);
  }

  else
  {
    v17 = a3[4];
    v18 = a3[5];
    v19 = *(a3 + 12);
    v11 = *a3;
    v13 = a3[1];
    v15 = a3[2];
    v16 = a3[3];
    if (v18 == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68292355;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = "DOT";
        *&buf[28] = 2050;
        *&buf[30] = v11;
        *&buf[38] = 1040;
        *&buf[40] = LocationLogEncryptionDataSize();
        *&buf[44] = 2098;
        *&buf[46] = LocationLogEncryptionEncryptData();
        *&buf[54] = 1040;
        *&buf[56] = LocationLogEncryptionDataSize();
        *&buf[60] = 2098;
        *&buf[62] = LocationLogEncryptionEncryptData();
        *&buf[70] = 2050;
        *&buf[72] = v16;
        *v21 = 2050;
        *&v21[2] = *(&v16 + 1);
        *&v21[10] = 2050;
        *&v21[12] = v17;
        *&v21[20] = 2053;
        *&v21[22] = *(&v11 + 1);
        v22 = 2053;
        v23 = v13;
        v24 = 2050;
        v25 = *(&v15 + 1);
        v26 = 2050;
        v27 = *(&v18 + 1);
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, timestamp:%{public}f, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, directionOfTravel:%{public}f, directionOfTravelUnc:%{public}f, roadWidth:%{public}f, startLatitude:%{sensitive}.08f, startLongitude:%{sensitive}.08f, lengthOfLinearSegment:%{public}f, machtime:%{public}f}", buf, 0x8Cu);
      }

      v8 = *a1;
      *buf = v11;
      *&buf[16] = v13;
      *&buf[32] = v15;
      *&buf[48] = v16;
      *&v21[16] = v19;
      *&buf[64] = v17;
      *v21 = v18;
      (*(*v8 + 64))(v8, buf);
    }
  }
}

uint64_t sub_10080073C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (*a1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134350080;
      v38 = a5;
      v39 = 2050;
      v40 = a6;
      v41 = 2050;
      v42 = a2;
      v43 = 2050;
      v44 = a3;
      v45 = 2050;
      v46 = a4;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning,GNSS_SEN,StartingSensorWhenAlreadyRunning,StoppingExisting,SampleRate,%{public}lf,ReportRate,%{public}lf,Callback,%{public}p,silo,%{public}p,context,%{public}p", buf, 0x34u);
    }

    a1 = sub_10000A100(121, 2);
    if (a1)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v27 = 134350080;
      v28 = a5;
      v29 = 2050;
      v30 = a6;
      v31 = 2050;
      v32 = a2;
      v33 = 2050;
      v34 = a3;
      v35 = 2050;
      v36 = a4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning,GNSS_SEN,StartingSensorWhenAlreadyRunning,StoppingExisting,SampleRate,%{public}lf,ReportRate,%{public}lf,Callback,%{public}p,silo,%{public}p,context,%{public}p", &v27, 52);
      v26 = v25;
      a1 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssSensorAdapter<CLGyro, 0>::start(double, double, DataHandler, CLSilo *, void *) [SensorType = CLGyro, notification = 0]", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_8;
  }

  v21 = (*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL;
  v22 = ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF;
  if (a5 >= 0.0)
  {
    v22 = 0;
    v21 = 0;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v21 = 1;
  }

  v23 = (*&a5 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000 || v21;
  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FF0000000000000)
  {
    v23 = 1;
  }

  if (a6 > a5 || ((v23 | v22) & 1) != 0 || a6 <= 0.0)
  {
LABEL_8:
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v12 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 134349312;
      v38 = a5;
      v39 = 2050;
      v40 = a6;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "GNSS_SEN,InvalidParameters,sampleRate,%{public}lf,reportRate,%{public}lf", buf, 0x16u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101945370(result, v14, v15, v16, v17, v18, v19, v20);
      return 0;
    }
  }

  else
  {
    if (sub_10098EAD4(a1, a2))
    {
      operator new();
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v24 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "GNSS_SEN,Could not get the sensor controller", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101945284();
      return 0;
    }
  }

  return result;
}

void sub_100800B38(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100800B68(uint64_t a1)
{
  if (*a1)
  {
    *a1 = 0;
    (*(a1 + 8))();
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v1 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *v2 = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_FAULT, "GNSS_SEN,Tried stopping when not running", v2, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101945490();
    }
  }
}

void sub_100800C1C(uint64_t a1)
{
  if (*a1)
  {
    *a1 = 0;
    (*(a1 + 8))();
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v1 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *v2 = 0;
      _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_FAULT, "GNSS_SEN,Tried stopping when not running", v2, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194557C();
    }
  }
}

uint64_t sub_100800CD0(void *a1, int a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289538;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "sendAllowGnssDwellDutyCycling";
    v11 = 1026;
    v12 = a2 == 1;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, allow:%{public}hhd}", v6, 0x22u);
  }

  return (*(**a1 + 248))(*a1, a2 == 1);
}

void sub_100800DFC(void *a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8 = *a3;
    v11 = 67240192;
    v12 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Settings Notification,%{public}d", &v11, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019460CC(a3);
  }

  if (*a3)
  {
    if (*a3 == 4)
    {
      sub_100800F94(a1, *(a4 + 188));
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *a3;
        v11 = 67240192;
        v12 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,unhandled notification,%{public}d", &v11, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019461B8(a3);
      }
    }
  }

  else
  {
    sub_100800FBC(a1);
  }
}

void sub_100800F94(void *result, int a2)
{
  if (*(result + 187) != a2)
  {
    *(result + 187) = a2;
    if (a2)
    {
      if (a2 == 1)
      {
        sub_1008010C8(result);
      }
    }

    else
    {
      sub_1008012BC(result);
    }
  }
}

uint64_t sub_100800FBC(void *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "resetprivacyinfo";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
  }

  return (*(**a1 + 280))(*a1);
}

void sub_1008010C8(void *a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 68289282;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "enablelocationservice";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v10, 0x1Cu);
  }

  (*(**a1 + 264))(*a1);
  sub_1001BF630((a1 + 322), 9);
  if (*(a1 + 1221) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning,fIsSimulatorMode,1,cannot trigger assistance download", v10, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019462A4();
    }
  }

  else
  {
    v4 = a1[106];
    if (v4)
    {
      sub_1016DA050(v4, 1);
    }

    v5 = a1[109];
    if (v5)
    {
      sub_1016DA050(v5, 1);
    }

    v6 = a1[118];
    if (v6)
    {
      sub_1016DA050(v6, 1);
    }

    v7 = a1[112];
    if (v7)
    {
      sub_1016DA050(v7, 1);
    }

    v8 = a1[115];
    if (v8)
    {
      sub_1016DA050(v8, 1);
    }

    v9 = a1[121];
    if (v9)
    {
      sub_1016DA050(v9, 1);
    }
  }
}

uint64_t sub_1008012BC(void *a1)
{
  sub_1001BF630((a1 + 322), 10);
  v3 = a1[124];
  if (v3)
  {
    sub_100E12710(v3);
  }

  sub_10170BFB0((a1 + 344), v2);
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "disablelocationservice";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  return (*(**a1 + 272))(*a1);
}

void sub_1008013E8(void *a1)
{
  if (*a1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4[0] = 68289282;
      v4[1] = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "resetcontrolplanestatus";
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v4, 0x1Cu);
    }

    (*(**a1 + 328))(*a1);
  }

  else
  {
    if (qword_1025D4660 != -1)
    {
      sub_1019435C4();
    }

    v3 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v4[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "NilrDbg,device not created yet", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101946380();
    }
  }
}

void sub_100801570(uint64_t a1, uint64_t a2)
{
  *(a1 + 1280) = *(a2 + 4);
  *(a1 + 1296) = 1;
  *(a1 + 1304) = vextq_s8(*(a2 + 20), *(a2 + 20), 8uLL);
  *(a1 + 1320) = *(a2 + 36);
  *(a1 + 1344) = 3;
  *(a1 + 1404) = 0;
  *(a1 + 1352) = 12;
  v4 = *(a2 + 96);
  v5 = v4 == 10;
  v6 = (v4 & 0xFFFFFFF7) == 1;
  if (v4 == 11 || v4 == 4)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 1336) |= (v5 << 6) | v6 | v8;
  if (qword_1025D4660 != -1)
  {
    sub_1019435C4();
  }

  v9 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
  {
    v10 = LocationLogEncryptionDataSize();
    v11 = LocationLogEncryptionEncryptData();
    v12 = LocationLogEncryptionDataSize();
    v13 = LocationLogEncryptionEncryptData();
    v14 = *(a2 + 28);
    v15 = *(a2 + 20);
    v16 = *(a1 + 1336);
    v17[0] = 68290819;
    v17[1] = 0;
    v18 = 2082;
    v19 = "";
    v20 = 1040;
    v21 = v10;
    v22 = 2098;
    v23 = v11;
    v24 = 1040;
    v25 = v12;
    v26 = 2098;
    v27 = v13;
    v28 = 2049;
    v29 = v14;
    v30 = 2049;
    v31 = v15;
    v32 = 1025;
    v33 = v16;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd #thumper location log, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P, alt:%{private}f, accuracy:%{private}f, source:%{private}u}", v17, 0x4Cu);
  }
}

void sub_10080175C(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 1136);
  if (v2)
  {
    sub_1016C4D5C(v2, a2);
  }
}

double sub_10080176C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 992);
  if (v2)
  {
    *&result = sub_100E12608(v2, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_10080177C(void *a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289282;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2082;
    v12 = "controlplanestatusreport";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v8, 0x1Cu);
  }

  if (*a1)
  {
    return (*(**a1 + 336))(*a1, a2);
  }

  if (qword_1025D4660 != -1)
  {
    sub_1019435D8();
  }

  v6 = qword_1025D4668;
  if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "NilrDbg,device not created yet", v8, 2u);
  }

  v7 = sub_10000A100(121, 0);
  result = 0;
  if (v7)
  {
    sub_101946464();
    return 0;
  }

  return result;
}

void sub_10080191C(int *a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLGC,L5Context,Update,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101946AC4(a2);
  }

  a1[3] = a2;
  sub_1001B9940(a1);
}

void sub_100801A08(int *a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLGC,L1Context,Update,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101946BB4(a2);
  }

  a1[4] = a2;
  sub_1001B9940(a1);
}

void sub_100801AF4(void *a1, void *a2)
{
  *(a1 + 752) = a2;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67240192;
    v10[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "CLGC,isAirborne,%{public}d", v10, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101946F80(a2);
  }

  if (*a1)
  {
    (*(**a1 + 256))(*a1, a2);
  }

  v5 = a1[132];
  if (v5)
  {
    sub_1016FF278(v5, a2);
  }

  v6 = a1[127];
  if (v6)
  {
    sub_1009BA6C0(v6, a2);
  }

  v7 = a1[130];
  if (v7)
  {
    sub_100746340(v7, a2);
  }

  v8 = a1[124];
  if (v8)
  {
    sub_100E1262C(v8, a2);
  }

  v9 = a1[138];
  if (v9)
  {
    sub_101753DF8(v9, a2);
  }
}

void sub_100801C60(uint64_t a1)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v2 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 1221);
    v4 = *(a1 + 1222);
    v6[0] = 67109376;
    v6[1] = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleOTADeleteRequest,fIsSimulatorMode,%d,fIsConformanceMode,%d", v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194706C();
  }

  if ((*(a1 + 1221) & 1) != 0 || *(a1 + 1222) == 1)
  {
    if (*(a1 + 736))
    {
      *(a1 + 648) = *(a1 + 568);
      *(a1 + 656) = *(a1 + 576);
      sub_100806104((a1 + 664), a1 + 584);
      sub_100806104((a1 + 696), a1 + 616);
      *(a1 + 577) = 1;
      sub_1001BF630(a1 + 2576, 15);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLGnssController::handleOTADeleteRequest,simulator/conformance mode not enabled,do nothing", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101947164();
    }
  }
}

uint64_t sub_100801E14(int *a1, void *a2)
{
  v4 = sub_1001BED94(a1);
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109376;
    v7[1] = a2;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "#clgda,handleGnssDisablementAssertRsp,status,%d,band,%d", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101947240(a2, v4);
  }

  return sub_100801F1C((a1 + 132), v4, a2);
}

uint64_t sub_100801F1C(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000CF05C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_100801F78(void *a1, void *a2)
{
  v4 = a1[148];
  if (v4)
  {
    sub_100D09194(v4, a2);
  }

  v5 = a1[112];
  if (v5)
  {
    sub_1002546D0(v5, a2);
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "#rti,updateRtiDownloadRateOnWorkoutOrFocusedNav";
      v20 = 1026;
      v21 = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isFitnessSession:%{public}hhd}", buf, 0x22u);
    }
  }

  v7 = a1[106];
  if (v7)
  {
    sub_100256634(v7, a2);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v8 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "#ee,updateEeFileDownloadRateOnWorkoutOrFocusedNav";
      v20 = 1026;
      v21 = a2;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isFitnessSession:%{public}hhd}", buf, 0x22u);
    }
  }

  sub_10001CAF4(buf);
  v15 = 0;
  v9 = sub_10001CB4C(*buf, "EnableRteUpdateOnFitnessSession", &v15, 0xFFFFFFFFLL);
  v10 = v9 ^ 1 | v15;
  if (*v17)
  {
    sub_100008080(*v17);
  }

  if (v10)
  {
    v11 = a1[109];
    if (v11)
    {
      sub_1002568F8(v11, a2, 0);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v12 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *v17 = 2082;
        *&v17[2] = "";
        v18 = 2082;
        v19 = "#rte,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
        v20 = 1026;
        v21 = a2;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isFitnessSession:%{public}hhd}", buf, 0x22u);
      }
    }

    v13 = a1[118];
    if (v13)
    {
      sub_1002568F8(v13, a2, 1);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v14 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 68289538;
        *&buf[4] = 0;
        *v17 = 2082;
        *&v17[2] = "";
        v18 = 2082;
        v19 = "#rof,updateRteRofFileDownloadRateOnWorkoutOrFocusedNav";
        v20 = 1026;
        v21 = a2;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, isFitnessSession:%{public}hhd}", buf, 0x22u);
      }
    }
  }
}

void sub_1008022B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008022D0(uint64_t *a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a1 + 2569) == 1)
    {
      sub_10080250C(a1, 0);
      *(a1 + 560) = 1;
    }

    v4 = sub_1001B9B0C(a1, a2);
    if (v4 && (a2 & 1) != 0)
    {
      v6 = 3;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(a1 + 560) == 1)
    {
      *(a1 + 560) = 0;
      sub_10080250C(a1, 1);
    }

    v4 = sub_1001B9B0C(a1, a2);
  }

  if (sub_1001B9B0C(v4, v5) | a2 ^ 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 0;
  }

LABEL_13:
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 676);
    v9 = *(a1 + 560);
    v12[0] = 67109632;
    v12[1] = v8;
    v13 = 1024;
    v14 = v6;
    v15 = 1026;
    v16 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#clgda,gnss,setAnyClientRegisteredForBasebandCausesL1Interference,curBand,%d,reqBand,%d,fIsBBL1InterferenceModePausedFrequencyAssertion,%{public}d", v12, 0x14u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194733C(a1, v6);
  }

  v10 = *a1;
  if (*a1)
  {
    if (v6 != *(a1 + 676))
    {
      *(a1 + 676) = v6;
      sub_1001B9940(a1);
      v10 = *a1;
    }

    (*(*v10 + 344))(v10, a2);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12[0]) = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#clgda,gnss,setAnyClientRegisteredForBasebandCausesL1Interference,device does not exist", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101947448();
    }
  }
}

void sub_10080250C(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#tt,gnss,setAnyClientRegisteredWithBasebandTimeFreqTransferAssert,%d", v8, 8u);
  }

  v5 = sub_10000A100(121, 2);
  if (v5)
  {
    sub_101947524(a2);
  }

  if (*(a1 + 2569) != a2 && *(a1 + 728) && *(a1 + 736) && (sub_100718DD0(v5, v6) || sub_10013485C()))
  {
    sub_10168A7F8(*(a1 + 728));
    sub_1001C4404(*(a1 + 728), a2);
  }

  *(a1 + 2569) = a2;
  if ((a2 & 1) == 0)
  {
    *(a1 + 560) = 0;
  }

  v7 = *(a1 + 1024);
  if (v7)
  {
    sub_101755070(v7, a2);
  }
}

uint64_t sub_10080267C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 2504);
  if (result)
  {
    return sub_100930F84(result, a2);
  }

  return result;
}

uint64_t sub_10080268C(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a1[132];
  if (v4)
  {
    sub_1016FF654(v4, a2);
  }

  return sub_1008026D8(a1, v2);
}

uint64_t sub_1008026D8(uint64_t *a1, char a2)
{
  *(a1 + 2568) = a2;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v3 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 2568);
    *buf = 68289282;
    *&buf[4] = 0;
    v25 = 2082;
    v26 = "";
    v27 = 1026;
    v28 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:issueEmergencySettingsUpdate, isInDEMDeweightArea:%{public}hhd}", buf, 0x18u);
  }

  v5 = *(a1 + 2568) ^ 1;
  v23 = 0;
  *buf = &v23;
  *(sub_10080DE84(a1 + 316, &v23) + 29) = v5;
  v6 = *(a1 + 2568);
  v23 = 0;
  *buf = &v23;
  *(sub_10080DE84(a1 + 316, &v23) + 128) = v6;
  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v23 = 0;
    *buf = &v23;
    v8 = *(sub_10080DE84(a1 + 316, &v23) + 29);
    v22 = 0;
    *buf = &v22;
    v9 = *(sub_10080DE84(a1 + 316, &v22) + 128);
    *buf = 68289794;
    *&buf[4] = 0;
    v25 = 2082;
    v26 = "";
    v27 = 1026;
    v28 = 0;
    v29 = 1026;
    v30 = v8;
    v31 = 1026;
    v32 = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Update Emergency Settings, sim:%{public}d, enableEarlyReturnDuringEmergencyMode:%{public}hhd, configureVerticalUncertainty:%{public}hhd}", buf, 0x24u);
  }

  v10 = *a1;
  v23 = 0;
  *buf = &v23;
  v11 = sub_10080DE84(a1 + 316, &v23);
  v12 = (*(*v10 + 312))(v10, v11 + 3, 5);
  result = sub_1000649A0(v12, v13);
  if (result)
  {
    v15 = *(a1 + 2568) ^ 1;
    v23 = 1;
    *buf = &v23;
    *(sub_10080DE84(a1 + 316, &v23) + 29) = v15;
    v16 = *(a1 + 2568);
    v23 = 1;
    *buf = &v23;
    *(sub_10080DE84(a1 + 316, &v23) + 128) = v16;
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v17 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v23 = 1;
      *buf = &v23;
      v18 = *(sub_10080DE84(a1 + 316, &v23) + 29);
      v22 = 1;
      *buf = &v22;
      v19 = *(sub_10080DE84(a1 + 316, &v22) + 128);
      *buf = 68289794;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 1026;
      v28 = 1;
      v29 = 1026;
      v30 = v18;
      v31 = 1026;
      v32 = v19;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Update Emergency Settings, sim:%{public}d, enableEarlyReturnDuringEmergencyMode:%{public}hhd, configureVerticalUncertainty:%{public}hhd}", buf, 0x24u);
    }

    v20 = *a1;
    v23 = 1;
    *buf = &v23;
    v21 = sub_10080DE84(a1 + 316, &v23);
    return (*(*v20 + 312))(v20, v21 + 3, 5);
  }

  return result;
}

void sub_100802B48(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 4);
    v6 = *(a2 + 12);
    v8 = 134545921;
    v9 = v5;
    v10 = 2053;
    v11 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "forwardRelayedLocation location,lat,%{sensitive}+.6f,lon,%{sensitive}.6f>", &v8, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101947610();
  }

  v7 = *(a1 + 992);
  if (v7)
  {
    sub_100E10AD8(v7, a2);
  }
}

void sub_100802C4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 2504);
  if (v2)
  {
    sub_100931190(v2, a2);
  }
}

void sub_100802C5C(_DWORD *a1, uint64_t a2)
{
  buf[0] = 0;
  v3 = sub_10001CB4C(a2, "IsBeidouDisabled", buf, 0xFFFFFFFFLL);
  if ((v3 & buf[0]) != 0)
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  buf[0] = 0;
  v5 = sub_10001CB4C(a2, "IsGalileoDisabled", buf, 0xFFFFFFFFLL);
  if ((v5 & buf[0]) != 0)
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  buf[0] = 0;
  v7 = sub_10001CB4C(a2, "IsGlonassDisabled", buf, 0xFFFFFFFFLL);
  if ((v7 & buf[0]) != 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  buf[0] = 0;
  if (sub_10001CB4C(a2, "IsGpsDisabled", buf, 0xFFFFFFFFLL))
  {
    v9 = buf[0];
  }

  else
  {
    v9 = 0;
  }

  buf[0] = 0;
  v10 = sub_10001CB4C(a2, "IsQzssDisabled", buf, 0xFFFFFFFFLL);
  if ((v10 & buf[0]) != 0)
  {
    v11 = 16;
  }

  else
  {
    v11 = 0;
  }

  buf[0] = 0;
  v12 = sub_10001CB4C(a2, "IsNavicDisabled", buf, 0xFFFFFFFFLL);
  if ((v12 & buf[0]) != 0)
  {
    v13 = 32;
  }

  else
  {
    v13 = 0;
  }

  sub_10001CAF4(buf);
  LOBYTE(v51[0]) = 0;
  v14 = sub_10001CB4C(*buf, "GnssForceEnableGps", v51, 0xFFFFFFFFLL);
  v15 = LOBYTE(v51[0]);
  if (v57)
  {
    sub_100008080(v57);
  }

  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v49 = v16;
  sub_10001CAF4(buf);
  LOBYTE(v51[0]) = 0;
  v17 = sub_10001CB4C(*buf, "GnssForceEnableBeidou", v51, 0xFFFFFFFFLL);
  v18 = LOBYTE(v51[0]);
  if (v57)
  {
    sub_100008080(v57);
  }

  if ((v17 & v18) != 0)
  {
    v19 = 4;
  }

  else
  {
    v19 = 0;
  }

  v48 = v19;
  sub_10001CAF4(buf);
  LOBYTE(v51[0]) = 0;
  v20 = sub_10001CB4C(*buf, "GnssForceEnableGalileo", v51, 0xFFFFFFFFLL);
  v21 = LOBYTE(v51[0]);
  if (v57)
  {
    sub_100008080(v57);
  }

  if ((v20 & v21) != 0)
  {
    v22 = 8;
  }

  else
  {
    v22 = 0;
  }

  sub_10001CAF4(buf);
  LOBYTE(v51[0]) = 0;
  v23 = sub_10001CB4C(*buf, "GnssForceEnableGlonass", v51, 0xFFFFFFFFLL);
  v24 = LOBYTE(v51[0]);
  if (v57)
  {
    sub_100008080(v57);
  }

  if ((v23 & v24) != 0)
  {
    v25 = 2;
  }

  else
  {
    v25 = 0;
  }

  sub_10001CAF4(buf);
  LOBYTE(v51[0]) = 0;
  v26 = sub_10001CB4C(*buf, "GnssForceEnableQzss", v51, 0xFFFFFFFFLL);
  v27 = LOBYTE(v51[0]);
  if (v57)
  {
    sub_100008080(v57);
  }

  if ((v26 & v27) != 0)
  {
    v28 = 16;
  }

  else
  {
    v28 = 0;
  }

  HIDWORD(v47) = v28;
  sub_10001CAF4(buf);
  v29 = v13;
  v30 = v11;
  v31 = v9;
  v32 = v8;
  v33 = v6;
  v34 = v4;
  LOBYTE(v51[0]) = 0;
  v35 = sub_10001CB4C(*buf, "GnssForceEnableNavic", v51, 0xFFFFFFFFLL);
  v36 = LOBYTE(v51[0]);
  if (v57)
  {
    sub_100008080(v57);
  }

  if ((v35 & v36) != 0)
  {
    v37 = 32;
  }

  else
  {
    v37 = 0;
  }

  if (*a1)
  {
    v38 = v48 | v49 | v22 | v25;
    v39 = v33 | v34 | v32 | v31 | v30 | v29;
    v40 = v38 | HIDWORD(v47) | v37;
    *(*a1 + 1328) = (a1[304] | v39) & ~v40;
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(*a1 + 1328);
      *buf = 67240704;
      *&buf[4] = v33 | v34 | v32 | v31 | v30 | v29;
      LOWORD(v57) = 1026;
      *(&v57 + 2) = v40;
      HIWORD(v57) = 1026;
      v58 = v42;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "#GnssConstControl,setGnssConstellationSettingsFromMobileAssets,maBlocked,0x%{public}x,defaultForceEnable,0x%{public}x,result,0x%{public}x", buf, 0x14u);
    }

    v43 = a1;
    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
        v43 = a1;
      }

      v44 = *(*v43 + 1328);
      v51[0] = 67240704;
      v51[1] = v39;
      v52 = 1026;
      v53 = v40;
      v54 = 1026;
      v55 = v44;
      LODWORD(v47) = 20;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#GnssConstControl,setGnssConstellationSettingsFromMobileAssets,maBlocked,0x%{public}x,defaultForceEnable,0x%{public}x,result,0x%{public}x", v51, v47);
      v46 = v45;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGnssController::setGnssConstellationSettingsFromMobileAssets(const CLNameValuePair &)", "%s\n", v45);
      if (v46 != buf)
      {
        free(v46);
      }
    }
  }
}

void sub_100803148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10080317C(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  if (*result)
  {
    *(v2 + 1352) = a2;
    *(v2 + 1360) = 1;
  }

  return result;
}

void sub_100803194(uint64_t result, uint64_t a2)
{
  if (*(result + 968))
  {
    v3 = sub_10170C3FC(result + 2752, a2);
    if ((v3 & 0x100) != 0)
    {
      if (v3)
      {
        if (qword_1025D4650 != -1)
        {
          sub_10194117C();
        }

        v4 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "knownACFileConfig,force download by MA", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019477F4();
        }

        sub_1016DA050(*(result + 968), 1);
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_10194117C();
        }

        v5 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *v6 = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "knownACFileConfig,stop download by MA", v6, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101947718();
        }

        sub_1016DA7B4(*(result + 968));
      }
    }
  }
}

void sub_1008032C4(void *a1, uint64_t a2, _DWORD *a3, char *a4)
{
  if (*a3 == 15)
  {
    v6 = a1[148];
    if (v6)
    {
      sub_100D085FC(v6, *a4);
    }

    v7 = a1[150];
    if (v7)
    {
      sub_100EAC37C(v7, *a4);
    }

    v8 = a1[132];
    if (v8)
    {
      sub_1016FF368(v8, *a4);
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a4;
      v11[0] = 68289282;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 1026;
      v15 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onDaemonStatusNotification, isBatterySaverModeEnabled:%{public}hhd}", v11, 0x18u);
    }
  }
}

uint64_t sub_1008033E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_10024CA2C(a1, a2);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 2;
  }

  v5 = sub_10024CA2C(v2, v3);
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = 16;
  }

  v8 = v7 | v4;
  v9 = sub_10024CA2C(v5, v6);
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = 8;
  }

  if (sub_10071B74C(v9, v10))
  {
    v12 = 0;
  }

  else
  {
    v12 = 4;
  }

  v13 = v8 | v11 | v12;
  if (sub_10071B7A4())
  {
    v14 = 0;
  }

  else
  {
    v14 = 32;
  }

  return v13 | v14;
}

void sub_10080345C(uint64_t a1)
{
  v1 = *(a1 + 2504);
  if (v1)
  {
    sub_10093152C(v1);
  }
}

void sub_10080346C(uint64_t a1, void *a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67240192;
    v5[1] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#timingadvance,isTimingAdvanceFeatureEnabled,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019478D0(a2);
  }

  if (*a1)
  {
    *(*a1 + 1338) = a2;
  }
}

void sub_100803558(uint64_t *a1, uint64_t a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "GnssAssistanceFileSettings,MA-OTA,received notification", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019479BC();
  }

  sub_100803B54(a1 + 109, a2, "EnableGnssAssistanceRte");
  sub_100803B54(a1 + 115, a2, "EnableGnssAssistanceBce");
  sub_100803B54(a1 + 118, a2, "EnableGnssAssistanceRof");
  if (a1[112])
  {
    sub_10000EC00(&__p, "ConfigureGnssAssistanceRti");
    sub_10004FD18();
    if (v27 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (sub_100185ADC(a2, p_p, v24, 0xFFFFFFFFLL))
    {
      v22 = 0.0;
      v23 = 0.0;
      sub_100254968(a1[112], &v23, &v22, 0);
      if (v27 < 0)
      {
        v26 = 21;
        v6 = __p;
      }

      else
      {
        v27 = 21;
        v6 = &__p;
      }

      strcpy(v6, "UpdateRateCellSeconds");
      if (v27 >= 0)
      {
        v12 = &__p;
      }

      else
      {
        v12 = __p;
      }

      if (sub_1000B9370(v24, v12, &v23))
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v13 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v31 = v23;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "GnssAssistanceFileSettings,MA-OTA,obtained RTI config rate,updateRateCellSec,%{public}.2f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101940C70(buf);
          v28 = 134349056;
          v29 = v23;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "GnssAssistanceFileSettings,MA-OTA,obtained RTI config rate,updateRateCellSec,%{public}.2f", &v28, 12);
          v18 = v17;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssController::setGnssAssistanceFileSettingsFromMobileAssets(const CLNameValuePair &)", "%s\n", v17);
          if (v18 != buf)
          {
            free(v18);
          }
        }
      }

      if (v27 < 0)
      {
        v26 = 21;
        v14 = __p;
      }

      else
      {
        v27 = 21;
        v14 = &__p;
      }

      strcpy(v14, "UpdateRateWifiSeconds");
      if (v27 >= 0)
      {
        v15 = &__p;
      }

      else
      {
        v15 = __p;
      }

      if (sub_1000B9370(v24, v15, &v22))
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v16 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134349056;
          v31 = v22;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "GnssAssistanceFileSettings,MA-OTA,obtained RTI config rate,updateRateWifiSec,%{public}.2f", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101940C70(buf);
          v28 = 134349056;
          v29 = v22;
          LODWORD(v21) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "GnssAssistanceFileSettings,MA-OTA,obtained RTI config rate,updateRateWifiSec,%{public}.2f", &v28, v21);
          v20 = v19;
          sub_100152C7C("Generic", 1, 0, 2, "void CLGnssController::setGnssAssistanceFileSettingsFromMobileAssets(const CLNameValuePair &)", "%s\n", v19);
          if (v20 != buf)
          {
            free(v20);
          }
        }
      }

      sub_1016DBC68(a1[112], v23, v22);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        v8 = &__p;
        if (v27 < 0)
        {
          v8 = __p;
        }

        *buf = 136446210;
        v31 = *&v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "GnssAssistanceFileSettings,MA-OTA,missing key,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101940C70(buf);
        v9 = &__p;
        if (v27 < 0)
        {
          v9 = __p;
        }

        v28 = 136446210;
        v29 = *&v9;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 1, "GnssAssistanceFileSettings,MA-OTA,missing key,%{public}s", &v28, 12);
        v11 = v10;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGnssController::setGnssAssistanceFileSettingsFromMobileAssets(const CLNameValuePair &)", "%s\n", v10);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    sub_100005DA4();
    if (v27 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_100803B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_100005DA4();
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100803B54(uint64_t *result, uint64_t a2, char *a3)
{
  if (*result)
  {
    v6 = 1;
    if ((sub_10001CB4C(a2, a3, &v6, 0xFFFFFFFFLL) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
      {
        *buf = 136446466;
        v8 = a3;
        v9 = 1026;
        v10 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "GnssAssistanceFileSettings,MA-OTA,missing key,%{public}s,doEnable,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101947AA0(a3, &v6);
      }
    }

    sub_1016DB944(*result, v6);
  }
}

void sub_100803C7C(uint64_t a1)
{
  v1 = *(a1 + 1024);
  if (v1)
  {
    sub_101754EB8(v1);
  }
}

uint64_t sub_100803C8C(uint64_t a1)
{
  memset(&v54, 0, sizeof(v54));
  sub_10001CAF4(buf);
  v2 = sub_100175094(buf[0].__r_.__value_.__l.__data_, "GnssKnownACFileUrl", &v54);
  if (buf[0].__r_.__value_.__l.__size_)
  {
    sub_100008080(buf[0].__r_.__value_.__l.__size_);
  }

  if (v2)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v3 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v4 = &v54;
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v4 = v54.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
      *(buf[0].__r_.__value_.__r.__words + 4) = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "knownACFile,user defined url %s", buf, 0xCu);
    }

    v5 = sub_10000A100(121, 2);
    if (v5)
    {
      sub_101940C70(buf);
      v33 = &v54;
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = v54.__r_.__value_.__r.__words[0];
      }

      LODWORD(v59[0]) = 136315138;
      *(v59 + 4) = v33;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "knownACFile,user defined url %s", v59);
      v35 = v34;
      v5 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v34);
      if (v35 != buf)
      {
        free(v35);
      }
    }

    size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v8 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "knownACFile,using on device file", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101940C70(buf);
        LOWORD(v59[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "knownACFile,using on device file", v59, 2);
        v46 = v45;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v45);
        if (v46 != buf)
        {
          free(v46);
        }
      }

      v10 = *(a1 + 960);
      *(a1 + 952) = 0u;
      if (v10)
      {
        sub_100008080(v10);
      }

      sub_10170B188(a1 + 2752, v9);
      goto LABEL_85;
    }

LABEL_31:
    v15 = sub_1000206B4(v5, v6);
    sub_100021668(v15, buf);
    v16 = std::string::append(buf, "ligl.bin", 8uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v60 = v16->__r_.__value_.__r.__words[2];
    *v59 = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    v18 = *(a1 + 952);
    if (!v18)
    {
      sub_10080EB20();
    }

    if (*(v18 + 23) < 0)
    {
      sub_100007244(__p, *v18, *(v18 + 1));
    }

    else
    {
      v19 = *v18;
      v53 = *(v18 + 2);
      *__p = v19;
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = v54.__r_.__value_.__l.__size_;
    }

    v22 = HIBYTE(v53);
    if (v53 < 0)
    {
      v22 = __p[1];
    }

    if (v21 == v22)
    {
      v23 = (v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v54 : v54.__r_.__value_.__r.__words[0];
      v24 = v53 >= 0 ? __p : __p[0];
      if (!memcmp(v23, v24, v21))
      {
        goto LABEL_81;
      }
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v25 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v26 = __p;
      if (v53 < 0)
      {
        v26 = __p[0];
      }

      v27 = &v54;
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v54.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = v26;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v27;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "knownACFile,url changed from, %s,to, %s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940C70(buf);
      v38 = __p;
      if (v53 < 0)
      {
        v38 = __p[0];
      }

      v39 = &v54;
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v39 = v54.__r_.__value_.__r.__words[0];
      }

      v55 = 136315394;
      v56 = *&v38;
      v57 = 2080;
      v58 = v39;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "knownACFile,url changed from, %s,to, %s", &v55, 22);
      v41 = v40;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v40);
      if (v41 != buf)
      {
        free(v41);
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    if (vabdd_f64(Current, *(a1 + 976)) >= 86400.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v31 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf[0].__r_.__value_.__l.__data_) = 134217984;
        *(buf[0].__r_.__value_.__r.__words + 4) = Current;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "knownACFile,first url change at,%.1f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101940C70(buf);
        v55 = 134217984;
        v56 = Current;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "knownACFile,first url change at,%.1f", COERCE_DOUBLE(&v55));
        v48 = v47;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v47);
        if (v48 != buf)
        {
          free(v48);
        }
      }

      *(a1 + 976) = Current;
      *(a1 + 984) = 1;
    }

    else
    {
      v29 = *(a1 + 984) + 1;
      *(a1 + 984) = v29;
      if (v29 >= 3)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v30 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "knownACFile,url change limit hit", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101940C70(buf);
          LOWORD(v55) = 0;
          LODWORD(v51) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "knownACFile,url change limit hit", &v55, v51);
          v50 = v49;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v49);
          if (v50 != buf)
          {
            free(v50);
          }
        }

LABEL_81:
        if (SHIBYTE(v53) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v60) < 0)
        {
          operator delete(v59[0]);
        }

        goto LABEL_85;
      }
    }

    sub_10080EB20();
  }

  v11 = GEOURLString();
  v12 = v11;
  if (v11 && [v11 length])
  {
    sub_100006044(&v54, [v12 UTF8String]);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v14 = &v54;
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v14 = v54.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
      *(buf[0].__r_.__value_.__r.__words + 4) = v14;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "knownACFile,source url is %s", buf, 0xCu);
    }

    v5 = sub_10000A100(121, 2);
    if (v5)
    {
      sub_101940C70(buf);
      v42 = &v54;
      if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v54.__r_.__value_.__r.__words[0];
      }

      LODWORD(v59[0]) = 136315138;
      *(v59 + 4) = v42;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "knownACFile,source url is %s", v59);
      v44 = v43;
      v5 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v43);
      if (v44 != buf)
      {
        free(v44);
      }
    }

    goto LABEL_31;
  }

  if (qword_1025D4650 != -1)
  {
    sub_101940C48();
  }

  v20 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "knownACFile, URL is nil or empty", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101940C70(buf);
    LOWORD(v59[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 16, "knownACFile, URL is nil or empty", v59, 2);
    v37 = v36;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGnssController::didKnownACSourceUrlChange()", "%s\n", v36);
    if (v37 != buf)
    {
      free(v37);
    }
  }

LABEL_85:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100804744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008047F4(double *a1)
{
  if (*(a1 + 119))
  {
    sub_10001CAF4(buf);
    v7 = 0;
    sub_1000B9370(*buf, "GnssKnownACUpdateRateCellSeconds", &v7);
    if (*v9)
    {
      sub_100008080(*v9);
    }

    sub_10001CAF4(buf);
    v7 = 0;
    sub_1000B9370(*buf, "GnssKnownACUpdateRateWiFiSeconds", &v7);
    if (*v9)
    {
      sub_100008080(*v9);
    }

    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 119);
      v4 = v3;
      if (*(v3 + 23) < 0)
      {
        v4 = *v3;
      }

      v5 = v3 + 3;
      if (*(v3 + 47) < 0)
      {
        v5 = *v5;
      }

      *buf = 68289795;
      *&buf[4] = 0;
      *v9 = 2082;
      *&v9[2] = "";
      v10 = 2082;
      v11 = "knownACFile";
      v12 = 2081;
      v13 = v4;
      v14 = 2081;
      v15 = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s, source:%{private, location:escape_only}s, destination:%{private, location:escape_only}s}", buf, 0x30u);
    }

    operator new();
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v6 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "knownACFile, exiting as KnownAC file ptr is null", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101947D9C();
  }
}

void sub_100804ABC(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  sub_10080AC08(va);
  if (a5)
  {
    sub_100008080(a5);
  }

  operator delete();
}

uint64_t sub_100804B08(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *(v3 + 47);
    if (v5 < 0)
    {
      v5 = *(v3 + 32);
    }

    if (v5)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v6 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v7 = (*a2 + 24);
        if (*(*a2 + 47) < 0)
        {
          v7 = *v7;
        }

        v12 = 136446210;
        v13 = v7;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", &v12, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101947E80(a2);
      }

      v8 = (*a2 + 24);
      if (*(*a2 + 47) < 0)
      {
        v8 = *v8;
      }

      if ((sub_1004E915C(v8, 4) & 1) == 0)
      {
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        v9 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          v10 = (*a2 + 24);
          if (*(*a2 + 47) < 0)
          {
            v10 = *v10;
          }

          v12 = 136446210;
          v13 = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class,assistance file,%{public}s", &v12, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101947F88(a2);
        }
      }
    }
  }

  sub_10170B188(a1 + 2752, a2);
  return sub_100803C8C(a1);
}

void sub_100804CD8(uint64_t *a1)
{
  v3 = *a1;
  if (v3)
  {
    v4 = *(*v3 + 360);

    v4();
  }

  else
  {
    v7 = v1;
    v8 = v2;
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#timingadvanceforcell, fDevice not found", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101948090();
    }
  }
}

void sub_100804DAC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1001C3FFC(a1, a2);
    if (v3)
    {
      sub_10095D9F8(v3, 0, a1);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "GNSS_SEN,Could not get the sensor to deregister from", v6, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194816C();
      }
    }

    (*(*a1 + 8))(a1);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "GNSS_SEN,Invalid dispatcher passed to Deleter", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101948250();
    }
  }
}

void sub_100804EF8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_10098EAD4(a1, a2);
    if (v3)
    {
      sub_10095D9F8(v3, 0, a1);
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_10194117C();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
      {
        *v6 = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "GNSS_SEN,Could not get the sensor to deregister from", v6, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101948334();
      }
    }

    (*(*a1 + 8))(a1);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "GNSS_SEN,Invalid dispatcher passed to Deleter", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101948418();
    }
  }
}

uint64_t sub_100805044(uint64_t a1)
{
  *a1 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 8) = _Q0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_101C76220;
  *(a1 + 64) = _Q0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 11;
  *(a1 + 100) = -1;
  *(a1 + 108) = -1;
  *(a1 + 120) = _Q0;
  *(a1 + 136) = 0;
  __asm { FMOV            V1.2S, #-1.0 }

  *(a1 + 140) = _D1;
  *(a1 + 148) = 26;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0xFFFFFFFF00000000;
  *(a1 + 188) = 4;
  *(a1 + 200) = -1;
  *(a1 + 248) = _Q0;
  *(a1 + 384) = xmmword_101CE6D38;
  *(a1 + 400) = xmmword_101CE6D48;
  *(a1 + 416) = xmmword_101CE6D58;
  *(a1 + 428) = *(&xmmword_101CE6D58 + 12);
  *(a1 + 320) = xmmword_101CE6CF8;
  *(a1 + 336) = xmmword_101CE6D08;
  *(a1 + 352) = xmmword_101CE6D18;
  *(a1 + 368) = xmmword_101CE6D28;
  *(a1 + 288) = xmmword_101CE6CD8;
  *(a1 + 304) = xmmword_101CE6CE8;
  *(a1 + 540) = xmmword_101CE6D38;
  *(a1 + 556) = xmmword_101CE6D48;
  *(a1 + 572) = xmmword_101CE6D58;
  *(a1 + 584) = *(&xmmword_101CE6D58 + 12);
  *(a1 + 476) = xmmword_101CE6CF8;
  *(a1 + 492) = xmmword_101CE6D08;
  *(a1 + 508) = xmmword_101CE6D18;
  *(a1 + 524) = xmmword_101CE6D28;
  *(a1 + 444) = xmmword_101CE6CD8;
  *(a1 + 460) = xmmword_101CE6CE8;
  *(a1 + 696) = xmmword_101CE6D38;
  *(a1 + 712) = xmmword_101CE6D48;
  *(a1 + 728) = xmmword_101CE6D58;
  *(a1 + 740) = *(&xmmword_101CE6D58 + 12);
  *(a1 + 632) = xmmword_101CE6CF8;
  *(a1 + 648) = xmmword_101CE6D08;
  *(a1 + 664) = xmmword_101CE6D18;
  *(a1 + 680) = xmmword_101CE6D28;
  *(a1 + 600) = xmmword_101CE6CD8;
  *(a1 + 616) = xmmword_101CE6CE8;
  *(a1 + 852) = xmmword_101CE6D38;
  *(a1 + 868) = xmmword_101CE6D48;
  *(a1 + 884) = xmmword_101CE6D58;
  *(a1 + 788) = xmmword_101CE6CF8;
  *(a1 + 804) = xmmword_101CE6D08;
  *(a1 + 164) = -1;
  *(a1 + 168) = 0;
  *(a1 + 170) = 0;
  *(a1 + 176) = -1;
  *(a1 + 184) = 0;
  *(a1 + 196) = 0;
  *(a1 + 208) = 0;
  *(a1 + 212) = 0;
  *(a1 + 238) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 264) = 0xBFF0000000000000;
  *(a1 + 272) = 0xBFF0000000000000;
  *(a1 + 280) = 0;
  *(a1 + 820) = xmmword_101CE6D18;
  *(a1 + 836) = xmmword_101CE6D28;
  *(a1 + 756) = xmmword_101CE6CD8;
  *(a1 + 772) = xmmword_101CE6CE8;
  *(a1 + 933) = 0;
  *(a1 + 928) = 0;
  *(a1 + 896) = *(&xmmword_101CE6D58 + 12);
  *(a1 + 912) = 0u;
  *(a1 + 944) = xmmword_101CA7C10;
  sub_10000EC00((a1 + 960), "");
  sub_10000EC00((a1 + 984), "");
  *(a1 + 1016) = 0;
  *(a1 + 1008) = 0;
  *(a1 + 1024) = 0u;
  *(a1 + 1040) = 0xBFF0000000000000;
  *&v8 = -1;
  *(&v8 + 1) = -1;
  *(a1 + 1048) = -1;
  *(a1 + 1056) = -1;
  *(a1 + 1060) = 0;
  *(a1 + 1065) = 0;
  *(a1 + 1076) = -1;
  *(a1 + 1080) = 0;
  *(a1 + 1087) = 0;
  *(a1 + 1092) = 0u;
  *(a1 + 1108) = 0u;
  *(a1 + 1124) = 0u;
  *(a1 + 1140) = 0;
  *(a1 + 1184) = 0u;
  *(a1 + 1168) = 0u;
  *(a1 + 1152) = 0u;
  *(a1 + 1232) = -1;
  *(a1 + 1216) = v8;
  *(a1 + 1200) = v8;
  return a1;
}

void sub_1008052A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 983) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1008053C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024727E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008053F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008054B0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472868;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008054E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008055A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024728E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008055D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805690(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472968;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008056BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805778(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024729E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008057AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805868(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472A68;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080589C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805958(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472AE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080598C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805A48(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472B68;
  a2[1] = v2;
  return result;
}

uint64_t sub_100805A80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100805B3C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472BE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100805B74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100805BC0(uint64_t a1)
{
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0u;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0x402E000000000000;
  *(a1 + 64) = 1;
  *(a1 + 72) = xmmword_101CA7BD0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 6;
  *(a1 + 152) = 256;
  *(a1 + 154) = 1;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 232) = xmmword_101CA7BE0;
  *(a1 + 248) = 0x4024000000000000;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 280) = 1;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0u;
  *(a1 + 312) = 257;
  *(a1 + 316) = 0x32000000018;
  *(a1 + 324) = 0;
  *(a1 + 328) = 257;
  *(a1 + 332) = -115;
  *(a1 + 336) = 0x4000000000000000;
  *(a1 + 344) = 0x3E800000005;
  *(a1 + 352) = 0;
  *(a1 + 356) = -1;
  *(a1 + 364) = 257;
  *(a1 + 368) = 1;
  *(a1 + 372) = 257;
  *(a1 + 376) = 0x32000000018;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0;
  *(a1 + 392) = 0x6400000005;
  *(a1 + 400) = 256;
  *(a1 + 404) = 0;
  *(a1 + 408) = -1;
  *(a1 + 416) = 257;
  *(a1 + 420) = 1;
  *(a1 + 424) = 0;
  *(a1 + 428) = -1;
  *(a1 + 436) = 257;
  *(a1 + 440) = 0;
  *(a1 + 444) = -1;
  *(a1 + 452) = 257;
  *(a1 + 456) = 0;
  *(a1 + 460) = -1;
  *(a1 + 468) = 257;
  *(a1 + 472) = 0x6400000002;
  *(a1 + 480) = 100;
  *(a1 + 488) = 256;
  *(a1 + 490) = 1;
  *(a1 + 560) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 568) = 0x3FF0000000000000;
  __asm { FMOV            V6.2D, #10.0 }

  *(a1 + 608) = 0;
  *(a1 + 576) = _Q6;
  *(a1 + 592) = 0u;
  *(a1 + 616) = 1;
  *(a1 + 640) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 648) = 257;
  *(a1 + 652) = 0x32000000018;
  *(a1 + 660) = 0;
  *(a1 + 664) = 257;
  *(a1 + 668) = -115;
  *(a1 + 672) = 0x4000000000000000;
  *(a1 + 680) = 0x3E800000005;
  *(a1 + 688) = 0;
  *(a1 + 692) = -1;
  *(a1 + 700) = 257;
  *(a1 + 704) = 1;
  *(a1 + 708) = 257;
  *(a1 + 712) = 0x32000000018;
  *(a1 + 720) = 0;
  *(a1 + 724) = 0;
  *(a1 + 728) = 0x6400000005;
  *(a1 + 736) = 256;
  *(a1 + 740) = 0;
  *(a1 + 744) = -1;
  *(a1 + 752) = 257;
  *(a1 + 756) = 1;
  *(a1 + 760) = 0;
  *(a1 + 764) = -1;
  *(a1 + 772) = 257;
  *(a1 + 776) = 0;
  *(a1 + 780) = -1;
  *(a1 + 788) = 257;
  *(a1 + 792) = 0;
  *(a1 + 796) = -1;
  *(a1 + 804) = 257;
  *(a1 + 808) = 0x6400000002;
  *(a1 + 816) = 100;
  return result;
}

uint64_t sub_100805DF4(uint64_t a1)
{
  if (*(a1 + 1335) < 0)
  {
    operator delete(*(a1 + 1312));
  }

  if (*(a1 + 1311) < 0)
  {
    operator delete(*(a1 + 1288));
  }

  if (*(a1 + 1287) < 0)
  {
    operator delete(*(a1 + 1264));
  }

  if (*(a1 + 1263) < 0)
  {
    operator delete(*(a1 + 1240));
  }

  v3 = (a1 + 1216);
  sub_1003D2B50(&v3);
  if (*(a1 + 1183) < 0)
  {
    operator delete(*(a1 + 1160));
  }

  v3 = (a1 + 1128);
  sub_1003D2B50(&v3);
  if (*(a1 + 1095) < 0)
  {
    operator delete(*(a1 + 1072));
  }

  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  sub_100805EC8(a1 + 120);
  return a1;
}

uint64_t sub_100805EC8(uint64_t a1)
{
  v3 = (a1 + 624);
  sub_100805FD4(&v3);
  if (*(a1 + 615) < 0)
  {
    operator delete(*(a1 + 592));
  }

  if (*(a1 + 567) < 0)
  {
    operator delete(*(a1 + 544));
  }

  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  v3 = (a1 + 288);
  sub_100805FD4(&v3);
  if (*(a1 + 279) < 0)
  {
    operator delete(*(a1 + 256));
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  v3 = (a1 + 120);
  sub_1001E56E8(&v3);
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100805FD4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100806028(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100806028(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 7));
      }

      v4 = v3 - 10;
      if (*(v3 - 57) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 10;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_1008060A0(uint64_t a1)
{
  if (*(a1 + 1199) < 0)
  {
    operator delete(*(a1 + 1176));
  }

  if (*(a1 + 1175) < 0)
  {
    operator delete(*(a1 + 1152));
  }

  if (*(a1 + 1007) < 0)
  {
    operator delete(*(a1 + 984));
  }

  if (*(a1 + 983) < 0)
  {
    operator delete(*(a1 + 960));
  }

  return a1;
}

void *sub_100806104(void *a1, uint64_t a2)
{
  sub_1001B6020(v4, a2);
  sub_100806178(v4, a1);
  sub_1001C5560(v4);
  return a1;
}

void *sub_100806178(void *result, void *a2)
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

void sub_1008063D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10080640C(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  std::string::operator=((a1 + 32), (a2 + 32));
  v4 = *(a2 + 72);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = v4;
  std::string::operator=((a1 + 88), (a2 + 88));
  *(a1 + 112) = *(a2 + 112);
  if (a1 != a2)
  {
    sub_1018024F0((a1 + 120), *(a2 + 120), *(a2 + 128), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 128) - *(a2 + 120)) >> 3));
  }

  *(a1 + 144) = *(a2 + 144);
  v5 = *(a2 + 152);
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 152) = v5;
  std::string::operator=((a1 + 160), (a2 + 160));
  std::string::operator=((a1 + 184), (a2 + 184));
  std::string::operator=((a1 + 208), (a2 + 208));
  v6 = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = v6;
  std::string::operator=((a1 + 256), (a2 + 256));
  *(a1 + 280) = *(a2 + 280);
  if (a1 != a2)
  {
    sub_10080662C(a1 + 288, *(a2 + 288), *(a2 + 296), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 296) - *(a2 + 288)) >> 4));
  }

  v7 = *(a2 + 312);
  v8 = *(a2 + 344);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 344) = v8;
  *(a1 + 312) = v7;
  v9 = *(a2 + 360);
  v10 = *(a2 + 376);
  v11 = *(a2 + 408);
  *(a1 + 392) = *(a2 + 392);
  *(a1 + 408) = v11;
  *(a1 + 360) = v9;
  *(a1 + 376) = v10;
  v12 = *(a2 + 424);
  v13 = *(a2 + 440);
  v14 = *(a2 + 456);
  *(a1 + 468) = *(a2 + 468);
  *(a1 + 440) = v13;
  *(a1 + 456) = v14;
  *(a1 + 424) = v12;
  v15 = *(a2 + 488);
  *(a1 + 490) = *(a2 + 490);
  *(a1 + 488) = v15;
  std::string::operator=((a1 + 496), (a2 + 496));
  std::string::operator=((a1 + 520), (a2 + 520));
  std::string::operator=((a1 + 544), (a2 + 544));
  v16 = *(a2 + 584);
  *(a1 + 568) = *(a2 + 568);
  *(a1 + 584) = v16;
  std::string::operator=((a1 + 592), (a2 + 592));
  *(a1 + 616) = *(a2 + 616);
  if (a1 != a2)
  {
    sub_10080662C(a1 + 624, *(a2 + 624), *(a2 + 632), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 632) - *(a2 + 624)) >> 4));
  }

  v17 = *(a2 + 648);
  v18 = *(a2 + 680);
  *(a1 + 664) = *(a2 + 664);
  *(a1 + 680) = v18;
  *(a1 + 648) = v17;
  v19 = *(a2 + 696);
  v20 = *(a2 + 712);
  v21 = *(a2 + 744);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 744) = v21;
  *(a1 + 696) = v19;
  *(a1 + 712) = v20;
  v22 = *(a2 + 760);
  v23 = *(a2 + 776);
  v24 = *(a2 + 792);
  *(a1 + 804) = *(a2 + 804);
  *(a1 + 776) = v23;
  *(a1 + 792) = v24;
  *(a1 + 760) = v22;
  return a1;
}

void sub_10080662C(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_1008067C4(a1);
    if (a4 <= 0x333333333333333)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
      {
        v10 = 0x333333333333333;
      }

      else
      {
        v10 = v9;
      }

      sub_100806804(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 4) >= a4)
  {
    sub_100806A5C(&v17, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        if (*(v14 - 1) < 0)
        {
          operator delete(*(v14 - 3));
        }

        if (*(v14 - 33) < 0)
        {
          operator delete(*(v14 - 7));
        }

        v15 = v14 - 10;
        if (*(v14 - 57) < 0)
        {
          operator delete(*v15);
        }

        v14 -= 10;
      }

      while (v15 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_100806A5C(&v16, __str, (__str + v11), v8);
    *(a1 + 8) = sub_100806850(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_1008067C4(uint64_t a1)
{
  if (*a1)
  {
    sub_100806028(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_100806804(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    sub_100806AE0(a1, a2);
  }

  sub_10028C64C();
}

char *sub_100806850(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v13 = __dst;
  v14 = __dst;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100007244(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      if (*(v6 + 47) < 0)
      {
        sub_100007244(v4 + 24, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        *(v4 + 5) = *(v6 + 5);
        *(v4 + 24) = v8;
      }

      v4[48] = *(v6 + 48);
      if (*(v6 + 79) < 0)
      {
        sub_100007244(v4 + 56, *(v6 + 7), *(v6 + 8));
      }

      else
      {
        v9 = *(v6 + 56);
        *(v4 + 9) = *(v6 + 9);
        *(v4 + 56) = v9;
      }

      v6 += 5;
      v4 = v14 + 80;
      v14 += 80;
    }

    while (v6 != a3);
  }

  v12 = 1;
  sub_100806998(v11);
  return v4;
}

void sub_100806954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_100806998(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100806998(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1008069E4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1008069E4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 1) < 0)
      {
        operator delete(*(v6 - 3));
      }

      if (*(v6 - 33) < 0)
      {
        operator delete(*(v6 - 7));
      }

      v7 = v6 - 10;
      if (*(v6 - 57) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 10;
    }

    while (v7 != a5);
  }
}

std::string *sub_100806A5C(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    this[2].__r_.__value_.__s.__data_[0] = v5[2].__r_.__value_.__s.__data_[0];
    std::string::operator=((this + 56), (v5 + 56));
    this = (this + 80);
    v5 = (v5 + 80);
  }

  while (v5 != v6);
  return v6;
}

void sub_100806AE0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_100806B38(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    sub_100806CA4(a1);
    if (a4 <= 0x555555555555555)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v10 = 0x555555555555555;
      }

      else
      {
        v10 = v9;
      }

      sub_100806D0C(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 4) >= a4)
  {
    sub_100806E54(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 48;
        sub_1003D2AF8(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_100806E54(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_100806D58(a1, __str + v11, a3, *(a1 + 8));
  }
}

void sub_100806CA4(char **a1)
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
        v3 -= 48;
        sub_1003D2AF8(v3);
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

void sub_100806D0C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_1003D2A50(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_100806D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100007244(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      v12 = a2 + v7;
      if (*(a2 + v7 + 47) < 0)
      {
        sub_100007244((v11 + 24), *(v12 + 24), *(v12 + 32));
      }

      else
      {
        v13 = *(v12 + 24);
        *(v11 + 40) = *(v12 + 40);
        *(v11 + 24) = v13;
      }

      v7 += 48;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_100806E08(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 48;
    v5 = -v2;
    do
    {
      sub_1003D2AF8(v4);
      v4 -= 48;
      v5 += 48;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100806E54(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    this += 2;
    v5 += 2;
  }

  while (v5 != v6);
  return v6;
}

uint64_t sub_100806EC4(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_100807024(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = *(v16 + 8);
    if (v14.u32[0] > 1uLL)
    {
      v20 = *(v16 + 8);
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && *(v16 + 16) == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void sub_100807024(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_100807114(result, prime);
    }
  }
}

void sub_100807114(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1001D0818();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

double sub_100807378(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1008073A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100807478(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1008074C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008075AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100807698(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008076E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080777C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100807814(uint64_t a1, uint64_t a2)
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

void sub_1008078B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1008078EC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10080792C(uint64_t a1, const void **a2, void *a3)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  v5 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  v6 = (a1 + 96);
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 2;
  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    if (a2[1])
    {
      goto LABEL_5;
    }

LABEL_20:
    sub_1019484FC();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/GPS/Core/CLStateMachine.h", 61, "CLStateMachine");
    __break(1u);
    return;
  }

  if (!*(a2 + 23))
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  sub_100070148(&v11, v8 + 1);
  if (v12 >= 0)
  {
    v9 = &v11;
  }

  else
  {
    v9 = v11;
  }

  if (v8)
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    memmove(v9, v10, v8);
  }

  *(v9 + v8) = 44;
  if (*(a1 + 119) < 0)
  {
    operator delete(*v6);
  }

  *v6 = v11;
  *(a1 + 112) = v12;
}

void sub_100807A90(_Unwind_Exception *a1)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*v5);
  }

  sub_1003C93BC(v3, *(v1 + 64));
  v7 = *(v1 + 40);
  if (v7)
  {
    sub_100008080(v7);
  }

  sub_1003C93BC(v2, *v4);
  _Unwind_Resume(a1);
}

uint64_t sub_100807AD4(uint64_t a1)
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

uint64_t sub_100807B54(uint64_t a1)
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

uint64_t sub_100807BD4(uint64_t a1)
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

uint64_t sub_100807C54(uint64_t a1)
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

uint64_t *sub_100807CD4(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10168A7F4(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100807D20(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016DA8A8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100807D6C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100E0DD44(result);

    operator delete();
  }

  return result;
}

uint64_t **sub_100807DB8(uint64_t **result, uint64_t *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_10080C390((v2 + 3));
    v3 = *v2;
    *v2 = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_100807E48(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100AE351C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100807E94(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1009B889C(result);

    operator delete();
  }

  return result;
}

id *sub_100807EE0(id **a1, id *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_101754A38(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100807F2C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10131EFC0(result);

    operator delete();
  }

  return result;
}

uint64_t *sub_100807F78(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100746290(result);

    operator delete();
  }

  return result;
}

uint64_t *sub_100807FC4(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10167EAA8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100808010(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016FF1D8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10080805C(uint64_t a1)
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

uint64_t *sub_1008080DC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1008085F4(v2 + 72);

    operator delete();
  }

  return result;
}

uint64_t sub_10080813C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10080C4F8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100808188(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016CBDFC(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1008081D4(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016A8560(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100808220(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016BF660(result);

    operator delete();
  }

  return result;
}

void *sub_10080826C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1016AD084(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1008082B8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100D085F8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100808304(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1010BFFF8(result);

    operator delete();
  }

  return result;
}

uint64_t sub_100808350(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100EAB9FC(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10080839C(uint64_t a1)
{
  sub_1008083D8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1008083D8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100805DF4((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_10080841C(uint64_t a1)
{
  v2 = a1 + 56;
  sub_10080848C(*(a1 + 56), (a1 + 64), a1);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_1003C93BC(v2, *(a1 + 64));
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_100008080(v3);
  }

  sub_1003C93BC(a1 + 8, *(a1 + 16));
  return a1;
}

NSObject *sub_10080848C(void *a1, void *a2, NSObject *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_1001C04E8(a3, *(v5 + 8));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_10080857C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472F28;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008085A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008085F4(uint64_t a1)
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

uint64_t sub_1008086E4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102472FB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100808710(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080875C(uint64_t a1)
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

uint64_t sub_1008087DC(uint64_t a1)
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

uint64_t sub_1008088CC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473048;
  a2[1] = v2;
  return result;
}

void sub_1008088F8(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v15 = *(a2 + 960);
  v16 = *(a2 + 976);
  *(a2 + 960) = 0u;
  *(a2 + 976) = 0;
  v17 = *(a2 + 984);
  v18 = *(a2 + 1000);
  *(a2 + 984) = 0u;
  *(a2 + 1000) = 0;
  *(v26 + 12) = *(a2 + 1132);
  v26[0] = *(a2 + 1120);
  v25 = *(a2 + 1104);
  v24 = *(a2 + 1088);
  v23 = *(a2 + 1072);
  v22 = *(a2 + 1056);
  v21 = *(a2 + 1040);
  v4 = *(a2 + 1008);
  v20 = *(a2 + 1024);
  v19 = v4;
  v27 = *(a2 + 1152);
  v28 = *(a2 + 1168);
  v5 = *(a2 + 1176);
  *(a2 + 1176) = 0;
  *(a2 + 1168) = 0;
  *(a2 + 1152) = 0u;
  __p = v5;
  v30 = *(a2 + 1192);
  *(a2 + 1192) = 0;
  *(a2 + 1184) = 0;
  v31 = *(a2 + 1200);
  v32 = *(a2 + 1216);
  v33 = *(a2 + 1232);
  v6 = *(a1 + 8);
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v71) = 2082;
    *(&v71 + 2) = "";
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#awd,fEmergencyAWD CB}", buf, 0x12u);
  }

  v67 = xmmword_101CE6D38;
  v68 = xmmword_101CE6D48;
  memset(v69, 0, 28);
  v63 = xmmword_101CE6CF8;
  v64 = xmmword_101CE6D08;
  v65 = xmmword_101CE6D18;
  v66 = xmmword_101CE6D28;
  v61 = xmmword_101CE6CD8;
  v62 = xmmword_101CE6CE8;
  v58 = xmmword_101CE6D38;
  v59 = xmmword_101CE6D48;
  memset(v60, 0, 28);
  v54 = xmmword_101CE6CF8;
  v55 = xmmword_101CE6D08;
  v56 = xmmword_101CE6D18;
  v57 = xmmword_101CE6D28;
  v52 = xmmword_101CE6CD8;
  v53 = xmmword_101CE6CE8;
  v49 = xmmword_101CE6D38;
  v50 = xmmword_101CE6D48;
  memset(v51, 0, 28);
  v45 = xmmword_101CE6CF8;
  v46 = xmmword_101CE6D08;
  v47 = xmmword_101CE6D18;
  v48 = xmmword_101CE6D28;
  v43 = xmmword_101CE6CD8;
  v44 = xmmword_101CE6CE8;
  v40 = xmmword_101CE6D38;
  v41 = xmmword_101CE6D48;
  memset(v42, 0, 28);
  v36 = xmmword_101CE6CF8;
  v37 = xmmword_101CE6D08;
  v38 = xmmword_101CE6D18;
  v39 = xmmword_101CE6D28;
  v34 = xmmword_101CE6CD8;
  v35 = xmmword_101CE6CE8;
  v9 = *(v6 + 992);
  if (v9)
  {
    v9 = sub_100E12FB0(v9, buf);
    v67 = v77;
    v68 = v78;
    v69[0] = *v79;
    *(v69 + 12) = *&v79[3];
    v63 = v73;
    v64 = v74;
    v65 = v75;
    v66 = v76;
    v61 = v71;
    v62 = v72;
    v58 = *&v79[31];
    v59 = *&v79[35];
    v60[0] = *v80;
    *(v60 + 12) = *&v80[3];
    v54 = *&v79[15];
    v55 = *&v79[19];
    v56 = *&v79[23];
    v57 = *&v79[27];
    v52 = *&v79[7];
    v53 = *&v79[11];
    v49 = *&v80[31];
    v50 = *&v80[35];
    v51[0] = *v81;
    *(v51 + 12) = *&v81[3];
    v45 = *&v80[15];
    v46 = *&v80[19];
    v47 = *&v80[23];
    v48 = *&v80[27];
    v10 = buf[0];
    v11 = *buf & 0xFFFFFFFF00000000;
    v43 = *&v80[7];
    v44 = *&v80[11];
    v40 = *&v81[31];
    v41 = *&v81[35];
    v42[0] = *v82;
    *(v42 + 12) = *&v82[12];
    v36 = *&v81[15];
    v37 = *&v81[19];
    v38 = *&v81[23];
    v39 = *&v81[27];
    v12 = *buf & 0xFFFF00;
    v13 = *buf >> 24;
    v34 = *&v81[7];
    v35 = *&v81[11];
  }

  else
  {
    v12 = 0;
    v11 = 0;
    LOBYTE(v13) = 0;
    v10 = 0;
  }

  *(&__dst[17] + 1) = v11 | (v13 << 24) | v12 | v10;
  *(&__dst[26] + 12) = *(v69 + 12);
  __dst[24] = v67;
  __dst[25] = v68;
  __dst[20] = v63;
  __dst[21] = v64;
  __dst[22] = v65;
  __dst[23] = v66;
  __dst[18] = v61;
  __dst[19] = v62;
  *(&__dst[33] + 12) = v58;
  *(&__dst[34] + 12) = v59;
  *(&__dst[35] + 12) = v60[0];
  *(&__dst[36] + 8) = *(v60 + 12);
  *(&__dst[29] + 12) = v54;
  *(&__dst[30] + 12) = v55;
  *(&__dst[31] + 12) = v56;
  *(&__dst[32] + 12) = v57;
  *(&__dst[27] + 12) = v52;
  *(&__dst[28] + 12) = v53;
  *(&__dst[43] + 8) = v49;
  *(&__dst[44] + 8) = v50;
  *(&__dst[45] + 8) = v51[0];
  *(&__dst[46] + 4) = *(v51 + 12);
  *(&__dst[39] + 8) = v45;
  *(&__dst[40] + 8) = v46;
  *(&__dst[41] + 8) = v47;
  *(&__dst[42] + 8) = v48;
  *(&__dst[37] + 8) = v43;
  *(&__dst[38] + 8) = v44;
  *(&__dst[53] + 4) = v40;
  *(&__dst[54] + 4) = v41;
  *(&__dst[55] + 4) = v42[0];
  *(&__dst[49] + 4) = v36;
  *(&__dst[50] + 4) = v37;
  *(&__dst[51] + 4) = v38;
  *(&__dst[52] + 4) = v39;
  *(&__dst[47] + 4) = v34;
  *(&__dst[48] + 4) = v35;
  __dst[26] = v69[0];
  __dst[56] = *(v42 + 12);
  if (sub_1001C5490(v9, v8))
  {
    BYTE8(__dst[9]) = *(v6 + 1248);
    if (v10)
    {
      BYTE9(__dst[9]) = v13;
    }
  }

  sub_1016AA218(*(v6 + 1128), __dst);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }
}

uint64_t sub_100808EA0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100808EEC(void *result, void *a2)
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

void sub_100809144(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1008091D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 960);
  v3 = *(a2 + 983);
  v4 = *(a2 + 984);
  *(a2 + 960) = 0u;
  *(a2 + 976) = 0u;
  v5 = *(a2 + 1007);
  *(a2 + 992) = 0u;
  v6 = *(a2 + 1152);
  v7 = *(a2 + 1175);
  *(a2 + 1152) = 0;
  *(a2 + 1160) = 0u;
  v8 = *(a2 + 1176);
  v9 = *(a2 + 1199);
  *(a2 + 1192) = 0;
  *(a2 + 1176) = 0u;
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v10 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 68289026;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#awd,#Warning, Emergency AWD is disabled in simulator/conformance mode}", v11, 0x12u);
    if ((v9 & 0x80000000) == 0)
    {
LABEL_5:
      if ((v7 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v8);
  if ((v7 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(v6);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v2);
    return;
  }

LABEL_12:
  operator delete(v4);
  if (v3 < 0)
  {
    goto LABEL_13;
  }
}

uint64_t sub_10080934C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100809398(void *result, void *a2)
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

void sub_1008095F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10080966C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473158;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008096A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008096EC(uint64_t a1, uint64_t a2)
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

void *sub_100809784(void *result, void *a2)
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

void sub_1008099DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t **sub_1008099E8(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 40 * a3;
    do
    {
      sub_100809A6C(a1, v4, a2, a2);
      a2 += 10;
      v6 -= 40;
    }

    while (v6);
  }

  return a1;
}

void *sub_100809A6C(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v4 = *sub_1005A4918(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_100809B00();
  }

  return v4;
}

uint64_t sub_100809B80(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001C5560(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_100809BCC(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100809BCC(a1, *a2);
    sub_100809BCC(a1, a2[1]);
    sub_1001C5560((a2 + 5));

    operator delete(a2);
  }
}

uint64_t sub_100809C98(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024731E8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100809CC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100809D10(uint64_t a1)
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

uint64_t sub_100809E00(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473278;
  a2[1] = v2;
  return result;
}

uint64_t sub_100809E2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100809EE8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473308;
  a2[1] = v2;
  return result;
}

void sub_100809F14(uint64_t a1, unsigned int *a2)
{
  v2 = *(*(a1 + 8) + 848);
  if (v2)
  {
    sub_1016DAF30(v2, *a2);
  }
}

uint64_t sub_100809F2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100809F78(uint64_t a1)
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

uint64_t sub_10080A068(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473398;
  a2[1] = v2;
  return result;
}

void sub_10080A094(uint64_t a1, void *a2)
{
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v3 = *(a1 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007FF918(v3);
  if (v2)
  {
    sub_100008080(v2);

    sub_100008080(v2);
  }
}

void sub_10080A0FC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10080A11C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080A168(uint64_t a1)
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

uint64_t sub_10080A1E8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080A280(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080A318(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080A420(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473428;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080A44C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080A498(uint64_t a1)
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

uint64_t sub_10080A588(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024734B8;
  a2[1] = v2;
  return result;
}

__n128 sub_10080A5B4(uint64_t a1, _OWORD *a2)
{
  v2 = a2[7];
  v7[6] = a2[6];
  v7[7] = v2;
  v7[8] = a2[8];
  v3 = a2[3];
  v7[2] = a2[2];
  v7[3] = v3;
  v4 = a2[5];
  v7[4] = a2[4];
  v7[5] = v4;
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  sub_10013582C(*(a1 + 8), v7);
  return result;
}

uint64_t sub_10080A604(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10080A650(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

uint64_t *sub_10080A6BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  if (v2)
  {
    operator new();
  }

  a1[1] = 0;
  *a2 = 0;
  return a1;
}

uint64_t sub_10080A744(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080A7F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024735A8;
  a2[1] = v2;
  return result;
}

void sub_10080A820(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (v3)
  {
    if ((*(v3 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 32))
      {
        goto LABEL_23;
      }
    }

    else if (!*(v3 + 47))
    {
      goto LABEL_23;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v6 = *v6;
      }

      *buf = 136446210;
      v21 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v11 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v11 = *v11;
      }

      v18 = 136446210;
      v19 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "file,%{public}s,ClassD", &v18, 12);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v7 = (v3 + 24);
    v8 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v8 = *v7;
    }

    if ((sub_1004E915C(v8, 4) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 24);
        if (*(v3 + 47) < 0)
        {
          v10 = *v7;
        }

        *buf = 136446210;
        v21 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class,assistance file,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        if (*(v3 + 47) < 0)
        {
          v7 = *v7;
        }

        v18 = 136446210;
        v19 = v7;
        LODWORD(v16) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning,cannot set protection class,assistance file,%{public}s", &v18, v16);
        v15 = v14;
        sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }
  }

LABEL_23:
  v17[0] = v3;
  v17[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007FF9C0(v4, v17);
  if (v2)
  {
    sub_100008080(v2);
    sub_100008080(v2);
  }
}

uint64_t sub_10080ABBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080AC08(uint64_t a1)
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

uint64_t sub_10080ACF8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473638;
  a2[1] = v2;
  return result;
}

void sub_10080AD24(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (v3)
  {
    if ((*(v3 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 32))
      {
        goto LABEL_23;
      }
    }

    else if (!*(v3 + 47))
    {
      goto LABEL_23;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v6 = *v6;
      }

      *buf = 136446210;
      v21 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v11 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v11 = *v11;
      }

      v18 = 136446210;
      v19 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "file,%{public}s,ClassD", &v18, 12);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v7 = (v3 + 24);
    v8 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v8 = *v7;
    }

    if ((sub_1004E915C(v8, 4) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 24);
        if (*(v3 + 47) < 0)
        {
          v10 = *v7;
        }

        *buf = 136446210;
        v21 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class for assistance file,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        if (*(v3 + 47) < 0)
        {
          v7 = *v7;
        }

        v18 = 136446210;
        v19 = v7;
        LODWORD(v16) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning,cannot set protection class for assistance file,%{public}s", &v18, v16);
        v15 = v14;
        sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }
  }

LABEL_23:
  v17[0] = v3;
  v17[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007FFBB8(v4, v17);
  if (v2)
  {
    sub_100008080(v2);
    sub_100008080(v2);
  }
}

uint64_t sub_10080B0C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *sub_10080B180(char *a1, __int128 *a2, __int128 *a3)
{
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = off_1024736B8;
  sub_10080B25C(a1 + 24, a2, a3);
  return a1;
}

void sub_10080B1FC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1024736B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

char *sub_10080B25C(char *__dst, __int128 *a2, __int128 *a3)
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

  if (*(a3 + 23) < 0)
  {
    sub_100007244(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_10080B2D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10080B364(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473708;
  a2[1] = v2;
  return result;
}

void sub_10080B390(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (v3)
  {
    if ((*(v3 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 32))
      {
        goto LABEL_23;
      }
    }

    else if (!*(v3 + 47))
    {
      goto LABEL_23;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v6 = *v6;
      }

      *buf = 136446210;
      v21 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v11 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v11 = *v11;
      }

      v18 = 136446210;
      v19 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "file,%{public}s,ClassD", &v18, 12);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v7 = (v3 + 24);
    v8 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v8 = *v7;
    }

    if ((sub_1004E915C(v8, 4) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 24);
        if (*(v3 + 47) < 0)
        {
          v10 = *v7;
        }

        *buf = 136446210;
        v21 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class for assistance file,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        if (*(v3 + 47) < 0)
        {
          v7 = *v7;
        }

        v18 = 136446210;
        v19 = v7;
        LODWORD(v16) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning,cannot set protection class for assistance file,%{public}s", &v18, v16);
        v15 = v14;
        sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }
  }

LABEL_23:
  v17[0] = v3;
  v17[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007FFDB0(v4, v17);
  if (v2)
  {
    sub_100008080(v2);
    sub_100008080(v2);
  }
}

uint64_t sub_10080B72C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080B7E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473788;
  a2[1] = v2;
  return result;
}

void sub_10080B814(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (v3)
  {
    if ((*(v3 + 47) & 0x8000000000000000) != 0)
    {
      if (!*(v3 + 32))
      {
        goto LABEL_23;
      }
    }

    else if (!*(v3 + 47))
    {
      goto LABEL_23;
    }

    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v5 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v6 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v6 = *v6;
      }

      *buf = 136446210;
      v21 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v11 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v11 = *v11;
      }

      v18 = 136446210;
      v19 = v11;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "file,%{public}s,ClassD", &v18, 12);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }

    v7 = (v3 + 24);
    v8 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v8 = *v7;
    }

    if ((sub_1004E915C(v8, 4) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (v3 + 24);
        if (*(v3 + 47) < 0)
        {
          v10 = *v7;
        }

        *buf = 136446210;
        v21 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class for assistance file,%{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101940C48();
        }

        if (*(v3 + 47) < 0)
        {
          v7 = *v7;
        }

        v18 = 136446210;
        v19 = v7;
        LODWORD(v16) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning,cannot set protection class for assistance file,%{public}s", &v18, v16);
        v15 = v14;
        sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }
  }

LABEL_23:
  v17[0] = v3;
  v17[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007FFEB8(v4, v17);
  if (v2)
  {
    sub_100008080(v2);
    sub_100008080(v2);
  }
}

uint64_t sub_10080BBB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080BC6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473808;
  a2[1] = v2;
  return result;
}

void sub_10080BC98(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_23;
  }

  if ((*(v3 + 47) & 0x8000000000000000) != 0)
  {
    if (!*(v3 + 32))
    {
      goto LABEL_23;
    }
  }

  else if (!*(v3 + 47))
  {
    goto LABEL_23;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v6 = *v6;
    }

    *buf = 136446210;
    v20 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "file,%{public}s,ClassD", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v11 = (v3 + 24);
    if (*(v3 + 47) < 0)
    {
      v11 = *v11;
    }

    v17 = 136446210;
    v18 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "file,%{public}s,ClassD", &v17, 12);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v7 = (v3 + 24);
  v8 = (v3 + 24);
  if (*(v3 + 47) < 0)
  {
    v8 = *v7;
  }

  if ((sub_1004E915C(v8, 4) & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v9 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (v3 + 24);
      if (*(v3 + 47) < 0)
      {
        v10 = *v7;
      }

      *buf = 136446210;
      v20 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning,cannot set protection class,assistance file,%{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4650 != -1)
      {
        sub_101940C48();
      }

      if (*(v3 + 47) < 0)
      {
        v7 = *v7;
      }

      v17 = 136446210;
      v18 = v7;
      LODWORD(v16) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#Warning,cannot set protection class,assistance file,%{public}s", &v17, v16);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::CLGnssController(id<CLIntersiloUniverse>, LocationObserverCallback, MeasurementObserverCallback, VendorLocationCallback, BasebandTimeTransferObserverCallback, RhythmicBatchedLocationCallback, BasebandCausesL1InterferenceModeAssertionCallback, OnGnssStopCallback, KnownACGnssLocationCallback)::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }
  }

LABEL_23:
  sub_1008000B0(v4);
  if (v2)
  {
    sub_100008080(v2);
  }
}

uint64_t sub_10080C000(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C0BC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473888;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C0E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C1A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473918;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C1DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C228(uint64_t a1)
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

uint64_t sub_10080C318(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473998;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C344(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C390(uint64_t a1)
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

uint64_t sub_10080C480(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473A28;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C4AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C4F8(uint64_t a1)
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

uint64_t sub_10080C5E8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473AA8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C61C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C668(uint64_t a1)
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

uint64_t sub_10080C758(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473B38;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C784(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C840(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473BC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080C86C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "injectassistancepedometerspeed";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  return (*(**v3 + 88))(*v3, a2);
}

uint64_t sub_10080C980(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080C9CC(uint64_t a1)
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

uint64_t sub_10080CABC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473C58;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080CAE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2082;
    v10 = "injectassistancepedometerspeedconstraint";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:GnssEvent, event:%{public, location:escape_only}s}", v6, 0x1Cu);
  }

  return (*(**v3 + 96))(*v3, a2);
}

uint64_t sub_10080CBFC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080CC48(uint64_t a1)
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

uint64_t sub_10080CCC8(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080CD60(uint64_t a1, uint64_t a2)
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

uint64_t sub_10080CE68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473CE8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080CE94(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080CF50(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473D78;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080CF7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080CFC8(uint64_t a1)
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

uint64_t sub_10080D048(uint64_t a1)
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

uint64_t sub_10080D138(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473E08;
  a2[1] = v2;
  return result;
}

void sub_10080D164(uint64_t a1, unsigned int *a2, void *__src)
{
  v4 = *a2;
  memcpy(__dst, __src, sizeof(__dst));
  sub_1008002E4(*(a1 + 8), v4, __dst);
}

uint64_t sub_10080D1B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080D204(uint64_t a1)
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

uint64_t sub_10080D2F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473E98;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080D32C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080D378(uint64_t a1)
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

uint64_t sub_10080D468(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473F28;
  a2[1] = v2;
  return result;
}

void sub_10080D494(uint64_t a1, unsigned int *a2, int **a3)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (*v4)
  {
    *(*v4 + 472) = v3;
    v5 = *a3;
    v6 = a3[1];
    if (*a3 != v6)
    {
      do
      {
        v7 = *v5++;
        v10 = v7;
        v8 = *v4;
        v11 = &v10;
        v9 = sub_1003E3DEC(v8 + 64, &v10, &unk_101C66300, &v11);
        ++v9[5];
      }

      while (v5 != v6);
    }
  }

  sub_10080191C(v4, v3);
}

uint64_t sub_10080D53C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080D588(uint64_t a1)
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

uint64_t sub_10080D678(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102473FB8;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080D6B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080D6FC(uint64_t a1)
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

uint64_t *sub_10080D77C(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    sub_10080D9B0();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10080D99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10080DE38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10080DE38(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100805DF4(v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *sub_10080DE84(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    sub_10080E0B8();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_10080E0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10080DE38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10080E2CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080E388(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024740C8;
  a2[1] = v2;
  return result;
}

void sub_10080E3B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1007FDF94(v1);
  v2 = *(v1 + 1040);
  if (v2)
  {
    sub_100746294(v2);
  }

  v3 = *(v1 + 1008);
  if (v3)
  {
    sub_100AE3520(v3);
  }

  v4 = *(v1 + 1056);
  if (v4)
  {
    sub_1016FF060(v4);
  }

  v5 = *(v1 + 1032);
  if (v5)
  {
    sub_10131F5B0(v5);
  }

  v6 = *(v1 + 1016);
  if (v6)
  {
    sub_1009B8B64(v6);
  }

  if (*(v1 + 1104) && *(v1 + 1220) == 1)
  {
    sub_100800C1C(v1 + 816);
    sub_100800B68(v1 + 800);
    *(v1 + 1220) = 0;
  }

  sub_1007FDF08(v1);
}

uint64_t sub_10080E454(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080E510(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102474148;
  a2[1] = v2;
  return result;
}

uint64_t sub_10080E544(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080E600(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1024741C8;
  a2[1] = v2;
  return result;
}

void sub_10080E62C(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_1007FDF94(v1);

  sub_1007FDF08(v1);
}

uint64_t sub_10080E668(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10080E6CC(uint64_t a1)
{
  sub_10080E704(a1);

  operator delete();
}

uint64_t sub_10080E704(uint64_t a1)
{
  *a1 = off_102474248;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  if (*(a1 + 56))
  {
    operator delete[]();
  }

  return sub_1017E7D44(a1);
}

void sub_10080E79C(void *a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  *a1 = off_1025019A0;
  *a1 = off_1024742C0;
  a1[1] = 0;
  v8 = a2;
  a1[5] = 0;
  a1[2] = v8;
  a1[3] = a3;
  a1[4] = a5;
  a1[6] = 0;
  operator new[]();
}

void sub_10080E92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  sub_1017E7D44(v18);
  _Unwind_Resume(a1);
}

void sub_10080E96C(uint64_t a1)
{
  sub_10080E9A4(a1);

  operator delete();
}

uint64_t sub_10080E9A4(uint64_t a1)
{
  *a1 = off_1024742C0;
  (*(*(a1 + 40) + 16))();
  _Block_release(*(a1 + 40));
  _Block_release(*(a1 + 48));

  if (*(a1 + 56))
  {
    operator delete[]();
  }

  return sub_1017E7D44(a1);
}

uint64_t *sub_10080EA4C(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t sub_10080EC04(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_102474310;
  a2[1] = v2;
  return result;
}

void sub_10080EC30(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  v7[0] = *a2;
  v7[1] = v2;
  *a2 = 0;
  a2[1] = 0;
  v3 = *(a1 + 8);
  if (sub_100804B08(v3, v7))
  {
    if (qword_1025D4650 != -1)
    {
      sub_10194117C();
    }

    v4 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "knownACFile,calling modifyKnownACDownloader as source url has changed", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101940C70(buf);
      v8[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "knownACFile,calling modifyKnownACDownloader as source url has changed", v8, 2);
      v6 = v5;
      sub_100152C7C("Generic", 1, 0, 2, "auto CLGnssController::modifyKnownACDownloader()::(anonymous class)::operator()(std::shared_ptr<CLGnssAssistanceFile>) const", "%s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    sub_1008047F4(v3);
  }

  if (v2)
  {
    sub_100008080(v2);
  }
}

uint64_t sub_10080EDDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10080EE34(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_INFO, a4, a5, 0x26u);
}

void sub_10080EE4C(void *a1, NSObject *a2, uint64_t a3, os_signpost_id_t a4, const char *a5, const char *a6, uint8_t *a7)
{

  _os_signpost_emit_with_name_impl(a1, a2, OS_SIGNPOST_EVENT, a4, a5, a6, a7, 0x26u);
}

void sub_10080EE64()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_10080EF28()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_10080EFE0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CA7C40;
      v0[3] = unk_101CA7C50;
      v0[4] = xmmword_101CA7C60;
      v0[0] = xmmword_101CA7C20;
      v0[1] = unk_101CA7C30;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10080F0D8()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10080F150()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

uint64_t sub_10080F1C8()
{
  sub_10000EC00(qword_10265A318, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, qword_10265A318, dword_100000000);
  qword_10265A330 = off_102472CC8;
  qword_10265A348 = &qword_10265A330;
  __cxa_atexit(sub_1003EE78C, &qword_10265A330, dword_100000000);
  qword_10265A350 = off_102472D48;
  qword_10265A368 = &qword_10265A350;
  __cxa_atexit(sub_1003EE78C, &qword_10265A350, dword_100000000);
  qword_10265A370 = off_102472DC8;
  qword_10265A388 = &qword_10265A370;
  __cxa_atexit(sub_1003EE790, &qword_10265A370, dword_100000000);
  qword_10265A390 = off_102472E48;
  qword_10265A3A8 = &qword_10265A390;
  return __cxa_atexit(sub_1003EE790, &qword_10265A390, dword_100000000);
}

uint64_t sub_10080F310(uint64_t a1, double a2, double a3)
{
  *a1 = a3;
  *(a1 + 8) = 0xFFF0000000000000;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  sub_10116B808(a1 + 208);
  v5 = 70.0;
  if (a2 != -1.0)
  {
    v5 = a2;
  }

  *(a1 + 40) = v5;
  *(a1 + 48) = 0x3FF0000000000000;
  *(a1 + 64) = vdupq_n_s64(0xFFF0000000000000);
  *(a1 + 32) = a2 != -1.0;
  *(a1 + 36) = 2;
  *(a1 + 80) = 0x7FF0000000000000;
  v6 = *(a1 + 80);
  *(a1 + 128) = *(a1 + 64);
  *(a1 + 144) = v6;
  v7 = *(a1 + 48);
  *(a1 + 96) = *(a1 + 32);
  *(a1 + 112) = v7;
  return a1;
}

void sub_10080F3DC(uint64_t a1, __int128 *a2, unint64_t *a3)
{
  if (qword_1025D43A0 != -1)
  {
    sub_10001CA24();
  }

  v6 = qword_1025D43A8;
  if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_INFO))
  {
    v7 = *(a2 + 1);
    v8 = *(a2 + 2);
    v9 = *(a2 + 24);
    *buf = 134218496;
    v62 = v7;
    v63 = 2048;
    *v64 = v8;
    *&v64[8] = 1024;
    *v65 = v9;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "onHRCatherineData-catherine,%.0f,confidence,%.6f,error,%d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101948768(a2);
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (sub_10116B934((a1 + 208), a2, (a1 + 20), (a1 + 16)))
  {
    v11 = *(a1 + 200);
    if (v11)
    {
      v49 = 134219008;
      do
      {
        *v68 = 0u;
        memset(v67, 0, sizeof(v67));
        sub_10080FC6C(a1, a2, v67);
        ++*(a1 + 192);
        *(a1 + 200) = v11 - 1;
        sub_1000A2BE8(a1 + 160, 1);
        sub_10052CF28(a3, v67);
        if (qword_1025D43A0 != -1)
        {
          sub_101948884();
        }

        v12 = qword_1025D43A8;
        if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_INFO))
        {
          *buf = v49;
          v62 = *(&v67[0] + 1);
          v63 = 1024;
          *v64 = v67[0];
          *&v64[4] = 1024;
          *&v64[6] = DWORD1(v67[0]);
          *v65 = 2048;
          *&v65[2] = v68[0];
          LOWORD(v66[0]) = 2048;
          *(v66 + 2) = *(&v67[2] + 1);
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "return,catherine,%.0f,dataSource,%d,interpolation,%d,staleness,%.3f,startTime,%.6f", buf, 0x2Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D43A0 != -1)
          {
            sub_101948884();
          }

          v51 = v49;
          v52 = *(&v67[0] + 1);
          v53 = 1024;
          v54 = v67[0];
          v55 = 1024;
          v56 = DWORD1(v67[0]);
          v57 = 2048;
          v58 = v68[0];
          v59 = 2048;
          v60 = *(&v67[2] + 1);
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43A8, 1, "return,catherine,%.0f,dataSource,%d,interpolation,%d,staleness,%.3f,startTime,%.6f", COERCE_DOUBLE(&v51), 44, v46, v48, *&v49);
          v14 = v13;
          sub_100152C7C("Generic", 1, 0, 2, "void CLCatherineInterpolator::onHLCatherineData(const CLCatherineData &, CatherineQueue &)", "%s\n", v13);
          if (v14 != buf)
          {
            free(v14);
          }
        }

        v11 = *(a1 + 200);
      }

      while (v11);
    }

    sub_10052CF28(a3, a2);
    v23 = a3[5] + a3[4] - 1;
    v24 = *(a3[1] + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) + ((v23 & 0x3F) << 6);
    *(v24 + 48) = 0;
    *(v24 + 4) = 2;
    if (qword_1025D43A0 != -1)
    {
      sub_101948884();
    }

    v25 = qword_1025D43A8;
    if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_INFO))
    {
      v26 = *(v24 + 8);
      v27 = *v24;
      v28 = *(v24 + 4);
      v30 = *(v24 + 40);
      v29 = *(v24 + 48);
      *buf = 134219008;
      v62 = v26;
      v63 = 1024;
      *v64 = v27;
      *&v64[4] = 1024;
      *&v64[6] = v28;
      *v65 = 2048;
      *&v65[2] = v29;
      LOWORD(v66[0]) = 2048;
      *(v66 + 2) = v30;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "return,catherine,%.0f,dataSource,%d,interpolation,%d,staleness,%.3f,startTime,%.6f", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D43A0 != -1)
      {
        sub_101948884();
      }

      v39 = *(v24 + 8);
      v40 = *v24;
      v41 = *(v24 + 4);
      v43 = *(v24 + 40);
      v42 = *(v24 + 48);
      LODWORD(v67[0]) = 134219008;
      *(v67 + 4) = v39;
      WORD6(v67[0]) = 1024;
      *(v67 + 14) = v40;
      WORD1(v67[1]) = 1024;
      DWORD1(v67[1]) = v41;
      WORD4(v67[1]) = 2048;
      *(&v67[1] + 10) = v42;
      WORD1(v67[2]) = 2048;
      *(&v67[2] + 4) = v43;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43A8, 1, "return,catherine,%.0f,dataSource,%d,interpolation,%d,staleness,%.3f,startTime,%.6f", COERCE_DOUBLE(v67), 44, v46, v48, *&v49);
      v45 = v44;
      sub_100152C7C("Generic", 1, 0, 2, "void CLCatherineInterpolator::onHLCatherineData(const CLCatherineData &, CatherineQueue &)", "%s\n", v44);
      if (v45 != buf)
      {
        free(v45);
      }
    }

    *(a1 + 8) = Current;
    v32 = *a2;
    v31 = a2[1];
    v33 = a2[3];
    *(a1 + 128) = a2[2];
    *(a1 + 144) = v33;
    *(a1 + 96) = v32;
    *(a1 + 112) = v31;
    *(a1 + 144) = 0;
    *(a1 + 100) = 2;
    if (qword_1025D43A0 != -1)
    {
      sub_101948884();
    }

    v34 = qword_1025D43A8;
    if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_INFO))
    {
      v35 = *(a1 + 104);
      v36 = *(a1 + 128);
      v37 = *(a1 + 136);
      v38 = *(a1 + 96);
      *buf = 134218752;
      v62 = v35;
      v63 = 2048;
      *v64 = v36;
      *&v64[8] = 2048;
      *v65 = v37;
      *&v65[8] = 1024;
      v66[0] = v38;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_INFO, "lastGoodCatherine,catherine,%.0f,startTime,%.6f,startTime,%.6f,dataSource,%d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019489AC(a1, (a1 + 96));
    }
  }

  else
  {
    sub_1000A2B60((a1 + 160), a2 + 5);
    if (Current > *(a1 + 8) + *a1)
    {
      if (qword_1025D43A0 != -1)
      {
        sub_101948884();
      }

      v15 = qword_1025D43A8;
      if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 200);
        *buf = 134217984;
        v62 = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "Timeout exceded, notifying clients with %lu catherine samples", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019488AC(a1);
      }

      if (*(a1 + 200))
      {
        *(&v17 + 1) = -1;
        v50 = xmmword_101C66230;
        *&v17 = 134219008;
        v47 = v17;
        do
        {
          *(&v67[0] + 1) = *(a1 + 104);
          *&v67[0] = *(a1 + 96);
          v18 = *(*(*(a1 + 168) + ((*(a1 + 192) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(a1 + 192) & 0x1FFLL));
          *&v67[2] = v18 + *(a2 + 4) - *(a2 + 5);
          *(&v67[2] + 1) = v18;
          v68[0] = v18 - *(a1 + 136) + *(a1 + 144);
          if (*a1 == 65.0)
          {
            v19 = *(a1 + 112);
          }

          else
          {
            v19 = 0;
          }

          *&v67[1] = v19;
          sub_10052CF28(a3, v67);
          *(a1 + 192) = vaddq_s64(*(a1 + 192), v50);
          sub_1000A2BE8(a1 + 160, 1);
          if (qword_1025D43A0 != -1)
          {
            sub_101948884();
          }

          v20 = qword_1025D43A8;
          if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_INFO))
          {
            *buf = v47;
            v62 = *(&v67[0] + 1);
            v63 = 1024;
            *v64 = v67[0];
            *&v64[4] = 1024;
            *&v64[6] = DWORD1(v67[0]);
            *v65 = 2048;
            *&v65[2] = v68[0];
            LOWORD(v66[0]) = 2048;
            *(v66 + 2) = *(&v67[2] + 1);
            _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "return,catherine,%.0f,dataSource,%d,interpolation,%d,staleness,%.3f,startTime,%.6f", buf, 0x2Cu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D43A0 != -1)
            {
              sub_101948884();
            }

            v51 = v47;
            v52 = *(&v67[0] + 1);
            v53 = 1024;
            v54 = v67[0];
            v55 = 1024;
            v56 = DWORD1(v67[0]);
            v57 = 2048;
            v58 = v68[0];
            v59 = 2048;
            v60 = *(&v67[2] + 1);
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43A8, 1, "return,catherine,%.0f,dataSource,%d,interpolation,%d,staleness,%.3f,startTime,%.6f", COERCE_DOUBLE(&v51), 44, v47, *(&v47 + 1), *v50.i64);
            v22 = v21;
            sub_100152C7C("Generic", 1, 0, 2, "void CLCatherineInterpolator::onHLCatherineData(const CLCatherineData &, CatherineQueue &)", "%s\n", v21);
            if (v22 != buf)
            {
              free(v22);
            }
          }
        }

        while (*(a1 + 200));
      }
    }
  }
}