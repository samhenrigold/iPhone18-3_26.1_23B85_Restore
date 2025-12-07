uint64_t sub_10080FC6C@<X0>(uint64_t result@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(*(*(result + 168) + ((*(result + 192) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (*(result + 192) & 0x1FFLL));
  v4 = *(result + 136);
  v5 = *(result + 144);
  v6 = v3 - v4;
  v8 = a2[4];
  v7 = a2[5];
  v9 = (v3 - v4) / (v7 - v4) * a2[1] + (1.0 - (v3 - v4) / (v7 - v4)) * *(result + 104);
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0;
  v10 = *(result + 96);
  if (v10 <= *a2)
  {
    v10 = *a2;
  }

  *a3 = v10;
  *(a3 + 4) = 1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0x3FF0000000000000;
  *(a3 + 32) = v3 + v8 - v7;
  *(a3 + 40) = v3;
  *(a3 + 48) = v6 + v5;
  return result;
}

void sub_10080FD00(uint64_t a1, int a2)
{
  *(a1 + 16) = 1;
  v4 = sub_1000137E0();
  *(a1 + 24) = v4;
  *(a1 + 20) = a2;
  v5 = *(a1 + 40);
  *(a1 + 96) = *(a1 + 32);
  *(a1 + 104) = v5;
  *(a1 + 128) = v4;
  *(a1 + 136) = CFAbsoluteTimeGetCurrent();
  *(a1 + 144) = 0x7FF0000000000000;
  sub_10116BDEC(a1 + 208);
  if (qword_1025D43A0 != -1)
  {
    sub_10001CA24();
  }

  v6 = qword_1025D43A8;
  if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 20);
    v8 = *(a1 + 104);
    v9 = *(a1 + 128);
    v10 = *(a1 + 136);
    v11 = *(a1 + 96);
    v12 = *(a1 + 100);
    v13 = *(a1 + 144);
    *buf = 67110656;
    v33 = v7;
    v34 = 2048;
    v35 = v8;
    v36 = 2048;
    v37 = v9;
    v38 = 2048;
    v39 = v10;
    v40 = 1024;
    v41 = v11;
    v42 = 1024;
    v43 = v12;
    v44 = 2048;
    v45 = v13;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "sessionType,%d,lastGoodCatherine,%.0f,timestamp,%.6f,startTime,%.6f,dataSource,%d,interpolation,%d,staleness=%.6f", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D43A0 != -1)
    {
      sub_101948884();
    }

    v14 = *(a1 + 20);
    v15 = *(a1 + 104);
    v16 = *(a1 + 128);
    v17 = *(a1 + 136);
    v18 = *(a1 + 96);
    v19 = *(a1 + 100);
    v20 = *(a1 + 144);
    LODWORD(v24) = 67110656;
    HIDWORD(v24) = v14;
    *v25 = 2048;
    *&v25[2] = v15;
    *&v25[10] = 2048;
    *v26 = v17;
    *&v26[8] = 1024;
    v27 = v18;
    v28 = 1024;
    v29 = v19;
    v30 = 2048;
    v31 = v20;
    LODWORD(v23) = 60;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D43A8, 2, "sessionType,%d,lastGoodCatherine,%.0f,timestamp,%.6f,startTime,%.6f,dataSource,%d,interpolation,%d,staleness=%.6f", &v24, v23, v24, *v25, *&v25[8], HIDWORD(v16), *&v26[2]);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "void CLCatherineInterpolator::startSession(const CLMotionActivity::Type)", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }
}

void sub_10080FF60(uint64_t a1)
{
  v2 = *(a1 + 20);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 20) = 0;
  v3 = *(a1 + 40);
  *(a1 + 96) = *(a1 + 32);
  *(a1 + 104) = v3;
  *(a1 + 128) = 0;
  *(a1 + 136) = CFAbsoluteTimeGetCurrent();
  *(a1 + 144) = 0x7FF0000000000000;
  sub_10116BE20(a1 + 208);
  if (qword_1025D43A0 != -1)
  {
    sub_10001CA24();
  }

  v4 = qword_1025D43A8;
  if (os_log_type_enabled(qword_1025D43A8, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLCatherineInterpolator stopped session type %d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101948AD8(v2);
  }
}

void *sub_100810CCC(void *a1, uint64_t a2)
{
  sub_10000EC00(__p, "");
  sub_100810E2C(a1, "SmoothedGaitMetricsHistory", a2, __p, 1, 30.0);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = off_102474478;
  a1[9] = off_102474540;
  a1[46] = off_102474590;
  sub_100DD42E4(a1 + 47, 0, 0);
  sub_100DD42E4(a1 + 49, 0, 0);
  sub_100DD42E4(a1 + 51, 0, 0);
  sub_100DD42E4(a1 + 53, 0, 0);
  (*(*a1 + 112))(a1);
  return a1;
}

void sub_100810E00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100810E2C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6)
{
  v6 = a5;
  v8 = a3;
  *(a1 + 8) = 0u;
  v12 = (a1 + 8);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_102450C98;
  sub_1003FFA38((a1 + 8));
  *v12 = off_102450CC8;
  *a1 = off_102474848;
  *(a1 + 72) = off_1024748F0;
  sub_101052EEC(a1 + 72, a2, v8, a1, a6, a4, v6, 0);
  *a1 = off_102474848;
  *(a1 + 72) = off_1024748F0;
  *(a1 + 176) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0;
  *(a1 + 272) = 12000;
  *(a1 + 280) = off_102450C98;
  sub_1003FFA38((a1 + 288));
  *(a1 + 288) = off_102450CC8;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  v13 = *(a1 + 112);
  v17 = a1 + 112;
  (*(v13 + 16))(a1 + 112);
  v18 = 256;
  if ((v8 & 1) == 0)
  {
    if (*(a4 + 23) < 0)
    {
      sub_100007244(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v16 = *(a4 + 16);
    }

    sub_101053788(a1 + 72, __p);
  }

  *(a1 + 232) = 0xBFF0000000000000;
  (*(*(a1 + 112) + 24))(a1 + 112);
  return a1;
}

void sub_100811214(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1017EC98C(&a21);
  *a13 = a12;
  sub_1003FFCFC(v31);
  sub_1007D4B7C(v30);
  sub_1010532A4(v29);
  *v27 = a14;
  sub_1003FFCFC(v28);
  _Unwind_Resume(a1);
}

void *sub_1008112BC(void *a1)
{
  *a1 = off_102474848;
  v2 = a1 + 9;
  a1[9] = off_1024748F0;
  sub_10081713C(a1, 0, 0);
  a1[35] = off_102450C98;
  sub_1003FFCFC(a1 + 36);
  sub_1007D4B7C(a1 + 22);
  sub_1010532A4(v2);
  *a1 = off_102450C98;
  sub_1003FFCFC(a1 + 1);
  return a1;
}

void sub_1008113A0(void *a1)
{
  sub_1008112BC(a1);

  operator delete();
}

void sub_1008113D8(uint64_t a1)
{
  sub_1008112BC((a1 - 72));

  operator delete();
}

void sub_100811414(uint64_t a1)
{
  sub_1008112BC((a1 - 368));

  operator delete();
}

uint64_t sub_100811450(uint64_t *a1)
{
  result = sub_100023B68(a1[10]);
  if (result)
  {
    sub_100811500(a1);
    sub_100811618(a1);
    sub_100608EC8(a1[10], "SmoothedGaitMetricsHistory", &off_102474638, &off_1025D8750, 0);
    a1[47] = sub_100614C1C(a1[10], "DELETE FROM SmoothedGaitMetricsHistory WHERE startTime < ?");
    a1[48] = v3;
    a1[49] = sub_100614C1C(a1[10], "SELECT * from SmoothedGaitMetricsHistory ORDER BY startTime ASC");
    a1[50] = v4;
    a1[51] = sub_100614C1C(a1[10], "SELECT COUNT(*) FROM SmoothedGaitMetricsHistory");
    a1[52] = v5;
    result = sub_100614C1C(a1[10], "INSERT INTO SmoothedGaitMetricsHistory (startTime, walkingSpeed, stepLength, cycleTime, distance, doubleSupportPercentage, asymmetryProbability, numGaitMetrics \t\t\t\t) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    a1[53] = result;
    a1[54] = v6;
  }

  return result;
}

uint64_t sub_100811500(uint64_t a1)
{
  result = sub_10060A6D8(*(a1 + 80), "SmoothedGaitMetricsHistory");
  if (result)
  {
    v3 = "numGaitMetrics";
    v4 = 5;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100611268(*(a1 + 80), "SmoothedGaitMetricsHistory", "numGaitMetrics", &v3);
  }

  return result;
}

uint64_t sub_100811618(uint64_t a1)
{
  result = sub_10060A6D8(*(a1 + 80), "SmoothedGaitMetricsHistory");
  if (result)
  {
    v3 = "numGaitMetrics";
    v4 = 5;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100611268(*(a1 + 80), "SmoothedGaitMetricsHistory", "numGaitMetrics", &v3);
  }

  return result;
}

void sub_100811AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a17);
  if (v55)
  {
    (*(*v55 + 8))(v55);
  }

  sub_10026C504(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_100811B9C(uint64_t a1, uint64_t a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    sub_100144CA0((a1 + 424), &v19);
    if (v19)
    {
      v5 = sub_100008880(v19);
      if (sub_1001A3BD4(v5, 1, *(a2 + 8)))
      {
        v6 = sub_100008880(v19);
        if (sub_1001A3BD4(v6, 2, *(a2 + 16)))
        {
          v7 = sub_100008880(v19);
          if (sub_1001A3BD4(v7, 3, *(a2 + 24)))
          {
            v8 = sub_100008880(v19);
            if (sub_1001A3BD4(v8, 4, *(a2 + 36)))
            {
              v9 = sub_100008880(v19);
              if (sub_1001A3BD4(v9, 5, *(a2 + 32)))
              {
                v10 = sub_100008880(v19);
                if (sub_1001A3BD4(v10, 6, *(a2 + 20)))
                {
                  v11 = sub_100008880(v19);
                  if (sub_1001A3BD4(v11, 7, *(a2 + 28)))
                  {
                    v12 = sub_100008880(v19);
                    if (sub_1001452C8(v12, 8, *(a2 + 40)))
                    {
                      v13 = *(a1 + 80);
                      v14 = sub_100008880(v19);
                      sub_1001A3DEC(v13, v14);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      if (qword_1025D4420 != -1)
      {
        sub_101948D40();
      }

      v15 = qword_1025D4428;
      if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "[SmoothedGaitMetricsRecorderDb] Invalid SQL statement", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101948E5C(buf);
        v18 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4428, 16, "[SmoothedGaitMetricsRecorderDb] Invalid SQL statement", &v18, 2);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLMobility::SmoothedGaitMetricsRecorderDb::insertRecordUL(const SmoothedGaitMetrics &, BOOL)", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }
    }

    result = v19;
    v19 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_100811E34(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100811E7C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[111] < 0)
  {
    return sub_100007244(a2, *(result + 11), *(result + 12));
  }

  *a2 = *(result + 88);
  *(a2 + 16) = *(result + 13);
  return result;
}

char *sub_100811EA4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[39] < 0)
  {
    return sub_100007244(a2, *(result + 2), *(result + 3));
  }

  *a2 = *(result + 1);
  *(a2 + 16) = *(result + 4);
  return result;
}

uint64_t sub_100811ECC(uint64_t a1, char *a2, const char **a3, const char **a4)
{
  if (!sub_10060A9FC(*(a1 + 80), a2))
  {
    if (qword_1025D4200 != -1)
    {
      sub_101948EA0();
    }

    v6 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136446210;
      *(buf[0].__r_.__value_.__r.__words + 4) = a2;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Notice %{public}s needs autoincrement migration", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101948EB4(a2);
    }

    __p = 0;
    v28 = 0uLL;
    sub_10000EC00(buf, a2);
    v7 = std::string::append(buf, "AutoIncr", 8uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v26 = v7->__r_.__value_.__r.__words[2];
    v25 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_10000EC00(buf, a2);
    v9 = std::string::append(buf, "Index", 5uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v24 = v9->__r_.__value_.__r.__words[2];
    *v23 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_100144A84(*(a1 + 80));
    if (v28 >= 0)
    {
      v11 = HIBYTE(v28);
    }

    else
    {
      v11 = v28;
    }

    v12 = buf;
    sub_100070148(buf, v11 + 21);
    if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v12 = buf[0].__r_.__value_.__r.__words[0];
    }

    if (v11)
    {
      if (v28 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      memmove(v12, p_p, v11);
    }

    strcpy(v12 + v11, "DROP TABLE IF EXISTS ");
    if (v26 >= 0)
    {
      v14 = &v25;
    }

    else
    {
      v14 = v25;
    }

    if (v26 >= 0)
    {
      v15 = HIBYTE(v26);
    }

    else
    {
      v15 = *(&v25 + 1);
    }

    v16 = std::string::append(buf, v14, v15);
    v17 = v16->__r_.__value_.__r.__words[0];
    v30.__r_.__value_.__r.__words[0] = v16->__r_.__value_.__l.__size_;
    *(v30.__r_.__value_.__r.__words + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
    v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p);
    }

    __p = v17;
    *&v28 = v30.__r_.__value_.__r.__words[0];
    *(&v28 + 7) = *(v30.__r_.__value_.__r.__words + 7);
    HIBYTE(v28) = v18;
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
      v18 = HIBYTE(v28);
      v17 = __p;
    }

    if (v18 >= 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = v17;
    }

    sub_1000388D8(*(a1 + 80), v19);
  }

  v20 = *(a1 + 80);
  if (*(v20 + 88) <= 0)
  {
    v21 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v21 = *(v20 + 88);
  }

  sub_1001B16EC(v20, v21);
  return 0;
}

void sub_100812FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100813290(void *a1, uint64_t a2, double a3, double a4)
{
  if (sub_100099160((a1 + 9)))
  {
    if (sub_100099160((a1 + 9)))
    {
      sub_10003848C(buf);
      v5 = sub_100038730(&v16, "SELECT * FROM ", 14);
      (*(*a1 + 64))(__p, a1);
      if ((v14 & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = __p[1];
      }

      v8 = sub_100038730(v5, v6, v7);
      sub_100038730(v8, " WHERE startTime > ? and startTime <= ? ORDER BY startTime ASC", 62);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }

      v9 = a1[10];
      sub_100073518(buf, __p);
      if ((v14 & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      sub_1000388D8(v9, v10);
    }

    return 100;
  }

  else
  {
    if (qword_1025D4420 != -1)
    {
      sub_101948FCC();
    }

    v11 = qword_1025D4428;
    if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "SmoothedGaitMetricsHistory not accessible", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101948FE0();
    }

    return 109;
  }
}

void sub_100813700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_10081377C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  v5 = sqlite3_step(v4);
  if (v5 == 101)
  {
    return 1;
  }

  if (v5 != 100)
  {
    return 2;
  }

  sub_1008137F0(a1, a2);
  return 0;
}

uint64_t sub_1008137F0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_100008880(*a1);
  *a2 = sqlite3_column_int(v4, 0);
  v5 = sub_100008880(*a1);
  *(a2 + 8) = sqlite3_column_double(v5, 1);
  v6 = sub_100008880(*a1);
  v7 = sqlite3_column_double(v6, 2);
  *(a2 + 16) = v7;
  v8 = sub_100008880(*a1);
  v9 = sqlite3_column_double(v8, 3);
  *(a2 + 24) = v9;
  v10 = sub_100008880(*a1);
  v11 = sqlite3_column_double(v10, 4);
  *(a2 + 36) = v11;
  v12 = sub_100008880(*a1);
  v13 = sqlite3_column_double(v12, 5);
  *(a2 + 32) = v13;
  v14 = sub_100008880(*a1);
  v15 = sqlite3_column_double(v14, 6);
  *(a2 + 20) = v15;
  v16 = sub_100008880(*a1);
  v17 = sqlite3_column_double(v16, 7);
  *(a2 + 28) = v17;
  v18 = sub_100008880(*a1);
  result = sqlite3_column_int(v18, 8);
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_1008138E0(void *a1, _OWORD *a2)
{
  v5 = a1 + 14;
  v4 = a1[14];
  v6 = a1 + 9;
  v23 = a1 + 14;
  (*(v4 + 16))(a1 + 14);
  v24 = 256;
  if (sub_100099160(v6))
  {
    LODWORD(v22[0]) = 0;
    memset(v22 + 8, 0, 36);
    v7 = (*(*a1 + 104))(a1, v22);
    if (v7)
    {
      if (v7 == 1)
      {
        if (qword_1025D4420 != -1)
        {
          sub_101948D40();
        }

        v13 = qword_1025D4428;
        if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "[SmoothedGaitMetricsHistory] Most recent smoothed gait metrics: No recent records in database", buf, 2u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_29;
        }

        sub_101948E5C(buf);
        v21[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4428, 2, "[SmoothedGaitMetricsHistory] Most recent smoothed gait metrics: No recent records in database", v21, 2);
        v10 = v14;
        sub_100152C7C("Generic", 1, 0, 2, "virtual CMError CLMobility::SmoothedGaitMetricsRecorderDb::mostRecentSmoothedGaitMetrics(SmoothedGaitMetrics &) const", "%s\n", v14);
      }

      else if (v7 == 2)
      {
        if (qword_1025D4420 != -1)
        {
          sub_101948D40();
        }

        v8 = qword_1025D4428;
        if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "[SmoothedGaitMetricsHistory] Most recent smoothed gait metrics: Query error", buf, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_29;
        }

        sub_101948E5C(buf);
        v21[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4428, 16, "[SmoothedGaitMetricsHistory] Most recent smoothed gait metrics: Query error", v21, 2);
        v10 = v9;
        sub_100152C7C("Generic", 1, 0, 0, "virtual CMError CLMobility::SmoothedGaitMetricsRecorderDb::mostRecentSmoothedGaitMetrics(SmoothedGaitMetrics &) const", "%s\n", v9);
      }

      else
      {
        if (qword_1025D4420 != -1)
        {
          sub_101948D40();
        }

        v16 = qword_1025D4428;
        if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "[SmoothedGaitMetricsHistory] Most recent smoothed gait metrics: unexpected return type", buf, 2u);
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_29;
        }

        sub_101948E5C(buf);
        v21[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4428, 16, "[SmoothedGaitMetricsHistory] Most recent smoothed gait metrics: unexpected return type", v21, 2);
        v10 = v20;
        sub_100152C7C("Generic", 1, 0, 0, "virtual CMError CLMobility::SmoothedGaitMetricsRecorderDb::mostRecentSmoothedGaitMetrics(SmoothedGaitMetrics &) const", "%s\n", v20);
      }

      if (v10 != buf)
      {
        free(v10);
      }
    }

    else
    {
      v15 = v22[1];
      *a2 = v22[0];
      a2[1] = v15;
      *(a2 + 28) = *(&v22[1] + 12);
    }

LABEL_29:
    v12 = 100;
    goto LABEL_30;
  }

  if (qword_1025D4420 != -1)
  {
    sub_101948FCC();
  }

  v11 = qword_1025D4428;
  if (os_log_type_enabled(qword_1025D4428, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "[SmoothedGaitMetricsHistory] Database inaccessible, unable to query", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101948E5C(buf);
    LOWORD(v22[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4428, 2, "[SmoothedGaitMetricsHistory] Database inaccessible, unable to query", v22, 2);
    v19 = v18;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMError CLMobility::SmoothedGaitMetricsRecorderDb::mostRecentSmoothedGaitMetrics(SmoothedGaitMetrics &) const", "%s\n", v18);
    if (v19 != buf)
    {
      free(v19);
    }
  }

  v12 = 109;
LABEL_30:
  (*(*v5 + 24))(v5);
  return v12;
}

void sub_100813DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100813E38(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1 + 14;
  (*(a1[14] + 16))(a1 + 14);
  (*(*a1 + 120))(a1, a2, a3);
  return (*(*v6 + 24))(v6);
}

void sub_100813F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100813F24(uint64_t *a1, uint64_t a2)
{
  if (*(*(a2 + 8) - 16) != 1.79769313e308 || !sub_100099160((a1 + 9)))
  {
    return -1;
  }

  sub_100144A84(a1[10]);
  Current = CFAbsoluteTimeGetCurrent();
  sub_100144CA0(a1 + 47, &v13);
  v5 = sub_100008880(v13);
  if (sub_1001A3BD4(v5, 1, Current - *(*(a2 + 8) - 24)))
  {
    v6 = a1[10];
    v7 = sub_100008880(v13);
    sub_1001A3DEC(v6, v7);
    v8 = (*(*a1 + 152))(a1);
  }

  else
  {
    v8 = -1;
  }

  sub_1001454E0(a1[10]);
  v9 = a1[10];
  if (*(v9 + 88) <= 0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = *(v9 + 88);
  }

  sub_1001B16EC(v9, v10);
  v11 = v13;
  v13 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  return v8;
}

void sub_100814060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_101880BC0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100814084(uint64_t a1, uint64_t a2)
{
  result = sub_100099160(a1 + 72);
  if (result)
  {
    *(a2 + 8) = *a2;
    sub_100144CA0((a1 + 392), &v19);
    sub_100144A84(*(a1 + 80));
    *v18 = 0;
    memset(&v18[8], 0, 36);
    while (!sub_10081377C(&v19, v18))
    {
      v5 = *(a2 + 8);
      v6 = *(a2 + 16);
      if (v5 >= v6)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 4);
        v10 = v9 + 1;
        if (v9 + 1 > 0x555555555555555)
        {
          sub_10028C64C();
        }

        v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 4);
        if (2 * v11 > v10)
        {
          v10 = 2 * v11;
        }

        if (v11 >= 0x2AAAAAAAAAAAAAALL)
        {
          v12 = 0x555555555555555;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          sub_1008169AC(a2, v12);
        }

        v13 = 48 * v9;
        v14 = *&v18[16];
        *v13 = *v18;
        *(v13 + 16) = v14;
        *(v13 + 32) = *&v18[32];
        v8 = 48 * v9 + 48;
        v15 = *(a2 + 8) - *a2;
        v16 = 48 * v9 - v15;
        memcpy((v13 - v15), *a2, v15);
        v17 = *a2;
        *a2 = v16;
        *(a2 + 8) = v8;
        *(a2 + 16) = 0;
        if (v17)
        {
          operator delete(v17);
        }
      }

      else
      {
        v7 = *&v18[16];
        *v5 = *v18;
        v5[1] = v7;
        v5[2] = *&v18[32];
        v8 = (v5 + 3);
      }

      *(a2 + 8) = v8;
    }

    sub_1001454E0(*(a1 + 80));
    result = v19;
    v19 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

void sub_10081423C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100814280(uint64_t a1)
{
  if (!sub_100099160(a1 + 72))
  {
    return 0xFFFFFFFFLL;
  }

  sub_100144CA0((a1 + 408), &v8);
  v3 = sub_100008880(v8);
  v4 = sqlite3_step(v3);
  if (v4 == 100)
  {
    v5 = sub_100008880(v8);
    v1 = sqlite3_column_int(v5, 0);
  }

  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (v4 != 100)
  {
    return 0xFFFFFFFFLL;
  }

  return v1;
}

void sub_10081432C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100814374(void *a1, uint64_t a2, double a3, double a4)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v21) & 0x80000000) == 0)
  {
    if (BYTE3(v21))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v19 = 2082;
      *&v19[2] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v19 = 2082;
      *&v19[2] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getEntriesByTimeRange", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v19 = 2082;
      *&v19[2] = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getEntriesByTimeRange, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 607, "getEntriesByTimeRange");
    __break(1u);
  }

  v11 = *v19;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160((a1 + 9)))
  {
    sub_10003848C(buf);
    v5 = sub_100038730(&v19[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v17 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v7 = v17;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ? and startTime <= ? ORDER BY rowid ASC", 58);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v17 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return 2;
}

void sub_1008149D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_100814A60(uint64_t a1)
{
  v3 = *(a1 + 112);
  v2 = a1 + 112;
  v4 = v2 - 40;
  v13 = v2;
  (*(v3 + 16))();
  if (!sub_100099160(v4))
  {
    sub_100817388(a1);
  }

  if (qword_1025D4200 != -1)
  {
    sub_101948EA0();
  }

  v5 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    *buf = 68289282;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v17 = 2082;
    v18 = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Database is already opened., name:%{public, location:escape_only}s}", buf, 0x1Cu);
  }

  if (*(a1 + 216))
  {
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v7 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      v8 = *(a1 + 216);
      *buf = 134349056;
      *&buf[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101948CFC(buf);
      v10 = *(a1 + 216);
      v14 = 134349056;
      v15 = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 17, "In memory buffer should have been empty! Instead it had a size of %{public}lu.", &v14, 12);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLActivityRecorderDb<CLMobility::SmoothedGaitMetrics, CLActivityDB::ClassBDataProtectionPolicy>::setDatabaseAccessible() [T = CLMobility::SmoothedGaitMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  (*(*v13 + 24))(v13);
  return 1;
}

void sub_100815134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

__n128 sub_100815170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *a3;
  v4 = *(a3 + 16);
  *(a2 + 28) = *(a3 + 28);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

id *sub_100815184(uint64_t a1, __int128 *a2, char a3)
{
  v35[0] = os_transaction_create();
  v35[1] = 0;
  if (*(a1 + 232) > 0.0 && (*(*a1 + 136))(a1, a1 + 224, a2))
  {
    (*(*a1 + 72))(a1, a1 + 224, a2);
    return sub_10001A420(v35);
  }

  if ((a3 & 1) == 0)
  {
    sub_100144A84(*(a1 + 80));
  }

  v31 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v6 = (*(*a1 + 104))(a1, &v31);
  if (v6 == 1)
  {
    (*(*a1 + 120))(a1, a2, 1);
  }

  else
  {
    if (v6)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }

      v14 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "Failed to insert record due to failure from reading the most recent entry.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101948CFC(buf);
        LOWORD(v36) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 17, "Failed to insert record due to failure from reading the most recent entry.", &v36, 2);
        v16 = v15;
        sub_100152C7C("Generic", 1, 0, 0, "virtual void CLActivityRecorderDb<CLMobility::SmoothedGaitMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMobility::SmoothedGaitMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v15);
        if (v16 != buf)
        {
          free(v16);
        }
      }

      goto LABEL_41;
    }

    v7 = *(a2 + 1);
    v8 = *&v32;
    v9 = v7 - *&v32;
    if (v7 - *&v32 < 0.0)
    {
      v9 = -(v7 - *&v32);
    }

    if (v9 > 604800.0)
    {
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }

      v10 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a2 + 1);
        *buf = 134349312;
        v41 = *&v32;
        v42 = 2050;
        v43 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101948CFC(buf);
        v23 = *(a2 + 1);
        v36 = 134349312;
        v37 = *&v32;
        v38 = 2050;
        v39 = v23;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 0, "#Notice Potential CM database inconsistency, time jump %{public}lf %{public}lf", &v36, 22);
        v25 = v24;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMobility::SmoothedGaitMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMobility::SmoothedGaitMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      CLWriteStackshot();
      v7 = *(a2 + 1);
      v8 = *&v32;
    }

    if (v7 < v8)
    {
      if (v8 - v7 < 10.0)
      {
        if (qword_1025D4200 != -1)
        {
          sub_101948CD4();
        }

        v12 = qword_1025D4208;
        if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
        {
          v13 = *(a2 + 1);
          *buf = 134217984;
          v41 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101948CFC(buf);
          v26 = *(a2 + 1);
          v36 = 134217984;
          v37 = v26;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Entry being recorded has a startTime in the recent past.  Deleting records after %f.", COERCE_DOUBLE(&v36));
          v28 = v27;
          sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMobility::SmoothedGaitMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMobility::SmoothedGaitMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v27);
          if (v28 != buf)
          {
            free(v28);
          }
        }

        (*(*a1 + 88))(a1, a2);
        goto LABEL_40;
      }

      v17 = *(a1 + 136);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }

      v18 = v7 - v8 - v17;
      v19 = qword_1025D4208;
      if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v41 = v18;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101948CFC(buf);
        v36 = 134217984;
        v37 = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 1, "Entry being recorded has a startTime in the substantial past.  Shift records by %f.", COERCE_DOUBLE(&v36));
        v30 = v29;
        sub_100152C7C("Generic", 1, 0, 2, "virtual void CLActivityRecorderDb<CLMobility::SmoothedGaitMetrics, CLActivityDB::ClassBDataProtectionPolicy>::sanitizeAndStoreRecordUL(const T &, BOOL) [T = CLMobility::SmoothedGaitMetrics, DataProtectionPolicy = CLActivityDB::ClassBDataProtectionPolicy]", "%s\n", v29);
        if (v30 != buf)
        {
          free(v30);
        }
      }

      (*(*a1 + 96))(a1, v18);
    }

    (*(*a1 + 144))(a1, &v31, a1 + 224, a2);
    (*(*a1 + 120))(a1, a2, 1);
  }

LABEL_40:
  v20 = *a2;
  v21 = a2[1];
  *(a1 + 252) = *(a2 + 28);
  *(a1 + 224) = v20;
  *(a1 + 240) = v21;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    sub_1001454E0(*(a1 + 80));
  }

  return sub_10001A420(v35);
}

void sub_1008158B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

BOOL sub_1008158E8(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of deleteRecordsAfterInsertUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 560, "deleteRecordsAfterInsertUL");
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160((a1 + 9));
  if (result)
  {
    (*(*a1 + 120))(a1, a2, 1);
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "DELETE FROM ", 12);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " WHERE startTime > ?", 20);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_100815E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

BOOL sub_100815E9C(void *a1, double a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v19) & 0x80000000) == 0)
  {
    if (BYTE3(v19))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v12 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of shiftRecordsByUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of shiftRecordsByUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 577, "shiftRecordsByUL");
    __break(1u);
  }

  v10 = *v17;
  operator delete(*buf);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160((a1 + 9));
  if (result)
  {
    sub_10003848C(buf);
    v4 = sub_100038730(&v17[8], "UPDATE ", 7);
    (*(*a1 + 64))(__p, a1);
    if ((v15 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v6 = v15;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = sub_100038730(v4, v5, v6);
    sub_100038730(v7, " SET startTime = startTime + ?", 30);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v8 = a1[10];
    sub_100073518(buf, __p);
    if ((v15 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    sub_1000388D8(v8, v9);
  }

  return result;
}

void sub_1008163BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_100816410(void *a1, uint64_t a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v19) & 0x80000000) == 0)
  {
    if (BYTE3(v19))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v12 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getMostRecentRecordUL", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v13 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v17 = 2082;
      *&v17[2] = "";
      v18 = 2082;
      v19 = "assert";
      v20 = 2081;
      v21 = "getTableName() != ";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getMostRecentRecordUL, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 592, "getMostRecentRecordUL");
    __break(1u);
  }

  v10 = *v17;
  operator delete(*buf);
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (sub_100099160((a1 + 9)))
  {
    sub_10003848C(buf);
    v3 = sub_100038730(&v17[8], "SELECT * FROM ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v15 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v15 & 0x80u) == 0)
    {
      v5 = v15;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = sub_100038730(v3, v4, v5);
    sub_100038730(v6, " ORDER BY ROWID DESC LIMIT 1", 28);
    if (v15 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = a1[10];
    sub_100073518(buf, __p);
    if ((v15 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    sub_1000388D8(v7, v8);
  }

  return 2;
}

void sub_10081691C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a13)
  {
    sub_101880BC0();
  }

  sub_10026C504(&a20);
  _Unwind_Resume(a1);
}

void sub_1008169AC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

BOOL sub_100816A04(uint64_t *a1, void *a2)
{
  (*(*a1 + 64))(buf);
  if ((SBYTE3(v20) & 0x80000000) == 0)
  {
    if (BYTE3(v20))
    {
      goto LABEL_3;
    }

LABEL_18:
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v12 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v13 = qword_1025D4208;
    if (os_signpost_enabled(qword_1025D4208))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_signpost_emit_with_name_impl(dword_100000000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Need to override getTableName in order to use default definition of getAllRecords", "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4200 != -1)
      {
        sub_101948CD4();
      }
    }

    v14 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *v18 = 2082;
      *&v18[2] = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "getTableName() != ";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Need to override getTableName in order to use default definition of getAllRecords, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Motion/Activity/CLActivityRecorderDb.h", 528, "getAllRecords");
    __break(1u);
  }

  v11 = *v18;
  operator delete(*buf);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_3:
  result = sub_100099160((a1 + 9));
  if (result)
  {
    a2[1] = *a2;
    sub_10003848C(buf);
    v5 = sub_100038730(&v18[8], "SELECT * from ", 14);
    (*(*a1 + 64))(__p, a1);
    if ((v16 & 0x80u) == 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v7 = v16;
    }

    else
    {
      v7 = __p[1];
    }

    v8 = sub_100038730(v5, v6, v7);
    sub_100038730(v8, " ORDER BY id ASC", 16);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = a1[10];
    sub_100073518(buf, __p);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    sub_1000388D8(v9, v10);
  }

  return result;
}

void sub_100817024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (v24)
  {
    (*(*v24 + 8))(v24, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(&a24);
  _Unwind_Resume(a1);
}

uint64_t sub_1008170AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_100008880(*a2);
  v7 = sqlite3_step(v6);
  if (v7 == 101)
  {
    return 1;
  }

  if (v7 != 100)
  {
    return 2;
  }

  (*(*a1 + 128))(a1, a2, a3);
  return 0;
}

void sub_10081713C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (qword_1025D4200 != -1)
  {
    sub_101948EA0();
  }

  v6 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_INFO))
  {
    (*(*a1 + 64))(__p, a1);
    v7 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v14 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "%s insert handle set.", buf, 0xCu);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101949144(a1);
  }

  if ((!a2 || !a3) && a2 | a3)
  {
    if (qword_1025D4200 != -1)
    {
      sub_101948CD4();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      (*(*a1 + 64))(__p, a1);
      v9 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v14 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "%s, Invalid update finished handlers.", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194928C(a1);
    }
  }

  *(a1 + 352) = a2;
  v10 = *(a1 + 360);
  if (v10)
  {
    _Block_release(v10);
  }

  if (a3)
  {
    *(a1 + 360) = _Block_copy(a3);
  }
}

void sub_100817404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1008175B4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100817BE8;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_10265A3C0 != -1)
  {
    dispatch_once(&qword_10265A3C0, block);
  }

  return qword_1026372B8;
}

void sub_100817958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10081798C(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100007244(&__dst, *a3, *(a3 + 1));
  }

  else
  {
    __dst = *a3;
    v17 = *(a3 + 2);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100007244(v14, *a4, *(a4 + 8));
  }

  else
  {
    *v14 = *a4;
    v15 = *(a4 + 16);
  }

  v7 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3321888768;
  v8[2] = sub_100818040;
  v8[3] = &unk_102474A70;
  v8[4] = a1;
  v13 = a2;
  if (SHIBYTE(v17) < 0)
  {
    sub_100007244(v9, __dst, *(&__dst + 1));
  }

  else
  {
    *v9 = __dst;
    v10 = v17;
  }

  if (SHIBYTE(v15) < 0)
  {
    sub_100007244(__p, v14[0], v14[1]);
  }

  else
  {
    *__p = *v14;
    v12 = v15;
  }

  [v7 async:v8];
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst);
  }
}

void sub_100817B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100817C58(uint64_t a1, void *a2)
{
  v3 = sub_100817D4C(a1, "CLBacklightStateNotifier", a2);
  *v3 = off_1024749A0;
  v3[14] = 0;
  *(a1 + 112) = [[CLBacklightStateNotifierAdapter alloc] initWithCLBacklightStateNotifier:a1];
  v4 = [+[BLSBacklight sharedBacklight](BLSBacklight "sharedBacklight")];
  v5 = *(a1 + 40);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100818264;
  v7[3] = &unk_102460CC8;
  v7[4] = a1;
  v8 = v4;
  [v5 async:v7];
  return a1;
}

uint64_t sub_100817D4C(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102474B78;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_100817DDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100817DF8(uint64_t a1)
{
  *a1 = off_102474B78;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100817E7C(uint64_t a1)
{
  *a1 = off_1024749A0;
  *(a1 + 108) = 1;

  *(a1 + 112) = 0;

  return sub_100817DF8(a1);
}

void sub_100817EE8(uint64_t a1)
{
  sub_100817E7C(a1);

  operator delete();
}

void sub_100817F20(uint64_t a1)
{
  *(a1 + 108) = 1;

  *(a1 + 112) = 0;
}

void sub_100818040(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  if (sub_10000608C(v2, &v3, 1))
  {
    v9 = 0;
    v3 = *(a1 + 88);
    if (*(a1 + 63) < 0)
    {
      sub_100007244(&v4, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v4 = *(a1 + 40);
      v5 = *(a1 + 56);
    }

    if (*(a1 + 87) < 0)
    {
      sub_100007244(&__p, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      __p = *(a1 + 64);
      v7 = *(a1 + 80);
    }

    v8 = 0;
    (*(*v2 + 152))(v2, &v9, &v3, 1, 0xFFFFFFFFLL, 0);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(v4);
    }
  }
}

void sub_100818150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10081817C(char *result, uint64_t a2)
{
  v3 = result;
  if (*(a2 + 63) < 0)
  {
    result = sub_100007244(result + 40, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(result + 7) = *(a2 + 56);
    *(result + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    return sub_100007244(v3 + 64, *(a2 + 64), *(a2 + 72));
  }

  v5 = *(a2 + 64);
  *(v3 + 10) = *(a2 + 80);
  *(v3 + 4) = v5;
  return result;
}

void sub_1008181F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_10081820C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void sub_100818264(uint64_t a1)
{
  v2 = *(a1 + 32);
  *buf = 1;
  if (sub_10000608C(v2, buf, 1))
  {
    if (qword_1025D41E0 != -1)
    {
      sub_101949588();
    }

    v3 = qword_1025D41E8;
    if (os_log_type_enabled(qword_1025D41E8, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      *buf = 67109120;
      v7 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "CLBacklightState, didChangeAlwaysOnEnabled, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019495B0(a1);
    }

    v5 = 1;
    *buf = 0;
    *v8 = 0u;
    *__p = 0u;
    v10 = 0u;
    v11 = *(a1 + 40);
    (*(*v2 + 152))(v2, &v5, buf, 1, 0xFFFFFFFFLL, 0);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(v8[0]);
    }
  }
}

void sub_1008183E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100819DB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1008183FC(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = &off_102474CC8;
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

void sub_1008185A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1008185D0(_BYTE *result, void *a2)
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
        sub_1019496B4();
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
        sub_1019496C8(result, a2);
      }
    }
  }
}

uint64_t sub_100818774(uint64_t a1, uint64_t a2, int a3, void *a4)
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

uint64_t sub_10081892C(char *a1, uint64_t a2, int *a3, char *a4)
{
  v31 = a2;
  if (a1[108])
  {
    return 0;
  }

  v5 = a2;
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
      v30 = v10;
      v13 = *a3;
      v16 = *(v10 + 6);
      v15 = v10 + 48;
      v14 = v16;
      if (!v16)
      {
        goto LABEL_25;
      }

      v17 = v15;
      do
      {
        if (*(v14 + 7) >= v13)
        {
          v17 = v14;
        }

        v14 = *&v14[8 * (*(v14 + 7) < v13)];
      }

      while (v14);
      if (v17 == v15 || v13 < *(v17 + 7))
      {
LABEL_25:
        v17 = v15;
      }

      v18 = *(a1 + 8);
      if (!v18)
      {
        goto LABEL_33;
      }

      v19 = a1 + 64;
      do
      {
        if (*(v18 + 8) >= v13)
        {
          v19 = v18;
        }

        v18 = *&v18[8 * (*(v18 + 8) < v13)];
      }

      while (v18);
      if (v19 != a1 + 64 && v13 >= *(v19 + 8))
      {
        v29 = v19;
        v26 = *(v19 + 7);
        v27 = *a4;
        *buf = &v31;
        *(sub_100007FA0((v19 + 40), &v31, &unk_101C66300, buf) + 32) = v27;
        *buf = 0;
        *&buf[8] = 0u;
        *__p = 0u;
        v34 = 0u;
        v35 = 0;
        if (v17 == v15 && (*(*a1 + 128))(a1, a3, buf))
        {
          sub_10081A9B0(buf);
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(*&buf[8]);
        }

        if (v26)
        {
          goto LABEL_37;
        }
      }

      else
      {
LABEL_33:
        v20 = (a1 + 56);
        v29 = a1 + 64;
        v21 = byte_1025D8881;
        v28 = v13;
        *buf = &v28;
        *(sub_100024014((a1 + 56), &v28, &unk_101C66300, buf) + 80) = v21;
        v28 = *a3;
        *buf = &v28;
        v22 = sub_100024014((a1 + 56), &v28, &unk_101C66300, buf);
        v23 = v22[9];
        v22[8] = 0;
        v22[9] = 0;
        if (v23)
        {
          sub_100008080(v23);
        }

        v24 = *a4;
        v28 = *a3;
        *buf = &v28;
        v25 = sub_100024014(v20, &v28, &unk_101C66300, buf);
        *buf = &v31;
        *(sub_100007FA0((v25 + 5), &v31, &unk_101C66300, buf) + 32) = v24;
      }

      (*(*a1 + 168))(a1, a3);
LABEL_37:
      if (v17 == v15)
      {
        *buf = *a3;
        sub_1003C9410((v30 + 40), buf, buf);
      }

      return 1;
    }
  }

  if (qword_1025D47F0 != -1)
  {
    sub_1019496B4();
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
    *&buf[12] = 1026;
    *&buf[14] = v5;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", buf, 0x12u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_1019497C8(a1);
    return 0;
  }

  return result;
}

void sub_100818D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100819DB0(va);
  _Unwind_Resume(a1);
}

BOOL sub_100818D30(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1019496B4();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1019498D0(a1, a2);
      return 0;
    }
  }

  return result;
}

uint64_t sub_100818EC4(char *a1, int a2, int *a3)
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
              sub_10004E6E0((v15 + 40), &v25 + 1);
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
                sub_1019499D0();
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
                  sub_1019499D0();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLBacklightStateNotifier_Type::Notification, CLBacklightStateNotifier_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLBacklightStateNotifier_Type::Notification, NotificationData_T = CLBacklightStateNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
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

uint64_t sub_100819268(uint64_t a1, int *a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v3 = a1 + 64;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v7 = *a2;
  v8 = v3;
  do
  {
    if (*(v4 + 32) >= v7)
    {
      v8 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < v7));
  }

  while (v4);
  if (v8 == v3)
  {
    return 0;
  }

  if (v7 < *(v8 + 32))
  {
    return 0;
  }

  v9 = *(v8 + 64);
  if (!v9)
  {
    return 0;
  }

  *a3 = *v9;
  std::string::operator=((a3 + 8), (v9 + 8));
  std::string::operator=((a3 + 32), (v9 + 32));
  *(a3 + 56) = *(v9 + 56);
  return 1;
}

void sub_1008193A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008193B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  *v5 = 0u;
  *__p = 0u;
  v7 = 0u;
  v8 = 0;
  (*(*a1 + 152))(a1, a2, &v4, a3, a4, 0);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_10081945C(uint64_t a1, int *a2, uint64_t a3, int a4, int a5)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 64);
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
    if (v9 == v7 || v8 < *(v9 + 32))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_100248B84(buf, a2, &v12);
      sub_10047D8C8(v7 - 8, buf);
    }

    if (a4)
    {
      sub_10081A420();
    }

    v10 = *(v9 + 72);
    *(v9 + 64) = 0;
    *(v9 + 72) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 56))
    {
      sub_100819E24(a3);
    }
  }
}

void sub_100819908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_100819934(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1019496B4();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101949B14(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1019496B4();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019499F8(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1019499D0();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1019499D0();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLBacklightStateNotifier_Type::Notification, CLBacklightStateNotifier_Type::NotificationData, char, char>::listClients() [Notification_T = CLBacklightStateNotifier_Type::Notification, NotificationData_T = CLBacklightStateNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
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
              do
              {
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
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
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

void sub_100819CF8(uint64_t a1)
{
  sub_10081A940(a1);

  operator delete();
}

id sub_100819D30(uint64_t a1, int a2, void *a3)
{
  result = sub_10081A6AC(a3);
  if (result)
  {
    v6 = a2;
    return (*(a1 + 24))(0, &v6, result, *(a1 + 32));
  }

  return result;
}

uint64_t sub_100819DB0(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_100819F3C(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  operator delete();
}

void sub_100819F6C(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = (a1 + 8);
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 32))
      {
        v39 = v9;
        v10 = sub_10081A6AC(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 80);
        v11 = *(v9 + 40);
        if (v11 != (v9 + 48))
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 7);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_10081A328(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 28) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 28) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 7))
                {
                  do
                  {
                    v28 = *(v24 + 28);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1019499D0();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 7);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1019499D0();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 7);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLBacklightStateNotifier_Type::Notification, CLBacklightStateNotifier_Type::NotificationData, char, char>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLBacklightStateNotifier_Type::Notification, NotificationData_T = CLBacklightStateNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != (v39 + 48));
        }
      }
    }
  }
}

_BYTE *sub_10081A328(_BYTE *result, uint64_t a2, uint64_t *a3, void *a4)
{
  if ((result[108] & 1) == 0)
  {
    v7 = result;
    v8 = *(*a2 + 32);
    LODWORD(v12) = *(*a3 + 32);
    v9 = sub_10081A6AC(a4);
    v10 = *a3;
    v13 = (*a2 + 32);
    v11 = sub_100007FA0(v10 + 40, v13, &unk_101C66300, &v13);
    result = (*(*v7 + 192))(v7, v8, &v12, v9, v10 + 80, v11 + 4);
    if (result)
    {
      return [*(*a2 + 64) onNotification:*(*a3 + 32) withData:{a4, v12}];
    }
  }

  return result;
}

uint64_t sub_10081A48C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = off_102474C58;
  *(a1 + 24) = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100007244((a1 + 32), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 48) = *(a2 + 24);
    *(a1 + 32) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100007244((a1 + 56), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 72) = *(a2 + 48);
    *(a1 + 56) = v5;
  }

  *(a1 + 80) = *(a2 + 56);
  return a1;
}

void sub_10081A534(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  _Unwind_Resume(a1);
}

void sub_10081A580(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102474C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10081A5E0(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

uint64_t sub_10081A638(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

id sub_10081A6AC(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_10081A70C(a1);
}

id sub_10081A70C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101949C20();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CAFE79 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101949C34();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_101949C20();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101CAFE79 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101949D34();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

uint64_t sub_10081A940(uint64_t a1)
{
  *a1 = &off_102474CC8;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_10081AAC8(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  operator delete();
}

uint64_t sub_10081AAF8(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10081AB6C(uint64_t a1)
{
  result = sub_100177B18(a1);
  if ((result & 0x10) != 0)
  {
    operator new();
  }

  return result;
}

void sub_10081AF70(uint64_t a1, int *a2, _OWORD *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101949E48();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLPressure::onBias", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101949E5C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPressure::onBias, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10081B380(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10081B13C(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101949E48();
  }

  v7 = os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    v12 = 1;
    v9 = _os_activity_create(dword_100000000, "CL: CLPressure::onMotionStateObserverNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v9, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101949E5C();
    }

    v10 = qword_1025D47F8;
    v7 = os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "activity";
      v19 = 2050;
      v20 = a4;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLPressure::onMotionStateObserverNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v12 = 0;
  }

  sub_10081BB74(v7, v8, a2, a3);
  if (v12 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_10081B304(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_1007F05F0(result);

    operator delete();
  }

  return result;
}

void sub_10081B350(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 32);
  v3 = 0;
  sub_10081B380(v2, a2, &v3, a2);
}

void sub_10081B380(uint64_t a1, uint64_t a2, int *a3, _OWORD *a4)
{
  if (qword_1025D42D0 != -1)
  {
    sub_101949E84();
  }

  v7 = qword_1025D42D8;
  if (os_log_type_enabled(qword_1025D42D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Received Bias Notification", buf, 2u);
  }

  v8 = sub_10000A100(121, 2);
  if (v8)
  {
    sub_101949E98();
  }

  if (*a3)
  {
    if (qword_1025D4310 != -1)
    {
      sub_101949F9C();
    }

    v10 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_ERROR))
    {
      v11 = *a3;
      *buf = 67240192;
      *&buf[4] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "Unexpected pressure bias notification.notification,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101949FC4(a3);
    }
  }

  else
  {
    *buf = *a4;
    *&buf[13] = *(a4 + 13);
    v12 = sub_100011660(v8, v9);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10081B658;
    v13[3] = &unk_1024725B8;
    v13[4] = a1;
    v14[0] = *buf;
    *(v14 + 13) = *&buf[13];
    sub_100042800(v12, v13);
  }
}

void *sub_10081B554(void *a1)
{
  *a1 = off_102474D10;
  v2 = a1[17];
  a1[17] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[16];
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_10081B304(a1 + 5, 0);

  return sub_10095D914(a1);
}

void sub_10081B620(void *a1)
{
  sub_10081B554(a1);

  operator delete();
}

uint64_t sub_10081B658(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  *(v1 + 89) = *(result + 53);
  *(v1 + 76) = v2;
  if (*(result + 52) != 3.4028e38 || *(result + 44) != 0.0 || *(result + 48) != 0.0)
  {
    *(v1 + 57) = 1;
  }

  return result;
}

double sub_10081B6A8(void *a1, void *a2, uint64_t *a3)
{
  if (a2 > 1)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194A0C4();
    }

    v9 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_FAULT))
    {
      v11 = 67240192;
      LODWORD(v12) = a2;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "Unrecognized pressure notification %{public}d", &v11, 8u);
    }

    v7 = 0.0;
    if (sub_10000A100(121, 0))
    {
      sub_10194A0D8(a2);
    }
  }

  else
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194A0C4();
    }

    v5 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
    {
      v6 = *a3;
      v11 = 134349056;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "Setting pressure data update interval to %{public}f", &v11, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A1D4();
    }

    return sub_10081B830(a1);
  }

  return v7;
}

double sub_10081B830(void *a1)
{
  v2 = 0;
  v3 = 1;
  v4 = 0.0;
  do
  {
    v5 = v3;
    v7 = sub_10027E6E4(a1, v2);
    if (v4 == 0.0 || (v7 > 0.0 ? (v8 = v7 < v4) : (v8 = 0), v8))
    {
      v4 = v7;
    }

    v3 = 0;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  a1[8] = 0;
  if (a1[5])
  {
    v9 = sub_10027E6E4(a1, 1);
    v10 = a1[5];
    if (v9 == 0.0)
    {
      sub_1007F0B34(v10);
    }

    else
    {
      sub_1007F05F4(v10);
    }
  }

  if (a1[6])
  {
    v11 = sub_10027E6E4(a1, 1);
    v12 = a1[6];
    v14 = *(v12 + 8);
    v13 = *(v12 + 16);
    if (v11 == 0.0)
    {
      v6 = [v13 unregister:v14 forNotification:0];
    }

    else
    {
      v6 = [v13 register:v14 forNotification:0 registrationInfo:0];
    }
  }

  if (!a1[15])
  {
    v15 = sub_100177B18(v6);
    if ((v15 & 0x10) != 0)
    {
      v17 = sub_1009B38EC(v15, v16);
      sub_101860780(v17);
    }
  }

  sub_10017A1F4(a1[15], v4);
  v18 = sub_100179350(a1[15], v4);
  if (qword_1025D4310 != -1)
  {
    sub_101949F9C();
  }

  v19 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    *&buf[4] = v18;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "Setting pressure batch interval to: %{public}ld us", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194A2C8();
  }

  return v4;
}

void sub_10081BA40(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (sub_10071BCEC(a1, a2))
  {
    v8 = 0x3FA0E5604189374CLL;
    if (v2)
    {
      v4 = &v8;
    }

    else
    {
      v4 = &unk_101CAFEB8;
    }

    sub_10183A3AC(buf, "PressureTempMaxUpdateInterval", v4, 0);
    *(a1 + 112) = *&v10[4];
    v5 = (a1 + 112);
    if (qword_1025D4310 != -1)
    {
      sub_101949F9C();
    }

    v6 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_INFO))
    {
      v7 = *v5 * 1000.0;
      *buf = 134349056;
      *v10 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Temperature update interval set to %{public}f ms", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A3C0();
    }
  }
}

void sub_10081BB74(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (sub_10071BCEC(a1, a2) && !*a3)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194A0C4();
    }

    v6 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a4 + 8);
      v8 = 134349056;
      v9 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Notified of workout event type %{public}ld", &v8, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A4C0();
    }

    if (qword_10265A3C8 != -1)
    {
      sub_10194A5B4();
    }

    if (qword_1026372C0)
    {
      sub_10081BA40(qword_1026372C0, *(a4 + 8) != 0);
    }
  }
}

uint64_t sub_10081BD2C()
{
  if ((atomic_load_explicit(byte_10265A3D8, memory_order_acquire) & 1) == 0)
  {
    sub_10194A728();
  }

  result = qword_10265A3D0;
  if (!qword_10265A3D0)
  {
    operator new();
  }

  return result;
}

uint64_t sub_10081BDB4(unint64_t a1, _DWORD *a2)
{
  v3 = a1;
  if (a1 >= 3)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v11 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLVPC,fromCLARSessionState,Received unhandled ar session state: %lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v8 = 134217984;
      v9 = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLARSessionState,Received unhandled ar session state: %lu", &v8);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLARSessionState(const _CLARSessionState, CLP::LogEntry::Vision::ARSessionState &)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    LODWORD(v3) = -1;
  }

  *a2 = v3;
  return 1;
}

void sub_10081BF40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10081BF4C(void *a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v59 = 0;
      sub_10081C7D8([a1 trackingState], &v59);
      v4 = v59;
      if (!sub_100AB8CC0(v59))
      {
        __assert_rtn("set_tracking_state", "CLPVisionEvent.pb.h", 3498, "::CLP::LogEntry::Vision::VIOTrackingState_IsValid(value)");
      }

      v5 = *(a2 + 88);
      *(a2 + 80) = v4;
      *(a2 + 88) = v5 | 3;
      v6 = *(a2 + 8);
      if (!v6)
      {
        operator new();
      }

      [a1 originTimestamp];
      v8 = sub_10081C970(v6, v7);
      *(a2 + 88) |= 4u;
      v9 = *(a2 + 16);
      if (!v9)
      {
        operator new();
      }

      [a1 timestamp];
      v11 = sub_10081C970(v9, v10);
      objc_msgSend_inertialStateInfo(a1);
      *(a2 + 88) |= 8u;
      v13 = *(a2 + 24);
      if (!v13)
      {
        operator new();
      }

      v14 = v13[4].i32[0];
      v13->i64[1] = *v60;
      v12.i32[0] = *&v60[8];
      v15 = vmovl_u16(*&vmovl_u8(v12));
      v13[1] = v15;
      v15.i32[0] = v61;
      v13[2] = vmovl_u16(*&vmovl_u8(*v15.i8));
      v16 = v63;
      v13[3].i32[0] = v62;
      v13[3].i32[1] = v16;
      v17 = v64;
      v13[4].i32[0] = v14 | 0xFFF;
      v13[3].i32[2] = v17;
      if ([a1 inertialState])
      {
        v18 = [objc_msgSend(a1 "inertialState")];
        v19 = [objc_msgSend(a1 "inertialState")];
        v20 = v19;
        if (v19 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_58;
        }

        if (v19 >= 0x17)
        {
          operator new();
        }

        BYTE7(v66) = v19;
        if (v19)
        {
          memmove(buf, v18, v19);
        }

        buf[v20] = 0;
        *(a2 + 88) |= 0x10u;
        v27 = *(a2 + 32);
        if (v27 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v27, buf);
        if (SBYTE7(v66) < 0)
        {
          operator delete(*buf);
        }
      }

      objc_msgSend_inertialCovarianceInfo(a1);
      *(a2 + 88) |= 0x20u;
      v29 = *(a2 + 40);
      if (!v29)
      {
        operator new();
      }

      v30 = v29[4].i32[0];
      v29->i64[1] = v53;
      v28.i32[0] = v54;
      v31 = vmovl_u16(*&vmovl_u8(v28));
      v29[1] = v31;
      v31.i32[0] = v55;
      v29[2] = vmovl_u16(*&vmovl_u8(*v31.i8));
      v29[3].i32[0] = v56;
      v29[3].i32[1] = v57;
      v29[4].i32[0] = v30 | 0xFFF;
      v29[3].i32[2] = v58;
      if (![a1 inertialCovariance])
      {
        goto LABEL_49;
      }

      v32 = [objc_msgSend(a1 "inertialCovariance")];
      v33 = [objc_msgSend(a1 "inertialCovariance")];
      v34 = v33;
      if (v33 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v33 >= 0x17)
        {
          operator new();
        }

        BYTE7(v66) = v33;
        if (v33)
        {
          memmove(buf, v32, v33);
        }

        buf[v34] = 0;
        *(a2 + 88) |= 0x40u;
        v35 = *(a2 + 48);
        if (v35 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v35, buf);
        if (SBYTE7(v66) < 0)
        {
          operator delete(*buf);
        }

LABEL_49:
        *(a2 + 88) |= 0x80u;
        v36 = *(a2 + 56);
        if (!v36)
        {
          operator new();
        }

        [a1 cameraPose];
        *buf = v37;
        v66 = v38;
        v67 = v39;
        v68 = v40;
        v41 = sub_10081CEAC(buf, v36);
        *(a2 + 88) |= 0x100u;
        v42 = *(a2 + 64);
        if (!v42)
        {
          operator new();
        }

        [a1 cameraIntrinsics];
        *&buf[8] = v43;
        DWORD2(v66) = v44;
        *buf = v45;
        *&v66 = v46;
        DWORD2(v67) = v47;
        *&v67 = v48;
        v49 = sub_10081D210(buf, v42);
        [a1 cameraImageResolution];
        *(a2 + 88) |= 0x200u;
        v52 = *(a2 + 72);
        if (!v52)
        {
          operator new();
        }

        *(v52 + 28) |= 3u;
        result = v8 & v11 & v41 & v49;
        *(v52 + 8) = v50;
        *(v52 + 16) = v51;
        return result;
      }

LABEL_58:
      sub_100061080();
    }

    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v25 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = 0;
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_ERROR, "CLVPC,fromCLVIOEstimation,Invalid output pointer,pEstimationMsg,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      *v60 = 134283521;
      *&v60[4] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLVIOEstimation,Invalid output pointer,pEstimationMsg,%{private}p", v60, 12);
      v24 = v26;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLVIOEstimation(const _CLVIOEstimation *const, CLP::LogEntry::Vision::VIOEstimation *)", "%s\n", v26);
      goto LABEL_27;
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v21 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      *&buf[4] = 0;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "CLVPC,fromCLVIOEstimation,Invalid input pointer,estimation,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      *v60 = 134283521;
      *&v60[4] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLVIOEstimation,Invalid input pointer,estimation,%{private}p", v60, 12);
      v24 = v23;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLVIOEstimation(const _CLVIOEstimation *const, CLP::LogEntry::Vision::VIOEstimation *)", "%s\n", v23);
LABEL_27:
      if (v24 != buf)
      {
        free(v24);
      }

      return 0;
    }
  }

  return result;
}

void sub_10081C704(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081C7D8(unsigned int a1, int *a2)
{
  v3 = a1;
  if (a1 >= 5)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLVPC,fromCV3DVIOTrackingState,Received unhandled vio tracking state: %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCV3DVIOTrackingState,Received unhandled vio tracking state: %d", v8);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCV3DVIOTrackingState(const CV3DVIOTrackingState, CLP::LogEntry::Vision::VIOTrackingState &)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v3 = -1;
  }

  *a2 = v3;
  return 1;
}

void sub_10081C964(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10081C970(uint64_t a1, double a2)
{
  v28 = a2;
  if (a1)
  {
    *(a1 + 36) |= 2u;
    *(a1 + 16) = a2;
    if (*&a2 > -1 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a2 - 1) < 0xFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      *v29 = 0;
      v7 = sub_10081BD2C();
      v8 = sub_100309F2C(v7, &v28, v29);
      if (v8)
      {
        v9 = *v29;
        *(a1 + 36) |= 1u;
        *(a1 + 8) = v9;
      }

      else
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v16 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToCFAbsolute_RealTime failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          LOWORD(v27) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToCFAbsolute_RealTime failed", &v27, 2);
          v22 = v21;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::Vision::TimeStamp *)", "%s\n", v21);
          if (v22 != buf)
          {
            free(v22);
          }
        }
      }

      v27 = 0;
      v17 = sub_10081BD2C();
      v18 = sub_100131674(v17, &v28, &v27);
      if (v18)
      {
        v19 = v27;
        *(a1 + 36) |= 4u;
        *(a1 + 24) = v19;
      }

      else
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v20 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToMachContinuous_RealTime failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v26[0] = 0;
          LODWORD(v25) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToMachContinuous_RealTime failed", v26, v25);
          v24 = v23;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::Vision::TimeStamp *)", "%s\n", v23);
          if (v24 != buf)
          {
            free(v24);
          }
        }
      }

      return v8 & v18;
    }

    else
    {
      if (qword_1025D46A0 != -1)
      {
        sub_10194A79C();
      }

      v14 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v31 = a2;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,Invalid input value,machAbsoluteTime,%{public}.3lf", buf, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_10194A7B0(buf);
        *v29 = 134349056;
        *&v29[4] = v28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromMachAbsoluteTime,Invalid input value,machAbsoluteTime,%{public}.3lf", v29, 12);
        v13 = v15;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::Vision::TimeStamp *)", "%s\n", v15);
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v10 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v31 = 0.0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,Invalid output pointer,pTimeStampMsg,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      *v29 = 134283521;
      *&v29[4] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromMachAbsoluteTime,Invalid output pointer,pTimeStampMsg,%{private}p", v29, 12);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::Vision::TimeStamp *)", "%s\n", v12);
LABEL_27:
      if (v13 != buf)
      {
        free(v13);
      }

      return 0;
    }
  }

  return result;
}

void sub_10081CEA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_10081CEAC(uint64_t a1, int *a2)
{
  if (a2)
  {
    sub_1003C79DC((a2 + 2));
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), 4);
    v4 = 0;
    LODWORD(v5) = 1;
    do
    {
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v6 + 1);
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        sub_100821DC0();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      v9 = sub_100821934(a1, *(v8 + 8 * v7));
      v10 = v9;
      if (!v9)
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v11 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v22) = v4;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat4x4,fromSimdFloat4(matrix.columns[%{public}d]) failed", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v19 = 67240192;
          LODWORD(v20) = v4;
          LODWORD(v18) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromSimdFloat4x4,fromSimdFloat4(matrix.columns[%{public}d]) failed", &v19, v18);
          v13 = v12;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat4x4(const simd_float4x4 &, CLP::LogEntry::Vision::simd_floatMxN *)", "%s\n", v12);
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }

      v5 = v5 & v10;
      ++v4;
      a1 += 16;
    }

    while (v4 != 4);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v14 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v22 = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat4x4,Invalid output pointer,pMatrixMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v19 = 134283521;
      v20 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromSimdFloat4x4,Invalid output pointer,pMatrixMsg,%{private}p", &v19, 12);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat4x4(const simd_float4x4 &, CLP::LogEntry::Vision::simd_floatMxN *)", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return 0;
  }

  return v5;
}

void sub_10081D200(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081D210(uint64_t a1, int *a2)
{
  if (a2)
  {
    sub_1003C79DC((a2 + 2));
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), 3);
    v4 = 0;
    LODWORD(v5) = 1;
    do
    {
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v6 + 1);
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        sub_100821DC0();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      v9 = sub_100821738(a1, *(v8 + 8 * v7));
      v10 = v9;
      if (!v9)
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v11 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v22) = v4;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat3x3,fromSimdFloat3(matrix.columns[%{public}d]) failed", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v19 = 67240192;
          LODWORD(v20) = v4;
          LODWORD(v18) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromSimdFloat3x3,fromSimdFloat3(matrix.columns[%{public}d]) failed", &v19, v18);
          v13 = v12;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat3x3(const simd_float3x3 &, CLP::LogEntry::Vision::simd_floatMxN *)", "%s\n", v12);
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }

      v5 = v5 & v10;
      ++v4;
      a1 += 16;
    }

    while (v4 != 3);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v14 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v22 = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat3x3,Invalid output pointer,pMatrixMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v19 = 134283521;
      v20 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromSimdFloat3x3,Invalid output pointer,pMatrixMsg,%{private}p", &v19, 12);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat3x3(const simd_float3x3 &, CLP::LogEntry::Vision::simd_floatMxN *)", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return 0;
  }

  return v5;
}

void sub_10081D564(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081D574(void *a1, uint64_t a2)
{
  if (!a1)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v15 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v23 = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "CLVPC,fromCLVLLocalizationResult,Invalid input pointer,localizationResult,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_10194A7B0(buf);
    v20 = 134283521;
    v21 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLVLLocalizationResult,Invalid input pointer,localizationResult,%{private}p", &v20, 12);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLVLLocalizationResult(const _CLVLLocalizationResult *const, CLP::LogEntry::Vision::VLLocalizationResult *)", "%s\n", v16);
LABEL_25:
    if (v17 != buf)
    {
      free(v17);
    }

    return 0;
  }

  if (a2)
  {
    *(a2 + 56) |= 1u;
    v4 = *(a2 + 8);
    if (!v4)
    {
      operator new();
    }

    [a1 timestamp];
    v6 = sub_10081C970(v4, v5);
    *(a2 + 56) |= 2u;
    v7 = *(a2 + 16);
    if (!v7)
    {
      operator new();
    }

    objc_msgSend_location(a1);
    v8 = sub_10081DA0C(buf, v7);
    *(a2 + 56) |= 4u;
    v9 = *(a2 + 24);
    if (!v9)
    {
      operator new();
    }

    objc_msgSend_transform(a1);
    v10 = sub_10081DC34(buf, v9);
    *(a2 + 56) |= 8u;
    v11 = *(a2 + 32);
    if (!v11)
    {
      operator new();
    }

    objc_msgSend_covariance(a1);
    v12 = sub_10081DF98(buf, v11);
    [a1 confidence];
    result = v6 & v8 & v10 & v12;
    *(a2 + 56) |= 0x10u;
    *(a2 + 48) = v14;
    return result;
  }

  if (qword_1025D46A0 != -1)
  {
    sub_10194A79C();
  }

  v18 = qword_1025D46A8;
  if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134283521;
    v23 = 0;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "CLVPC,fromCLVLLocalizationResult,Invalid output pointer,pLocalizationResultMsg,%{private}p", buf, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10194A7B0(buf);
    v20 = 134283521;
    v21 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLVLLocalizationResult,Invalid output pointer,pLocalizationResultMsg,%{private}p", &v20, 12);
    v17 = v19;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLVLLocalizationResult(const _CLVLLocalizationResult *const, CLP::LogEntry::Vision::VLLocalizationResult *)", "%s\n", v19);
    goto LABEL_25;
  }

  return result;
}

void sub_10081D970(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10081DA0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 28) |= 1u;
    v4 = *(a2 + 8);
    if (!v4)
    {
      operator new();
    }

    result = sub_10081E76C(a1, v4);
    v6 = *(a1 + 32);
    *(a2 + 28) |= 2u;
    *(a2 + 16) = v6;
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v7 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v13 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocation,Invalid output pointer,pLocationMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v10 = 134283521;
      v11 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromVLLocation,Invalid output pointer,pLocationMsg,%{private}p", &v10, 12);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocation(const VLLocation &, CLP::LogEntry::Vision::VLLocation *)", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    return 0;
  }

  return result;
}

void sub_10081DBF8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081DC34(uint64_t a1, int *a2)
{
  if (a2)
  {
    sub_1003C79DC((a2 + 2));
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), 4);
    v4 = 0;
    LODWORD(v5) = 1;
    do
    {
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v6 + 1);
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        sub_100821E24();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      v9 = sub_100821B30(a1, *(v8 + 8 * v7));
      v10 = v9;
      if (!v9)
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v11 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v22) = v4;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdDouble4x4,fromSimdDouble4(matrix.columns[%{public}d]) failed", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v19 = 67240192;
          LODWORD(v20) = v4;
          LODWORD(v18) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromSimdDouble4x4,fromSimdDouble4(matrix.columns[%{public}d]) failed", &v19, v18);
          v13 = v12;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdDouble4x4(const simd_double4x4 &, CLP::LogEntry::Vision::simd_doubleMxN *)", "%s\n", v12);
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }

      v5 = v5 & v10;
      ++v4;
      a1 += 32;
    }

    while (v4 != 4);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v14 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v22 = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdDouble4x4,Invalid output pointer,pMatrixMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v19 = 134283521;
      v20 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromSimdDouble4x4,Invalid output pointer,pMatrixMsg,%{private}p", &v19, 12);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdDouble4x4(const simd_double4x4 &, CLP::LogEntry::Vision::simd_doubleMxN *)", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return 0;
  }

  return v5;
}

void sub_10081DF88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081DF98(uint64_t a1, int *a2)
{
  if (a2)
  {
    sub_1003C79DC((a2 + 2));
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), 6);
    v4 = 0;
    LODWORD(v5) = 1;
    do
    {
      v6 = a2[5];
      v7 = a2[4];
      if (v7 >= v6)
      {
        if (v6 == a2[6])
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 2), v6 + 1);
          v6 = a2[5];
        }

        a2[5] = v6 + 1;
        sub_100821D5C();
      }

      v8 = *(a2 + 1);
      a2[4] = v7 + 1;
      v9 = sub_10081E974(a1, *(v8 + 8 * v7));
      v10 = v9;
      if (!v9)
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v11 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 67240192;
          LODWORD(v22) = v4;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "CLVPC,fromVLMatrixf6x6,fromVLVectorf6(matrix.v[%{public}d]) failed", buf, 8u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v19 = 67240192;
          LODWORD(v20) = v4;
          LODWORD(v18) = 8;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromVLMatrixf6x6,fromVLVectorf6(matrix.v[%{public}d]) failed", &v19, v18);
          v13 = v12;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLMatrixf6x6(const VLMatrixf6x6 &, CLP::LogEntry::Vision::VLMatrixfMxN *)", "%s\n", v12);
          if (v13 != buf)
          {
            free(v13);
          }
        }
      }

      v5 = v5 & v10;
      ++v4;
      a1 += 24;
    }

    while (v4 != 6);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v14 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v22 = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLVPC,fromVLMatrixf6x6,Invalid output pointer,pMatrixMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v19 = 134283521;
      v20 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromVLMatrixf6x6,Invalid output pointer,pMatrixMsg,%{private}p", &v19, 12);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLMatrixf6x6(const VLMatrixf6x6 &, CLP::LogEntry::Vision::VLMatrixfMxN *)", "%s\n", v16);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    return 0;
  }

  return v5;
}

void sub_10081E2EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081E2FC(void *a1, uint64_t a2)
{
  if (sub_10081D574(a1, a2))
  {
    if ([a1 debugInfo])
    {
      *(a2 + 56) |= 0x20u;
      v4 = *(a2 + 40);
      if (!v4)
      {
        operator new();
      }

      v5 = [a1 debugInfo];

      return sub_10081E52C(v5, v4);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v7 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "CLVPC,fromCLVLLocalizationResultForHarvest,Failed in VL estimate conversion", buf, 2u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      v10[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLVLLocalizationResultForHarvest,Failed in VL estimate conversion", v10, 2);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLVLLocalizationResultForHarvest(const _CLVLLocalizationResult *const, CLP::LogEntry::Vision::VLLocalizationResult *)", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }

      return 0;
    }
  }

  return result;
}

void sub_10081E4F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081E52C(void *a1, uint64_t a2)
{
  if (a1)
  {
    if ([a1 maps488Details])
    {
      *(a2 + 20) |= 1u;
      v4 = *(a2 + 8);
      if (!v4)
      {
        operator new();
      }

      v5 = [a1 maps488Details];

      return sub_10081EB6C(v5, v4);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v7 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v13 = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocalizationDebugInfo,Invalid input pointer,debugInfo,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      v10 = 134283521;
      v11 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromVLLocalizationDebugInfo,Invalid input pointer,debugInfo,%{private}p", &v10, 12);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocalizationDebugInfo(const _CLVLLocalizationDebugInfo *const, CLP::LogEntry::Vision::VLLocalizationDebugInfo *)", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }

      return 0;
    }
  }

  return result;
}

void sub_10081E730(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10081E76C(_OWORD *a1, _DWORD *a2)
{
  if (a2)
  {
    a2[4] = 0;
    sub_1003C7898(a2 + 2, 3);
    v4 = 0;
    v5 = a2[4];
    do
    {
      v6 = a1[1];
      v13[0] = *a1;
      v13[1] = v6;
      v7 = *(v13 + (v4 & 3));
      if (v5 == a2[5])
      {
        sub_1003C7898(a2 + 2, v5 + 1);
        v5 = a2[4];
      }

      v8 = *(a2 + 1);
      a2[4] = v5 + 1;
      *(v8 + 8 * v5) = v7;
      ++v4;
      ++v5;
    }

    while (v4 != 3);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v9 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v17 = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdDouble3,Invalid output pointer,pVectorMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v14 = 134283521;
      v15 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromSimdDouble3,Invalid output pointer,pVectorMsg,%{private}p", &v14, 12);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdDouble3(const simd_double3 &, CLP::LogEntry::Vision::simd_doubleM *)", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }

  return a2 != 0;
}

void sub_10081E964(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10081E974(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    a2[4] = 0;
    sub_1003945DC(a2 + 2, 6);
    v4 = 0;
    v5 = a2[4];
    do
    {
      v6 = *(a1 + v4);
      if (v5 == a2[5])
      {
        sub_1003945DC(a2 + 2, v5 + 1);
        v5 = a2[4];
      }

      v7 = *(a2 + 1);
      a2[4] = v5 + 1;
      *(v7 + 4 * v5) = v6;
      v4 += 4;
      ++v5;
    }

    while (v4 != 24);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v8 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v15 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "CLVPC,fromVLVectorf6,Invalid output pointer,pVectorMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v12 = 134283521;
      v13 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromVLVectorf6,Invalid output pointer,pVectorMsg,%{private}p", &v12, 12);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLVectorf6(const float (&)[6], CLP::LogEntry::Vision::VLVectorfM *)", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return a2 != 0;
}

void sub_10081EB5C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081EB6C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = [a1 inliersCount];
    *(a2 + 276) |= 1u;
    *(a2 + 8) = v4;
    *(a2 + 24) = 0;
    *(a2 + 40) = 0;
    *(a2 + 56) = 0;
    if (![a1 inliersCount] || objc_msgSend(a1, "points2D") && objc_msgSend(a1, "points3D") && objc_msgSend(a1, "inlierIndices"))
    {
      v5 = [a1 points2D];
      v6 = [a1 points3D];
      v7 = [a1 inlierIndices];
      v8 = [a1 inliersCount];
      sub_1003945DC((a2 + 16), 2 * v8);
      sub_1003C7898((a2 + 32), 3 * v8);
      sub_1003945DC((a2 + 48), v8);
      if (v8 >= 1)
      {
        v9 = v8 & 0x7FFFFFFF;
        v10 = (v6 + 16);
        v11 = (v5 + 4);
        do
        {
          v12 = *(v11 - 1);
          v13 = *(a2 + 24);
          v14 = *(a2 + 28);
          if (v13 == v14)
          {
            sub_1003945DC((a2 + 16), v13 + 1);
            v13 = *(a2 + 24);
            v14 = *(a2 + 28);
          }

          v15 = *(a2 + 16);
          v16 = v13 + 1;
          *(a2 + 24) = v13 + 1;
          *(v15 + 4 * v13) = v12;
          v17 = *v11;
          if (v13 + 1 == v14)
          {
            sub_1003945DC((a2 + 16), v13 + 2);
            v16 = *(a2 + 24);
            v15 = *(a2 + 16);
          }

          *(a2 + 24) = v16 + 1;
          *(v15 + 4 * v16) = v17;
          v18 = *(v10 - 2);
          v20 = *(a2 + 40);
          v19 = *(a2 + 44);
          if (v20 == v19)
          {
            sub_1003C7898((a2 + 32), v20 + 1);
            v20 = *(a2 + 40);
            v19 = *(a2 + 44);
          }

          v21 = *(a2 + 32);
          v22 = v20 + 1;
          *(a2 + 40) = v20 + 1;
          *(v21 + 8 * v20) = v18;
          v23 = *(v10 - 1);
          if (v20 + 1 == v19)
          {
            sub_1003C7898((a2 + 32), v20 + 2);
            v21 = *(a2 + 32);
            v22 = *(a2 + 40);
            v19 = *(a2 + 44);
          }

          v24 = v22 + 1;
          *(a2 + 40) = v22 + 1;
          *(v21 + 8 * v22) = v23;
          v25 = *v10;
          if (v22 + 1 == v19)
          {
            sub_1003C7898((a2 + 32), v22 + 2);
            v24 = *(a2 + 40);
            v21 = *(a2 + 32);
          }

          *(a2 + 40) = v24 + 1;
          *(v21 + 8 * v24) = v25;
          v26 = *v7;
          v27 = *(a2 + 56);
          if (v27 == *(a2 + 60))
          {
            sub_1003945DC((a2 + 48), v27 + 1);
            v27 = *(a2 + 56);
          }

          v28 = *(a2 + 48);
          *(a2 + 56) = v27 + 1;
          *(v28 + 4 * v27) = v26;
          v10 += 3;
          v11 += 2;
          ++v7;
          --v9;
        }

        while (v9);
      }

      v123 = 1;
    }

    else
    {
      if (qword_1025D46A0 != -1)
      {
        sub_10194A79C();
      }

      v33 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocalizationMaps488Details,Invalid inliers", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194A7B0(buf);
        LOWORD(v124) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromVLLocalizationMaps488Details,Invalid inliers", &v124, 2);
        v120 = v119;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocalizationMaps488Details(const _CLVLLocalizationMaps488Details *const, CLP::LogEntry::Vision::VLLocalizationMaps488Details *)", "%s\n", v119);
        if (v120 != buf)
        {
          free(v120);
        }
      }

      v123 = 0;
    }

    v34 = [a1 slamOrigin];
    *(a2 + 72) = 0;
    sub_1003C7898((a2 + 64), 6);
    v35 = 0;
    v36 = *(a2 + 72);
    do
    {
      v37 = *&v34[v35];
      if (v36 == *(a2 + 76))
      {
        sub_1003C7898((a2 + 64), v36 + 1);
        v36 = *(a2 + 72);
      }

      v38 = *(a2 + 64);
      *(a2 + 72) = v36 + 1;
      *(v38 + 8 * v36) = v37;
      v35 += 8;
      ++v36;
    }

    while (v35 != 48);
    v39 = [a1 slamTracksCount];
    *(a2 + 276) |= 0x20u;
    *(a2 + 80) = v39;
    v40 = [a1 descriptorDimension];
    *(a2 + 276) |= 0x80u;
    *(a2 + 104) = v40;
    *(a2 + 96) = 0;
    v41 = *(a2 + 112);
    if (v41 != &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      if (*(v41 + 23) < 0)
      {
        **v41 = 0;
        *(v41 + 8) = 0;
      }

      else
      {
        *v41 = 0;
        *(v41 + 23) = 0;
      }
    }

    *(a2 + 276) &= ~0x100u;
    *(a2 + 128) = 0;
    *(a2 + 144) = 0;
    *(a2 + 160) = 0;
    if (![a1 slamTracksCount] || objc_msgSend(a1, "slamTracks") && (!objc_msgSend(a1, "descriptorDimension") || objc_msgSend(a1, "slamTrackDescriptors")) && objc_msgSend(a1, "slamTrackObservations") && (!objc_msgSend(a1, "totalObservationsCount") || objc_msgSend(a1, "slamTracks2D")) && (!objc_msgSend(a1, "totalObservationsCount") || objc_msgSend(a1, "slamTrackImageIndices")))
    {
      v42 = [a1 slamTracks];
      v43 = [a1 slamTrackObservations];
      v44 = [a1 slamTracksCount];
      sub_1003945DC((a2 + 88), 3 * v44);
      sub_1003945DC((a2 + 120), v44);
      if (v44 >= 1)
      {
        v45 = v44 & 0x7FFFFFFF;
        v46 = (v42 + 8);
        do
        {
          v47 = *(v46 - 2);
          v49 = *(a2 + 96);
          v48 = *(a2 + 100);
          if (v49 == v48)
          {
            sub_1003945DC((a2 + 88), v49 + 1);
            v49 = *(a2 + 96);
            v48 = *(a2 + 100);
          }

          v50 = *(a2 + 88);
          v51 = v49 + 1;
          *(a2 + 96) = v49 + 1;
          *(v50 + 4 * v49) = v47;
          v52 = *(v46 - 1);
          if (v49 + 1 == v48)
          {
            sub_1003945DC((a2 + 88), v49 + 2);
            v50 = *(a2 + 88);
            v51 = *(a2 + 96);
            v48 = *(a2 + 100);
          }

          v53 = v51 + 1;
          *(a2 + 96) = v51 + 1;
          *(v50 + 4 * v51) = v52;
          v54 = *v46;
          if (v51 + 1 == v48)
          {
            sub_1003945DC((a2 + 88), v51 + 2);
            v53 = *(a2 + 96);
            v50 = *(a2 + 88);
          }

          *(a2 + 96) = v53 + 1;
          *(v50 + 4 * v53) = v54;
          v55 = *v43;
          v56 = *(a2 + 128);
          if (v56 == *(a2 + 132))
          {
            sub_1003945DC((a2 + 120), v56 + 1);
            v56 = *(a2 + 128);
          }

          v57 = *(a2 + 120);
          *(a2 + 128) = v56 + 1;
          *(v57 + 4 * v56) = v55;
          v46 += 3;
          ++v43;
          --v45;
        }

        while (v45);
      }

      v58 = [a1 descriptorDimension];
      v59 = [a1 slamTracksCount];
      v60 = [a1 slamTrackDescriptors];
      if (v60)
      {
        v61 = v59 * v58;
        if (v61 >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_100061080();
        }

        if (v61 >= 0x17)
        {
          operator new();
        }

        *(&buf[0].__r_.__value_.__s + 23) = v61;
        if (v61)
        {
          memmove(buf, v60, v61);
        }

        buf[0].__r_.__value_.__s.__data_[v61] = 0;
        *(a2 + 276) |= 0x100u;
        v63 = *(a2 + 112);
        if (v63 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
        {
          operator new();
        }

        std::string::operator=(v63, buf);
        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }
      }

      v64 = [a1 slamTracks2D];
      v65 = [a1 slamTrackImageIndices];
      v66 = [a1 totalObservationsCount];
      sub_1003945DC((a2 + 136), 2 * v66);
      sub_1003945DC((a2 + 152), v66);
      if (v66 >= 1)
      {
        v67 = v66 & 0x7FFFFFFF;
        v68 = (v64 + 4);
        do
        {
          v69 = *(v68 - 1);
          v70 = *(a2 + 144);
          v71 = *(a2 + 148);
          if (v70 == v71)
          {
            sub_1003945DC((a2 + 136), v70 + 1);
            v70 = *(a2 + 144);
            v71 = *(a2 + 148);
          }

          v72 = *(a2 + 136);
          v73 = v70 + 1;
          *(a2 + 144) = v70 + 1;
          *(v72 + 4 * v70) = v69;
          v74 = *v68;
          if (v70 + 1 == v71)
          {
            sub_1003945DC((a2 + 136), v70 + 2);
            v73 = *(a2 + 144);
            v72 = *(a2 + 136);
          }

          *(a2 + 144) = v73 + 1;
          *(v72 + 4 * v73) = v74;
          v75 = *v65;
          v76 = *(a2 + 160);
          if (v76 == *(a2 + 164))
          {
            sub_1003945DC((a2 + 152), v76 + 1);
            v76 = *(a2 + 160);
          }

          v77 = *(a2 + 152);
          *(a2 + 160) = v76 + 1;
          *(v77 + 4 * v76) = v75;
          v68 += 2;
          ++v65;
          --v67;
        }

        while (v67);
      }

      v122 = 1;
    }

    else
    {
      if (qword_1025D46A0 != -1)
      {
        sub_10194A7F4();
      }

      v62 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocalizationMaps488Details,Invalid slamTracks", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194A7B0(buf);
        LOWORD(v124) = 0;
        LODWORD(v121) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromVLLocalizationMaps488Details,Invalid slamTracks", &v124, v121);
        v118 = v117;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocalizationMaps488Details(const _CLVLLocalizationMaps488Details *const, CLP::LogEntry::Vision::VLLocalizationMaps488Details *)", "%s\n", v117);
        if (v118 != buf)
        {
          free(v118);
        }
      }

      v122 = 0;
    }

    v78 = [a1 frameCount];
    *(a2 + 276) |= 0x1000u;
    *(a2 + 168) = v78;
    *(a2 + 184) = 0;
    *(a2 + 200) = 0;
    *(a2 + 216) = 0;
    *(a2 + 232) = 0;
    if (![a1 frameCount] || objc_msgSend(a1, "perFrameVioStatusCodes") && objc_msgSend(a1, "perFrameVioPoses") && objc_msgSend(a1, "perFrameCalibrationMatrices") && objc_msgSend(a1, "perFrameDistortion"))
    {
      v79 = [a1 perFrameVioStatusCodes];
      v80 = [a1 perFrameVioPoses];
      v81 = [a1 perFrameCalibrationMatrices];
      v82 = [a1 perFrameDistortion];
      v83 = [a1 frameCount];
      sub_1003945DC((a2 + 176), v83);
      sub_1003945DC((a2 + 192), 12 * v83);
      sub_1003945DC((a2 + 208), 9 * v83);
      sub_1003945DC((a2 + 224), 2 * v83);
      if (v83 >= 1)
      {
        v84 = 0;
        v85 = v83 & 0x7FFFFFFF;
        do
        {
          v86 = v79[v84];
          v87 = *(a2 + 184);
          if (v87 == *(a2 + 188))
          {
            sub_1003945DC((a2 + 176), v87 + 1);
            v87 = *(a2 + 184);
          }

          v88 = 0;
          v89 = *(a2 + 176);
          *(a2 + 184) = v87 + 1;
          *(v89 + 4 * v87) = v86;
          v90 = *(a2 + 200);
          do
          {
            v91 = *&v80[v88];
            if (v90 == *(a2 + 204))
            {
              sub_1003945DC((a2 + 192), v90 + 1);
              v90 = *(a2 + 200);
            }

            v92 = *(a2 + 192);
            *(a2 + 200) = v90 + 1;
            *(v92 + 4 * v90) = v91;
            v88 += 4;
            ++v90;
          }

          while (v88 != 48);
          v93 = 0;
          v94 = *(a2 + 216);
          do
          {
            v95 = *&v81[v93];
            if (v94 == *(a2 + 220))
            {
              sub_1003945DC((a2 + 208), v94 + 1);
              v94 = *(a2 + 216);
            }

            v96 = *(a2 + 208);
            *(a2 + 216) = v94 + 1;
            *(v96 + 4 * v94) = v95;
            v93 += 4;
            ++v94;
          }

          while (v93 != 36);
          v97 = v82[2 * v84];
          v98 = *(a2 + 232);
          v99 = *(a2 + 236);
          if (v98 == v99)
          {
            sub_1003945DC((a2 + 224), v98 + 1);
            v98 = *(a2 + 232);
            v99 = *(a2 + 236);
          }

          v100 = *(a2 + 224);
          v101 = v98 + 1;
          *(a2 + 232) = v98 + 1;
          *(v100 + 4 * v98) = v97;
          v102 = v82[2 * v84 + 1];
          if (v98 + 1 == v99)
          {
            sub_1003945DC((a2 + 224), v98 + 2);
            v101 = *(a2 + 232);
            v100 = *(a2 + 224);
          }

          *(a2 + 232) = v101 + 1;
          *(v100 + 4 * v101) = v102;
          ++v84;
          v80 += 48;
          v81 += 36;
        }

        while (v84 != v85);
      }

      v103 = 1;
    }

    else
    {
      if (qword_1025D46A0 != -1)
      {
        sub_10194A7F4();
      }

      v104 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocalizationMaps488Details,Invalid frames", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194A7B0(buf);
        LOWORD(v124) = 0;
        LODWORD(v121) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromVLLocalizationMaps488Details,Invalid frames", &v124, v121);
        v116 = v115;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocalizationMaps488Details(const _CLVLLocalizationMaps488Details *const, CLP::LogEntry::Vision::VLLocalizationMaps488Details *)", "%s\n", v115);
        if (v116 != buf)
        {
          free(v116);
        }
      }

      v103 = 0;
    }

    v105 = [a1 resultPoseRotation];
    *(a2 + 248) = 0;
    sub_1003C7898((a2 + 240), 9);
    v106 = 0;
    v107 = *(a2 + 248);
    do
    {
      v108 = *&v105[v106];
      if (v107 == *(a2 + 252))
      {
        sub_1003C7898((a2 + 240), v107 + 1);
        v107 = *(a2 + 248);
      }

      v109 = *(a2 + 240);
      *(a2 + 248) = v107 + 1;
      *(v109 + 8 * v107) = v108;
      v106 += 8;
      ++v107;
    }

    while (v106 != 72);
    v110 = [a1 resultPoseTranslation];
    *(a2 + 264) = 0;
    sub_1003C7898((a2 + 256), 3);
    v111 = 0;
    v112 = *(a2 + 264);
    do
    {
      v113 = *&v110[v111];
      if (v112 == *(a2 + 268))
      {
        sub_1003C7898((a2 + 256), v112 + 1);
        v112 = *(a2 + 264);
      }

      v114 = *(a2 + 256);
      *(a2 + 264) = v112 + 1;
      *(v114 + 8 * v112) = v113;
      v111 += 8;
      ++v112;
    }

    while (v111 != 24);
    return v123 & v122 & v103;
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v29 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 134283521;
      *(buf[0].__r_.__value_.__r.__words + 4) = 0;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "CLVPC,fromVLLocalizationMaps488Details,Invalid input pointer,maps488Details,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      v124 = 134283521;
      v125 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromVLLocalizationMaps488Details,Invalid input pointer,maps488Details,%{private}p", &v124, 12);
      v32 = v31;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromVLLocalizationMaps488Details(const _CLVLLocalizationMaps488Details *const, CLP::LogEntry::Vision::VLLocalizationMaps488Details *)", "%s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }

      return 0;
    }
  }

  return result;
}

void sub_10081F920(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081F970(unsigned int *a1, uint64_t a2)
{
  if (a2)
  {
    *buf = 0;
    sub_10081FDA8(*a1, buf);
    v4 = *buf;
    if (sub_1001E06EC(*buf))
    {
      v5 = *(a2 + 152);
      *(a2 + 48) = v4;
      *(a2 + 152) = v5 | 3;
      v6 = *(a2 + 8);
      if (!v6)
      {
        operator new();
      }

      v7 = sub_10081FF4C(a1 + 1, v6);
      v8 = *(a2 + 152);
      *(a2 + 16) = *(a1 + 5);
      *(a2 + 32) = *(a1 + 9);
      *(a2 + 56) = *(a1 + 13);
      *(a2 + 152) = v8 | 0x3FC;
      *(a2 + 72) = *(a1 + 17);
      *(a2 + 52) = a1[21];
      v9 = *(a1 + 11);
      *(a2 + 152) = v8 | 0xFFC;
      *(a2 + 88) = v9;
      v30 = 0;
      sub_1008200F0(a1[24], &v30);
      v10 = v30;
      if (sub_100108BCC(v30))
      {
        v11 = *(a2 + 152);
        *(a2 + 104) = v10;
        *(a2 + 152) = v11 | 0x3000;
        v12 = *(a2 + 96);
        if (!v12)
        {
          operator new();
        }

        v13 = sub_10081FF4C(a1 + 25, v12);
        v14 = *(a1 + 29);
        v15 = *(a2 + 152);
        *(a2 + 152) = v15 | 0x4000;
        *(a2 + 112) = v14;
        v16 = a1[31];
        *(a2 + 152) = v15 | 0xC000;
        *(a2 + 108) = v16;
        v29 = 0;
        sub_100820288(a1[32], &v29);
        v17 = v29;
        if (sub_1001E0708(v29))
        {
          *(a2 + 152) |= 0x10000u;
          *(a2 + 120) = v17;
          v28 = 0;
          sub_100820444(a1[33], &v28);
          v18 = v28;
          if (sub_10041ECEC(v28))
          {
            *(a2 + 152) |= 0x20000u;
            *(a2 + 124) = v18;
            v27 = 0;
            sub_100820444(a1[34], &v27);
            v19 = v27;
            if (sub_10041ECEC(v27))
            {
              result = v7 & v13;
              *(a2 + 152) |= 0x40000u;
              *(a2 + 128) = v19;
              return result;
            }

            v22 = "::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)";
            v23 = 15471;
            v24 = "set_raw_reference_frame";
          }

          else
          {
            v22 = "::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)";
            v23 = 15448;
            v24 = "set_reference_frame";
          }
        }

        else
        {
          v22 = "::CLP::LogEntry::PrivateData::DaemonLocation_LocationIntegrityType_IsValid(value)";
          v23 = 15425;
          v24 = "set_integrity";
        }
      }

      else
      {
        v22 = "::CLP::LogEntry::PrivateData::LocationType_IsValid(value)";
        v23 = 15316;
        v24 = "set_type";
      }
    }

    else
    {
      v22 = "::CLP::LogEntry::PrivateData::DaemonLocation_ClientLocationSuitabilityType_IsValid(value)";
      v23 = 15031;
      v24 = "set_suitability";
    }

    __assert_rtn(v24, "CLPPrivateDataShared.pb.h", v23, v22);
  }

  if (qword_1025D46A0 != -1)
  {
    sub_10194A79C();
  }

  v21 = qword_1025D46A8;
  if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134283521;
    v33 = 0;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "CLVPC,fromCLDaemonLocation,Invalid output pointer, pLocationMsg,%{private}p", buf, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10194A7B0(buf);
    v30 = 134283521;
    v31 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLDaemonLocation,Invalid output pointer, pLocationMsg,%{private}p", &v30, 12);
    v26 = v25;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLDaemonLocation(const CLDaemonLocation &, CLP::LogEntry::PrivateData::DaemonLocation *)", "%s\n", v25);
    if (v26 != buf)
    {
      free(v26);
    }

    return 0;
  }

  return result;
}

void sub_10081FD4C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10081FDA8(int a1, int *a2)
{
  v3 = a1;
  if ((a1 - 1) >= 2 && a1 != 0xFFFF)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v5 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v11 = v3;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLVPC,fromCLClientLocationSuitability,Received unhandled location suitability: %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A7B0(buf);
      v9[0] = 67109120;
      v9[1] = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 2, "CLVPC,fromCLClientLocationSuitability,Received unhandled location suitability: %d", v9);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVisionProtobufConverter::fromCLClientLocationSuitability(const CLClientLocationSuitability, CLP::LogEntry::PrivateData::DaemonLocation_ClientLocationSuitabilityType &)", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_10081FF40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_10081FF4C(_OWORD *a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 28) |= 3u;
    *(a2 + 8) = *a1;
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v3 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v10 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "CLVPC,fromCLClientLocationCoordinate,Invalid output pointer,pCoordinateMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v7 = 134283521;
      v8 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLClientLocationCoordinate,Invalid output pointer,pCoordinateMsg,%{private}p", &v7, 12);
      v6 = v5;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLClientLocationCoordinate(const CLClientLocationCoordinate &, CLP::LogEntry::PrivateData::ClientLocationCoordinate *)", "%s\n", v5);
      if (v6 != buf)
      {
        free(v6);
      }
    }
  }

  return a2 != 0;
}

void sub_1008200E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1008200F0(unsigned int a1, unsigned int *a2)
{
  v3 = a1;
  if (a1 >= 0xE)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLVPC,fromCLLocationType,Received unhandled location type: %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLLocationType,Received unhandled location type: %d", v8);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLLocationType(const CLLocationType, CLP::LogEntry::PrivateData::LocationType &)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_10082027C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100820288(int a1, int *a2)
{
  v3 = a1;
  if (((a1 - 25) > 0x32 || ((1 << (a1 - 25)) & 0x4000002000001) == 0) && a1)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLVPC,fromCLLocationIntegrity,Received unhandled location integrity: %u", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A7B0(buf);
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 2, "CLVPC,fromCLLocationIntegrity,Received unhandled location integrity: %u", v8);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVisionProtobufConverter::fromCLLocationIntegrity(const CLLocationIntegrity, CLP::LogEntry::PrivateData::DaemonLocation_LocationIntegrityType &)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v3 = -1;
  }

  *a2 = v3;
  return 1;
}

void sub_100820438(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100820444(unsigned int a1, unsigned int *a2)
{
  v3 = a1;
  if (a1 >= 3)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLVPC,fromCLClientLocationReferenceFrame,Received unhandled location reference frame: %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A7B0(buf);
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 2, "CLVPC,fromCLClientLocationReferenceFrame,Received unhandled location reference frame: %d", v8);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVisionProtobufConverter::fromCLClientLocationReferenceFrame(const CLClientLocationReferenceFrame, CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType &)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_1008205D0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1008205DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 368);
    *(a2 + 8) = *a1;
    *(a2 + 24) = *(a1 + 16);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 48) = *(a1 + 40);
    *(a2 + 56) = *(a1 + 48);
    v5 = *(a1 + 52);
    *(a2 + 368) = v4 | 0x1FF;
    *(a2 + 112) = v5;
    *buf = 0;
    sub_100820B80(*(a1 + 56), buf);
    v6 = *buf;
    if (sub_10041ECF8(*buf))
    {
      v7 = *(a2 + 368);
      *(a2 + 60) = v6;
      *(a2 + 368) = v7 | 0x600;
      v8 = *(a2 + 64);
      if (!v8)
      {
        operator new();
      }

      v9 = sub_10081FF4C((a1 + 64), v8);
      v10 = *(a1 + 80);
      v11 = *(a2 + 368);
      *(a2 + 368) = v11 | 0x800;
      *(a2 + 72) = v10;
      v12 = *(a1 + 88);
      *(a2 + 368) = v11 | 0x1800;
      *(a2 + 80) = v12;
      *(a2 + 84) = *(a1 + 92);
      *(a2 + 113) = *(a1 + 96);
      *(a2 + 368) = v11 | 0x807800;
      v13 = *(a2 + 136);
      if (!v13)
      {
        operator new();
      }

      v14 = sub_100820D1C(a1 + 104, v13);
      *(a2 + 368) |= 0x8000u;
      v15 = *(a2 + 88);
      if (!v15)
      {
        operator new();
      }

      *(v15 + 28) |= 3u;
      *(v15 + 8) = *(a1 + 296);
      v35 = 0;
      sub_100820EC8(*(a1 + 312), &v35);
      v16 = v35;
      if (sub_1001F162C(v35))
      {
        v17 = *(a2 + 368);
        *(a2 + 96) = v16;
        *(a2 + 100) = *(a1 + 316);
        *(a2 + 368) = v17 | 0x70000;
        v18 = *(a2 + 104);
        if (!v18)
        {
          operator new();
        }

        v19 = sub_10081FF4C((a1 + 320), v18);
        *(a2 + 368) |= 0x180000u;
        *(a2 + 120) = *(a1 + 336);
        v34 = 0;
        sub_100821064(*(a1 + 352), &v34);
        v20 = v34;
        if (sub_10041ECEC(v34))
        {
          *(a2 + 116) = v20;
          *(a2 + 114) = *(a1 + 356);
          *(a2 + 144) = *(a1 + 360);
          *(a2 + 160) = *(a1 + 376);
          *(a2 + 176) = *(a1 + 496);
          *(a2 + 115) = *(a1 + 512);
          *(a2 + 192) = *(a1 + 392);
          *(a2 + 200) = *(a1 + 416);
          *(a2 + 276) = *(a1 + 424);
          *(a2 + 368) = vorr_s8(*(a2 + 368), 0x7FF600000);
          v21 = *(a2 + 208);
          if (!v21)
          {
            operator new();
          }

          v22 = sub_10081FF4C((a1 + 432), v21);
          v23 = *(a1 + 448);
          *(a2 + 372) |= 8u;
          *(a2 + 216) = v23;
          v33 = 0;
          sub_100820444(*(a1 + 456), &v33);
          v24 = v33;
          if (sub_10041ECEC(v33))
          {
            result = (v9 && v14 && v19) & v22;
            v26 = *(a2 + 372);
            *(a2 + 272) = v24;
            *(a2 + 372) = v26 | 0x70;
            *(a2 + 224) = *(a1 + 480);
            return result;
          }

          v28 = "::CLP::LogEntry::PrivateData::ClientLocationReferenceFrameType_IsValid(value)";
          v29 = 16874;
          v30 = "set_fused_reference_frame";
        }

        else
        {
          v28 = "::CLP::LogEntry::PrivateData::DaemonLocationPrivate_ClientLocationOriginDeviceType_IsValid(value)";
          v29 = 16503;
          v30 = "set_origin_device";
        }
      }

      else
      {
        v28 = "::CLP::LogEntry::PrivateData::DaemonLocationPrivate_UndulationModelType_IsValid(value)";
        v29 = 16372;
        v30 = "set_undulation_model";
      }
    }

    else
    {
      v28 = "::CLP::LogEntry::PrivateData::DaemonLocationPrivate_MatchQualityType_IsValid(value)";
      v29 = 16177;
      v30 = "set_match_quality";
    }

    __assert_rtn(v30, "CLPPrivateDataShared.pb.h", v29, v28);
  }

  if (qword_1025D46A0 != -1)
  {
    sub_10194A79C();
  }

  v27 = qword_1025D46A8;
  if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134283521;
    v38 = 0;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "CLVPC,fromCLDaemonLocationPrivate,Invalid output pointer,pLocationPrivateMsg,%{private}p", buf, 0xCu);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10194A7B0(buf);
    v35 = 134283521;
    v36 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLDaemonLocationPrivate,Invalid output pointer,pLocationPrivateMsg,%{private}p", &v35, 12);
    v32 = v31;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLDaemonLocationPrivate(const CLDaemonLocationPrivate &, CLP::LogEntry::PrivateData::DaemonLocationPrivate *)", "%s\n", v31);
    if (v32 != buf)
    {
      free(v32);
    }

    return 0;
  }

  return result;
}

void sub_100820AE0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100820B80(int a1, int *a2)
{
  v3 = a1;
  if ((a1 - 1) >= 3)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLVPC,fromCLClientLocationMatchQuality,Received unhandled match quality: %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A7B0(buf);
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 2, "CLVPC,fromCLClientLocationMatchQuality,Received unhandled match quality: %d", v8);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVisionProtobufConverter::fromCLClientLocationMatchQuality(const CLClientLocationMatchQuality, CLP::LogEntry::PrivateData::DaemonLocationPrivate_MatchQualityType &)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_100820D10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_100820D1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 32);
    *(a2 + 8) = *a1;
    *(a2 + 24) = *(a1 + 16);
    *(a2 + 32) = v3 | 0xF;
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v11 = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLVPC,fromCLMapMatcherData,Invalid output pointer,pMapMatcherDataMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v8 = 134283521;
      v9 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLMapMatcherData,Invalid output pointer,pMapMatcherDataMsg,%{private}p", &v8, 12);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLMapMatcherData(const CLMapMatcherData &, CLP::LogEntry::PrivateData::MapMatcherData *)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return a2 != 0;
}

void sub_100820EBC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100820EC8(int a1, int *a2)
{
  v3 = a1;
  if ((a1 + 1) >= 4)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "CLVPC,fromCLUndulationModelType,Received unhandled undulation model type: %d", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromCLUndulationModelType,Received unhandled undulation model type: %d", v8);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromCLUndulationModelType(const CLUndulationModelType, CLP::LogEntry::PrivateData::DaemonLocationPrivate_UndulationModelType &)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v3 = -1;
  }

  *a2 = v3;
  return 1;
}

void sub_100821058(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_100821064(unsigned int a1, unsigned int *a2)
{
  v3 = a1;
  if (a1 >= 3)
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v4 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLVPC,fromCLClientLocationOriginDevice,Received unhandled location origin device: %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194A7B0(buf);
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 2, "CLVPC,fromCLClientLocationOriginDevice,Received unhandled location origin device: %d", v8);
      v7 = v6;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLVisionProtobufConverter::fromCLClientLocationOriginDevice(const CLClientLocationOriginDevice, CLP::LogEntry::PrivateData::DaemonLocationPrivate_ClientLocationOriginDeviceType &)", "%s\n", v6);
      if (v7 != buf)
      {
        free(v7);
      }
    }

    v3 = 0;
  }

  *a2 = v3;
  return 1;
}

void sub_1008211F0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1008211FC(uint64_t a1, double a2)
{
  v28 = a2;
  if (a1)
  {
    *(a1 + 44) |= 2u;
    *(a1 + 16) = a2;
    if (*&a2 > -1 && ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a2 - 1) < 0xFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      *v29 = 0;
      v7 = sub_10081BD2C();
      v8 = sub_100309F2C(v7, &v28, v29);
      if (v8)
      {
        v9 = *v29;
        *(a1 + 44) |= 1u;
        *(a1 + 8) = v9;
      }

      else
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v16 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToCFAbsolute_RealTime failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          LOWORD(v27) = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToCFAbsolute_RealTime failed", &v27, 2);
          v22 = v21;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::LogEntry_TimeStamp *)", "%s\n", v21);
          if (v22 != buf)
          {
            free(v22);
          }
        }
      }

      v27 = 0;
      v17 = sub_10081BD2C();
      v18 = sub_100131674(v17, &v28, &v27);
      if (v18)
      {
        v19 = v27;
        *(a1 + 44) |= 4u;
        *(a1 + 24) = v19;
      }

      else
      {
        if (qword_1025D46A0 != -1)
        {
          sub_10194A7F4();
        }

        v20 = qword_1025D46A8;
        if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToMachContinuous_RealTime failed", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10194A7B0(buf);
          v26[0] = 0;
          LODWORD(v25) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromMachAbsoluteTime,convertMachAbsoluteToMachContinuous_RealTime failed", v26, v25);
          v24 = v23;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::LogEntry_TimeStamp *)", "%s\n", v23);
          if (v24 != buf)
          {
            free(v24);
          }
        }
      }

      return v8 & v18;
    }

    else
    {
      if (qword_1025D46A0 != -1)
      {
        sub_10194A79C();
      }

      v14 = qword_1025D46A8;
      if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349056;
        v31 = a2;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,Invalid input value,machAbsoluteTime,%{public}.3lf", buf, 0xCu);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_10194A7B0(buf);
        *v29 = 134349056;
        *&v29[4] = v28;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromMachAbsoluteTime,Invalid input value,machAbsoluteTime,%{public}.3lf", v29, 12);
        v13 = v15;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::LogEntry_TimeStamp *)", "%s\n", v15);
        goto LABEL_27;
      }
    }
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v10 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v31 = 0.0;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "CLVPC,fromMachAbsoluteTime,Invalid output pointer,pTimeStampMsg,%{private}p", buf, 0xCu);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_10194A7B0(buf);
      *v29 = 134283521;
      *&v29[4] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromMachAbsoluteTime,Invalid output pointer,pTimeStampMsg,%{private}p", v29, 12);
      v13 = v12;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromMachAbsoluteTime(const CFTimeInterval, CLP::LogEntry::LogEntry_TimeStamp *)", "%s\n", v12);
LABEL_27:
      if (v13 != buf)
      {
        free(v13);
      }

      return 0;
    }
  }

  return result;
}

void sub_10082172C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

BOOL sub_100821738(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    a2[4] = 0;
    sub_1003945DC(a2 + 2, 3);
    v4 = 0;
    v5 = a2[4];
    do
    {
      v6 = *(a1 + 4 * (v4 & 3));
      if (v5 == a2[5])
      {
        sub_1003945DC(a2 + 2, v5 + 1);
        v5 = a2[4];
      }

      v7 = *(a2 + 1);
      a2[4] = v5 + 1;
      *(v7 + 4 * v5) = v6;
      ++v4;
      ++v5;
    }

    while (v4 != 3);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v8 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v15 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat3,Invalid output pointer,pVectorMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v12 = 134283521;
      v13 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromSimdFloat3,Invalid output pointer,pVectorMsg,%{private}p", &v12, 12);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat3(const simd_float3 &, CLP::LogEntry::Vision::simd_floatM *)", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return a2 != 0;
}

void sub_100821924(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100821934(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    a2[4] = 0;
    sub_1003945DC(a2 + 2, 4);
    v4 = 0;
    v5 = a2[4];
    do
    {
      v6 = *(a1 + 4 * (v4 & 3));
      if (v5 == a2[5])
      {
        sub_1003945DC(a2 + 2, v5 + 1);
        v5 = a2[4];
      }

      v7 = *(a2 + 1);
      a2[4] = v5 + 1;
      *(v7 + 4 * v5) = v6;
      ++v4;
      ++v5;
    }

    while (v4 != 4);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v8 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v15 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdFloat4,Invalid output pointer,pVectorMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v12 = 134283521;
      v13 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromSimdFloat4,Invalid output pointer,pVectorMsg,%{private}p", &v12, 12);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdFloat4(const simd_float4 &, CLP::LogEntry::Vision::simd_floatM *)", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return a2 != 0;
}

void sub_100821B20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100821B30(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    a2[4] = 0;
    sub_1003C7898(a2 + 2, 4);
    v4 = 0;
    v5 = a2[4];
    do
    {
      v6 = *(a1 + 8 * (v4 & 3));
      if (v5 == a2[5])
      {
        sub_1003C7898(a2 + 2, v5 + 1);
        v5 = a2[4];
      }

      v7 = *(a2 + 1);
      a2[4] = v5 + 1;
      *(v7 + 8 * v5) = v6;
      ++v4;
      ++v5;
    }

    while (v4 != 4);
  }

  else
  {
    if (qword_1025D46A0 != -1)
    {
      sub_10194A79C();
    }

    v8 = qword_1025D46A8;
    if (os_log_type_enabled(qword_1025D46A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134283521;
      v15 = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "CLVPC,fromSimdDouble4,Invalid output pointer,pVectorMsg,%{private}p", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194A7B0(buf);
      v12 = 134283521;
      v13 = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46A8, 16, "CLVPC,fromSimdDouble4,Invalid output pointer,pVectorMsg,%{private}p", &v12, 12);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLVisionProtobufConverter::fromSimdDouble4(const simd_double4 &, CLP::LogEntry::Vision::simd_doubleM *)", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }

  return a2 != 0;
}

void sub_100821D1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

void sub_100822380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

id sub_1008223A8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 80);
  v6[4] = *(a1 + 64);
  v6[5] = v2;
  v6[6] = *(a1 + 96);
  v7 = *(a1 + 112);
  v3 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v3;
  v4 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v4;
  return [a2 onAddBout:v6];
}

void sub_100822A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100822A28(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4430 != -1)
  {
    sub_10194A830();
  }

  v3 = qword_1025D4438;
  if (os_log_type_enabled(qword_1025D4438, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Aggregating bout records", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194ABE4();
  }

  return sub_1003EF91C(*(*(a1 + 32) + 56));
}

double sub_100822CFC(uint64_t a1, double **a2)
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

uint64_t sub_100822D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_100822DFC(uint64_t a1, double **a2)
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

uint64_t sub_100822E4C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100822F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10082301C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100823068(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[42];
    if (v3)
    {
      v2[43] = v3;
      operator delete(v3);
    }

    sub_1001FB750(v2 + 28);
    v4 = v2[25];
    if (v4)
    {
      v2[26] = v4;
      operator delete(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      sub_100008080(v5);
    }

    operator delete();
  }

  return result;
}

void sub_1008232EC(uint64_t a1, void *a2)
{
  v4 = [CMAbsoluteAltitudeData alloc];
  [a2 altitude];
  v6 = v5;
  [a2 accuracy];
  v8 = v7;
  [a2 precision];
  v10 = v9;
  [a2 filteredPressure];
  v12 = v11;
  v13 = [a2 statusInfo];
  [a2 timestamp];
  v15 = [v4 initWithAltitude:v13 accuracy:v6 precision:v8 filteredPressure:v10 status:v12 timestamp:v14];
  v17 = CMAbsoluteAltitudeKey;
  v18 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  sub_100825CC4(a1, &v16);
}

void sub_100823478(uint64_t a1, uint64_t a2)
{
  v3 = [[CMSignificantElevationSample alloc] initWithSignificantElevation:a2];
  v5 = CMSignificantElevationKeySample;
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  sub_100825388(a1, &v4);
}

void sub_100823628(uint64_t a1, void *a2)
{
  v4 = [CMCompanionRelativeElevationData alloc];
  [a2 timestamp];
  v6 = v5;
  [a2 relativeElevation];
  *&v8 = v7;
  v9 = [v4 initWithTimestamp:v6 companionRelativeElevation:v8];
  v11 = CMCompanionRelativeElevationKey;
  v12 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  sub_100825D48(a1, &v10);
}

void sub_100823718(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = sub_10005C6F0(a1, a2, a3, a4, a5);
  *v5 = off_102475068;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;
  sub_100156C60();
}

void sub_100823880(_Unwind_Exception *a1)
{
  v4 = *v2;
  *v2 = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100114E74(v1);
  _Unwind_Resume(a1);
}

void sub_1008238C8(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10194AE08();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLElevationSubscription::onOdometerUpdate", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10194AE1C();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLElevationSubscription::onOdometerUpdate, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100825264(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_100823A98(uint64_t a1)
{
  *a1 = off_102475068;

  [*(a1 + 64) setValid:0];
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  [*(a1 + 72) invalidate];

  *(a1 + 72) = 0;
  v3 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_100114E74(a1);
}

void sub_100823B80(uint64_t a1)
{
  sub_100823A98(a1);

  operator delete();
}

uint64_t sub_100823BB8@<X0>(uint64_t a1@<X8>)
{
  v11[0] = off_102475388;
  v11[1] = sub_100823F68;
  v11[2] = 0;
  v11[3] = v11;
  sub_10000EC00(v12, "kCLConnectionMessageSignificantElevationUpdate");
  sub_100825E2C(&v13, v11);
  v8 = off_102475388;
  v9[0] = sub_1008242F8;
  v9[1] = 0;
  v10 = &v8;
  sub_10000EC00(v14, "kCLConnectionMessageFilteredElevationUpdate");
  sub_100825E2C(&v15, &v8);
  v7[0] = off_102475438;
  v7[1] = sub_1008246A0;
  v7[2] = 0;
  v7[3] = v7;
  sub_10000EC00(v16, "kCLConnectionMessageSignificantElevationDeltaQuery");
  sub_100825E2C(&v17, v7);
  v6[0] = off_102475388;
  v6[1] = sub_100824A44;
  v6[2] = 0;
  v6[3] = v6;
  sub_10000EC00(v18, "kCLConnectionMessageAbsoluteAltitudeUpdate");
  sub_100825E2C(&v19, v6);
  v5[0] = off_102475388;
  v5[1] = nullsub_461;
  v5[2] = 0;
  v5[3] = v5;
  sub_10000EC00(v20, "kCLConnectionMessageCompanionRelativeElevationUpdate");
  sub_100825E2C(&v21, v5);
  v4[0] = off_102475438;
  v4[1] = sub_100824DE0;
  v4[2] = 0;
  v4[3] = v4;
  sub_10000EC00(v22, "kCLConnectionMessageElevationProfileQuery");
  sub_100825E2C(&v23, v4);
  sub_1008268C0(a1, v12, 6);
  v2 = 42;
  do
  {
    sub_1008266A4(&v11[v2]);
    if (SHIBYTE((&v10)[v2]) < 0)
    {
      operator delete(v9[v2]);
    }

    v2 -= 7;
  }

  while (v2 * 8);
  sub_1008266A4(v4);
  sub_1008266A4(v5);
  sub_1008266A4(v6);
  sub_1008266A4(v7);
  sub_1008266A4(&v8);
  return sub_1008266A4(v11);
}

void sub_100823E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v32 = -336;
  v33 = v30;
  do
  {
    v33 = sub_100825EAC(v33) - 56;
    v32 += 56;
  }

  while (v32);
  sub_1008266A4(&a10);
  sub_1008266A4(&a14);
  sub_1008266A4(&a18);
  sub_1008266A4(&a22);
  sub_1008266A4(&a26);
  sub_1008266A4(&a30);
  _Unwind_Resume(a1);
}

void sub_100823F68(void *a1, int a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D4310 != -1)
  {
    sub_10194AE44();
  }

  v5 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[3];
    *buf = 138412802;
    *&buf[4] = v6;
    v26 = 2048;
    v27 = a1;
    v28 = 1024;
    v29 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "SignificantElevation subscription changed, %@, %p, %d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194AE58(buf);
    v10 = a1[3];
    v19 = 138412802;
    v20 = v10;
    v21 = 2048;
    v22 = a1;
    v23 = 1024;
    v24 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4318, 0, "SignificantElevation subscription changed, %@, %p, %d", &v19, 28);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "void CLElevationSubscription::handleRequestSignificantElevationUpdate(BOOL, const CLNameValuePair &)", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v19 = 0;
  if ((sub_100825490(a1, &v19) & 1) == 0)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194AE9C();
    }

    v9 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Failed to subscribe to significant elevation updates.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194AE58(buf);
      v16[0] = 0;
      LODWORD(v15) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4318, 0, "#Warning Failed to subscribe to significant elevation updates.", v16, v15);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 2, "void CLElevationSubscription::handleRequestSignificantElevationUpdate(BOOL, const CLNameValuePair &)", "%s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v17 = CMErrorMessage;
    v18 = [NSNumber numberWithUnsignedInt:v19];
    *buf = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    sub_10082556C(a1, buf);
  }

  sub_1000F3B70(a1);
  v7 = a1[7];
  v8 = a1[8];
  if (a2)
  {
    [v7 registerClient:v8 forNotification:5];
  }

  else
  {
    [v7 unregisterClient:v8 forNotification:5];
  }
}

void sub_1008242F8(uint64_t a1, int a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = sub_1004D2ECC(*(a1 + 8));
  if (!v5 || (sub_100177B18(v5) & 0x10) == 0)
  {
    v12 = CMErrorMessage;
    v13 = &off_10254EFA8;
    *buf = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    sub_100825600(a1, buf);
  }

  if ((sub_100275B0C(a1) & 1) == 0)
  {
    v9 = CMErrorMessage;
    v10 = &off_10254EFC0;
    *buf = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    sub_100825600(a1, buf);
  }

  sub_1000F3B70(a1);
  v6 = *(a1 + 48);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (a2)
  {
    [v7 register:v8 forNotification:3 registrationInfo:0];
    [*(*(a1 + 48) + 16) register:*(*(a1 + 48) + 8) forNotification:7 registrationInfo:0];
  }

  else
  {
    [v7 unregister:v8 forNotification:3];
    [*(*(a1 + 48) + 16) unregister:*(*(a1 + 48) + 8) forNotification:7];
  }
}

void sub_1008246A0(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v22 = 0;
  if (sub_100825490(a1, &v22))
  {
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
    v8 = DictionaryOfClasses;
    if (DictionaryOfClasses && (v9 = CMSignificantElevationKeyQueryTimeRange, [DictionaryOfClasses objectForKeyedSubscript:CMSignificantElevationKeyQueryTimeRange]))
    {
      sub_10000FF38(buf, "CLDaemonClient.OdometerNotifier.SignificantElevationDeltaQuery", 0);
      v10 = [v8 objectForKeyedSubscript:v9];
      v11 = *(*(a1 + 48) + 16);
      v12 = [v10 startDate];
      v13 = [v10 endDate];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3321888768;
      v19[2] = sub_100825694;
      v19[3] = &unk_102475088;
      v14 = *(a2 + 8);
      v19[4] = *a2;
      v20 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      [v11 querySignificantElevationDeltaFromDate:v12 toDate:v13 withReply:v19];
      if (v20)
      {
        sub_100008080(v20);
      }

      sub_10001A420(buf);
    }

    else
    {
      if (qword_1025D4310 != -1)
      {
        sub_10194AE44();
      }

      v15 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Programmer error: Wrong parameters were passed.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194AE58(buf);
        v21[0] = 0;
        LODWORD(v18) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4318, 17, "Programmer error: Wrong parameters were passed.", v21, v18);
        v17 = v16;
        sub_100152C7C("Generic", 1, 0, 0, "void CLElevationSubscription::handleMessageSignificantElevationDeltaQuery(std::shared_ptr<CLConnectionMessage>)", "%s\n", v16);
        if (v17 != buf)
        {
          free(v17);
        }
      }

      v23 = CMErrorMessage;
      v24 = &off_10254EFD8;
      [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      CLConnectionMessage::sendReply();
    }
  }

  else
  {
    v26 = CMErrorMessage;
    v27 = [NSNumber numberWithUnsignedInt:v22];
    [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    CLConnectionMessage::sendReply();
  }
}

void sub_100824A44(void *a1, int a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  if (qword_1025D4310 != -1)
  {
    sub_10194AE44();
  }

  v5 = qword_1025D4318;
  if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[3];
    *buf = 138412802;
    *&buf[4] = v6;
    v26 = 2048;
    v27 = a1;
    v28 = 1024;
    v29 = a2;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "AbsoluteAltitude subscription changed, %@, %p, %d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194AE58(buf);
    v10 = a1[3];
    v19 = 138412802;
    v20 = v10;
    v21 = 2048;
    v22 = a1;
    v23 = 1024;
    v24 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4318, 0, "AbsoluteAltitude subscription changed, %@, %p, %d", &v19, 28);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "void CLElevationSubscription::handleRequestAbsoluteAltitudeUpdate(BOOL, const CLNameValuePair &)", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v19 = 0;
  if ((sub_1008259C4(a1, &v19) & 1) == 0)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194AE9C();
    }

    v9 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning Failed to subscribe to absolute altitude updates.", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10194AE58(buf);
      v16[0] = 0;
      LODWORD(v15) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4318, 0, "#Warning Failed to subscribe to absolute altitude updates.", v16, v15);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 2, "void CLElevationSubscription::handleRequestAbsoluteAltitudeUpdate(BOOL, const CLNameValuePair &)", "%s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v17 = CMErrorMessage;
    v18 = [NSNumber numberWithUnsignedInt:v19];
    *buf = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    sub_100825B18(a1, buf);
  }

  sub_1000F3B70(a1);
  v7 = a1[7];
  v8 = a1[8];
  if (a2)
  {
    [v7 registerClient:v8 forNotification:1];
    sub_100825BAC(a1);
  }

  else
  {
    [v7 unregisterClient:v8 forNotification:1];
  }
}

void sub_100824DE0(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v27 = 0;
  if (sub_100825490(a1, &v27))
  {
    Dictionary = CLConnectionMessage::getDictionary(*a2);
    v6 = Dictionary;
    if (Dictionary && (v7 = [Dictionary objectForKeyedSubscript:CMElevationProfileKeyQueryStartTime]) != 0 && (v8 = objc_msgSend(v6, "objectForKeyedSubscript:", CMElevationProfileKeyQueryEndTime)) != 0 && (v9 = CMElevationProfileKeyQueryFromRecordId, objc_msgSend(v6, "objectForKeyedSubscript:", CMElevationProfileKeyQueryFromRecordId)) && (v10 = CMElevationProfileKeyQueryBatchSize, objc_msgSend(v6, "objectForKeyedSubscript:", CMElevationProfileKeyQueryBatchSize)))
    {
      [v7 doubleValue];
      v12 = v11;
      [v8 doubleValue];
      v14 = v13;
      if (v12 <= v13)
      {
        v16 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v12];
        v17 = [[NSDate alloc] initWithTimeIntervalSinceReferenceDate:v14];
        v18 = [v6 objectForKeyedSubscript:v9];
        v19 = [v6 objectForKeyedSubscript:v10];
        sub_10000FF38(buf, "CLDaemonClient.ElevationProfileQuery", 0);
        v20 = *(a1 + 56);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3321888768;
        v24[2] = sub_100825760;
        v24[3] = &unk_1024750B8;
        v21 = *(a2 + 8);
        v24[4] = *a2;
        v25 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [v20 queryElevationsFromDate:v16 toDate:v17 withBatchSize:v19 fromRecordId:v18 withReply:v24];

        if (v25)
        {
          sub_100008080(v25);
        }

        sub_10001A420(buf);
      }

      else
      {
        v28 = CMErrorMessage;
        v29 = &off_10254EFD8;
        [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        CLConnectionMessage::sendReply();
      }
    }

    else
    {
      if (qword_1025D4310 != -1)
      {
        sub_10194AE44();
      }

      v15 = qword_1025D4318;
      if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "Programmer error: Wrong parameters were passed.", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10194AE58(buf);
        v26[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4318, 17, "Programmer error: Wrong parameters were passed.", v26, 2);
        v23 = v22;
        sub_100152C7C("Generic", 1, 0, 0, "void CLElevationSubscription::handleMessageElevationProfileQuery(std::shared_ptr<CLConnectionMessage>)", "%s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      v30 = CMErrorMessage;
      v31 = &off_10254EFD8;
      [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      CLConnectionMessage::sendReply();
    }
  }

  else
  {
    v33 = CMErrorMessage;
    v34 = [NSNumber numberWithUnsignedInt:v27];
    [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    CLConnectionMessage::sendReply();
  }
}

uint64_t sub_100825264(uint64_t result, uint64_t a2, int *a3, uint64_t a4)
{
  v4 = result;
  v5 = *a3;
  if (*a3 == 3 || v5 == 7)
  {
    v7 = [[CMSignificantElevationSample alloc] initWithFilteredElevation:a4];
    v10 = CMFilteredElevationKeySample;
    v11 = v7;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];

    sub_10082540C(v4, &v9);
  }

  if (v5 == 6)
  {
    v8 = [[CMSignificantElevationSample alloc] initWithSignificantElevation:a4];
    v12 = CMSignificantElevationKeySample;
    v13 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

    sub_100825388(v4, &v9);
  }

  return result;
}

void sub_1008253F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100825478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100825490(uint64_t a1, int *a2)
{
  v4 = sub_100275B0C(a1);
  if (v4)
  {
    sub_10001A3E8(v4, v5);
    v6 = sub_10001CF3C();
    if (v6)
    {
      sub_10000EC00(&__p, "com.apple.locationd.natalimetry");
      v7 = sub_1001C2F40(a1);
      v8 = v7;
      if (v12 < 0)
      {
        operator delete(__p);
        if ((v8 & 1) == 0)
        {
LABEL_13:
          v9 = 110;
          goto LABEL_14;
        }
      }

      else if ((v7 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((sub_100177B18(v6) & 0x10) == 0)
    {
LABEL_12:
      v9 = 109;
      goto LABEL_14;
    }

    if (sub_1004D2ECC(*(a1 + 8)))
    {
      return 1;
    }

    goto LABEL_12;
  }

  v9 = 111;
LABEL_14:
  result = 0;
  *a2 = v9;
  return result;
}

void sub_100825550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008255E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082567C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100825694(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CMSignificantElevationKeySample;
    v4 = a2;
    [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
  }

  else
  {
    v5 = CMErrorMessage;
    v6 = &off_10254EFA8;
    [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  return CLConnectionMessage::sendReply();
}

void sub_100825760(uint64_t a1, void *a2, unsigned int a3, unsigned int a4)
{
  if (a2)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0];
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(a2);
          }

          v10 = *(8 * i);
          v11 = [CMAbsoluteAltitudeData alloc];
          [v10 altitude];
          v13 = v12;
          [v10 accuracy];
          v15 = v14;
          [v10 precision];
          v17 = v16;
          [v10 filteredPressure];
          v19 = v18;
          v20 = [v10 statusInfo];
          [v10 timestamp];
          v22 = [v11 initWithAltitude:v20 accuracy:v13 precision:v15 filteredPressure:v17 status:v19 timestamp:v21];
          [v5 addObject:v22];
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(a2);
      }

      while (v7);
    }

    v26[0] = v5;
    v25[0] = CMElevationProfileKeyAltitudeArray;
    v25[1] = CMElevationProfileKeyLastBatch;
    v26[1] = [NSNumber numberWithBool:a3];
    v25[2] = CMElevationProfileKeyQueryFromRecordId;
    v26[2] = [NSNumber numberWithInt:a4];
    [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
    CLConnectionMessage::sendReply();
  }

  else
  {
    v27 = CMErrorMessage;
    v28 = &off_10254EFA8;
    [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    CLConnectionMessage::sendReply();
  }
}

uint64_t sub_1008259C4(uint64_t a1, _DWORD *a2)
{
  v4 = sub_100275B0C(a1);
  sub_10000EC00(__p, "com.apple.locationd.absolute_altimeter");
  v5 = sub_1001C2F40(a1);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  v6 = v4 | v5;
  if ((v6 & 1) == 0)
  {
    if (qword_1025D4310 != -1)
    {
      sub_10194AE9C();
    }

    v7 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 24);
      *__p = 138543362;
      *&__p[4] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "%{public}@ is not entitled for motion updates", __p, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194AEC4(a1);
    }

    *a2 = 111;
  }

  return v6 & 1;
}

void sub_100825AF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100825B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_100825BAC(uint64_t a1)
{
  v2 = [*(a1 + 72) arrayForKey:@"ElevationThresholds" defaultValue:0];
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, 0);
  if (result)
  {
    v4 = result;
    v5 = MEMORY[0];
    do
    {
      v6 = 0;
      do
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(8 * v6) floatValue];
        [*(a1 + 56) registerClient:*(a1 + 64) forElevationThreshold:{1.79769313e308, v7}];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v2);
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_100825D30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100825DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100825E2C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100825EAC(uint64_t a1)
{
  sub_1008266A4(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_100825FA0(uint64_t a1, double **a2)
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

uint64_t sub_100825FCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1008260A0(uint64_t a1, double **a2)
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

uint64_t sub_1008260F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008261D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008262C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100826368(uint64_t a1, uint64_t a2)
{
  *a2 = off_102475388;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100826398(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *a3 = 0uLL;
  sub_100826444(a1 + 8, a2, &v3);
  if (*(&v3 + 1))
  {
    sub_100008080(*(&v3 + 1));
  }
}

void sub_1008263E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1008263F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100826444(uint64_t a1, uint64_t a2, CLConnectionMessage **a3)
{
  v6 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a3, v6);
  sub_100005548(v15, DictionaryOfClasses);
  v14 = 0;
  if (sub_10001CB4C(v15, "kCLConnectionMessageSubscribeKey", &v14, 0xFFFFFFFFLL))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v14, v15);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_10194AFC4();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_10194AFC4();
      }
    }

    v12 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't get value for kCLConnectionMessageSubscribeKey key", "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
    }
  }

  return sub_100005DA4();
}

uint64_t sub_1008266A4(uint64_t a1)
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

__n128 sub_100826780(uint64_t a1, uint64_t a2)
{
  *a2 = off_102475438;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1008267B0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v7, &v8);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_100826850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100826874(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008268C0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      sub_10082693C(a1, a2, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **sub_10082693C(void *a1, uint64_t *a2, uint64_t a3)
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
    sub_100826B98();
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

void sub_100826B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100826C14(va);
  _Unwind_Resume(a1);
}

char **sub_100826C14(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100826D70(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_100826C60(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_100826CD8((__dst + 24), a2 + 24);
  return __dst;
}

void sub_100826CBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100826CD8(uint64_t a1, uint64_t a2)
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

void sub_100826D70(uint64_t a1)
{
  sub_1008266A4(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_100826DC0(uint64_t a1)
{
  sub_100826DFC(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100826DFC(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_100826D70((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_100826E40()
{
  qword_10265A488 = off_102475188;
  qword_10265A4A0 = &qword_10265A488;
  __cxa_atexit(sub_1003EE78C, &qword_10265A488, dword_100000000);
  qword_10265A4A8 = off_102475208;
  qword_10265A4C0 = &qword_10265A4A8;
  __cxa_atexit(sub_1003EE78C, &qword_10265A4A8, dword_100000000);
  qword_10265A4C8 = off_102475288;
  qword_10265A4E0 = &qword_10265A4C8;
  __cxa_atexit(sub_1003EE790, &qword_10265A4C8, dword_100000000);
  qword_10265A4E8 = off_102475308;
  qword_10265A500 = &qword_10265A4E8;

  return __cxa_atexit(sub_1003EE790, &qword_10265A4E8, dword_100000000);
}

uint64_t sub_1008270C4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1008278F4;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_10265A528 != -1)
  {
    dispatch_once(&qword_10265A528, block);
  }

  return qword_1026372C8;
}

void sub_10082731C(id a1)
{
  sub_10001A3E8(a1, v1);
  if (sub_10001CF3C())
  {
    byte_10265A518 = 1;
  }
}

const void *sub_100827348(const void *a1, void *a2)
{
  v3 = sub_1008274F8(a1, "CLWatchOrientationSettingsNotifier", a2);
  *v3 = off_102475518;
  sub_1008275A4(v3);
  sub_1008277E8(a1);
  if (qword_1025D4200 != -1)
  {
    sub_10194B1A8();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Watch Orientation,Orientation Notifier Instantiated", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194B1BC(buf);
    v8[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4208, 2, "Watch Orientation,Orientation Notifier Instantiated", v8, 2);
    v7 = v6;
    sub_100152C7C("Generic", 1, 0, 2, "CLWatchOrientationSettingsNotifier::CLWatchOrientationSettingsNotifier(id<CLIntersiloUniverse>)", "%s\n", v6);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  return a1;
}

uint64_t sub_1008274F8(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_1024756C0;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_100827588(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008275A4(uint64_t a1)
{
  v14 = 0;
  v2 = sub_1004E8644(@"invertUI", @"com.apple.nano", &v14);
  if (v14)
  {
    v3 = v2 == 0;
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_10194B200();
    }

    v4 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Watch Orientation,Crown orientation setting key is invalid, defaulting to crown on right (not inverted)", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10194B228();
    }

    v3 = 1;
  }

  *(a1 + 116) = v3;
  v5 = (a1 + 116);
  v14 = 0;
  v6 = sub_1004E8644(@"wornOnRightArm", @"com.apple.nano", &v14);
  if (v14)
  {
    v7 = v6 != 0;
  }

  else
  {
    if (qword_1025D4200 != -1)
    {
      sub_10194B200();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "Watch Orientation,Wrist orientation setting key is invalid, defaulting to left wrist", buf, 2u);
    }

    v9 = sub_10000A100(121, 0);
    v7 = 0;
    if (v9)
    {
      sub_10194B314();
      v7 = 0;
    }
  }

  *(a1 + 112) = v7;
  v10 = (a1 + 112);
  if (qword_1025D4200 != -1)
  {
    sub_10194B200();
  }

  v11 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *v5;
    v13 = *v10;
    *buf = 67240448;
    v16 = v12;
    v17 = 1026;
    v18 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "Watch Orientation,crown,%{public}d,wrist,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194B400(v5, v10);
  }
}

void sub_1008277E8(const void *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100827F98, @"com.apple.nano.invertUIChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  CFNotificationCenterAddObserver(DarwinNotifyCenter, a1, sub_100827F98, @"com.apple.nano.wristOrientationChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

uint64_t sub_100827870(uint64_t a1)
{
  *a1 = off_1024756C0;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100827964(void *a1)
{
  *a1 = off_102475518;
  sub_1008279F8(a1);

  return sub_100827870(a1);
}

void sub_1008279C0(void *a1)
{
  sub_100827964(a1);

  operator delete();
}

void sub_1008279F8(_BYTE *a1)
{
  if (qword_1025D4200 != -1)
  {
    sub_10194B1A8();
  }

  v2 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Watch Orientation,Orientation Notifier is shutting down.", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10194B51C();
  }

  sub_100827AA0(a1);
  a1[108] = 1;
}

void sub_100827AA0(const void *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.nano.invertUIChangedNotification", 0);

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, a1, @"com.apple.nano.wristOrientationChangedNotification", 0);
}

uint64_t sub_100827B7C(void *a1, int *a2)
{
  if (qword_1025D4200 != -1)
  {
    sub_10194B1A8();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v14[0] = *a2;
    v5 = v14[0];
    v6 = sub_10000608C(a1, v14, 1);
    *buf = 67109376;
    *&buf[4] = v5;
    LOWORD(v18) = 1024;
    *(&v18 + 2) = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Watch Orientation,Added client for %d, count %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4200 != -1)
    {
      sub_10194B200();
    }

    v8 = qword_1025D4208;
    v9 = *a2;
    v13 = v9;
    v10 = sub_10000608C(a1, &v13, 1);
    v14[0] = 67109376;
    v14[1] = v9;
    v15 = 1024;
    v16 = v10;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v8, 2, "Watch Orientation,Added client for %d, count %d", v14, 14);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWatchOrientationSettingsNotifier::registerForNotificationInternal(const CLWatchOrientationSettingsNotifier_Type::Notification &)", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  v19 = 0;
  v20 = 0;
  *buf = a1[14];
  v18 = 0;
  v14[0] = 0;
  (*(*a1 + 152))(a1, v14, buf, 1, 0xFFFFFFFFLL, 0);
  return 1;
}

uint64_t sub_100827DB0(uint64_t a1, int *a2)
{
  if (qword_1025D4200 != -1)
  {
    sub_10194B1A8();
  }

  v4 = qword_1025D4208;
  if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEBUG))
  {
    v14[0] = *a2;
    v5 = v14[0];
    v6 = sub_10000608C(a1, v14, 1);
    *buf = 67109376;
    v18 = v5;
    v19 = 1024;
    v20 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Watch Orientation,Removed client for %d, count %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4200 != -1)
    {
      sub_10194B200();
    }

    v8 = qword_1025D4208;
    v9 = *a2;
    v13 = v9;
    v10 = sub_10000608C(a1, &v13, 1);
    v14[0] = 67109376;
    v14[1] = v9;
    v15 = 1024;
    v16 = v10;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v8, 2, "Watch Orientation,Removed client for %d, count %d", v14, 14);
    v12 = v11;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWatchOrientationSettingsNotifier::unregisterForNotificationInternal(const CLWatchOrientationSettingsNotifier_Type::Notification &)", "%s\n", v11);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  return 1;
}

void sub_100827F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10194B608();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 1;
    v10 = _os_activity_create(dword_100000000, "CL: CLWatchOrientationSettingsNotifier::onOrientationSettingsChanged", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v10, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10194B61C();
    }

    v11 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "activity";
      v22 = 2050;
      v23 = a2;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLWatchOrientationSettingsNotifier::onOrientationSettingsChanged, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v15 = 0;
  }

  v12 = [*(a2 + 32) silo];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100829AF4;
  v13[3] = &unk_10244FF80;
  v13[4] = a2;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = a5;
  [v12 sync:v13];
  if (v15 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_100828284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1008282B4(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102475810;
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

void sub_100828398(_BYTE *result, void *a2)
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
        sub_10194B608();
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
        sub_10194B644(result, a2);
      }
    }
  }
}