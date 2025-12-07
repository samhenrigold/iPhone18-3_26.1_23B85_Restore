void sub_100154FBC(_Unwind_Exception *a1)
{
  if (STACK[0x2D0])
  {
    sub_100008080(STACK[0x2D0]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100154FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CCA3C(a2, a2 + 160);
  v5 = sub_100155238(a1, a2, v4);
  if (v5)
  {
    v6 = *(a2 + 16);
    *(a1 + 8280) = *a2;
    *(a1 + 8296) = v6;
    v7 = *(a2 + 32);
    v8 = *(a2 + 48);
    v9 = *(a2 + 80);
    *(a1 + 8344) = *(a2 + 64);
    *(a1 + 8360) = v9;
    *(a1 + 8312) = v7;
    *(a1 + 8328) = v8;
    v10 = *(a2 + 96);
    v11 = *(a2 + 112);
    v12 = *(a2 + 128);
    *(a1 + 8420) = *(a2 + 140);
    *(a1 + 8392) = v11;
    *(a1 + 8408) = v12;
    *(a1 + 8376) = v10;
    memcpy((a1 + 8440), (a2 + 160), 0x201uLL);
    v13 = *(a2 + 680);
    v14 = *(a2 + 688);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 8960) = v13;
    v15 = *(a1 + 8968);
    *(a1 + 8968) = v14;
    if (v15)
    {
      sub_100008080(v15);
    }

    v16 = *(a2 + 696);
    v17 = *(a2 + 712);
    *(a1 + 9008) = *(a2 + 728);
    *(a1 + 8992) = v17;
    *(a1 + 8976) = v16;
    v18 = *(a2 + 744);
    v19 = *(a2 + 760);
    v20 = *(a2 + 776);
    *(a1 + 9065) = *(a2 + 785);
    *(a1 + 9056) = v20;
    *(a1 + 9040) = v19;
    *(a1 + 9024) = v18;
    *(a1 + 9092) = 0;
    *(a1 + 9092) = 4 * (*(a2 + 96) == 6);
    if (*(a2 + 84) > 0x44u)
    {
      if (*(a1 + 8364) > 0x4Eu)
      {
        v22 = 4;
      }

      else
      {
        v22 = 3;
      }

      *(a1 + 9088) = v22;
    }

    else
    {
      *(a1 + 9088) = 2;
      if (*(a1 + 8300) < 65.0)
      {
        *(a1 + 8300) = 0x4050400000000000;
      }
    }

    if (*(a1 + 8316) > 0.0)
    {
      v23 = *(a1 + 8364);
      if (v23 > 0x44)
      {
        if (v23 > 0x4E)
        {
          v24 = 4;
        }

        else
        {
          v24 = 3;
        }
      }

      else
      {
        v24 = 2;
      }

      *(a1 + 9092) = v24;
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v21 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v26[0] = 68289026;
      v26[1] = 0;
      v27 = 2082;
      v28 = "";
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #GnssAssistancePosition CPI: invalid assistance location}", v26, 0x12u);
    }
  }

  return v5;
}

uint64_t sub_100155238(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 96);
  result = 1;
  v8 = v6 > 0xB || ((1 << v6) & 0x850) == 0;
  if (v8 && (v6 != 10 || (*(a1 + 11768) & 1) == 0) && (v6 || (*(a2 + 516) & 1) == 0))
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v14 = qword_1025D4658;
    v15 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v15)
    {
      v16 = *(a2 + 96);
      v17 = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 1026;
      LODWORD(v22) = v16;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #GnssAssistancePosition TIGHT-COUPLING: invalid assistance location, type:%{public}d}", &v17, 0x18u);
      result = 0;
    }
  }

  if (*(a2 + 20) > 10000.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v9 = qword_1025D4658;
    v10 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v10)
    {
      v11 = *(a2 + 20);
      v17 = 68289538;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = v11;
      v23 = 2050;
      v24 = 0x40C3880000000000;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #GnssAssistancePosition TIGHT-COUPLING: invalid assistance location, horizontal accuracy:%{public}f, maximum accuracy:%{public}f}", &v17, 0x26u);
      result = 0;
    }
  }

  if (a3 > 10.0 || a3 < 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v12 = qword_1025D4658;
    v13 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v13)
    {
      v17 = 68289538;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = a3;
      v23 = 2050;
      v24 = 0x4024000000000000;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #GnssAssistancePosition TIGHT-COUPLING: invalid assistance location, age:%{public}f, maxAge:%{public}f}", &v17, 0x26u);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001554D4(uint64_t a1, int **a2)
{
  if (qword_1025D4650 != -1)
  {
    sub_10194117C();
  }

  v4 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v34[0]) = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#gnssband,build band vector", v34, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101946548();
  }

  v5 = *a2;
  a2[1] = *a2;
  if (*(a1 + 736))
  {
    v8 = *(a1 + 16);
    v6 = (a1 + 16);
    v7 = v8;
    v9 = v8 | 1;
    v10 = *(v6 - 1);
    v11 = a2[2];
    if (v5 >= v11)
    {
      v14 = (v11 - v5) >> 1;
      if (v14 <= 1)
      {
        v14 = 1;
      }

      if ((v11 - v5) >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v15 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      sub_1000B85D0(a2, v15);
    }

    *v5 = v9;
    v12 = v5 + 1;
    v16 = v7 | 4;
    a2[1] = v12;
    if (v12 >= v11)
    {
      v18 = *a2;
      v19 = v12 - *a2;
      v20 = v19 >> 2;
      v21 = (v19 >> 2) + 1;
      if (v21 >> 62)
      {
        sub_10028C64C();
      }

      if ((v11 - v18) >> 1 > v21)
      {
        v21 = (v11 - v18) >> 1;
      }

      if ((v11 - v18) >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v21 = 0x3FFFFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        sub_1000B85D0(a2, v21);
      }

      v11 = 0;
      *(4 * v20) = v16;
      v17 = (4 * v20 + 4);
      memcpy(0, v18, v19);
      v22 = *a2;
      *a2 = 0;
      a2[1] = v17;
      a2[2] = 0;
      if (v22)
      {
        operator delete(v22);
        v11 = a2[2];
      }
    }

    else
    {
      *v12 = v16;
      v17 = v12 + 1;
    }

    v23 = v10 | 2;
    a2[1] = v17;
    if (v17 >= v11)
    {
      v25 = *a2;
      v26 = v17 - *a2;
      v27 = v26 >> 2;
      v28 = (v26 >> 2) + 1;
      if (v28 >> 62)
      {
        sub_10028C64C();
      }

      if ((v11 - v25) >> 1 > v28)
      {
        v28 = (v11 - v25) >> 1;
      }

      if ((v11 - v25) >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v28 = 0x3FFFFFFFFFFFFFFFLL;
      }

      if (v28)
      {
        sub_1000B85D0(a2, v28);
      }

      *(4 * v27) = v23;
      v24 = (4 * v27 + 4);
      memcpy(0, v25, v26);
      v29 = *a2;
      *a2 = 0;
      a2[1] = v24;
      a2[2] = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      *v17 = v23;
      v24 = v17 + 1;
    }

    a2[1] = v24;
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v30 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *v6;
      v32 = *(v6 - 1);
      v34[0] = 67109376;
      v34[1] = v31;
      v35 = 1024;
      v36 = v32;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEFAULT, "#gnssband,getActiveGnssBands,L1,%d,L5,%d", v34, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194662C();
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_101940C48();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v34[0]) = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#gnssband,getActiveGnssBands,no active bands", v34, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194672C();
    }
  }

  return 1;
}

BOOL sub_1001558BC(CFDictionaryRef *a1, uint64_t a2)
{
  sub_100005548(v20, *a1);
  if (qword_102658388 != -1)
  {
    sub_1018E8CEC();
  }

  if (byte_102658390 == 1)
  {
    sub_1004FFDC0(v20, "nrCellFromCellMonitorDict");
  }

  *&__p[12] = 0;
  *&__p[4] = 0;
  *(a2 + 8) = -1;
  *a2 = -1;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *(a2 + 32) = -1;
  *(a2 + 80) = 0xFFFFFFFF00000000;
  v3 = *__p;
  *(a2 + 52) = *&__p[16];
  *(a2 + 56) = -1;
  *(a2 + 64) = -1;
  *(a2 + 36) = v3;
  *(a2 + 72) = -1;
  *(a2 + 88) = 0;
  sub_1000052CC(v20, kCTCellMonitorMCC, a2);
  sub_1000052CC(v20, kCTCellMonitorMNC, (a2 + 4));
  sub_1000052CC(v20, kCTCellMonitorTAC, (a2 + 8));
  sub_10016B550(v20, kCTCellMonitorCellId, (a2 + 16));
  sub_1000052CC(v20, kCTCellMonitorNRARFCN, (a2 + 24));
  cf1 = 0;
  sub_10006EB64(v20, kCTCellMonitorCellType, &cf1);
  if (CFEqual(cf1, kCTCellMonitorCellTypeServing))
  {
    sub_1000052CC(v20, kCTCellMonitorPID, (a2 + 28));
  }

  if (CFEqual(cf1, kCTCellMonitorCellTypeNeighbor))
  {
    sub_1000052CC(v20, kCTCellMonitorPCI, (a2 + 28));
  }

  sub_1000052CC(v20, kCTCellMonitorRSRP, (a2 + 56));
  sub_1000052CC(v20, kCTCellMonitorRSRQ, (a2 + 60));
  sub_1000052CC(v20, kCTCellMonitorBandInfo, (a2 + 32));
  sub_1000052CC(v20, kCTCellMonitorSCS, (a2 + 64));
  sub_1000052CC(v20, kCTCellMonitorGSCN, (a2 + 68));
  sub_1000052CC(v20, kCTCellMonitorBandwidth, (a2 + 72));
  sub_1000052CC(v20, kCTCellMonitorNeighborType, (a2 + 84));
  sub_1000052CC(v20, kCTCellMonitorPMax, (a2 + 76));
  sub_1000052CC(v20, kCTCellMonitorThroughput, (a2 + 80));
  v18 = 0;
  sub_1004FB850(v20, kCTCellMonitorNRFrequencyType, &v18 + 1);
  sub_1004FB850(v20, kCTCellMonitorNRRedCapInfo, &v18);
  *(a2 + 88) = BYTE4(v18) | (v18 << 16);
  v17 = 0;
  if (sub_1000052CC(v20, kCTCellMonitorSectorLat, &v17 + 1))
  {
    if (sub_1000052CC(v20, kCTCellMonitorSectorLong, &v17))
    {
      v4 = v17;
      if (v17)
      {
        *(a2 + 40) = SHIDWORD(v17) * 0.0000694444444;
        *(a2 + 48) = v4 * 0.0000694444444;
      }
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_100161554();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_10062233C(__p);
    v6 = v26 >= 0 ? __p : *__p;
    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "nrCell populated from CT: %s", buf, 0xCu);
    if (v26 < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D80(__p);
    v11 = qword_1025D4628;
    sub_10062233C(buf);
    if (v22 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    v23 = 136315138;
    v24 = v12;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v11, 2, "nrCell populated from CT: %s", &v23);
    v14 = v13;
    if (v22 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::nrCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::NrCell &)", "%s\n", v14);
    if (v14 != __p)
    {
      free(v14);
    }
  }

  v8 = *a2 > 0 && *(a2 + 4) >= 0;
  if (qword_1025D4620 != -1)
  {
    sub_100161554();
  }

  v9 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *__p = 67109120;
    *&__p[4] = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "nrCell is valid from CT: %d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8D80(__p);
    *buf = 67109120;
    *&buf[4] = v8;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 2, "nrCell is valid from CT: %d", buf);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCellMonitor::nrCellFromCellMonitorDict(const CFDictionaryRef &, CLTelephonyService_Type::NrCell &)", "%s\n", v15);
    if (v16 != __p)
    {
      free(v16);
    }
  }

  sub_100005DA4();
  return v8;
}

void sub_100155F78(__int128 *result, char *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 80;
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = &a2[-v10];
    v14 = 0xCCCCCCCCCCCCCCCDLL * (&a2[-v10] >> 4);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      v100 = *a3;
      v119 = *(a2 - 5);
      v101 = *(a2 - 4);
      v102 = *(a2 - 3);
      v103 = *(a2 - 1);
      v122 = *(a2 - 2);
      v123 = v103;
      v120 = v101;
      v121 = v102;
      v114 = *v10;
      v104 = *(v10 + 16);
      v105 = *(v10 + 32);
      v106 = *(v10 + 64);
      v117 = *(v10 + 48);
      v118 = v106;
      v115 = v104;
      v116 = v105;
      if (v100(&v119, &v114))
      {
        v119 = *v10;
        v108 = *(v10 + 16);
        v109 = *(v10 + 32);
        v110 = *(v10 + 64);
        v122 = *(v10 + 48);
        v123 = v110;
        v120 = v108;
        v121 = v109;
        v111 = *(a2 - 1);
        v113 = *(a2 - 4);
        v112 = *(a2 - 3);
        *(v10 + 48) = *(a2 - 2);
        *(v10 + 64) = v111;
        *(v10 + 16) = v113;
        *(v10 + 32) = v112;
        *v10 = *v9;
        *(a2 - 4) = v120;
        *(a2 - 3) = v121;
        *(a2 - 2) = v122;
        *(a2 - 1) = v123;
        *v9 = v119;
      }

      return;
    }

LABEL_10:
    if (v13 <= 1919)
    {
      if (a5)
      {
        sub_1004E01F4(v10, a2, a3);
      }

      else
      {
        sub_1004E038C(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {
        sub_1004E1494(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = (v10 + 80 * (v14 >> 1));
    if (v13 < 0x2801)
    {
      sub_1004DFA14(v16, v10, a2 - 5, a3);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_1004DFA14(v10, v16, a2 - 5, a3);
      v17 = 5 * v15;
      v18 = (v10 + 80 * v15 - 80);
      sub_1004DFA14((v10 + 80), v18, a2 - 10, a3);
      v19 = (v10 + 80 + 16 * v17);
      sub_1004DFA14(result + 10, v19, a2 - 15, a3);
      sub_1004DFA14(v18, v16, v19, a3);
      v119 = *result;
      v20 = result[1];
      v21 = result[2];
      v22 = result[4];
      v122 = result[3];
      v123 = v22;
      v120 = v20;
      v121 = v21;
      v23 = v16[4];
      v25 = v16[1];
      v24 = v16[2];
      result[3] = v16[3];
      result[4] = v23;
      result[1] = v25;
      result[2] = v24;
      *result = *v16;
      v26 = v123;
      v28 = v120;
      v27 = v121;
      v16[3] = v122;
      v16[4] = v26;
      v16[1] = v28;
      v16[2] = v27;
      *v16 = v119;
      if (a5)
      {
        goto LABEL_17;
      }
    }

    v29 = *a3;
    v119 = *(result - 5);
    v30 = *(result - 4);
    v31 = *(result - 3);
    v32 = *(result - 1);
    v122 = *(result - 2);
    v123 = v32;
    v120 = v30;
    v121 = v31;
    v114 = *result;
    v33 = result[1];
    v34 = result[2];
    v35 = result[4];
    v117 = result[3];
    v118 = v35;
    v115 = v33;
    v116 = v34;
    if ((v29(&v119, &v114) & 1) == 0)
    {
      v10 = sub_1004E04F8(result, a2, a3);
      goto LABEL_22;
    }

LABEL_17:
    v36 = sub_1004E07E8(result, a2, a3);
    if ((v37 & 1) == 0)
    {
      goto LABEL_20;
    }

    v38 = sub_1004E0AB0(result, v36, a3);
    v10 = (v36 + 5);
    if (sub_1004E0AB0(v36 + 5, a2, a3))
    {
      a4 = -v12;
      a2 = v36;
      if (v38)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v38)
    {
LABEL_20:
      sub_100155F78(result, v36, a3, -v12, a5 & 1);
      v10 = (v36 + 5);
LABEL_22:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 == 3)
  {
    sub_1004DFA14(v10, (v10 + 80), a2 - 5, a3);
    return;
  }

  if (v14 == 4)
  {
    sub_1004DFD34(v10, (v10 + 80), (v10 + 160), a2 - 5, a3);
    return;
  }

  if (v14 != 5)
  {
    goto LABEL_10;
  }

  sub_1004DFD34(v10, (v10 + 80), (v10 + 160), (v10 + 240), a3);
  v39 = *a3;
  v119 = *(a2 - 5);
  v40 = *(a2 - 4);
  v41 = *(a2 - 3);
  v42 = *(a2 - 1);
  v122 = *(a2 - 2);
  v123 = v42;
  v120 = v40;
  v121 = v41;
  v43 = *(v10 + 288);
  v116 = *(v10 + 272);
  v117 = v43;
  v118 = *(v10 + 304);
  v44 = *(v10 + 256);
  v114 = *(v10 + 240);
  v115 = v44;
  if (v39(&v119, &v114))
  {
    v45 = *(v10 + 288);
    v121 = *(v10 + 272);
    v122 = v45;
    v123 = *(v10 + 304);
    v46 = *(v10 + 256);
    v119 = *(v10 + 240);
    v120 = v46;
    *(v10 + 240) = *v9;
    v47 = *(a2 - 1);
    v49 = *(a2 - 4);
    v48 = *(a2 - 3);
    *(v10 + 288) = *(a2 - 2);
    *(v10 + 304) = v47;
    *(v10 + 256) = v49;
    *(v10 + 272) = v48;
    *v9 = v119;
    *(a2 - 1) = v123;
    *(a2 - 2) = v122;
    *(a2 - 3) = v121;
    *(a2 - 4) = v120;
    v50 = *a3;
    v51 = *(v10 + 256);
    v52 = *(v10 + 288);
    v53 = *(v10 + 304);
    v121 = *(v10 + 272);
    v122 = v52;
    v123 = v53;
    v54 = *(v10 + 224);
    v119 = *(v10 + 240);
    v120 = v51;
    v55 = *(v10 + 208);
    v116 = *(v10 + 192);
    v117 = v55;
    v118 = v54;
    v56 = *(v10 + 176);
    v114 = *(v10 + 160);
    v115 = v56;
    if (v50(&v119, &v114))
    {
      v57 = *(v10 + 256);
      v59 = *(v10 + 144);
      v58 = *(v10 + 160);
      *(v10 + 160) = *(v10 + 240);
      v61 = *(v10 + 160);
      v60 = *(v10 + 176);
      *(v10 + 176) = v57;
      v62 = *(v10 + 288);
      v64 = *(v10 + 176);
      v63 = *(v10 + 192);
      *(v10 + 192) = *(v10 + 272);
      v66 = *(v10 + 192);
      v65 = *(v10 + 208);
      v121 = v63;
      v122 = v65;
      *(v10 + 208) = v62;
      v67 = *(v10 + 208);
      v123 = *(v10 + 224);
      v119 = v58;
      v120 = v60;
      v68 = v58;
      v69 = v120;
      *(v10 + 224) = *(v10 + 304);
      *(v10 + 240) = v68;
      v70 = v121;
      v71 = v123;
      *(v10 + 288) = v122;
      *(v10 + 304) = v71;
      *(v10 + 256) = v69;
      *(v10 + 272) = v70;
      v72 = *a3;
      v121 = v66;
      v122 = v67;
      v123 = *(v10 + 224);
      v119 = v61;
      v120 = v64;
      v73 = *(v10 + 128);
      v116 = *(v10 + 112);
      v117 = v73;
      v118 = v59;
      v74 = *(v10 + 96);
      v114 = *(v10 + 80);
      v115 = v74;
      if (v72(&v119, &v114))
      {
        v75 = *(v10 + 128);
        v121 = *(v10 + 112);
        v122 = v75;
        v76 = *(v10 + 160);
        v123 = *(v10 + 144);
        v77 = *(v10 + 96);
        v119 = *(v10 + 80);
        v120 = v77;
        v78 = *(v10 + 176);
        v79 = *(v10 + 208);
        v80 = *(v10 + 224);
        *(v10 + 112) = *(v10 + 192);
        *(v10 + 128) = v79;
        *(v10 + 80) = v76;
        *(v10 + 96) = v78;
        v81 = v119;
        v82 = v120;
        *(v10 + 144) = v80;
        *(v10 + 160) = v81;
        v83 = v121;
        v84 = v123;
        *(v10 + 208) = v122;
        *(v10 + 224) = v84;
        *(v10 + 176) = v82;
        *(v10 + 192) = v83;
        v85 = *a3;
        v86 = *(v10 + 128);
        v121 = *(v10 + 112);
        v122 = v86;
        v123 = *(v10 + 144);
        v87 = *(v10 + 96);
        v119 = *(v10 + 80);
        v120 = v87;
        v114 = *v10;
        v88 = *(v10 + 16);
        v89 = *(v10 + 32);
        v90 = *(v10 + 64);
        v117 = *(v10 + 48);
        v118 = v90;
        v115 = v88;
        v116 = v89;
        if (v85(&v119, &v114))
        {
          v119 = *v10;
          v91 = *(v10 + 16);
          v92 = *(v10 + 32);
          v93 = *(v10 + 64);
          v122 = *(v10 + 48);
          v123 = v93;
          v120 = v91;
          v121 = v92;
          v94 = *(v10 + 144);
          *(v10 + 48) = *(v10 + 128);
          *(v10 + 64) = v94;
          v95 = *(v10 + 112);
          *(v10 + 16) = *(v10 + 96);
          *(v10 + 32) = v95;
          *v10 = *(v10 + 80);
          v96 = v119;
          v97 = v120;
          v98 = v123;
          *(v10 + 128) = v122;
          *(v10 + 144) = v98;
          v99 = v121;
          *(v10 + 96) = v97;
          *(v10 + 112) = v99;
          *(v10 + 80) = v96;
        }
      }
    }
  }
}

void sub_1001565B0(uint64_t a1, __int128 *a2)
{
  v5 = *a2;
  v3 = sub_100011660(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10015AE2C;
  v4[3] = &unk_10245D2F0;
  v4[4] = a1;
  sub_100042800(v3, v4);
}

void sub_1001566A0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245EE70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001566F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_10000EC00(__p, "");
  sub_101366AB4(a1, "CLStepCountRecorderDb", v2, __p, 1, 2.56);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_1024E23A8;
  *(a1 + 72) = off_1024E2470;
  *(a1 + 504) = off_1024E24C0;
  sub_100DD42E4((a1 + 512), 0, 0);
  sub_100DD42E4((a1 + 528), 0, 0);
  *(a1 + 544) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 568) = -1;
  *(a1 + 576) = -1;
  *(a1 + 584) = 0x7FEFFFFFFFFFFFFFLL;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  *(a1 + 608) = 0;
  *(a1 + 616) = 0;
  *(a1 + 620) = xmmword_101D80C10;
  *(a1 + 636) = 0;
  LODWORD(__p[0]) = 8500;
  sub_10183C2FC((a1 + 644), "StepCounterAnalyticsEpochTrigger", __p, 0);
  *(a1 + 704) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 740) = 0;
  *(a1 + 708) = 0u;
  *(a1 + 724) = 0u;
  (*(*a1 + 112))(a1);
  return a1;
}

void *sub_1001568D0(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245EE70;
  sub_1001568CC((a1 + 3), *a2);
  return a1;
}

void sub_100156930(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245EE20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_100156984(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10245EDD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1001569D8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3321888768;
  v3[2] = sub_1004D47C8;
  v3[3] = &unk_102459600;
  v5 = 0;
  v6 = 0;
  __p = 0;
  sub_1001623C8(&__p, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 6));
  v1 = [v3 copy];
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return v1;
}

void sub_100156A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100156AA8(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_1001623C8(&v15, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 6));
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 856);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v9 = 0;
        v10 = 0;
        __p = 0;
        sub_1001623C8(&__p, v15, v16, 0xAAAAAAAAAAAAAAABLL * ((v16 - v15) >> 6));
        [v7 onCyclingDistanceUpdate:sub_1001569D8(&__p)];
        if (__p)
        {
          v9 = __p;
          operator delete(__p);
        }
      }

      v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
    }

    while (v4);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }
}

void sub_100156C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100156D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void *sub_100156D50(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245EEE0;
  sub_10000FF38(a1 + 3, *a2, 0);
  return a1;
}

void *sub_100156DB4(void *a1, uint64_t a2)
{
  sub_10000EC00(__p, "");
  sub_1007B7F38(a1, "VO2MaxRetrocomputeHistory", a2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_102471000;
  a1[9] = off_1024710B0;
  sub_100DD42E4(a1 + 59, 0, 0);
  sub_100DD42E4(a1 + 61, 0, 0);
  sub_100DD42E4(a1 + 63, 0, 0);
  (*(*a1 + 112))(a1);
  return a1;
}

void sub_100156EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100157534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100157570(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v195 = 0;
  memset(&v194, 0, sizeof(v194));
  v193 = 0;
  v5 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageRegionTypeKey"];
  if (v5 && (sub_100005EEC(v5, &v195) & 1) != 0)
  {
    v6 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageNameKey"];
    if (v6 && sub_100005A24(v6, &v194))
    {
      v7 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageNotifyOnEntryKey"];
      if (v7 && (sub_1000700DC(v7, &v193 + 1) & 1) != 0)
      {
        v8 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageNotifyOnExitKey"];
        if (v8 && (sub_1000700DC(v8, &v193) & 1) != 0)
        {
          v192 = 0;
          v9 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageConservativeEntry"];
          if (v9 && (sub_1000700DC(v9, &v192 + 1) & 1) != 0)
          {
            v10 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageEmergencyKey"];
            if (v10 && (sub_1000700DC(v10, &v192) & 1) != 0)
            {
              if (v192 != 1 || (sub_1004BC7F8(a1) & 1) != 0)
              {
                sub_10000EC00(&__src, [objc_msgSend(*(a1 + 24) "legacyClientKey")]);
                __p = 0uLL;
                v189 = 0;
                v11 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageOnBehalfOfKey"];
                if (v11)
                {
                  sub_10000EC00(&__str, [v11 UTF8String]);
                  sub_100034EE4(buf, &__str);
                  sub_100037ACC(buf, v196);
                  if (SHIBYTE(v189) < 0)
                  {
                    operator delete(__p);
                  }

                  __p = *v196;
                  v189 = v196[2];
                  HIBYTE(v196[2]) = 0;
                  LOBYTE(v196[0]) = 0;
                  sub_100039BE8(buf);
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  if (qword_1025D4640 != -1)
                  {
                    sub_101896970();
                  }

                  v24 = off_1025D4648;
                  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
                  {
                    p_src = &__src;
                    if (v191 < 0)
                    {
                      p_src = __src;
                    }

                    v26 = &v194;
                    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v26 = v194.__r_.__value_.__r.__words[0];
                    }

                    *buf = 136381187;
                    *&buf[4] = "kCLConnectionMessageOnBehalfOfKey";
                    *&buf[12] = 2082;
                    *&buf[14] = p_src;
                    *&buf[22] = 2081;
                    *&buf[24] = v26;
                    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#Warning Couldn't get value for key %{private}s, %{public}s/%{private}s", buf, 0x20u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_101896998(buf);
                    v127 = &__src;
                    if (v191 < 0)
                    {
                      v127 = __src;
                    }

                    v128 = &v194;
                    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v128 = v194.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(v196[0]) = 136381187;
                    *(v196 + 4) = "kCLConnectionMessageOnBehalfOfKey";
                    WORD2(v196[1]) = 2082;
                    *(&v196[1] + 6) = v127;
                    HIWORD(v196[2]) = 2081;
                    v197 = v128;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "#Warning Couldn't get value for key %{private}s, %{public}s/%{private}s", v196, 32);
                    v130 = v129;
                    sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v129);
                    if (v130 != buf)
                    {
                      free(v130);
                    }
                  }
                }

                v27 = HIBYTE(v189);
                if (SHIBYTE(v189) < 0)
                {
                  v27 = *(&__p + 1);
                }

                if (v27 && (sub_1004BC690(a1) & 1) == 0)
                {
                  if (qword_1025D4640 != -1)
                  {
                    sub_101896970();
                  }

                  v39 = off_1025D4648;
                  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
                  {
                    v40 = *(a1 + 24);
                    p_p = &__p;
                    if (SHIBYTE(v189) < 0)
                    {
                      p_p = __p;
                    }

                    *buf = 138543618;
                    *&buf[4] = v40;
                    *&buf[12] = 2082;
                    *&buf[14] = p_p;
                    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to act as a proxy service to %{public}s", buf, 0x16u);
                  }

                  if (sub_10000A100(121, 0))
                  {
                    sub_101896998(buf);
                    v42 = *(a1 + 24);
                    v43 = &__p;
                    if (SHIBYTE(v189) < 0)
                    {
                      v43 = __p;
                    }

                    LODWORD(v196[0]) = 138543618;
                    *(v196 + 4) = v42;
                    WORD2(v196[1]) = 2082;
                    *(&v196[1] + 6) = v43;
                    LODWORD(v160) = 22;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 17, "Client %{public}@ does not have appropriate entitlement to act as a proxy service to %{public}s", v196, v160);
                    v45 = v44;
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v44);
                    if (v45 != buf)
                    {
                      free(v45);
                    }
                  }

                  goto LABEL_430;
                }

                Dictionary = CLConnectionMessage::getDictionary(*a2);
                sub_100005548(v186, Dictionary);
                sub_10000EC00(&__str, "");
                sub_10000EC00(&v185, "");
                sub_100175094(v186, "kCLConnectionMessageDeviceIDKey", &__str);
                size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  size = __str.__r_.__value_.__l.__size_;
                }

                if (size)
                {
                  if ((sub_1004BC8E8(a1) & 1) == 0)
                  {
                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v47 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                    {
                      v48 = *(a1 + 24);
                      *buf = 138543362;
                      *&buf[4] = v48;
                      _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_FAULT, "#Warning #FenceHandoff %{public}@ does not have the appropriate entitlement for fence handoff service", buf, 0xCu);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_425;
                    }

                    sub_10189692C(buf);
                    v49 = *(a1 + 24);
                    LODWORD(v196[0]) = 138543362;
                    *(v196 + 4) = v49;
                    LODWORD(v160) = 12;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "#Warning #FenceHandoff %{public}@ does not have the appropriate entitlement for fence handoff service", v196, v160);
                    v51 = v50;
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v50);
                    goto LABEL_335;
                  }

                  sub_100175094(v186, "kCLConnectionMessageHandoffTagKey", &v185);
                  v30 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v30 = __str.__r_.__value_.__l.__size_;
                  }

                  if (v30)
                  {
                    v31 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
                    if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v31 = v185.__r_.__value_.__l.__size_;
                    }

                    if (!v31)
                    {
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }

                      v90 = qword_1025D4798;
                      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                      {
                        v91 = &v194;
                        if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v91 = v194.__r_.__value_.__r.__words[0];
                        }

                        *buf = 68289282;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2082;
                        *&buf[20] = v91;
                        _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#FenceHandoff handleMessageRegionState HandoffTag is empty for handed off region, fenceName:%{public, location:escape_only}s}", buf, 0x1Cu);
                        if (qword_1025D4790 != -1)
                        {
                          sub_101896904();
                        }
                      }

                      v92 = qword_1025D4798;
                      if (os_signpost_enabled(qword_1025D4798))
                      {
                        v93 = &v194;
                        if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          v93 = v194.__r_.__value_.__r.__words[0];
                        }

                        *buf = 68289282;
                        *&buf[4] = 0;
                        *&buf[8] = 2082;
                        *&buf[10] = "";
                        *&buf[18] = 2082;
                        *&buf[20] = v93;
                        _os_signpost_emit_with_name_impl(dword_100000000, v92, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#FenceHandoff handleMessageRegionState HandoffTag is empty for handed off region", "{msg%{public}.0s:#FenceHandoff handleMessageRegionState HandoffTag is empty for handed off region, fenceName:%{public, location:escape_only}s}", buf, 0x1Cu);
                      }

                      goto LABEL_425;
                    }
                  }

                  v32 = [NSUUID alloc];
                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_str = &__str;
                  }

                  else
                  {
                    p_str = __str.__r_.__value_.__r.__words[0];
                  }

                  v34 = [v32 initWithUUIDString:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", p_str)}];
                }

                else
                {
                  v34 = 0;
                }

                v46 = v195;
                if (v195 <= 1)
                {
                  if (v195)
                  {
                    if (v195 != 1)
                    {
                      goto LABEL_424;
                    }

LABEL_115:
                    if (qword_1025D4640 != -1)
                    {
                      sub_101896970();
                    }

                    v52 = off_1025D4648;
                    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
                    {
                      v53 = "kCLClientRegionCircular";
                      if (v46 == 3)
                      {
                        v53 = "kCLClientRegionSignificant";
                      }

                      v54 = &__p;
                      if (SHIBYTE(v189) < 0)
                      {
                        v54 = __p;
                      }

                      v55 = &__src;
                      if (v191 < 0)
                      {
                        v55 = __src;
                      }

                      v56 = &v194;
                      *buf = 136446978;
                      if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v56 = v194.__r_.__value_.__r.__words[0];
                      }

                      *&buf[4] = v53;
                      *&buf[12] = 2080;
                      *&buf[14] = v54;
                      *&buf[22] = 2080;
                      *&buf[24] = v55;
                      v203 = 2080;
                      v204 = v56;
                      _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "Fence: requesting, %{public}s for, [%s]/%s/%s", buf, 0x2Au);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101896998(buf);
                      v136 = "kCLClientRegionCircular";
                      if (v46 == 3)
                      {
                        v136 = "kCLClientRegionSignificant";
                      }

                      v137 = &__p;
                      if (SHIBYTE(v189) < 0)
                      {
                        v137 = __p;
                      }

                      v138 = &__src;
                      if (v191 < 0)
                      {
                        v138 = __src;
                      }

                      v139 = &v194;
                      if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v139 = v194.__r_.__value_.__r.__words[0];
                      }

                      LODWORD(v196[0]) = 136446978;
                      *(v196 + 4) = v136;
                      WORD2(v196[1]) = 2080;
                      *(&v196[1] + 6) = v137;
                      HIWORD(v196[2]) = 2080;
                      v197 = v138;
                      v198 = 2080;
                      v199 = v139;
                      LODWORD(v160) = 42;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: requesting, %{public}s for, [%s]/%s/%s", v196, v160);
                      v141 = v140;
                      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v140);
                      if (v141 != buf)
                      {
                        free(v141);
                      }
                    }

                    *v201 = 0;
                    v184 = 0;
                    v183 = 0.0;
                    v182 = 0.0;
                    v57 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageLatitudeKey"];
                    if (!v57 || (sub_1000B8430(v57, v201) & 1) == 0)
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v64 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageLatitudeKey";
                        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v196[0]) = 136446210;
                      *(v196 + 4) = "kCLConnectionMessageLatitudeKey";
                      LODWORD(v160) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, v160);
                      v51 = v65;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v65);
                      goto LABEL_335;
                    }

                    v58 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageLongitudeKey"];
                    if (!v58 || (sub_1000B8430(v58, &v184) & 1) == 0)
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v98 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageLongitudeKey";
                        _os_log_impl(dword_100000000, v98, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v196[0]) = 136446210;
                      *(v196 + 4) = "kCLConnectionMessageLongitudeKey";
                      LODWORD(v160) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, v160);
                      v51 = v99;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v99);
                      goto LABEL_335;
                    }

                    v59 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageRadiusKey"];
                    if (!v59 || (sub_1000B8430(v59, &v183) & 1) == 0)
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v104 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageRadiusKey";
                        _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v196[0]) = 136446210;
                      *(v196 + 4) = "kCLConnectionMessageRadiusKey";
                      LODWORD(v160) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, v160);
                      v51 = v105;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v105);
                      goto LABEL_335;
                    }

                    v60 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageDesiredAccuracyKey"];
                    if (!v60 || (sub_1000B8430(v60, &v182) & 1) == 0)
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v110 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageDesiredAccuracyKey";
                        _os_log_impl(dword_100000000, v110, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v196[0]) = 136446210;
                      *(v196 + 4) = "kCLConnectionMessageDesiredAccuracyKey";
                      LODWORD(v160) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, v160);
                      v51 = v111;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v111);
                      goto LABEL_335;
                    }

                    v181 = 0;
                    v61 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageReferenceFrameKey"];
                    if (!v61 || (sub_100005EEC(v61, &v181) & 1) == 0)
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v117 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageReferenceFrameKey";
                        _os_log_impl(dword_100000000, v117, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v196[0]) = 136446210;
                      *(v196 + 4) = "kCLConnectionMessageReferenceFrameKey";
                      LODWORD(v160) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, v160);
                      v51 = v118;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v118);
                      goto LABEL_335;
                    }

                    v180 = 0;
                    v62 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageMonitoringNearby"];
                    if (v62 && (sub_1000700DC(v62, &v180) & 1) != 0)
                    {
                      v179 = 0;
                      v63 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageLowPowerFenceKey"];
                      if (v63 && (sub_1000700DC(v63, &v179) & 1) != 0)
                      {
                        if (SHIBYTE(v191) < 0)
                        {
                          sub_100007244(&v177, __src, *(&__src + 1));
                        }

                        else
                        {
                          v177 = __src;
                          v178 = v191;
                        }

                        if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100007244(&v176, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v176 = v194;
                        }

                        if (SHIBYTE(v189) < 0)
                        {
                          sub_100007244(&v174, __p, *(&__p + 1));
                        }

                        else
                        {
                          v174 = __p;
                          v175 = v189;
                        }

                        v153 = *v201;
                        v154 = *&v184;
                        v155 = v183;
                        v156 = v182;
                        if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_100007244(&v173, v185.__r_.__value_.__l.__data_, v185.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v173 = v185;
                        }

                        sub_100BC8698(buf, &v177, &v176, &v174, -1, &v173, v34, 0, v153, v154, v155, v156);
                        if (SHIBYTE(v173.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v173.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v175) < 0)
                        {
                          operator delete(v174);
                        }

                        if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v176.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v178) < 0)
                        {
                          operator delete(v177);
                        }

                        if (HIBYTE(v193) == 1)
                        {
                          v205 |= 1uLL;
                        }

                        if (v193 == 1)
                        {
                          v205 |= 2uLL;
                        }

                        if (v179)
                        {
                          v205 |= 0x20uLL;
                        }

                        if (v46 == 3)
                        {
                          v205 |= 0x80uLL;
                        }

                        if (HIBYTE(v192) == 1)
                        {
                          v205 |= 4uLL;
                        }

                        if (v180)
                        {
                          v205 |= 0x40uLL;
                        }

                        if (v192 == 1)
                        {
                          v205 |= 0x10uLL;
                        }

                        v206 = v181;
                        v157 = *(*sub_10005BA08(a1) + 16);
                        sub_1004BF718(v172, buf);
                        [v157 requestRegionState:sub_1004BCF74(v172)];
                        sub_1004BF9B8(v172);
                        sub_1004BF9B8(buf);
                        goto LABEL_424;
                      }

                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v134 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageLowPowerFenceKey";
                        _os_log_impl(dword_100000000, v134, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_425;
                      }

                      sub_101896A04(buf);
                      LODWORD(v196[0]) = 136446210;
                      *(v196 + 4) = "kCLConnectionMessageLowPowerFenceKey";
                      LODWORD(v160) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, v160);
                      v51 = v135;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v135);
LABEL_335:
                      if (v51 != buf)
                      {
                        free(v51);
                      }

                      goto LABEL_425;
                    }

                    if (qword_1025D47A0 != -1)
                    {
                      sub_1018969DC();
                    }

                    v121 = off_1025D47A8;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136446210;
                      *&buf[4] = "kCLConnectionMessageMonitoringNearby";
                      _os_log_impl(dword_100000000, v121, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_425;
                    }

LABEL_259:
                    sub_101896A04(buf);
                    LODWORD(v196[0]) = 136446210;
                    *(v196 + 4) = "kCLConnectionMessageMonitoringNearby";
                    LODWORD(v160) = 12;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, v160);
                    v51 = v107;
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v107);
                    goto LABEL_335;
                  }

                  if (qword_1025D4790 != -1)
                  {
                    sub_101896904();
                  }

                  v66 = qword_1025D4798;
                  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
                  {
                    v67 = &__p;
                    if (SHIBYTE(v189) < 0)
                    {
                      v67 = __p;
                    }

                    v68 = &__src;
                    if (v191 < 0)
                    {
                      v68 = __src;
                    }

                    v69 = &v194;
                    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v69 = v194.__r_.__value_.__r.__words[0];
                    }

                    *buf = 136315650;
                    *&buf[4] = v67;
                    *&buf[12] = 2080;
                    *&buf[14] = v68;
                    *&buf[22] = 2080;
                    *&buf[24] = v69;
                    _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "iB: requesting, kCLClientRegionBeacon for, [%s]/%s/%s", buf, 0x20u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_10189692C(buf);
                    v143 = &__p;
                    if (SHIBYTE(v189) < 0)
                    {
                      v143 = __p;
                    }

                    v144 = &__src;
                    if (v191 < 0)
                    {
                      v144 = __src;
                    }

                    v145 = &v194;
                    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v145 = v194.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(v196[0]) = 136315650;
                    *(v196 + 4) = v143;
                    WORD2(v196[1]) = 2080;
                    *(&v196[1] + 6) = v144;
                    HIWORD(v196[2]) = 2080;
                    v197 = v145;
                    LODWORD(v160) = 32;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 2, "iB: requesting, kCLClientRegionBeacon for, [%s]/%s/%s", v196, v160, v161);
                    v147 = v146;
                    sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v146);
                    if (v147 != buf)
                    {
                      free(v147);
                    }
                  }

                  sub_1004BFB14(v196, &__src, &v194, &__p);
                  v70 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageProximityUUIDKey"];
                  if (v70 && sub_100005A24(v70, &v196[1]))
                  {
                    v71 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageMajorKey"];
                    if (v71 && (sub_1004FC28C(v71, &v198) & 1) != 0)
                    {
                      v72 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageMinorKey"];
                      if (v72 && (sub_1004FC28C(v72, &v199) & 1) != 0)
                      {
                        LODWORD(v184) = 0;
                        v73 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageRegionDefinitionKey"];
                        if (v73 && (sub_100005EEC(v73, &v184) & 1) != 0)
                        {
                          *(&v199 + 2) = v184 & 7;
                          LOBYTE(v183) = 0;
                          v74 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageNotifyEntryStateOnDisplayKey"];
                          if (v74 && (sub_1000700DC(v74, &v183) & 1) != 0)
                          {
                            if (HIBYTE(v193) == 1)
                            {
                              v200 |= 1u;
                            }

                            if (v193 == 1)
                            {
                              v200 |= 2u;
                            }

                            if (LOBYTE(v183) == 1)
                            {
                              v200 |= 4u;
                            }

                            if (HIBYTE(v192) == 1)
                            {
                              v200 |= 4u;
                            }

                            v75 = *(*sub_10005B860(a1) + 16);
                            v162[0] = _NSConcreteStackBlock;
                            v162[1] = 3321888768;
                            v162[2] = sub_1004BD18C;
                            v162[3] = &unk_102457600;
                            sub_1004C04F8(v163, v196);
                            [v75 doAsync:v162];
                            sub_10005DB2C(v163);
                            sub_10005DB2C(v196);
                            goto LABEL_424;
                          }

                          if (qword_1025D47A0 != -1)
                          {
                            sub_1018969DC();
                          }

                          v120 = off_1025D47A8;
                          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 136446210;
                            *&buf[4] = "kCLConnectionMessageNotifyEntryStateOnDisplayKey";
                            _os_log_impl(dword_100000000, v120, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_304;
                          }

                          sub_101896A04(buf);
                          *v201 = 136446210;
                          *&v201[4] = "kCLConnectionMessageNotifyEntryStateOnDisplayKey";
                          LODWORD(v160) = 12;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v201, v160);
                          v89 = v159;
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v159);
                        }

                        else
                        {
                          if (qword_1025D47A0 != -1)
                          {
                            sub_1018969DC();
                          }

                          v114 = off_1025D47A8;
                          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                          {
                            *buf = 136446210;
                            *&buf[4] = "kCLConnectionMessageRegionDefinitionKey";
                            _os_log_impl(dword_100000000, v114, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                          }

                          if (!sub_10000A100(121, 0))
                          {
                            goto LABEL_304;
                          }

                          sub_101896A04(buf);
                          *v201 = 136446210;
                          *&v201[4] = "kCLConnectionMessageRegionDefinitionKey";
                          LODWORD(v160) = 12;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v201, v160);
                          v89 = v115;
                          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v115);
                        }
                      }

                      else
                      {
                        if (qword_1025D47A0 != -1)
                        {
                          sub_1018969DC();
                        }

                        v108 = off_1025D47A8;
                        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                        {
                          *buf = 136446210;
                          *&buf[4] = "kCLConnectionMessageMinorKey";
                          _os_log_impl(dword_100000000, v108, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                        }

                        if (!sub_10000A100(121, 0))
                        {
                          goto LABEL_304;
                        }

                        sub_101896A04(buf);
                        *v201 = 136446210;
                        *&v201[4] = "kCLConnectionMessageMinorKey";
                        LODWORD(v160) = 12;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v201, v160);
                        v89 = v109;
                        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v109);
                      }
                    }

                    else
                    {
                      if (qword_1025D47A0 != -1)
                      {
                        sub_1018969DC();
                      }

                      v102 = off_1025D47A8;
                      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                      {
                        *buf = 136446210;
                        *&buf[4] = "kCLConnectionMessageMajorKey";
                        _os_log_impl(dword_100000000, v102, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                      }

                      if (!sub_10000A100(121, 0))
                      {
                        goto LABEL_304;
                      }

                      sub_101896A04(buf);
                      *v201 = 136446210;
                      *&v201[4] = "kCLConnectionMessageMajorKey";
                      LODWORD(v160) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v201, v160);
                      v89 = v103;
                      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v103);
                    }
                  }

                  else
                  {
                    if (qword_1025D47A0 != -1)
                    {
                      sub_1018969DC();
                    }

                    v87 = off_1025D47A8;
                    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 136446210;
                      *&buf[4] = "kCLConnectionMessageProximityUUIDKey";
                      _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                    }

                    if (!sub_10000A100(121, 0))
                    {
                      goto LABEL_304;
                    }

                    sub_101896A04(buf);
                    *v201 = 136446210;
                    *&v201[4] = "kCLConnectionMessageProximityUUIDKey";
                    LODWORD(v160) = 12;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v201, v160);
                    v89 = v88;
                    sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v88);
                  }

                  if (v89 != buf)
                  {
                    free(v89);
                  }

LABEL_304:
                  sub_10005DB2C(v196);
                  goto LABEL_425;
                }

                if (v195 != 2)
                {
                  if (v195 != 3)
                  {
LABEL_424:

                    goto LABEL_425;
                  }

                  goto LABEL_115;
                }

                if ((sub_1004BC780(a1) & 1) == 0)
                {
                  if (qword_1025D4790 != -1)
                  {
                    sub_101896904();
                  }

                  v94 = qword_1025D4798;
                  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                  {
                    v95 = *(a1 + 24);
                    *buf = 138543362;
                    *&buf[4] = v95;
                    _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have appropriate entitlement to use polygonal regions", buf, 0xCu);
                  }

                  if (!sub_10000A100(121, 0))
                  {
                    goto LABEL_425;
                  }

                  sub_10189692C(buf);
                  v96 = *(a1 + 24);
                  LODWORD(v196[0]) = 138543362;
                  *(v196 + 4) = v96;
                  LODWORD(v160) = 12;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Client %{public}@ does not have appropriate entitlement to use polygonal regions", v196, v160);
                  v51 = v97;
                  sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v97);
                  goto LABEL_335;
                }

                if (qword_1025D4640 != -1)
                {
                  sub_101896970();
                }

                v76 = off_1025D4648;
                if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
                {
                  v77 = &__p;
                  if (SHIBYTE(v189) < 0)
                  {
                    v77 = __p;
                  }

                  v78 = &__src;
                  if (v191 < 0)
                  {
                    v78 = __src;
                  }

                  v79 = &v194;
                  if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v79 = v194.__r_.__value_.__r.__words[0];
                  }

                  *buf = 136315650;
                  *&buf[4] = v77;
                  *&buf[12] = 2080;
                  *&buf[14] = v78;
                  *&buf[22] = 2080;
                  *&buf[24] = v79;
                  _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEBUG, "Fence: requesting, kCLClientRegionPolygonal for, [%s]/%s/%s", buf, 0x20u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101896998(buf);
                  v148 = &__p;
                  if (SHIBYTE(v189) < 0)
                  {
                    v148 = __p;
                  }

                  v149 = &__src;
                  if (v191 < 0)
                  {
                    v149 = __src;
                  }

                  v150 = &v194;
                  if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v150 = v194.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(v196[0]) = 136315650;
                  *(v196 + 4) = v148;
                  WORD2(v196[1]) = 2080;
                  *(&v196[1] + 6) = v149;
                  HIWORD(v196[2]) = 2080;
                  v197 = v150;
                  LODWORD(v160) = 32;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: requesting, kCLClientRegionPolygonal for, [%s]/%s/%s", v196, v160, v161);
                  v152 = v151;
                  sub_100152C7C("Generic", 1, 0, 2, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v151);
                  if (v152 != buf)
                  {
                    free(v152);
                  }
                }

                LODWORD(v182) = 0;
                v181 = 0;
                v180 = 0;
                v80 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageReferenceFrameKey"];
                if (!v80 || (sub_100005EEC(v80, &v182) & 1) == 0)
                {
                  if (qword_1025D47A0 != -1)
                  {
                    sub_1018969DC();
                  }

                  v100 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136446210;
                    *&buf[4] = "kCLConnectionMessageReferenceFrameKey";
                    _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                  }

                  if (!sub_10000A100(121, 0))
                  {
                    goto LABEL_425;
                  }

                  sub_101896A04(buf);
                  LODWORD(v196[0]) = 136446210;
                  *(v196 + 4) = "kCLConnectionMessageReferenceFrameKey";
                  LODWORD(v160) = 12;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, v160);
                  v51 = v101;
                  sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v101);
                  goto LABEL_335;
                }

                v81 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessageMonitoringNearby"];
                if (!v81 || (sub_1000700DC(v81, &v180) & 1) == 0)
                {
                  if (qword_1025D47A0 != -1)
                  {
                    sub_1018969DC();
                  }

                  v106 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136446210;
                    *&buf[4] = "kCLConnectionMessageMonitoringNearby";
                    _os_log_impl(dword_100000000, v106, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                  }

                  if (!sub_10000A100(121, 0))
                  {
                    goto LABEL_425;
                  }

                  goto LABEL_259;
                }

                v82 = [CLConnectionMessage::getDictionary(*a2) objectForKeyedSubscript:@"kCLConnectionMessagePolygonalVerticesCountKey"];
                if (!v82 || (sub_100005EEC(v82, &v181) & 1) == 0)
                {
                  if (qword_1025D47A0 != -1)
                  {
                    sub_1018969DC();
                  }

                  v112 = off_1025D47A8;
                  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136446210;
                    *&buf[4] = "kCLConnectionMessagePolygonalVerticesCountKey";
                    _os_log_impl(dword_100000000, v112, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                  }

                  if (!sub_10000A100(121, 0))
                  {
                    goto LABEL_425;
                  }

                  sub_101896A04(buf);
                  LODWORD(v196[0]) = 136446210;
                  *(v196 + 4) = "kCLConnectionMessagePolygonalVerticesCountKey";
                  LODWORD(v160) = 12;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, v160);
                  v51 = v113;
                  sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v113);
                  goto LABEL_335;
                }

                v83 = CLConnectionMessage::getDictionary(*a2);
                sub_100005548(v201, v83);
                v184 = 0;
                if (sub_1004FC7C8(v201, @"kCLConnectionMessagePolygonalVerticesKey", &v184))
                {
                  v183 = 0.0;
                  v84 = [NSKeyedUnarchiver unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v184 error:&v183];
                  if (v183 != 0.0)
                  {
                    if (qword_1025D4790 != -1)
                    {
                      sub_101896904();
                    }

                    v85 = qword_1025D4798;
                    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 68289282;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2114;
                      *&buf[20] = v183;
                      _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unable to get vertices from data in handleMessageRegionState, error:%{public, location:escape_only}@}", buf, 0x1Cu);
                      if (qword_1025D4790 != -1)
                      {
                        sub_101896904();
                      }
                    }

                    v86 = qword_1025D4798;
                    if (os_signpost_enabled(qword_1025D4798))
                    {
                      *buf = 68289282;
                      *&buf[4] = 0;
                      *&buf[8] = 2082;
                      *&buf[10] = "";
                      *&buf[18] = 2114;
                      *&buf[20] = v183;
                      _os_signpost_emit_with_name_impl(dword_100000000, v86, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unable to get vertices from data in handleMessageRegionState", "{msg%{public}.0s:Unable to get vertices from data in handleMessageRegionState, error:%{public, location:escape_only}@}", buf, 0x1Cu);
                    }

LABEL_298:
                    sub_100005DA4();
LABEL_425:
                    if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v185.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__str.__r_.__value_.__l.__data_);
                    }

                    sub_100005DA4();
LABEL_430:
                    if (SHIBYTE(v189) < 0)
                    {
                      operator delete(__p);
                    }

                    if (SHIBYTE(v191) < 0)
                    {
                      operator delete(__src);
                    }

                    goto LABEL_55;
                  }

                  v122 = v84;
                  v123 = [(NSArray *)v84 count];
                  if (v181 == v123)
                  {
                    memset(v196, 0, sizeof(v196));
                    sub_1004BD074(v196, v181);
                    if (v181 >= 1)
                    {
                      for (i = 0; i < v181; ++i)
                      {
                        [-[NSArray objectAtIndexedSubscript:](v122 objectAtIndexedSubscript:{i), "coordinate"}];
                        *buf = v125;
                        [-[NSArray objectAtIndexedSubscript:](v122 objectAtIndexedSubscript:{i), "coordinate"}];
                        *&buf[8] = v126;
                        sub_1004BFA38(v196, buf);
                      }
                    }

                    if (SHIBYTE(v191) < 0)
                    {
                      sub_100007244(&__dst, __src, *(&__src + 1));
                    }

                    else
                    {
                      __dst = __src;
                      v171 = v191;
                    }

                    if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100007244(&v169, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v169 = v194;
                    }

                    if (SHIBYTE(v189) < 0)
                    {
                      sub_100007244(&v167, __p, *(&__p + 1));
                    }

                    else
                    {
                      v167 = __p;
                      v168 = v189;
                    }

                    sub_10000EC00(v165, "");
                    sub_100BC869C(buf, &__dst, &v169, &v167, v196, -1, v165, 0, 0);
                    if (v166 < 0)
                    {
                      operator delete(v165[0]);
                    }

                    if (SHIBYTE(v168) < 0)
                    {
                      operator delete(v167);
                    }

                    if (SHIBYTE(v169.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v169.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v171) < 0)
                    {
                      operator delete(__dst);
                    }

                    if (HIBYTE(v193) == 1)
                    {
                      v205 |= 1uLL;
                    }

                    if (v193 == 1)
                    {
                      v205 |= 2uLL;
                    }

                    if (HIBYTE(v192) == 1)
                    {
                      v205 |= 4uLL;
                    }

                    if (v180)
                    {
                      v205 |= 8uLL;
                    }

                    if (v192 == 1)
                    {
                      v205 |= 0x10uLL;
                    }

                    v206 = LODWORD(v182);
                    v142 = *(*sub_10005BA08(a1) + 16);
                    sub_1004BF718(v164, buf);
                    [v142 requestRegionState:sub_1004BCF74(v164)];
                    sub_1004BF9B8(v164);
                    sub_1004BF9B8(buf);
                    if (v196[0])
                    {
                      v196[1] = v196[0];
                      operator delete(v196[0]);
                    }

                    sub_100005DA4();
                    goto LABEL_424;
                  }

                  if (qword_1025D4790 != -1)
                  {
                    sub_101896904();
                  }

                  v131 = qword_1025D4798;
                  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 67240448;
                    *&buf[4] = v181;
                    *&buf[8] = 2050;
                    *&buf[10] = v123;
                    _os_log_impl(dword_100000000, v131, OS_LOG_TYPE_FAULT, "Number of vertices received doesn't match stored, %{public}d, %{public}lu", buf, 0x12u);
                  }

                  if (!sub_10000A100(121, 0))
                  {
                    goto LABEL_298;
                  }

                  sub_10189692C(buf);
                  LODWORD(v196[0]) = 67240448;
                  HIDWORD(v196[0]) = v181;
                  LOWORD(v196[1]) = 2050;
                  *(&v196[1] + 2) = v123;
                  LODWORD(v160) = 18;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Number of vertices received doesn't match stored, %{public}d, %{public}lu", v196, v160);
                  v133 = v132;
                  sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v132);
                }

                else
                {
                  if (qword_1025D4790 != -1)
                  {
                    sub_101896904();
                  }

                  v119 = qword_1025D4798;
                  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 136446210;
                    *&buf[4] = "kCLConnectionMessagePolygonalVerticesKey";
                    _os_log_impl(dword_100000000, v119, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
                  }

                  if (!sub_10000A100(121, 0))
                  {
                    goto LABEL_298;
                  }

                  sub_10189692C(buf);
                  LODWORD(v196[0]) = 136446210;
                  *(v196 + 4) = "kCLConnectionMessagePolygonalVerticesKey";
                  LODWORD(v160) = 12;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Couldn't get value for key %{public}s", v196, v160);
                  v133 = v158;
                  sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v158);
                }

                if (v133 != buf)
                {
                  free(v133);
                }

                goto LABEL_298;
              }

              if (qword_1025D4790 != -1)
              {
                sub_101896904();
              }

              v35 = qword_1025D4798;
              if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
              {
                v36 = *(a1 + 24);
                *buf = 138543362;
                *&buf[4] = v36;
                _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_FAULT, "Client %{public}@ does not have the appropriate entitlement to act as an emergency service", buf, 0xCu);
              }

              if (sub_10000A100(121, 0))
              {
                sub_10189692C(buf);
                v37 = *(a1 + 24);
                LODWORD(v196[0]) = 138543362;
                *(v196 + 4) = v37;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4798, 17, "Client %{public}@ does not have the appropriate entitlement to act as an emergency service", v196, 12);
                v14 = v38;
                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v38);
                goto LABEL_285;
              }
            }

            else
            {
              if (qword_1025D47A0 != -1)
              {
                sub_1018969DC();
              }

              v23 = off_1025D47A8;
              if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
              {
                *buf = 136446210;
                *&buf[4] = "kCLConnectionMessageEmergencyKey";
                _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
              }

              if (sub_10000A100(121, 0))
              {
                sub_101896A04(buf);
                LODWORD(v196[0]) = 136446210;
                *(v196 + 4) = "kCLConnectionMessageEmergencyKey";
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, 12);
                v14 = v116;
                sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v116);
LABEL_285:
                if (v14 != buf)
                {
                  free(v14);
                }
              }
            }
          }

          else
          {
            if (qword_1025D47A0 != -1)
            {
              sub_1018969DC();
            }

            v21 = off_1025D47A8;
            if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
            {
              *buf = 136446210;
              *&buf[4] = "kCLConnectionMessageConservativeEntry";
              _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 0))
            {
              sub_101896A04(buf);
              LODWORD(v196[0]) = 136446210;
              *(v196 + 4) = "kCLConnectionMessageConservativeEntry";
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, 12);
              v14 = v22;
              sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v22);
              goto LABEL_285;
            }
          }
        }

        else
        {
          if (qword_1025D47A0 != -1)
          {
            sub_1018969DC();
          }

          v19 = off_1025D47A8;
          if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
          {
            *buf = 136446210;
            *&buf[4] = "kCLConnectionMessageNotifyOnExitKey";
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101896A04(buf);
            LODWORD(v196[0]) = 136446210;
            *(v196 + 4) = "kCLConnectionMessageNotifyOnExitKey";
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, 12);
            v14 = v20;
            sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v20);
            goto LABEL_285;
          }
        }
      }

      else
      {
        if (qword_1025D47A0 != -1)
        {
          sub_1018969DC();
        }

        v17 = off_1025D47A8;
        if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
        {
          *buf = 136446210;
          *&buf[4] = "kCLConnectionMessageNotifyOnEntryKey";
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101896A04(buf);
          LODWORD(v196[0]) = 136446210;
          *(v196 + 4) = "kCLConnectionMessageNotifyOnEntryKey";
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, 12);
          v14 = v18;
          sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v18);
          goto LABEL_285;
        }
      }
    }

    else
    {
      if (qword_1025D47A0 != -1)
      {
        sub_1018969DC();
      }

      v15 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
      {
        *buf = 136446210;
        *&buf[4] = "kCLConnectionMessageNameKey";
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101896A04(buf);
        LODWORD(v196[0]) = 136446210;
        *(v196 + 4) = "kCLConnectionMessageNameKey";
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, 12);
        v14 = v16;
        sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v16);
        goto LABEL_285;
      }
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018969DC();
    }

    v12 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = "kCLConnectionMessageRegionTypeKey";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Couldn't get value for key %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101896A04(buf);
      LODWORD(v196[0]) = 136446210;
      *(v196 + 4) = "kCLConnectionMessageRegionTypeKey";
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 17, "Couldn't get value for key %{public}s", v196, 12);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 0, "void CLFenceSubscription::handleMessageRegionState(std::shared_ptr<CLConnectionMessage>)", "%s\n", v13);
      goto LABEL_285;
    }
  }

LABEL_55:
  if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v194.__r_.__value_.__l.__data_);
  }
}

void sub_10015A85C(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x3C7]) < 0)
  {
    operator delete(STACK[0x3B0]);
  }

  if (SLOBYTE(STACK[0x3EF]) < 0)
  {
    operator delete(STACK[0x3D8]);
  }

  sub_100005DA4();
  if (SLOBYTE(STACK[0x407]) < 0)
  {
    operator delete(STACK[0x3F0]);
  }

  if (SLOBYTE(STACK[0x427]) < 0)
  {
    operator delete(STACK[0x410]);
  }

  if (SLOBYTE(STACK[0x447]) < 0)
  {
    operator delete(STACK[0x430]);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10015AB7C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = sub_10053C624(a1);
  (*(*v3 + 16))(&v5);
  *(a2 + 8) = (*(*v5 + 16))(v5);
  *a2 = 1;
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void sub_10015AC34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1018B7390(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10015AC4C(uint64_t a1)
{
  *a1 = off_10245EFA0;
  if (qword_1025D42C0 != -1)
  {
    sub_10015EEF4();
  }

  v2 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 12);
    *buf = 67240192;
    v10 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Stopping device motion service %{public}#x", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C27B4(buf);
    v5 = *(a1 + 12);
    v8[0] = 67240192;
    v8[1] = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42C8, 2, "Stopping device motion service %{public}#x", v8, 8);
    v7 = v6;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLSensorFusionService::~CLSensorFusionService()", "%s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  return a1;
}

void sub_10015ADE8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10015ADF4(uint64_t a1, uint64_t a2)
{
  if (qword_1026638F0 != -1)
  {
    sub_101B28788();
  }

  return qword_102638350;
}

uint64_t sub_10015AE2C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_1025D4330 != -1)
  {
    sub_10015659C();
  }

  v3 = qword_1025D4338;
  if (os_log_type_enabled(qword_1025D4338, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 49) != 0;
    v6 = *(a1 + 50);
    v7 = *(a1 + 51) != 0;
    v8 = *(a1 + 52) != 0;
    v9 = *(a1 + 40);
    v11[0] = 68290563;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1025;
    v15 = v4;
    v16 = 1025;
    v17 = v5;
    v18 = 1025;
    v19 = v6;
    v20 = 1025;
    v21 = v7;
    v22 = 1025;
    v23 = v8;
    v24 = 2049;
    v25 = v9;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Configuration sent, fFallStatsMode:%{private}d, fSensorRecordingActive:%{private}hhd, fSimulateEvent:%{private}d, fUserStudyPressureDataCollection:%{private}hhd, fDetectorEnabled:%{private}hhd, fLastReplyAopTimestamp:%{private}llu}", v11, 0x3Au);
  }

  *(v2 + 247) = *(a1 + 40);
  return (*(*v2 + 552))(v2, 0);
}

uint64_t sub_10015CF34(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102459640;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

uint64_t sub_10015D01C(uint64_t a1, double *a2, unsigned int a3)
{
  if (sub_100023B68(a1))
  {
    if (a3 < 2)
    {
      v8 = sub_100BC97B0(a2);
      if (qword_1025D4640 != -1)
      {
        sub_1018E918C();
      }

      v9 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        sub_100BC8988(a2, __p);
        v10 = SBYTE3(v27) >= 0 ? __p : *__p;
        *buf = 134284035;
        *&buf[4] = v8;
        v31 = 1025;
        v32 = a3;
        v33 = 2081;
        v34 = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Fence: state store, %{private}lld, %{private}d, %{private}s", buf, 0x1Cu);
        if (SBYTE3(v27) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4640 != -1)
        {
          sub_1018E92C0();
        }

        v19 = off_1025D4648;
        sub_100BC8988(a2, v28);
        if (v29 >= 0)
        {
          v20 = v28;
        }

        else
        {
          v20 = *v28;
        }

        *__p = 134284035;
        *&__p[4] = v8;
        v24 = 1025;
        v25 = a3;
        v26 = 2081;
        v27 = v20;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v19, 2, "Fence: state store, %{private}lld, %{private}d, %{private}s", __p, 28);
        v22 = v21;
        if (v29 < 0)
        {
          operator delete(*v28);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLFenceMonitorDatabase::storeFenceState(const CLFenceManager_Type::Fence &, CLFenceManager_Type::FenceStatus)", "%s\n", v22);
        if (v22 != buf)
        {
          free(v22);
        }
      }

      sub_10003848C(__p);
      v11 = sub_100038730((&v25 + 2), "INSERT OR REPLACE INTO ", 23);
      v12 = sub_100038730(v11, "Status", 6);
      v13 = sub_100038730(v12, " (", 2);
      v14 = sub_100038730(v13, "Key", 3);
      v15 = sub_100038730(v14, ", ", 2);
      v16 = sub_100038730(v15, "State", 5);
      sub_100038730(v16, ") VALUES (?, ?)", 15);
      sub_100073518(__p, buf);
      if (SBYTE3(v34) >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      sub_1000388D8(a1, v17);
    }

    if (qword_1025D4640 != -1)
    {
      sub_1018E918C();
    }

    v6 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "Fence: state Invalid for DB", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E92E8();
    }
  }

  else
  {
    if (qword_1025D4640 != -1)
    {
      sub_1018E918C();
    }

    v7 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Fence: state No access to DB", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E91E4();
    }
  }

  return 0;
}

void sub_10015D740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (v56)
  {
    (*(*v56 + 8))(v56, a2, a3, a4, a5, a6, a7, a8);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10015D7C4()
{
  sub_100147E1C(__stack_chk_guard, v13, v14, v16, *v18, v18[4]);
  if (qword_1025D4640 != -1)
  {
    dispatch_once(&qword_1025D4640, &stru_102464610);
  }

  sub_100147CF0();
  sub_10014AC74(v1, v2, v3, v4, dword_100000000, v5, v6, "Fence: state No access to DB", v7, v15, v17, *v19, v19[4]);
  v9 = v8;
  sub_100147EC4("Generic", v10, v11, v12, "void CLFenceMonitorDatabase::clearLocationData()", "%s\n");
  if (v9 != v0)
  {
    free(v9);
  }
}

uint64_t *sub_10015D8A0(uint64_t *result, char *a2, char *a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000166A8(result, a4);
  }

  return result;
}

void sub_10015D8F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015D914(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018900F8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 1;
    v9 = _os_activity_create(dword_100000000, "CL: CLStreamedLocationProvider::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v9, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10189010C();
    }

    v10 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a4;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLStreamedLocationProvider::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  sub_10048C3D4(a4, v8, v7, a2, a3);
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10015DF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, ...)
{
  va_start(va, a20);
  if (a20)
  {
    sub_100008080(a20);
  }

  sub_10001A420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015DF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 248) != 1)
  {
    return a2;
  }

  v5 = sub_1001732D0(a2, 2u);
  if (qword_1025D4230 != -1)
  {
    sub_1018C28EC();
  }

  v6 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
  {
    v7 = *(a3 + 16);
    *buf = 134218496;
    v19 = v7;
    v20 = 1026;
    v21 = v3;
    v22 = 1026;
    v23 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Overriding youth type for generic workout, beginTime, %f, before, %{public}d, after, %{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018C2900();
    }

    v8 = *(a3 + 16);
    v12 = 134218496;
    v13 = v8;
    v14 = 1026;
    v15 = v3;
    v16 = 1026;
    v17 = v5;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "Overriding youth type for generic workout, beginTime, %f, before, %{public}d, after, %{public}d", &v12, 24);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMotionActivity::TypeYouth CLFitnessYouthGenericWorkoutOverride::doOverride(CLMotionActivity::TypeYouth, const CLNatalieModelInput &)", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  return v5;
}

void sub_10015E168(void *a1)
{
  *a1 = off_10249F4F8;
  sub_1001FB750(a1 + 4);
  sub_1003C93BC((a1 + 1), a1[2]);

  operator delete();
}

uint64_t sub_10015E1D8(uint64_t result, void *a2)
{
  *(result + 48) = *a2;
  v2 = (result + 48);
  if (*(result + 72))
  {
    v3 = result;
    if (qword_1025D42C0 != -1)
    {
      sub_10015EEF4();
    }

    v4 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
    {
      v5 = *v2;
      v6 = 134349056;
      v7 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Set device motion sensor status %{public}ld", &v6, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C27F8(v2);
    }

    return (*(v3 + 72))(v2, *(v3 + 80));
  }

  return result;
}

void sub_10015E2D8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  if (*(v1 + 96) <= 0.0)
  {
    v5 = 0;
  }

  else if (((*(v1 + 178) ^ *(v2 + 82)) >> 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  v6 = sub_1000137E0();
  v7 = *v3;
  if (qword_1025D42C0 != -1)
  {
    sub_10015EEF4();
  }

  v8 = v6 - v7;
  v9 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, v5))
  {
    v10 = *(v3 + 8);
    v11 = *(v3 + 12);
    v12 = *(v3 + 16);
    v13 = *(v3 + 20);
    v14 = *(v3 + 24);
    v15 = *(v3 + 28);
    v16 = *(v3 + 32);
    v17 = (*(v3 + 36) * 57.296);
    v18 = (*(v3 + 40) * 57.296);
    v19 = (*(v3 + 44) * 57.296);
    v20 = *(v3 + 48);
    v21 = *(v3 + 52);
    v22 = *(v3 + 56);
    v23 = *(v3 + 68);
    v24 = *(v3 + 72);
    v25 = *(v3 + 76);
    v26 = *(v3 + 60);
    v27 = *(v3 + 64);
    v28 = *(v3 + 80);
    v29 = *(v3 + 84);
    v30 = *(v3 + 81);
    v31 = *(v3 + 82);
    v32 = *(v3 + 96);
    v33 = *v3;
    *buf = 134224384;
    v96 = v10;
    v97 = 2048;
    v98 = v11;
    v99 = 2048;
    v100 = v12;
    v101 = 2048;
    v102 = v13;
    v103 = 2048;
    v104 = v14;
    v105 = 2048;
    v106 = v15;
    v107 = 2048;
    v108 = v16;
    v109 = 2048;
    v110 = v17;
    v111 = 2048;
    v112 = v18;
    v113 = 2048;
    v114 = v19;
    v115 = 2048;
    v116 = v20;
    v117 = 2048;
    v118 = v21;
    v119 = 2048;
    v120 = v22;
    v121 = 2048;
    v122 = v23;
    v123 = 2048;
    v124 = v24;
    v125 = 2048;
    v126 = v25;
    v127 = 2048;
    v128 = v26;
    v129 = 2048;
    v130 = v27;
    v131 = 1026;
    v132 = v28;
    v133 = 1026;
    v134 = v29;
    v135 = 1026;
    v136 = v30;
    v137 = 1026;
    v138 = v31;
    v139 = 2050;
    v140 = v32;
    v141 = 2050;
    v142 = v33;
    v143 = 2050;
    v144 = v6;
    v145 = 2050;
    v146 = v8;
    _os_log_impl(dword_100000000, v9, v5, "[CLSensorFusionService] q.x,%10.10f,q.y,%10.10f,q.z,%10.10f,q.w,%10.10f,userAccel.x,%10.10f,userAccel.y,%10.10f,userAccel.z,%10.10f,rotationRate.x,%10.10f,rotationRate.y,%10.10f,rotationRate.z,%10.10f,magneticField.x,%10.10f,magneticField.y,%10.10f,magneticField.z,%10.10f,magBiasEstVar.x,%10.10f,magBiasEstVar.y,%10.10f,magBiasEstVar.z,%10.10f,heading,%.3f,accuracy,%.3f,level,%{public}d,variant,%{public}d,mode,%{public}d,status,%{public}#02x,clientID,%{public}llu,timestamp,%{public}lf,now,%{public}lf,latency,%{public}lf", buf, 0xF6u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42C0 != -1)
    {
      sub_1018C2544();
    }

    v69 = *(v3 + 8);
    v70 = *(v3 + 12);
    v71 = *(v3 + 16);
    v72 = *(v3 + 20);
    v73 = *(v3 + 24);
    v74 = *(v3 + 28);
    v75 = *(v3 + 32);
    v76 = (*(v3 + 36) * 57.296);
    v77 = (*(v3 + 40) * 57.296);
    v78 = (*(v3 + 44) * 57.296);
    v79 = *(v3 + 48);
    v80 = *(v3 + 52);
    v81 = *(v3 + 56);
    v82 = *(v3 + 68);
    v83 = *(v3 + 72);
    v84 = *(v3 + 76);
    v85 = *(v3 + 60);
    v86 = *(v3 + 64);
    v87 = *(v3 + 80);
    v88 = *(v3 + 84);
    v89 = *(v3 + 81);
    v90 = *(v3 + 82);
    v91 = *(v3 + 96);
    v92 = *v3;
    *v150 = 134224384;
    *&v150[4] = v69;
    *&v150[12] = 2048;
    *&v150[14] = v70;
    v151 = 2048;
    v152 = v71;
    *v153 = 2048;
    *&v153[2] = v72;
    *&v153[10] = 2048;
    *&v153[12] = v73;
    *&v153[20] = 2048;
    *&v153[22] = v74;
    *&v153[30] = 2048;
    *&v153[32] = v75;
    *v154 = 2048;
    *&v154[2] = v76;
    *&v154[10] = 2048;
    v155 = v77;
    v156 = 2048;
    *v157 = v78;
    *&v157[8] = 2048;
    v158 = v79;
    v159 = 2048;
    v160 = v80;
    v161 = 2048;
    v162 = v81;
    v163 = 2048;
    v164 = v82;
    v165 = 2048;
    v166 = v83;
    v167 = 2048;
    v168 = v84;
    v169 = 2048;
    v170 = v85;
    v171 = 2048;
    v172 = v86;
    v173 = 1026;
    v174 = v87;
    v175 = 1026;
    v176 = v88;
    v177 = 1026;
    v178 = v89;
    v179 = 1026;
    v180 = v90;
    v181 = 2050;
    v182 = v91;
    v183 = 2050;
    v184 = v92;
    v185 = 2050;
    v186 = v6;
    v187 = 2050;
    v188 = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42C8, v5, "[CLSensorFusionService] q.x,%10.10f,q.y,%10.10f,q.z,%10.10f,q.w,%10.10f,userAccel.x,%10.10f,userAccel.y,%10.10f,userAccel.z,%10.10f,rotationRate.x,%10.10f,rotationRate.y,%10.10f,rotationRate.z,%10.10f,magneticField.x,%10.10f,magneticField.y,%10.10f,magneticField.z,%10.10f,magBiasEstVar.x,%10.10f,magBiasEstVar.y,%10.10f,magBiasEstVar.z,%10.10f,heading,%.3f,accuracy,%.3f,level,%{public}d,variant,%{public}d,mode,%{public}d,status,%{public}#02x,clientID,%{public}llu,timestamp,%{public}lf,now,%{public}lf,latency,%{public}lf", v150, 246);
    v94 = v93;
    sub_100152C7C("Generic", 1, 0, 2, "void CLSensorFusionService::logSample(const CLSensorFusionService::Sample *)", "%s\n", v93);
    if (v94 != buf)
    {
      free(v94);
    }
  }

  if (*(v4 + 8) == 1)
  {
    *v150 = off_102491258;
    Current = CFAbsoluteTimeGetCurrent();
    v35 = *v3;
    *&v150[8] = Current;
    v152 = v35;
    *v153 = *(v3 + 8);
    *&v153[16] = *(v3 + 24);
    LODWORD(Current) = *(v3 + 32);
    *&v153[28] = vmul_f32(*(v3 + 36), vdup_n_s32(0x42652EE1u));
    *&v35 = *(v3 + 44) * 57.296;
    *&v153[24] = LODWORD(Current);
    *&v153[36] = LODWORD(v35);
    *v154 = *(v3 + 48);
    LOBYTE(v155) = *(v3 + 80);
    LODWORD(v35) = *(v3 + 60);
    *&v154[8] = *(v3 + 56);
    HIDWORD(v155) = LODWORD(v35);
    *&v157[2] = *(v3 + 64);
    v36 = *(v3 + 81);
    *&v157[6] = *(v3 + 84);
    LODWORD(v158) = v36;
    HIDWORD(v158) = *(v3 + 96);
    v159 = *(v3 + 82);
    v39 = sub_10015ADF4(v37, v38);
    sub_1010CF5BC(v39, v150);
    sub_10152D354(buf);
    sub_101555764(buf);
    v149 |= 1u;
    v147 = *&v150[8];
    v40 = v148;
    v41 = *v3;
    *(v148 + 124) |= 0x10u;
    *(v40 + 40) = v41;
    v42 = v148;
    v43 = *(v3 + 8);
    *(v148 + 124) |= 2u;
    *(v42 + 16) = v43;
    v44 = v148;
    v45 = *(v3 + 12);
    *(v148 + 124) |= 4u;
    *(v44 + 24) = v45;
    v46 = v148;
    v47 = *(v3 + 16);
    *(v148 + 124) |= 8u;
    *(v46 + 32) = v47;
    v48 = v148;
    v49 = *(v3 + 20);
    *(v148 + 124) |= 1u;
    *(v48 + 8) = v49;
    v50 = v148;
    LODWORD(v49) = *(v3 + 24);
    *(v148 + 124) |= 0x40000u;
    *(v50 + 100) = LODWORD(v49);
    v51 = v148;
    LODWORD(v49) = *(v3 + 28);
    *(v148 + 124) |= 0x80000u;
    *(v51 + 104) = LODWORD(v49);
    v52 = v148;
    LODWORD(v49) = *(v3 + 32);
    *(v148 + 124) |= 0x100000u;
    *(v52 + 108) = LODWORD(v49);
    v53 = v148;
    *&v49 = *(v3 + 36) * 57.296;
    *(v148 + 124) |= 0x2000u;
    *(v53 + 80) = LODWORD(v49);
    v54 = v148;
    *&v49 = *(v3 + 40) * 57.296;
    *(v148 + 124) |= 0x4000u;
    *(v54 + 84) = LODWORD(v49);
    v55 = v148;
    *&v49 = *(v3 + 44) * 57.296;
    *(v148 + 124) |= 0x8000u;
    *(v55 + 88) = LODWORD(v49);
    v56 = v148;
    LODWORD(v49) = *(v3 + 48);
    *(v148 + 124) |= 0x100u;
    *(v56 + 60) = LODWORD(v49);
    v57 = v148;
    LODWORD(v49) = *(v3 + 52);
    *(v148 + 124) |= 0x200u;
    *(v57 + 64) = LODWORD(v49);
    v58 = v148;
    LODWORD(v49) = *(v3 + 56);
    *(v148 + 124) |= 0x400u;
    *(v58 + 68) = LODWORD(v49);
    v59 = v148;
    v60 = *(v3 + 80);
    *(v148 + 124) |= 0x80u;
    *(v59 + 56) = v60;
    v61 = v148;
    LODWORD(v49) = *(v3 + 60);
    *(v148 + 124) |= 0x800u;
    *(v61 + 72) = LODWORD(v49);
    v62 = v148;
    LODWORD(v49) = *(v3 + 64);
    *(v148 + 124) |= 0x20u;
    *(v62 + 48) = LODWORD(v49);
    v63 = v148;
    v64 = *(v3 + 81);
    *(v148 + 124) |= 0x1000u;
    *(v63 + 76) = v64;
    v65 = v148;
    v66 = *(v3 + 96);
    *(v148 + 124) |= 0x40u;
    *(v65 + 52) = v66;
    v67 = v148;
    LODWORD(v66) = *(v3 + 82);
    *(v148 + 124) |= 0x10000u;
    *(v67 + 92) = v66;
    v68 = v148;
    LODWORD(v66) = *(v3 + 84);
    *(v148 + 124) |= 0x200000u;
    *(v68 + 112) = v66;
    if (qword_102637F48 != -1)
    {
      sub_1018C2698();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }
}

void sub_10015EAF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

void sub_10015EB18(uint64_t a1, __int128 *a2)
{
  sub_10015E2D8(a1);
  v4 = *(a1 + 56);
  if (v4)
  {
    v4(a2, *(a1 + 12), *(a1 + 64));
  }

  os_unfair_lock_lock((a1 + 88));
  v5 = *a2;
  v6 = a2[2];
  *(a1 + 112) = a2[1];
  *(a1 + 128) = v6;
  *(a1 + 96) = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(a1 + 192) = *(a2 + 12);
  *(a1 + 160) = v8;
  *(a1 + 176) = v9;
  *(a1 + 144) = v7;

  os_unfair_lock_unlock((a1 + 88));
}

void *sub_10015EB9C(void *a1, uint64_t a2)
{
  v2 = a2;
  sub_10000EC00(__p, "");
  sub_1012C9F34(a1, "MaxMetsHistory", v2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_1024DDA68;
  a1[9] = off_1024DDB20;
  sub_100DD42E4(a1 + 44, 0, 0);
  (*(*a1 + 112))(a1);
  return a1;
}

void sub_10015EC80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10015EF08(uint64_t a1)
{
  if (qword_1025D42C0 != -1)
  {
    sub_10015EEF4();
  }

  v2 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Dumped gyro cal database with id %@", &v4, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C26C0(a1);
  }
}

uint64_t sub_10015EFE0(uint64_t a1, int a2)
{
  *a1 = off_10245EFA0;
  *(a1 + 8) = 0;
  v3 = (a1 + 8);
  *(a1 + 12) = a2;
  v4 = (a1 + 12);
  *(a1 + 16) = xmmword_101C7EEA0;
  v5 = (a1 + 16);
  *(a1 + 32) = xmmword_101C7EEA0;
  v6 = (a1 + 32);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 76) = 0u;
  *(a1 + 96) = 0xBFF0000000000000;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  sub_10011E648((a1 + 104), 0);
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 156) = xmmword_101C79540;
  *(a1 + 172) = 0x1FF00000000;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (qword_1025D42C0 != -1)
  {
    sub_10015EEF4();
  }

  v7 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v4;
    *buf = 67240192;
    *&buf[4] = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Starting device motion service %{public}d", buf, 8u);
  }

  v9 = sub_10000A100(121, 2);
  if (v9)
  {
    sub_1018C2440(v4);
  }

  v11 = sub_100011660(v9, v10);
  sub_100185AC0(v11, buf);
  v13 = sub_10001CB4C(*buf, "LogDeviceMotion", v3, 0xFFFFFFFFLL);
  v14 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v13 & 1) == 0)
  {
    *v3 = 0;
  }

  sub_100011660(v14, v12);
  v15 = sub_100974B5C();
  v58 = v15;
  v17 = sub_100011660(v15, v16);
  sub_100185AC0(v17, buf);
  sub_10001CB4C(*buf, "DeviceMotionUseThrottledInterval", &v58, 0xFFFFFFFFLL);
  v19 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  v20 = sub_100011660(v19, v18);
  sub_100185AC0(v20, buf);
  v22 = sub_1000B9370(*buf, "DeviceMotionAccelerometerUpdateInterval", v5);
  v23 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v22 & 1) == 0)
  {
    v24 = 0.01;
    if (v58)
    {
      v24 = 0.02;
    }

    *v5 = v24;
  }

  v25 = sub_100011660(v23, v21);
  sub_100185AC0(v25, buf);
  v27 = sub_1000B9370(*buf, "DeviceMotionGyroUpdateInterval", (a1 + 24));
  v28 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v27 & 1) == 0)
  {
    v29 = 0.005;
    if (v58)
    {
      v29 = 0.02;
    }

    *(a1 + 24) = v29;
  }

  v30 = sub_100011660(v28, v26);
  sub_100185AC0(v30, buf);
  v32 = sub_1000B9370(*buf, "DeviceMotionCompassUpdateInterval", v6);
  v33 = *&buf[8];
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v32 & 1) == 0)
  {
    *v6 = 0x3F847AE147AE147BLL;
  }

  v34 = sub_10098EAD4(v33, v31);
  v35 = sub_10098F674(v34, (a1 + 24));
  if (qword_1025D42C0 != -1)
  {
    sub_1018C2544();
  }

  v36 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEBUG))
  {
    v37 = *v5;
    *buf = 134349312;
    *&buf[4] = v35;
    *&buf[12] = 2050;
    *&buf[14] = v37;
    _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "GyroUpdateInterval,%{public}.4f,AccelerometerUpdateInterval,%{public}.4f", buf, 0x16u);
  }

  v38 = sub_10000A100(121, 2);
  if (v38)
  {
    sub_1018C256C(v5, v35);
  }

  if (*v3)
  {
    v55 = off_102490F98;
    Current = CFAbsoluteTimeGetCurrent();
    v40 = v35;
    v57 = v40;
    v43 = sub_10015ADF4(v41, v42);
    sub_1010CF5BC(v43, &v55);
    sub_10152D354(buf);
    sub_101555374(buf);
    v62 |= 1u;
    v60 = Current;
    v44 = v61;
    *(v61 + 12) |= 1u;
    *(v44 + 8) = v40;
    if (qword_102637F48 != -1)
    {
      sub_1018C2698();
    }

    if (qword_102637F50)
    {
      sub_1017F73BC(qword_102637F50, buf);
    }

    sub_101532FA8(buf);
  }

  sub_100011660(v38, v39);
  v45 = sub_100974B5C();
  if (v45)
  {
    v47 = sub_100011660(v45, v46);
    sub_100185AC0(v47, buf);
    LOBYTE(v55) = 0;
    v48 = sub_10001CB4C(*buf, "DumpGyroCalibrationDatabaseOnDeviceMotionStart", &v55, 0xFFFFFFFFLL);
    v49 = (v48 & v55);
    if (*&buf[8])
    {
      sub_100008080(*&buf[8]);
    }

    if (v49)
    {
      [+[NSDate date](NSDate timeIntervalSinceReferenceDate];
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10015EF08;
      v53[3] = &unk_10245EFE8;
      v54 = [NSString stringWithFormat:@"%.0f", v50];
      [objc_msgSend(objc_msgSend(sub_1000133C4(v54 v51)];
    }
  }

  return a1;
}

void sub_10015F52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_101532FA8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10015F578()
{
  sub_10000EC00(qword_102656DB8, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, qword_102656DB8, dword_100000000);
  qword_102656DD0 = off_10245EB80;
  qword_102656DE8 = &qword_102656DD0;
  __cxa_atexit(sub_1003EE78C, &qword_102656DD0, dword_100000000);
  qword_102656DF0 = off_10245EC00;
  qword_102656E08 = &qword_102656DF0;
  __cxa_atexit(sub_1003EE78C, &qword_102656DF0, dword_100000000);
  qword_102656E10 = off_10245EC80;
  qword_102656E28 = &qword_102656E10;
  __cxa_atexit(sub_1003EE790, &qword_102656E10, dword_100000000);
  qword_102656E30 = off_10245ED00;
  qword_102656E48 = &qword_102656E30;

  return __cxa_atexit(sub_1003EE790, &qword_102656E30, dword_100000000);
}

uint64_t sub_10016122C(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018C2348();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C235C();
    }
  }

  return v7;
}

void *sub_100161330(void *a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  *a1 = off_1024A6C20;
  a1[1] = off_1024A6D28;
  v12 = *a2;
  v11 = a2[1];
  a1[2] = off_1024A6DB0;
  a1[3] = v12;
  a1[4] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  sub_101279154((a1 + 5), a2);
  v13 = a3[1];
  a1[11] = *a3;
  a1[12] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a4[1];
  a1[13] = *a4;
  a1[14] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a5[1];
  a1[15] = *a5;
  a1[16] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  a1[17] = a6;
  return a1;
}

void sub_10016143C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100161458(void *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a2[1];
  v16 = *a2;
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  v15 = 0;
  v7 = a4[1];
  v12 = *a4;
  v13 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = a5[1];
  v10 = *a5;
  v11 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100161454(a1, &v16, &v14, &v12, &v10, 0);
  if (v11)
  {
    sub_100008080(v11);
  }

  if (v13)
  {
    sub_100008080(v13);
  }

  if (v15)
  {
    sub_100008080(v15);
  }

  if (v17)
  {
    sub_100008080(v17);
  }

  return a1;
}

void sub_10016152C(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a7)
  {
    sub_100008080(a7);
  }

  sub_1018C2300((v10 + 8), va, (v9 + 8));
  _Unwind_Resume(a1);
}

void sub_100161590(int *a1, int *a2)
{
  sub_100147E00(__stack_chk_guard, v16, v17, *v19, v19[4]);
  if (qword_1025D4620 != -1)
  {
    dispatch_once(&qword_1025D4620, &stru_102464560);
  }

  v9 = *a1;
  v10 = *a2;
  v21[0] = 67240448;
  v21[1] = v9;
  v22 = 1026;
  v23 = v10;
  LODWORD(v18) = 14;
  sub_100148394(v4, v5, v6, v7, dword_100000000, qword_1025D4628, v8, "@Celltileusage, als, %{public}d, cells, %{public}d", v21, v18, *v20, v20[4]);
  v12 = v11;
  sub_100147DD8("Generic", v13, v14, v15, "void CLCellLocationMetrics::alsReply(int, CFAbsoluteTime)", "%s\n");
  if (v12 != a1)
  {
    free(v12);
  }
}

void sub_1001616A0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 36) = 0;
  v78 = 0.0;
  v79 = 0.0;
  v5 = sub_100622F8C(a1, a2, &v79, &v78);
  v6 = *&v5;
  v7 = (*(*a2 + 16))(a2);
  v8 = *(a2 + 4544);
  v9 = *(a2 + 4548);
  v11 = 1.0;
  if (v9 > v8)
  {
    v12 = *(a2 + 352);
    v11 = (v9 - v12) / (v9 - v8);
  }

  v10 = *(a2 + 4536);
  v13 = v10 * sub_100161F00(v11, *(a2 + 4540));
  *&v14 = v5 & dword_100000000;
  v15 = (v5 & dword_100000000) >> 32;
  v16 = 0.0;
  if ((v5 & dword_100000000) != 0)
  {
    v17 = *&v5;
  }

  else
  {
    v17 = 0.0;
  }

  if (v7)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0.0;
  }

  *a3 = v18;
  *(a3 + 4) = v17;
  v19 = *(a2 + 352);
  v20 = 1.0 - (*(a2 + 4548) - v19) / (*(a2 + 4548) - *(a2 + 4544));
  v21 = 2.0;
  if (v20 <= 2.0)
  {
    v21 = v20;
  }

  if (v20 >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = v22;
  if ((v15 | v7))
  {
    v24 = (*(*a2 + 8))(a2);
    if (v14 == 0.0)
    {
      v73 = 0.0;
      v32 = 0;
      if (v24)
      {
        *(a3 + 28) = v13;
        v26 = 1;
        *(a3 + 32) = 1;
        *(a3 + 20) = v13;
        *(a3 + 24) = 1;
        v31 = v13;
        v16 = v13;
      }

      else
      {
        *(a3 + 28) = 0x300000000;
        *(a3 + 20) = 0x340900000;
        v26 = 3;
        v31 = 4.5;
      }
    }

    else
    {
      if (*&v5 > 4.4021)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (v25 == 1)
      {
        v26 = 0;
        v27 = *&v5 - (v23 * -3.9000001 + 2.25);
        v28 = fmaxf(v27, 2.1);
        if ((*(a2 + 1048) < 0.4 || *(a2 + 1052) == 0.0) && *(a2 + 1056) < 40.0)
        {
          v31 = 2.1;
        }

        else
        {
          v31 = v28;
        }

        *(a3 + 28) = v31;
        *(a3 + 32) = 0;
        *(a3 + 20) = v31;
        *(a3 + 24) = 0;
        v73 = v31;
        v32 = 1;
        v16 = v31;
      }

      else
      {
        v26 = 0;
        v73 = 0.0;
        v32 = 0;
        *(a3 + 28) = v5;
        *(a3 + 32) = 0;
        v31 = *&v5;
        v16 = *&v5;
        *(a3 + 20) = v5;
        *(a3 + 24) = 0;
      }
    }
  }

  else
  {
    v73 = 0.0;
    v32 = 0;
    *(a3 + 28) = 0x500000000;
    *(a3 + 20) = 0x500000000;
    v26 = 5;
    v31 = 0.0;
  }

  if (qword_1025D4230 != -1)
  {
    sub_1018E8DC4();
  }

  v33 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134219776;
    *v108 = v31;
    *&v108[8] = 1024;
    v34 = v6;
    *&v108[10] = v26;
    v109 = 2048;
    if (v14 == 0.0)
    {
      v34 = 0.0;
    }

    v110 = v16;
    v111 = 1024;
    *v112 = v26;
    *&v112[4] = 1024;
    *&v112[6] = v7;
    *v113 = 2048;
    *&v113[2] = v13;
    LOWORD(v114) = 1024;
    *(&v114 + 2) = v15;
    HIWORD(v114) = 2048;
    *v115 = v34;
    _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "Rowing Model, METS, %f, userMetsSource, %d, truthMETS, %f, truthMetsSource, %d, hrAvail, %d, hrMets, %f, wrAvail, %d, wrMets, %f", buf, 0x42u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_1018E8DD8();
    }

    *v80 = 134219776;
    *&v80[4] = v31;
    v50 = v6;
    *&v80[12] = 1024;
    if (v14 == 0.0)
    {
      v50 = 0.0;
    }

    *&v80[14] = v26;
    *&v80[18] = 2048;
    v81 = v16;
    v82 = 1024;
    *v83 = v26;
    *&v83[4] = 1024;
    *&v83[6] = v7;
    v84 = 2048;
    *&v85 = v13;
    WORD4(v85) = 1024;
    *(&v85 + 10) = v15;
    HIWORD(v85) = 2048;
    *v86 = v50;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "Rowing Model, METS, %f, userMetsSource, %d, truthMETS, %f, truthMetsSource, %d, hrAvail, %d, hrMets, %f, wrAvail, %d, wrMets, %f", COERCE_DOUBLE(v80), 66, v69, v70, LODWORD(v73), v74, LODWORD(v76), v77);
    v52 = v51;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCalorieRowingModelPhone::computeMETS(const CLNatalieModelInput &)", "%s\n", v51);
    if (v52 != buf)
    {
      free(v52);
    }
  }

  *(&v76 + 1) = v13;
  v75 = *&v15;
  v35 = v6;
  if (qword_1025D4230 != -1)
  {
    sub_1018E8DD8();
  }

  v36 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    v37 = v7;
    v38 = *(a2 + 1024);
    v39 = *(a2 + 1032);
    v40 = *(a2 + 1044);
    v41 = *(a2 + 1052);
    v42 = v23;
    v43 = *(a2 + 1048);
    v44 = *(a2 + 1056);
    v45 = v78;
    v46 = v79;
    v71 = v32;
    if (v32)
    {
      v47 = v73;
    }

    else
    {
      v47 = 0.0;
    }

    v48 = (*(*a2 + 8))(a2);
    *buf = 67113216;
    v49 = v35;
    *v108 = LODWORD(v75);
    *&v108[4] = 2048;
    if (v14 == 0.0)
    {
      v49 = 0.0;
    }

    *&v108[6] = v38;
    v7 = v37;
    v109 = 2048;
    v110 = v39;
    v111 = 2048;
    *v112 = v40;
    *&v112[8] = 2048;
    *v113 = v41;
    *&v113[8] = 2048;
    v114 = v43;
    v23 = v42;
    *v115 = 2048;
    *&v115[2] = v44;
    v116 = 2048;
    v117 = v46;
    v118 = 2048;
    v119 = v45;
    v120 = 2048;
    v121 = v42;
    v122 = 2048;
    v123 = v47;
    v32 = v71;
    v124 = 1024;
    v125 = v71;
    v126 = 1024;
    v127 = v37;
    v128 = 1024;
    v129 = v48;
    v130 = 2048;
    v131 = *(&v76 + 1);
    v132 = 2048;
    v133 = v49;
    v134 = 2048;
    v135 = v31;
    _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "Rowing Model, work rate, available, %d, data startTime, %f, inertialAccelZMean, %f, horizontalRotationMagMean, %f, freq, %f, amp, %f, power, %f, speed, %f, amplitude, %f, fhr, %f, adjustedWR, %f, hasAdjustedWR, %d, hrAvail, %d, hrGood, %d, hrMets, %f, wrMets, %f, METs, %f", buf, 0x9Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    v53 = v32;
    if (qword_1025D4230 != -1)
    {
      sub_1018E8DD8();
    }

    v54 = v78;
    v72 = qword_1025D4238;
    v55 = *(a2 + 1024);
    v56 = *(a2 + 1032);
    v57 = *(a2 + 1044);
    v58 = *(a2 + 1052);
    v59 = *(a2 + 1048);
    v60 = *(a2 + 1056);
    v61 = v79;
    if (v53)
    {
      v62 = v73;
    }

    else
    {
      v62 = 0.0;
    }

    v63 = (*(*a2 + 8))(a2);
    v64 = *(a3 + 20);
    v65 = v35;
    *v80 = 67113216;
    if (v14 == 0.0)
    {
      v65 = 0.0;
    }

    *&v80[4] = LODWORD(v75);
    *&v80[8] = 2048;
    *&v80[10] = v55;
    *&v80[18] = 2048;
    *v83 = v57;
    *&v83[8] = 2048;
    WORD3(v85) = 2048;
    *(&v85 + 1) = v59;
    *v86 = 2048;
    *&v86[2] = v60;
    v87 = 2048;
    v88 = v61;
    v89 = 2048;
    v90 = v54;
    v91 = 2048;
    v92 = v23;
    v93 = 2048;
    v94 = v62;
    v95 = 1024;
    v96 = v53;
    v97 = 1024;
    v98 = v7;
    v99 = 1024;
    v100 = v63;
    v101 = 2048;
    v102 = *(&v76 + 1);
    v103 = 2048;
    v104 = v65;
    v105 = 2048;
    v106 = v64;
    LODWORD(v68) = 156;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v72, 2, "Rowing Model, work rate, available, %d, data startTime, %f, inertialAccelZMean, %f, horizontalRotationMagMean, %f, freq, %f, amp, %f, power, %f, speed, %f, amplitude, %f, fhr, %f, adjustedWR, %f, hasAdjustedWR, %d, hrAvail, %d, hrGood, %d, hrMets, %f, wrMets, %f, METs, %f", v80, v68, v69, *&v72, v73, v75, v76, v14, v78, v79, *v80, *&v80[8], *&v80[16], HIDWORD(v56), *&v83[2], v58, *(&v85 + 6));
    v67 = v66;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CLMetsInfo CLCalorieRowingModelPhone::computeMETS(const CLNatalieModelInput &)", "%s\n", v66);
    if (v67 != buf)
    {
      free(v67);
    }
  }
}

float sub_100161F00(float a1, float a2)
{
  v4 = 0.8856;
  if (a1 > 0.0)
  {
    v4 = (a1 * -0.7123) + 0.8856;
  }

  v5 = 0.88649;
  if (a1 > 0.0)
  {
    v5 = (a1 * -0.71301) + 0.88649;
  }

  if (a2 <= 18.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (qword_1025D4230 != -1)
  {
    sub_10189393C();
  }

  v7 = fmaxf(v6, 0.0);
  v8 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134284033;
    v19 = a1;
    v20 = 2049;
    v21 = a2;
    v22 = 2049;
    v23 = v7;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "HR,fhr,%{private}0.2f,userAge,%{private}0.2f,normalizedMets,%{private}0.2f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_101893950();
    }

    v12 = 134284033;
    v13 = a1;
    v14 = 2049;
    v15 = a2;
    v16 = 2049;
    v17 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 2, "HR,fhr,%{private}0.2f,userAge,%{private}0.2f,normalizedMets,%{private}0.2f", &v12, 32);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "static float CLHeartRateUtility::computeNormMETS(float, float)", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  return v7;
}

uint64_t sub_100162124(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = a1.n128_u64[0];
  if (!sub_1000CCE3C(a3 + 3296, a1))
  {
    return 0;
  }

  v5.n128_u64[0] = v4;
  if (!sub_10016C1DC(a3 + 4304, v5))
  {
    return 0;
  }

  v6.n128_u64[0] = v4;
  if (!sub_100623538(a3 + 4448, v6))
  {
    return 0;
  }

  v7.n128_u64[0] = v4;

  return sub_100553694(a3 + 4376, v7);
}

void sub_1001621B4(__n128 a1, uint64_t a2, void *a3)
{
  v4 = a1.n128_f64[0];
  if (sub_1000CD414((a3 + 466), a1))
  {
    sub_1004A2080((a3 + 466), v5, v4);
    if (v5[208] == 1)
    {
      sub_1004A243C((a3 + 412));
      sub_100553D28(a3 + 538);
      sub_1006233DC(a3 + 556);
      sub_100553BCC(a3 + 547);
    }
  }
}

void sub_100162268(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    if (*(a1 + 8))
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if (*(a1 + 23))
  {
    goto LABEL_3;
  }

  v5 = CFGetUserName();
  sub_1000238CC(v5, &v16);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = *&v16.__r_.__value_.__l.__data_;
  v6 = v16.__r_.__value_.__r.__words[2];
  *(a1 + 16) = *(&v16.__r_.__value_.__l + 2);
  v4 = HIBYTE(v6);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!*(a1 + 8))
  {
    return;
  }

LABEL_11:
  sub_1005654AC(&v15);
  v7 = std::string::append(&v15, "/private/var/Managed Preferences/", 0x21uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = *(a1 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  size = v12->__r_.__value_.__l.__size_;
  *a2 = v12->__r_.__value_.__r.__words[0];
  *(a2 + 8) = size;
  *(a2 + 15) = *(&v12->__r_.__value_.__r.__words[1] + 7);
  LOBYTE(size) = *(&v12->__r_.__value_.__s + 23);
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = SHIBYTE(v16.__r_.__value_.__r.__words[2]);
  *(a2 + 23) = size;
  if (v14 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_100162394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1001623C8(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004D3DD4(result, a4);
  }

  return result;
}

void sub_100162428(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100162444(_BYTE *result, void *a2)
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
        sub_10189A8E4();
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
        sub_10189AC68(result, a2);
      }
    }
  }
}

void *sub_1001625E8(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10245EDD0;
  sub_10015D018();
  return a1;
}

void *sub_100162648(void *a1, uint64_t a2)
{
  sub_10000EC00(__p, "");
  sub_1006551BC(a1, "VO2MaxHistory", a2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_102465800;
  a1[9] = off_1024658C0;
  a1[59] = off_102465910;
  sub_100656900(a1);
  return a1;
}

void sub_100162748(uint64_t a1)
{
  if (sub_100023B68(a1))
  {
    sub_10003848C(buf);
    v2 = sub_100038730(&v8, "DELETE FROM ", 12);
    sub_100038730(v2, "Status", 6);
    sub_100073518(buf, __p);
    if (v6 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    sub_1000388D8(a1, v3);
  }

  if (qword_1025D4640 != -1)
  {
    sub_1018E918C();
  }

  v4 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Fence: state No access to DB", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10015D7C4();
  }
}

void sub_1001629EC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100162A44()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C75C20;
      v0[3] = unk_101C75C30;
      v0[4] = xmmword_101C75C40;
      v0[0] = xmmword_101C75C00;
      v0[1] = unk_101C75C10;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100162B3C()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100162BB4()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C76BA8;
      v0[3] = unk_101C76BB8;
      v0[4] = xmmword_101C76BC8;
      v0[0] = xmmword_101C76B88;
      v0[1] = unk_101C76B98;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100162CAC()
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

void sub_100162D70()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C79200;
      v0[3] = unk_101C79210;
      v0[4] = xmmword_101C79220;
      v0[0] = xmmword_101C791E0;
      v0[1] = unk_101C791F0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100162E68()
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

void sub_100162F2C()
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

void sub_100162FF0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C7A440;
      v0[3] = unk_101C7A450;
      v0[4] = xmmword_101C7A460;
      v0[0] = xmmword_101C7A420;
      v0[1] = unk_101C7A430;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001630E8()
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

void sub_1001631AC()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100163224()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C7D860;
      v0[3] = unk_101C7D870;
      v0[4] = xmmword_101C7D880;
      v0[0] = xmmword_101C7D840;
      v0[1] = unk_101C7D850;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016331C()
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

void sub_1001633E0()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100163458()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_1001634D0()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100163548()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C7F100;
      v0[3] = unk_101C7F110;
      v0[4] = xmmword_101C7F120;
      v0[0] = xmmword_101C7F0E0;
      v0[1] = unk_101C7F0F0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100163640()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_1001636B8()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100163730()
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

void sub_1001637F4()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10016386C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C807B0;
      v0[3] = unk_101C807C0;
      v0[4] = xmmword_101C807D0;
      v0[0] = xmmword_101C80790;
      v0[1] = unk_101C807A0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100163964()
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

void sub_100163A28()
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

void sub_100163AEC()
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

void sub_100163BB0()
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

void sub_100163C74()
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

void sub_100163D38()
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

void sub_100163DFC()
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

void sub_100163EC0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C898B0;
      v0[3] = unk_101C898C0;
      v0[4] = xmmword_101C898D0;
      v0[0] = xmmword_101C89890;
      v0[1] = unk_101C898A0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100163FB8()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C89CB0;
      v0[3] = unk_101C89CC0;
      v0[4] = xmmword_101C89CD0;
      v0[0] = xmmword_101C89C90;
      v0[1] = unk_101C89CA0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001640B0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8A1C8;
      v0[3] = unk_101C8A1D8;
      v0[4] = xmmword_101C8A1E8;
      v0[0] = xmmword_101C8A1A8;
      v0[1] = unk_101C8A1B8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001641A8()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8C720;
      v0[3] = unk_101C8C730;
      v0[4] = xmmword_101C8C740;
      v0[0] = xmmword_101C8C700;
      v0[1] = unk_101C8C710;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001642A0()
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

void sub_100164364()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8D3F0;
      v0[3] = unk_101C8D400;
      v0[4] = xmmword_101C8D410;
      v0[0] = xmmword_101C8D3D0;
      v0[1] = unk_101C8D3E0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016445C()
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

void sub_100164520()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8DDE8;
      v0[3] = unk_101C8DDF8;
      v0[4] = xmmword_101C8DE08;
      v0[0] = xmmword_101C8DDC8;
      v0[1] = unk_101C8DDD8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164618()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8DE8C;
      v0[3] = unk_101C8DE9C;
      v0[4] = xmmword_101C8DEAC;
      v0[0] = xmmword_101C8DE6C;
      v0[1] = unk_101C8DE7C;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164710()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101C8E158;
      v0[3] = unk_101C8E168;
      v0[4] = xmmword_101C8E178;
      v0[0] = xmmword_101C8E138;
      v0[1] = unk_101C8E148;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164808()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CA7238;
      v0[3] = unk_101CA7248;
      v0[4] = xmmword_101CA7258;
      v0[0] = xmmword_101CA7218;
      v0[1] = unk_101CA7228;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164900()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100164978()
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

void sub_100164A3C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB0C40;
      v0[3] = unk_101CB0C50;
      v0[4] = xmmword_101CB0C60;
      v0[0] = xmmword_101CB0C20;
      v0[1] = unk_101CB0C30;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164B34()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB0D64;
      v0[3] = unk_101CB0D74;
      v0[4] = xmmword_101CB0D84;
      v0[0] = xmmword_101CB0D44;
      v0[1] = unk_101CB0D54;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164C2C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB15B0;
      v0[3] = unk_101CB15C0;
      v0[4] = xmmword_101CB15D0;
      v0[0] = xmmword_101CB1590;
      v0[1] = unk_101CB15A0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164D24()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB3CA0;
      v0[3] = unk_101CB3CB0;
      v0[4] = xmmword_101CB3CC0;
      v0[0] = xmmword_101CB3C80;
      v0[1] = unk_101CB3C90;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164E1C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB3E80;
      v0[3] = unk_101CB3E90;
      v0[4] = xmmword_101CB3EA0;
      v0[0] = xmmword_101CB3E60;
      v0[1] = unk_101CB3E70;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100164F14()
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

void sub_100164FD8()
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

void sub_10016509C()
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

void sub_100165160()
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

void sub_100165224()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB5458;
      v0[3] = unk_101CB5468;
      v0[4] = xmmword_101CB5478;
      v0[0] = xmmword_101CB5438;
      v0[1] = unk_101CB5448;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016531C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB6240;
      v0[3] = unk_101CB6250;
      v0[4] = xmmword_101CB6260;
      v0[0] = xmmword_101CB6220;
      v0[1] = unk_101CB6230;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100165414()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB6308;
      v0[3] = unk_101CB6318;
      v0[4] = xmmword_101CB6328;
      v0[0] = xmmword_101CB62E8;
      v0[1] = unk_101CB62F8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016550C()
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

void sub_1001655D0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CB6AF8;
      v0[3] = unk_101CB6B08;
      v0[4] = xmmword_101CB6B18;
      v0[0] = xmmword_101CB6AD8;
      v0[1] = unk_101CB6AE8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001656C8()
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

void sub_10016578C()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100165804()
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

void sub_1001658C8()
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

void sub_10016598C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CD5D88;
      v0[3] = unk_101CD5D98;
      v0[4] = xmmword_101CD5DA8;
      v0[0] = xmmword_101CD5D68;
      v0[1] = unk_101CD5D78;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100165A84()
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

void sub_100165B48()
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

void sub_100165C0C()
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

void sub_100165CD0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CE5F88;
      v0[3] = unk_101CE5F98;
      v0[4] = xmmword_101CE5FA8;
      v0[0] = xmmword_101CE5F68;
      v0[1] = unk_101CE5F78;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100165DC8()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CE62F4;
      v0[3] = unk_101CE6304;
      v0[4] = xmmword_101CE6314;
      v0[0] = xmmword_101CE62D4;
      v0[1] = unk_101CE62E4;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100165EC0()
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

void sub_100165F84()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CE6FC8;
      v0[3] = unk_101CE6FD8;
      v0[4] = xmmword_101CE6FE8;
      v0[0] = xmmword_101CE6FA8;
      v0[1] = unk_101CE6FB8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016607C()
{
  if ((atomic_load_explicit(&qword_1025D5F78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D5F78))
  {
    __cxa_atexit(sub_1004C707C, &xmmword_1025D5F68, dword_100000000);

    __cxa_guard_release(&qword_1025D5F78);
  }
}

void sub_1001660F4()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10016616C()
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

void sub_100166230()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CEEB80;
      v0[3] = unk_101CEEB90;
      v0[4] = xmmword_101CEEBA0;
      v0[0] = xmmword_101CEEB60;
      v0[1] = unk_101CEEB70;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100166328()
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

void sub_1001663EC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CEF940;
      v0[3] = unk_101CEF950;
      v0[4] = xmmword_101CEF960;
      v0[0] = xmmword_101CEF920;
      v0[1] = unk_101CEF930;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001664E4()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CEFD68;
      v0[3] = unk_101CEFD78;
      v0[4] = xmmword_101CEFD88;
      v0[0] = xmmword_101CEFD48;
      v0[1] = unk_101CEFD58;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001665DC()
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

void sub_1001666A0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CF16E8;
      v0[3] = unk_101CF16F8;
      v0[4] = xmmword_101CF1708;
      v0[0] = xmmword_101CF16C8;
      v0[1] = unk_101CF16D8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100166798()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CF1860;
      v0[3] = unk_101CF1870;
      v0[4] = xmmword_101CF1880;
      v0[0] = xmmword_101CF1840;
      v0[1] = unk_101CF1850;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100166890()
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

void sub_100166954()
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

void sub_100166A18()
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

void sub_100166ADC()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100166B54()
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

void sub_100166C18()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CF4478;
      v0[3] = unk_101CF4488;
      v0[4] = xmmword_101CF4498;
      v0[0] = xmmword_101CF4458;
      v0[1] = unk_101CF4468;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100166D10()
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

void sub_100166DD4()
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

void sub_100166E98()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CF7480;
      v0[3] = unk_101CF7490;
      v0[4] = xmmword_101CF74A0;
      v0[0] = xmmword_101CF7460;
      v0[1] = unk_101CF7470;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100166F90()
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

void sub_100167054()
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

void sub_100167118()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100167190()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CF7E84;
      v0[3] = unk_101CF7E94;
      v0[4] = xmmword_101CF7EA4;
      v0[0] = xmmword_101CF7E64;
      v0[1] = unk_101CF7E74;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100167288()
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

void sub_10016734C()
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

void sub_100167410()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CFB6D8;
      v0[3] = unk_101CFB6E8;
      v0[4] = xmmword_101CFB6F8;
      v0[0] = xmmword_101CFB6B8;
      v0[1] = unk_101CFB6C8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100167508()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CFB758;
      v0[3] = unk_101CFB768;
      v0[4] = xmmword_101CFB778;
      v0[0] = xmmword_101CFB738;
      v0[1] = unk_101CFB748;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100167600()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CFC4B8;
      v0[3] = unk_101CFC4C8;
      v0[4] = xmmword_101CFC4D8;
      v0[0] = xmmword_101CFC498;
      v0[1] = unk_101CFC4A8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001676F8()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CFC6A8;
      v0[3] = unk_101CFC6B8;
      v0[4] = xmmword_101CFC6C8;
      v0[0] = xmmword_101CFC688;
      v0[1] = unk_101CFC698;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001677F0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101CFD958;
      v0[3] = unk_101CFD968;
      v0[4] = xmmword_101CFD978;
      v0[0] = xmmword_101CFD938;
      v0[1] = unk_101CFD948;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001678E8()
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

void sub_1001679AC()
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

void sub_100167A70()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100167AE8()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100167B60()
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

void sub_100167C24()
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

void sub_100167CE8()
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

void sub_100167DAC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D047C0;
      v0[3] = unk_101D047D0;
      v0[4] = xmmword_101D047E0;
      v0[0] = xmmword_101D047A0;
      v0[1] = unk_101D047B0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100167EA4()
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

void sub_100167F68()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D053C8;
      v0[3] = unk_101D053D8;
      v0[4] = xmmword_101D053E8;
      v0[0] = xmmword_101D053A8;
      v0[1] = unk_101D053B8;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100168060()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D054D0;
      v0[3] = unk_101D054E0;
      v0[4] = xmmword_101D054F0;
      v0[0] = xmmword_101D054B0;
      v0[1] = unk_101D054C0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100168158()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D05528;
      v0[3] = unk_101D05538;
      v0[4] = xmmword_101D05548;
      v0[0] = xmmword_101D05508;
      v0[1] = unk_101D05518;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100168250()
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

void sub_100168314()
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

void sub_1001683D8()
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

void sub_10016849C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D07180;
      v0[3] = unk_101D07190;
      v0[4] = xmmword_101D071A0;
      v0[0] = xmmword_101D07160;
      v0[1] = unk_101D07170;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100168594()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D0864C;
      v0[3] = unk_101D0865C;
      v0[4] = xmmword_101D0866C;
      v0[0] = xmmword_101D0862C;
      v0[1] = unk_101D0863C;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016868C()
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

void sub_100168750()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D10434;
      v0[3] = unk_101D10444;
      v0[4] = xmmword_101D10454;
      v0[0] = xmmword_101D10414;
      v0[1] = unk_101D10424;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100168848()
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

void sub_10016890C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D10B18;
      v0[3] = unk_101D10B28;
      v0[4] = xmmword_101D10B38;
      v0[0] = xmmword_101D10AF8;
      v0[1] = unk_101D10B08;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100168A04()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D11D10;
      v0[3] = unk_101D11D20;
      v0[4] = xmmword_101D11D30;
      v0[0] = xmmword_101D11CF0;
      v0[1] = unk_101D11D00;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100168AFC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D12624;
      v0[3] = unk_101D12634;
      v0[4] = xmmword_101D12644;
      v0[0] = xmmword_101D12604;
      v0[1] = unk_101D12614;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100168BF4()
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

void sub_100168CB8()
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

void sub_100168D7C()
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

void sub_100168E40()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D15B94;
      v0[3] = unk_101D15BA4;
      v0[4] = xmmword_101D15BB4;
      v0[0] = xmmword_101D15B74;
      v0[1] = unk_101D15B84;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100168F38()
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

void sub_100168FFC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D19D40;
      v0[3] = unk_101D19D50;
      v0[4] = xmmword_101D19D60;
      v0[0] = xmmword_101D19D20;
      v0[1] = unk_101D19D30;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001690F4()
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

void sub_1001691B8()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100169230()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D1B200;
      v0[3] = unk_101D1B210;
      v0[4] = xmmword_101D1B220;
      v0[0] = xmmword_101D1B1E0;
      v0[1] = unk_101D1B1F0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100169328()
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

void sub_1001693EC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D1B978;
      v0[3] = unk_101D1B988;
      v0[4] = xmmword_101D1B998;
      v0[0] = xmmword_101D1B958;
      v0[1] = unk_101D1B968;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001694E4()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D1D0F4;
      v0[3] = unk_101D1D104;
      v0[4] = xmmword_101D1D114;
      v0[0] = xmmword_101D1D0D4;
      v0[1] = unk_101D1D0E4;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001695DC()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100169654()
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

void sub_100169718()
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

void sub_1001697DC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D220D0;
      v0[3] = unk_101D220E0;
      v0[4] = xmmword_101D220F0;
      v0[0] = xmmword_101D220B0;
      v0[1] = unk_101D220C0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_1001698D4()
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

void sub_100169998()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D2229C;
      v0[3] = unk_101D222AC;
      v0[4] = xmmword_101D222BC;
      v0[0] = xmmword_101D2227C;
      v0[1] = unk_101D2228C;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100169A90()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100169B08()
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

void sub_100169BCC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D255A0;
      v0[3] = unk_101D255B0;
      v0[4] = xmmword_101D255C0;
      v0[0] = xmmword_101D25580;
      v0[1] = unk_101D25590;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100169CC4()
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

void sub_100169D88()
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

void sub_100169E4C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D7A538;
      v0[3] = unk_101D7A548;
      v0[4] = xmmword_101D7A558;
      v0[0] = xmmword_101D7A518;
      v0[1] = unk_101D7A528;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_100169F44()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_100169FBC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D7B900;
      v0[3] = unk_101D7B910;
      v0[4] = xmmword_101D7B920;
      v0[0] = xmmword_101D7B8E0;
      v0[1] = unk_101D7B8F0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016A0B4()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D7BE78;
      v0[3] = unk_101D7BE88;
      v0[4] = xmmword_101D7BE98;
      v0[0] = xmmword_101D7BE58;
      v0[1] = unk_101D7BE68;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016A1AC()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D7BF90;
      v0[3] = unk_101D7BFA0;
      v0[4] = xmmword_101D7BFB0;
      v0[0] = xmmword_101D7BF70;
      v0[1] = unk_101D7BF80;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016A2A4()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D7C040;
      v0[3] = unk_101D7C050;
      v0[4] = xmmword_101D7C060;
      v0[0] = xmmword_101D7C020;
      v0[1] = unk_101D7C030;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016A39C()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D7CE38;
      v0[3] = unk_101D7CE48;
      v0[4] = xmmword_101D7CE58;
      v0[0] = xmmword_101D7CE18;
      v0[1] = unk_101D7CE28;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016A494()
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

void sub_10016A558()
{
  if ((atomic_load_explicit(&qword_1025D53D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D53D0))
  {
    __cxa_atexit(sub_1003E626C, &xmmword_1025D53C0, dword_100000000);

    __cxa_guard_release(&qword_1025D53D0);
  }
}

void sub_10016A5D0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D7FE88;
      v0[3] = unk_101D7FE98;
      v0[4] = xmmword_101D7FEA8;
      v0[0] = xmmword_101D7FE68;
      v0[1] = unk_101D7FE78;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016A6C8()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D80A10;
      v0[3] = unk_101D80A20;
      v0[4] = xmmword_101D80A30;
      v0[0] = xmmword_101D809F0;
      v0[1] = unk_101D80A00;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016A7C0()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101D83560;
      v0[3] = unk_101D83570;
      v0[4] = xmmword_101D83580;
      v0[0] = xmmword_101D83540;
      v0[1] = unk_101D83550;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016A8B8()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101DB5DB0;
      v0[3] = unk_101DB5DC0;
      v0[4] = xmmword_101DB5DD0;
      v0[0] = xmmword_101DB5D90;
      v0[1] = unk_101DB5DA0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016A9B0()
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

void sub_10016AA74()
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

void sub_10016AB38()
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

void sub_10016ABFC()
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

void sub_10016ACC0()
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

void sub_10016AD84()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101DC22B0;
      v0[3] = unk_101DC22C0;
      v0[4] = xmmword_101DC22D0;
      v0[0] = xmmword_101DC2290;
      v0[1] = unk_101DC22A0;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016AE7C()
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

void sub_10016AF40()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101DC3F68;
      v0[3] = unk_101DC3F78;
      v0[4] = xmmword_101DC3F88;
      v0[0] = xmmword_101DC3F48;
      v0[1] = unk_101DC3F58;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016B038()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101DC4328;
      v0[3] = unk_101DC4338;
      v0[4] = xmmword_101DC4348;
      v0[0] = xmmword_101DC4308;
      v0[1] = unk_101DC4318;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016B130()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101DC43F4;
      v0[3] = unk_101DC4404;
      v0[4] = xmmword_101DC4414;
      v0[0] = xmmword_101DC43D4;
      v0[1] = unk_101DC43E4;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

void sub_10016B228()
{
  if ((atomic_load_explicit(&qword_1025D53B0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D53B0))
    {
      v1 = 0x7FFFFFFF00000000;
      v0[2] = xmmword_101DC4480;
      v0[3] = unk_101DC4490;
      v0[4] = xmmword_101DC44A0;
      v0[0] = xmmword_101DC4460;
      v0[1] = unk_101DC4470;
      sub_1003DFE00(&qword_1025D5398, v0, 11);
      __cxa_atexit(sub_1003DD2C4, &qword_1025D5398, dword_100000000);
      __cxa_guard_release(&qword_1025D53B0);
    }
  }
}

uint64_t *sub_10016B340(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_10130B598(v2 + 172);
    sub_100C6AE10(v2 + 128);
    sub_100C608AC(v2 + 64);
    sub_100F9F320(v2);

    operator delete();
  }

  return result;
}

void *sub_10016B500(void *a1)
{
  *a1 = off_10249F4F8;
  sub_1001FB750(a1 + 4);
  sub_1003C93BC((a1 + 1), a1[2]);
  return a1;
}

uint64_t sub_10016B550(uint64_t a1, uint64_t a2, void *a3)
{
  cf = 0;
  if (!(*(*a1 + 904))(a1, a2, &cf))
  {
    return 0;
  }

  v6 = sub_1002E198C(cf, a3);
  if ((v6 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v8 = (*(*a1 + 840))(a1);
      *buf = 138412546;
      v20 = v8;
      v21 = 2112;
      v22 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Unsupported type at %@:%@ (domain:key)", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_1018AA1FC();
      }

      v10 = qword_1025D48A8;
      v11 = (*(*a1 + 840))(a1);
      v15 = 138412546;
      v16 = v11;
      v17 = 2112;
      v18 = a2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 17, "Unsupported type at %@:%@ (domain:key)", &v15, 22);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNameValuePair::get(CFStringRef, int64_t &, int) const", "%s\n", v12);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t sub_10016B7CC@<X0>(void *a2@<X8>)
{
  sub_10003848C(v17);
  v3 = sub_100038730(&v18, "[", 1);
  sub_100038730(v3, " MCC=", 5);
  v4 = std::ostream::operator<<();
  sub_100038730(v4, " AND MNC=", 9);
  v5 = std::ostream::operator<<();
  sub_100038730(v5, " AND LAC=", 9);
  v6 = std::ostream::operator<<();
  sub_100038730(v6, " AND CI=", 8);
  v7 = std::ostream::operator<<();
  sub_100038730(v7, " AND UARFCN=", 12);
  v8 = std::ostream::operator<<();
  sub_100038730(v8, " AND PSC=", 9);
  v9 = std::ostream::operator<<();
  sub_100038730(v9, " AND RSCP=", 10);
  v10 = std::ostream::operator<<();
  sub_100038730(v10, " AND ECN0=", 10);
  v11 = std::ostream::operator<<();
  sub_100038730(v11, " ]", 2);
  sub_100073518(v17, __p);
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  sub_10000EC00(a2, v12);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  v18 = v13;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10016BA54(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10016BA98(_DWORD *a1, int a2, int a3)
{
  v6 = 8;
  if (a2)
  {
    v6 = 6;
  }

  v7 = 9;
  if (a2)
  {
    v7 = 7;
  }

  ++a1[v6];
  a1[v7] += a3;
  if (qword_1025D4620 != -1)
  {
    sub_10016157C();
  }

  v8 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v9 = a1[6];
    v10 = vcvtd_n_f64_s32(a1[7], 0xAuLL);
    v11 = a1[8];
    v12 = vcvtd_n_f64_s32(a1[9], 0xAuLL);
    *buf = 67241472;
    v31 = a2;
    v32 = 1026;
    v33 = a3;
    v34 = 1026;
    v35 = v9;
    v36 = 2050;
    v37 = v10;
    v38 = 1026;
    v39 = v11;
    v40 = 2050;
    v41 = v12;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "@Celltileusage, download, isCurrent, %{public}d, size, %{public}d, nCurrent, %{public}d, kbCurrent, %{public}.1f, nNeighbor, %{public}d, kbNeighbor, %{public}.01f", buf, 0x2Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1018E906C();
    }

    v13 = a1[6];
    v14 = vcvtd_n_f64_s32(a1[7], 0xAuLL);
    v15 = a1[8];
    v16 = vcvtd_n_f64_s32(a1[9], 0xAuLL);
    v19[0] = 67241472;
    v19[1] = a2;
    v20 = 1026;
    v21 = a3;
    v22 = 1026;
    v23 = v13;
    v24 = 2050;
    v25 = v14;
    v26 = 1026;
    v27 = v15;
    v28 = 2050;
    v29 = v16;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 1, "@Celltileusage, download, isCurrent, %{public}d, size, %{public}d, nCurrent, %{public}d, kbCurrent, %{public}.1f, nNeighbor, %{public}d, kbNeighbor, %{public}.01f", v19, 46);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "void CLCellLocationMetrics::tileDownloaded(BOOL, int, CFAbsoluteTime)", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }
}

void sub_10016BCE8(int32x2_t *a1, __int32 a2)
{
  v2 = a1 + 2;
  v3.i32[0] = 1;
  v3.i32[1] = a2;
  a1[2] = vadd_s32(a1[2], v3);
  if (qword_1025D4620 != -1)
  {
    sub_10016157C();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v5 = v2->i32[0];
    v6 = v2->i32[1];
    v7[0] = 67240448;
    v7[1] = v5;
    v8 = 1026;
    v9 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "@Celltileusage, als, %{public}d, cells, %{public}d", v7, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_100161590(v2, v2 + 1);
  }
}

NSDictionary *sub_10016BDE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v36[0] = @"attempts";
  v2 = *v1;
  v3 = 1;
  if (*v1 >= 101)
  {
    v4 = *v1;
    do
    {
      v2 = v4 / 0xA;
      v3 *= 10;
      v5 = v4 > 0x3F1;
      v4 /= 0xAu;
    }

    while (v5);
  }

  v37[0] = [NSNumber numberWithInt:v3 * v2];
  v36[1] = @"als";
  v6 = v1[1];
  v7 = 1;
  if (v6 >= 101)
  {
    v8 = v1[1];
    do
    {
      v6 = v8 / 0xA;
      v7 *= 10;
      v5 = v8 > 0x3F1;
      v8 /= 0xAu;
    }

    while (v5);
  }

  v37[1] = [NSNumber numberWithInt:(v7 * v6)];
  v36[2] = @"tiles";
  v9 = v1[2];
  v10 = 1;
  if (v9 >= 101)
  {
    v11 = v1[2];
    do
    {
      v9 = v11 / 0xA;
      v10 *= 10;
      v5 = v11 > 0x3F1;
      v11 /= 0xAu;
    }

    while (v5);
  }

  v37[2] = [NSNumber numberWithInt:(v10 * v9)];
  v36[3] = @"unknown";
  v12 = v1[3];
  v13 = 1;
  if (v12 >= 101)
  {
    v14 = v1[3];
    do
    {
      v12 = v14 / 0xA;
      v13 *= 10;
      v5 = v14 > 0x3F1;
      v14 /= 0xAu;
    }

    while (v5);
  }

  v37[3] = [NSNumber numberWithInt:(v13 * v12)];
  v36[4] = @"alsrequests";
  v15 = v1[4];
  v16 = 1;
  if (v15 >= 101)
  {
    v17 = v1[4];
    do
    {
      v15 = v17 / 0xA;
      v16 *= 10;
      v5 = v17 > 0x3F1;
      v17 /= 0xAu;
    }

    while (v5);
  }

  v37[4] = [NSNumber numberWithInt:(v16 * v15)];
  v36[5] = @"alsreturned";
  v18 = v1[5];
  v19 = 1;
  if (v18 >= 101)
  {
    v20 = v1[5];
    do
    {
      v18 = v20 / 0xA;
      v19 *= 10;
      v5 = v20 > 0x3F1;
      v20 /= 0xAu;
    }

    while (v5);
  }

  v37[5] = [NSNumber numberWithInt:(v19 * v18)];
  v36[6] = @"numdownloadcurrent";
  v21 = v1[6];
  v22 = 1;
  if (v21 >= 101)
  {
    v23 = v1[6];
    do
    {
      v21 = v23 / 0xA;
      v22 *= 10;
      v5 = v23 > 0x3F1;
      v23 /= 0xAu;
    }

    while (v5);
  }

  v37[6] = [NSNumber numberWithInt:(v22 * v21)];
  v36[7] = @"kbcurrent";
  v24 = v1[7];
  v25 = v24 / 1024;
  if (v24 <= 103423)
  {
    v26 = 1;
  }

  else
  {
    v26 = 1;
    v27 = v25;
    do
    {
      v25 = v27 / 0xA;
      v26 *= 10;
      v5 = v27 > 0x3F1;
      v27 /= 0xAu;
    }

    while (v5);
  }

  v37[7] = [NSNumber numberWithInt:v26 * v25];
  v36[8] = @"numdownloadneighbor";
  v28 = v1[8];
  v29 = 1;
  if (v28 >= 101)
  {
    v30 = v1[8];
    do
    {
      v28 = v30 / 0xA;
      v29 *= 10;
      v5 = v30 > 0x3F1;
      v30 /= 0xAu;
    }

    while (v5);
  }

  v37[8] = [NSNumber numberWithInt:(v29 * v28)];
  v36[9] = @"kbneighbor";
  v31 = v1[9];
  v32 = v31 / 1024;
  if (v31 <= 103423)
  {
    v33 = 1;
  }

  else
  {
    v33 = 1;
    v34 = v32;
    do
    {
      v32 = v34 / 0xA;
      v33 *= 10;
      v5 = v34 > 0x3F1;
      v34 /= 0xAu;
    }

    while (v5);
  }

  v37[9] = [NSNumber numberWithInt:v33 * v32];
  return [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:10];
}

uint64_t sub_10016C1DC(uint64_t a1, __n128 a2)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 28) == 1)
  {
    v5 = (*(**a1 + 48))(a2);
    if (*(a1 + 64) == 1)
    {
      v6 = sub_1000CA604(*(a1 + 8), *(a1 + 48), v3);
    }

    else
    {
      v6 = 0;
    }

    if (qword_1025D4230 != -1)
    {
      sub_1018BDB90();
    }

    v10 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      *buf = 67109888;
      v29 = v11;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", buf, 0x1Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018BDCA8();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v23 = v5;
      v24 = 1024;
      v25 = v6;
      LODWORD(v20) = 30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, legacy, %d, new, %d", &v21, v20, 67109888, *v22);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLAccessoryDMFeatures>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLAccessoryDMFeatures>]", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v2 = v5 & v6;
    return v2 & 1;
  }

  v7 = *(a1 + 24);
  if (v7 == 1)
  {
    v12 = *(a1 + 64);
    v13 = sub_1000CA604(*(a1 + 8), *(a1 + 48), a2.n128_f64[0]);
    if (qword_1025D4230 != -1)
    {
      sub_1018BDB90();
    }

    v2 = v12 & v13;
    v14 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 48);
      *buf = 67110144;
      v29 = v15;
      v30 = 2048;
      v31 = v3;
      v32 = 1024;
      v33 = v12;
      v34 = 1024;
      v35 = v13 & 1;
      v36 = 1024;
      v37 = v12 & v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_1018BDCA8();
      }

      *v22 = 2048;
      *&v22[2] = v3;
      *&v22[10] = 1024;
      v24 = 1024;
      v25 = v13 & 1;
      v26 = 1024;
      v27 = v12 & v13;
      LODWORD(v20) = 36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "[SourceWrapper-%d] isReady, time, %f, isSourceActive, %d, isCompositeReady, %d, isDataProviderReady, %d", &v21, v20, 67110144, *v22, *&v22[8]);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLCalorieSourceAdapter::Source<CLNatalieInput<CLAccessoryDMFeatures>>::isReady(CFAbsoluteTime) const [LegacySourceT = CLNatalieInput<CLAccessoryDMFeatures>]", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    return v2 & 1;
  }

  if (v7)
  {
    return v2 & 1;
  }

  v8 = *(**a1 + 48);

  return v8();
}

void sub_10016C650(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
LABEL_7:
      v3 = CFCopyUserName();
      goto LABEL_8;
    }

    a1 = *a1;
  }

  else if (!*(a1 + 23))
  {
    goto LABEL_7;
  }

  v3 = sub_100053C00(a1);
LABEL_8:
  v5 = v3;
  v6 = sub_10001A3E8(v3, v4);
  if (sub_100328630(v6, v7) && (v8 = getenv("_SET_CLPERSISTENTSTORE_TEST_PATH")) != 0)
  {
    v15[0] = [NSString stringWithUTF8String:v8];
    v15[1] = v5;
    sub_10000EC00(&v13, [+[NSString pathWithComponents:](NSString UTF8String:[NSArray arrayWithObjects:? count:?];
    *a2 = v13;
    a2[2] = v14;
  }

  else if (v5)
  {
    v9 = CFCopyHomeDirectoryURLForUser();
    v10 = v9;
    if (v9)
    {
      v11 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
      v12 = v11;
      if (v11)
      {
        sub_1000238CC(v11, &v13);
        *a2 = v13;
        a2[2] = v14;
        CFRelease(v12);
      }

      CFRelease(v10);
    }

    CFRelease(v5);
  }
}

void sub_10016C7B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10016C7E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  if (*(v2 + 144) != 3)
  {
    return;
  }

  if (![a2 count])
  {
    goto LABEL_40;
  }

  v32 = v2;
  obj = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a2, "count")}];
  v35 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(a2, "count")}];
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
  if (v4)
  {
    v5 = v4;
    v37 = MEMORY[0];
    while (2)
    {
      v6 = 0;
      do
      {
        if (MEMORY[0] != v37)
        {
          objc_enumerationMutation(a2);
        }

        v7 = *(8 * v6);
        v8 = [a2 objectForKeyedSubscript:{v7, v32}];
        v9 = [objc_msgSend(v8 objectForKeyedSubscript:{@"kCLLocationStreamingMessageRapportHasGPSKey", "BOOLValue"}];
        v10 = [objc_msgSend(v8 objectForKeyedSubscript:{@"kCLLocationStreamingMessageRapportIsPhoneKey", "BOOLValue"}];
        v11 = [objc_msgSend(v8 objectForKeyedSubscript:{@"kCLLocationStreamingMessageRapportIsPadKey", "BOOLValue"}];
        if ([v8 objectForKeyedSubscript:@"kCLLocationStreamingMessageRapportIsAtLeast16_4"])
        {
          v12 = [objc_msgSend(v8 objectForKeyedSubscript:{@"kCLLocationStreamingMessageRapportIsAtLeast16_4", "BOOLValue"}];
        }

        else
        {
          v12 = 0;
        }

        if (qword_1025D47B0 != -1)
        {
          sub_10188FE40();
        }

        v13 = qword_1025D47B8;
        if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
        {
          v14 = [v7 UTF8String];
          *buf = 68290306;
          v39 = 0;
          v40 = 2082;
          v41 = "";
          v42 = 2082;
          v43 = v14;
          v44 = 1026;
          v45 = v9;
          v46 = 1026;
          v47 = v10;
          v48 = 1026;
          v49 = v11;
          v50 = 1026;
          v51 = v12;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient candidate device, deviceID:%{public, location:escape_only}s, hasGPS?:%{public}hhd, isIphone:%{public}hhd, isIpad:%{public}hhd, atLeast16_4:%{public}hhd}", buf, 0x34u);
        }

        if ((v12 & v9) == 1)
        {
          if (v10 && (*(*(a1 + 32) + 16))())
          {
            if (qword_1025D47B0 != -1)
            {
              sub_10188FE40();
            }

            v27 = qword_1025D47B8;
            if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
            {
              v28 = [v7 UTF8String];
              *buf = 68289282;
              v39 = 0;
              v40 = 2082;
              v41 = "";
              v42 = 2082;
              v43 = v28;
              v29 = "{msg%{public}.0s:#Multiclient selected an iPhone, deviceID:%{public, location:escape_only}s}";
LABEL_57:
              _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_INFO, v29, buf, 0x1Cu);
            }

            return;
          }

          if (v11)
          {
            v15 = obj;
          }

          else
          {
            v15 = v35;
          }

          [v15 addObject:v7];
        }

        v6 = v6 + 1;
      }

      while (v5 != v6);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32);
  v2 = v33;
  if (!v16)
  {
LABEL_32:
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35);
    if (v21)
    {
      v22 = v21;
      v23 = MEMORY[0];
LABEL_34:
      v24 = 0;
      while (1)
      {
        if (MEMORY[0] != v23)
        {
          objc_enumerationMutation(v35);
        }

        v25 = *(8 * v24);
        if ((*(*(a1 + 32) + 16))())
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35);
          if (v22)
          {
            goto LABEL_34;
          }

          goto LABEL_40;
        }
      }

      if (qword_1025D47B0 != -1)
      {
        sub_10188FE40();
      }

      v27 = qword_1025D47B8;
      if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
      {
        v31 = [v25 UTF8String];
        *buf = 68289282;
        v39 = 0;
        v40 = 2082;
        v41 = "";
        v42 = 2082;
        v43 = v31;
        v29 = "{msg%{public}.0s:#Multiclient selected a non-iOS device, deviceID:%{public, location:escape_only}s}";
        goto LABEL_57;
      }

      return;
    }

LABEL_40:
    if (qword_1025D47B0 != -1)
    {
      sub_10188FE40();
    }

    v26 = qword_1025D47B8;
    if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289282;
      v39 = 0;
      v40 = 2082;
      v41 = "";
      v42 = 2050;
      v43 = 0x4014000000000000;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#Multiclient failed to find any usable device, retrying, nextFireInterval:%{public}f}", buf, 0x1Cu);
    }

    [*(v2 + 200) setNextFireDelay:5.0];
    return;
  }

  v17 = v16;
  v18 = MEMORY[0];
LABEL_26:
  v19 = 0;
  while (1)
  {
    if (MEMORY[0] != v18)
    {
      objc_enumerationMutation(obj);
    }

    v20 = *(8 * v19);
    if ((*(*(a1 + 32) + 16))())
    {
      break;
    }

    if (v17 == ++v19)
    {
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
      if (v17)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }
  }

  if (qword_1025D47B0 != -1)
  {
    sub_10188FE40();
  }

  v27 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    v30 = [v20 UTF8String];
    *buf = 68289282;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    v42 = 2082;
    v43 = v30;
    v29 = "{msg%{public}.0s:#Multiclient selected an iPad, deviceID:%{public, location:escape_only}s}";
    goto LABEL_57;
  }
}

void sub_10016CE68(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  v2 = *(a1 + 32);
  if (v2 <= 0.0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10016CE54();
    }

    v10 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_FAULT))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "determinant <= 0.0", v12, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C2D74();
    }
  }

  else
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    if (*(a1 + 40))
    {
      v7 = v5 * ((*(a2 + 32) + *(a2 + 32)) * *(a2 + 40)) + *(a2 + 32) * *(a2 + 32) * v4 + *(a2 + 40) * *(a2 + 40) * v6 + *(a2 + 56) * *(a2 + 56) * *(a1 + 72);
      v8 = v7 / 3.0;
      v9 = 248.050213;
    }

    else
    {
      v7 = v5 * ((*(a2 + 32) + *(a2 + 32)) * *(a2 + 40)) + *(a2 + 32) * *(a2 + 32) * v4 + *(a2 + 40) * *(a2 + 40) * v6;
      v8 = v7 * 0.5;
      v9 = 39.4784176;
    }

    v11 = exp(v7 * -0.5);
    *(a2 + 16) = v8;
    *a2 = v11 / sqrt(v2 * v9);
  }
}

void sub_10016CFC8(uint64_t result)
{
  v1 = *result;
  if (*result <= 0.0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10016CE54();
    }

    v5 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "fVarEast <= 0.0", v21, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C2A04();
    }
  }

  else
  {
    v2 = *(result + 8);
    if (v2 <= 0.0)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10016CE54();
      }

      v6 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_FAULT))
      {
        *v20 = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "fVarNorth <= 0.0", v20, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018C2AE0();
      }
    }

    else
    {
      v3 = *(result + 16);
      if (v3 >= 0.0)
      {
        v7 = *(result + 24);
        if (v7 <= 0.0 || v7 >= 32400.0)
        {
          *(result + 24) = 0xBFF0000000000000;
          *(result + 40) = 0;
          v14 = -v3;
          v15 = v1 * v2 - v3 * v3;
          *(result + 32) = v15;
          *(result + 48) = v2;
          *(result + 56) = v14;
          *(result + 64) = v1;
          if (v15 == 0.0)
          {
            if (qword_1025D46B0 != -1)
            {
              sub_10016CE54();
            }

            v16 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_FAULT))
            {
              *v18 = 0;
              _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "CLMM, Unexpected determinant of 0", v18, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018C2BBC();
            }
          }

          else
          {
            *(result + 48) = v2 / v15;
            *(result + 56) = v14 / v15;
            *(result + 64) = v1 / v15;
          }
        }

        else
        {
          *(result + 40) = 1;
          v8 = v2 * v7;
          v9 = -(v7 * v3);
          *(result + 48) = v2 * v7;
          *(result + 56) = v9;
          v10 = v1 * v7;
          v11 = v1 * v2 - v3 * v3;
          *(result + 64) = v10;
          *(result + 72) = v11;
          v12 = v11 * v7;
          *(result + 32) = v11 * v7;
          if (v11 * v7 == 0.0)
          {
            if (qword_1025D46B0 != -1)
            {
              sub_10016CE54();
            }

            v13 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_FAULT))
            {
              *v17 = 0;
              _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "CLMM, Unexpected determinant of 0", v17, 2u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018C2BBC();
            }
          }

          else
          {
            *(result + 48) = v8 / v12;
            *(result + 56) = v9 / v12;
            *(result + 64) = v10 / v12;
            *(result + 72) = v11 / v12;
          }
        }
      }

      else
      {
        if (qword_1025D46B0 != -1)
        {
          sub_10016CE54();
        }

        v4 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "fVarEastNorth < 0.0", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018C2C98();
        }
      }
    }
  }
}

void sub_10016D2F0(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  memset(&v17[7], 0, 32);
  *(a1 + 24) = xmmword_101C75BF0;
  v5 = *&v17[16];
  *(a1 + 41) = *v17;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 40) = 0;
  *(a1 + 57) = v5;
  *(a1 + 72) = *&v17[31];
  if (*a2 > 0.0 && *a3 > 0.0 && (v6 = *a4, *a4 >= 0.0))
  {
    v10 = *a2 / 2.45;
    v11 = *a3 / 2.45;
    if (v6 > 0.0)
    {
      v12 = tan(v6 * -2.0 * 0.0174532925);
      v13 = sqrt((v10 * v10 - v11 * v11) * (v10 * v10 - v11 * v11) * 0.25 * (v12 * v12) / (v12 * v12 + 1.0));
      *(a1 + 16) = v13;
      v14 = v10 * v10 + v11 * v11;
      v15 = (v13 + v13) / v12;
      v11 = (v14 + v15) * 0.5;
      v10 = (v14 - v15) * 0.5;
    }

    *a1 = v11;
    *(a1 + 8) = v10;
    v16 = -1.0;
    if (*a5 > 0.0)
    {
      v16 = *a5 * *a5;
    }

    *(a1 + 24) = v16;
  }

  else
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10016CE54();
    }

    v7 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      *v17 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "invalid inputs", v17, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C2928();
    }
  }
}

void sub_10016D4C0(uint64_t a1, uint64_t a2, int a3)
{
  v29 = 0;
  sub_100173B50(a2, &v29 + 1, &v29);
  v28 = -1.0;
  v6 = -1.0;
  if (HIBYTE(v29) == 1 && v29 == 1)
  {
    v6 = *(a2 + 192) + 1.414;
    v28 = v6;
  }

  if (*(a2 + 200) > 0.0 && (v7 = *(a2 + 208), v7 > 0.0) && (v8 = *(a2 + 216), v8 >= 0.0))
  {
    *v30 = *(a2 + 200);
    v26 = v8;
    v27 = v7;
    sub_10016D2F0(a1, v30, &v27, &v26, &v28);
    v15 = *a1;
    v11 = *(a1 + 8);
  }

  else
  {
    v9 = *(a2 + 80);
    memset(&v30[7], 0, 32);
    v10 = *&v30[16];
    *(a1 + 41) = *v30;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 57) = v10;
    *(a1 + 72) = *&v30[31];
    v11 = v9 * v9 * 0.5;
    *a1 = v11;
    *(a1 + 8) = v11;
    v12 = v6 * v6;
    v13 = v6 <= 0.0;
    v14 = -1.0;
    if (!v13)
    {
      v14 = v12;
    }

    *(a1 + 24) = v14;
    v15 = v11;
  }

  v16 = *(a2 + 96);
  if (v16 > 19.4444444 && v15 + v11 < 25.0)
  {
    __asm { FMOV            V1.2D, #25.0 }

    *a1 = _Q1;
    *(a1 + 16) = 0;
    v11 = 25.0;
    v15 = 25.0;
  }

  if (v15 + v11 < 156.25)
  {
    *a1 = vdupq_n_s64(0x4063880000000000uLL);
    *(a1 + 16) = 0;
  }

  v22 = *(a1 + 24);
  if (a3 && v22 > 0.0)
  {
    v23 = v16 == 0.0;
    v24 = 3.0;
    if ((v23 | *(a2 + 228)))
    {
      v24 = 15.0;
    }

    v25 = sqrt(v22) + v24;
    v22 = v25 * v25;
    *(a1 + 24) = v25 * v25;
  }

  if (v22 > 0.0 && v22 < 42.25)
  {
    *(a1 + 24) = 0x4045200000000000;
  }

  sub_10016CFC8(a1);
}

uint64_t sub_10016D6E0(int *a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_10016157C();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = a1[2];
    v6 = a1[3];
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = vcvtd_n_f64_s32(a1[7], 0xAuLL);
    v11 = a1[8];
    v12 = vcvtd_n_f64_s32(a1[9], 0xAuLL);
    *buf = 67242496;
    v15 = v3;
    v16 = 1026;
    v17 = v4;
    v18 = 1026;
    v19 = v5;
    v20 = 1026;
    v21 = v6;
    v22 = 1026;
    v23 = v7;
    v24 = 1026;
    v25 = v8;
    v26 = 1026;
    v27 = v9;
    v28 = 2050;
    v29 = v10;
    v30 = 1026;
    v31 = v11;
    v32 = 2050;
    v33 = v12;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "UclpMetric, celltileusage, attempts, %{public}d, als, %{public}d, tiles, %{public}d, unknown, %{public}d, alsreq, %{public}d, alscells, %{public}d, nCurrent, %{public}d, kbCurrent, %{public}.1f, nNeighbor, %{public}d, kbNeighbor, %{public}.01f", buf, 0x46u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E8F08(a1);
  }

  return AnalyticsSendEventLazy();
}

uint64_t sub_10016D878(char *a1)
{
  if (!a1)
  {
    return 1;
  }

  if (a1 == 1)
  {
    return 2;
  }

  if (qword_1025D4870 != -1)
  {
    sub_1018C3A58();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    v6 = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Unknown WPHomeKitType %ld", &v5, 0xCu);
  }

  v4 = sub_10000A100(121, 0);
  result = 0;
  if (v4)
  {
    sub_1018C3A6C(a1);
    return 0;
  }

  return result;
}

void sub_10016D974(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = a2;
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 0x408uLL, 0);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
  if (v4)
  {
    v5 = *v12;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v12 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = [objc_msgSend(objc_msgSend(*(*(&v11 + 1) + 8 * v6) stringByAppendingPathComponent:{@"LocationBundles/", v9), "stringByAppendingPathComponent:", +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", a1)), "stringByAppendingPathExtension:", @"bundle"}];
      if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_27;
      }
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    sub_10000EC00(&__p, [v7 UTF8String]);
    sub_1000E1C7C(buf, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100037ACC(buf, v9);
    if (v28 < 0)
    {
      operator delete(v27);
    }

    if (v26 < 0)
    {
      operator delete(v25);
    }

    if (v24 < 0)
    {
      operator delete(v23);
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
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
LABEL_27:
    if (qword_1025D4390 != -1)
    {
      sub_10189A7B0();
    }

    v8 = qword_1025D4398;
    if (os_log_type_enabled(qword_1025D4398, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      *&buf[4] = a1;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "Unable to resolve bundle path for service: %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10189A7D8(a1);
    }

    sub_10000EC00(v9, "");
  }
}

void sub_10016DC50(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10189A8E4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLOdometerNotifier::onMotionStateMediatorNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10189A8F8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLOdometerNotifier::onMotionStateMediatorNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1004D30E8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10016DF60(uint64_t result, double *a2, double *a3)
{
  memset(&v5[7], 0, 32);
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 24) = xmmword_101C75BF0;
  *(result + 40) = 0;
  *(result + 41) = *v5;
  *(result + 57) = *&v5[16];
  *(result + 72) = 0;
  v3 = *a2 * *a2 * 0.5;
  *result = v3;
  *(result + 8) = v3;
  v4 = -1.0;
  if (*a3 > 0.0)
  {
    v4 = *a3 * *a3;
  }

  *(result + 24) = v4;
  return result;
}

void sub_10016E014(uint64_t a1, double a2, double a3)
{
  if (qword_1025D45A0 != -1)
  {
    sub_1018C58D8();
  }

  v5 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a2;
    *&buf[12] = 2048;
    *v328 = a3;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo onDataReady | timestamp: %f, walltime %f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C5AF4(a2, a3);
  }

  v6 = a2 + -1.0;
  sub_1000A69D8(*(a1 + 8), 0, &v313, a2 + -1.0, a2);
  sub_1005758E0(&v313, &v311);
  if (v311 != v312)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v7 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v312 - 16);
      *&buf[4] = *v311;
      v329 = v8;
      *buf = 134219264;
      *&buf[12] = 2048;
      *v328 = *&buf[4] - v6;
      *&v328[8] = 2048;
      v330 = 2048;
      v331 = a2 - v8;
      v332 = 2048;
      v333 = *&buf[4] - v8 + 5.0;
      v334 = 1024;
      v335 = (v312 - v311) >> 7;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo DM, start, %f, delta, %f, end, %f, delta %f, interval, %f, size, %d", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v35 = *(v312 - 16);
      *v318 = *v311;
      v320 = v35;
      v317 = 134219264;
      *&v318[8] = 2048;
      *v319 = *v318 - v6;
      *&v319[8] = 2048;
      v321 = 2048;
      v322 = a2 - v35;
      v323 = 2048;
      v324 = *v318 - v35 + 5.0;
      v325 = 1024;
      v326 = (v312 - v311) >> 7;
      LODWORD(v281) = 58;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo DM, start, %f, delta, %f, end, %f, delta %f, interval, %f, size, %d", COERCE_DOUBLE(&v317), v281, v282, v283, *&v284, v286);
      v37 = v36;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v36);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    v9 = v311;
    v10 = v312;
    if (v311 != v312)
    {
      do
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018C59DC();
        }

        v11 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
        {
          v12 = *v9;
          v13 = v9[10];
          v14 = v9[11];
          v15 = v9[12];
          *buf = 134218752;
          *&buf[4] = v12;
          *&buf[12] = 2048;
          *v328 = v13;
          *&v328[8] = 2048;
          v329 = v14;
          v330 = 2048;
          v331 = v15;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "DM User Accel | timestamp: %f, x: %f, y: %f, z: %f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C5C1C(buf);
          v16 = *v9;
          v17 = v9[10];
          v18 = v9[11];
          v19 = v9[12];
          v317 = 134218752;
          *v318 = v16;
          *&v318[8] = 2048;
          *v319 = v17;
          *&v319[8] = 2048;
          v320 = v18;
          v321 = 2048;
          v322 = v19;
          LODWORD(v281) = 42;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "DM User Accel | timestamp: %f, x: %f, y: %f, z: %f", COERCE_DOUBLE(&v317), v281, v282, v283);
          v21 = v20;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v20);
          if (v21 != buf)
          {
            free(v21);
          }
        }

        v9 += 32;
      }

      while (v9 != v10);
    }
  }

  *buf = 0;
  sub_1003DD9F8(v313, buf);
  *buf = 0;
  v22 = sub_1003DD9F8(v313, buf);
  v23 = *v22;
  v24 = v22[1];
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = v316;
  if (v316)
  {
    if (v316 == 1 && (*(v22 + 33) & 1) != 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v29 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      *&buf[4] = 0;
      *&buf[8] = 1024;
      *&buf[10] = v316;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C5C1C(buf);
      v317 = 67109376;
      *v318 = 0;
      *&v318[4] = 1024;
      *&v318[6] = v316;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", &v317, 14);
      v34 = v33;
      sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::Accel100, T = LocalAccel, Strategy = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/DataProviderService/CLDataProviderMockAlgo.mm:84:72)]", "%s\n", v33);
      if (v34 != buf)
      {
        free(v34);
      }
    }

    goto LABEL_52;
  }

  if ((v22[4] & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  if (v23)
  {
    v27 = v26;
    v28 = 0;
    if (v24 && v26)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = v316;
      v28 = v24;
    }
  }

  else
  {
    v27 = 0;
    v28 = 0;
  }

  if (v25)
  {
    goto LABEL_50;
  }

  v30 = v314;
  v31 = v315;
  if (v315 < v314)
  {
    goto LABEL_50;
  }

  if (v27[33])
  {
    v32 = 0;
    do
    {
      if (*sub_10057882C(v27 + 32, v32) >= v30)
      {
        if (*sub_10057882C(v27 + 32, v32) > v31)
        {
          break;
        }

        if (*sub_10057882C(v27 + 32, v32) >= v30 && *sub_10057882C(v27 + 32, v32) < v31)
        {
          sub_10057882C(v27 + 32, v32);
          operator new();
        }
      }

      ++v32;
    }

    while (v32 < v27[33]);
LABEL_50:
    if (!v28)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  if (v28)
  {
LABEL_51:
    sub_100008080(v28);
  }

LABEL_52:
  if (v24)
  {
    sub_100008080(v24);
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v38 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo accel 100 is empty", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C5C1C(buf);
    LOWORD(v317) = 0;
    LODWORD(v281) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo accel 100 is empty", &v317, *&v281);
    v53 = v52;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v52);
    if (v53 != buf)
    {
      free(v53);
    }
  }

  *buf = 3;
  sub_1003DD9F8(v313, buf);
  *buf = 3;
  v39 = sub_1003DD9F8(v313, buf);
  v40 = *v39;
  v41 = v39[1];
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v42 = v316;
  if (v316)
  {
    if (v316 == 1 && (*(v39 + 33) & 1) != 0)
    {
      goto LABEL_71;
    }

LABEL_76:
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v46 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      *&buf[4] = 3;
      *&buf[8] = 1024;
      *&buf[10] = v316;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018C5C1C(buf);
      v317 = 67109376;
      *v318 = 3;
      *&v318[4] = 1024;
      *&v318[6] = v316;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", &v317, 14);
      v51 = v50;
      sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::AccessoryDM, T = LocalADM, Strategy = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/DataProviderService/CLDataProviderMockAlgo.mm:97:70)]", "%s\n", v50);
      if (v51 != buf)
      {
        free(v51);
      }
    }

    goto LABEL_95;
  }

  if ((v39[4] & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_71:
  if (v40)
  {
    v44 = v43;
    v45 = 0;
    if (v41 && v43)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      v42 = v316;
      v45 = v41;
    }
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  if (v42)
  {
    goto LABEL_93;
  }

  v47 = v314;
  v48 = v315;
  if (v315 < v314)
  {
    goto LABEL_93;
  }

  if (v44[33])
  {
    v49 = 0;
    do
    {
      if (*(sub_100578A2C(v44 + 32, v49) + 8) >= v47)
      {
        if (*(sub_100578A2C(v44 + 32, v49) + 8) > v48)
        {
          break;
        }

        if (*(sub_100578A2C(v44 + 32, v49) + 8) >= v47 && *(sub_100578A2C(v44 + 32, v49) + 8) < v48)
        {
          sub_100578A2C(v44 + 32, v49);
          operator new();
        }
      }

      ++v49;
    }

    while (v49 < v44[33]);
LABEL_93:
    if (!v45)
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  if (v45)
  {
LABEL_94:
    sub_100008080(v45);
  }

LABEL_95:
  if (v41)
  {
    sub_100008080(v41);
  }

  v285 = 0;
  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v54 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo accessory dm is empty", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C5C1C(buf);
    LOWORD(v317) = 0;
    LODWORD(v281) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo accessory dm is empty", &v317, *&v281);
    v78 = v77;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v77);
    if (v78 != buf)
    {
      free(v78);
    }
  }

  *buf = 4;
  sub_1003DD9F8(v313, buf);
  *buf = 4;
  v55 = sub_1003DD9F8(v313, buf);
  v56 = *v55;
  v57 = *(v55 + 1);
  if (*&v57 != 0.0)
  {
    atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v58 = v316;
  if (v316)
  {
    if (v316 == 1 && (*(v55 + 33) & 1) != 0)
    {
      goto LABEL_114;
    }

LABEL_119:
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v62 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109376;
      *&buf[4] = 4;
      *&buf[8] = 1024;
      *&buf[10] = v316;
      _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_FAULT, "[Composite view] trying to grab stream %d with incompatible time base %d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      v282 = *&v57;
      sub_1018C5C1C(buf);
      v317 = 67109376;
      *v318 = 4;
      *&v318[4] = 1024;
      *&v318[6] = v316;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 17, "[Composite view] trying to grab stream %d with incompatible time base %d", &v317, 14);
      v76 = v75;
      sub_100152C7C("Generic", 1, 0, 0, "const std::vector<T> CMDataProviderComposite::View::getStream(Strategy) const [StreamT = CMDataProviderFactory::FactoryStream::AccessoryFitnessDM, T = LocalAFDM, Strategy = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/DataProviderService/CLDataProviderMockAlgo.mm:108:79)]", "%s\n", v75);
      if (v76 != buf)
      {
        free(v76);
      }
    }

    goto LABEL_157;
  }

  if ((v55[4] & 1) == 0)
  {
    goto LABEL_119;
  }

LABEL_114:
  if (v56)
  {
    v60 = v59;
    v61 = 0;
    if (*&v57 != 0.0 && v59)
    {
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      v58 = v316;
      v61 = v57;
    }
  }

  else
  {
    v60 = 0;
    v61 = 0;
  }

  v64 = v314;
  v63 = v315;
  v288 = v61;
  if (v315 < v314)
  {
    goto LABEL_155;
  }

  v65 = vabdd_f64(v315, v314);
  if ((v65 * 1.00999999 * 50.0))
  {
    operator new();
  }

  if (!v60[49])
  {
    goto LABEL_155;
  }

  v282 = *&v57;
  v66 = 0;
  while (1)
  {
    v67 = (v58 ? sub_1004F7CF0(v60 + 48, v66) + 4 : sub_1004F7CF0(v60 + 48, v66));
    v68 = *v67;
    if (*v67 >= v64)
    {
      break;
    }

LABEL_142:
    ++v66;
    v70 = v60[49];
    if (v66 >= v70)
    {
      goto LABEL_146;
    }
  }

  if (v68 <= v63)
  {
    if (v68 >= v64 && v68 < v63)
    {
      sub_1004F7CF0(v60 + 48, v66);
      operator new();
    }

    goto LABEL_142;
  }

  LODWORD(v70) = v60[49];
LABEL_146:
  *&v57 = v282;
  if (v70)
  {
    v71 = (v65 * 50.0);
    if (v71 < 0)
    {
      v71 = -(v65 * 50.0);
    }

    if (v71 > (v65 * 0.0500000007 * 50.0))
    {
      if (qword_1025D45A0 != -1)
      {
        sub_1018C59DC();
      }

      v72 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
      {
        v73 = *sub_1004F7CF0(v60 + 48, 0);
        v74 = *sub_1004F7CF0(v60 + 48, 0);
        *buf = 134219008;
        *&buf[4] = v64;
        *&buf[12] = 2048;
        *v328 = v63;
        *&v328[8] = 2048;
        v329 = v73;
        v330 = 2048;
        v331 = v74;
        v332 = 2048;
        v333 = 0.0;
        _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEFAULT, "#Warning, accessory dm returning unexpected size, requested, start, %f, end, %f, returned, start, %f, end, %f, size, %ld", buf, 0x34u);
      }

      *&v57 = v282;
      if (sub_10000A100(121, 2))
      {
        sub_1018C5C1C(buf);
        v79 = qword_1025D45A8;
        v80 = *sub_1004F7CF0(v60 + 48, 0);
        v81 = *sub_1004F7CF0(v60 + 48, 0);
        v317 = 134219008;
        *v318 = v64;
        *&v318[8] = 2048;
        *v319 = v63;
        *&v319[8] = 2048;
        v320 = v80;
        v321 = 2048;
        v322 = v81;
        v323 = 2048;
        v324 = 0.0;
        LODWORD(v281) = 52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v79, 0, "#Warning, accessory dm returning unexpected size, requested, start, %f, end, %f, returned, start, %f, end, %f, size, %ld", COERCE_DOUBLE(&v317), v281, v282, v283, 0);
        v83 = v82;
        sub_100152C7C("Generic", 1, 0, 2, "const std::vector<T> CMDataProviderFactoryAccessoryFitnessDM::getDataInRange(CFTimeInterval, CFTimeInterval, TimeBase, Strategy) const [T = LocalAFDM, Strategy = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/DataProviderService/CLDataProviderMockAlgo.mm:108:79)]", "%s\n", v82);
        if (v83 != buf)
        {
          free(v83);
        }

        *&v57 = v282;
      }
    }
  }

LABEL_155:
  if (v288)
  {
    sub_100008080(v288);
  }

LABEL_157:
  if (*&v57 != 0.0)
  {
    sub_100008080(v57);
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v84 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v84, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo accessory fitness dm is empty", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C5C1C(buf);
    LOWORD(v317) = 0;
    LODWORD(v281) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo accessory fitness dm is empty", &v317, *&v281);
    v260 = v259;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v259);
    if (v260 != buf)
    {
      free(v260);
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_1018C59DC();
  }

  v85 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a3 + -5.0;
    *&buf[12] = 2048;
    *v328 = a3;
    _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo walltime query from %f to %f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018C5C1C(buf);
    v86 = a3 + -5.0;
    v317 = 134218240;
    *v318 = a3 + -5.0;
    *&v318[8] = 2048;
    *v319 = a3;
    LODWORD(v281) = 22;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo walltime query from %f to %f", COERCE_DOUBLE(&v317), v281);
    v228 = v227;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v227);
    if (v228 != buf)
    {
      free(v228);
    }
  }

  else
  {
    v86 = a3 + -5.0;
  }

  sub_1000A69D8(*(a1 + 8), 1, v310, v86, a3);
  sub_100575CB0(v310, &v308);
  if (v308 == v309)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v98 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v98, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo steps is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      LOWORD(v317) = 0;
      LODWORD(v281) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo steps is empty", &v317, *&v281);
      v262 = v261;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v261);
      if (v262 != buf)
      {
        free(v262);
      }
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v87 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v88 = *v308;
      *v328 = *(v309 - 7);
      *&buf[4] = v88;
      *buf = 134218752;
      *&buf[12] = 2048;
      *&v328[8] = 2048;
      v329 = *v328 - v88;
      v330 = 1024;
      LODWORD(v331) = -1227133513 * ((v309 - v308) >> 3);
      _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo steps, start, %f, end, %f, interval, %f, size, %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v229 = *v308;
      *v319 = *(v309 - 7);
      *v318 = v229;
      v317 = 134218752;
      *&v318[8] = 2048;
      *&v319[8] = 2048;
      v320 = *v319 - v229;
      v321 = 1024;
      LODWORD(v322) = -1227133513 * ((v309 - v308) >> 3);
      LODWORD(v281) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo steps, start, %f, end, %f, interval, %f, size, %d", COERCE_DOUBLE(&v317), v281, v282, LODWORD(v283));
      v231 = v230;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v230);
      if (v231 != buf)
      {
        free(v231);
      }
    }

    v89 = v308;
    v90 = v309;
    if (v308 != v309)
    {
      do
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018C59DC();
        }

        v91 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
        {
          v92 = *v89;
          v93 = *(v89 + 2);
          *buf = 134218240;
          *&buf[4] = v92;
          *&buf[12] = 1024;
          *v328 = v93;
          _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo steps, startTime, %f, delta, %d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C5C1C(buf);
          v94 = *v89;
          v95 = *(v89 + 2);
          v317 = 134218240;
          *v318 = v94;
          *&v318[8] = 1024;
          *v319 = v95;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo steps, startTime, %f, delta, %d", COERCE_DOUBLE(&v317), 18);
          v97 = v96;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v96);
          if (v97 != buf)
          {
            free(v97);
          }
        }

        v89 += 56;
      }

      while (v89 != v90);
    }
  }

  sub_100576080(v310, &v306);
  if (v306 == v307)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v110 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v110, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo PedNetSteps is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      LOWORD(v317) = 0;
      LODWORD(v281) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo PedNetSteps is empty", &v317, *&v281);
      v264 = v263;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v263);
      if (v264 != buf)
      {
        free(v264);
      }
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v99 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v100 = *v306;
      *v328 = *(v307 - 3);
      *&buf[4] = v100;
      *buf = 134218752;
      *&buf[12] = 2048;
      *&v328[8] = 2048;
      v329 = *v328 - v100;
      v330 = 1024;
      LODWORD(v331) = -1431655765 * ((v307 - v306) >> 3);
      _os_log_impl(dword_100000000, v99, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo PedNetSteps, start, %f, end, %f, interval, %f, size, %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v232 = *v306;
      *v319 = *(v307 - 3);
      *v318 = v232;
      v317 = 134218752;
      *&v318[8] = 2048;
      *&v319[8] = 2048;
      v320 = *v319 - v232;
      v321 = 1024;
      LODWORD(v322) = -1431655765 * ((v307 - v306) >> 3);
      LODWORD(v281) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo PedNetSteps, start, %f, end, %f, interval, %f, size, %d", COERCE_DOUBLE(&v317), v281, v282, LODWORD(v283));
      v234 = v233;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v233);
      if (v234 != buf)
      {
        free(v234);
      }
    }

    v101 = v306;
    v102 = v307;
    if (v306 != v307)
    {
      do
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018C59DC();
        }

        v103 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
        {
          v104 = -1.0;
          if (*(v101 + 12) == 1)
          {
            v104 = v101[2];
          }

          v105 = *v101;
          *buf = 134218240;
          *&buf[4] = v105;
          *&buf[12] = 2048;
          *v328 = v104;
          _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo PedNetSteps, startDate, %f, distance, %f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D45A0 != -1)
          {
            sub_1018C59DC();
          }

          v106 = *v101;
          v107 = -1.0;
          if (*(v101 + 12) == 1)
          {
            v107 = v101[2];
          }

          v317 = 134218240;
          *v318 = v106;
          *&v318[8] = 2048;
          *v319 = v107;
          LODWORD(v281) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo PedNetSteps, startDate, %f, distance, %f", COERCE_DOUBLE(&v317), v281);
          v109 = v108;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v108);
          if (v109 != buf)
          {
            free(v109);
          }
        }

        v101 += 6;
      }

      while (v101 != v102);
    }
  }

  sub_10057644C(v310, &v304);
  if (v304 == v305)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v122 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v122, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo BatchPedNetSteps is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      LOWORD(v317) = 0;
      LODWORD(v281) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo BatchPedNetSteps is empty", &v317, *&v281);
      v266 = v265;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v265);
      if (v266 != buf)
      {
        free(v266);
      }
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v111 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v112 = *v304;
      *v328 = *(v305 - 7);
      *&buf[4] = v112;
      *buf = 134218752;
      *&buf[12] = 2048;
      *&v328[8] = 2048;
      v329 = *v328 - v112;
      v330 = 1024;
      LODWORD(v331) = -1227133513 * ((v305 - v304) >> 3);
      _os_log_impl(dword_100000000, v111, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo BatchPedNetSteps, start, %f, end, %f, interval, %f, size, %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v235 = *v304;
      *v319 = *(v305 - 7);
      *v318 = v235;
      v317 = 134218752;
      *&v318[8] = 2048;
      *&v319[8] = 2048;
      v320 = *v319 - v235;
      v321 = 1024;
      LODWORD(v322) = -1227133513 * ((v305 - v304) >> 3);
      LODWORD(v281) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo BatchPedNetSteps, start, %f, end, %f, interval, %f, size, %d", COERCE_DOUBLE(&v317), v281, v282, LODWORD(v283));
      v237 = v236;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v236);
      if (v237 != buf)
      {
        free(v237);
      }
    }

    v113 = v304;
    v114 = v305;
    if (v304 != v305)
    {
      do
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018C59DC();
        }

        v115 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
        {
          v116 = *v113;
          v117 = *(v113 + 4);
          *buf = 134218240;
          *&buf[4] = v116;
          *&buf[12] = 1024;
          *v328 = v117;
          _os_log_impl(dword_100000000, v115, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo BatchPedNetSteps, startDate, %f, delta, %d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C5C1C(buf);
          v118 = *v113;
          v119 = *(v113 + 4);
          v317 = 134218240;
          *v318 = v118;
          *&v318[8] = 1024;
          *v319 = v119;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo BatchPedNetSteps, startDate, %f, delta, %d", COERCE_DOUBLE(&v317), 18);
          v121 = v120;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v120);
          if (v121 != buf)
          {
            free(v121);
          }
        }

        v113 += 56;
      }

      while (v113 != v114);
    }
  }

  sub_10057681C(v310, &v302);
  if (v302 == v303)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v134 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v134, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo hr is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      LOWORD(v317) = 0;
      LODWORD(v281) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo hr is empty", &v317, *&v281);
      v268 = v267;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v267);
      if (v268 != buf)
      {
        free(v268);
      }
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v123 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v124 = *(v302 + 5);
      *v328 = *(v303 - 17);
      *&buf[4] = v124;
      *buf = 134218752;
      *&buf[12] = 2048;
      *&v328[8] = 2048;
      v329 = *v328 - v124;
      v330 = 1024;
      LODWORD(v331) = -1171354717 * ((v303 - v302) >> 4);
      _os_log_impl(dword_100000000, v123, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo hr, start, %f, end, %f, interval, %f, size, %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v238 = *(v302 + 5);
      *v319 = *(v303 - 17);
      *v318 = v238;
      v317 = 134218752;
      *&v318[8] = 2048;
      *&v319[8] = 2048;
      v320 = *v319 - v238;
      v321 = 1024;
      LODWORD(v322) = -1171354717 * ((v303 - v302) >> 4);
      LODWORD(v281) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo hr, start, %f, end, %f, interval, %f, size, %d", COERCE_DOUBLE(&v317), v281, v282, LODWORD(v283));
      v240 = v239;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v239);
      if (v240 != buf)
      {
        free(v240);
      }
    }

    v125 = v302;
    v126 = v303;
    if (v302 != v303)
    {
      do
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018C59DC();
        }

        v127 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
        {
          v128 = *(v125 + 5);
          v129 = *(v125 + 1);
          *buf = 134218240;
          *&buf[4] = v128;
          *&buf[12] = 2048;
          *v328 = v129;
          _os_log_impl(dword_100000000, v127, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo hr, startTime, %f, bpm, %f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C5C1C(buf);
          v130 = *(v125 + 5);
          v131 = *(v125 + 1);
          v317 = 134218240;
          *v318 = v130;
          *&v318[8] = 2048;
          *v319 = v131;
          LODWORD(v281) = 22;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo hr, startTime, %f, bpm, %f", COERCE_DOUBLE(&v317), v281);
          v133 = v132;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v132);
          if (v133 != buf)
          {
            free(v133);
          }
        }

        v125 += 176;
      }

      while (v125 != v126);
    }
  }

  sub_1000A69D8(*(a1 + 8), 0, v301, a2 + -5.0, a2);
  sub_100576BEC(v301, &v299);
  if (v299 == v300)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v152 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v152, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo dm features is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      LOWORD(v317) = 0;
      LODWORD(v281) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo dm features is empty", &v317, *&v281);
      v270 = v269;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v269);
      if (v270 != buf)
      {
        free(v270);
      }
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v135 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v136 = *v299;
      *v328 = *(v300 - 7);
      *&buf[4] = v136;
      *buf = 134218752;
      *&buf[12] = 2048;
      *&v328[8] = 2048;
      v329 = *v328 - v136;
      v330 = 1024;
      LODWORD(v331) = -1227133513 * ((v300 - v299) >> 3);
      _os_log_impl(dword_100000000, v135, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo dm features, start, %f, end, %f, interval, %f, size, %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v241 = *v299;
      *v319 = *(v300 - 7);
      *v318 = v241;
      v317 = 134218752;
      *&v318[8] = 2048;
      *&v319[8] = 2048;
      v320 = *v319 - v241;
      v321 = 1024;
      LODWORD(v322) = -1227133513 * ((v300 - v299) >> 3);
      LODWORD(v281) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo dm features, start, %f, end, %f, interval, %f, size, %d", COERCE_DOUBLE(&v317), v281, v282, LODWORD(v283));
      v243 = v242;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v242);
      if (v243 != buf)
      {
        free(v243);
      }
    }

    v137 = v299;
    v138 = v300;
    if (v299 != v300)
    {
      do
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018C59DC();
        }

        v139 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
        {
          v140 = *v137;
          v141 = v137[4];
          v142 = v137[5];
          v143 = v137[6];
          v144 = v137[7];
          *buf = 134219008;
          *&buf[4] = v140;
          *&buf[12] = 2048;
          *v328 = v141;
          *&v328[8] = 2048;
          v329 = v142;
          v330 = 2048;
          v331 = v143;
          v332 = 2048;
          v333 = v144;
          _os_log_impl(dword_100000000, v139, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo dm features timestamp %f %f %f %f %f", buf, 0x34u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C5C1C(buf);
          v145 = *v137;
          v146 = v137[4];
          v147 = v137[5];
          v148 = v137[6];
          v149 = v137[7];
          v317 = 134219008;
          *v318 = v145;
          *&v318[8] = 2048;
          *v319 = v146;
          *&v319[8] = 2048;
          v320 = v147;
          v321 = 2048;
          v322 = v148;
          v323 = 2048;
          v324 = v149;
          LODWORD(v281) = 52;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo dm features timestamp %f %f %f %f %f", COERCE_DOUBLE(&v317), v281, v282, v283, *&v285);
          v151 = v150;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v150);
          if (v151 != buf)
          {
            free(v151);
          }
        }

        v137 += 14;
      }

      while (v137 != v138);
    }
  }

  sub_100576FBC(v310, &v297);
  if (v297 == v298)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v168 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v168, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo odometer is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      LOWORD(v317) = 0;
      LODWORD(v281) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo odometer is empty", &v317, *&v281);
      v272 = v271;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v271);
      if (v272 != buf)
      {
        free(v272);
      }
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v153 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v154 = *v297;
      *v328 = *(v298 - 10);
      *&buf[4] = v154;
      *buf = 134218752;
      *&buf[12] = 2048;
      *&v328[8] = 2048;
      v329 = *v328 - v154;
      v330 = 1024;
      LODWORD(v331) = -858993459 * ((v298 - v297) >> 4);
      _os_log_impl(dword_100000000, v153, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo Odometer, start, %f, end, %f, interval, %f, size %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v244 = *v297;
      *v319 = *(v298 - 10);
      *v318 = v244;
      v317 = 134218752;
      *&v318[8] = 2048;
      *&v319[8] = 2048;
      v320 = *v319 - v244;
      v321 = 1024;
      LODWORD(v322) = -858993459 * ((v298 - v297) >> 4);
      LODWORD(v281) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo Odometer, start, %f, end, %f, interval, %f, size %d", COERCE_DOUBLE(&v317), v281, v282, LODWORD(v283));
      v246 = v245;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v245);
      if (v246 != buf)
      {
        free(v246);
      }
    }

    v155 = v297;
    v156 = v298;
    if (v297 != v298)
    {
      do
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018C59DC();
        }

        v157 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
        {
          v158 = *(v155 + 3);
          v159 = v155[4];
          v160 = *v155;
          v161 = v155[1];
          *buf = 134218752;
          *&buf[4] = v160;
          *&buf[12] = 2048;
          *v328 = v158;
          *&v328[8] = 2048;
          v329 = v159;
          v330 = 2048;
          v331 = v161;
          _os_log_impl(dword_100000000, v157, OS_LOG_TYPE_DEBUG, "Odometer | startTime: %f, distance: %f, odometer: %f, speed: %f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C5C1C(buf);
          v162 = *(v155 + 3);
          v163 = v155[4];
          v164 = *v155;
          v165 = v155[1];
          v317 = 134218752;
          *v318 = v164;
          *&v318[8] = 2048;
          *v319 = v162;
          *&v319[8] = 2048;
          v320 = v163;
          v321 = 2048;
          v322 = v165;
          LODWORD(v281) = 42;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "Odometer | startTime: %f, distance: %f, odometer: %f, speed: %f", COERCE_DOUBLE(&v317), v281, v282, v283);
          v167 = v166;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v166);
          if (v167 != buf)
          {
            free(v167);
          }
        }

        v155 += 10;
      }

      while (v155 != v156);
    }
  }

  sub_10057738C(v310, &v295);
  if (v295 == v296)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v184 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v184, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo elevation is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      LOWORD(v317) = 0;
      LODWORD(v281) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo elevation is empty", &v317, *&v281);
      v274 = v273;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v273);
      if (v274 != buf)
      {
        free(v274);
      }
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v169 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v170 = *(v295 + 1);
      *v328 = *(v296 - 7);
      *&buf[4] = v170;
      *buf = 134218752;
      *&buf[12] = 2048;
      *&v328[8] = 2048;
      v329 = *v328 - v170;
      v330 = 1024;
      LODWORD(v331) = (v296 - v295) >> 6;
      _os_log_impl(dword_100000000, v169, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo Elevation, start, %f, end, %f, interval, %f, size %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v247 = *(v295 + 1);
      *v319 = *(v296 - 7);
      *v318 = v247;
      v317 = 134218752;
      *&v318[8] = 2048;
      *&v319[8] = 2048;
      v320 = *v319 - v247;
      v321 = 1024;
      LODWORD(v322) = (v296 - v295) >> 6;
      LODWORD(v281) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo Elevation, start, %f, end, %f, interval, %f, size %d", COERCE_DOUBLE(&v317), v281, v282, LODWORD(v283));
      v249 = v248;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v248);
      if (v249 != buf)
      {
        free(v249);
      }
    }

    v171 = v295;
    v172 = v296;
    if (v295 != v296)
    {
      do
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018C59DC();
        }

        v173 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
        {
          v174 = *(v171 + 1);
          v175 = *(v171 + 4);
          v176 = *(v171 + 5);
          v177 = *(v171 + 6);
          *buf = 134218752;
          *&buf[4] = v174;
          *&buf[12] = 1024;
          *v328 = v175;
          *&v328[4] = 1024;
          *&v328[6] = v176;
          LOWORD(v329) = 1024;
          *(&v329 + 2) = v177;
          _os_log_impl(dword_100000000, v173, OS_LOG_TYPE_DEBUG, "Elevation | timestamp: %f, asc: %u, desc: %u, gradeType: %f", buf, 0x1Eu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C5C1C(buf);
          v178 = *(v171 + 1);
          v179 = *(v171 + 4);
          v180 = *(v171 + 5);
          v181 = *(v171 + 6);
          v317 = 134218752;
          *v318 = v178;
          *&v318[8] = 1024;
          *v319 = v179;
          *&v319[4] = 1024;
          *&v319[6] = v180;
          LOWORD(v320) = 1024;
          *(&v320 + 2) = v181;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "Elevation | timestamp: %f, asc: %u, desc: %u, gradeType: %f", COERCE_DOUBLE(&v317), 30, LODWORD(v282), v283);
          v183 = v182;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v182);
          if (v183 != buf)
          {
            free(v183);
          }
        }

        v171 += 64;
      }

      while (v171 != v172);
    }
  }

  sub_10057775C(v310, &v293);
  if (v293 == v294)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v198 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v198, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo activity is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      LOWORD(v317) = 0;
      LODWORD(v281) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo activity is empty", &v317, *&v281);
      v276 = v275;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v275);
      if (v276 != buf)
      {
        free(v276);
      }
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v185 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v186 = *v293;
      *v328 = *(v294 - 38);
      *&buf[4] = v186;
      *buf = 134218752;
      *&buf[12] = 2048;
      *&v328[8] = 2048;
      v329 = *v328 - v186;
      v330 = 1024;
      LODWORD(v331) = 678152731 * ((v294 - v293) >> 4);
      _os_log_impl(dword_100000000, v185, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo Activity, start, %f, end, %f, interval, %f, size %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v250 = *v293;
      *v319 = *(v294 - 38);
      *v318 = v250;
      v317 = 134218752;
      *&v318[8] = 2048;
      *&v319[8] = 2048;
      v320 = *v319 - v250;
      v321 = 1024;
      LODWORD(v322) = 678152731 * ((v294 - v293) >> 4);
      LODWORD(v281) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo Activity, start, %f, end, %f, interval, %f, size %d", COERCE_DOUBLE(&v317), v281, v282, LODWORD(v283));
      v252 = v251;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v251);
      if (v252 != buf)
      {
        free(v252);
      }
    }

    v187 = v293;
    v188 = v294;
    if (v293 != v294)
    {
      do
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018C59DC();
        }

        v189 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
        {
          v190 = *v187;
          v191 = *(v187 + 2);
          v192 = v187[25];
          *buf = 134218496;
          *&buf[4] = v190;
          *&buf[12] = 2048;
          *v328 = v191;
          *&v328[8] = 2048;
          v329 = v192;
          _os_log_impl(dword_100000000, v189, OS_LOG_TYPE_DEBUG, "Activity | timestamp: %f, activityType: %lu, workoutType: %lu", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C5C1C(buf);
          v193 = *v187;
          v194 = *(v187 + 2);
          v195 = v187[25];
          v317 = 134218496;
          *v318 = v193;
          *&v318[8] = 2048;
          *v319 = v194;
          *&v319[8] = 2048;
          v320 = v195;
          LODWORD(v281) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "Activity | timestamp: %f, activityType: %lu, workoutType: %lu", COERCE_DOUBLE(&v317), *&v281, *&v282);
          v197 = v196;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v196);
          if (v197 != buf)
          {
            free(v197);
          }
        }

        v187 += 38;
      }

      while (v187 != v188);
    }
  }

  sub_100577B2C(v310, &__p);
  if (__p == v292)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v212 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v212, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo Raw HR is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      LOWORD(v317) = 0;
      LODWORD(v281) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo Raw HR is empty", &v317, *&v281);
      v278 = v277;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v277);
      if (v278 != buf)
      {
        free(v278);
      }
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v199 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v200 = *__p;
      *v328 = *(v292 - 4);
      *&buf[4] = v200;
      *buf = 134218752;
      *&buf[12] = 2048;
      *&v328[8] = 2048;
      v329 = *v328 - v200;
      v330 = 1024;
      LODWORD(v331) = (v292 - __p) >> 5;
      _os_log_impl(dword_100000000, v199, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo Raw HR, start, %f, end, %f, interval, %f, size, %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v253 = *__p;
      *v319 = *(v292 - 4);
      *v318 = v253;
      v317 = 134218752;
      *&v318[8] = 2048;
      *&v319[8] = 2048;
      v320 = *v319 - v253;
      v321 = 1024;
      LODWORD(v322) = (v292 - __p) >> 5;
      LODWORD(v281) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo Raw HR, start, %f, end, %f, interval, %f, size, %d", COERCE_DOUBLE(&v317), v281, v282, LODWORD(v283));
      v255 = v254;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v254);
      if (v255 != buf)
      {
        free(v255);
      }
    }

    v201 = __p;
    v202 = v292;
    if (__p != v292)
    {
      do
      {
        if (qword_1025D45A0 != -1)
        {
          sub_1018C59DC();
        }

        v203 = qword_1025D45A8;
        if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
        {
          v204 = *v201;
          v205 = *(v201 + 1);
          v206 = v201[2];
          *buf = 134218496;
          *&buf[4] = v204;
          *&buf[12] = 2048;
          *v328 = v205;
          *&v328[8] = 2048;
          v329 = v206;
          _os_log_impl(dword_100000000, v203, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo Raw HR, startTime, %f, hr, %f, confidence, %f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018C5C1C(buf);
          v207 = *v201;
          v208 = *(v201 + 1);
          v209 = v201[2];
          v317 = 134218496;
          *v318 = v207;
          *&v318[8] = 2048;
          *v319 = v208;
          *&v319[8] = 2048;
          v320 = v209;
          LODWORD(v281) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo Raw HR, startTime, %f, hr, %f, confidence, %f", COERCE_DOUBLE(&v317), v281, v282);
          v211 = v210;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v210);
          if (v211 != buf)
          {
            free(v211);
          }
        }

        v201 += 4;
      }

      while (v201 != v202);
    }
  }

  sub_100577EFC(v310, &v289);
  if (v289 == v290)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v223 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v223, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo MLP Adaptor is empty", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      LOWORD(v317) = 0;
      LODWORD(v281) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo MLP Adaptor is empty", &v317, *&v281);
      v280 = v279;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v279);
      if (v280 != buf)
      {
        free(v280);
      }
    }
  }

  else
  {
    if (qword_1025D45A0 != -1)
    {
      sub_1018C59DC();
    }

    v213 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
    {
      v214 = *v289;
      *v328 = *(v290 - 5);
      *&buf[4] = v214;
      *buf = 134218752;
      *&buf[12] = 2048;
      *&v328[8] = 2048;
      v329 = *v328 - v214;
      v330 = 1024;
      LODWORD(v331) = -858993459 * ((v290 - v289) >> 3);
      _os_log_impl(dword_100000000, v213, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo MLP Adaptor, start, %f, end, %f, interval, %f, size, %d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018C5C1C(buf);
      v256 = *v289;
      *v319 = *(v290 - 5);
      *v318 = v256;
      v317 = 134218752;
      *&v318[8] = 2048;
      *&v319[8] = 2048;
      v320 = *v319 - v256;
      v321 = 1024;
      LODWORD(v322) = -858993459 * ((v290 - v289) >> 3);
      LODWORD(v281) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo MLP Adaptor, start, %f, end, %f, interval, %f, size, %d", COERCE_DOUBLE(&v317), v281, v282, LODWORD(v283));
      v258 = v257;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v257);
      if (v258 != buf)
      {
        free(v258);
      }
    }

    v215 = v289;
    for (i = v290; v215 != i; v215 += 5)
    {
      v328[9] = 6;
      strcpy(buf, "wrMets");
      v217 = *sub_1005782CC((v215 + 2), buf);
      if ((v328[9] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (qword_1025D45A0 != -1)
      {
        sub_1018C59DC();
      }

      v218 = qword_1025D45A8;
      if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEFAULT))
      {
        v219 = *v215;
        *buf = 134218240;
        *&buf[4] = v219;
        *&buf[12] = 2048;
        *v328 = v217;
        _os_log_impl(dword_100000000, v218, OS_LOG_TYPE_DEFAULT, "CLDataProviderMockAlgo MLP Adaptor, startTime, %f, predicted wr mets, %f.", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018C5C1C(buf);
        v220 = *v215;
        v317 = 134218240;
        *v318 = v220;
        *&v318[8] = 2048;
        *v319 = v217;
        LODWORD(v281) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 0, "CLDataProviderMockAlgo MLP Adaptor, startTime, %f, predicted wr mets, %f.", COERCE_DOUBLE(&v317), v281);
        v222 = v221;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLDataProviderMockAlgo::onDataReady(CFTimeInterval, CFAbsoluteTime)", "%s\n", v221);
        if (v222 != buf)
        {
          free(v222);
        }
      }
    }
  }

  v224 = *(a1 + 24);
  *(a1 + 24) = v224 + 1;
  if (v224 >= 6)
  {
    *(a1 + 24) = 0;
    v225 = *(a1 + 28);
    v226 = v225 ^ 1;
    *(a1 + 28) = v225 ^ 1;
    sub_1005C7378(*(a1 + 8), 0, v225 ^ 1);
    sub_1005C7378(*(a1 + 8), 5, v226);
  }

  *buf = &v289;
  sub_10057833C(buf);
  if (__p)
  {
    v292 = __p;
    operator delete(__p);
  }

  if (v293)
  {
    v294 = v293;
    operator delete(v293);
  }

  if (v295)
  {
    v296 = v295;
    operator delete(v295);
  }

  if (v297)
  {
    v298 = v297;
    operator delete(v297);
  }

  if (v299)
  {
    v300 = v299;
    operator delete(v299);
  }

  if (v302)
  {
    v303 = v302;
    operator delete(v302);
  }

  if (v304)
  {
    v305 = v304;
    operator delete(v304);
  }

  if (v306)
  {
    v307 = v306;
    operator delete(v306);
  }

  if (v308)
  {
    v309 = v308;
    operator delete(v308);
  }

  if (v285)
  {
    operator delete(v285);
  }

  if (v311)
  {
    v312 = v311;
    operator delete(v311);
  }
}