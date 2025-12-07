uint64_t sub_100195A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 96);
  if (v3 != 11 && v3 != 4)
  {
    return 0;
  }

  result = 0;
  if (*(a3 + 96) == 10 && *(a3 + 20) > 0.0)
  {
    if (vabdd_f64(*(a2 + 76), *(a3 + 76)) >= 6.0 || sub_10018E7E0(a2) && *(a3 + 36) > *(a2 + 36))
    {
      return 0;
    }

    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v9 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      v10 = *(a2 + 96);
      v15 = 68289282;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1026;
      v20 = v10;
      v11 = v9;
      v12 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v13 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return 1;
      }

      v14 = *(a2 + 96);
      v15 = 68289282;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 1026;
      v20 = v14;
      v11 = v13;
      v12 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(dword_100000000, v11, v12, "{msg%{public}.0s:#GnssAssistancePosition, Ignoring location assistance, recentGoodPipeline, location.type:%{public}d}", &v15, 0x18u);
    return 1;
  }

  return result;
}

uint64_t sub_100195BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 96) & 0xFFFFFFFE) != 6)
  {
    return 0;
  }

  v4 = *(a3 + 96);
  if (v4 == 4 || v4 == 11)
  {
    if (*(a3 + 84) >= 0x45u)
    {
      goto LABEL_11;
    }

    return 0;
  }

  v6 = 0;
  if (v4 == 10 && *(a3 + 84) > 0x44u)
  {
LABEL_11:
    if (*(a3 + 20) > 0.0 && vabdd_f64(*(a2 + 76), *(a3 + 76)) < 1.0)
    {
      if (*(a1 + 11768) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_100244280();
        }

        v7 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          return 1;
        }

        v8 = *(a2 + 96);
        v14 = 68289282;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 1026;
        v19 = v8;
        v9 = v7;
        v10 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_100244280();
        }

        v12 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          return 1;
        }

        v13 = *(a2 + 96);
        v14 = 68289282;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        v18 = 1026;
        v19 = v13;
        v9 = v12;
        v10 = OS_LOG_TYPE_DEBUG;
      }

      _os_log_impl(dword_100000000, v9, v10, "{msg%{public}.0s:#GnssAssistancePosition, Ignoring location assistance, recentGoodWifi, location.type:%{public}d}", &v14, 0x18u);
      return 1;
    }

    return 0;
  }

  return v6;
}

BOOL sub_100195DDC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 20);
  v7 = v6 > 0.0;
  if (v6 <= 0.0)
  {
    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v8 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      v9 = *(a2 + 20);
      v48 = 68289282;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2050;
      v53 = v9;
      v10 = v8;
      v11 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v12 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_12;
      }

      v13 = *(a2 + 20);
      v48 = 68289282;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2050;
      v53 = v13;
      v10 = v12;
      v11 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(dword_100000000, v10, v11, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, horizontal accuracy:%{public}f}", &v48, 0x1Cu);
LABEL_12:
    v6 = *(a2 + 20);
  }

  if (v6 <= 200000.0)
  {
    goto LABEL_25;
  }

  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v14 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    v15 = *(a2 + 20);
    v48 = 68289538;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 2050;
    v53 = v15;
    v54 = 2050;
    v55 = 0x41086A0000000000;
    v16 = v14;
    v17 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v18 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    v19 = *(a2 + 20);
    v48 = 68289538;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 2050;
    v53 = v19;
    v54 = 2050;
    v55 = 0x41086A0000000000;
    v16 = v18;
    v17 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(dword_100000000, v16, v17, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, horizontalAccuracy:%{public}f, maximumAccuracy:%{public}f}", &v48, 0x26u);
LABEL_24:
  v7 = 0;
LABEL_25:
  if (a3 >= 0.0)
  {
    goto LABEL_37;
  }

  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v20 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    v48 = 68289026;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v21 = v20;
    v22 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v23 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_36;
    }

    v48 = 68289026;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v21 = v23;
    v22 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(dword_100000000, v21, v22, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, age < 0}", &v48, 0x12u);
LABEL_36:
  v7 = 0;
LABEL_37:
  if (!sub_10002807C(*(a2 + 4), *(a2 + 12)))
  {
    goto LABEL_49;
  }

  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v24 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_48;
    }

    v48 = 68289026;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v25 = v24;
    v26 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v27 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_48;
    }

    v48 = 68289026;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v25 = v27;
    v26 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(dword_100000000, v25, v26, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location,null island}", &v48, 0x12u);
LABEL_48:
  v7 = 0;
LABEL_49:
  if (fabs(*(a2 + 4)) <= 90.0)
  {
    goto LABEL_61;
  }

  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v28 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_60;
    }

    v29 = *(a2 + 4);
    v48 = 68289283;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 2053;
    v53 = v29;
    v30 = v28;
    v31 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v32 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_60;
    }

    v33 = *(a2 + 4);
    v48 = 68289283;
    v49 = 0;
    v50 = 2082;
    v51 = "";
    v52 = 2053;
    v53 = v33;
    v30 = v32;
    v31 = OS_LOG_TYPE_DEBUG;
  }

  _os_log_impl(dword_100000000, v30, v31, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, latitude:%{sensitive}.7f}", &v48, 0x1Cu);
LABEL_60:
  v7 = 0;
LABEL_61:
  if (fabs(*(a2 + 12)) > 180.0)
  {
    if (*(a1 + 11768) == 1)
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v34 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_72;
      }

      v35 = *(a2 + 12);
      v48 = 68289283;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2053;
      v53 = v35;
      v36 = v34;
      v37 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_1001A7560();
      }

      v38 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_72;
      }

      v39 = *(a2 + 12);
      v48 = 68289283;
      v49 = 0;
      v50 = 2082;
      v51 = "";
      v52 = 2053;
      v53 = v39;
      v36 = v38;
      v37 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(dword_100000000, v36, v37, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, longitude:%{sensitive}.7f}", &v48, 0x1Cu);
LABEL_72:
    v7 = 0;
  }

  if (*(a2 + 36) > 0.0)
  {
    v40 = *(a2 + 28);
    if (v40 < -450.0 || v40 > 8850.0)
    {
      if (*(a1 + 11768) == 1)
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v41 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          return 0;
        }

        v42 = *(a2 + 28);
        v48 = 68289283;
        v49 = 0;
        v50 = 2082;
        v51 = "";
        v52 = 2053;
        v53 = v42;
        v43 = v41;
        v44 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_1001A7560();
        }

        v45 = qword_1025D4658;
        if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          return 0;
        }

        v46 = *(a2 + 28);
        v48 = 68289283;
        v49 = 0;
        v50 = 2082;
        v51 = "";
        v52 = 2053;
        v53 = v46;
        v43 = v45;
        v44 = OS_LOG_TYPE_DEBUG;
      }

      _os_log_impl(dword_100000000, v43, v44, "{msg%{public}.0s:#GnssAssistancePosition, #Warning invalid assistance location, altitude:%{sensitive}.2f}", &v48, 0x1Cu);
      return 0;
    }
  }

  return v7;
}

uint64_t sub_100196658(uint64_t a1)
{
  v2 = sub_1000081AC();
  if (vabdd_f64(v2, *(a1 + 4640)) > 10.0)
  {
    return 0;
  }

  if (*(a1 + 4682) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v5 = qword_1025D4658;
    v3 = 1;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 4682);
      v7 = *(a1 + 4656);
      v13 = 68289795;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v6;
      v19 = 2053;
      v20 = v7;
      v21 = 2053;
      v22 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#GnssAssistancePosition, TBA, isTunnel:%{public}d, lat:%{sensitive}.7f, lon:%{sensitive}.7f}", &v13, 0x2Cu);
    }
  }

  else
  {
    v8 = *(a1 + 11760);
    if (v8 <= 0.0)
    {
      return 0;
    }

    v9 = vabdd_f64(v2, v8);
    v10 = *(a1 + 4680) == 1 && v9 < 10.0;
    if (!v10 || *(a1 + 11652) > 1u)
    {
      return 0;
    }

    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 11652);
      v13 = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 1026;
      v18 = v12;
      v19 = 2050;
      v20 = v9;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition,TBA,Current location close to tunnel, gnssContent:%{public}d, gnssContentAge:%{public}.1f}", &v13, 0x22u);
    }

    return 1;
  }

  return v3;
}

uint64_t sub_100196860(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 84);
  v5 = *(a2 + 96);
  if (!v5 && (*(a2 + 516) & 1) != 0)
  {
    if (*(a1 + 11768))
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v6 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        return v4;
      }

      v29 = 68289026;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v7 = v6;
      v8 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v17 = qword_1025D4658;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return v4;
      }

      v29 = 68289026;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v7 = v17;
      v8 = OS_LOG_TYPE_DEBUG;
    }

    _os_log_impl(dword_100000000, v7, v8, "{msg%{public}.0s:#GnssAssistancePosition, adjust,TEPA confidence}", &v29, 0x12u);
    return v4;
  }

  if (!*(a1 + 11768))
  {
    if (v5 != 4 || *(a2 + 20) <= 0.0 || v4 < 0x46)
    {
      return v4;
    }

    if (sub_100072814(a1 + 6456))
    {
      v14 = *(a1 + 6476);
      sub_1001097CC((a1 + 11656), a2, a1 + 6456);
      v16 = v15;
      if (v15 >= 0.0 && v15 <= v14)
      {
        return v4;
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v24 = qword_1025D4658;
      v16 = -1.0;
      v14 = -1.0;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_42;
      }

      v29 = 68289026;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition, No previous cell location stored}", &v29, 0x12u);
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

LABEL_42:
    v25 = qword_1025D4658;
    v18 = 69;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return v18;
    }

    v29 = 68290050;
    v31 = 2082;
    v30 = 0;
    v32 = "";
    v33 = 2050;
    *v34 = v16;
    *&v34[8] = 2050;
    v35 = v14;
    v36 = 1026;
    v37 = v4;
    v38 = 1026;
    v39 = 69;
    v21 = "{msg%{public}.0s:#GnssAssistancePosition, distFromWifiToCellOrLAC:%{public}f, crossCheckThreshold:%{public}f, confPrior:%{public}d, reducedConf:%{public}d}";
    v22 = v25;
    v23 = OS_LOG_TYPE_DEBUG;
    v26 = 50;
LABEL_49:
    _os_log_impl(dword_100000000, v22, v23, v21, &v29, v26);
    return v18;
  }

  v9 = v5 > 0xA;
  v10 = (1 << v5) & 0x450;
  if (v9 || v10 == 0)
  {
    goto LABEL_32;
  }

  if (!sub_100072814(a2))
  {
    if ((*(a1 + 11768) & 1) == 0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_100244280();
      }

      v27 = qword_1025D4658;
      v18 = 0xFFFFFFFFLL;
      if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        return v18;
      }

      v28 = *(a2 + 96);
      v29 = 68289794;
      v30 = 0;
      v31 = 2082;
      v32 = "";
      v33 = 1026;
      *v34 = v28;
      *&v34[4] = 1026;
      *&v34[6] = v4;
      LOWORD(v35) = 1026;
      *(&v35 + 2) = -1;
      v21 = "{msg%{public}.0s:#GnssAssistancePosition, invalid assistance during emergency, location type:%{public}d, conf:%{public}d, reduced conf:%{public}d}";
      v22 = v27;
      v23 = OS_LOG_TYPE_DEBUG;
LABEL_48:
      v26 = 36;
      goto LABEL_49;
    }

LABEL_32:
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v19 = qword_1025D4658;
    v18 = 0xFFFFFFFFLL;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      return v18;
    }

    v20 = *(a2 + 96);
    v29 = 68289794;
    v30 = 0;
    v31 = 2082;
    v32 = "";
    v33 = 1026;
    *v34 = v20;
    *&v34[4] = 1026;
    *&v34[6] = v4;
    LOWORD(v35) = 1026;
    *(&v35 + 2) = -1;
    v21 = "{msg%{public}.0s:#GnssAssistancePosition, invalid assistance during emergency, location type:%{public}d, conf:%{public}d, reduced conf:%{public}d}";
    v22 = v19;
    v23 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_48;
  }

  v12 = sub_100E0EF38(a1, a2);

  return sub_100E10138(a1, v12, a2);
}

uint64_t sub_100196D1C()
{
  if (qword_1026599F0 != -1)
  {
    sub_10192A690();
  }

  v0 = word_1026599E8;
  if ((word_1026599E8 & 0x100) == 0)
  {
    v0 = sub_1001CCA30()[24];
  }

  return v0 & 1;
}

void sub_100196D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100196DB8(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v3 = *sub_1000F2B3C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_100196E8C(uint64_t **a1)
{
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v2 = a1[1];
    if (v2)
    {
      v3 = *a1;
      goto LABEL_6;
    }

LABEL_24:
    sub_10000EC00(v15, "empty");
    sub_10000EC00(__p, " ");
    v5 = sub_100A8CEF0(v15, __p);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_29:
    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    return v5;
  }

  if (!*(a1 + 23))
  {
    goto LABEL_24;
  }

  v3 = a1;
LABEL_6:
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v3 - 1;
  do
  {
    v9 = v8[v2];
    if (v9 == 58)
    {
      ++v7;
      if (v4 == 2)
      {
        v4 = 0;
        goto LABEL_20;
      }

      if (v4 != 1)
      {
        sub_10000EC00(v15, "multibyte");
        v11 = sub_100A8CEF0(v15, a1);
        goto LABEL_28;
      }

      v4 = 0;
    }

    else
    {
      v10 = v9 - 48;
      if ((v9 - 48) > 9)
      {
        if ((v9 - 65) > 5)
        {
          if ((v9 - 97) > 5)
          {
            goto LABEL_26;
          }

          v10 = v9 - 87;
        }

        else
        {
          v10 = v9 - 55;
        }
      }

      if (v10 == -1)
      {
LABEL_26:
        sub_10000EC00(v15, "nonhex");
        v11 = sub_100A8CEF0(v15, a1);
        goto LABEL_28;
      }

      v5 += v10 << v6;
      ++v4;
    }

    v6 += 4;
LABEL_20:
    --v2;
  }

  while (v2);
  if (v7 && v7 != 5)
  {
    sub_10000EC00(v15, "colons");
    v11 = sub_100A8CEF0(v15, a1);
LABEL_28:
    v5 = v11;
    goto LABEL_29;
  }

  return v5;
}

void sub_100197030(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100197070(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!sub_1001972D4(a3, v4 + 4))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!sub_1001972D4(v7 + 4, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t sub_1001970F8(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  *result = a2;
  *(result + 8) = a8;
  *(result + 16) = a9;
  *(result + 24) = a10;
  *(result + 32) = a11;
  *(result + 40) = a12;
  *(result + 48) = a3;
  *(result + 52) = a4;
  *(result + 56) = a5;
  *(result + 64) = a13;
  *(result + 76) = a6;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 92) = a7;
  return result;
}

void *sub_100197128@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100198C70(a1, a2);
  if ((a1 + 8) == result)
  {
    v9 = 0;
  }

  else
  {
    v6 = result;
    result = result[8];
    if (*(a1 + 32) != result)
    {
      v8 = *result;
      v7 = result[1];
      *(v8 + 8) = v7;
      *v7 = v8;
      --*(a1 + 40);
      operator delete(result);
      operator new();
    }

    *(a3 + 4) = *(v6 + 5);
    *(a3 + 20) = v6[7];
    v9 = 1;
  }

  *a3 = v9;
  return result;
}

void *sub_1001972E8(uint64_t **a1, void *a2, void *a3)
{
  v3 = *sub_100197070(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_10019737C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 104);
  if (!v3 || !sub_100023B68(v3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_10000EC00(&v7, "No connection to database when attempting to open transaction.");
    std::runtime_error::runtime_error(exception, &v7);
    exception->__vftable = &off_1024472C0;
  }

  v5 = *(a1 + 104);

  sub_10019765C(v5, a2);
}

void sub_100197448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_100197480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  (*(*a3 + 16))(a3);
  *(a1 + 24) = 256;
  *(a1 + 32) = std::uncaught_exceptions();
  if (a2)
  {
    sub_10019754C(a1);
  }

  else
  {
    sub_101A59214();
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Shared/Utilities/CLSqliteTransaction.mm", 24, "CLSqliteTransaction");
    __break(1u);
  }
}

uint64_t sub_10019754C(sqlite3 **a1)
{
  result = sqlite3_exec(*a1, "BEGIN EXCLUSIVE TRANSACTION", 0, 0, 0);
  if (result)
  {
    if (qword_1025D4850 != -1)
    {
      sub_101A593DC();
    }

    v3 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#sqlitetransaction, begin exclusive transaction failed", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A593F0();
    }

    sub_100CD531C(a1, *a1, v6);
    exception = __cxa_allocate_exception(0x48uLL);
    sub_100CD55B0(exception, v6);
  }

  return result;
}

void sub_10019765C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_10000EC00(&v5, "No valid connection to CLSqliteDatabase database.");
    std::runtime_error::runtime_error(exception, &v5);
    exception->__vftable = &off_1024472C0;
  }

  v3 = *(a1 + 16);

  sub_100197658(a2, v2, v3);
}

void sub_100197718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_100197750@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  for (i = a2[151]; i; i = *i)
  {
    v10 = i[2];
    v7 = sub_10019D138(a1, &v10);
    if (!v7)
    {
      sub_1000432E8("unordered_map::at: key not found");
    }

    sub_10019E848((i + 3), *(v7 + 14), *(v7 + 16), *(v7 + 10));
  }

  v8 = a2[412];
  v10 = a2[805];
  sub_10019E7C4(v8, &v10);
  return sub_100102FB8(a3, a2);
}

void *sub_1001977F0(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_10018D3FC(a2);
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
    sub_10019E8A4();
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

  if (!sub_100195A00(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_100197A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1002E4F74(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100197A50(uint64_t a1)
{
  sub_100197A88(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100197A88(uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_100197AE4(uint64_t **a1, void *a2, void *a3, __int128 *a4)
{
  v4 = *sub_100197070(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_100197BD4(uint64_t **a1, void *a2, void *a3, _OWORD *a4)
{
  v4 = *sub_100197070(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_100197C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001970F8(a2, *a1, *(a1 + 184), *(a1 + 180), *(a1 + 192), *(a1 + 176), *(a1 + 196), *(a1 + 12), *(a1 + 20), *(a1 + 36), *(a1 + 28), *(a1 + 44), *(a1 + 84));
  *(a2 + 88) = 0;
  return result;
}

void sub_100197CEC(uint64_t a1, void *a2)
{
  if (*(a1 + 16))
  {
    v2 = a2 + 1;
    v3 = *a2;
    if (*a2 != a2 + 1)
    {
      v5 = a1 + 8;
      do
      {
        if (v5 != sub_100198C70(a1, v3 + 4))
        {
          v6 = sub_1002F75C0(a1, v3 + 4);
          v8 = v6[1];
          v7 = v6[2];
          v9 = v6[4];
          v3[6] = v8;
          v3[7] = v7;
          v3[9] = v9;
          if (qword_1025D4620 != -1)
          {
            sub_1018BDFE8();
          }

          v10 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            v11 = *(a1 + 16);
            sub_10018F0D0(&__p);
            p_p = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_p = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 134219011;
            v30 = v11;
            v31 = 2081;
            v32 = p_p;
            v33 = 2053;
            v34 = v8;
            v35 = 2053;
            v36 = v7;
            v37 = 2049;
            v38 = v9;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "#Warning, WifiCentroidOverrides (size %lu), overrode %{private}s centroid with latlon %{sensitive}.7f, %{sensitive}.7f, acc %{private}.1f", buf, 0x34u);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_1018BDFE8();
            }

            v16 = qword_1025D4628;
            v17 = *(a1 + 16);
            sub_10018F0D0(&v22);
            v18 = &v22;
            if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v18 = v22.__r_.__value_.__r.__words[0];
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 134219011;
            *(__p.__r_.__value_.__r.__words + 4) = v17;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2081;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v18;
            HIWORD(__p.__r_.__value_.__r.__words[2]) = 2053;
            v24 = v8;
            v25 = 2053;
            v26 = v7;
            v27 = 2049;
            v28 = v9;
            LODWORD(v21) = 52;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v16, 0, "#Warning, WifiCentroidOverrides (size %lu), overrode %{private}s centroid with latlon %{sensitive}.7f, %{sensitive}.7f, acc %{private}.1f", &__p, v21);
            v20 = v19;
            if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v22.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiCentroidDefaultsWriteOverrides::overrideMacCentroidsIfPossible(std::map<CLMacAddress, CLWifiAPLocation> &)", "%s\n", v20);
            if (v20 != buf)
            {
              free(v20);
            }
          }
        }

        v13 = v3[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v3[2];
            v15 = *v14 == v3;
            v3 = v14;
          }

          while (!v15);
        }

        v3 = v14;
      }

      while (v14 != v2);
    }
  }
}

void sub_100197FEC(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v6 = a2[1];
  if (*a2 == v6)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    sub_100198BF4(a4, (v6 - *a2) >> 3);
    (*(**result + 16))(&v97);
    v10 = *a2;
    if (a2[1] != *a2)
    {
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        if (&v103 != sub_100198C70(&v102, (v10 + v12)))
        {
          v14 = sub_1002F75C0(&v102, (v10 + v12));
          v15 = *a4 + v11;
          if (*(v15 + 20) == 1)
          {
            v16 = *v14;
            *(v15 + 8) = *(v14 + 8);
            *v15 = v16;
            *(v15 + 12) = *(v14 + 12);
          }

          else
          {
            v17 = *v14;
            *(v15 + 16) = *(v14 + 16);
            *v15 = v17;
            *(v15 + 20) = 1;
          }
        }

        ++v13;
        v10 = *a2;
        v12 += 8;
        v11 += 24;
      }

      while (v13 < (a2[1] - *a2) >> 3);
    }

    if (qword_1025D4630 != -1)
    {
      sub_101B582DC();
    }

    v18 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v19 = (a2[1] - *a2) >> 3;
      *buf = 67240960;
      *&buf[4] = v19;
      v113 = 1026;
      v114 = v104;
      v115 = 1026;
      v116 = v101;
      v117 = 1026;
      v118 = v99;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "#wifitilecentroids, read cache, %{public}d, in_tiles, %{public}d, not_in_tiles, %{public}d, not_found, %{public}d", buf, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B58304(buf);
      v72 = (a2[1] - *a2) >> 3;
      LODWORD(__src) = 67240960;
      HIDWORD(__src) = v72;
      LOWORD(v110) = 1026;
      *(&v110 + 2) = v104;
      HIWORD(v110) = 1026;
      LODWORD(v111[0]) = v101;
      WORD2(v111[0]) = 1026;
      *(v111 + 6) = v99;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "#wifitilecentroids, read cache, %{public}d, in_tiles, %{public}d, not_in_tiles, %{public}d, not_found, %{public}d", &__src, 26);
      v74 = v73;
      sub_100152C7C("Generic", 1, 0, 2, "std::vector<std::optional<std::tuple<CLTilesManager_Type::AccessPointEntry, WifiTileXY>>> CLWifiTileCacheLogic::findCentroids(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, const CLIWifiTileSearchDelegate *) const", "%s\n", v73);
      if (v74 != buf)
      {
        free(v74);
      }
    }

    v84 = result;
    __src = 0;
    v110 = 0;
    v111[0] = 0;
    __p = 0;
    v95 = 0;
    v96 = 0;
    v20 = *a2;
    if (a2[1] != *a2)
    {
      v21 = 0;
      v22 = 0;
      do
      {
        if (&v98 != sub_100198C70(&v97, (v20 + v21)))
        {
          v23 = v110;
          if (v110 >= v111[0])
          {
            v25 = __src;
            v26 = v110 - __src;
            v27 = (v110 - __src) >> 3;
            v28 = v27 + 1;
            if ((v27 + 1) >> 61)
            {
              sub_10028C64C();
            }

            v29 = v111[0] - __src;
            if ((v111[0] - __src) >> 2 > v28)
            {
              v28 = v29 >> 2;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFF8)
            {
              v30 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              sub_1000B9708(&__src, v30);
            }

            v31 = (8 * v27);
            v32 = *(v20 + 8 * v22);
            v33 = &v31[-((v110 - __src) >> 3)];
            *v31 = v32;
            v24 = (v31 + 1);
            memcpy(v33, v25, v26);
            v34 = __src;
            __src = v33;
            v110 = v24;
            v111[0] = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v110 = *(v20 + 8 * v22);
            v24 = v23 + 8;
          }

          v110 = v24;
          v35 = v95;
          if (v95 >= v96)
          {
            v37 = __p;
            v38 = v95 - __p;
            v39 = (v95 - __p) >> 2;
            v40 = v39 + 1;
            if ((v39 + 1) >> 62)
            {
              sub_10028C64C();
            }

            v41 = v96 - __p;
            if ((v96 - __p) >> 1 > v40)
            {
              v40 = v41 >> 1;
            }

            v42 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
            v43 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v42)
            {
              v43 = v40;
            }

            if (v43)
            {
              sub_1000B85D0(&__p, v43);
            }

            *(4 * v39) = v22;
            v36 = 4 * v39 + 4;
            memcpy(0, v37, v38);
            v44 = __p;
            __p = 0;
            v95 = v36;
            v96 = 0;
            if (v44)
            {
              operator delete(v44);
            }
          }

          else
          {
            *v95 = v22;
            v36 = (v35 + 4);
          }

          v95 = v36;
        }

        ++v22;
        v20 = *a2;
        v21 += 8;
      }

      while (v22 < (a2[1] - *a2) >> 3);
      if (__src != v110)
      {
        (*(*a3 + 16))(&v92, a5);
        v45 = v92;
        if (0xAAAAAAAAAAAAAAABLL * ((v93 - v92) >> 3) != (v110 - __src) >> 3)
        {
          sub_101B58348();
          abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Wifi1/CLWifiTileCacheLogic.mm", 83, "findCentroids");
          __break(1u);
        }

        v89 = 0;
        v90 = 0;
        v91 = 0;
        v87 = 0;
        v88 = 0;
        v86 = &v87;
        if (v93 != v92)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          do
          {
            v49 = __src + v47;
            v50 = &v45[v46];
            v51 = v45[v46 + 20];
            if (v51)
            {
              v52 = *a4 + 24 * *(__p + v48);
              if (*(v52 + 20) == v51)
              {
                if (*(v52 + 20))
                {
                  v53 = *v50;
                  *(v52 + 8) = *(v50 + 4);
                  *v52 = v53;
                  *(v52 + 12) = *&v45[v46 + 12];
                }
              }

              else if (*(v52 + 20))
              {
                *(v52 + 20) = 0;
              }

              else
              {
                v62 = *v50;
                *(v52 + 16) = *(v50 + 4);
                *v52 = v62;
                *(v52 + 20) = 1;
              }

              *buf = v49;
              v63 = sub_1011A43B0(&v86, v49, &unk_101C66300, buf);
              v64 = *v50;
              *(v63 + 48) = *(v50 + 4);
              *(v63 + 40) = v64;
              *(v63 + 52) = *&v45[v46 + 12];
            }

            else
            {
              v54 = v90;
              if (v90 >= v91)
              {
                v56 = v89;
                v57 = v90 - v89;
                v58 = (v90 - v89) >> 3;
                v59 = v58 + 1;
                if ((v58 + 1) >> 61)
                {
                  sub_10028C64C();
                }

                v60 = v91 - v89;
                if ((v91 - v89) >> 2 > v59)
                {
                  v59 = v60 >> 2;
                }

                v42 = v60 >= 0x7FFFFFFFFFFFFFF8;
                v61 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v42)
                {
                  v61 = v59;
                }

                if (v61)
                {
                  sub_1000B9708(&v89, v61);
                }

                *(8 * v58) = *v49;
                v55 = 8 * v58 + 8;
                memcpy(0, v56, v57);
                v65 = v89;
                v89 = 0;
                v90 = v55;
                v91 = 0;
                if (v65)
                {
                  operator delete(v65);
                }
              }

              else
              {
                *v90 = *v49;
                v55 = (v54 + 8);
              }

              v90 = v55;
            }

            ++v48;
            v45 = v92;
            v47 += 8;
            v46 += 24;
          }

          while (v48 < 0xAAAAAAAAAAAAAAABLL * ((v93 - v92) >> 3));
        }

        if (qword_1025D4630 == -1)
        {
          v66 = v84;
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        }

        else
        {
          sub_101B582DC();
          v66 = v84;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
        }

        v68 = p_info[199];
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          *buf = 67240448;
          *&buf[4] = (v110 - __src) >> 3;
          v113 = 1026;
          v114 = v88;
          _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_INFO, "#wifitilecentroids, search tiles, searched, %{public}d, found, %{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B58304(buf);
          v75 = p_info[199];
          v105 = 67240448;
          v106 = (v110 - __src) >> 3;
          v107 = 1026;
          v108 = v88;
          LODWORD(v83) = 14;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v75, 1, "#wifitilecentroids, search tiles, searched, %{public}d, found, %{public}d", &v105, v83);
          v77 = v76;
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<std::optional<std::tuple<CLTilesManager_Type::AccessPointEntry, WifiTileXY>>> CLWifiTileCacheLogic::findCentroids(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, const CLIWifiTileSearchDelegate *) const", "%s\n", v76);
          if (v77 != buf)
          {
            free(v77);
          }

          v66 = v84;
        }

        (*(**v66 + 24))(*v66, &v89);
        (*(**v66 + 32))(*v66, &v86);
        if (qword_1025D4630 != -1)
        {
          sub_101B582DC();
        }

        v69 = p_info[199];
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          v70 = (*(**v66 + 48))();
          v71 = (*(**v66 + 56))();
          *buf = 67240448;
          *&buf[4] = v70;
          v113 = 1026;
          v114 = v71;
          _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEBUG, "#wifitilecentroids, write to cache, new size, %{public}du / %{public}du", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B58304(buf);
          v78 = p_info[199];
          v79 = (*(**v66 + 48))();
          v80 = (*(**v66 + 56))();
          v105 = 67240448;
          v106 = v79;
          v107 = 1026;
          v108 = v80;
          LODWORD(v83) = 14;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v78, 2, "#wifitilecentroids, write to cache, new size, %{public}du / %{public}du", &v105, v83);
          v82 = v81;
          sub_100152C7C("Generic", 1, 0, 2, "std::vector<std::optional<std::tuple<CLTilesManager_Type::AccessPointEntry, WifiTileXY>>> CLWifiTileCacheLogic::findCentroids(const std::vector<CLMacAddress> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, const CLIWifiTileSearchDelegate *) const", "%s\n", v81);
          if (v82 != buf)
          {
            free(v82);
          }
        }

        sub_1003C93BC(&v86, v87);
        if (v89)
        {
          v90 = v89;
          operator delete(v89);
        }

        if (v92)
        {
          v93 = v92;
          operator delete(v92);
        }
      }
    }

    if (__p)
    {
      v95 = __p;
      operator delete(__p);
    }

    if (__src)
    {
      v110 = __src;
      operator delete(__src);
    }

    sub_1003C93BC(&v102, v103);
    sub_1003C93BC(v100, v100[1]);
    sub_1003C93BC(&v97, v98);
  }
}

void sub_100198B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  sub_1003C93BC(&a16, a17);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a22)
  {
    a23 = a22;
    operator delete(a22);
  }

  if (a25)
  {
    a26 = a25;
    operator delete(a25);
  }

  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  sub_1011A4368(&a28);
  v42 = *v40;
  if (*v40)
  {
    *(v40 + 8) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_100198BF4(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10019E858(a1, a2);
  }

  return a1;
}

void sub_100198C54(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100198C70(uint64_t a1, void *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = sub_1001972D4((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_1001972D4(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_100198CF4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = &v23;
  v19 = &v20;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = &v17;
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 != v5)
  {
    do
    {
      sub_100197128(a1 + 8, v4, v25);
      if (v25[0] == 1)
      {
        if (v26[20] == 1)
        {
          sub_1002F7510(&v16, v4, v4, v26);
        }

        else
        {
          sub_1001972E8(&v19, v4, v4);
        }
      }

      else
      {
        sub_1001972E8(&v22, v4, v4);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  a3[1] = 0;
  v7 = a3 + 1;
  a3[2] = 0;
  a3[4] = 0;
  v8 = a3 + 4;
  *a3 = a3 + 1;
  a3[3] = a3 + 4;
  a3[5] = 0;
  a3[7] = 0;
  v9 = a3 + 7;
  a3[6] = a3 + 7;
  a3[8] = 0;
  sub_1003C93BC(a3, 0);
  v10 = v23;
  *a3 = v22;
  a3[1] = v10;
  v11 = v24;
  a3[2] = v24;
  if (v11)
  {
    v10[2] = v7;
    v22 = &v23;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    *a3 = v7;
  }

  sub_1003C93BC((a3 + 3), a3[4]);
  v12 = v20;
  a3[3] = v19;
  a3[4] = v12;
  v13 = v21;
  a3[5] = v21;
  if (v13)
  {
    v12[2] = v8;
    v19 = &v20;
    v20 = 0;
    v21 = 0;
  }

  else
  {
    a3[3] = v8;
  }

  sub_1003C93BC((a3 + 6), a3[7]);
  v14 = v17;
  a3[6] = v16;
  a3[7] = v14;
  v15 = v18;
  a3[8] = v18;
  if (v15)
  {
    v14[2] = v9;
    v16 = &v17;
    v17 = 0;
    v18 = 0;
    v14 = 0;
  }

  else
  {
    a3[6] = v9;
  }

  sub_1003C93BC(&v16, v14);
  sub_1003C93BC(&v19, v20);
  sub_1003C93BC(&v22, v23);
}

void sub_100198F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  sub_1003C93BC(&a9, a10);
  sub_1003C93BC(&a12, a13);
  sub_1003C93BC(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100198F4C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = *(a1 + 56);
  v32 = a1 + 56;
  (*(v10 + 16))();
  v34 = 256;
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  sub_100199830(a4, a2[2]);
  sub_100199828(*(a1 + 96), v31);
  v13 = *a2;
  v11 = a2 + 1;
  v12 = v13;
  if (v13 != v11)
  {
    while (1)
    {
      if (*(v12 + 8))
      {
        sub_101B8296C();
        abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Wifi1/CLWifiAccessPointLocationService.mm", 682, "updateAccessTimestampsIfNecessary");
        __break(1u);
      }

      v30 = *(v12 + 36);
      v14 = COERCE_DOUBLE(sub_10023FD94(*(a1 + 96), &v30));
      if ((v15 & 1) == 0)
      {
        break;
      }

      if (vabdd_f64(a5, v14) < a3)
      {
        goto LABEL_11;
      }

      v16 = sub_101077FC0(*(a1 + 96), &v30, a5);
LABEL_12:
      *buf = *(v12 + 2);
      v39 = v12[6];
      if (*(v12 + 79) < 0)
      {
        sub_100007244(&__p, v12[7], v12[8]);
      }

      else
      {
        __p = *(v12 + 7);
        v41 = v12[9];
      }

      v42 = v16;
      v18 = a4[1];
      if (v18 >= a4[2])
      {
        v21 = sub_101264C08(a4, buf);
        v22 = SHIBYTE(v41);
        a4[1] = v21;
        if (v22 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        v19 = *buf;
        *(v18 + 16) = v39;
        *v18 = v19;
        v20 = __p;
        *(v18 + 40) = v41;
        *(v18 + 24) = v20;
        v41 = 0;
        __p = 0uLL;
        *(v18 + 48) = v42;
        a4[1] = v18 + 56;
      }

      v23 = v12[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v12[2];
          v25 = *v24 == v12;
          v12 = v24;
        }

        while (!v25);
      }

      v12 = v24;
      if (v24 == v11)
      {
        goto LABEL_28;
      }
    }

    if (qword_1025D4630 != -1)
    {
      sub_101B82614();
    }

    v17 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      *buf = 67174913;
      *&buf[4] = v30;
      *&buf[8] = 1025;
      *&buf[10] = HIDWORD(v30);
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "attempted to update timestamp for tile that does not exist, x, %{private}d, y, %{private}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B82B18(buf);
      v35[0] = 67174913;
      v35[1] = v30;
      v36 = 1025;
      v37 = HIDWORD(v30);
      LODWORD(v29) = 14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 16, "attempted to update timestamp for tile that does not exist, x, %{private}d, y, %{private}d", v35, v29);
      v27 = v26;
      sub_100152C7C("Generic", 1, 0, 0, "std::vector<std::pair<TileId, BOOL>> CLWifiAccessPointLocationService::updateAccessTimestampsIfNecessary(const std::set<TileId> &, cl::chrono::CFAbsoluteTimeClock::time_point, cl::chrono::seconds) const", "%s\n", v26);
      if (v27 != buf)
      {
        free(v27);
      }
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

LABEL_28:
  result = sub_1001999F8(v31);
  if (HIBYTE(v34) == 1)
  {
    if (v34)
    {
      return pthread_mutex_unlock(v33);
    }

    else
    {
      return (*(*v32 + 24))(v32);
    }
  }

  return result;
}

void sub_100199320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t buf, __int128 a28)
{
  sub_1001999F8(&a17);
  if (a2 == 3)
  {
    v30 = __cxa_begin_catch(a1);
    if (qword_1025D4630 != -1)
    {
      sub_101B82614();
    }

    v31 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      v32 = (*(*v30 + 16))(v30);
      buf = 68289283;
      LOWORD(a28) = 2082;
      *(&a28 + 2) = "";
      WORD5(a28) = 2081;
      *(&a28 + 12) = v32;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:sqlite error updating access timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
      if (qword_1025D4630 != -1)
      {
        sub_101B82614();
      }
    }

    v33 = qword_1025D4638;
    if (os_signpost_enabled(qword_1025D4638))
    {
      v34 = (*(*v30 + 16))(v30);
      buf = 68289283;
      LOWORD(a28) = 2082;
      *(&a28 + 2) = "";
      WORD5(a28) = 2081;
      *(&a28 + 12) = v34;
      _os_signpost_emit_with_name_impl(dword_100000000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "sqlite error updating access timestamps", "{msg%{public}.0s:sqlite error updating access timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
    }
  }

  else if (a2 == 2)
  {
    v35 = __cxa_begin_catch(a1);
    if (qword_1025D4630 != -1)
    {
      sub_101B82614();
    }

    v36 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      v37 = (*(*v35 + 16))(v35);
      buf = 68289283;
      LOWORD(a28) = 2082;
      *(&a28 + 2) = "";
      WORD5(a28) = 2081;
      *(&a28 + 12) = v37;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:no database connection while updating timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
      if (qword_1025D4630 != -1)
      {
        sub_101B82614();
      }
    }

    v38 = qword_1025D4638;
    if (os_signpost_enabled(qword_1025D4638))
    {
      v39 = (*(*v35 + 16))(v35);
      buf = 68289283;
      LOWORD(a28) = 2082;
      *(&a28 + 2) = "";
      WORD5(a28) = 2081;
      *(&a28 + 12) = v39;
      _os_signpost_emit_with_name_impl(dword_100000000, v38, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "no database connection while updating timestamps", "{msg%{public}.0s:no database connection while updating timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
    }
  }

  else
  {
    if (a2 != 1)
    {
      sub_100199B08(&buf);
      sub_1017EC98C(&a22);
      _Unwind_Resume(a1);
    }

    v40 = __cxa_begin_catch(a1);
    if (qword_1025D4630 != -1)
    {
      sub_101B82614();
    }

    v41 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
    {
      v42 = (*(*v40 + 16))(v40);
      buf = 68289283;
      LOWORD(a28) = 2082;
      *(&a28 + 2) = "";
      WORD5(a28) = 2081;
      *(&a28 + 12) = v42;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:runtime error while updating access timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
      if (qword_1025D4630 != -1)
      {
        sub_101B82614();
      }
    }

    v43 = qword_1025D4638;
    if (os_signpost_enabled(qword_1025D4638))
    {
      v44 = (*(*v40 + 16))(v40);
      buf = 68289283;
      LOWORD(a28) = 2082;
      *(&a28 + 2) = "";
      WORD5(a28) = 2081;
      *(&a28 + 12) = v44;
      _os_signpost_emit_with_name_impl(dword_100000000, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "runtime error while updating access timestamps", "{msg%{public}.0s:runtime error while updating access timestamps, error:%{private, location:escape_only}s}", &buf, 0x1Cu);
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x100199264);
}

uint64_t *sub_100199830(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x492492492492493)
    {
      sub_10023FE18(result, a2);
    }

    sub_10028C64C();
  }

  return result;
}

void sub_100199904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100242438(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100199918(uint64_t a1)
{
  if (*a1)
  {
    if (std::uncaught_exceptions() <= *(a1 + 32))
    {
      sub_1001999FC(a1);
    }

    else
    {
      sub_100CD504C(a1);
    }
  }

  if (*(a1 + 25) == 1)
  {
    if (*(a1 + 24))
    {
      pthread_mutex_unlock(*(a1 + 16));
    }

    else
    {
      (*(**(a1 + 8) + 24))(*(a1 + 8));
    }

    *(a1 + 25) = 0;
  }

  return a1;
}

uint64_t sub_1001999FC(sqlite3 **a1)
{
  result = sqlite3_exec(*a1, "COMMIT", 0, 0, 0);
  if (result)
  {
    if (qword_1025D4850 != -1)
    {
      sub_101A593DC();
    }

    v3 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "#sqlitetransaction, commit failed", v6, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A59550();
    }

    sub_100CD531C(a1, *a1, v6);
    exception = __cxa_allocate_exception(0x48uLL);
    sub_100CD55B0(exception, v6);
  }

  return result;
}

void sub_100199B08(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10023FBD8(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100199B5C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100199B5C(a1, *a2);
    sub_100199B5C(a1, *(a2 + 1));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

void sub_100199BC0(_DWORD *a1, unsigned int a2, int a3, int a4)
{
  if (a4 + a3 <= a2)
  {
    ++a1[10];
    if (a2)
    {
      a1[4] += a2;
      if (a4 | a3)
      {
        ++a1[7];
        a1[1] += a4 + a3;
        if (a3)
        {
          ++a1[8];
          a1[2] += a3;
        }

        if (a4)
        {
          ++a1[9];
          a1[3] += a4;
        }
      }
    }

    else
    {
      ++a1[6];
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018E8CB0();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
    {
      *buf = 67240704;
      v16 = a2;
      v17 = 1026;
      v18 = a3;
      v19 = 1026;
      v20 = a4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Invalid ap lookup/found counts: apLookupCount: %{public}u, foundInCacheCount: %{public}u, foundInTilesCount: %{public}u", buf, 0x14u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_1018E8CC4();
      }

      v10[0] = 67240704;
      v10[1] = a2;
      v11 = 1026;
      v12 = a3;
      v13 = 1026;
      v14 = a4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 17, "Invalid ap lookup/found counts: apLookupCount: %{public}u, foundInCacheCount: %{public}u, foundInTilesCount: %{public}u", v10, 20);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 0, "void CLWifiApLocationLookupMetrics::scanBufferApLocationLookup(unsigned int, unsigned int, unsigned int)", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }
}

BOOL sub_100199E14(uint64_t a1)
{
  sub_1001A3B64(a1, 0x15180uLL);
  ++*(a1 + 12);
  v2 = *(a1 + 96);
  Current = CFAbsoluteTimeGetCurrent();
  result = sub_100199EB8(v2, Current);
  if (!result)
  {
    v9 = 28;
    goto LABEL_7;
  }

  ++*(a1 + 24);
  v5 = *(a1 + 96);
  v6 = CFAbsoluteTimeGetCurrent();
  if (sub_10019B6E0(v5, v6))
  {
    ++*(a1 + 16);
  }

  v7 = *(a1 + 96);
  v8 = CFAbsoluteTimeGetCurrent();
  result = sub_10019B77C(v7, v8);
  if (result)
  {
    v9 = 20;
LABEL_7:
    ++*(a1 + v9);
  }

  return result;
}

BOOL sub_100199EB8(uint64_t a1, double a2)
{
  std::mutex::lock((a1 + 344));
  v4 = sub_100199F08(a1, a2);
  std::mutex::unlock((a1 + 344));
  return v4;
}

BOOL sub_100199F08(void *a1, double a2)
{
  if (a1[20] && vabdd_f64(a2, *(*(a1[16] + 8 * (a1[19] / 0x1AuLL)) + 156 * (a1[19] % 0x1AuLL) + 76)) < 900.0)
  {
    return 1;
  }

  if (a1[32])
  {
    return a2 - *(*(a1[28] + 8 * (a1[31] / 0x1AuLL)) + 156 * (a1[31] % 0x1AuLL) + 76) < 900.0;
  }

  return 0;
}

void sub_100199FB0(uint64_t a1)
{
  if (!sub_10018E854(*(a1 + 56)))
  {
    sub_10019C594(a1 + 72, 0);
    v4 = sub_10019C558((a1 + 72));
LABEL_5:
    sub_1008DB260(v4, a1, qword_10265B120, (a1 + 64));
  }

  v2 = sub_10018E854(*(a1 + 64));
  v3 = v2;
  sub_10019C594(a1 + 72, v2);
  v4 = sub_10019C558((a1 + 72));
  if (!v3)
  {
    goto LABEL_5;
  }
}

void sub_10019A200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10019A228(double *a1, double *a2)
{
  v2 = *a2 - a1[2];
  v3 = *(a1 + 1);
  if (v2 >= v3)
  {
    (*(*a1 + 24))(a1);
    ++*(a1 + 8);
    (*(*a1 + 16))(a1);
    a1[2] = *a2;
  }

  return v2 >= v3;
}

uint64_t sub_10019A32C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3)
  {
    v55 = *a2;
    result = sub_10018E854(v3);
    if (!result)
    {
      return result;
    }

    sub_10018C8C0(*a3, v44);
    if (v54 == 1)
    {
      if ((atomic_load_explicit(qword_10265B160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(qword_10265B160))
      {
        sub_10018D404(xmmword_10265B138);
        __cxa_guard_release(qword_10265B160);
      }

      v41 = v51;
      v42 = v52;
      v43[0] = v53[0];
      *(v43 + 12) = *(v53 + 12);
      v37 = v47;
      v38 = v48;
      v39 = v49;
      v40 = v50;
      v35 = v45;
      v36 = v46;
      sub_1001AB7A0(a2, &v65);
      sub_1001097CC(xmmword_10265B138, &v35, &v65);
      v8 = v7;
      if (v7 == 0.0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1019688C4();
        }

        v9 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_1002386FC(a2, &v65);
          v10 = SHIBYTE(v65.__r_.__value_.__r.__words[2]);
          v11 = v65.__r_.__value_.__r.__words[0];
          (*(**a3 + 16))(&__p);
          v12 = &v65;
          if (v10 < 0)
          {
            v12 = v11;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136643075;
          *(buf.__r_.__value_.__r.__words + 4) = v12;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = p_p;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "MovingApDetector, found the exact centroid %{sensitive}s in bad centroid database table %{private}s", &buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v65.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019688EC(&v65);
          v21 = qword_1025D4628;
          sub_1002386FC(a2, &__p);
          v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v23 = __p.__r_.__value_.__r.__words[0];
          (*(**a3 + 16))(&buf);
          v24 = &__p;
          if (v22 < 0)
          {
            v24 = v23;
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v56 = 136643075;
          *&v56[4] = v24;
          v57 = 2081;
          v58 = p_buf;
          _os_log_send_and_compose_impl(2, 0, &v65, 1628, dword_100000000, v21, 0, "MovingApDetector, found the exact centroid %{sensitive}s in bad centroid database table %{private}s", v56, 22, v35, v36, v37, v38, v39, v40, v41, v42, v43[0], v43[1]);
          v27 = v26;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMovingApDetector::isBadCentroidFromDatabaseLookup(const CLWifiAPLocation &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v27);
          if (v27 != &v65)
          {
            free(v27);
          }
        }

        return 1;
      }

      else
      {
        v15 = *(sub_1001CCA30() + 2);
        if (qword_1025D4620 != -1)
        {
          sub_1019688C4();
        }

        v16 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_1002386FC(a2, &__p);
          v17 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v18 = __p.__r_.__value_.__r.__words[0];
          sub_100237CC8(&buf);
          v19 = &__p;
          if (v17 < 0)
          {
            v19 = v18;
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &buf;
          }

          else
          {
            v20 = buf.__r_.__value_.__r.__words[0];
          }

          LODWORD(v65.__r_.__value_.__l.__data_) = 136643587;
          *(v65.__r_.__value_.__r.__words + 4) = v19;
          WORD2(v65.__r_.__value_.__r.__words[1]) = 2085;
          *(&v65.__r_.__value_.__r.__words[1] + 6) = v20;
          HIWORD(v65.__r_.__value_.__r.__words[2]) = 2049;
          v66 = v8;
          v67 = 2049;
          v68 = v15;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "MovingApDetector, centroid under lookup: %{sensitive}s, database version: %{sensitive}s. distance: %{private}.1fm. threshold: %{private}.1fm", &v65, 0x2Au);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019688EC(&v65);
          v28 = qword_1025D4628;
          sub_1002386FC(a2, &buf);
          v29 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          v30 = buf.__r_.__value_.__r.__words[0];
          sub_100237CC8(v56);
          v31 = &buf;
          if (v29 < 0)
          {
            v31 = v30;
          }

          if (v59 >= 0)
          {
            v32 = v56;
          }

          else
          {
            v32 = *v56;
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136643587;
          *(__p.__r_.__value_.__r.__words + 4) = v31;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2085;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v32;
          HIWORD(__p.__r_.__value_.__r.__words[2]) = 2049;
          v61 = v8;
          v62 = 2049;
          v63 = v15;
          _os_log_send_and_compose_impl(2, 0, &v65, 1628, dword_100000000, v28, 0, "MovingApDetector, centroid under lookup: %{sensitive}s, database version: %{sensitive}s. distance: %{private}.1fm. threshold: %{private}.1fm", &__p, 42, v35, v36, v37, v38, v39, v40, v41, v42, v43[0], v43[1]);
          v34 = v33;
          if (v59 < 0)
          {
            operator delete(*v56);
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMovingApDetector::isBadCentroidFromDatabaseLookup(const CLWifiAPLocation &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v34);
          if (v34 != &v65)
          {
            free(v34);
          }
        }

        return v8 <= v15;
      }
    }

    return 0;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101968930();
  }

  v14 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v65.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "MovingApDetector, centroid database is null!", &v65, 2u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10196976C();
    return 0;
  }

  return result;
}

uint64_t sub_10019A9B8(uint64_t a1)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(v9);
    v2 = sub_100038730(&v10, "SELECT COUNT(*) FROM ", 21);
    v3 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v3 = *v3;
    }

    v4 = strlen(v3);
    v5 = sub_100038730(v2, v3, v4);
    sub_100038730(v5, ";", 1);
    sub_100073518(v9, __p);
    if (v12 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    sub_1000388D8(a1 + 64, v6);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v7 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call count() without a backing database in CLWifiLocationDatabase!", __p, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190A9FC();
  }

  return 0;
}

void sub_10019ADC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (v52)
  {
    (*(*v52 + 8))(v52, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10026C504(&a12);
  _Unwind_Resume(a1);
}

void sub_10019AE38(uint64_t a1, uint64_t *a2)
{
  if (*a2)
  {
    sub_10000EC00(&v46, "MovingApDetector, ");
    v4 = *(a1 + 24);
    Current = CFAbsoluteTimeGetCurrent();
    if (sub_10019B6E0(v4, Current))
    {
      v6 = *(a1 + 24);
      v7 = CFAbsoluteTimeGetCurrent();
      v8 = sub_10023854C(v6, v7);
      std::to_string(&v49, v8);
      v9 = std::string::insert(&v49, 0, "gps age: ", 9uLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v50.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v50.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      v11 = std::string::append(&v50, "s", 1uLL);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v48 = v11->__r_.__value_.__r.__words[2];
      *__p = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (v48 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v48 >= 0)
      {
        v14 = HIBYTE(v48);
      }

      else
      {
        v14 = __p[1];
      }

      std::string::append(&v46, v13, v14);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::append(&v46, "gps: no", 7uLL);
    }

    std::string::append(&v46, ", cell: ", 8uLL);
    v16 = *(a1 + 24);
    v17 = CFAbsoluteTimeGetCurrent();
    v18 = sub_10019B77C(v16, v17);
    if (v18)
    {
      v19 = "yes";
    }

    else
    {
      v19 = "no";
    }

    if (v18)
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    std::string::append(&v46, v19, v20);
    if (!sub_10018E854(*a2))
    {
      std::string::append(&v46, ", database invalid", 0x12uLL);
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v37 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v38 = &v46;
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v38 = v46.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v38;
        _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "%s", __p, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019688EC(__p);
        v39 = &v46;
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v39 = v46.__r_.__value_.__r.__words[0];
        }

        LODWORD(v50.__r_.__value_.__l.__data_) = 136315138;
        *(v50.__r_.__value_.__r.__words + 4) = v39;
        _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "%s", &v50);
        v41 = v40;
        sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logGpsCellAndBadWifiCentroidDatabaseInfo(const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v40);
        if (v41 != __p)
        {
          free(v41);
        }
      }

      goto LABEL_86;
    }

    sub_10019B818(*a2, &v50.__r_.__value_.__l.__data_);
    if (v50.__r_.__value_.__r.__words[0] == v50.__r_.__value_.__l.__size_)
    {
      std::string::append(&v46, ", database empty", 0x10uLL);
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v42 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v43 = &v46;
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v43 = v46.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v43;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "%s", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_84;
      }

      sub_1019688EC(__p);
      v35 = qword_1025D4628;
      v36 = &v46;
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v46.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v21 = sub_10019A9B8(*a2);
      std::to_string(&v49, v21);
      v22 = std::string::insert(&v49, 0, ", database count: ", 0x12uLL);
      v23 = *&v22->__r_.__value_.__l.__data_;
      v48 = v22->__r_.__value_.__r.__words[2];
      *__p = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      if (v48 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      if (v48 >= 0)
      {
        v25 = HIBYTE(v48);
      }

      else
      {
        v25 = __p[1];
      }

      std::string::append(&v46, v24, v25);
      if (SHIBYTE(v48) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      std::string::append(&v46, ", samples", 9uLL);
      v26 = 0;
      v27 = rand() % (0x8F5C28F5C28F5C29 * ((v50.__r_.__value_.__l.__size_ - v50.__r_.__value_.__r.__words[0]) >> 3));
      do
      {
        sub_10018F0D0(&v49);
        v28 = std::string::insert(&v49, 0, ", ", 2uLL);
        v29 = *&v28->__r_.__value_.__l.__data_;
        v48 = v28->__r_.__value_.__r.__words[2];
        *__p = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        if (v48 >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        if (v48 >= 0)
        {
          v31 = HIBYTE(v48);
        }

        else
        {
          v31 = __p[1];
        }

        std::string::append(&v46, v30, v31);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }
      }

      while (++v27 < 0x8F5C28F5C28F5C29 * ((v50.__r_.__value_.__l.__size_ - v50.__r_.__value_.__r.__words[0]) >> 3) && v26++ < 4);
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v33 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v34 = &v46;
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v46.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v34;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "%s", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_84;
      }

      sub_1019688EC(__p);
      v35 = qword_1025D4628;
      v36 = &v46;
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = v46.__r_.__value_.__r.__words[0];
      }
    }

    LODWORD(v49.__r_.__value_.__l.__data_) = 136315138;
    *(v49.__r_.__value_.__r.__words + 4) = v36;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v35, 0, "%s", &v49);
    v45 = v44;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logGpsCellAndBadWifiCentroidDatabaseInfo(const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v44);
    if (v45 != __p)
    {
      free(v45);
    }

LABEL_84:
    if (v50.__r_.__value_.__r.__words[0])
    {
      v50.__r_.__value_.__l.__size_ = v50.__r_.__value_.__r.__words[0];
      operator delete(v50.__r_.__value_.__l.__data_);
    }

LABEL_86:
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101968930();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_FAULT, "MovingApDetector, centroid database is null!", __p, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101968C98();
  }
}

void sub_10019B600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 96);
  if (v25)
  {
    *(v23 - 88) = v25;
    operator delete(v25);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10019B6E0(uint64_t a1, double a2)
{
  std::mutex::lock((a1 + 344));
  if (*(a1 + 160))
  {
    v4 = vabdd_f64(a2, *(*(*(a1 + 128) + 8 * (*(a1 + 152) / 0x1AuLL)) + 156 * (*(a1 + 152) % 0x1AuLL) + 76)) < 900.0;
  }

  else
  {
    v4 = 0;
  }

  std::mutex::unlock((a1 + 344));
  return v4;
}

BOOL sub_10019B77C(uint64_t a1, double a2)
{
  std::mutex::lock((a1 + 344));
  if (*(a1 + 256))
  {
    v4 = a2 - *(*(*(a1 + 224) + 8 * (*(a1 + 248) / 0x1AuLL)) + 156 * (*(a1 + 248) % 0x1AuLL) + 76) < 900.0;
  }

  else
  {
    v4 = 0;
  }

  std::mutex::unlock((a1 + 344));
  return v4;
}

void sub_10019B818(uint64_t a1@<X0>, const void **a2@<X8>)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(buf);
    v4 = sub_100038730(&v45, "SELECT ", 7);
    v5 = sub_100038730(v4, "MAC", 3);
    v6 = sub_100038730(v5, " , ", 3);
    v7 = strlen("Latitude");
    v8 = sub_100038730(v6, "Latitude", v7);
    v9 = sub_100038730(v8, " , ", 3);
    v10 = strlen("Longitude");
    v11 = sub_100038730(v9, "Longitude", v10);
    v12 = sub_100038730(v11, " , ", 3);
    v13 = strlen("Altitude");
    v14 = sub_100038730(v12, "Altitude", v13);
    v15 = sub_100038730(v14, " , ", 3);
    v16 = strlen("HorizontalAccuracy");
    v17 = sub_100038730(v15, "HorizontalAccuracy", v16);
    v18 = sub_100038730(v17, " , ", 3);
    v19 = strlen("VerticalAccuracy");
    v20 = sub_100038730(v18, "VerticalAccuracy", v19);
    v21 = sub_100038730(v20, " , ", 3);
    v22 = strlen("Score");
    v23 = sub_100038730(v21, "Score", v22);
    v24 = sub_100038730(v23, " , ", 3);
    v25 = strlen("Reach");
    v26 = sub_100038730(v24, "Reach", v25);
    v27 = sub_100038730(v26, " , ", 3);
    v28 = sub_100038730(v27, "Channel", 7);
    v29 = sub_100038730(v28, " , ", 3);
    v30 = sub_100038730(v29, "InfoMask", 8);
    v31 = sub_100038730(v30, " , ", 3);
    v32 = strlen("Timestamp");
    sub_100038730(v31, "Timestamp", v32);
    if ((*(a1 + 16) & 1) == 0)
    {
      v33 = sub_100038730(&v45, " , ", 3);
      v34 = strlen("ZaxisHarvestTraces");
      sub_100038730(v33, "ZaxisHarvestTraces", v34);
      v35 = sub_100038730(&v45, " , ", 3);
      sub_100038730(v35, "AlsQueryTimestamp", 17);
    }

    v36 = sub_100038730(&v45, " FROM ", 6);
    v37 = *(a1 + 295);
    if (v37 >= 0)
    {
      v38 = a1 + 272;
    }

    else
    {
      v38 = *(a1 + 272);
    }

    if (v37 >= 0)
    {
      v39 = *(a1 + 295);
    }

    else
    {
      v39 = *(a1 + 280);
    }

    sub_100038730(v36, v38, v39);
    sub_100073518(buf, __p);
    if (v43 >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = __p[0];
    }

    sub_1000388D8(a1 + 64, v40);
  }

  if (qword_1025D4850 != -1)
  {
    sub_10190A820();
  }

  v41 = off_1025D4858;
  if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getAllEntries() without a backing database in CLWifiLocationDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190B11C();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

void sub_10019C070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a22);
  _Unwind_Resume(a1);
}

void sub_10019C110(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (sub_100196D1C() && sub_10019C22C(a2) && sub_100027FB4(a3))
  {
    v8 = sub_1001D24B0(a3, a4);
    if (qword_102659A08 != -1)
    {
      sub_10192A67C();
    }

    v9 = &qword_1026599F8;
    if ((dword_102659A00 & 1) == 0)
    {
      v9 = (sub_1001CCA30() + 32);
    }

    if (v8 <= *v9)
    {
      v10 = *(a3 + 20);
      if (v10 <= *(sub_1001CCA30() + 5))
      {
        v13 = *a1;
        v11 = a1 + 1;
        v12 = v13;
        if (v13 != v11)
        {
          do
          {
            sub_1007592C8((v12 + 5), a2, a3, a4);
            v14 = v12[1];
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
                v15 = v12[2];
                v16 = *v15 == v12;
                v12 = v15;
              }

              while (!v16);
            }

            v12 = v15;
          }

          while (v15 != v11);
        }
      }
    }
  }
}

uint64_t sub_10019C234(uint64_t **a1, void *a2, void *a3, uint64_t a4)
{
  v4 = *sub_10019C3C4(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_10019C2E4(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10019C234(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
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

void *sub_10019C36C(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10019C2E4(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *sub_10019C3C4(void *a1, void *a2, void *a3, uint64_t *a4, void *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1001972D4(a5, a2 + 4))
  {
    if (!sub_1001972D4(a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1001972D4(a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1001972D4(v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_100197070(a1, a3, a5);
}

uint64_t sub_10019C594(uint64_t result, int a2)
{
  if (a2)
  {
    ++*(result + 88);
  }

  else
  {
    ++*(result + 92);
  }

  return result;
}

void sub_10019C5B8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (*a4)
  {
    LODWORD(v50.__r_.__value_.__l.__data_) = 3;
    *__p = &v50;
    v7 = *(sub_1000B91DC(a3, &v50, &unk_101C66300, __p) + 8);
    LODWORD(v50.__r_.__value_.__l.__data_) = 0;
    *__p = &v50;
    v8 = *(sub_1000B91DC(a3, &v50, &unk_101C66300, __p) + 8);
    LODWORD(v50.__r_.__value_.__l.__data_) = 1;
    *__p = &v50;
    v9 = *(sub_1000B91DC(a3, &v50, &unk_101C66300, __p) + 8);
    LODWORD(v50.__r_.__value_.__l.__data_) = 2;
    *__p = &v50;
    v10 = *(sub_1000B91DC(a3, &v50, &unk_101C66300, __p) + 8);
    sub_10000EC00(&v49, "MovingApDetector, ");
    v11 = sub_10019A9B8(*a4);
    if (v11)
    {
      std::to_string(&v50, v11);
      v12 = std::string::insert(&v50, 0, "database count: ", 0x10uLL);
      v13 = *&v12->__r_.__value_.__l.__data_;
      *&__p[16] = *(&v12->__r_.__value_.__l + 2);
      *__p = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      if (__p[23] >= 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = *__p;
      }

      if (__p[23] >= 0)
      {
        v15 = __p[23];
      }

      else
      {
        v15 = *&__p[8];
      }

      std::string::append(&v49, v14, v15);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::string::append(&v49, "database empty", 0xEuLL);
    }

    std::to_string(&v48, a2);
    v17 = std::string::insert(&v48, 0, ", cross-checked ", 0x10uLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v50, " centroids", 0xAuLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v19->__r_.__value_.__l + 2);
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (__p[23] >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = *__p;
    }

    if (__p[23] >= 0)
    {
      v22 = __p[23];
    }

    else
    {
      v22 = *&__p[8];
    }

    std::string::append(&v49, v21, v22);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (v7 == a2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v23 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v24 = &v49;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v49.__r_.__value_.__r.__words[0];
        }

        *__p = 136315138;
        *&__p[4] = v24;
        _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "%s, all centroids are invalid!", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_94;
      }

      sub_1019688EC(__p);
      v25 = &v49;
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v25 = v49.__r_.__value_.__r.__words[0];
      }

      LODWORD(v50.__r_.__value_.__l.__data_) = 136315138;
      *(v50.__r_.__value_.__r.__words + 4) = v25;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "%s, all centroids are invalid!", &v50);
      v27 = v26;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logCentroidCrossCheckOutcomes(const size_t, std::map<CrossCheckOutcome, int> &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v26);
    }

    else if (v10 == a2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v28 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v29 = &v49;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v29 = v49.__r_.__value_.__r.__words[0];
        }

        *__p = 136315138;
        *&__p[4] = v29;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "%s, all centroids are unknown!", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_94;
      }

      sub_1019688EC(__p);
      v30 = &v49;
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v30 = v49.__r_.__value_.__r.__words[0];
      }

      LODWORD(v50.__r_.__value_.__l.__data_) = 136315138;
      *(v50.__r_.__value_.__r.__words + 4) = v30;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "%s, all centroids are unknown!", &v50);
      v27 = v31;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logCentroidCrossCheckOutcomes(const size_t, std::map<CrossCheckOutcome, int> &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v31);
    }

    else if (v9 == a2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v32 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v33 = &v49;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = v49.__r_.__value_.__r.__words[0];
        }

        *__p = 136315138;
        *&__p[4] = v33;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "%s, all centroids are good!", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_94;
      }

      sub_1019688EC(__p);
      v34 = &v49;
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v34 = v49.__r_.__value_.__r.__words[0];
      }

      LODWORD(v50.__r_.__value_.__l.__data_) = 136315138;
      *(v50.__r_.__value_.__r.__words + 4) = v34;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "%s, all centroids are good!", &v50);
      v27 = v35;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logCentroidCrossCheckOutcomes(const size_t, std::map<CrossCheckOutcome, int> &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v35);
    }

    else if (v8 == a2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v36 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v37 = &v49;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v37 = v49.__r_.__value_.__r.__words[0];
        }

        *__p = 136315138;
        *&__p[4] = v37;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "%s, all centroids are bad!", __p, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_94;
      }

      sub_1019688EC(__p);
      v38 = &v49;
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = v49.__r_.__value_.__r.__words[0];
      }

      LODWORD(v50.__r_.__value_.__l.__data_) = 136315138;
      *(v50.__r_.__value_.__r.__words + 4) = v38;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "%s, all centroids are bad!", &v50);
      v27 = v39;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logCentroidCrossCheckOutcomes(const size_t, std::map<CrossCheckOutcome, int> &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v39);
    }

    else if (v9 + v7 == a2)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v40 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v41 = &v49;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v41 = v49.__r_.__value_.__r.__words[0];
        }

        *__p = 136315650;
        *&__p[4] = v41;
        *&__p[12] = 1024;
        *&__p[14] = v7;
        *&__p[18] = 1024;
        *&__p[20] = v9;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "%s, %d invalid, all %d valid centroids are good!", __p, 0x18u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_94;
      }

      sub_1019688EC(__p);
      v42 = &v49;
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v42 = v49.__r_.__value_.__r.__words[0];
      }

      LODWORD(v50.__r_.__value_.__l.__data_) = 136315650;
      *(v50.__r_.__value_.__r.__words + 4) = v42;
      WORD2(v50.__r_.__value_.__r.__words[1]) = 1024;
      *(&v50.__r_.__value_.__r.__words[1] + 6) = v7;
      WORD1(v50.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(v50.__r_.__value_.__r.__words[2]) = v9;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "%s, %d invalid, all %d valid centroids are good!", &v50, 24, LODWORD(v48.__r_.__value_.__l.__data_));
      v27 = v43;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logCentroidCrossCheckOutcomes(const size_t, std::map<CrossCheckOutcome, int> &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v43);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v44 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v45 = &v49;
        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v45 = v49.__r_.__value_.__r.__words[0];
        }

        *__p = 136316162;
        *&__p[4] = v45;
        *&__p[12] = 1024;
        *&__p[14] = v7;
        *&__p[18] = 1024;
        *&__p[20] = v10;
        v56 = 1024;
        v57 = v9;
        v58 = 1024;
        v59 = v8;
        _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEFAULT, "%s, %d invalid, %d unknown, %d good, %d bad!", __p, 0x24u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_94;
      }

      sub_1019688EC(__p);
      v46 = &v49;
      if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v46 = v49.__r_.__value_.__r.__words[0];
      }

      LODWORD(v50.__r_.__value_.__l.__data_) = 136316162;
      *(v50.__r_.__value_.__r.__words + 4) = v46;
      WORD2(v50.__r_.__value_.__r.__words[1]) = 1024;
      *(&v50.__r_.__value_.__r.__words[1] + 6) = v7;
      WORD1(v50.__r_.__value_.__r.__words[2]) = 1024;
      HIDWORD(v50.__r_.__value_.__r.__words[2]) = v10;
      v51 = 1024;
      v52 = v9;
      v53 = 1024;
      v54 = v8;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "%s, %d invalid, %d unknown, %d good, %d bad!", &v50, 36, LODWORD(v48.__r_.__value_.__l.__data_), LODWORD(v48.__r_.__value_.__r.__words[1]), LODWORD(v48.__r_.__value_.__r.__words[2]));
      v27 = v47;
      sub_100152C7C("Generic", 1, 0, 2, "void CLMovingApDetector::logCentroidCrossCheckOutcomes(const size_t, std::map<CrossCheckOutcome, int> &, const std::unique_ptr<CLWifiLocationDatabase> &)", "%s\n", v47);
    }

    if (v27 != __p)
    {
      free(v27);
    }

LABEL_94:
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    return;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101968930();
  }

  v16 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    *__p = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "MovingApDetector, centroid database is null!", __p, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101969858();
  }
}

void sub_10019D080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10019D138(void *a1, void *a2)
{
  v4 = sub_10018D3FC(a2);
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

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (sub_100195A00(v11 + 2, a2))
        {
          return v11;
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

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void sub_10019D234(uint64_t a1@<X0>, __int128 **a2@<X1>, __int128 **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, double a10@<D0>, uint64_t a11, unsigned int a12)
{
  v147 = 0;
  v146 = 0;
  v145 = 0xBFF0000000000000;
  *&v141[12] = 0;
  *&v141[4] = 0;
  *&v141[20] = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *&v141[36] = _Q1;
  *&v141[52] = _Q1;
  *&v141[68] = _Q1;
  *v141 = 0xFFFF;
  *&v141[84] = 0;
  v142 = 0uLL;
  *&v141[88] = 0xBFF0000000000000;
  *(&v143 + 4) = 0xBFF0000000000000;
  LODWORD(v143) = 0;
  HIDWORD(v143) = 0x7FFFFFFF;
  memset(v144, 0, 25);
  v140 = -200;
  v139 = 0xC069000000000000;
  v138 = 0;
  v137 = a10;
  *(a11 + 120) = a10;
  v132 = 0;
  v133 = 0;
  v131 = &v132;
  v128[0] = 0;
  v128[1] = 0;
  v127 = v128;
  *v149 = 0;
  *&v149[8] = 0;
  *buf = v149;
  v18 = *a2;
  v19 = a2[1];
  while (v18 != v19)
  {
    *__p = *v18;
    sub_10018F0D0(__src);
    if ((__src[23] & 0x80000000) != 0)
    {
      sub_100007244(__p, *__src, *&__src[8]);
    }

    else
    {
      *__p = *__src;
      *&__p[16] = *&__src[16];
    }

    v20 = *v18;
    *&__p[40] = *(v18 + 16);
    *&__p[24] = v20;
    v21 = *(v18 + 32);
    v22 = *(v18 + 48);
    v23 = *(v18 + 64);
    *&__p[104] = *(v18 + 80);
    *&__p[88] = v23;
    *&__p[72] = v22;
    *&__p[56] = v21;
    sub_100196DB8(&v131, __p, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    sub_1000F2BC4(&v127, __src, __src);
    if ((__src[23] & 0x80000000) != 0)
    {
      operator delete(*__src);
    }

    v18 += 96;
  }

  v24 = *a3;
  v25 = a3[1];
  if (*a3 != v25)
  {
    do
    {
      *__p = *v24;
      sub_10018F0D0(__src);
      if ((__src[23] & 0x80000000) != 0)
      {
        sub_100007244(__p, *__src, *&__src[8]);
      }

      else
      {
        *__p = *__src;
        *&__p[16] = *&__src[16];
      }

      v26 = *v24;
      *&__p[40] = v24[1];
      *&__p[24] = v26;
      v27 = v24[2];
      v28 = v24[3];
      v29 = v24[4];
      *&__p[104] = v24[5];
      *&__p[88] = v29;
      *&__p[72] = v28;
      *&__p[56] = v27;
      sub_100196DB8(&v131, __p, __p);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      sub_1000F2BC4(buf, __src, __src);
      if ((__src[23] & 0x80000000) != 0)
      {
        operator delete(*__src);
      }

      v24 += 6;
    }

    while (v24 != v25);
  }

  v119 = a3;
  v30 = v131;
  if (v131 != &v132)
  {
    v31 = 0;
    do
    {
      sub_10000EC00(v153, "type");
      v32 = v30 + 4;
      if (sub_100192868(buf, v30 + 32))
      {
        std::string::append(v153, "_ZAxis", 6uLL);
      }

      if (sub_100192868(&v127, v30 + 32))
      {
        std::string::append(v153, "_LatLon", 7uLL);
      }

      v33 = v31 + 1;
      if (v31 < sub_10019E6F8())
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v34 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v35 = v30 + 4;
          if (*(v30 + 55) < 0)
          {
            v35 = *v32;
          }

          v36 = v30[8];
          v37 = v30[9];
          v39 = v30[10];
          v38 = v30[11];
          v40 = v30[12];
          v41 = *(v30 + 32);
          v42 = *(v30 + 26);
          v43 = *(v30 + 27);
          v44 = v30[17];
          v45 = v30[15];
          v46 = v153;
          if (v153[23] < 0)
          {
            v46 = *v153;
          }

          *__p = 67243523;
          *&__p[4] = v33;
          *&__p[8] = 2050;
          *&__p[10] = v133;
          *&__p[18] = 2081;
          *&__p[20] = v35;
          *&__p[28] = 2053;
          *&__p[30] = v36;
          *&__p[38] = 2053;
          *&__p[40] = v37;
          *&__p[48] = 2050;
          *&__p[50] = v38;
          *&__p[58] = 1026;
          *&__p[60] = v42;
          *&__p[64] = 2049;
          *&__p[66] = v39;
          *&__p[74] = 2050;
          *&__p[76] = v40;
          *&__p[84] = 1026;
          *&__p[86] = v41;
          *&__p[90] = 1026;
          *&__p[92] = v43;
          *&__p[96] = 2050;
          *&__p[98] = v44;
          *&__p[106] = 2050;
          *&__p[108] = v45;
          *&__p[116] = 2081;
          *&__p[118] = v46;
          _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "WifiCalc, input AP, %{public}d / %{public}zu, %{private}s, %{sensitive}.7f, %{sensitive}.7f, hacc, %{public}.6f, reach, %{public}d, altitude, %{private}.2f, vacc, %{public}.2f, rssi, %{public}d, channel, %{public}d, scan timestamp, %{public}.3lf, query timestamp, %{public}.3lf, %{private}s", __p, 0x7Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_10196A0D4();
          }

          if (*(v30 + 55) < 0)
          {
            v32 = *v32;
          }

          v49 = v30[8];
          v50 = v30[9];
          v52 = v30[10];
          v51 = v30[11];
          v53 = v30[12];
          v54 = *(v30 + 32);
          v55 = *(v30 + 26);
          v56 = *(v30 + 27);
          v57 = v30[17];
          v58 = v30[15];
          v59 = v153;
          if (v153[23] < 0)
          {
            v59 = *v153;
          }

          *__src = 67243523;
          *&__src[4] = v33;
          *&__src[8] = 2050;
          *&__src[10] = v133;
          *&__src[18] = 2081;
          *&__src[20] = v32;
          *&__src[28] = 2053;
          *&__src[30] = v49;
          *&__src[38] = 2053;
          v157 = v50;
          v158 = 2050;
          *v159 = v51;
          *&v159[8] = 1026;
          *&v159[10] = v55;
          *v160 = 2049;
          *&v160[2] = v52;
          *&v160[10] = 2050;
          *&v160[12] = v53;
          *&v160[20] = 1026;
          *&v160[22] = v54;
          *&v160[26] = 1026;
          *&v160[28] = v56;
          *v161 = 2050;
          *&v161[2] = v57;
          *&v161[10] = 2050;
          *&v161[12] = v58;
          *&v161[20] = 2081;
          *&v161[22] = v59;
          LODWORD(v117) = 126;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, input AP, %{public}d / %{public}zu, %{private}s, %{sensitive}.7f, %{sensitive}.7f, hacc, %{public}.6f, reach, %{public}d, altitude, %{private}.2f, vacc, %{public}.2f, rssi, %{public}d, channel, %{public}d, scan timestamp, %{public}.3lf, query timestamp, %{public}.3lf, %{private}s", __src, v117);
          v61 = v60;
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::logWifiApLocations(const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &)", "%s\n", v60);
          if (v61 != __p)
          {
            free(v61);
          }
        }
      }

      if ((v153[23] & 0x80000000) != 0)
      {
        operator delete(*v153);
      }

      v47 = v30[1];
      if (v47)
      {
        do
        {
          v48 = v47;
          v47 = *v47;
        }

        while (v47);
      }

      else
      {
        do
        {
          v48 = v30[2];
          _ZF = *v48 == v30;
          v30 = v48;
        }

        while (!_ZF);
      }

      v31 = v33;
      v30 = v48;
    }

    while (v48 != &v132);
  }

  sub_10001AF44(buf, *v149);
  sub_10001AF44(&v127, v128[0]);
  sub_10001AF44(&v131, v132);
  if (*a2 != a2[1])
  {
    sub_1001A1A30(a1, a2, v119, 100.0, v137, 90, 4, 4, &v147 + 1, &v147, 500.0, &v145, a4, v141, &v140, &v139, &v138, &v146, a8, a11, a12);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A140();
  }

  v62 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v63 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
    v64 = *(a4 + 20) > 0.0;
    *__p = 134349824;
    *&__p[4] = v63;
    *&__p[12] = 1026;
    *&__p[14] = v147;
    *&__p[18] = 1026;
    *&__p[20] = v146;
    *&__p[24] = 1026;
    *&__p[26] = v64;
    _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEFAULT, "@WifiAps, compute, %{public}lu, used, %{public}u, used_vert, %{public}u, hint, %{public}d", __p, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_10196A140();
    }

    v106 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
    v107 = *(a4 + 20) > 0.0;
    *__src = 134349824;
    *&__src[4] = v106;
    *&__src[12] = 1026;
    *&__src[14] = v147;
    *&__src[18] = 1026;
    *&__src[20] = v146;
    *&__src[24] = 1026;
    *&__src[26] = v107;
    LODWORD(v117) = 30;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4638, 0, "@WifiAps, compute, %{public}lu, used, %{public}u, used_vert, %{public}u, hint, %{public}d", __src, v117);
    v109 = v108;
    sub_100152C7C("Generic", 1, 0, 2, "static Types::ComputedLocation CL::Wifi1::Policies::PositionCalculation::HandleEvent::computePosition(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &, const CLDaemonLocation &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, CLWifiAltitudeKalmanFilter *, const CL::Wifi1::Types::ElevationHistory *, CLLocationCalculator::LatLonDebuggingData &, CLLocationCalculator::ZaxisDebuggingData &, CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v108);
    if (v109 != __p)
    {
      free(v109);
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_10196A0D4();
  }

  v65 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v66 = *(a11 + 145);
    *__p = 67240192;
    *&__p[4] = v66;
    _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, isWsb, %{public}d", __p, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A388(a11);
  }

  if (!a7 || !a6 || *a2 == a2[1])
  {
    *(a11 + 128) = *&v141[28];
    v70 = v147;
    v71 = v146;
    v72 = v145;
    v73 = *(a11 + 152);
    v74 = v143;
    v75 = a9;
    a9[6] = v142;
    a9[7] = v74;
    a9[8] = *v144;
    *(a9 + 140) = *&v144[12];
    v76 = *&v141[48];
    a9[2] = *&v141[32];
    a9[3] = v76;
    v77 = *&v141[80];
    a9[4] = *&v141[64];
    a9[5] = v77;
    v78 = *v141;
    v79 = *&v141[16];
    goto LABEL_117;
  }

  sub_1001A75A8(a6, __src);
  if (qword_1025D4620 != -1)
  {
    sub_10196A0D4();
  }

  v67 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    if (v161[24])
    {
      v68 = "Yes";
    }

    else
    {
      v68 = "No";
    }

    *__p = 136450051;
    *&__p[4] = v68;
    *&__p[12] = 2049;
    *&__p[14] = *&v161[16];
    *&__p[22] = 2049;
    *&__p[24] = v162;
    *&__p[32] = 2049;
    *&__p[34] = *__src;
    *&__p[42] = 2049;
    *&__p[44] = *&__src[16];
    *&__p[52] = 2049;
    *&__p[54] = *&__src[8];
    *&__p[62] = 2049;
    *&__p[64] = *&__src[24];
    *&__p[72] = 2049;
    *&__p[74] = *&__src[32];
    *&__p[82] = 2049;
    *&__p[84] = v157;
    *&__p[92] = 2049;
    *&__p[94] = *&v159[6];
    *&__p[102] = 2049;
    *&__p[104] = *v160;
    *&__p[112] = 2049;
    *&__p[114] = *&v160[8];
    *&__p[122] = 2049;
    *&__p[124] = *&v160[16];
    v164 = 2049;
    v165 = *v161;
    v166 = 2049;
    v167 = *&v160[24];
    v168 = 2049;
    v169 = *&v161[8];
    _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis input kalmanFilter, initialized, %{public}s, relative altitude, %{private}.6f, wifiAltUncAve, %{private}.6f, alt_k_k, %{private}.6f, alt_k1_k, %{private}.6f, cov_k_k, %{private}.6f, cov_k1_k, %{private}.6f, process noise variance, stable, %{private}.6f, unstable, %{private}.6f, measurement variance, %{private}.6f, timestamp, propagate, %{private}.3lf, update, %{private}.3lf, relative altitude timestamp, %{private}.3lf, wifi time interval, %{private}.6f, relative altitude time interval, %{private}.6f, altitude change during baro outage, %{private}.6f", __p, 0xA2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A47C(__src);
  }

  v136 = 0xBFF0000000000000;
  v69 = *&v141[36];
  if (*&v141[36] < 0.0)
  {
    goto LABEL_85;
  }

  if (*(a5 + 36) < 0.0)
  {
    v69 = *(sub_1000F7F38() + 42);
    goto LABEL_85;
  }

  v80 = v137;
  v81 = *(a5 + 76);
  if (v80 - v81 < *(sub_1000F7F38() + 41) || (v82 = *(a5 + 28), v83 = *&v141[28], v84 = sub_1000F7F38(), v85 = vabdd_f64(v82, v83), v69 = -1.0, v85 <= *(v84 + 43)))
  {
    v69 = *(a5 + 36);
LABEL_85:
    v136 = *&v69;
    if (v69 > 0.0)
    {
      v86 = *(sub_1000F7F38() + 40);
      v87 = *&v141[36];
      v69 = v87 * *(sub_1000F7F38() + 40) + v69 * (1.0 - v86);
      v136 = *&v69;
    }
  }

  *(a11 + 16) = v69;
  sub_1001A9800(__p, a7 + 1);
  v88 = *&__p[40];
  sub_100102BC8(__p);
  if (v88)
  {
    v89 = (*(*a7 + 16))(a7, &v137);
    sub_1001A9800(__p, a7 + 1);
    *(a11 + 96) = *(*(*&__p[8] + (((*&__p[40] + *&__p[32] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (__p[40] + __p[32] - 1));
    *(a11 + 89) = 1;
    sub_100102BC8(__p);
    if (qword_1025D4620 != -1)
    {
      sub_10196A0D4();
    }

    v90 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_1001A9800(__p, a7 + 1);
      v91 = *&__p[40];
      sub_1001A9800(&v131, a7 + 1);
      v92 = *(*&v132[((v135 + v134 - 1) >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * (v135 + v134 - 1));
      sub_1001A9800(&v127, a7 + 1);
      v93 = "No";
      v94 = *(*&v128[0][((v130 + v129 - 1) >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * (v130 + v129 - 1) + 8);
      *buf = 67240963;
      if (v89)
      {
        v93 = "Yes";
      }

      *&buf[4] = v91;
      *v149 = 2049;
      *&v149[2] = v92;
      *&v149[10] = 2050;
      *&v149[12] = v94;
      v150 = 2082;
      *v151 = v93;
      _os_log_impl(dword_100000000, v90, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis input elevation, size, %{public}d, relative altitude, %{private}.6f, timestamp, %{public}.3lf, elevation steady, %{public}s", buf, 0x26u);
      sub_100102BC8(&v127);
      sub_100102BC8(&v131);
      sub_100102BC8(__p);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A0FC(__p);
      v110 = qword_1025D4628;
      sub_1001A9800(&v131, a7 + 1);
      v111 = v135;
      sub_1001A9800(&v127, a7 + 1);
      v112 = *(*&v128[0][((v130 + v129 - 1) >> 5) & 0x7FFFFFFFFFFFFF8] + 16 * (v130 + v129 - 1));
      sub_1001A9800(buf, a7 + 1);
      v113 = "No";
      v114 = *(*(*v149 + (((v152 + *&v151[2] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v152 + v151[2] - 1) + 8);
      *v153 = 67240963;
      if (v89)
      {
        v113 = "Yes";
      }

      *&v153[4] = v111;
      *&v153[8] = 2049;
      *&v153[10] = v112;
      *&v153[18] = 2050;
      *&v153[20] = v114;
      v154 = 2082;
      v155 = v113;
      LODWORD(v117) = 38;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v110, 2, "WifiCalc, zaxis input elevation, size, %{public}d, relative altitude, %{private}.6f, timestamp, %{public}.3lf, elevation steady, %{public}s", v153, v117);
      v116 = v115;
      sub_100102BC8(buf);
      sub_100102BC8(&v127);
      sub_100102BC8(&v131);
      sub_100152C7C("Generic", 1, 0, 2, "static Types::ComputedLocation CL::Wifi1::Policies::PositionCalculation::HandleEvent::computePosition(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &, const CLDaemonLocation &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, CLWifiAltitudeKalmanFilter *, const CL::Wifi1::Types::ElevationHistory *, CLLocationCalculator::LatLonDebuggingData &, CLLocationCalculator::ZaxisDebuggingData &, CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v116);
      if (v116 != __p)
      {
        free(v116);
      }
    }
  }

  if (sub_1001A5778(a6))
  {
    if (sub_1002ABC10(a6, &v137, a7, &v141[28], &v141[36], v95, &v138))
    {
      sub_1002AC598(a6, &v141[28], &v141[36], v96);
    }
  }

  else
  {
    v95.n128_f64[0] = v140;
    *__p = v140;
    sub_1001A5780(a6, &v137, &v141[28], &v136, a7, v95, __p, &v139);
  }

  if (sub_1001A5778(a6))
  {
    *(a11 + 24) = *&v141[28];
    *(a11 + 88) = 1;
  }

  v97 = sub_1001A5778(a6);
  v98.n128_u64[0] = *&v141[36];
  if (*&v141[36] <= 0.0)
  {
    v99 = 1;
  }

  else
  {
    v99 = v97;
  }

  if ((v99 & 1) == 0)
  {
    v98.n128_u64[0] = v136;
    *&v141[36] = v136;
  }

  *(a11 + 128) = *&v141[28];
  *(a11 + 136) = v98.n128_u64[0];
  v100 = sub_1001A4254(&v141[28], &v141[36], v98);
  if (*&v141[36] == -1.0)
  {
    v101 = 1;
  }

  else
  {
    v101 = v100;
  }

  if ((v101 & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10196A0D4();
    }

    v102 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      *__p = 134283777;
      *&__p[4] = *&v141[28];
      *&__p[12] = 2049;
      *&__p[14] = *&v141[36];
      _os_log_impl(dword_100000000, v102, OS_LOG_TYPE_FAULT, "WifiCalc, zaxis, reported invalid alt, %{private}.2f, unc, %{private}.2f", __p, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10196A638(&v141[28], &v141[36]);
    }
  }

  v70 = v147;
  v71 = v146;
  v72 = v145;
  v73 = *(a11 + 152);
  v103 = v143;
  v75 = a9;
  a9[6] = v142;
  a9[7] = v103;
  a9[8] = *v144;
  *(a9 + 140) = *&v144[12];
  v104 = *&v141[48];
  a9[2] = *&v141[32];
  a9[3] = v104;
  v105 = *&v141[80];
  a9[4] = *&v141[64];
  a9[5] = v105;
  v78 = *v141;
  v79 = *&v141[16];
LABEL_117:
  *v75 = v78;
  v75[1] = v79;
  *(v75 + 39) = v70;
  *(v75 + 40) = v71;
  *(v75 + 21) = v72;
  *(v75 + 44) = v73;
  *(v75 + 45) = 0;
}

void sub_10019E358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_100102BC8(&a32);
  sub_100102BC8(&a38);
  _Unwind_Resume(a1);
}

void sub_10019E42C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_10019E484(void *a1, void *a2, void *a3, _OWORD *a4)
{
  v6 = sub_10018D3FC(a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100195A00(v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

uint64_t sub_10019E6F8()
{
  if ((atomic_load_explicit(&qword_10265F370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_10265F370))
  {
    sub_10001CAF4(&v2);
    v4 = 0;
    if (sub_10005BBE4(v2, "maxNumApsToLog", &v4))
    {
      v1 = v4;
    }

    else
    {
      v1 = 50;
    }

    if (v3)
    {
      sub_100008080(v3);
    }

    dword_10265F368 = v1;
    __cxa_guard_release(&qword_10265F370);
  }

  return dword_10265F368;
}

void sub_10019E798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  __cxa_guard_abort(&qword_10265F370);
  _Unwind_Resume(a1);
}

void *sub_10019E7C4(void *result, double *a2)
{
  v2 = result[6];
  if (v2)
  {
    v3 = result;
    v4 = *a2 + -30.0;
    do
    {
      v5 = v3[5];
      if (*(*(v3[2] + ((v5 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v5 + 8) >= v4)
      {
        break;
      }

      v3[5] = v5 + 1;
      v3[6] = v2 - 1;
      result = sub_100014444((v3 + 1), 1);
      v2 = v3[6];
    }

    while (v2);
  }

  return result;
}

uint64_t sub_10019E848(uint64_t result, int a2, int a3, double a4)
{
  *(result + 72) = a2;
  *(result + 80) = a4;
  *(result + 52) = a3;
  return result;
}

void sub_10019E858(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_10019E42C(a1, a2);
  }

  sub_10028C64C();
}

void sub_10019E920(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002E4F74(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10019E93C(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_10018D3FC(a2);
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

  if (!sub_100195A00(v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_10019EC2C(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void sub_10019ED0C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v221 = v3;
  v5 = v4;
  v265 = 0;
  __src = 0;
  v266 = 0;
  v262 = 0;
  __p = 0;
  v263 = 0;
  for (i = *(v4 + 1208); i; i = *i)
  {
    if (sub_100103C94(v5 + 3312))
    {
      *v275 = sub_10018D3FC(v5 + 3312);
      v7 = !sub_100195A00(i + 2, v275);
    }

    else
    {
      v7 = 1;
    }

    v8 = vabdd_f64(*(v5 + 6440), *(i + 13));
    if (!v7 || v8 <= 5.0)
    {
      v9 = v265;
      if (v265 >= v266)
      {
        v15 = __src;
        v16 = v265 - __src;
        v17 = 0xAAAAAAAAAAAAAAABLL * ((v265 - __src) >> 5);
        v18 = v17 + 1;
        if (v17 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          goto LABEL_374;
        }

        if (0x5555555555555556 * ((v266 - __src) >> 5) > v18)
        {
          v18 = 0x5555555555555556 * ((v266 - __src) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v266 - __src) >> 5) >= 0x155555555555555)
        {
          v18 = 0x2AAAAAAAAAAAAAALL;
        }

        if (v18)
        {
          sub_1001A1980(&__src, v18);
        }

        v19 = (32 * ((v265 - __src) >> 5));
        v20 = *(i + 5);
        *v19 = *(i + 3);
        v19[1] = v20;
        v21 = *(i + 7);
        v22 = *(i + 9);
        v23 = *(i + 13);
        v19[4] = *(i + 11);
        v19[5] = v23;
        v19[2] = v21;
        v19[3] = v22;
        v14 = 96 * v17 + 96;
        v24 = v19 - v16;
        memcpy(v19 - v16, v15, v16);
        v25 = __src;
        __src = v24;
        v265 = v14;
        v266 = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        v10 = *(i + 5);
        *v265 = *(i + 3);
        v9[1] = v10;
        v11 = *(i + 7);
        v12 = *(i + 9);
        v13 = *(i + 13);
        v9[4] = *(i + 11);
        v9[5] = v13;
        v9[2] = v11;
        v9[3] = v12;
        v14 = (v9 + 6);
      }

      v265 = v14;
    }

    if (v8 <= 30.0)
    {
      v26 = v262;
      if (v262 >= v263)
      {
        v32 = __p;
        v33 = v262 - __p;
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v262 - __p) >> 5);
        v35 = v34 + 1;
        if (v34 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
LABEL_374:
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v263 - __p) >> 5) > v35)
        {
          v35 = 0x5555555555555556 * ((v263 - __p) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v263 - __p) >> 5) >= 0x155555555555555)
        {
          v35 = 0x2AAAAAAAAAAAAAALL;
        }

        if (v35)
        {
          sub_1001A1980(&__p, v35);
        }

        v36 = (32 * ((v262 - __p) >> 5));
        v37 = *(i + 5);
        *v36 = *(i + 3);
        v36[1] = v37;
        v38 = *(i + 7);
        v39 = *(i + 9);
        v40 = *(i + 13);
        v36[4] = *(i + 11);
        v36[5] = v40;
        v36[2] = v38;
        v36[3] = v39;
        v31 = 96 * v34 + 96;
        v41 = v36 - v33;
        memcpy(v36 - v33, v32, v33);
        v42 = __p;
        __p = v41;
        v262 = v31;
        v263 = 0;
        if (v42)
        {
          operator delete(v42);
        }
      }

      else
      {
        v27 = *(i + 5);
        *v262 = *(i + 3);
        v26[1] = v27;
        v28 = *(i + 7);
        v29 = *(i + 9);
        v30 = *(i + 13);
        v26[4] = *(i + 11);
        v26[5] = v30;
        v26[2] = v28;
        v26[3] = v29;
        v31 = (v26 + 6);
      }

      v262 = v31;
    }
  }

  v220 = v2;
  v260[1] = 0;
  v260[0] = 0;
  v259 = v260;
  v257 = 0;
  v256 = 0;
  v258 = 0;
  for (j = *(v5 + 1168); j; j = *j)
  {
    v44 = j[10];
    v45 = *(v5 + 6440);
    v46 = sub_10019D138((v5 + 1272), j + 2);
    v47 = vabdd_f64(v45, v44);
    if (v47 <= 30.0 && v46 == 0)
    {
      sub_10018F0D0(&v225);
      v49 = *(j + 14);
      *v275 = v225;
      memset(&v225, 0, sizeof(v225));
      *&v275[24] = v49;
      sub_10014E704(&v259, v275, v275);
      if ((v275[23] & 0x80000000) != 0)
      {
        operator delete(*v275);
      }

      if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v225.__r_.__value_.__l.__data_);
      }
    }

    v50 = sub_100103C94(v5 + 3312);
    if (v50)
    {
      *v275 = sub_10018D3FC(v5 + 3312);
      v50 = sub_100195A00(j + 2, v275);
    }

    if (v47 <= 5.0 || v50 != 0)
    {
      sub_10018F0D0(&v225);
      v52 = v257;
      if (v257 >= v258)
      {
        v54 = 0xAAAAAAAAAAAAAAABLL * ((v257 - v256) >> 3);
        v55 = v54 + 1;
        if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v258 - v256) >> 3) > v55)
        {
          v55 = 0x5555555555555556 * ((v258 - v256) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v258 - v256) >> 3) >= 0x555555555555555)
        {
          v56 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v56 = v55;
        }

        *&v275[32] = &v256;
        if (v56)
        {
          sub_1001A19D8(&v256, v56);
        }

        v57 = 8 * ((v257 - v256) >> 3);
        v58 = *&v225.__r_.__value_.__l.__data_;
        *(v57 + 16) = *(&v225.__r_.__value_.__l + 2);
        *v57 = v58;
        memset(&v225, 0, sizeof(v225));
        v59 = 24 * v54 + 24;
        v60 = (24 * v54 - (v257 - v256));
        memcpy((v57 - (v257 - v256)), v256, v257 - v256);
        v61 = v256;
        v62 = v258;
        v256 = v60;
        v257 = v59;
        v258 = 0;
        *&v275[16] = v61;
        *&v275[24] = v62;
        *&v275[8] = v61;
        *v275 = v61;
        sub_100197A50(v275);
        v257 = v59;
        if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v225.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v53 = *&v225.__r_.__value_.__l.__data_;
        *(v257 + 2) = *(&v225.__r_.__value_.__l + 2);
        *v52 = v53;
        v257 = v52 + 24;
      }
    }
  }

  memset(&v225, 0, sizeof(v225));
  v63 = __src;
  v64 = v265;
  if (__src == v265)
  {
    v82 = 0;
  }

  else
  {
    do
    {
      if (sub_10019A2D4(v63) && v63[4] > 0.0)
      {
        size = v225.__r_.__value_.__l.__size_;
        if (v225.__r_.__value_.__l.__size_ >= v225.__r_.__value_.__r.__words[2])
        {
          v71 = v225.__r_.__value_.__r.__words[0];
          v72 = v225.__r_.__value_.__l.__size_ - v225.__r_.__value_.__r.__words[0];
          v73 = 0xAAAAAAAAAAAAAAABLL * ((v225.__r_.__value_.__l.__size_ - v225.__r_.__value_.__r.__words[0]) >> 5);
          v74 = v73 + 1;
          if (v73 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v225.__r_.__value_.__r.__words[2] - v225.__r_.__value_.__r.__words[0]) >> 5) > v74)
          {
            v74 = 0x5555555555555556 * ((v225.__r_.__value_.__r.__words[2] - v225.__r_.__value_.__r.__words[0]) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v225.__r_.__value_.__r.__words[2] - v225.__r_.__value_.__r.__words[0]) >> 5) >= 0x155555555555555)
          {
            v74 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v74)
          {
            sub_1001A1980(&v225, v74);
          }

          v75 = (32 * ((v225.__r_.__value_.__l.__size_ - v225.__r_.__value_.__r.__words[0]) >> 5));
          v76 = *(v63 + 1);
          *v75 = *v63;
          v75[1] = v76;
          v77 = *(v63 + 2);
          v78 = *(v63 + 3);
          v79 = *(v63 + 5);
          v75[4] = *(v63 + 4);
          v75[5] = v79;
          v75[2] = v77;
          v75[3] = v78;
          v70 = 96 * v73 + 96;
          v80 = 96 * v73 - v72;
          memcpy(v75 - v72, v71, v72);
          v81 = v225.__r_.__value_.__r.__words[0];
          v225.__r_.__value_.__r.__words[0] = v80;
          *&v225.__r_.__value_.__r.__words[1] = v70;
          if (v81)
          {
            operator delete(v81);
          }
        }

        else
        {
          v66 = *(v63 + 1);
          *v225.__r_.__value_.__l.__size_ = *v63;
          size[1] = v66;
          v67 = *(v63 + 2);
          v68 = *(v63 + 3);
          v69 = *(v63 + 5);
          size[4] = *(v63 + 4);
          size[5] = v69;
          size[2] = v67;
          size[3] = v68;
          v70 = (size + 6);
        }

        v225.__r_.__value_.__l.__size_ = v70;
      }

      v63 += 12;
    }

    while (v63 != v64);
    v82 = -1431655765 * ((v225.__r_.__value_.__l.__size_ - v225.__r_.__value_.__r.__words[0]) >> 5);
  }

  v83 = v2;
  v84 = v257;
  v85 = v256;
  HIDWORD(v86) = -1030792151 * rand() + 85899344;
  LODWORD(v86) = HIDWORD(v86);
  if ((v86 >> 2) <= 0x28F5C28)
  {
    *v275 = _NSConcreteStackBlock;
    *&v275[8] = 3221225472;
    *&v275[16] = sub_1008DEA5C;
    *&v275[24] = &unk_10247D368;
    *&v275[32] = -1431655765 * ((v84 - v85) >> 3);
    *&v275[36] = v82;
    *&v275[40] = (v82 * 100.0 / *&v275[32]);
    AnalyticsSendEventLazy();
  }

  if (v225.__r_.__value_.__r.__words[0])
  {
    v225.__r_.__value_.__l.__size_ = v225.__r_.__value_.__r.__words[0];
    operator delete(v225.__r_.__value_.__l.__data_);
  }

  v245 = 0;
  v246 = 0;
  v249 = 0;
  v250 = 0;
  memset(v243, 0, sizeof(v243));
  v244 = 0;
  v248 = 0;
  v247 = 0u;
  v251 = 0u;
  memset(v252, 0, sizeof(v252));
  v253 = 0xFFFFFFFFLL;
  *v254 = 0u;
  memset(v255, 0, sizeof(v255));
  v240 = 0;
  v239 = 0;
  v242 = 0;
  v241 = 0;
  sub_10019D234(&v259, &__src, &__p, v5 + 3432, v5 + 5064, (v2 + 3120), *(v5 + 3296), &v239, v229, *(v5 + 6440), v243, *(v5 + 6428));
  *&v232[12] = *(v5 + 6440);
  LODWORD(v233) = 4;
  sub_1001A9A10(v5, v229);
  sub_1001A5BFC(&v225, &__src);
  sub_1001A655C(&v225);
  sub_1001AB570(&v225, v229);
  sub_1001A6EF8(&v225, (v5 + 3432), (v5 + 3592));
  sub_1001A6DF0(&v225, v229);
  sub_1001A6F7C(&v225, v229);
  sub_1001A9A10(v5, v229);
  v87 = HIDWORD(v236);
  if (v87 >= *sub_1001AB6A8() && sub_100072814(v229))
  {
    if (qword_1025D4620 != -1)
    {
      sub_10196A0D4();
    }

    v88 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_1001D78F4(v275);
      v89 = v275[23] >= 0 ? v275 : *v275;
      LODWORD(v284[0]) = 136642819;
      *(v284 + 4) = v89;
      _os_log_impl(dword_100000000, v88, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, updating reference multi-AP wifi location to %{sensitive}s", v284, 0xCu);
      if ((v275[23] & 0x80000000) != 0)
      {
        operator delete(*v275);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A0FC(v275);
      v195 = qword_1025D4628;
      sub_1001D78F4(v284);
      if ((SBYTE7(v285) & 0x80u) == 0)
      {
        v196 = v284;
      }

      else
      {
        v196 = v284[0];
      }

      *v274 = 136642819;
      *&v274[4] = v196;
      LODWORD(v213) = 12;
      _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, v195, 2, "WifiCalc, integrity, updating reference multi-AP wifi location to %{sensitive}s", v274, v213);
      v198 = v197;
      if (SBYTE7(v285) < 0)
      {
        operator delete(v284[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v198);
      if (v198 != v275)
      {
        free(v198);
      }
    }

    v90 = v236;
    *(v2 + 5376) = v235;
    *(v2 + 5392) = v90;
    *(v2 + 5408) = v237;
    v91 = *&v232[16];
    *(v2 + 5312) = *v232;
    *(v2 + 5328) = v91;
    v92 = v234;
    *(v2 + 5344) = v233;
    *(v2 + 5360) = v92;
    v93 = v229[1];
    *(v2 + 5248) = v229[0];
    *(v2 + 5264) = v93;
    v94 = v231;
    *(v2 + 5280) = v230;
    *(v2 + 5424) = v238;
    *(v2 + 5296) = v94;
    sub_1001EAAC8(v229, v275);
    memcpy((v2 + 5432), v275, 0x201uLL);
    v95 = v276;
    v276 = 0u;
    v96 = *(v2 + 5960);
    *(v2 + 5952) = v95;
    if (v96)
    {
      sub_100008080(v96);
      v97 = v279;
      *(v2 + 6016) = v280;
      v98 = v282[0];
      *(v2 + 6032) = v281;
      *(v2 + 6048) = v98;
      *(v2 + 6057) = *(v282 + 9);
      v99 = v278;
      *(v2 + 5968) = v277;
      *(v2 + 5984) = v99;
      v100 = *(&v276 + 1);
      *(v2 + 6000) = v97;
      if (v100)
      {
        sub_100008080(v100);
      }
    }

    else
    {
      v101 = v279;
      *(v2 + 6016) = v280;
      v102 = v282[0];
      *(v2 + 6032) = v281;
      *(v2 + 6048) = v102;
      *(v2 + 6057) = *(v282 + 9);
      v103 = v278;
      *(v2 + 5968) = v277;
      *(v2 + 5984) = v103;
      *(v2 + 6000) = v101;
    }
  }

  sub_1001A7094(v275);
  v104 = sub_1001AB6B4(*v275);
  if (*&v275[8])
  {
    sub_100008080(*&v275[8]);
  }

  if (v104 && [v104 isValid])
  {
    [v104 submitMetricsIfPossible:sub_100103C94(v5 + 3312)];
  }

  v105 = sub_100100690();
  if (sub_1001AB710(v105))
  {
    if (sub_100103C94(v5 + 3312))
    {
      sub_1001A74F0(v275);
      v106 = *v275;
      nullsub_34();
      sub_1001A3F20(v106, v229, v107);
      if (*&v275[8])
      {
        sub_100008080(*&v275[8]);
      }
    }

    else if (sub_10001CF3C())
    {
      *v275 = 0xFFFFFFFFFFFFLL;
      memset(&v275[8], 0, 28);
      *&v275[36] = 0x270FFFFFFFFFLL;
      *&v275[48] = xmmword_101C75BF0;
      *&v275[64] = 0;
      *&v275[68] = 0;
      v275[72] = 0;
      *&v275[80] = 0;
      sub_1001A74F0(v284);
      sub_1001A3F20(v284[0], v229, v275);
      if (v284[1])
      {
        sub_100008080(v284[1]);
      }

      if ((v275[31] & 0x80000000) != 0)
      {
        operator delete(*&v275[8]);
      }
    }
  }

  v108 = sub_100103C94(v5 + 3312);
  LOBYTE(v223) = 0;
  v224 = 0;
  LOBYTE(v284[0]) = 0;
  v290 = 0;
  if (v108)
  {
    v224 = !v224;
    v223 = sub_10018D3FC(v5 + 3312);
    v109 = *(v5 + 1360);
    v110 = *(v5 + 1392);
    v288 = *(v5 + 1376);
    v289 = v110;
    v290 = *(v5 + 1408);
    v111 = *(v5 + 1328);
    *v284 = *(v5 + 1312);
    v285 = v111;
    v112 = *(v5 + 1344);
    v113 = 1;
    v287 = v109;
    v286 = v112;
  }

  else
  {
    v114 = sub_10001CF3C() ^ 1;
    if (!v104)
    {
      LOBYTE(v114) = 1;
    }

    if ((v114 & 1) != 0 || ![v104 isValid])
    {
      v113 = 0;
    }

    else
    {
      objc_msgSend_fetchAllEntries(v104);
      sub_1008DE0E0(*(v5 + 3264), v274);
      v115 = sub_100FB1BBC(v274, v273);
      v113 = v116;
      v223 = v115;
      v224 = v116;
      if (v116)
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v117 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(v275);
          v118 = v275[23] >= 0 ? v275 : *v275;
          LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
          *(buf.__r_.__value_.__r.__words + 4) = v118;
          _os_log_impl(dword_100000000, v117, OS_LOG_TYPE_DEFAULT, "WifiCalc, selected associated AP %{private}s", &buf, 0xCu);
          if ((v275[23] & 0x80000000) != 0)
          {
            operator delete(*v275);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A0FC(v275);
          v205 = qword_1025D4628;
          sub_10018F0D0(&buf);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          *v283 = 136380675;
          *&v283[4] = p_buf;
          LODWORD(v213) = 12;
          _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, v205, 0, "WifiCalc, selected associated AP %{private}s", v283, v213);
          v208 = v207;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v208);
          if (v208 != v275)
          {
            free(v208);
          }

          v83 = v2;
        }

        ++*(*(v83 + 6480) + 228);
        if (v290 == 1)
        {
          v290 = 0;
        }
      }

      else
      {
        ++*(*(v2 + 6480) + 232);
      }

      AnalyticsSendEventLazy();
      sub_1004906DC(v274);
      *v275 = v273;
      sub_1002394D8(v275);
    }
  }

  v119 = sub_10001CF3C();
  v120 = v224;
  if (v113 & 1 | ((v119 & 1) == 0))
  {
    if ((v113 & 1) == 0)
    {
      if (v224)
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v121 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
        {
          *v275 = 0;
          _os_log_impl(dword_100000000, v121, OS_LOG_TYPE_FAULT, "WifiCalc, error, associated AP mac is available but unassociated", v275, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10196A0FC(v275);
          *v274 = 0;
          LODWORD(v213) = 2;
          _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4628, 17, "WifiCalc, error, associated AP mac is available but unassociated", v274, v213);
          v123 = v122;
          sub_100152C7C("Generic", 1, 0, 0, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v122);
          if (v123 != v275)
          {
            free(v123);
          }

          v83 = v2;
        }
      }

      goto LABEL_166;
    }

    goto LABEL_149;
  }

  if (v224)
  {
    v223 = 0xFFFFFFFFFFFFLL;
    if ((v290 & 1) == 0)
    {
      v120 = 1;
LABEL_149:
      if ((v120 & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v124 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
        {
          *v275 = 0;
          _os_log_impl(dword_100000000, v124, OS_LOG_TYPE_FAULT, "WifiCalc, error, associated AP mac is unavailable but associated", v275, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10196A0FC(v275);
          *v274 = 0;
          LODWORD(v213) = 2;
          _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4628, 17, "WifiCalc, error, associated AP mac is unavailable but associated", v274, v213);
          v126 = v125;
          sub_100152C7C("Generic", 1, 0, 0, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v125);
          if (v126 != v275)
          {
            free(v126);
          }

          v83 = v2;
        }
      }

      goto LABEL_160;
    }
  }

  else
  {
    v224 = 1;
    v223 = 0xFFFFFFFFFFFFLL;
    if (v290 != 1)
    {
      goto LABEL_160;
    }
  }

  v290 = 0;
LABEL_160:
  if (v224)
  {
    sub_1001A7094(v273);
    sub_10000EC00(v274, "Wifi1");
    sub_1001AE1C8(v275, &v223, v284, v273, (v5 + 6528), v274, v5 + 3432);
    if ((v274[23] & 0x80000000) != 0)
    {
      operator delete(*v274);
    }

    if (*(&v273[0] + 1))
    {
      sub_100008080(*(&v273[0] + 1));
    }

    sub_1001ABDBC(v275, v229);
    sub_1001E4D1C(v275);
    sub_1001E314C(v275);
  }

LABEL_166:
  if (sub_10001CF3C())
  {
    if (*(sub_1001A8F5C() + 121) == 1)
    {
      sub_10049138C(v275);
      sub_100491F04(*v275, v229);
      if (*&v275[8])
      {
        sub_100008080(*&v275[8]);
      }
    }
  }

  v127 = v265 - __src;
  if (v265 != __src)
  {
    v128 = HIDWORD(v236);
    v129 = *(v5 + 1136);
    if (v129)
    {
      v130 = (100 * HIDWORD(v236)) / v129;
    }

    else
    {
      LODWORD(v130) = -1;
    }

    if (qword_1025D4630 != -1)
    {
      sub_10196A140();
    }

    v131 = -1431655765 * (v127 >> 5) - v128;
    v132 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v133 = *(v5 + 1136);
      *v275 = 67241218;
      *&v275[4] = v133;
      *&v275[8] = 2082;
      *&v275[10] = v221;
      *&v275[18] = 1026;
      *&v275[20] = HIDWORD(v236);
      *&v275[24] = 1026;
      *&v275[26] = v131;
      *&v275[30] = 1026;
      *&v275[32] = v130;
      _os_log_impl(dword_100000000, v132, OS_LOG_TYPE_DEBUG, "WlpMetric, fixaps, %{public}d, trigger, %{public}s, used, %{public}d, out, %{public}d, pct, %{public}d", v275, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A168(v275);
      v184 = *(v5 + 1136);
      *v274 = 67241218;
      *&v274[4] = v184;
      *&v274[8] = 2082;
      *&v274[10] = v221;
      *&v274[18] = 1026;
      *&v274[20] = HIDWORD(v236);
      *&v274[24] = 1026;
      *&v274[26] = v131;
      *&v274[30] = 1026;
      *&v274[32] = v130;
      LODWORD(v213) = 36;
      _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4638, 2, "WlpMetric, fixaps, %{public}d, trigger, %{public}s, used, %{public}d, out, %{public}d, pct, %{public}d", v274, v213);
      v186 = v185;
      sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v185);
      if (v186 != v275)
      {
        free(v186);
      }
    }

    if ((*(v5 + 6496) & 0xF) == 0)
    {
      AnalyticsSendEventLazy();
    }

    if (HIDWORD(v236))
    {
      if (HIDWORD(v236) == 1)
      {
        v134 = "1AP";
      }

      else
      {
        v134 = "MultiAP";
      }

      if (sub_10002807C(*(v229 + 4), *(v229 + 12)))
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v135 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *v275 = 136380931;
          *&v275[4] = "wifi, null";
          *&v275[12] = 2081;
          *&v275[14] = v134;
          _os_log_impl(dword_100000000, v135, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", v275, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A0FC(v275);
          *v274 = 136380931;
          *&v274[4] = "wifi, null";
          *&v274[12] = 2081;
          *&v274[14] = v134;
          LODWORD(v213) = 22;
          _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric, islands, %{private}s, %{private}s", v274, v213);
          v200 = v199;
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v199);
          if (v200 != v275)
          {
            free(v200);
          }

          v83 = v2;
        }

        AnalyticsSendEventLazy();
      }

      if (*(v229 + 4) == -1.0 && *(v229 + 12) == -1.0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_10196A0D4();
        }

        v136 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *v275 = 136380931;
          *&v275[4] = "wifi, sentinel";
          *&v275[12] = 2081;
          *&v275[14] = v134;
          _os_log_impl(dword_100000000, v136, OS_LOG_TYPE_DEBUG, "ClxMetric, islands, %{private}s, %{private}s", v275, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10196A0FC(v275);
          *v274 = 136380931;
          *&v274[4] = "wifi, sentinel";
          *&v274[12] = 2081;
          *&v274[14] = v134;
          LODWORD(v213) = 22;
          _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric, islands, %{private}s, %{private}s", v274, v213);
          v202 = v201;
          sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v201);
          if (v202 != v275)
          {
            free(v202);
          }

          v83 = v2;
        }

        AnalyticsSendEventLazy();
      }
    }
  }

  *&v232[24] = *(v5 + 6288) * 1.5;
  LODWORD(v235) = sub_1001E4D24(v229, v83 + 5248, v83 + 5432, v5 + 4240, v5 + 4400);
  if (*(&v229[1] + 4) >= 0.0 && *(&v229[1] + 4) < 20.0)
  {
    *(&v229[1] + 4) = 0x4034000000000000;
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A140();
  }

  v137 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *v275 = 67241730;
    *&v275[4] = HIDWORD(v236);
    *&v275[8] = 2050;
    *&v275[10] = *(&v229[1] + 4);
    *&v275[18] = 1026;
    *&v275[20] = v237;
    *&v275[24] = 2050;
    *&v275[26] = *(&v230 + 4);
    *&v275[34] = 1026;
    *&v275[36] = *&v232[20];
    *&v275[40] = 2082;
    *&v275[42] = v221;
    *&v275[50] = 2050;
    *&v275[52] = *&v232[12];
    _os_log_impl(dword_100000000, v137, OS_LOG_TYPE_DEFAULT, "@WifiFlow, compute, %{public}u, hacc, %{public}.1f, vaps, %{public}u, vacc, %{public}.1f, conf, %{public}d, reason, %{public}s, time, %{public}.1f", v275, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A168(v275);
    *v274 = 67241730;
    *&v274[4] = HIDWORD(v236);
    *&v274[8] = 2050;
    *&v274[10] = *(&v229[1] + 4);
    *&v274[18] = 1026;
    *&v274[20] = v237;
    *&v274[24] = 2050;
    *&v274[26] = *(&v230 + 4);
    *&v274[34] = 1026;
    *&v274[36] = *&v232[20];
    *&v274[40] = 2082;
    *&v274[42] = v221;
    *&v274[50] = 2050;
    *&v274[52] = *&v232[12];
    LODWORD(v213) = 60;
    _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4638, 0, "@WifiFlow, compute, %{public}u, hacc, %{public}.1f, vaps, %{public}u, vacc, %{public}.1f, conf, %{public}d, reason, %{public}s, time, %{public}.1f", v274, v213);
    v183 = v182;
    sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v182);
    if (v183 != v275)
    {
      free(v183);
    }
  }

  if (!sub_100072814(v229))
  {
    goto LABEL_283;
  }

  v138 = *(v5 + 3436);
  v139 = *(v5 + 3444);
  v140 = *(v5 + 3452);
  v141 = *(v5 + 3476);
  v273[0] = *(v5 + 3460);
  v273[1] = v141;
  v273[2] = *(v5 + 3492);
  v142 = *(v5 + 3508);
  *v283 = *(v5 + 3516);
  *&v283[8] = *(v5 + 3524);
  v143 = *(v5 + 3528);
  v144 = *(v5 + 3532);
  v145 = *(v5 + 3548);
  v146 = *(v5 + 3564);
  *&v274[48] = *(v5 + 3580);
  *&v274[32] = v146;
  v147 = *(v5 + 6424) - 1;
  if (v147 >= 2)
  {
    v148 = "moving";
  }

  else
  {
    v148 = "static";
  }

  v149 = *&v232[12] - v142;
  *&v274[16] = v145;
  *v274 = v144;
  v150 = *(v5 + 6080);
  if (v140 > 0.0 && v143 <= 0xB && ((1 << v143) & 0xC02) != 0)
  {
    if (v147 >= 2)
    {
      v151 = v149 >= 1.25;
    }

    else
    {
      v151 = *&v232[12] <= v150;
    }

    if (!v151)
    {
      v155 = sub_100117154(*(v229 + 4), *(v229 + 12), v138, v139);
      if (*(&v229[1] + 4) > 0.0)
      {
        v156 = v155 / *(&v229[1] + 4);
      }

      else
      {
        v156 = -1.0;
      }

      if (v149 <= 1.25)
      {
        v157 = 1;
      }

      else if (v149 <= 3.0)
      {
        v157 = 3;
      }

      else if (v149 <= 10.0)
      {
        v157 = 10;
      }

      else if (v149 <= 30.0)
      {
        v157 = 30;
      }

      else if (v149 <= 60.0)
      {
        v157 = 600;
      }

      else if (v149 <= 1800.0)
      {
        v157 = 1800;
      }

      else if (v149 <= 3600.0)
      {
        v157 = 3600;
      }

      else if (v149 > 18000.0)
      {
        v157 = 3601;
      }

      else
      {
        v157 = 18000;
      }

      v214 = v157;
      v222 = HIDWORD(v236);
      v215 = v148;
      if (BYTE4(v238))
      {
        v158 = 1;
      }

      else
      {
        v158 = -1431655765 * ((v240 - v239) >> 3);
      }

      v159 = HIDWORD(v236);
      if (v158 != HIDWORD(v236))
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v160 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
        {
          *v275 = 67240448;
          *&v275[4] = v158;
          *&v275[8] = 1026;
          *&v275[10] = v159;
          _os_log_impl(dword_100000000, v160, OS_LOG_TYPE_ERROR, "Invalid apsUsedInCalculation, numberOfApsUsedInHorizontalCalculation. apsUsedInCalculation: %{public}u, numberOfApsUsedInHorizontalCalculation: %{public}u", v275, 0xEu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10196A168(v275);
          LODWORD(buf.__r_.__value_.__l.__data_) = 67240448;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v158;
          LOWORD(buf.__r_.__value_.__r.__words[1]) = 1026;
          *(&buf.__r_.__value_.__r.__words[1] + 2) = v159;
          LODWORD(v213) = 14;
          _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4638, 16, "Invalid apsUsedInCalculation, numberOfApsUsedInHorizontalCalculation. apsUsedInCalculation: %{public}u, numberOfApsUsedInHorizontalCalculation: %{public}u", &buf, v213);
          v210 = v209;
          sub_100152C7C("Generic", 1, 0, 0, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v209);
          if (v210 != v275)
          {
            free(v210);
          }

          v83 = v2;
        }
      }

      v161 = v242;
      if (BYTE4(v238))
      {
        v162 = 0;
      }

      else
      {
        v162 = v242;
      }

      v218 = v162;
      v163 = v159 - v162;
      if (BYTE4(v238))
      {
        v164 = 0;
      }

      else
      {
        v164 = v159 - v162;
      }

      v219 = v164;
      if (!BYTE4(v238) && (v242 > v159 || v163 + v242 != v159))
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v165 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_ERROR))
        {
          *v275 = 67240704;
          *&v275[4] = v161;
          *&v275[8] = 1026;
          *&v275[10] = v163;
          *&v275[14] = 1026;
          *&v275[16] = v159;
          _os_log_impl(dword_100000000, v165, OS_LOG_TYPE_ERROR, "Invalid tile, ALS AP counts. numberOfTileApsUsedInHorizontalCalculation: %{public}u, numberOfAlsApsUsedInHorizontalCalculation: %{public}u, numberOfApsUsedInHorizontalCalculation: %{public}u", v275, 0x14u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_10196A168(v275);
          LODWORD(buf.__r_.__value_.__l.__data_) = 67240704;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v161;
          LOWORD(buf.__r_.__value_.__r.__words[1]) = 1026;
          *(&buf.__r_.__value_.__r.__words[1] + 2) = v163;
          HIWORD(buf.__r_.__value_.__r.__words[1]) = 1026;
          LODWORD(buf.__r_.__value_.__r.__words[2]) = v159;
          LODWORD(v213) = 20;
          _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4638, 16, "Invalid tile, ALS AP counts. numberOfTileApsUsedInHorizontalCalculation: %{public}u, numberOfAlsApsUsedInHorizontalCalculation: %{public}u, numberOfApsUsedInHorizontalCalculation: %{public}u", &buf, v213);
          v212 = v211;
          sub_100152C7C("Generic", 1, 0, 0, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v211);
          if (v212 != v275)
          {
            free(v212);
          }

          v83 = v2;
        }
      }

      sub_10031BA04(v219, v222, 100);
      sub_10031BA04(v218, v222, 100);
      v166 = *(v83 + 1216);
      v167 = *(v83 + 1256);
      v216 = v166;
      v217 = *(v83 + 1296);
      v168 = v217 + v167;
      v169 = v168 + v166;
      sub_10031BA04(v166, v168 + v166, 100);
      sub_10031BA04(v168, v169, 100);
      sub_10031BA04(v167, v169, 100);
      sub_10031BA04(v217, v169, 100);
      sub_10031BA04(v222, v169, 100);
      sub_10031BA04(v222, v216, 100);
      if (qword_1025D4630 != -1)
      {
        sub_10196A140();
      }

      v170 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        *v275 = 134350082;
        *&v275[4] = v155;
        *&v275[12] = 2082;
        *&v275[14] = v215;
        *&v275[22] = 2050;
        *&v275[24] = v149;
        *&v275[32] = 1026;
        *&v275[34] = v214;
        *&v275[38] = 2050;
        *&v275[40] = v156;
        _os_log_impl(dword_100000000, v170, OS_LOG_TYPE_DEBUG, "WlpMetric, fixerror, %{public}.1f, agetype, %{public}s, dt, %{public}.1f, %{public}d, horizontalErrorRatio, %{public}.1f", v275, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10196A168(v275);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134350082;
        *(buf.__r_.__value_.__r.__words + 4) = v155;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v215;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
        v268 = v149;
        v269 = 1026;
        v270 = v214;
        v271 = 2050;
        v272 = v156;
        LODWORD(v213) = 48;
        _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4638, 2, "WlpMetric, fixerror, %{public}.1f, agetype, %{public}s, dt, %{public}.1f, %{public}d, horizontalErrorRatio, %{public}.1f", &buf, v213);
        v204 = v203;
        sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v203);
        if (v204 != v275)
        {
          free(v204);
        }

        v83 = v220;
      }

      if ((*(v5 + 6496) & 0xF) == 0)
      {
        goto LABEL_282;
      }

      goto LABEL_283;
    }

    v152 = "timebad";
  }

  else
  {
    if (v147 >= 2)
    {
      v153 = v149 >= 1.25;
    }

    else
    {
      v153 = *&v232[12] <= v150;
    }

    if (v153)
    {
      v152 = "bothbad";
    }

    else
    {
      v152 = "placebad";
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A140();
  }

  v154 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *v275 = 136446210;
    *&v275[4] = v152;
    _os_log_impl(dword_100000000, v154, OS_LOG_TYPE_DEBUG, "WlpMetric, fixerror, %{public}s", v275, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10196A168(v275);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
    *(buf.__r_.__value_.__r.__words + 4) = v152;
    LODWORD(v213) = 12;
    _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4638, 2, "WlpMetric, fixerror, %{public}s", &buf, v213);
    v194 = v193;
    sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v193);
    if (v194 != v275)
    {
      free(v194);
    }
  }

  if ((*(v5 + 6496) & 0xF) == 0)
  {
LABEL_282:
    AnalyticsSendEventLazy();
  }

LABEL_283:
  *(v83 + 1592) = v238;
  v171 = v236;
  *(v83 + 1544) = v235;
  *(v83 + 1560) = v171;
  *(v83 + 1576) = v237;
  v172 = *&v232[16];
  *(v83 + 1480) = *v232;
  *(v83 + 1496) = v172;
  v173 = v234;
  *(v83 + 1512) = v233;
  *(v83 + 1528) = v173;
  v174 = v229[1];
  *(v83 + 1416) = v229[0];
  *(v83 + 1432) = v174;
  v175 = v231;
  *(v83 + 1448) = v230;
  *(v83 + 1464) = v175;
  if (!sub_100072814(v83 + 1416))
  {
    if (*(v83 + 1176))
    {
      if (__src == v265)
      {
        sub_1002D9AF0((v83 + 1600), "invalidComputedLocation_NoValidHorizontalAPs");
      }

      else if (HIDWORD(v236))
      {
        sub_1002D9AF0((v83 + 1600), "invalidComputedLocation_Other");
      }

      else
      {
        sub_1002D9AF0((v83 + 1600), "invalidComputedLocation_NoAPsUsedInHorizontalCalculation");
      }
    }

    else
    {
      sub_1002D9AF0((v83 + 1600), "invalidComputedLocation_EmptyScan");
    }
  }

  *(v83 + 1632) = sub_1001E36C0(v5, v83 + 1416);
  v176 = sub_100072814(v229);
  v177 = *(v83 + 6480);
  if (v176)
  {
    ++*(v177 + 236);
  }

  else
  {
    ++*(v177 + 240);
  }

  if (sub_100103C94(v5 + 3312))
  {
    if (qword_1025D4620 != -1)
    {
      sub_10196A0D4();
    }

    v178 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *&v273[0] = sub_10018D3FC(v5 + 3312);
      sub_10018F0D0(v275);
      v179 = v275[23] >= 0 ? v275 : *v275;
      *v274 = 136380675;
      *&v274[4] = v179;
      _os_log_impl(dword_100000000, v178, OS_LOG_TYPE_DEFAULT, "WifiCalc, associated AP set: YES, %{private}s", v274, 0xCu);
      if ((v275[23] & 0x80000000) != 0)
      {
        operator delete(*v275);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A0FC(v275);
      v189 = qword_1025D4628;
      buf.__r_.__value_.__r.__words[0] = sub_10018D3FC(v5 + 3312);
      sub_10018F0D0(v274);
      if (v274[23] >= 0)
      {
        v190 = v274;
      }

      else
      {
        v190 = *v274;
      }

      LODWORD(v273[0]) = 136380675;
      *(v273 + 4) = v190;
      LODWORD(v213) = 12;
      _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, v189, 0, "WifiCalc, associated AP set: YES, %{private}s", v273, v213);
      v192 = v191;
      if ((v274[23] & 0x80000000) != 0)
      {
        operator delete(*v274);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v192);
      if (v192 != v275)
      {
        free(v192);
      }
    }

    v180 = *(v83 + 6480);
    ++v180[54];
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_10196A0D4();
    }

    v181 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *v275 = 0;
      _os_log_impl(dword_100000000, v181, OS_LOG_TYPE_DEFAULT, "WifiCalc, associated AP set: NO", v275, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196A0FC(v275);
      *v274 = 0;
      LODWORD(v213) = 2;
      _os_log_send_and_compose_impl(2, 0, v275, 1628, dword_100000000, qword_1025D4628, 0, "WifiCalc, associated AP set: NO", v274, v213);
      v188 = v187;
      sub_100152C7C("Generic", 1, 0, 2, "void CL::Wifi1::Policies::PositionCalculation::HandleEvent::updateSingleShotLocation(const char *, Output &) const", "%s\n", v187);
      if (v188 != v275)
      {
        free(v188);
      }
    }

    v180 = *(v83 + 6480);
    ++v180[55];
  }

  if (*(v83 + 1596))
  {
    ++v180[56];
  }

  if (sub_100072814(v229))
  {
    ++*(*(v83 + 6480) + 288);
  }

  if (sub_1001E372C(&v225))
  {
    ++*(*(v83 + 6480) + 292);
  }

  if (sub_100D23684(&v225))
  {
    ++*(*(v83 + 6480) + 296);
  }

  if (v228)
  {
    sub_100008080(v228);
  }

  sub_1003C93BC(v227, v227[1]);
  if (v226)
  {
    sub_100008080(v226);
  }

  if (v225.__r_.__value_.__l.__size_)
  {
    sub_100008080(v225.__r_.__value_.__l.__size_);
  }

  *v275 = &v239;
  sub_1001E56E8(v275);
  *v275 = v255 + 8;
  sub_1001E56E8(v275);
  if (v254[0])
  {
    v254[1] = v254[0];
    operator delete(v254[0]);
  }

  *v275 = &v256;
  sub_1001E56E8(v275);
  sub_10001AF44(&v259, v260[0]);
  if (__p)
  {
    v262 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v265 = __src;
    operator delete(__src);
  }
}

void sub_1001A172C(_Unwind_Exception *a1)
{
  sub_1008DEB20(&STACK[0x408]);
  STACK[0x408] = &STACK[0x920];
  sub_1001E56E8(&STACK[0x408]);
  sub_1008DEA10(&STACK[0x940]);
  STACK[0x408] = &STACK[0xA10];
  sub_1001E56E8(&STACK[0x408]);
  sub_10001AF44(&STACK[0xA28], STACK[0xA30]);
  v2 = STACK[0xA40];
  if (STACK[0xA40])
  {
    STACK[0xA48] = v2;
    operator delete(v2);
  }

  v3 = STACK[0xA58];
  if (STACK[0xA58])
  {
    STACK[0xA60] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1001A1980(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1001A19D8(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_1001A1A30(uint64_t a1, uint64_t *a2, uint64_t *a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, int *a10, double d2_0, double *a11, uint64_t a12, uint64_t a13, int *a14, double *a15, BOOL *a16, int *a17, uint64_t a18, uint64_t a19, unsigned int a21)
{
  *a13 = 0xFFFF;
  *(a13 + 12) = 0;
  *(a13 + 4) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a13 + 36) = _Q0;
  *(a13 + 52) = _Q0;
  *(a13 + 68) = _Q0;
  *(a13 + 84) = 0;
  *(a13 + 96) = 0;
  *(a13 + 104) = 0;
  *(a13 + 88) = 0xBFF0000000000000;
  *(a13 + 112) = 0;
  *(a13 + 116) = 0xBFF0000000000000;
  *(a13 + 124) = 0x7FFFFFFF;
  *(a13 + 136) = 0;
  *(a13 + 144) = 0;
  *(a13 + 128) = 0;
  *(a13 + 152) = 0;
  *(a13 + 20) = xmmword_101C828F0;
  *a10 = -1;
  *a9 = -1;
  __src = 0;
  v78 = 0;
  v79 = 0;
  v26 = *a2;
  v27 = a2[1];
  if (*a2 != v27)
  {
    v75 = (a13 + 36);
    do
    {
      if (sub_10019A2D4(v26) && *(v26 + 32) > 0.0)
      {
        v30 = v78;
        if (v78 >= v79)
        {
          v36 = __src;
          v37 = v78 - __src;
          v38 = 0xAAAAAAAAAAAAAAABLL * ((v78 - __src) >> 5);
          v39 = v38 + 1;
          if (v38 + 1 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          if (0x5555555555555556 * ((v79 - __src) >> 5) > v39)
          {
            v39 = 0x5555555555555556 * ((v79 - __src) >> 5);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v79 - __src) >> 5) >= 0x155555555555555)
          {
            v39 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v39)
          {
            sub_1001A1980(&__src, v39);
          }

          v40 = (32 * ((v78 - __src) >> 5));
          v41 = *(v26 + 16);
          *v40 = *v26;
          v40[1] = v41;
          v42 = *(v26 + 32);
          v43 = *(v26 + 48);
          v44 = *(v26 + 80);
          v40[4] = *(v26 + 64);
          v40[5] = v44;
          v40[2] = v42;
          v40[3] = v43;
          v35 = 96 * v38 + 96;
          v45 = (96 * v38 - v37);
          memcpy(v40 - v37, v36, v37);
          v46 = __src;
          __src = v45;
          v78 = v35;
          v79 = 0;
          if (v46)
          {
            operator delete(v46);
          }
        }

        else
        {
          v31 = *(v26 + 16);
          *v78 = *v26;
          v30[1] = v31;
          v32 = *(v26 + 32);
          v33 = *(v26 + 48);
          v34 = *(v26 + 80);
          v30[4] = *(v26 + 64);
          v30[5] = v34;
          v30[2] = v32;
          v30[3] = v33;
          v35 = (v30 + 6);
        }

        v78 = v35;
      }

      v26 += 96;
    }

    while (v26 != v27);
    v47 = __src;
    if (__src != v78)
    {
      if (a1 && *(a1 + 16) < 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 5))
      {
        __assert_rtn("calculateWifiCentroidRssiMaxreach", "CLLocationCalculator.mm", 1149, "allScannedExcludingMovingWifiApsMacToRssiVertical->size() >= apCollectionVertical.size()");
      }

      v48 = (a13 + 36);
      sub_1001A2124(a1, a3, (a13 + 28), v75, a14, a15, a16, a17, a5, a19, a21);
      v49 = a10;
      if (sub_1001A4254((a13 + 28), v75, v50))
      {
        v51 = sub_1000F7F38();
        v55 = *v75;
        if (*v75 < *(v51 + 27))
        {
          v55 = *(v51 + 27);
        }

        *v75 = v55;
        v56 = *(a13 + 28);
        *(a19 + 104) = 1;
        *a19 = v56;
        *(a19 + 8) = v55;
      }

      else
      {
        v57 = *v75;
        if ((*v75 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018F29C8();
          }

          v58 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_FAULT, "WifiCalc, zaxis, inf unc", buf, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018F29F0(buf);
            LOWORD(v80) = 0;
            LODWORD(v71) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 17, "WifiCalc, zaxis, inf unc", &v80, v71);
            v70 = v69;
            sub_100152C7C("Generic", 1, 0, 0, "static void CLLocationCalculator::calculateWifiCentroidRssiMaxreach(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, LatLonDebuggingData &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType, double)", "%s\n", v69);
            if (v70 != buf)
            {
              free(v70);
            }

            v48 = (a13 + 36);
            v49 = a10;
          }

          v57 = *v48;
        }

        if (v57 != -1.0)
        {
          if (qword_1025D4620 != -1)
          {
            sub_1018F29C8();
          }

          v59 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
          {
            v60 = *(a13 + 28);
            v61 = *v48;
            *buf = 134283777;
            v85 = v60;
            v86 = 2049;
            v87 = v61;
            _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_FAULT, "WifiCalc, zaxis, invalid signleshot alt, %{private}.2f, unc, %{private}.2f", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_1018F29F0(buf);
            v65 = *(a13 + 28);
            v66 = *v48;
            v80 = 134283777;
            v81 = v65;
            v82 = 2049;
            v83 = v66;
            LODWORD(v71) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 17, "WifiCalc, zaxis, invalid signleshot alt, %{private}.2f, unc, %{private}.2f", &v80, v71);
            v68 = v67;
            sub_100152C7C("Generic", 1, 0, 0, "static void CLLocationCalculator::calculateWifiCentroidRssiMaxreach(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, LatLonDebuggingData &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType, double)", "%s\n", v67);
            if (v68 != buf)
            {
              free(v68);
            }

            v48 = (a13 + 36);
            v49 = a10;
          }
        }

        if (qword_1025D4620 != -1)
        {
          sub_1018F29C8();
        }

        v62 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, invalid vertical accuracy!", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018F29F0(buf);
          LOWORD(v80) = 0;
          LODWORD(v71) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, zaxis, invalid vertical accuracy!", &v80, v71);
          v64 = v63;
          sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidRssiMaxreach(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, const std::vector<CLWifiAPLocation> &, unsigned int, unsigned int, unsigned int, double, unsigned int &, unsigned int &, double &, const CLDaemonLocation &, CLDaemonLocation &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, LatLonDebuggingData &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType, double)", "%s\n", v63);
          if (v64 != buf)
          {
            free(v64);
          }

          v48 = (a13 + 36);
          v49 = a10;
        }

        *v48 = -1.0;
      }

      sub_1001A75DC(&__src, v55, a5, v52, v53, v54, a9, v49, a11, a12, d2_0, a13, a18);
      v47 = __src;
    }

    if (v47)
    {
      v78 = v47;
      operator delete(v47);
    }
  }
}

void sub_1001A20EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A2124(uint64_t a1, uint64_t *a2, std::string::size_type *a3, double *a4, int *a5, double *a6, BOOL *a7, int *a8, double a9, uint64_t a10, unsigned int a11)
{
  v252 = 0;
  v250 = 0;
  *&v249 = 1.0;
  *a7 = 0;
  *a8 = 0;
  *a6 = -200.0;
  if (*a2 != a2[1])
  {
    v248 = 0;
    sub_10014E83C(a2, &v248, &v246);
    v13 = v246;
    v14 = v247;
    if (v248)
    {
      v15 = 0;
    }

    else
    {
      v15 = -1431655765 * ((v247 - v246) >> 5);
    }

    *(a10 + 116) = -1431655765 * ((v247 - v246) >> 5);
    *(a10 + 152) = v15;
    if (v14 == v13)
    {
LABEL_184:
      if (v13)
      {
        v247 = v13;
        operator delete(v13);
      }

      return;
    }

    sub_100248EF4(&v246, &v248, a11, v245);
    v16 = *v245;
    v17 = v245[0];
    if (v245[0] == v245[1])
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v26 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, validRssiApCollection is empty", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, zaxis, validRssiApCollection is empty", &__p, 2);
        v28 = v27;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v27);
        if (v28 != buf)
        {
          free(v28);
        }
      }

      goto LABEL_181;
    }

    for (i = v245[0] + 96; i != v245[1]; i += 24)
    {
      if (v17[18] < i[18])
      {
        v17 = i;
      }
    }

    v251 = v17[18];
    if (a1)
    {
      *(a10 + 112) = *(a1 + 16);
      sub_1002491E0(a1, &v239, a11, &__src);
      v20 = __src;
      if (__src == &v243)
      {
        v20 = &v243;
      }

      else
      {
        v21 = __src;
        while (1)
        {
          v22 = v21[1];
          v23 = v21;
          if (v22)
          {
            do
            {
              v21 = v22;
              v22 = *v22;
            }

            while (v22);
          }

          else
          {
            do
            {
              v21 = v23[2];
              v182 = *v21 == v23;
              v23 = v21;
            }

            while (!v182);
          }

          if (v21 == &v243)
          {
            break;
          }

          if (*(v20 + 55) < 0)
          {
            sub_100007244(buf, v20[4], v20[5]);
          }

          else
          {
            *buf = *(v20 + 2);
            *&buf[16] = v20[6];
          }

          v24 = *(v20 + 14);
          *&buf[24] = v24;
          if (*(v21 + 55) < 0)
          {
            sub_100007244(&__p, v21[4], v21[5]);
            v24 = *&buf[24];
          }

          else
          {
            __p = *(v21 + 4);
          }

          v25 = *(v21 + 14);
          LODWORD(v254) = v25;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (v24 < v25)
          {
            v20 = v21;
          }
        }
      }

      v250 = *(v20 + 14);
      sub_10024993C(v245, &__src, &v251, &v250, &v252, &v249);
      sub_10001AF44(&__src, v243);
      v16 = *v245;
    }

    else
    {
      *&v249 = 1.0;
      v252 = 0;
    }

    __src = 0;
    v243 = 0;
    v244 = 0;
    v29 = *(&v16 + 1);
    for (j = v16; j != v29; j += 12)
    {
      sub_1001A8F68(j, buf);
      v31 = v243;
      if (v243 >= v244)
      {
        v37 = __src;
        v38 = v243 - __src;
        v39 = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5);
        v40 = v39 + 1;
        if (v39 + 1 > 0x2AAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        if (0x5555555555555556 * ((v244 - __src) >> 5) > v40)
        {
          v40 = 0x5555555555555556 * ((v244 - __src) >> 5);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v244 - __src) >> 5) >= 0x155555555555555)
        {
          v40 = 0x2AAAAAAAAAAAAAALL;
        }

        if (v40)
        {
          sub_1001A4428(&__src, v40);
        }

        v41 = (32 * ((v243 - __src) >> 5));
        v42 = *&buf[16];
        *v41 = *buf;
        v41[1] = v42;
        v43 = v259;
        v44 = v260;
        v45 = v262;
        v41[4] = v261;
        v41[5] = v45;
        v41[2] = v43;
        v41[3] = v44;
        v36 = (96 * v39 + 96);
        v46 = (96 * v39 - v38);
        memcpy(v41 - v38, v37, v38);
        v47 = __src;
        __src = v46;
        v243 = v36;
        v244 = 0;
        if (v47)
        {
          operator delete(v47);
        }
      }

      else
      {
        v32 = *&buf[16];
        *v243 = *buf;
        *(v31 + 1) = v32;
        v33 = v259;
        v34 = v260;
        v35 = v262;
        *(v31 + 4) = v261;
        *(v31 + 5) = v35;
        *(v31 + 2) = v33;
        *(v31 + 3) = v34;
        v36 = v31 + 96;
      }

      v243 = v36;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v48 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134283521;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5);
      _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEBUG, "@WifiCalc, zaxis, num accessPointsToUseInCalculation, %{private}lu", buf, 0xCu);
    }

    v50 = a10;
    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      LODWORD(__p.__r_.__value_.__l.__data_) = 134283521;
      *(__p.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "@WifiCalc, zaxis, num accessPointsToUseInCalculation, %{private}lu", &__p, 12);
      v206 = v205;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v205);
      if (v206 != buf)
      {
        free(v206);
      }

      v50 = a10;
    }

    v51 = v248;
    *a7 = v248 ^ 1;
    v229 = v51;
    if ((v51 & 1) == 0)
    {
      *a7 = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5) >= sub_10024974C(a11);
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v52 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v53 = *a7;
        *buf = 67109120;
        *&buf[4] = v53;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "@WifiCalc, zaxis, hasSufficientData, %d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        v207 = *a7;
        LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(__p.__r_.__value_.__r.__words[0]) = v207;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "@WifiCalc, zaxis, hasSufficientData, %d", &__p);
        v209 = v208;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v208);
        if (v209 != buf)
        {
          free(v209);
        }

        v50 = a10;
      }
    }

    v54 = __src;
    if (v243 - __src == 96)
    {
      *a3 = *(__src + 2);
      v55 = *(v54 + 5);
      v56 = v55 * *(sub_1000F7F38() + 32);
      *a4 = v56;
      if (v56 > 0.0 && !*a7)
      {
        v57 = sub_1000F7F38();
        v58 = *a4;
        if (*a4 < *(v57 + 28))
        {
          v58 = v57[28];
        }

        *a4 = v58;
      }

      v59 = __src;
      *a8 = -1431655765 * ((v243 - __src) >> 5);
      *a6 = v59[14];
      if (qword_1025D4620 != -1)
      {
        sub_1018F29C8();
      }

      v60 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v61 = *a3;
        v62 = *a4;
        v63 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
        *buf = 134284545;
        *&buf[4] = v61;
        *&buf[12] = 2050;
        *&buf[14] = v62;
        *&buf[22] = 2048;
        *&buf[24] = v63;
        LOWORD(v259) = 2048;
        *(&v259 + 2) = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5);
        WORD5(v259) = 1024;
        HIDWORD(v259) = v229 ^ 1;
        _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "WifiCalc, est, %{private}0.3f, vunc, %{public}0.1f, numInputAps, %lu, numApsUsed, %lu, isSLAM, %d", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        v210 = *a3;
        v211 = *a4;
        v212 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
        LODWORD(__p.__r_.__value_.__l.__data_) = 134284545;
        *(__p.__r_.__value_.__r.__words + 4) = v210;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v211;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
        v254 = v212;
        *v255 = 2048;
        *&v255[2] = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5);
        v256 = 1024;
        v257 = v229 ^ 1;
        LODWORD(v228) = 48;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, est, %{private}0.3f, vunc, %{public}0.1f, numInputAps, %lu, numApsUsed, %lu, isSLAM, %d", &__p, v228);
        v214 = v213;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v213);
        if (v214 != buf)
        {
          free(v214);
        }

        v50 = a10;
      }

      *(__src + 21) = 1065353216;
      sub_10018F0D0(&__p);
      v65 = *(v50 + 192);
      v64 = *(v50 + 200);
      if (v65 >= v64)
      {
        v115 = *(v50 + 184);
        v116 = 0xAAAAAAAAAAAAAAABLL * ((v65 - v115) >> 3);
        v117 = v116 + 1;
        if (v116 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_10028C64C();
        }

        v118 = 0xAAAAAAAAAAAAAAABLL * ((v64 - v115) >> 3);
        if (2 * v118 > v117)
        {
          v117 = 2 * v118;
        }

        if (v118 >= 0x555555555555555)
        {
          v119 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v119 = v117;
        }

        *&v259 = v50 + 184;
        if (v119)
        {
          sub_1001A19D8(v50 + 184, v119);
        }

        v143 = 24 * v116;
        v144 = *&__p.__r_.__value_.__l.__data_;
        *(v143 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v143 = v144;
        memset(&__p, 0, sizeof(__p));
        v145 = 24 * v116 + 24;
        v146 = *(v50 + 184);
        v147 = *(v50 + 192) - v146;
        v148 = (24 * v116 - v147);
        memcpy(v148, v146, v147);
        v149 = *(v50 + 184);
        *(v50 + 184) = v148;
        *(v50 + 192) = v145;
        v150 = *(v50 + 200);
        *(v50 + 200) = 0;
        *&buf[16] = v149;
        *&buf[24] = v150;
        *buf = v149;
        *&buf[8] = v149;
        sub_100197A50(buf);
        v151 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        *(v50 + 192) = v145;
        if (v151 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v66 = *&__p.__r_.__value_.__l.__data_;
        *(v65 + 16) = *(&__p.__r_.__value_.__l + 2);
        *v65 = v66;
        *(v50 + 192) = v65 + 24;
      }

      if ((v50 + 160) != &__src)
      {
        sub_10024A16C((v50 + 160), __src, v243, 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5));
      }

      v152 = v251;
      v153 = *(v54 + 14);
      v154 = v252;
      v155 = *a8;
      v156 = *a7;
      *(v50 + 40) = v250;
      *(v50 + 44) = v152;
      *(v50 + 48) = v153;
      *(v50 + 56) = v153;
      *(v50 + 64) = 0;
      *(v50 + 72) = 0;
      *(v50 + 80) = v154;
      *(v50 + 108) = v155;
      *(v50 + 144) = v156;
LABEL_179:
      if (__src)
      {
        v243 = __src;
        operator delete(__src);
      }

LABEL_181:
      if (v245[0])
      {
        v245[1] = v245[0];
        operator delete(v245[0]);
      }

      v13 = v246;
      goto LABEL_184;
    }

    v67 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5));
    if (v243 == __src)
    {
      v68 = 0;
    }

    else
    {
      v68 = v67;
    }

    sub_1002EA134(__src, v243, v68, 1, v49);
    v69 = v243;
    while (1)
    {
      v70 = __src;
      if (0xAAAAAAAAAAAAAAABLL * ((v69 - v70) >> 5) <= *(sub_1000F7F38() + 52))
      {
        break;
      }

      v69 = v243 - 96;
      v243 -= 96;
    }

    v71 = __src;
    v72 = v243;
    if (__src != v243)
    {
      do
      {
        v73 = *(v71 + 8);
        *(v71 + 21) = 0;
        v74 = *(v71 + 5);
        if (v74 > 0.0)
        {
          v76 = *(v71 + 13);
          v75 = *(v71 + 14);
          v77 = sub_1000F7F38();
          sub_1001A565C(v77 + 45, v75, v76, v74, a9 - v73);
          *&v78 = v78;
          *(v71 + 21) = LODWORD(v78);
        }

        v71 += 96;
      }

      while (v71 != v72);
      v71 = __src;
      v72 = v243;
    }

    if (v71 == v72)
    {
      goto LABEL_179;
    }

    v79 = 0.0;
    v80 = v71;
    do
    {
      v79 = v79 + v80[21];
      v80 += 24;
    }

    while (v80 != v72);
    if (v79 <= 0.0)
    {
      goto LABEL_179;
    }

    v81 = v71;
    do
    {
      v82 = v81[21] / v79;
      v81[21] = v82;
      v81 += 24;
    }

    while (v81 != v72);
    if ((a10 + 160) != &__src)
    {
      sub_10024A16C((a10 + 160), v71, v72, 0xAAAAAAAAAAAAAAABLL * ((v72 - v71) >> 5));
    }

    v83 = sub_1002EB388(&__src);
    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v84 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67174657;
      *&buf[4] = v83;
      _os_log_impl(dword_100000000, v84, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, isMultimodal, %{private}d", buf, 8u);
    }

    v230 = v83;
    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      LODWORD(__p.__r_.__value_.__l.__data_) = 67174657;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v83;
      LODWORD(v228) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, zaxis, isMultimodal, %{private}d", &__p, v228);
      v216 = v215;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v215);
      if (v216 != buf)
      {
        free(v216);
      }
    }

    v239 = 0;
    v240 = 0;
    v241 = 0;
    sub_1002EC790(&__src, &v239);
    if (v239 != v240)
    {
      sub_10024A16C(&__src, v239, v240, 0xAAAAAAAAAAAAAAABLL * ((v240 - v239) >> 5));
    }

    v86 = __src;
    v85 = v243;
    if (__src != v243)
    {
      v87 = (a10 + 184);
      do
      {
        v88 = *(v86 + 1);
        *buf = *v86;
        *&buf[16] = v88;
        v89 = *(v86 + 2);
        v90 = *(v86 + 3);
        v91 = *(v86 + 5);
        v261 = *(v86 + 4);
        v262 = v91;
        v259 = v89;
        v260 = v90;
        sub_10018F0D0(&v238);
        v93 = *(a10 + 192);
        v92 = *(a10 + 200);
        if (v93 >= v92)
        {
          v95 = 0xAAAAAAAAAAAAAAABLL * ((v93 - *v87) >> 3);
          v96 = v95 + 1;
          if (v95 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v97 = 0xAAAAAAAAAAAAAAABLL * ((v92 - *v87) >> 3);
          if (2 * v97 > v96)
          {
            v96 = 2 * v97;
          }

          if (v97 >= 0x555555555555555)
          {
            v98 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v98 = v96;
          }

          *v255 = a10 + 184;
          if (v98)
          {
            sub_1001A19D8(v87, v98);
          }

          v99 = 24 * v95;
          v100 = *&v238.__r_.__value_.__l.__data_;
          *(v99 + 16) = *(&v238.__r_.__value_.__l + 2);
          *v99 = v100;
          memset(&v238, 0, sizeof(v238));
          v101 = 24 * v95 + 24;
          v102 = *(a10 + 184);
          v103 = *(a10 + 192) - v102;
          v104 = 24 * v95 - v103;
          memcpy((v99 - v103), v102, v103);
          v105 = *(a10 + 184);
          *(a10 + 184) = v104;
          *(a10 + 192) = v101;
          v106 = *(a10 + 200);
          *(a10 + 200) = 0;
          __p.__r_.__value_.__r.__words[2] = v105;
          v254 = v106;
          __p.__r_.__value_.__r.__words[0] = v105;
          __p.__r_.__value_.__l.__size_ = v105;
          sub_100197A50(&__p);
          v107 = SHIBYTE(v238.__r_.__value_.__r.__words[2]);
          *(a10 + 192) = v101;
          if (v107 < 0)
          {
            operator delete(v238.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v94 = *&v238.__r_.__value_.__l.__data_;
          *(v93 + 16) = *(&v238.__r_.__value_.__l + 2);
          *v93 = v94;
          *(a10 + 192) = v93 + 24;
        }

        v86 += 96;
      }

      while (v86 != v85);
    }

    if (qword_1025D4620 == -1)
    {
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    }

    else
    {
      sub_1018F29C8();
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v109 = v230;
    v110 = p_info[197];
    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5);
      _os_log_impl(dword_100000000, v110, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, num aps after outlier rejection, %lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      v217 = p_info[197];
      LODWORD(__p.__r_.__value_.__l.__data_) = 134217984;
      *(__p.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v217, 2, "WifiCalc, zaxis, num aps after outlier rejection, %lu", &__p);
      v219 = v218;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v218);
      if (v219 != buf)
      {
        free(v219);
      }

      v109 = v230;
    }

    v111 = __src;
    v112 = 0.0;
    v113 = 0.0;
    while (v111 != v243)
    {
      v114 = v111[21];
      v113 = v113 + v114 * *(v111 + 2);
      v112 = v112 + v114;
      v111 += 24;
    }

    v120 = v113 / v112;
    if (v112 <= 0.0)
    {
      v121 = 0.0;
    }

    else
    {
      v121 = v120;
    }

    v122 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v123 = sub_1002F018C(&__src, v121);
    if (v123 < 0.0)
    {
LABEL_246:
      if (v239)
      {
        v240 = v239;
        operator delete(v239);
      }

      goto LABEL_179;
    }

    v124 = __src;
    v125 = v243;
    v126 = __src;
    if (__src != v243)
    {
      v127 = __src + 96;
      v126 = __src;
      if (__src + 96 != v243)
      {
        v126 = __src;
        do
        {
          if (v126[14] < *(v127 + 14))
          {
            v126 = v127;
          }

          v127 += 96;
        }

        while (v127 != v243);
      }
    }

    v128 = v126[14];
    *a5 = v128;
    v129 = 0.0;
    if (v124 != v125)
    {
      v130 = v124;
      do
      {
        v129 = v129 + v130[14];
        v130 += 24;
      }

      while (v130 != v125);
    }

    *a6 = v129 / (0xAAAAAAAAAAAAAAABLL * ((v125 - v124) >> 5));
    if (*sub_1000F7F38() >= v128 || (v131 = *a5, v132 = *a6, v131 - v132 > *(sub_1000F7F38() + 2)) && (v133 = *a6, v133 < *(sub_1000F7F38() + 1)))
    {
      *a7 = 0;
    }

    if (qword_1025D4620 != -1)
    {
      sub_1018F29C8();
    }

    v134 = p_info[197];
    if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
    {
      v135 = *a5;
      *buf = 67109120;
      *&buf[4] = v135;
      _os_log_impl(dword_100000000, v134, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, maxRssi, %d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018F29F0(buf);
      v220 = p_info[197];
      v221 = *a5;
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v221;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v220, 2, "WifiCalc, zaxis, maxRssi, %d", &__p);
      v223 = v222;
      sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v222);
      if (v223 != buf)
      {
        free(v223);
      }

      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      v122 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      v109 = v230;
    }

    v136 = v251;
    if (*a5 != v251)
    {
      *a7 = 0;
    }

    v137 = __src;
    v138 = v243;
    if (__src == v243)
    {
      v142 = 0.0;
      v141 = __src;
    }

    else
    {
      v139 = 0;
      do
      {
        v140 = v137[5];
        if (v140 > *(sub_1000F7F38() + 45))
        {
          ++v139;
        }

        v137 += 12;
      }

      while (v137 != v138);
      v137 = __src;
      v141 = v243;
      v142 = v139;
      v122 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v157 = *(sub_1000F7F38() + 39);
    v158 = *(sub_1000F7F38() + 28);
    v159 = *&v249;
    v160 = sub_1000F7F38();
    v161 = v142 / (0xAAAAAAAAAAAAAAABLL * ((v141 - v137) >> 5));
    v162 = v123 * exp(v161 * v157);
    if (v123 >= v162)
    {
      v162 = v123;
    }

    if (v158 < v162)
    {
      v162 = v158;
    }

    v163 = v162 * v159;
    if (*(v160 + 28) >= v163)
    {
      v164 = v163;
    }

    else
    {
      v164 = *(v160 + 28);
    }

    if (!v109)
    {
      v167 = a10;
LABEL_235:
      v197 = *a7;
      if (v164 >= 0.0)
      {
        if (!*a7)
        {
          v198 = sub_1000F7F38();
          if (v164 < *(v198 + 28))
          {
            v164 = *(v198 + 28);
          }

          v197 = *a7;
        }

        *a4 = v164;
        *a3 = v121;
      }

      v199 = -1431655765 * ((v243 - __src) >> 5);
      *a8 = v199;
      v200 = *a5;
      v201 = *a6;
      v202 = v252;
      *(v167 + 40) = v250;
      *(v167 + 44) = v136;
      *(v167 + 48) = v200;
      *(v167 + 56) = v201;
      *(v167 + 64) = v109;
      *(v167 + 72) = v161;
      *(v167 + 80) = v202;
      *(v167 + 108) = v199;
      *(v167 + 144) = v197;
      if (v122[196] != -1)
      {
        sub_1018F29C8();
      }

      v203 = p_info[197];
      if (os_log_type_enabled(v203, OS_LOG_TYPE_DEBUG))
      {
        v204 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
        *buf = 134284545;
        *&buf[4] = v121;
        *&buf[12] = 2050;
        *&buf[14] = v164;
        *&buf[22] = 2048;
        *&buf[24] = v204;
        LOWORD(v259) = 2048;
        *(&v259 + 2) = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5);
        WORD5(v259) = 1024;
        HIDWORD(v259) = v229 ^ 1;
        _os_log_impl(dword_100000000, v203, OS_LOG_TYPE_DEBUG, "WifiCalc, est, %{private}0.3f, vunc, %{public}0.1f, numInputAps, %lu, numApsUsed, %lu, isSLAM, %d", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018F29F0(buf);
        v224 = p_info[197];
        v225 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
        LODWORD(__p.__r_.__value_.__l.__data_) = 134284545;
        *(__p.__r_.__value_.__r.__words + 4) = v121;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v164;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
        v254 = v225;
        *v255 = 2048;
        *&v255[2] = 0xAAAAAAAAAAAAAAABLL * ((v243 - __src) >> 5);
        v256 = 1024;
        v257 = v229 ^ 1;
        LODWORD(v228) = 48;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v224, 2, "WifiCalc, est, %{private}0.3f, vunc, %{public}0.1f, numInputAps, %lu, numApsUsed, %lu, isSLAM, %d", &__p, v228);
        v227 = v226;
        sub_100152C7C("Generic", 1, 0, 2, "static void CLLocationCalculator::calculateWifiCentroidAltitude(const std::map<std::string, int> *, const std::vector<CLWifiAPLocation> &, double &, double &, CFAbsoluteTime, int &, double &, BOOL &, unsigned int &, ZaxisDebuggingData &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v226);
        if (v227 != buf)
        {
          free(v227);
        }
      }

      goto LABEL_246;
    }

    memset(buf, 0, 24);
    v165 = v245[0];
    v166 = v245[1];
    v167 = a10;
    if (v245[0] == v245[1])
    {
      v180 = 0;
    }

    else
    {
      v168 = 0;
      do
      {
        v169 = v165[3];
        if (v168 >= *&buf[16])
        {
          v170 = *buf;
          v171 = v168 - *buf;
          v172 = (v168 - *buf) >> 3;
          v173 = v172 + 1;
          if ((v172 + 1) >> 61)
          {
            sub_10028C64C();
          }

          v174 = *&buf[16] - *buf;
          if ((*&buf[16] - *buf) >> 2 > v173)
          {
            v173 = v174 >> 2;
          }

          if (v174 >= 0x7FFFFFFFFFFFFFF8)
          {
            v175 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v175 = v173;
          }

          if (v175)
          {
            sub_1000B9708(buf, v175);
          }

          v176 = v172;
          v177 = (8 * v172);
          v178 = &v177[-v176];
          *v177 = v169;
          v168 = v177 + 1;
          memcpy(v178, v170, v171);
          v179 = *buf;
          *buf = v178;
          *&buf[8] = v168;
          *&buf[16] = 0;
          if (v179)
          {
            operator delete(v179);
          }

          v167 = a10;
        }

        else
        {
          *v168++ = v169;
        }

        *&buf[8] = v168;
        v165 += 12;
      }

      while (v165 != v166);
      v180 = *buf;
      v181 = *buf + 8;
      v182 = *buf == v168 || v181 == v168;
      if (!v182)
      {
        v184 = **buf;
        v185 = **buf;
        v186 = *buf + 8;
        v187 = *buf;
        v188 = (*buf + 8);
        do
        {
          v189 = *v188++;
          v190 = v189;
          if (v185 < v189)
          {
            v185 = v190;
            v187 = v186;
          }

          v186 = v188;
        }

        while (v188 != v168);
        v183 = *v187;
        v191 = (*buf + 8);
        v122 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        do
        {
          v192 = *v191++;
          v193 = v192;
          if (v192 < v184)
          {
            v184 = v193;
            v180 = v181;
          }

          v181 = v191;
        }

        while (v191 != v168);
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        goto LABEL_229;
      }

      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      v122 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    }

    v183 = *v180;
LABEL_229:
    v194 = *v180;
    v195 = sub_1000F7F38();
    v196 = v183 - v194;
    if (*(v195 + 28) < v183 - v194)
    {
      v196 = *(v195 + 28);
    }

    if (v164 < v196)
    {
      v164 = v196;
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    goto LABEL_235;
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F28B0();
  }

  v19 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, apCollection is empty", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F2EB8();
  }
}

void sub_1001A3A1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a35)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001A3B64(uint64_t a1, unint64_t a2)
{
  if (CFAbsoluteTimeGetCurrent() - *(a1 + 112) >= a2 && *a1 + *(a1 + 4))
  {
    sub_10121C23C(a1);

    sub_10121C098(a1);
  }
}

BOOL sub_1001A3BD4(sqlite3_stmt *a1, int a2, double a3)
{
  v6 = sqlite3_bind_double(a1, a2, a3);
  v11 = v6;
  if (v6)
  {
    if (qword_1025D4850 != -1)
    {
      sub_1018E57D4();
    }

    v7 = off_1025D4858;
    if (os_log_type_enabled(off_1025D4858, OS_LOG_TYPE_FAULT))
    {
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2049;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = sqlite3_sql(a1);
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Could not bind, value:%{private}f, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
      if (qword_1025D4850 != -1)
      {
        sub_1018E57E8();
      }
    }

    v8 = off_1025D4858;
    if (os_signpost_enabled(off_1025D4858))
    {
      v9 = sqlite3_sql(a1);
      *buf = 68290307;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2049;
      v17 = a3;
      v18 = 1026;
      v19 = a2;
      v20 = 1040;
      v21 = 4;
      v22 = 2098;
      v23 = &v11;
      v24 = 2081;
      v25 = v9;
      _os_signpost_emit_with_name_impl(dword_100000000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not bind", "{msg%{public}.0s:Could not bind, value:%{private}f, index:%{public}d, rc:%{public, location:SqliteResult}.*P, query:%{private, location:escape_only}s}", buf, 0x3Cu);
    }
  }

  return v6 == 0;
}

BOOL sub_1001A3DEC(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 16);
  (*(*v4 + 16))(v4);
  v5 = sqlite3_step(a2);
  v6 = v5;
  v7 = v5 == 101;
  if (v5 != 101)
  {
    sub_10060A6E4(v5, "sqlite3_step()", v5, a2);
    sub_10060AF58(*(a1 + 8), (a1 + 96), *(a1 + 56), v6);
  }

  v8 = sqlite3_reset(a2);
  v9 = v8;
  if (v8)
  {
    sub_10060A6E4(v8, "sqlite3_reset()", v8, a2);
    sub_10060AF58(*(a1 + 8), (a1 + 96), *(a1 + 56), v9);
    v7 = 0;
  }

  (*(*v4 + 24))(v4);
  return v7;
}

void sub_1001A3F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A3F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 76) - *a1;
  result = sub_100100690();
  if (v6 >= *(result + 32) && *(a2 + 180) == 0)
  {
    sub_10018F18C(&v11, a3, a2, -1);
    v9[6] = v18;
    v9[7] = v19;
    v10[0] = v20[0];
    *(v10 + 12) = *(v20 + 12);
    v9[2] = v14;
    v9[3] = v15;
    v9[4] = v16;
    v9[5] = v17;
    v9[0] = v12;
    v9[1] = v13;
    result = sub_100072814(v9);
    if (result)
    {
      sub_1001A400C(a1);
      result = sub_10018F858(*(a1 + 8), &v11);
      *a1 = *(a2 + 76);
    }
  }

  return result;
}

void sub_1001A400C(uint64_t a1)
{
  v2 = sub_10018E854(*(a1 + 8));
  sub_10019C594(a1 + 24, v2);
  sub_10019C558((a1 + 24));
  if (!sub_10018E854(*(a1 + 8)))
  {
    sub_1001AC420(buf);
    v3 = *buf;
    memset(buf, 0, sizeof(buf));
    v4 = *(a1 + 16);
    *(a1 + 8) = v3;
    if (v4)
    {
      sub_100008080(v4);
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }
    }

    if (sub_10018E854(*(a1 + 8)))
    {
      v5 = "success";
    }

    else
    {
      v5 = "fail";
    }

    sub_10000EC00(__p, v5);
    if (qword_1025D4620 != -1)
    {
      sub_101A457CC();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v7 = __p;
      if (v12 < 0)
      {
        v7 = __p[0];
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLWifiAssociatedApWifiHarvester, re-initialize database: %s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A457F4(buf);
      v8 = __p;
      if (v12 < 0)
      {
        v8 = __p[0];
      }

      v13 = 136315138;
      v14 = v8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "CLWifiAssociatedApWifiHarvester, re-initialize database: %s", &v13);
      v10 = v9;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApWifiHarvester::reinitializeWifiAssociatedApHarvestDatabaseIfInvalid()", "%s\n", v9);
      if (v10 != buf)
      {
        free(v10);
      }
    }

    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1001A422C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001A4254(double *a1, double *a2, __n128 a3)
{
  v3 = *a2 & 0x7FFFFFFFFFFFFFFFLL;
  if (*a2 > -1 && (v3 - 0x10000000000000) >> 53 < 0x3FF || (*a2 - 1) < 0xFFFFFFFFFFFFFLL || v3 == 0)
  {
    if (*a1 >= -450.0 && *a1 <= 8850.0)
    {
      return 1;
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v13 = *a1;
      v14 = 134283521;
      v15 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, invalid altitude, %{private}0.3f", &v14, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B40FC4();
      return 0;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B40DE8();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v11 = *a2;
      v14 = 134349056;
      v15 = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, invalid uncertainty, %{public}0.3f", &v14, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B40EE0();
      return 0;
    }
  }

  return result;
}

void sub_1001A4428(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1001D0818();
}

double sub_1001A4480(__int128 *a1, double *a2, uint64_t a3, char a4, double result)
{
LABEL_1:
  v9 = a2 - 12;
  i = a1;
  while (1)
  {
    a1 = i;
    v11 = a2 - i;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 5);
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      return result;
    }

    if (v12 == 2)
    {
      v84 = *(a2 - 10);
      v85 = *(i + 14);
      if (v84 > v85 || v84 == v85 && ((v201 = *(a2 - 18), v202 = *(i + 6), v201 > v202) || v201 == v202 && (result = *(a2 - 8), result < i[4])))
      {
        v245 = *i;
        v256 = *(i + 1);
        *v280 = *(i + 4);
        *&v280[16] = *(i + 5);
        v264 = *(i + 2);
        v272 = *(i + 3);
        v87 = *(a2 - 3);
        v86 = *(a2 - 2);
        v88 = *(a2 - 4);
        *(i + 73) = *(a2 - 23);
        *(i + 3) = v87;
        *(i + 4) = v86;
        *(i + 2) = v88;
        v89 = *(a2 - 5);
        *i = *v9;
        *(i + 1) = v89;
        *v9 = v245;
        *(a2 - 5) = v256;
        result = *&v264;
        *(a2 - 23) = *&v280[9];
        *(a2 - 3) = v272;
        *(a2 - 2) = *v280;
        *(a2 - 4) = v264;
      }

      return result;
    }

LABEL_9:
    if (v11 <= 2303)
    {
      v105 = i + 12;
      v107 = i == a2 || v105 == a2;
      if (a4)
      {
        if (v107)
        {
          return result;
        }

        v108 = 0;
        v109 = i;
        while (2)
        {
          v110 = v109;
          v109 = v105;
          v111 = *(v110 + 38);
          v112 = *(v110 + 14);
          if (v111 > v112)
          {
            v113 = *(v110 + 30);
            goto LABEL_151;
          }

          if (v111 == v112)
          {
            v113 = *(v110 + 30);
            v125 = *(v110 + 6);
            if (v113 > v125 || v113 == v125 && (result = v110[16], result < v110[4]))
            {
LABEL_151:
              v227 = *(v109 + 2);
              v223 = *v109;
              v114 = *(v110 + 31);
              v115 = v110[16];
              v235 = *(v110 + 17);
              *v249 = *(v110 + 156);
              *&v249[16] = *(v110 + 172);
              v116 = *(v110 + 1);
              *v109 = *v110;
              *(v109 + 1) = v116;
              *(v109 + 73) = *(v110 + 73);
              v117 = *(v110 + 4);
              *(v109 + 3) = *(v110 + 3);
              *(v109 + 4) = v117;
              v118 = i;
              *(v109 + 2) = *(v110 + 2);
              if (v110 != i)
              {
                v119 = v108;
                while (1)
                {
                  v120 = (i + v119);
                  v121 = *(i + v119 - 40);
                  if (v111 <= v121)
                  {
                    if (v111 != v121)
                    {
                      v118 = (i + v119);
                      goto LABEL_167;
                    }

                    v122 = *(i + v119 - 72);
                    if (v113 <= v122 && (v113 != v122 || v115 >= *(i + v119 - 64)))
                    {
                      break;
                    }
                  }

                  v110 -= 12;
                  v123 = *(v120 - 3);
                  v120[2] = *(v120 - 4);
                  v120[3] = v123;
                  v120[4] = *(v120 - 2);
                  *(v120 + 73) = *(v120 - 23);
                  v124 = *(v120 - 5);
                  *v120 = *(v120 - 6);
                  v120[1] = v124;
                  v119 -= 96;
                  if (!v119)
                  {
                    v118 = i;
                    goto LABEL_167;
                  }
                }

                v118 = v110;
              }

LABEL_167:
              *v118 = v223;
              *(v118 + 2) = v227;
              *(v118 + 6) = v113;
              *(v118 + 7) = v114;
              v118[4] = v115;
              *(v118 + 5) = v235;
              *(v118 + 14) = v111;
              *(v118 + 60) = *v249;
              result = *&v249[13];
              *(v118 + 73) = *&v249[13];
            }
          }

          v105 = v109 + 12;
          v108 += 96;
          if (v109 + 12 == a2)
          {
            return result;
          }

          continue;
        }
      }

      if (v107)
      {
        return result;
      }

      while (2)
      {
        v205 = a1;
        a1 = v105;
        v206 = *(v205 + 38);
        v207 = *(v205 + 14);
        if (v206 <= v207)
        {
          if (v206 == v207)
          {
            v208 = *(v205 + 30);
            v216 = *(v205 + 6);
            if (v208 > v216)
            {
              goto LABEL_250;
            }

            if (v208 == v216)
            {
              result = *(v205 + 16);
              if (result < *(v205 + 4))
              {
                goto LABEL_250;
              }
            }
          }
        }

        else
        {
          v208 = *(v205 + 30);
LABEL_250:
          v229 = *(a1 + 2);
          v226 = *a1;
          v209 = *(v205 + 31);
          v210 = *(v205 + 16);
          v238 = *(v205 + 136);
          *v252 = *(v205 + 156);
          *&v252[16] = *(v205 + 172);
          do
          {
            do
            {
              v211 = v205;
              v212 = v205[3];
              v205[8] = v205[2];
              v205[9] = v212;
              v205[10] = v205[4];
              *(v205 + 169) = *(v205 + 73);
              v213 = v205[1];
              v205[6] = *v205;
              v205[7] = v213;
              v205 -= 6;
              v214 = *(v211 - 10);
            }

            while (v206 > v214);
            if (v206 != v214)
            {
              break;
            }

            v215 = *(v211 - 18);
          }

          while (v208 > v215 || v208 == v215 && v210 < *(v211 - 8));
          *v211 = v226;
          *(v211 + 2) = v229;
          *(v211 + 6) = v208;
          *(v211 + 7) = v209;
          *(v211 + 4) = v210;
          *(v211 + 40) = v238;
          *(v211 + 14) = v206;
          *(v211 + 60) = *v252;
          result = *&v252[13];
          *(v211 + 73) = *&v252[13];
        }

        v105 = (a1 + 6);
        if (a1 + 6 == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (i == a2)
      {
        return result;
      }

      v126 = (v12 - 2) >> 1;
      v127 = v126;
      while (2)
      {
        v128 = v127;
        if (v126 >= v127)
        {
          v129 = (2 * v127) | 1;
          v130 = &i[12 * v129];
          if (2 * v128 + 2 < v12)
          {
            v131 = *(v130 + 14);
            v132 = *(v130 + 38);
            if (v131 > v132 || v131 == v132 && ((v133 = *(v130 + 6), v134 = *(v130 + 30), v133 > v134) || v133 == v134 && v130[4] < v130[16]))
            {
              v130 += 12;
              v129 = 2 * v128 + 2;
            }
          }

          v135 = &i[12 * v128];
          v136 = *(v130 + 14);
          v137 = *(v135 + 14);
          if (v136 <= v137)
          {
            if (v136 == v137)
            {
              v138 = *(v130 + 6);
              v139 = *(v135 + 6);
              if (v138 <= v139)
              {
                if (v138 != v139)
                {
                  goto LABEL_186;
                }

                v139 = *(v130 + 6);
                if (v130[4] >= v135[4])
                {
                  goto LABEL_186;
                }
              }
            }

            else
            {
              v139 = *(v135 + 6);
LABEL_186:
              v228 = *(v135 + 2);
              v224 = *v135;
              v140 = *(v135 + 7);
              v141 = v135[4];
              v236 = *(v135 + 5);
              *v250 = *(v135 + 60);
              *&v250[16] = *(v135 + 76);
              v143 = *(v130 + 3);
              v142 = *(v130 + 4);
              v144 = *(v130 + 2);
              *(v135 + 73) = *(v130 + 73);
              *(v135 + 3) = v143;
              *(v135 + 4) = v142;
              *(v135 + 2) = v144;
              v145 = *(v130 + 1);
              *v135 = *v130;
              *(v135 + 1) = v145;
              while (1)
              {
                if (v126 < v129)
                {
                  goto LABEL_202;
                }

                v146 = v130;
                v147 = 2 * v129;
                v129 = (2 * v129) | 1;
                v130 = &i[12 * v129];
                v148 = v147 + 2;
                if (v148 < v12)
                {
                  v149 = *(v130 + 14);
                  v150 = *(v130 + 38);
                  if (v149 > v150 || v149 == v150 && ((v151 = *(v130 + 6), v152 = *(v130 + 30), v151 > v152) || v151 == v152 && v130[4] < v130[16]))
                  {
                    v130 += 12;
                    v129 = v148;
                  }
                }

                v153 = *(v130 + 14);
                if (v153 > v137)
                {
                  break;
                }

                if (v153 == v137)
                {
                  v154 = *(v130 + 6);
                  if (v154 > v139 || v154 == v139 && v130[4] < v141)
                  {
                    break;
                  }
                }

                v155 = *(v130 + 1);
                *v146 = *v130;
                *(v146 + 1) = v155;
                v156 = *(v130 + 2);
                v157 = *(v130 + 3);
                v158 = *(v130 + 4);
                *(v146 + 73) = *(v130 + 73);
                *(v146 + 3) = v157;
                *(v146 + 4) = v158;
                *(v146 + 2) = v156;
              }

              v130 = v146;
LABEL_202:
              *v130 = v224;
              *(v130 + 2) = v228;
              *(v130 + 6) = v139;
              *(v130 + 7) = v140;
              v130[4] = v141;
              *(v130 + 5) = v236;
              *(v130 + 14) = v137;
              *(v130 + 60) = *v250;
              *(v130 + 73) = *&v250[13];
            }
          }
        }

        v127 = v128 - 1;
        if (v128)
        {
          continue;
        }

        break;
      }

      v159 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 5);
      while (2)
      {
        v160 = 0;
        v251 = *i;
        v260 = *(i + 1);
        *v284 = *(i + 4);
        *&v284[16] = *(i + 5);
        v268 = *(i + 2);
        v276 = *(i + 3);
        v161 = i;
        do
        {
          v162 = v161;
          v163 = &v161[12 * v160];
          v161 = v163 + 12;
          v164 = 2 * v160;
          v160 = (2 * v160) | 1;
          v165 = v164 + 2;
          if (v165 < v159)
          {
            v166 = *(v163 + 38);
            v167 = *(v163 + 62);
            if (v166 > v167 || v166 == v167 && ((v168 = *(v163 + 30), v169 = *(v163 + 54), v168 > v169) || v168 == v169 && v163[16] < v163[28]))
            {
              v161 = v163 + 24;
              v160 = v165;
            }
          }

          v170 = *(v161 + 1);
          *v162 = *v161;
          *(v162 + 1) = v170;
          v171 = *(v161 + 2);
          v172 = *(v161 + 3);
          v173 = *(v161 + 4);
          *(v162 + 73) = *(v161 + 73);
          *(v162 + 3) = v172;
          *(v162 + 4) = v173;
          *(v162 + 2) = v171;
        }

        while (v160 <= ((v159 - 2) >> 1));
        a2 -= 12;
        if (v161 == a2)
        {
          *v161 = v251;
          *(v161 + 1) = v260;
          result = *&v268;
          *(v161 + 73) = *&v284[9];
          *(v161 + 3) = v276;
          *(v161 + 4) = *v284;
          *(v161 + 2) = v268;
        }

        else
        {
          v174 = *(a2 + 1);
          *v161 = *a2;
          *(v161 + 1) = v174;
          v175 = *(a2 + 2);
          v176 = *(a2 + 3);
          v177 = *(a2 + 4);
          *(v161 + 73) = *(a2 + 73);
          *(v161 + 3) = v176;
          *(v161 + 4) = v177;
          *(v161 + 2) = v175;
          *(a2 + 73) = *&v284[9];
          *(a2 + 3) = v276;
          *(a2 + 4) = *v284;
          *(a2 + 2) = v268;
          result = *&v251;
          *a2 = v251;
          *(a2 + 1) = v260;
          v178 = v161 - i + 96;
          if (v178 >= 97)
          {
            v179 = 0xAAAAAAAAAAAAAAABLL * (v178 >> 5) - 2;
            v180 = v179 >> 1;
            v181 = &i[12 * (v179 >> 1)];
            v182 = *(v181 + 14);
            v183 = *(v161 + 14);
            if (v182 > v183)
            {
              v184 = *(v161 + 6);
              goto LABEL_218;
            }

            if (v182 == v183)
            {
              v199 = *(v181 + 6);
              v184 = *(v161 + 6);
              if (v199 > v184 || v199 == v184 && (result = v181[4], v184 = *(v181 + 6), result < v161[4]))
              {
LABEL_218:
                v241 = *(v161 + 2);
                v185 = *(v161 + 7);
                v186 = v161[4];
                v232 = *(v161 + 5);
                v237 = *v161;
                *v225 = *(v161 + 60);
                *&v225[16] = *(v161 + 76);
                v187 = *(v181 + 1);
                *v161 = *v181;
                *(v161 + 1) = v187;
                v188 = *(v181 + 2);
                v189 = *(v181 + 3);
                v190 = *(v181 + 4);
                *(v161 + 73) = *(v181 + 73);
                *(v161 + 3) = v189;
                *(v161 + 4) = v190;
                *(v161 + 2) = v188;
                if (v179 >= 2)
                {
                  while (1)
                  {
                    v191 = v181;
                    v192 = v180 - 1;
                    v180 = (v180 - 1) >> 1;
                    v181 = &i[12 * v180];
                    v193 = *(v181 + 14);
                    if (v193 <= v183)
                    {
                      if (v193 != v183)
                      {
                        break;
                      }

                      v194 = *(v181 + 6);
                      if (v194 <= v184 && (v194 != v184 || v181[4] >= v186))
                      {
                        break;
                      }
                    }

                    v195 = *(v181 + 1);
                    *v191 = *v181;
                    *(v191 + 1) = v195;
                    v196 = *(v181 + 2);
                    v197 = *(v181 + 3);
                    v198 = *(v181 + 4);
                    *(v191 + 73) = *(v181 + 73);
                    *(v191 + 3) = v197;
                    *(v191 + 4) = v198;
                    *(v191 + 2) = v196;
                    if (v192 <= 1)
                    {
                      goto LABEL_233;
                    }
                  }

                  v181 = v191;
                }

LABEL_233:
                *v181 = v237;
                *(v181 + 2) = v241;
                *(v181 + 6) = v184;
                *(v181 + 7) = v185;
                v181[4] = v186;
                *(v181 + 5) = v232;
                *(v181 + 14) = v183;
                *(v181 + 60) = *v225;
                result = *&v225[13];
                *(v181 + 73) = *&v225[13];
              }
            }
          }
        }

        if (v159-- <= 2)
        {
          return result;
        }

        continue;
      }
    }

    v13 = v12 >> 1;
    v14 = &i[12 * (v12 >> 1)];
    if (v11 <= 0x3000)
    {
      sub_10064D3A8(&a1[6 * v13], a1, a2 - 6);
    }

    else
    {
      sub_10064D3A8(a1, &a1[6 * v13], a2 - 6);
      v15 = 3 * v13;
      v16 = &a1[6 * v13 - 6];
      sub_10064D3A8(a1 + 6, v16, a2 - 12);
      v17 = &a1[2 * v15 + 6];
      sub_10064D3A8(a1 + 12, v17, a2 - 18);
      sub_10064D3A8(v16, v14, v17);
      v242 = *a1;
      v253 = a1[1];
      *v277 = a1[4];
      *&v277[16] = a1[5];
      v261 = a1[2];
      v269 = a1[3];
      v19 = v14[3];
      v18 = v14[4];
      v20 = v14[2];
      *(a1 + 73) = *(v14 + 73);
      a1[3] = v19;
      a1[4] = v18;
      a1[2] = v20;
      v21 = v14[1];
      *a1 = *v14;
      a1[1] = v21;
      *v14 = v242;
      v14[1] = v253;
      *(v14 + 73) = *&v277[9];
      v14[3] = v269;
      v14[4] = *v277;
      v14[2] = v261;
    }

    --a3;
    if (a4)
    {
      v22 = *(a1 + 14);
LABEL_23:
      v25 = 0;
      v239 = *(a1 + 2);
      v26 = *(a1 + 3);
      v27 = *(a1 + 4);
      v230 = *(a1 + 40);
      v233 = *a1;
      *v221 = *(a1 + 60);
      *&v221[16] = *(a1 + 76);
      while (1)
      {
        v28 = DWORD2(a1[v25 + 9]);
        if (v28 <= v22)
        {
          if (v28 != v22)
          {
            break;
          }

          v29 = DWORD2(a1[v25 + 7]);
          if (v29 <= v26 && (v29 != v26 || *&a1[v25 + 8] >= v27))
          {
            break;
          }
        }

        v25 += 6;
      }

      v30 = &a1[v25 + 6];
      if (v25 * 16)
      {
        v31 = *(a2 - 10);
        v32 = a2 - 8;
        v33 = a2 - 12;
        if (v31 <= v22)
        {
          do
          {
            if (v31 == v22)
            {
              v34 = *(v32 - 2);
              if (v34 > v26)
              {
                goto LABEL_54;
              }

              if (v34 == v26 && *v32 < v27)
              {
                break;
              }
            }

            v33 -= 12;
            v31 = *(v32 - 18);
            v32 -= 12;
          }

          while (v31 <= v22);
LABEL_37:
          v33 = v32 - 4;
        }
      }

      else
      {
        v33 = a2;
        if (v30 < a2)
        {
          v35 = *(a2 - 10);
          v33 = a2 - 12;
          if (v35 <= v22)
          {
            v32 = a2 - 8;
            v33 = a2 - 12;
            while (1)
            {
              v36 = v32 - 4;
              if (v35 != v22)
              {
                goto LABEL_50;
              }

              v37 = *(v32 - 2);
              if (v37 > v26)
              {
                break;
              }

              if (v37 == v26)
              {
                if (*v32 < v27 || v30 >= v36)
                {
                  break;
                }
              }

              else
              {
LABEL_50:
                if (v30 >= v36)
                {
                  v33 = v32 - 4;
                  break;
                }
              }

              v33 -= 12;
              v35 = *(v32 - 18);
              v32 -= 12;
              if (v35 > v22)
              {
                goto LABEL_37;
              }
            }
          }
        }
      }

LABEL_54:
      i = v30;
      if (v30 < v33)
      {
        v39 = v33;
        do
        {
          v243 = *i;
          v254 = *(i + 1);
          *v278 = *(i + 4);
          *&v278[16] = *(i + 5);
          v262 = *(i + 2);
          v270 = *(i + 3);
          v41 = *(v39 + 3);
          v40 = *(v39 + 4);
          v42 = *(v39 + 2);
          *(i + 73) = *(v39 + 73);
          *(i + 3) = v41;
          *(i + 4) = v40;
          *(i + 2) = v42;
          v43 = *(v39 + 1);
          *i = *v39;
          *(i + 1) = v43;
          *v39 = v243;
          *(v39 + 1) = v254;
          *(v39 + 73) = *&v278[9];
          *(v39 + 3) = v270;
          *(v39 + 4) = *v278;
          *(v39 + 2) = v262;
          do
          {
            do
            {
              i += 12;
              v44 = *(i + 14);
            }

            while (v44 > v22);
            if (v44 != v22)
            {
              break;
            }

            v45 = *(i + 6);
          }

          while (v45 > v26 || v45 == v26 && i[4] < v27);
          v46 = v39 - 12;
          v47 = *(v39 - 10);
          if (v47 <= v22)
          {
            v48 = v39 - 8;
            do
            {
              if (v47 == v22)
              {
                v49 = *(v48 - 2);
                if (v49 > v26)
                {
                  break;
                }

                if (v49 == v26 && *v48 < v27)
                {
                  goto LABEL_70;
                }
              }

              v46 -= 12;
              v47 = *(v48 - 18);
              v48 -= 12;
            }

            while (v47 <= v22);
            v46 = v48 - 4;
          }

LABEL_70:
          v39 = v46;
        }

        while (i < v46);
      }

      v50 = (i - 12);
      if (i - 12 != a1)
      {
        v51 = *(i - 5);
        *a1 = *v50;
        a1[1] = v51;
        v52 = *(i - 4);
        v53 = *(i - 3);
        v54 = *(i - 2);
        *(a1 + 73) = *(i - 23);
        a1[3] = v53;
        a1[4] = v54;
        a1[2] = v52;
      }

      *v50 = v233;
      *(i - 10) = v239;
      *(i - 9) = v26;
      *(i - 8) = v27;
      *(i - 7) = v230;
      *(i - 10) = v22;
      result = *v221;
      *(i - 23) = *&v221[13];
      *(i - 36) = *v221;
      if (v30 < v33)
      {
        goto LABEL_76;
      }

      v55 = sub_10064DAC8(a1, i - 6);
      if (sub_10064DAC8(i, a2))
      {
        a2 = i - 12;
        if (v55)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v55)
      {
LABEL_76:
        result = sub_1001A4480(a1, i - 6, a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v22 = *(a1 - 10);
      v23 = *(a1 + 14);
      if (v22 > v23)
      {
        v22 = *(a1 + 14);
        goto LABEL_23;
      }

      if (v22 == v23)
      {
        v24 = *(a1 - 18);
        v56 = *(a1 + 6);
        if (v24 > v56)
        {
          goto LABEL_23;
        }

        if (v24 == v56)
        {
          if (*(a1 - 8) < *(a1 + 4))
          {
            goto LABEL_23;
          }

          v56 = *(a1 - 18);
        }
      }

      else
      {
        v56 = *(a1 + 6);
      }

      v240 = *(a1 + 2);
      v57 = *(a1 + 7);
      v58 = *(a1 + 4);
      v231 = *(a1 + 40);
      v234 = *a1;
      *v222 = *(a1 + 60);
      *&v222[16] = *(a1 + 76);
      v59 = *(a2 - 10);
      if (v23 > v59 || v23 == v59 && ((v66 = *(a2 - 18), v56 > v66) || v56 == v66 && v58 < *(a2 - 8)))
      {
        i = (a1 + 6);
        v60 = *(a1 + 38);
        if (v23 <= v60)
        {
          v61 = a1 + 8;
          do
          {
            if (v23 == v60)
            {
              v62 = *(v61 - 2);
              if (v56 > v62)
              {
                goto LABEL_87;
              }

              if (v56 == v62 && v58 < *v61)
              {
                break;
              }
            }

            i += 12;
            v60 = *(v61 + 30);
            v61 += 6;
          }

          while (v23 <= v60);
          i = (v61 - 2);
        }
      }

      else
      {
        for (i = (a1 + 6); i < a2; i += 12)
        {
          v67 = *(i + 14);
          if (v23 > v67)
          {
            break;
          }

          if (v23 == v67)
          {
            v68 = *(i + 6);
            if (v56 > v68 || v56 == v68 && v58 < i[4])
            {
              break;
            }
          }
        }
      }

LABEL_87:
      v63 = a2;
      if (i < a2)
      {
        for (j = a2 - 8; ; j -= 12)
        {
          if (v23 <= v59)
          {
            if (v23 != v59)
            {
              break;
            }

            v65 = *(j - 2);
            if (v56 <= v65 && (v56 != v65 || v58 >= *j))
            {
              break;
            }
          }

          v59 = *(j - 18);
        }

        v63 = j - 4;
      }

      while (i < v63)
      {
        v244 = *i;
        v255 = *(i + 1);
        *v279 = *(i + 4);
        *&v279[16] = *(i + 5);
        v263 = *(i + 2);
        v271 = *(i + 3);
        v70 = *(v63 + 3);
        v69 = *(v63 + 4);
        v71 = *(v63 + 2);
        *(i + 73) = *(v63 + 73);
        *(i + 3) = v70;
        *(i + 4) = v69;
        *(i + 2) = v71;
        v72 = *(v63 + 1);
        *i = *v63;
        *(i + 1) = v72;
        *v63 = v244;
        *(v63 + 1) = v255;
        *(v63 + 73) = *&v279[9];
        *(v63 + 3) = v271;
        *(v63 + 4) = *v279;
        *(v63 + 2) = v263;
        v73 = i + 12;
        v74 = *(i + 38);
        if (v23 <= v74)
        {
          v75 = i + 16;
          do
          {
            if (v23 == v74)
            {
              v76 = *(v75 - 2);
              if (v56 > v76)
              {
                break;
              }

              if (v56 == v76 && v58 < *v75)
              {
                goto LABEL_109;
              }
            }

            v73 += 12;
            v74 = *(v75 + 30);
            v75 += 6;
          }

          while (v23 <= v74);
          i = (v75 - 2);
        }

        else
        {
LABEL_109:
          i = v73;
        }

        do
        {
          do
          {
            v63 -= 12;
            v77 = *(v63 + 14);
          }

          while (v23 > v77);
          if (v23 != v77)
          {
            break;
          }

          v78 = *(v63 + 6);
        }

        while (v56 > v78 || v56 == v78 && v58 < v63[4]);
      }

      v79 = (i - 12);
      if (i - 12 != a1)
      {
        v80 = *(i - 5);
        *a1 = *v79;
        a1[1] = v80;
        v81 = *(i - 4);
        v82 = *(i - 3);
        v83 = *(i - 2);
        *(a1 + 73) = *(i - 23);
        a1[3] = v82;
        a1[4] = v83;
        a1[2] = v81;
      }

      a4 = 0;
      *(i - 10) = v240;
      *v79 = v234;
      *(i - 18) = v56;
      *(i - 17) = v57;
      *(i - 8) = v58;
      *(i - 7) = v231;
      *(i - 10) = v23;
      result = *v222;
      *(i - 23) = *&v222[13];
      *(i - 36) = *v222;
    }
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v90 = (i + 24);
      result = sub_10064D3A8(i, i + 6, i + 12);
      v91 = *(a2 - 10);
      v92 = *(i + 62);
      if (v91 > v92 || v91 == v92 && ((v203 = *(a2 - 18), v204 = *(i + 54), v203 > v204) || v203 == v204 && (result = *(a2 - 8), result < i[28])))
      {
        v265 = *(i + 14);
        v273 = *(i + 15);
        *v281 = *(i + 16);
        *&v281[16] = *(i + 17);
        v246 = *v90;
        v257 = *(i + 13);
        v93 = *(a2 - 5);
        *v90 = *v9;
        *(i + 13) = v93;
        v95 = *(a2 - 3);
        v94 = *(a2 - 2);
        v96 = *(a2 - 4);
        *(i + 265) = *(a2 - 23);
        *(i + 15) = v95;
        *(i + 16) = v94;
        *(i + 14) = v96;
        *v9 = v246;
        *(a2 - 5) = v257;
        result = *&v265;
        *(a2 - 23) = *&v281[9];
        *(a2 - 3) = v273;
        *(a2 - 2) = *v281;
        *(a2 - 4) = v265;
        v97 = *(i + 62);
        v98 = *(i + 38);
        if (v97 > v98 || v97 == v98 && ((v217 = *(i + 54), v218 = *(i + 30), v217 > v218) || v217 == v218 && (result = i[28], result < i[16])))
        {
          v266 = *(i + 8);
          v274 = *(i + 9);
          *v282 = *(i + 10);
          *&v282[16] = *(i + 11);
          v247 = *(i + 6);
          v258 = *(i + 7);
          v99 = *(i + 15);
          *(i + 8) = *(i + 14);
          *(i + 9) = v99;
          *(i + 10) = *(i + 16);
          *(i + 169) = *(i + 265);
          v100 = *(i + 13);
          *(i + 6) = *v90;
          *(i + 7) = v100;
          *v90 = v247;
          *(i + 13) = v258;
          *(i + 265) = *&v282[9];
          result = *&v274;
          *(i + 15) = v274;
          *(i + 16) = *v282;
          *(i + 14) = v266;
          v101 = *(i + 38);
          v102 = *(i + 14);
          if (v101 > v102 || v101 == v102 && ((v219 = *(i + 30), v220 = *(i + 6), v219 > v220) || v219 == v220 && (result = i[16], result < i[4])))
          {
            v248 = *i;
            v259 = *(i + 1);
            *v283 = *(i + 4);
            *&v283[16] = *(i + 5);
            v267 = *(i + 2);
            v275 = *(i + 3);
            *(i + 73) = *(i + 169);
            v103 = *(i + 10);
            *(i + 3) = *(i + 9);
            *(i + 4) = v103;
            v104 = *(i + 8);
            *(i + 1) = *(i + 7);
            *(i + 2) = v104;
            *i = *(i + 6);
            *(i + 6) = v248;
            *(i + 7) = v259;
            result = *&v267;
            *(i + 169) = *&v283[9];
            *(i + 9) = v275;
            *(i + 10) = *v283;
            *(i + 8) = v267;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return sub_10064D670(i, (i + 12), (i + 24), i + 18, a2 - 6);
    }

    goto LABEL_9;
  }

  return sub_10064D3A8(i, i + 6, a2 - 6);
}