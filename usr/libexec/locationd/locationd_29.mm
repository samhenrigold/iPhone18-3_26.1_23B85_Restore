void sub_1001E517C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E5214(uint64_t a1, int a2, int a3, float a4)
{
  v4 = *(a1 + 20);
  if (v4 < 0.0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_10196A1AC();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, wifi fix is insufficient as it is invalid", &v21, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_10196AEEC();
      return 0;
    }

    return result;
  }

  if (a2)
  {
    if (qword_1025D4630 != -1)
    {
      sub_10196A1AC();
    }

    v7 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, wifi fix is sufficient as it is on watch", &v21, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10196AE08();
    }

    return 1;
  }

  v8 = a4;
  if (v4 <= a4)
  {
    v11 = (a1 + 156);
    v10 = *(a1 + 156);
    if (*(a1 + 180))
    {
      if (v10 == 1)
      {
        goto LABEL_31;
      }

      if (qword_1025D4630 != -1)
      {
        sub_10196A1AC();
      }

      v13 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
      {
        v14 = *v11;
        v21 = 67174657;
        LODWORD(v22[0]) = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "expect 1 AP for wifi fix with associated AP, got %{private}d", &v21, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10196A760(v11);
        if (a3)
        {
LABEL_32:
          if (qword_1025D4630 != -1)
          {
            sub_10196A140();
          }

          v15 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v21) = 0;
            _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, mark wifi fix with associated AP as insufficient as it is in emergency mode", &v21, 2u);
          }

          result = sub_10000A100(121, 2);
          if (result)
          {
            sub_10196AA20();
            return 0;
          }

          return result;
        }
      }

      else
      {
LABEL_31:
        if (a3)
        {
          goto LABEL_32;
        }
      }

      if (sub_100100690()[116] != 1)
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A140();
        }

        v20 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, mark wifi fix with associated AP as insufficient so we do not skip scan by settings", &v21, 2u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_10196A858();
          return 0;
        }

        return result;
      }

      if (qword_1025D4630 != -1)
      {
        sub_10196A140();
      }

      v19 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, mark wifi fix with associated AP as sufficient so we can skip scan by settings", &v21, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10196A93C();
      }
    }

    else
    {
      if (v10 <= 3)
      {
        if (qword_1025D4630 != -1)
        {
          sub_10196A1AC();
        }

        v16 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *v11;
          v21 = 67174913;
          LODWORD(v22[0]) = v17;
          WORD2(v22[0]) = 1025;
          *(v22 + 6) = 4;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, wifi fix is insufficient as it used %{private}d APs, less than threshold %{private}d", &v21, 0xEu);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_10196ABE8(v11);
          return 0;
        }

        return result;
      }

      if (qword_1025D4630 != -1)
      {
        sub_10196A1AC();
      }

      v18 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, wifi fix is sufficient", &v21, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10196AB04();
      }
    }

    return 1;
  }

  if (qword_1025D4630 != -1)
  {
    sub_10196A1AC();
  }

  v9 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 134283521;
    *v22 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@WifiFlow, sufficiency, wifi fix is insufficient as it has higher hacc than desired %{private}.1lf", &v21, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10196ACF8(v8);
    return 0;
  }

  return result;
}

void sub_1001E56E8(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001E573C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1001E573C(void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

double sub_1001E578C(uint64_t a1, int a2, double result)
{
  if (a2 >= 1)
  {
    v3 = *(a1 + 64);
    if (v3 != -1.0)
    {
      if (*(a1 + 80) == -1.0)
      {
        *(a1 + 80) = result - v3;
        *(a1 + 104) = a2;
      }

      if (a2 == 2 && *(a1 + 88) == -1.0)
      {
        result = result - v3;
        *(a1 + 88) = result;
        *(a1 + 104) = 2;
      }
    }
  }

  return result;
}

void sub_1001E6C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, __int128 a62)
{
  sub_1005F3518(&a44);
  sub_1005F3518(&a62);
  sub_1007BE994(v62);
  _Unwind_Resume(a1);
}

void sub_1001E6E08(__int128 *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>, _DWORD *a7@<D0>)
{
  if (qword_1025D4630 != -1)
  {
    sub_101B0A7A0();
  }

  v14 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v15 = *a1;
    *buf = 67240192;
    *v96 = v15;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "@EmerCheck, top, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0A7B4(a1);
  }

  v16 = *a1;
  v17 = sub_100189470(a2);
  if (v16 <= 1 || !v17)
  {
    v22 = a1[5];
    *(a6 + 64) = a1[4];
    *(a6 + 80) = v22;
    *(a6 + 96) = a1[6];
    v23 = a1[1];
    *a6 = *a1;
    *(a6 + 16) = v23;
    v24 = a1[3];
    *(a6 + 32) = a1[2];
    *(a6 + 48) = v24;
    *(a6 + 112) = *a2;
    *(a6 + 120) = *(a2 + 8);
    if (*(a2 + 39) < 0)
    {
      sub_100007244((a6 + 128), a2[2], a2[3]);
    }

    else
    {
      *(a6 + 128) = *(a2 + 1);
      *(a6 + 144) = a2[4];
    }

    *(a6 + 168) = *(a2 + 7);
    *(a6 + 184) = *(a2 + 9);
    *(a6 + 200) = *(a2 + 11);
    *(a6 + 212) = *(a2 + 100);
    *(a6 + 152) = *(a2 + 5);
    if (*(a2 + 143) < 0)
    {
      sub_100007244((a6 + 232), a2[15], a2[16]);
    }

    else
    {
      *(a6 + 232) = *(a2 + 15);
      *(a6 + 248) = a2[17];
    }

    *(a6 + 256) = 0;
    return;
  }

  v19 = a1[5];
  v89 = a1[4];
  v90 = v19;
  v91 = a1[6];
  v20 = a1[1];
  v85 = *a1;
  v86 = v20;
  v21 = a1[3];
  v87 = a1[2];
  v88 = v21;
  v75 = *a2;
  v76 = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    sub_100007244(&v77, a2[2], a2[3]);
  }

  else
  {
    v77 = *(a2 + 1);
    v78 = a2[4];
  }

  v80 = *(a2 + 7);
  v81 = *(a2 + 9);
  v82[0] = *(a2 + 11);
  *(v82 + 12) = *(a2 + 100);
  v79 = *(a2 + 5);
  if (*(a2 + 143) < 0)
  {
    sub_100007244(&__p, a2[15], a2[16]);
  }

  else
  {
    __p = *(a2 + 15);
    v84 = a2[17];
  }

  HIDWORD(v74) = a3;
  if (qword_1025D4630 != -1)
  {
    sub_101B0A5E0();
  }

  v25 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v26 = *a1;
    *buf = 67240192;
    *v96 = v26;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "@EmerCheck, current, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0A608(buf);
    v59 = *a1;
    LODWORD(v94[0]) = 67240192;
    HIDWORD(v94[0]) = v59;
    LODWORD(v74) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@EmerCheck, current, %{public}d", v94, v74);
    v61 = v60;
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v60);
    if (v61 != buf)
    {
      free(v61);
    }
  }

  v94[0] = &v85;
  v94[1] = &v74 + 1;
  v94[2] = a7;
  v28 = *a1;
  if (*a1 <= 4)
  {
    if (v28 != 2)
    {
      if (v28 != 4)
      {
        goto LABEL_68;
      }

      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v32 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "@EmerFlow, ScanRequest5GHzWithAlsReply, waiting for 5GHz scan result", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_83;
      }

      sub_101B0A608(buf);
      LOWORD(v92) = 0;
      LODWORD(v74) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@EmerFlow, ScanRequest5GHzWithAlsReply, waiting for 5GHz scan result", &v92, v74);
      v31 = v33;
      sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v33);
LABEL_74:
      if (v31 != buf)
      {
        free(v31);
      }

      goto LABEL_83;
    }

    if (a5)
    {
      if (*(a4 + 84) < 0x45u || (*sub_101226914() & 1) != 0)
      {
        LODWORD(v85) = 3;
        if (*&v88 < *(&v85 + 1))
        {
          *&v88 = a7;
          if (qword_1025D4630 != -1)
          {
            sub_101B0A5E0();
          }

          v37 = qword_1025D4638;
          if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134349056;
            *v96 = *&v88 - *(&v85 + 1);
            _os_log_impl(dword_100000000, v37, OS_LOG_TYPE_DEFAULT, "@EmerTick, scanrequest5ghzwithals, %{public}.1f", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B0A608(buf);
            v92 = 134349056;
            *v93 = *&v88 - *(&v85 + 1);
            LODWORD(v74) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@EmerTick, scanrequest5ghzwithals, %{public}.1f", &v92, v74);
            v73 = v72;
            sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v72);
            if (v73 != buf)
            {
              free(v73);
            }
          }
        }

        if (qword_1025D4630 != -1)
        {
          sub_101B0A5E0();
        }

        v38 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240448;
          *v96 = HIDWORD(v74);
          *&v96[4] = 2050;
          *&v96[6] = *&v88 - *(&v85 + 1);
          _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_DEFAULT, "@EmerFlow, ScanRequest5GHzWithPendingAls, queryType, %{public}d, tte, %{public}.1f", buf, 0x12u);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_83;
        }

        sub_101B0A608(buf);
        v92 = 67240448;
        *v93 = HIDWORD(v74);
        *&v93[4] = 2050;
        *&v93[6] = *&v88 - *(&v85 + 1);
        LODWORD(v74) = 18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@EmerFlow, ScanRequest5GHzWithPendingAls, queryType, %{public}d, tte, %{public}.1f", &v92, v74);
        v31 = v39;
        sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v39);
        goto LABEL_74;
      }

      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v55 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        v56 = *(a4 + 84);
        *buf = 67240192;
        *v96 = v56;
        _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "@EmerCheck, confidence, %{public}d, above threshold", buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_82;
      }

      sub_101B0A608(buf);
      v57 = *(a4 + 84);
      v92 = 67240192;
      *v93 = v57;
      LODWORD(v74) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@EmerCheck, confidence, %{public}d, above threshold", &v92, v74);
      v36 = v58;
      sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v58);
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v42 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240192;
        *v96 = 0;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "@EmerCheck, support 5GHz, %{public}d", buf, 8u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_82;
      }

      sub_101B0A608(buf);
      v92 = 67240192;
      *v93 = 0;
      LODWORD(v74) = 8;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@EmerCheck, support 5GHz, %{public}d", &v92, v74);
      v36 = v71;
      sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v71);
    }

LABEL_148:
    if (v36 != buf)
    {
      free(v36);
    }

    goto LABEL_82;
  }

  if (v28 == 5)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101B0A5E0();
    }

    v34 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "@EmerWarn, ScanReply5GHzWithPendingAls, abort waiting for the preliminary ALS response", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_82;
    }

    sub_101B0A608(buf);
    LOWORD(v92) = 0;
    LODWORD(v74) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@EmerWarn, ScanReply5GHzWithPendingAls, abort waiting for the preliminary ALS response", &v92, v74);
    v36 = v35;
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v35);
    goto LABEL_148;
  }

  if (v28 == 6)
  {
LABEL_82:
    sub_101052430(v94, v27);
    goto LABEL_83;
  }

  if (v28 != 8)
  {
LABEL_68:
    if (qword_1025D4630 != -1)
    {
      sub_101B0A5E0();
    }

    v40 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67240192;
      *v96 = v85;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "@EmerWarn, unexpected state, processScanResult, %{public}d, #CloneMe", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_83;
    }

    sub_101B0A608(buf);
    v92 = 67240192;
    *v93 = v85;
    LODWORD(v74) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@EmerWarn, unexpected state, processScanResult, %{public}d, #CloneMe", &v92, v74);
    v31 = v41;
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v41);
    goto LABEL_74;
  }

  LODWORD(v85) = 9;
  if (qword_1025D4630 != -1)
  {
    sub_101B0A5E0();
  }

  v29 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "@EmerFlow, Done, alsreply", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0A608(buf);
    LOWORD(v92) = 0;
    LODWORD(v74) = 2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@EmerFlow, Done, alsreply", &v92, v74);
    v31 = v30;
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v30);
    goto LABEL_74;
  }

LABEL_83:
  if (*(a4 + 20) > 0.0 && *(&v90 + 1) < *(&v85 + 1))
  {
    *(&v90 + 1) = a7;
    if (qword_1025D4630 != -1)
    {
      sub_101B0A5E0();
    }

    v43 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      *v96 = *(&v90 + 1) - *(&v85 + 1);
      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "@EmerTick, anyfix, %{public}.1f", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B0A608(buf);
      v92 = 134349056;
      *v93 = *(&v90 + 1) - *(&v85 + 1);
      LODWORD(v74) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@EmerTick, anyfix, %{public}.1f", &v92, v74);
      v70 = v69;
      sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v69);
      if (v70 != buf)
      {
        free(v70);
      }
    }
  }

  if (qword_1025D4630 != -1)
  {
    sub_101B0A5E0();
  }

  v44 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v45 = *(a4 + 156);
    *buf = 67240448;
    *v96 = v85;
    *&v96[4] = 1026;
    *&v96[6] = v45;
    _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "@EmerCheck, switched, %{public}d, aps, %{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0A608(buf);
    v62 = *(a4 + 156);
    v92 = 67240448;
    *v93 = v85;
    *&v93[4] = 1026;
    *&v93[6] = v62;
    LODWORD(v74) = 14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@EmerCheck, switched, %{public}d, aps, %{public}d", &v92, v74);
    v64 = v63;
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v63);
    if (v64 != buf)
    {
      free(v64);
    }
  }

  if (*(a4 + 156) >= 9u)
  {
    if (*&v91 < *(&v85 + 1))
    {
      *&v91 = a7;
      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v46 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349056;
        *v96 = *&v91 - *(&v85 + 1);
        _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "@EmerTick, sufficientfix, %{public}.1f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0A608(buf);
        v92 = 134349056;
        *v93 = *&v91 - *(&v85 + 1);
        LODWORD(v74) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@EmerTick, sufficientfix, %{public}.1f", &v92, v74);
        v48 = v47;
        sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v47);
        if (v48 != buf)
        {
          free(v48);
        }
      }
    }

    goto LABEL_106;
  }

  if (v85 == 9)
  {
LABEL_106:
    sub_1001E37B8(&v75);
    if (v85 != 9)
    {
      LODWORD(v85) = 9;
      if (qword_1025D4630 != -1)
      {
        sub_101B0A5E0();
      }

      v49 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "@EmerFlow, Done, conditions", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B0A608(buf);
        LOWORD(v92) = 0;
        LODWORD(v74) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@EmerFlow, Done, conditions", &v92, v74);
        v68 = v67;
        sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v67);
        if (v68 != buf)
        {
          free(v68);
        }
      }
    }

    HIDWORD(v74) = 0;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101B0A5E0();
  }

  v50 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67240192;
    *v96 = v85;
    _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "@EmerCheck, returned, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B0A608(buf);
    v92 = 67240192;
    *v93 = v85;
    LODWORD(v74) = 8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "@EmerCheck, returned, %{public}d", &v92, v74);
    v66 = v65;
    sub_100152C7C("Generic", 1, 0, 2, "static std::tuple<Types::Emergency, CLWifiLocationUpdateRequest, Types::AlsQueryType> CL::Wifi1::Policies::PostPositionCalculationStateUpdate::HandleEvent::updateEmergencyStateCurrentLocationUpdateRequestAndApQueryType(const Types::Emergency &, const CLWifiLocationUpdateRequest &, Types::AlsQueryType, const Types::ComputedLocation &, cl::chrono::CFAbsoluteTimeClock::time_point, BOOL)", "%s\n", v65);
    if (v66 != buf)
    {
      free(v66);
    }
  }

  v51 = v90;
  *(a6 + 64) = v89;
  *(a6 + 80) = v51;
  *(a6 + 96) = v91;
  v52 = v86;
  *a6 = v85;
  *(a6 + 16) = v52;
  v53 = v88;
  *(a6 + 32) = v87;
  *(a6 + 48) = v53;
  *(a6 + 112) = v75;
  *(a6 + 120) = v76;
  if (SHIBYTE(v78) < 0)
  {
    sub_100007244((a6 + 128), v77, *(&v77 + 1));
  }

  else
  {
    *(a6 + 128) = v77;
    *(a6 + 144) = v78;
  }

  *(a6 + 168) = v80;
  *(a6 + 184) = v81;
  *(a6 + 200) = v82[0];
  *(a6 + 212) = *(v82 + 12);
  *(a6 + 152) = v79;
  if (SHIBYTE(v84) < 0)
  {
    sub_100007244((a6 + 232), __p, *(&__p + 1));
    v54 = SHIBYTE(v84);
    *(a6 + 256) = HIDWORD(v74);
    if (v54 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    *(a6 + 232) = __p;
    *(a6 + 248) = v84;
    *(a6 + 256) = HIDWORD(v74);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77);
  }
}

void sub_1001E8164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1005F3518(va);
  _Unwind_Resume(a1);
}

__n128 sub_1001E8204(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *a2;
  v6 = a2[2];
  v4[1] = a2[1];
  v4[2] = v6;
  *v4 = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(v4 + 89) = *(a2 + 89);
  v4[4] = v8;
  v4[5] = v9;
  v4[3] = v7;
  v10 = *(a1 + 8);
  v11 = *(a2 + 14);
  *(v10 + 8) = *(a2 + 120);
  *v10 = v11;
  if (*(v10 + 39) < 0)
  {
    operator delete(*(v10 + 16));
  }

  v12 = a2[8];
  *(v10 + 32) = *(a2 + 18);
  *(v10 + 16) = v12;
  *(a2 + 151) = 0;
  *(a2 + 128) = 0;
  v13 = *(a2 + 212);
  v14 = *(a2 + 200);
  v15 = *(a2 + 184);
  *(v10 + 56) = *(a2 + 168);
  *(v10 + 72) = v15;
  *(v10 + 88) = v14;
  *(v10 + 100) = v13;
  *(v10 + 40) = *(a2 + 152);
  if (*(v10 + 143) < 0)
  {
    operator delete(*(v10 + 120));
  }

  result = *(a2 + 232);
  *(v10 + 136) = *(a2 + 31);
  *(v10 + 120) = result;
  *(a2 + 255) = 0;
  *(a2 + 232) = 0;
  **(a1 + 16) = *(a2 + 64);
  return result;
}

uint64_t sub_1001E8388(uint64_t a1)
{
  LOBYTE(v1) = *(a1 + 8);
  v2 = *a1;
  if ((v1 & 1) == 0)
  {
    if (v2 > 2)
    {
      LOBYTE(v1) = 0;
    }

    else
    {
      LOBYTE(v1) = 1;
      if (*(a1 + 6) == 1)
      {
        v1 = (1u >> (v2 & 7)) | *(a1 + 7) ^ 1;
      }
    }

    *(a1 + 8) = v1 & 1;
  }

  if (v2 == 2)
  {
    v10 = 0xC0000000000;
    if (v1)
    {
      v10 = 0x90000000000;
    }

    v7 = (v1 & 1) == 0;
    v3 = 0x800000000;
  }

  else
  {
    v3 = 0x800000000;
    v4 = 0x90000000000;
    if (v1)
    {
      v5 = 0x90000000000;
    }

    else
    {
      v5 = 0xC0000000000;
    }

    if (v1)
    {
      v6 = 0;
    }

    else
    {
      v3 = 0x900000000;
      v6 = 2;
    }

    if ((v1 & 1) == 0)
    {
      v4 = 0xC0000000000;
    }

    v7 = (v1 & 1) == 0;
    v8 = 0x800000000;
    if (v2)
    {
      v4 = 0;
      v8 = 0;
      v7 = 0;
    }

    v9 = v2 == 1;
    if (v2 == 1)
    {
      v10 = v5;
    }

    else
    {
      v10 = v4;
    }

    if (v9)
    {
      v7 = v6;
    }

    else
    {
      v3 = v8;
    }
  }

  return v3 | v10 | v7;
}

BOOL sub_1001E8460(uint64_t a1, const char *a2, unsigned int *a3)
{
  v5 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  v6 = sub_1001E84CC(a1, v5, a3);
  if (v5)
  {
    CFRelease(v5);
  }

  return v6;
}

BOOL sub_1001E84CC(uint64_t a1, const __CFString *a2, unsigned int *a3)
{
  valuePtr[0] = *a3;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, valuePtr);
  if (v5)
  {
    (*(*a1 + 896))(a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018AA1FC();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      sub_1000238CC(a2, valuePtr);
      v7 = v10 >= 0 ? valuePtr : valuePtr[0];
      *buf = 136446210;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_FAULT, "could not create cf type for key %{public}s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(valuePtr[0]);
      }
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018AB2FC();
    }
  }

  return v5 != 0;
}

void sub_1001E8654(uint64_t a1, double a2, double a3)
{
  v4 = (a1 + 136);
  [*(a1 + 136) setNextFireDelay:a3];
  if (a3 == 1.79769313e308)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v8 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "@WifiFlow, nexttimer, off", &v9, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE5AC();
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      Current = CFAbsoluteTimeGetCurrent();
      [*v4 nextFireTime];
      v9 = 134349568;
      v10 = a3;
      v11 = 2050;
      v12 = Current;
      v13 = 2050;
      v14 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiFlow, nexttimer, %{public}.1f, now, %{public}.1f, next fire time, %{public}.1f", &v9, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FE688(v4, a3);
    }
  }
}

void sub_1001E87E0(unsigned int a1)
{
  if (a1 > 5)
  {
    v1 = "";
  }

  else
  {
    v1 = off_10246B400[a1];
  }

  if (qword_1025D4630 != -1)
  {
    sub_10190A634();
  }

  v2 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446210;
    v4 = v1;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "@WifiFlow, outcome, %{public}s", &v3, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190A648(v1);
  }
}

void sub_1001E88F8(void *a1@<X8>)
{
  if ((atomic_load_explicit(byte_1026657D0, memory_order_acquire) & 1) == 0)
  {
    sub_101BCF224();
  }

  if (qword_1026657C0 != -1)
  {
    sub_101BCF294();
  }

  v2 = *(&xmmword_1026657E0 + 1);
  *a1 = xmmword_1026657E0;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_1001E8968(uint64_t a1, uint64_t a2, unsigned int *a3, __int128 *a4)
{
  v14 = a2;
  v7 = sub_10000B1F8(a1, a2);
  sub_10000B230(v15);
  sub_10000B324(v7, v15[0].i64);
  v16 = 13;
  v15[0].i32[0] = 13;
  v8 = sub_10000AD98(&v16);
  v15[0].i32[1] = v8;
  v10 = sub_10000AE98(v8, v9);
  v16 = 4;
  sub_10001E898(v10, &v16, v15, (a1 + 5220), &v14, a3, a4);
  sub_10010CA08(a1, *(a1 + 328), v11, a3, a4);
  v12 = *(a1 + 768);
  if (v12 && *a3 != 22)
  {
    sub_100219660(v12, a4);
  }

  v13 = *(a1 + 784);
  if (v13)
  {
    sub_1002198B0(v13, a4);
  }

  sub_1002192F8(a1 + 800, a3, a4);
}

void sub_1001E8A54(uint64_t a1, __n128 a2, uint64_t a3)
{
  v3 = a2.n128_f64[0];
  if (*(a1 + 249) == 1)
  {
    v5 = sub_1001E9DA0(a1, a3);
    v6 = 88;
    if (v5)
    {
      v6 = 96;
    }
  }

  else
  {
    v6 = 88;
  }

  v7 = (a1 + 944);
  if (*(a1 + 944) <= v3 - *(a1 + v6))
  {
    if (sub_1001E8DA4(a1, a3, v3))
    {
      v10.n128_u64[0] = *(a1 + 640);
      if (*(a1 + 944) <= v10.n128_f64[0])
      {
        if (v10.n128_f64[0] + 2.0 >= v3 && *(a1 + 672) <= v10.n128_f64[0])
        {
          if (qword_1025D4600 != -1)
          {
            sub_1003121A4();
          }

          v17 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            v18 = 67109376;
            *v19 = 0;
            *&v19[4] = 1024;
            *&v19[6] = 0;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryCalibrationEstimator::tryUpdateCalibrationFilter, hasAllNecessaryIOData, %d, noMoreIODataIsExpected, %d, not updating filter.", &v18, 0xEu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019DC7DC();
          }
        }

        else
        {

          sub_10023A384(a1, v10);
        }
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1003121A4();
        }

        v11 = (a1 + 640);
        v12 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v13 = *v7;
          v14 = *v11;
          v18 = 134218240;
          *v19 = v13;
          *&v19[8] = 2048;
          v20 = v14;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryCalibrationEstimator::tryUpdateCalibrationFilter, fMachContinuousTimeOfFilterState, %.3f, exceeds end location fMachContinuousTimeAtEnd_s, %.3f, not updating filter.", &v18, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019DC8D8();
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003121A4();
      }

      v15 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryCalibrationEstimator::tryUpdateCalibrationFilter, extractLocationsForMeasurementGeneration, unable to extract locations, not updating filter.", &v18, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019DC700();
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v9 = *v7;
      v18 = 134218240;
      *v19 = v9;
      *&v19[8] = 2048;
      v20 = v3;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryCalibrationEstimator::tryUpdateCalibrationFilter, fMachContinuousTimeOfFilterState, %.3f, too recent, w.r.t., lastLocationTime, %.3f, not updating filter", &v18, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DC9DC(v7, v3);
    }
  }
}

uint64_t sub_1001E8DA4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_10000B1F8(a1, a2);
  sub_10000AED4(v5, v64);
  v63 = 0.0;
  if (sub_100125300(v64, &v63))
  {
    __src[6] = xmmword_101CE6D38;
    __src[7] = xmmword_101CE6D48;
    memset(&__src[8], 0, 28);
    __src[2] = xmmword_101CE6CF8;
    __src[3] = xmmword_101CE6D08;
    __src[4] = xmmword_101CE6D18;
    __src[5] = xmmword_101CE6D28;
    __src[0] = xmmword_101CE6CD8;
    __src[1] = xmmword_101CE6CE8;
    *(&__src[16] + 12) = xmmword_101CE6D48;
    *(&__src[17] + 12) = xmmword_101CE6D58;
    *(&__src[18] + 8) = *(&xmmword_101CE6D58 + 12);
    *(&__src[15] + 12) = xmmword_101CE6D38;
    *(&__src[11] + 12) = xmmword_101CE6CF8;
    *(&__src[12] + 12) = xmmword_101CE6D08;
    *(&__src[13] + 12) = xmmword_101CE6D18;
    *(&__src[14] + 12) = xmmword_101CE6D28;
    *(&__src[9] + 12) = xmmword_101CE6CD8;
    v6 = (a1 + 396);
    v7 = (a1 + 320);
    *(&__src[10] + 12) = xmmword_101CE6CE8;
    memcpy((a1 + 320), __src, 0x138uLL);
    __asm { FMOV            V0.2D, #-1.0 }

    *(a1 + 632) = _Q0;
    *(a1 + 648) = 0u;
    if (*(a1 + 249) == 1 && sub_1001E9DA0(a1, v8))
    {
      v14 = *(a1 + 8);
    }

    else
    {
      v14 = 50.0;
    }

    v21 = 300.0;
    if (*(a1 + 249) == 1 && sub_1001E9DA0(a1, v8))
    {
      v21 = *(a1 + 16);
    }

    v22 = *(a1 + 176);
    if (v22)
    {
      if (sub_1001E455C(v22) > 1)
      {
        v26 = 30.0;
        v27 = 3.0;
        if (*(a1 + 249) == 1)
        {
          v27 = (sub_1001E9DA0(a1, v23) & 1) != 0 ? -1.0 : 3.0;
          if ((*(a1 + 249) & 1) != 0 && sub_1001E9DA0(a1, v23))
          {
            v26 = *(a1 + 24);
          }
        }

        v28 = v63 + a3;
        v29 = v63 + a3 - v26;
        v60 = xmmword_101CE6D38;
        v61 = xmmword_101CE6D48;
        memset(v62, 0, 28);
        v57 = xmmword_101CE6CF8;
        v58 = xmmword_101CE6D08;
        *v59 = xmmword_101CE6D18;
        *&v59[16] = xmmword_101CE6D28;
        v55 = xmmword_101CE6CD8;
        v56 = xmmword_101CE6CE8;
        v30 = a3 - *(a1 + 960);
        if (*(a1 + 249) == 1 && (sub_1001E9DA0(a1, v23) & 1) != 0)
        {
          v31 = 0;
        }

        else
        {
          v32 = *(a1 + 1000) != 1 || *(a1 + 1024) != 1 || *(a1 + 1040) > a3 || *(a1 + 1048) < a3;
          v31 = v30 > 180.0 || v32;
        }

        if (sub_1001EB478(a1, v31, &v55, v29, v28) && *&v59[12] <= v28 - v27)
        {
          v33 = v61;
          *(a1 + 572) = v60;
          *(a1 + 588) = v33;
          *(a1 + 604) = v62[0];
          *(a1 + 616) = *(v62 + 12);
          v34 = v58;
          *(a1 + 508) = v57;
          *(a1 + 524) = v34;
          v35 = *&v59[16];
          *(a1 + 540) = *v59;
          *(a1 + 556) = v35;
          v36 = v56;
          *(a1 + 476) = v55;
          *(a1 + 492) = v36;
          *&v36 = *(a1 + 552);
          *(a1 + 640) = *&v36 - v63;
          v37 = *&v36 - v14;
          if (sub_1001EB478(a1, v31, &v55, *&v36 - v21, *&v36 - v14) && *&v59[12] <= v37 - v27)
          {
            v38 = *&v59[16];
            *(a1 + 384) = *v59;
            *(a1 + 400) = v38;
            *(a1 + 460) = *(v62 + 12);
            v39 = v62[0];
            *(a1 + 432) = v61;
            *(a1 + 448) = v39;
            *(a1 + 416) = v60;
            v40 = v58;
            *(a1 + 352) = v57;
            *(a1 + 368) = v40;
            v41 = v56;
            *v7 = v55;
            *(a1 + 336) = v41;
            *(a1 + 632) = *v6 - v63;
          }
        }

        if (sub_100072814(a1 + 320))
        {
          if (qword_1025D4600 != -1)
          {
            sub_1019DC4B0();
          }

          v42 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
          {
            v43 = *(a1 + 1000) == 1 && *(a1 + 1024) == 1 && *(a1 + 1040) <= a3 && *(a1 + 1048) >= a3;
            v44 = *(a1 + 416);
            v45 = *v6;
            v46 = *(a1 + 572);
            v47 = *(a1 + 552);
            LODWORD(__src[0]) = 67110656;
            DWORD1(__src[0]) = v31;
            WORD4(__src[0]) = 1024;
            *(__src + 10) = v43;
            HIWORD(__src[0]) = 2048;
            *&__src[1] = v30;
            WORD4(__src[1]) = 1024;
            *(&__src[1] + 10) = v44;
            HIWORD(__src[1]) = 2048;
            *&__src[2] = v45;
            WORD4(__src[2]) = 1024;
            *(&__src[2] + 10) = v46;
            HIWORD(__src[2]) = 2048;
            *&__src[3] = v47;
            _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "#pbio,acceptWiFi, %d, hasValidCalibrationEstimate(), %d, timeSinceLastCalibrationUpdate_s, %.3f, startLoc, %d, %.3f, endLoc, %d, %.3f", __src, 0x38u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(__src, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_1019DC4B0();
            }

            v48 = *(a1 + 1000) == 1 && *(a1 + 1024) == 1 && *(a1 + 1040) <= a3 && *(a1 + 1048) >= a3;
            v49 = *(a1 + 416);
            v50 = *v6;
            v51 = *(a1 + 572);
            v52 = *(a1 + 552);
            v65[0] = 67110656;
            v65[1] = v31;
            v66 = 1024;
            v67 = v48;
            v68 = 2048;
            v69 = v30;
            v70 = 1024;
            v71 = v49;
            v72 = 2048;
            v73 = v50;
            v74 = 1024;
            v75 = v51;
            v76 = 2048;
            v77 = v52;
            _os_log_send_and_compose_impl(2, 0, __src, 1628, dword_100000000, qword_1025D4608, 1, "#pbio,acceptWiFi, %d, hasValidCalibrationEstimate(), %d, timeSinceLastCalibrationUpdate_s, %.3f, startLoc, %d, %.3f, endLoc, %d, %.3f", v65, 56, *&v55, DWORD2(v55), *&v56, DWORD2(v56), *&v57);
            v54 = v53;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLBackgroundInertialOdometryCalibrationEstimator::extractLocationsForMeasurementGeneration(const CFTimeInterval)", "%s\n", v53);
            if (v54 != __src)
            {
              free(v54);
            }
          }
        }

        return sub_100072814(v7);
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1019DC4B0();
        }

        v24 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          LOWORD(__src[0]) = 0;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryNorthAlignment::extractLocationsForMeasurementGeneration input buffer less than two, not extracting locations.", __src, 2u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_1019DDE2C();
          return 0;
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1019DC4B0();
      }

      v25 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        LOWORD(__src[0]) = 0;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryNorthAlignment::extractLocationsForMeasurementGeneration input buffer is nullptr.", __src, 2u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_1019DDF08();
        return 0;
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019DC4B0();
    }

    v15 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v16 = sub_10001CF3C();
      v17 = v16;
      v19 = sub_10001CF04(v16, v18);
      LODWORD(__src[0]) = 67109376;
      DWORD1(__src[0]) = v17;
      WORD4(__src[0]) = 1024;
      *(__src + 10) = v19;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "#pbio, CLBackgroundInertialOdometryNorthAlignment::extractLocationsForMeasurementGeneration, cannot compute machContinuousToCFAbsoluteOffset_s, cannot extractLocations,isWatch,%d,isPhone,%d", __src, 0xEu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1019DDD20();
      return 0;
    }
  }

  return result;
}

BOOL sub_1001E94EC(_BOOL8 result, uint64_t a2, double a3)
{
  if (*(a2 + 96) == 1)
  {
    v5 = result;
    result = sub_1002A0BA8(a2);
    if (result)
    {
      result = sub_1002B0B44(a2);
      if (result && *(a2 + 44) > *(v5 + 48))
      {
        v6 = *(a2 + 68) * (*(a2 + 68) * 0.00030461742);
        if (v6 <= fmax(*(v5 + 40), *(v5 + 1064)))
        {
          *(v5 + 1056) = *(a2 + 60) * 0.0174532925;
          *(v5 + 1064) = v6;
          *(v5 + 1088) = a3;
          *(v5 + 1105) = *(v5 + 1104);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001E95A0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 144);
  *a2 = *(result + 136);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001E95BC(uint64_t a1, __int128 *a2)
{
  v4 = a1 + 316;
  v5 = *a2;
  *(a1 + 172) = a2[1];
  *(a1 + 156) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  *(a1 + 236) = a2[5];
  *(a1 + 220) = v8;
  *(a1 + 204) = v7;
  *(a1 + 188) = v6;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  *(a1 + 296) = *(a2 + 140);
  *(a1 + 268) = v10;
  *(a1 + 284) = v11;
  *(a1 + 252) = v9;
  sub_1001E0CA4(a1 + 888, (a1 + 156));
  v12 = a2[1];
  *(a1 + 312) = *a2;
  *(a1 + 328) = v12;
  v13 = a2[2];
  v14 = a2[3];
  v15 = a2[5];
  *(a1 + 376) = a2[4];
  *(a1 + 392) = v15;
  *(a1 + 344) = v13;
  *(a1 + 360) = v14;
  v16 = a2[6];
  v17 = a2[7];
  v18 = a2[8];
  *(a1 + 452) = *(a2 + 140);
  *(a1 + 424) = v17;
  *(a1 + 440) = v18;
  *(a1 + 408) = v16;
  *v4 = *(a1 + 696);
  *(v4 + 16) = *(a1 + 728);
  *(a1 + 444) = 1;
  sub_100027CA8(a1 + 312);
  if (*(a2 + 36) < 0.0 && *(a1 + 736) > 0.0)
  {
    *(v4 + 24) = *(a1 + 712);
    v19 = sub_1000F7F38();
    v20 = *(a1 + 736);
    if (v20 < *(v19 + 28))
    {
      v20 = *(v19 + 28);
    }

    *(v4 + 32) = v20;
  }

  sub_1001E96DC((a1 + 888), (a1 + 312));
}

void sub_1001E96DC(_OWORD *result, __int128 *a2)
{
  if (*(a2 + 24) == 4)
  {
    if (*(a2 + 76) <= 0.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018818E4();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *v11 = 0;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "location timestamp is not set!", v11, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101881B74();
      }
    }

    else
    {
      v2 = *a2;
      *(result + 212) = a2[1];
      *(result + 196) = v2;
      v3 = a2[2];
      v4 = a2[3];
      v5 = a2[5];
      *(result + 260) = a2[4];
      *(result + 276) = v5;
      *(result + 244) = v4;
      *(result + 228) = v3;
      v6 = a2[6];
      v7 = a2[7];
      v8 = a2[8];
      result[21] = *(a2 + 140);
      *(result + 308) = v7;
      *(result + 324) = v8;
      *(result + 292) = v6;
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018818E4();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_FAULT, "location type is not WiFi!", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101881AA0();
    }
  }
}

uint64_t sub_1001E9838(uint64_t a1, double *a2, double *a3, int a4)
{
  if (sub_1001E9C40(a1))
  {
    v8 = (a1 + 112);
    *&v30[1] = a1 + 112;
    v31 = 1;
    std::__shared_mutex_base::lock_shared((a1 + 112));
    if (*(a1 + 104) == 1 && (vabdd_f64(vabdd_f64(*(a1 + 72), *a2), *(a1 + 88)) > 0.1 || vabdd_f64(fabs(sub_1002AADB4(*(a1 + 80), *a3)), *(a1 + 96)) > 0.1) || (v9 = *(a1 + 40), v10 = *(a1 + 48), v9 == v10))
    {
LABEL_10:
      v12 = 0;
    }

    else
    {
      while (1)
      {
        if (vabdd_f64(*v9, *a2) <= 0.1 && fabs(sub_1002AADB4(v9[1], *a3)) <= 0.1)
        {
          v29 = 0.0;
          v30[0] = 0.0;
          v28 = 0;
          sub_1001063B0(a1, v30, &v29, &v28, *a2, *a3, 0.0, *v9, v9[1], 0.0);
          v11 = v29 * v29 + v30[0] * v30[0];
          if (v11 <= v9[2] * v9[2])
          {
            break;
          }
        }

        v9 += 3;
        if (v9 == v10)
        {
          goto LABEL_10;
        }
      }

      if (qword_1025D4650 != -1)
      {
        sub_10168DC30();
      }

      v15 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v9;
        v17 = *(v9 + 1);
        v18 = *(v9 + 2);
        v19 = *a2;
        v20 = *a3;
        *buf = 67110657;
        v46 = a4;
        v47 = 2053;
        v48 = v16;
        v49 = 2053;
        v50 = v17;
        v51 = 2050;
        v52 = v18;
        v53 = 2053;
        v54 = v19;
        v55 = 2053;
        v56 = v20;
        v57 = 2050;
        v58 = v11;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "#imag,al,type,%d,aLat,%{sensitive}.7lf,aLon,%{sensitive}.7lf,aRadius,%{public}.1f,gnssLat,%{sensitive}.7lf,gnssLon.%{sensitive}.7lf,distanceSqM,%{public}.1f", buf, 0x44u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10168DAC4(buf);
        v21 = *v9;
        v22 = *(v9 + 1);
        v23 = *(v9 + 2);
        v24 = *a2;
        v25 = *a3;
        v32[0] = 67110657;
        v32[1] = a4;
        v33 = 2053;
        v34 = v21;
        v35 = 2053;
        v36 = v22;
        v37 = 2050;
        v38 = v23;
        v39 = 2053;
        v40 = v24;
        v41 = 2053;
        v42 = v25;
        v43 = 2050;
        v44 = v11;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 0, "#imag,al,type,%d,aLat,%{sensitive}.7lf,aLon,%{sensitive}.7lf,aRadius,%{public}.1f,gnssLat,%{sensitive}.7lf,gnssLon.%{sensitive}.7lf,distanceSqM,%{public}.1f", v32, 68);
        v27 = v26;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssKnownACDataHandler::doesThisMatchKnownAC(const double &, const double &, const CLLocationType)", "%s\n", v26);
        if (v27 != buf)
        {
          free(v27);
        }
      }

      v12 = 1;
    }

    std::__shared_mutex_base::unlock_shared(v8);
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10168DAB0();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#imag,al,file validity has expired", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10168DD88();
    }

    sub_10168D9C8(a1);
    return 0;
  }

  return v12;
}

void sub_1001E9C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100F96F74(va);
  _Unwind_Resume(a1);
}

BOOL sub_1001E9C40(uint64_t a1)
{
  v2 = (a1 + 112);
  std::__shared_mutex_base::lock_shared((a1 + 112));
  Current = CFAbsoluteTimeGetCurrent();
  v4 = *(a1 + 64);
  std::__shared_mutex_base::unlock_shared(v2);
  return vabdd_f64(Current, v4) < 604800.0;
}

uint64_t sub_1001E9CD4(uint64_t result)
{
  if (*(result + 509) == 1)
  {
    result = rand();
    if (!(result % dword_1026562C0))
    {
      if (byte_1026562DF >= 0)
      {
        v1 = &qword_1026562C8;
      }

      else
      {
        v1 = qword_1026562C8;
      }

      [NSString stringWithUTF8String:v1];
      return AnalyticsSendEventLazy();
    }
  }

  return result;
}

uint64_t sub_1001E9DA0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136))
  {
    v4 = 1;
  }

  else
  {
    v11 = v2;
    v12 = v3;
    if (*(a1 + 152) == 1)
    {
      v6 = sub_10000B1F8(a1, a2);
      v10 = 1;
      v7 = sub_10001A6B0(v6, &v10);
      v8 = v7;
      if (*(a1 + 112) == 1)
      {
        v8 = *(a1 + 104);
      }

      v4 = *(a1 + 136);
      if ((v4 & 1) == 0 && v7 - v8 > 20.0)
      {
        v4 = *(a1 + 152);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4 & 1;
}

uint64_t sub_1001E9E38(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == v3)
  {
    return 0;
  }

  v7 = *(v6 + 32);
  v8 = v6 + 40;
  if (v7 <= a2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001E9E88(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1001E9FBC(a1, i + 2, i + 2);
  }

  return a1;
}

void sub_1001E9FA0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10082CC8C(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_1001E9FBC(void *a1, void *a2, void *a3)
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
    sub_1001E9F00();
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

void sub_1001EA1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    sub_10082CC8C(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001EA21C(void *a1, void *a2)
{
  result = sub_10019D138(a1, a2);
  if (result)
  {
    v5 = sub_10019D138(a1, a2);
    if (!v5)
    {
      sub_1000432E8("unordered_map::at: key not found");
    }

    return (0xAAAAAAAAAAAAAAABLL * ((v5[4] - v5[3]) >> 6));
  }

  return result;
}

void sub_1001EA27C(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, double a5)
{
  *(a1 + 8) = a2;
  if (a2)
  {
    v6 = a3 / a2;
  }

  else
  {
    v6 = 0.0;
  }

  *(a1 + 16) = v6;
  *(a1 + 24) = a5;
  *(a1 + 32) = *a4;
  v7 = sub_1000081AC();
  if (v7 - *a1 >= 7200.0)
  {
    sub_100AABD14(a1);
    *a1 = v7;
  }
}

void sub_1001EA2F8(uint64_t a1, void *a2, void *a3)
{
  if (sub_10019D138(a2, a3))
  {
    v5 = sub_1000081AC();
    if (v5 - *(a1 + 376) >= 1800.0)
    {
      *(a1 + 376) = v5;
      v6 = sub_10019D138(a2, a3);
      if (!v6)
      {
        sub_1000432E8("unordered_map::at: key not found");
      }

      v7 = v6;
      if (v6[4] != v6[3])
      {
        v8 = 0;
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        v10 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        do
        {
          if (p_info[266] != -1)
          {
            sub_10194CFCC();
          }

          v11 = v10[267];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            std::operator+<char>();
            v12 = v10;
            v13 = p_info;
            v14 = SHIBYTE(v38);
            v15 = *v35;
            v17 = v7[3];
            v16 = v7[4];
            sub_1001912D0(v17 + 192 * v8, __p);
            v18 = v35;
            if (v14 < 0)
            {
              v18 = v15;
            }

            *buf = 136315907;
            v43 = v18;
            v19 = __p;
            if (v34 < 0)
            {
              v19 = __p[0];
            }

            v44 = 2048;
            v45 = v8 + 1;
            v46 = 2048;
            v47 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 6);
            v48 = 2085;
            v49 = v19;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "%s, harvest sample %zu / %zu, %{sensitive}s", buf, 0x2Au);
            if (v34 < 0)
            {
              operator delete(__p[0]);
            }

            p_info = v13;
            if (SHIBYTE(v38) < 0)
            {
              operator delete(*v35);
            }

            v10 = v12;
          }

          if (sub_10000A100(121, 2))
          {
            sub_10194CFF4(buf);
            v20 = v10[267];
            std::operator+<char>();
            v21 = v34;
            v22 = __p[0];
            v23 = v7[3];
            v24 = v7[4];
            sub_1001912D0(v23 + 192 * v8, v31);
            v25 = __p;
            if (v21 < 0)
            {
              v25 = v22;
            }

            *v35 = 136315907;
            ++v8;
            *&v35[4] = v25;
            v26 = v31;
            if (v32 < 0)
            {
              v26 = v31[0];
            }

            v36 = 2048;
            v37 = v8;
            v38 = 2048;
            v39 = 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 6);
            v40 = 2085;
            v41 = v26;
            LODWORD(v29) = 42;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v20, 0, "%s, harvest sample %zu / %zu, %{sensitive}s", v35, v29);
            v28 = v27;
            if (v32 < 0)
            {
              operator delete(v31[0]);
            }

            if (v34 < 0)
            {
              operator delete(__p[0]);
            }

            sub_100152C7C("Generic", 1, 0, 2, "void CLWifiAssociatedApHarvestDatabase::logAllHarvestSamplesOfCurrentAssociatedApIfPossible(const std::unordered_map<CLMacAddress, std::vector<CLWifiHarvestDatabaseEntry>> &, const CLMacAddress &)", "%s\n", v28);
            if (v28 != buf)
            {
              free(v28);
            }
          }

          else
          {
            ++v8;
          }
        }

        while (v8 < 0xAAAAAAAAAAAAAAABLL * ((v7[4] - v7[3]) >> 6));
      }
    }
  }
}

void sub_1001EA674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EA6AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100072814(a2);
  sub_1001E4BC4(a1 + 888, !v4);
  sub_1001097CC((a1 + 472), a2, a1 + 312);
  v6 = v5;
  if (qword_1025D4620 != -1)
  {
    sub_101AA3E94();
  }

  v7 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v35;
    sub_1001E2694(v35);
    if (v38 < 0)
    {
      v8 = *v35;
    }

    sub_10018F0D0(&v34);
    v9 = SHIBYTE(v34.__r_.__value_.__r.__words[2]);
    v10 = v34.__r_.__value_.__r.__words[0];
    sub_1001E2694(&__p);
    if (v9 >= 0)
    {
      v11 = &v34;
    }

    else
    {
      v11 = v10;
    }

    p_p = __p.__r_.__value_.__r.__words[0];
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    v13 = (a1 + 1496);
    if (*(a1 + 1519) < 0)
    {
      v13 = *v13;
    }

    *buf = 136643843;
    v45 = v8;
    v46 = 2081;
    v47 = v11;
    v48 = 2085;
    v49 = p_p;
    v50 = 2050;
    v51 = v6;
    v52 = 2081;
    v53 = v13;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "WifiCalc, replacing computed location %{sensitive}s with associated AP %{private}s centroid %{sensitive}s. Distance %{public}.1fm. LOI %{private}s", buf, 0x34u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v38) < 0)
    {
      operator delete(*v35);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101AA3FD8(buf);
    v22 = qword_1025D4628;
    v23 = &v34;
    sub_1001E2694(&v34);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = v34.__r_.__value_.__r.__words[0];
    }

    sub_10018F0D0(&__p);
    v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v25 = __p.__r_.__value_.__r.__words[0];
    sub_1001E2694(v31);
    if (v24 >= 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = v25;
    }

    v27 = v31[0];
    if (v32 >= 0)
    {
      v27 = v31;
    }

    v28 = (a1 + 1496);
    if (*(a1 + 1519) < 0)
    {
      v28 = *v28;
    }

    *v35 = 136643843;
    *&v35[4] = v23;
    v36 = 2081;
    v37 = v26;
    v38 = 2085;
    v39 = v27;
    v40 = 2050;
    v41 = v6;
    v42 = 2081;
    v43 = v28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v22, 0, "WifiCalc, replacing computed location %{sensitive}s with associated AP %{private}s centroid %{sensitive}s. Distance %{public}.1fm. LOI %{private}s", v35, 52);
    v30 = v29;
    if (v32 < 0)
    {
      operator delete(v31[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v34.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiPositionCalculatorWithAssociatedAp::updateComputedLocation(CL::Wifi1::Types::ComputedLocation &)", "%s\n", v30);
    if (v30 != buf)
    {
      free(v30);
    }
  }

  v14 = *(a1 + 344);
  v15 = *(a1 + 360);
  v16 = *(a1 + 376);
  *(a2 + 80) = *(a1 + 392);
  v17 = *(a1 + 328);
  *a2 = *(a1 + 312);
  *(a2 + 16) = v17;
  *(a2 + 48) = v15;
  *(a2 + 64) = v16;
  *(a2 + 32) = v14;
  v18 = *(a1 + 408);
  v19 = *(a1 + 424);
  v20 = *(a1 + 440);
  *(a2 + 140) = *(a1 + 452);
  *(a2 + 112) = v19;
  *(a2 + 128) = v20;
  *(a2 + 96) = v18;
  *(a2 + 156) = 1;
  *(a2 + 84) = 69;
  if (*(a1 + 1528) == 2)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  *(a2 + 180) = v21;
}

void sub_1001EAA60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

double sub_1001EAAC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100021ED8(a2);
  HIDWORD(v12) = 0;
  if (sub_1001D381C(&v12 + 1, *(a1 + 4), *(a1 + 12)))
  {
    *(a2 + 316) = HIDWORD(v12);
    *(a2 + 312) = 1;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101A02224();
  }

  v4 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a2 + 316);
    v6 = *(a2 + 312);
    *buf = 134349312;
    v18 = v5;
    v19 = 1026;
    v20 = v6;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Wifi,undulation,%{public}lf, model, %{public}d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A0224C(buf);
    v8 = *(a2 + 316);
    v9 = *(a2 + 312);
    v13 = 134349312;
    v14 = v8;
    v15 = 1026;
    v16 = v9;
    LODWORD(v12) = 18;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 2, "Wifi,undulation,%{public}lf, model, %{public}d", &v13, v12);
    v11 = v10;
    sub_100152C7C("Generic", 1, 0, 2, "CLDaemonLocationPrivate CL::Wifi1::Policies::LocationPrivateCalculation::populateLocationPrivate(const CL::Wifi1::Types::ComputedLocation &)", "%s\n", v10);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  *(a2 + 32) = sub_1000137E0();
  *(a2 + 344) = sub_1000081AC();
  *(a2 + 24) = 0;
  result = *(a1 + 168);
  *(a2 + 600) = result;
  *(a2 + 608) = *(a1 + 180);
  *(a2 + 620) = *(a1 + 176);
  return result;
}

void sub_1001EACCC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 528);
  if (v3)
  {
    sub_100008080(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EACF0(uint64_t a1, uint64_t a2)
{
  sub_1001EAF5C(a1, a2, buf);
  *(a1 + 160) = *buf;
  *(a1 + 169) = *&buf[9];
  if (*(a1 + 184) == 1)
  {
    v6[0] = @"positionWiggleDistance";
    v7[0] = [NSNumber numberWithDouble:*(a1 + 160)];
    v6[1] = @"positionWiggleTimestampDelta";
    v7[1] = [NSNumber numberWithDouble:*(a1 + 168)];
    v6[2] = @"positionWiggleSpeed";
    v7[2] = [NSNumber numberWithDouble:*(a1 + 176)];
    v3 = [NSDictionary dictionaryWithObjects:v7 forKeys:v6 count:3];
    if (*(a1 + 160) >= 0.0 && *(a1 + 168) > 0.0 && *(a1 + 176) >= 0.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101BCF4BC();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        *&buf[4] = v3;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "@WifiPositionWiggleMetrics, submitting CoreAnalytics event for wifi position wiggle, %{public}@", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BCF4E4(v3);
      }

      AnalyticsSendEventLazy();
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101BCF4BC();
      }

      v4 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        *&buf[4] = v3;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "@WifiPositionWiggleMetrics, error, invalid wifi position wiggle, %{public}@, skip", buf, 0xCu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101BCF5DC(v3);
      }
    }
  }
}

void sub_1001EAF5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!sub_100072814(a2) || !sub_100072814(a1))
  {
LABEL_42:
    v27 = 0;
    *a3 = 0;
    goto LABEL_43;
  }

  v6 = *(a2 + 76);
  v7 = *(a1 + 76);
  v8 = v6 - v7;
  if (v6 - v7 < 0.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101BCF2A8();
    }

    v9 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_1001D78F4(v38);
      v10 = SHIBYTE(v41);
      v11 = *v38;
      sub_1001D78F4(__p);
      v12 = v38;
      if (v10 < 0)
      {
        v12 = v11;
      }

      if (v37 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      *buf = 136643331;
      v44 = v12;
      v45 = 2085;
      v46 = v13;
      v47 = 2050;
      v48 = v8;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "@WifiPositionWiggleMetrics, #warning, timestamp out of order, current location, %{sensitive}s, previous location, %{sensitive}s, timestamp delta, %{public}.1f", buf, 0x20u);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(*v38);
      }
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_42;
    }

    sub_101BCF6C8(buf);
    v14 = qword_1025D4628;
    sub_1001D78F4(__p);
    v15 = v37;
    v16 = __p[0];
    sub_1001D78F4(v34);
    v17 = __p;
    if (v15 < 0)
    {
      v17 = v16;
    }

    if (v35 >= 0)
    {
      v18 = v34;
    }

    else
    {
      v18 = v34[0];
    }

    *v38 = 136643331;
    *&v38[4] = v17;
    v39 = 2085;
    v40 = v18;
    v41 = 2050;
    v42 = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v14, 0, "@WifiPositionWiggleMetrics, #warning, timestamp out of order, current location, %{sensitive}s, previous location, %{sensitive}s, timestamp delta, %{public}.1f", v38, 32);
    v20 = v19;
    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_53;
  }

  if (v6 - v7 == 0.0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101BCF2A8();
    }

    v21 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_1001D78F4(v38);
      v22 = SHIBYTE(v41);
      v23 = *v38;
      sub_1001D78F4(__p);
      v24 = v38;
      if (v22 < 0)
      {
        v24 = v23;
      }

      if (v37 >= 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      *buf = 136643331;
      v44 = v24;
      v45 = 2085;
      v46 = v25;
      v47 = 2050;
      v48 = v8;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "@WifiPositionWiggleMetrics, #warning, timestamp delta is 0, current location, %{sensitive}s, previous location, %{sensitive}s, timestamp delta, %{public}.1f", buf, 0x20u);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(*v38);
      }
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_42;
    }

    sub_101BCF6C8(buf);
    v28 = qword_1025D4628;
    sub_1001D78F4(__p);
    v29 = v37;
    v30 = __p[0];
    sub_1001D78F4(v34);
    v31 = __p;
    if (v29 < 0)
    {
      v31 = v30;
    }

    if (v35 >= 0)
    {
      v32 = v34;
    }

    else
    {
      v32 = v34[0];
    }

    *v38 = 136643331;
    *&v38[4] = v31;
    v39 = 2085;
    v40 = v32;
    v41 = 2050;
    v42 = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 0, "@WifiPositionWiggleMetrics, #warning, timestamp delta is 0, current location, %{sensitive}s, previous location, %{sensitive}s, timestamp delta, %{public}.1f", v38, 32);
    v20 = v33;
    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (v37 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_53:
    sub_100152C7C("Generic", 1, 0, 2, "std::optional<PositionWiggle> CLWifiPositionWiggleMetrics::getPositionWiggle(const CLDaemonLocation &)", "%s\n", v20);
    if (v20 != buf)
    {
      free(v20);
    }

    goto LABEL_42;
  }

  v26 = sub_100117154(*(a2 + 4), *(a2 + 12), *(a1 + 4), *(a1 + 12));
  *a3 = v26;
  *(a3 + 8) = v8;
  *(a3 + 16) = v26 / v8;
  v27 = 1;
LABEL_43:
  *(a3 + 24) = v27;
}

void sub_1001EB438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1001EB478(uint64_t a1, int a2, uint64_t a3, double a4, double a5)
{
  if (a2)
  {
    v8 = 45.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = *(a1 + 176);
  if (!v9 || !sub_1001E455C(v9))
  {
    return 0;
  }

  sub_1001E45DC(1, &v31, a4, a5, *(a1 + 176));
  sub_1001E45DC(4, &v29, a4, a5, *(a1 + 176));
  sub_1001EB6F0(&v31, v32, v29, v30, 0x6F96F96F96F96F97 * ((v30 - v29) >> 2));
  if (v32 == v31)
  {
    v20 = 0;
  }

  else
  {
    sub_1005317F8(v31, v32, 126 - 2 * __clz(0x6F96F96F96F96F97 * ((v32 - v31) >> 2)), 1, v11);
    *a3 = xmmword_101CE6CD8;
    *(a3 + 16) = xmmword_101CE6CE8;
    *(a3 + 64) = xmmword_101CE6D18;
    *(a3 + 80) = xmmword_101CE6D28;
    *(a3 + 32) = xmmword_101CE6CF8;
    *(a3 + 48) = xmmword_101CE6D08;
    *(a3 + 140) = *(&xmmword_101CE6D58 + 12);
    *(a3 + 112) = xmmword_101CE6D48;
    *(a3 + 128) = xmmword_101CE6D58;
    *(a3 + 96) = xmmword_101CE6D38;
    v12 = v31;
    v13 = v32;
    if (v32 != v31)
    {
      v14 = *(v32 - 17);
      do
      {
        v15 = *(v13 - 17);
        v26 = *(v13 - 6);
        v27 = *(v13 - 5);
        v16 = *(v13 - 15);
        v28 = *(v13 - 16);
        v24 = *(v13 - 8);
        v25 = *(v13 - 7);
        v22 = *(v13 - 7);
        v23 = *(v13 - 5);
        v17 = *(v13 - 3);
        v18 = *(v13 - 1);
        v13 = (v13 - 156);
        if (v15 <= v14 && (v15 < 35.0 && v16 == 1 || v15 < v8 && v16 == 4))
        {
          v19 = *v13;
          *(a3 + 16) = *(v13 + 4);
          *a3 = v19;
          *(a3 + 20) = v15;
          *(a3 + 44) = v25;
          *(a3 + 60) = v26;
          *(a3 + 76) = v27;
          *(a3 + 28) = v24;
          *(a3 + 92) = v28;
          *(a3 + 96) = v16;
          *(a3 + 148) = v18;
          *(a3 + 132) = v17;
          *(a3 + 116) = v23;
          v14 = v15;
          *(a3 + 100) = v22;
        }
      }

      while (v13 != v12);
    }

    v20 = sub_100072814(a3);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  return v20;
}

void sub_1001EB6BC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 88);
  if (v4)
  {
    *(v1 - 80) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1001EB6F0(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v7 = __src;
    v9 = a1[1];
    v10 = a1[2];
    if (0x6F96F96F96F96F97 * ((v10 - v9) >> 2) >= a5)
    {
      v16 = v9 - __dst;
      if (0x6F96F96F96F96F97 * ((v9 - __dst) >> 2) >= a5)
      {
        v27 = &__dst[156 * a5];
        v28 = &v9[-156 * a5];
        v29 = a1[1];
        while (v28 < v9)
        {
          v30 = *(v28 + 1);
          *v29 = *v28;
          v29[1] = v30;
          v31 = *(v28 + 2);
          v32 = *(v28 + 3);
          v33 = *(v28 + 5);
          v29[4] = *(v28 + 4);
          v29[5] = v33;
          v29[2] = v31;
          v29[3] = v32;
          v34 = *(v28 + 6);
          v35 = *(v28 + 7);
          v36 = *(v28 + 8);
          *(v29 + 140) = *(v28 + 140);
          v29[7] = v35;
          v29[8] = v36;
          v29[6] = v34;
          v28 += 156;
          v29 = (v29 + 156);
        }

        a1[1] = v29;
        if (v9 != v27)
        {
          memmove(&__dst[156 * a5], __dst, v9 - v27);
        }

        v47 = 156 * a5;
        v48 = v5;
        v49 = v7;
      }

      else
      {
        v17 = &__src[v16];
        v18 = a1[1];
        v19 = v18;
        while (v17 != a4)
        {
          v20 = *(v17 + 1);
          *v19 = *v17;
          v19[1] = v20;
          v21 = *(v17 + 2);
          v22 = *(v17 + 3);
          v23 = *(v17 + 5);
          v19[4] = *(v17 + 4);
          v19[5] = v23;
          v19[2] = v21;
          v19[3] = v22;
          v24 = *(v17 + 6);
          v25 = *(v17 + 7);
          v26 = *(v17 + 8);
          *(v19 + 140) = *(v17 + 140);
          v19[7] = v25;
          v19[8] = v26;
          v19[6] = v24;
          v17 += 156;
          v19 = (v19 + 156);
          v18 = (v18 + 156);
        }

        a1[1] = v18;
        if (v16 < 1)
        {
          return v5;
        }

        v37 = &__dst[156 * a5];
        v38 = (v18 - 156 * a5);
        v39 = v18;
        while (v38 < v9)
        {
          v40 = v38[1];
          *v39 = *v38;
          v39[1] = v40;
          v41 = v38[2];
          v42 = v38[3];
          v43 = v38[5];
          v39[4] = v38[4];
          v39[5] = v43;
          v39[2] = v41;
          v39[3] = v42;
          v44 = v38[6];
          v45 = v38[7];
          v46 = v38[8];
          *(v39 + 140) = *(v38 + 140);
          v39[7] = v45;
          v39[8] = v46;
          v39[6] = v44;
          v38 = (v38 + 156);
          v39 = (v39 + 156);
        }

        a1[1] = v39;
        if (v19 != v37)
        {
          memmove(&__dst[156 * a5], __dst, v18 - v37);
        }

        v48 = v5;
        v49 = v7;
        v47 = v16;
      }

      memmove(v48, v49, v47);
      return v5;
    }

    v11 = *a1;
    v12 = a5 + 0x6F96F96F96F96F97 * (&v9[-*a1] >> 2);
    if (v12 > 0x1A41A41A41A41A4)
    {
      sub_10028C64C();
    }

    v13 = __dst - v11;
    v14 = 0x6F96F96F96F96F97 * ((v10 - v11) >> 2);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0xD20D20D20D20D2)
    {
      v15 = 0x1A41A41A41A41A4;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      sub_100238948(a1, v15);
    }

    v50 = 4 * (v13 >> 2);
    v51 = 156 * a5;
    v52 = (v50 + 156 * a5);
    v53 = v50;
    do
    {
      v54 = *(v7 + 1);
      *v53 = *v7;
      v53[1] = v54;
      v55 = *(v7 + 2);
      v56 = *(v7 + 3);
      v57 = *(v7 + 5);
      v53[4] = *(v7 + 4);
      v53[5] = v57;
      v53[2] = v55;
      v53[3] = v56;
      v58 = *(v7 + 6);
      v59 = *(v7 + 7);
      v60 = *(v7 + 8);
      *(v53 + 140) = *(v7 + 140);
      v53[7] = v59;
      v53[8] = v60;
      v53[6] = v58;
      v53 = (v53 + 156);
      v7 += 156;
      v51 -= 156;
    }

    while (v51);
    memcpy(v52, v5, a1[1] - v5);
    v61 = *a1;
    v62 = &v52[a1[1] - v5];
    a1[1] = v5;
    v63 = v5 - v61;
    v64 = (v50 - (v5 - v61));
    memcpy(v64, v61, v63);
    v65 = *a1;
    *a1 = v64;
    a1[1] = v62;
    a1[2] = 0;
    if (v65)
    {
      operator delete(v65);
    }

    return v50;
  }

  return v5;
}

void sub_1001EBA08(float64x2_t *a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v3 = v2 == 11 || v2 == 4;
  if (v3 && *(a2 + 20) > 0.0)
  {
    if (*(a2 + 84) > 0x45u)
    {
      v8 = &a1[53].f64[1] + 4;
      Current = CFAbsoluteTimeGetCurrent();
      v10 = (v8 + 56);
      if (*v8 > 0.0 && (v11 = *v10, sub_100072814(&a1[52].f64[1])) && Current - v11 <= 1800.0)
      {
        sub_1001097CC(a1 + 63, a2, &a1[52].f64[1]);
        v13 = v12;
        if (v12 < 0.0 || v12 > *v8)
        {
          *(a2 + 84) = 69;
          if (qword_1025D4650 != -1)
          {
            sub_10025BA4C();
          }

          v14 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_INFO))
          {
            v15 = *v8;
            v16 = *(a2 + 84);
            v19 = 68289794;
            *v20 = 0;
            *&v20[4] = 2082;
            *&v20[6] = "";
            v21 = 2050;
            v22 = v13;
            v23 = 2050;
            v24 = v15;
            v25 = 1026;
            v26 = v16;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#GnssRefLocationCache,crossCheckWiFiLocationWithCell,fail, distFromWifiToCell:%{public}f, crossCheckThreshold:%{public}f, confidence:%{public}d}", &v19, 0x2Cu);
          }
        }
      }

      else
      {
        if (qword_1025D4650 != -1)
        {
          sub_10025BA4C();
        }

        v17 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v18 = *v10;
          v19 = 134349056;
          *v20 = v18;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,crossCheckWiFiLocationWithCell,no valid recent cell location available,lastCellTimeStamp,%{public}.1lf", &v19, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AA9B50(v8 + 14);
        }
      }
    }

    else
    {
      if (qword_1025D4650 != -1)
      {
        sub_10025BA4C();
      }

      v5 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v19) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,crossCheckWiFiLocationWithCell,already low confidence", &v19, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA9C50();
      }
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v6 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v19) = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,crossCheckWiFiLocationWithCell,not valid wifi location", &v19, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AA9A6C();
    }
  }
}

uint64_t sub_1001EBD10(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 96);
  if (v3 == 11 || v3 == 4)
  {
    *(result + 104) = *(a3 + 344);
    if (*(a2 + 84) > 0x44u)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(result + 112) + 1;
    }

    *(result + 112) = v5;
    *(result + 136) = 0;
  }

  return result;
}

uint64_t sub_1001EBD50(void *a1, unint64_t *a2, unint64_t *a3, double a4, double a5)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = v6;
  if (v6 < v5)
  {
    v7 = v6 + 0x6DB6DB6DB6DB6DB7 * ((a1[7] - a1[6]) >> 4);
  }

  if (v7 != v5)
  {
    v8 = a1[6];
    do
    {
      v9 = *(v8 + 112 * v5 + 8);
      if (v9 > a5)
      {
        break;
      }

      if (v9 > a4)
      {
        *a2 = v5;
        v11 = a1[4];
        if (v5 == v11)
        {
          return 0;
        }

        v13 = a1[7];
        while (1)
        {
          v11 = v13 == v8 ? 0 : (v11 + 0x6DB6DB6DB6DB6DB7 * ((v13 - v8) >> 4) - 1) % (0x6DB6DB6DB6DB6DB7 * ((v13 - v8) >> 4));
          if (*(v8 + 112 * v11 + 8) < a5)
          {
            break;
          }

          if (v11 == v5)
          {
            v11 = v5;
            break;
          }
        }

        *a3 = v11;
        return 1;
      }

      v10 = a1[7] - v8;
      if (v10)
      {
        v5 = (v5 + 1) % (0x6DB6DB6DB6DB6DB7 * (v10 >> 4));
      }

      else
      {
        v5 = 0;
      }
    }

    while (v5 != v6);
  }

  return 0;
}

uint64_t sub_1001EBE50@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>, __n128 a3@<Q0>, double a4@<D1>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a3.n128_f64[0] <= a4)
  {
    v5 = a3.n128_f64[0];
    v6 = result;
    result = *(result + 40);
    v7 = *(result + 8);
    v8 = v5 - v7;
    if (v5 - v7 < v7 + a4)
    {
      do
      {
        v10 = sub_1006A9A14(result, v8);
        if (sub_100028030(v10) && *(v10 + 136))
        {
          v11 = *(v10 + 16);
          if (v11 >= v5 && v11 <= a4)
          {
            sub_10082FC2C(a2, v10);
          }
        }

        result = *(v6 + 40);
        v13 = *(result + 8);
        v8 = v8 + v13;
      }

      while (v8 < v13 + a4);
    }
  }

  return result;
}

void sub_1001EBF0C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001EBF28(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t *sub_1001EBF84(uint64_t *result, void *a2)
{
  v2 = a2[1];
  v3 = *result;
  v4 = result[1];
  v5 = v2 - (v4 - *result);
  if (v4 != *result)
  {
    v6 = v2 - 16 * ((v4 - *result) >> 4);
    v7 = v5;
    do
    {
      *v7 = off_1024DE5F8;
      v8 = *(v3 + 8);
      v9 = *(v3 + 24);
      v10 = *(v3 + 40);
      *(v7 + 56) = *(v3 + 56);
      *(v7 + 40) = v10;
      *(v7 + 24) = v9;
      *(v7 + 8) = v8;
      v11 = *(v3 + 72);
      v12 = *(v3 + 88);
      v13 = *(v3 + 104);
      *(v7 + 120) = *(v3 + 120);
      *(v7 + 104) = v13;
      *(v7 + 88) = v12;
      *(v7 + 72) = v11;
      *(v7 + 128) = *(v3 + 128);
      v3 += 144;
      v7 += 144;
      v6 += 144;
    }

    while (v3 != v4);
    v3 = *result;
  }

  a2[1] = v5;
  *result = v5;
  result[1] = v3;
  a2[1] = v3;
  v14 = result[1];
  result[1] = a2[2];
  a2[2] = v14;
  v15 = result[2];
  result[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

id *sub_1001EC11C(id *a1)
{
  sub_1001EC150(a1);

  return a1;
}

uint64_t sub_1001EC150(uint64_t a1)
{
  v2 = mach_absolute_time();
  v3 = sub_1000080EC(v2 - *(a1 + 16));
  v4 = 32;
  if (*(a1 + 48))
  {
    v4 = 24;
  }

  *(a1 + v4) = v3 + *(a1 + v4);
  *(a1 + 16) = v2;
  v5 = mach_absolute_time();
  v6 = sub_1000080EC(v5 - *(a1 + 8));
  v9[0] = *a1;
  v8[0] = @"client";
  v8[1] = @"inForegroundPercent";
  v9[1] = [NSNumber numberWithDouble:round(*(a1 + 24) / v6 / 0.05) * 0.05];
  v8[2] = @"desiredAccuracy";
  v9[2] = [NSNumber numberWithDouble:*(a1 + 40)];
  v8[3] = @"duration";
  v9[3] = [NSNumber numberWithDouble:round(v6 / 10.0) * 10.0];
  v8[4] = @"durationForeground";
  v9[4] = [NSNumber numberWithDouble:round(*(a1 + 24) / 10.0) * 10.0];
  v8[5] = @"durationBackground";
  v9[5] = [NSNumber numberWithDouble:round(*(a1 + 32) / 10.0) * 10.0];
  [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:6];
  result = AnalyticsSendEvent();
  *(a1 + 8) = v5;
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_1001EC310(uint64_t a1, uint64_t a2)
{
  if (qword_102659078 != -1)
  {
    sub_101916010();
  }

  return qword_102637208;
}

uint64_t sub_1001EC348(uint64_t a1)
{
  v3 = 0;
  (*(*a1 + 120))(a1, &v3);
  v3 = 2;
  (*(*a1 + 120))(a1, &v3);
  v3 = 1;
  (*(*a1 + 120))(a1, &v3);
  v3 = 3;
  (*(*a1 + 120))(a1, &v3);
  v3 = 4;
  (*(*a1 + 120))(a1, &v3);
  v3 = 39;
  (*(*a1 + 120))(a1, &v3);
  v3 = 10;
  (*(*a1 + 120))(a1, &v3);
  v3 = 5;
  return (*(*a1 + 120))(a1, &v3);
}

uint64_t sub_1001EC508(char *a1, int a2, int *a3)
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
                sub_101ABDD10();
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
                  sub_101ABDD10();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLAutopauseProvider_Type::Notification, CLAutopauseProvider_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLAutopauseProvider_Type::Notification, NotificationData_T = CLAutopauseProvider_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
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

void sub_1001EC8AC(uint64_t a1)
{
  *(a1 + 8) = xmmword_101C75BF0;
  *(a1 + 56) = 0;
  *(a1 + 58) = 0;
  *(a1 + 72) = 0xFFFF;
  *(a1 + 84) = 0;
  *(a1 + 76) = 0;
  *(a1 + 92) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 108) = _Q0;
  *(a1 + 124) = _Q0;
  *(a1 + 140) = _Q0;
  *(a1 + 156) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0xBFF0000000000000;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0xBFF0000000000000;
  *(a1 + 196) = 0x7FFFFFFF;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  sub_1001ECED8(a1 + 320);
  v7 = *(a1 + 368);
  v8 = *(a1 + 376);
  *(a1 + 400) = 0;
  v9 = (v8 - v7) >> 3;
  if (v9 >= 3)
  {
    do
    {
      operator delete(*v7);
      v10 = *(a1 + 376);
      v7 = (*(a1 + 368) + 8);
      *(a1 + 368) = v7;
      v9 = (v10 - v7) >> 3;
    }

    while (v9 > 2);
  }

  if (v9 == 1)
  {
    v11 = 51;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_8;
    }

    v11 = 102;
  }

  *(a1 + 392) = v11;
LABEL_8:
  v12 = *(a1 + 416);
  v13 = *(a1 + 424);
  *(a1 + 448) = 0;
  v14 = (v13 - v12) >> 3;
  if (v14 >= 3)
  {
    do
    {
      operator delete(*v12);
      v15 = *(a1 + 424);
      v12 = (*(a1 + 416) + 8);
      *(a1 + 416) = v12;
      v14 = (v15 - v12) >> 3;
    }

    while (v14 > 2);
  }

  if (v14 == 1)
  {
    v16 = 25;
  }

  else
  {
    if (v14 != 2)
    {
      return;
    }

    v16 = 51;
  }

  *(a1 + 440) = v16;
}

void sub_1001EC9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a2 + 156) != 1 || !sub_100073270(a2, a3)) && *(a3 + 20) > 0.0 && sub_100072814(a3))
  {
    v5 = *(a2 + 156);
    v6 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v6;
    v7 = *(a3 + 80);
    v9 = *(a3 + 32);
    v8 = *(a3 + 48);
    *(a2 + 64) = *(a3 + 64);
    *(a2 + 80) = v7;
    *(a2 + 32) = v9;
    *(a2 + 48) = v8;
    v11 = *(a3 + 112);
    v10 = *(a3 + 128);
    v12 = *(a3 + 96);
    *(a2 + 140) = *(a3 + 140);
    *(a2 + 112) = v11;
    *(a2 + 128) = v10;
    *(a2 + 96) = v12;
    if ((v5 & 1) == 0)
    {
      *(a2 + 156) = 1;
    }
  }
}

uint64_t sub_1001ECA94(uint64_t a1, unsigned int *a2)
{
  sub_1001ECC7C(a1);
  if (qword_1025D47A0 != -1)
  {
    sub_101919C50();
  }

  v4 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    *buf = 67109120;
    *&buf[4] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLIENT: Clearing cached notification for %d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101919C64(a2);
  }

  (*(*a1 + 120))(a1, a2);
  v6 = *a2;
  [*(*(a1 + 168) + 16) unregister:*(*(a1 + 168) + 8) forNotification:*a2];
  if (v6 <= 2)
  {
    *buf = a2;
    *(sub_100007FA0(a1 + 1048, a2, &unk_101C66300, buf) + 32) = 0;
    *buf = 0;
    if (!sub_10000608C(a1, buf, 1))
    {
      *buf = 2;
      if (!sub_10000608C(a1, buf, 1))
      {
        *buf = 1;
        if (!sub_10000608C(a1, buf, 1))
        {
          [*(a1 + 1024) setNextFireDelay:1.79769313e308];
          (*(*a1 + 304))(a1);
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1001ECC7C(uint64_t a1)
{
  v3 = 2;
  if (!sub_10000608C(a1, &v3, 1))
  {
    v3 = 1;
    if (!sub_10000608C(a1, &v3, 1))
    {
      v3 = 0;
      if (!sub_10000608C(a1, &v3, 1))
      {
        v3 = 9;
        (*(*a1 + 120))(a1, &v3);
      }
    }
  }

  return 1;
}

id sub_1001ECD70(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_101B1984C();
  }

  v2 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "PAUSE: Stopping auto-pause monitoring.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101B199CC();
  }

  [*(*(a1 + 120) + 16) unregister:*(*(a1 + 120) + 8) forNotification:4];
  [*(*(a1 + 112) + 16) unregister:*(*(a1 + 112) + 8) forNotification:2];
  [*(*(a1 + 128) + 16) unregister:*(*(a1 + 128) + 8) forNotification:2];
  [*(*(a1 + 128) + 16) unregister:*(*(a1 + 128) + 8) forNotification:3];
  v4 = 0;
  (*(*a1 + 120))(a1, &v4);
  sub_1001EC8AC(a1 + 144);
  return [*(a1 + 136) setNextFireDelay:1.79769313e308];
}

uint64_t sub_1001ECE90(uint64_t a1)
{
  v3 = 0;
  if (!sub_10000608C(a1, &v3, 1))
  {
    sub_1001ECD70(a1);
  }

  return 1;
}

double sub_1001ECED8(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1001ECF30(char *a1, int a2, int *a3)
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
                sub_1018E690C();
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
                  sub_1018E690C();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLDaemonStatus_Type::Notification, CLDaemonStatus_Type::NotificationData, char, char>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLDaemonStatus_Type::Notification, NotificationData_T = CLDaemonStatus_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
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

uint64_t sub_1001ED2D4(char *a1, int a2, int *a3)
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
                sub_1003286C0();
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
                  sub_1003286C0();
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

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLMotionState_Type::Notification, CLMotionState_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLMotionState_Type::Notification, NotificationData_T = CLMotionState_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
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

uint64_t sub_1001ED6C0(void *a1, unsigned int *a2)
{
  sub_1001ECC7C(a1);
  if (qword_1025D47B0 != -1)
  {
    sub_101A83044();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_DEBUG))
  {
    v5 = *a2;
    v11[0] = 68289282;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 1026;
    v15 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Stream clearing cached notification, notification:%{public}d}", v11, 0x18u);
  }

  (*(*a1 + 120))(a1, a2);
  v6 = *a2;
  if (*a2 >= 3)
  {
    if (v6 != 9)
    {
      [*(a1[25] + 16) unregister:*(a1[25] + 8) forNotification:*a2];
      v9 = 0;
      while (dword_101CFDAA0[v9] != *a2)
      {
        if (++v9 == 3)
        {
          return 1;
        }
      }

      [*(a1[26] + 16) unregister:*(a1[26] + 8) forNotification:?];
    }
  }

  else
  {
    v7 = a1[16];
    Current = CFAbsoluteTimeGetCurrent();
    sub_1000F1F54(v7, v6, 0, Current);
  }

  return 1;
}

uint64_t *sub_1001ED860(uint64_t a1, unsigned int a2)
{
  v14 = a2;
  if (qword_1025D47B0 != -1)
  {
    sub_101A7D5D0();
  }

  v4 = qword_1025D47B8;
  if (os_log_type_enabled(qword_1025D47B8, OS_LOG_TYPE_INFO))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Stopping location for source, source:%{public, location:CLStreamingAwareLocationProviderStateMachine::LocationSource}lld}", buf, 0x1Cu);
  }

  v5 = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v13 = _Q0;
  do
  {
    v11 = *(a1 + 32);
    *&buf[16] = 0;
    v16 = 0;
    *buf = v13;
    *&buf[24] = 0;
    (**v11)();
    v5 += 4;
  }

  while (v5 != 12);
  *buf = &v14;
  result = sub_1000B91DC(a1 + 40, &v14, &unk_101C66300, buf);
  *(result + 8) = 0;
  return result;
}

uint64_t sub_1001EDA00(uint64_t a1, int *a2)
{
  sub_1001ECC7C(a1);
  v4 = sub_10010A1AC(a1, a2);
  if (qword_1025D4600 != -1)
  {
    sub_101BCFF1C();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v6 = *a2;
    v7 = sub_100048D98(*a2);
    *buf = 67240706;
    *&buf[4] = v6;
    *&buf[8] = 2082;
    *&buf[10] = v7;
    *&buf[18] = 1026;
    *&buf[20] = v4;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLIENT:unregisterForNotificationInternal,notification,%{public}d,%{public}s,granularity,%{public}d", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101BD056C(a2, v4);
  }

  v8 = *a2;
  if (*a2 <= 14)
  {
    if (v8 > 2)
    {
      if (v8 <= 7)
      {
        if ((v8 - 3) >= 2 && v8 != 6)
        {
          return 1;
        }

        goto LABEL_67;
      }

      if (v8 != 8)
      {
        if (v8 != 10)
        {
          return 1;
        }

        goto LABEL_67;
      }

      if (*(a1 + 336))
      {
        *buf = a1 + 336;
        v42 = sub_10010A224(a1 + 256, (a1 + 336), &unk_101C66300, buf);
        [*(v42[5] + 16) unregister:*(v42[5] + 8) forNotification:8];
      }

      goto LABEL_160;
    }

    if (v8 >= 3)
    {
      return 1;
    }

    v11 = (a1 + 160);
    if (*(a1 + 160) != v4)
    {
LABEL_154:
      if (qword_1025D4600 != -1)
      {
        sub_101BCFF30();
      }

      v101 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v102 = *(a1 + 160);
        v103 = *(a1 + 161);
        *buf = 67240448;
        *&buf[4] = v102;
        *&buf[8] = 1026;
        *&buf[10] = v103;
        _os_log_impl(dword_100000000, v101, OS_LOG_TYPE_DEBUG, "After unregister,required granularity,%{public}d,active granularity,%{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BD0CAC();
      }

LABEL_160:
      *v133 = 0xBFF0000000000000;
      *&v133[8] = 0;
      v134 = 0;
      v135 = 0;
      v132 = sub_100107BB8(a1);
      v104 = *(a1 + 256);
      if (v104 != a1 + 264)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101BCFF30();
        }

        v105 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v106 = v132;
          v107 = sub_1003DD9F8(a1 + 232, (v104 + 32));
          v110 = v107[1];
          v108 = v107 + 1;
          v109 = v110;
          if (*(v108 + 23) >= 0)
          {
            v111 = v108;
          }

          else
          {
            v111 = v109;
          }

          v112 = *(sub_1003DD9F8(a1 + 232, (v104 + 32)) + 871);
          *buf = 134349570;
          *&buf[4] = v106;
          *&buf[12] = 2082;
          *&buf[14] = v111;
          *&buf[22] = 1026;
          LODWORD(v137) = v112;
          _os_log_impl(dword_100000000, v105, OS_LOG_TYPE_DEBUG, "CLIENT:unregisterForNotificationInternal,propagate,desiredAccuracy,%{public}.1lf,name,%{public}s,active,%{public}d", buf, 0x1Cu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v114 = qword_1025D4608;
          v115 = v132;
          v116 = sub_1003DD9F8(a1 + 232, (v104 + 32));
          v119 = v116[1];
          v117 = v116 + 1;
          v118 = v119;
          if (*(v117 + 23) >= 0)
          {
            v120 = v117;
          }

          else
          {
            v120 = v118;
          }

          v121 = *(sub_1003DD9F8(a1 + 232, (v104 + 32)) + 871);
          v126 = 134349570;
          v127 = v115;
          v128 = 2082;
          v129 = v120;
          v130 = 1026;
          v131 = v121;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v114, 2, "CLIENT:unregisterForNotificationInternal,propagate,desiredAccuracy,%{public}.1lf,name,%{public}s,active,%{public}d", &v126, 28);
          v123 = v122;
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v122);
          if (v123 != buf)
          {
            free(v123);
          }
        }

        v113 = *(v104 + 40);
        *buf = 0;
        sub_100109ECC(v113, buf, &v132);
      }

      return 1;
    }

    *buf = 0;
    if (sub_10000608C(a1, buf, 1))
    {
      if (sub_100027514((a1 + 800), v12))
      {
        if (qword_1025D4600 != -1)
        {
          sub_101BCFF30();
        }

        v13 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "Unregister,fRequiredLocationGranularity adjusted to fine as best accuracy does not require gps", buf, 2u);
        }

        v14 = sub_10000A100(121, 2);
        if (v14)
        {
          sub_101BD0884();
        }

        v16 = sub_10000B1F8(v14, v15);
        *buf = 1;
        *buf = sub_10001A6B0(v16, buf);
        sub_1003E0928((a1 + 800), buf);
        *(a1 + 682) = 1;
        sub_10017ECA4(a1);
        *(a1 + 160) = 1;
        if (qword_1025D4600 != -1)
        {
          sub_101BCFF30();
        }

        v17 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *a2;
          *buf = 67240192;
          *&buf[4] = v18;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Fine,notification,%{public}d,unregisterForNotificationInternal", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD0970(a2);
        }
      }

      else
      {
        *v11 = 2;
        if (qword_1025D4600 != -1)
        {
          sub_101BCFF30();
        }

        v69 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          v70 = *a2;
          *buf = 67240192;
          *&buf[4] = v70;
          _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEFAULT, "LCPM,update required location granularity to Best,notification,%{public}d,unregisterForNotificationInternal", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101BD0790(a2);
        }
      }

      goto LABEL_129;
    }

    *buf = 1;
    if (sub_10000608C(a1, buf, 1))
    {
      v68 = 1;
    }

    else
    {
      *buf = 2;
      if (sub_10000608C(a1, buf, 1))
      {
        *v11 = 0;
        goto LABEL_129;
      }

      v68 = -1;
    }

    *v11 = v68;
LABEL_129:
    if (qword_1025D4600 != -1)
    {
      sub_101BCFF30();
    }

    v72 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v73 = *a2;
      v74 = *v11;
      *buf = 67240448;
      *&buf[4] = v73;
      *&buf[8] = 1026;
      *&buf[10] = v74;
      _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "Unregistered for notification,%{public}d,new required location granularity,%{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BD0A64();
    }

    if (*v11 != v4)
    {
      sub_1001D3BE4(a1, (a1 + 160));
      if (v4 != -1)
      {
        if (v4 == 2)
        {
          v75 = (*(**(a1 + 280) + 432))(*(a1 + 280));
          if (*(a1 + 5217) == 1 && *(sub_10000AE98(v75, v76) + 24) == 1)
          {
            sub_10001CAF4(buf);
            v132 = 0.0;
            if (sub_1000B9370(*buf, "LocationControllerRecorderFileAgeThresholdSeconds", &v132))
            {
              v78 = v132;
            }

            else
            {
              v78 = 21600.0;
            }

            v79 = *&buf[8];
            if (*&buf[8])
            {
              sub_100008080(*&buf[8]);
            }

            v80 = sub_10002F470(v79, v77);
            v83 = v80 - *(sub_10000AE98(v81, v82) + 32);
            if (v83 > v78)
            {
              if (qword_1025D4600 != -1)
              {
                sub_101BCFF30();
              }

              v84 = qword_1025D4608;
              v85 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT);
              if (v85)
              {
                v87 = sub_10002F470(v85, v86);
                v90 = sub_10000B1F8(v88, v89);
                v91 = sub_100125220(v90);
                *buf = 134349568;
                *&buf[4] = v87;
                *&buf[12] = 2050;
                *&buf[14] = v83;
                *&buf[22] = 2050;
                v137 = v91;
                _os_log_impl(dword_100000000, v84, OS_LOG_TYPE_DEFAULT, "#locctl,#rec,refreshing the recording file,mct,%{public}.3f,seconds since last,%{public}.2f,propagation_us,%{public}.3f", buf, 0x20u);
              }

              v92 = sub_10000A100(121, 2);
              if (v92)
              {
                sub_101BD0B6C(v83);
              }

              v94 = sub_10000AE98(v92, v93);
              sub_1005CADAC(v94);
              v97 = sub_10000AE98(v95, v96);
              sub_1005CAEDC(v97);
              v100 = sub_10000AE98(v98, v99);
              sub_1005CB17C(v100);
              *buf = 0x4000000000000000;
              sub_100671BD8(a1, buf);
            }
          }
        }

        *(a1 + 161) = -1;
        sub_10010FB88(a1, (a1 + 160));
      }
    }

    goto LABEL_154;
  }

  if (v8 > 33)
  {
    if (v8 > 38)
    {
      if (v8 == 39)
      {
LABEL_67:
        v24 = *(a1 + 256);
        if (v24 != (a1 + 264))
        {
          do
          {
            if (qword_1025D4600 != -1)
            {
              sub_101BCFF30();
            }

            v25 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              v26 = *a2;
              v27 = sub_1003DD9F8(a1 + 232, v24 + 8);
              v30 = v27[1];
              v28 = v27 + 1;
              v29 = v30;
              if (*(v28 + 23) >= 0)
              {
                v29 = v28;
              }

              *buf = 67240450;
              *&buf[4] = v26;
              *&buf[8] = 2082;
              *&buf[10] = v29;
              _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "unregistering notification,%{public}d,with,location provider,%{public}s", buf, 0x12u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4600 != -1)
              {
                sub_101BCFF30();
              }

              v34 = qword_1025D4608;
              v35 = *a2;
              v36 = sub_1003DD9F8(a1 + 232, v24 + 8);
              v39 = v36[1];
              v37 = v36 + 1;
              v38 = v39;
              if (*(v37 + 23) >= 0)
              {
                v38 = v37;
              }

              LODWORD(v132) = 67240450;
              HIDWORD(v132) = v35;
              *v133 = 2082;
              *&v133[2] = v38;
              LODWORD(v125) = 18;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v34, 2, "unregistering notification,%{public}d,with,location provider,%{public}s", &v132, v125);
              v41 = v40;
              sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v40);
              if (v41 != buf)
              {
                free(v41);
              }
            }

            [*(*(v24 + 5) + 16) unregister:*(*(v24 + 5) + 8) forNotification:*a2];
            v31 = *(v24 + 1);
            if (v31)
            {
              do
              {
                v32 = v31;
                v31 = *v31;
              }

              while (v31);
            }

            else
            {
              do
              {
                v32 = *(v24 + 2);
                _ZF = *v32 == v24;
                v24 = v32;
              }

              while (!_ZF);
            }

            v24 = v32;
          }

          while (v32 != (a1 + 264));
        }

        return 1;
      }

      if (v8 == 40)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101BCFF30();
        }

        v21 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          *&buf[8] = 2082;
          *&buf[10] = "";
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unregister kNotificationExternalLocationDisablementAssert}", buf, 0x12u);
        }

        if (*(a1 + 344))
        {
          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v22 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = 68289026;
            *&buf[4] = 0;
            *&buf[8] = 2082;
            *&buf[10] = "";
            _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:unregistering kNotificationExternalLocationDisablementAssert w/ accessory provider}", buf, 0x12u);
          }

          v23 = sub_1003DD9F8(a1 + 256, (a1 + 344));
          [*(*v23 + 16) unregister:*(*v23 + 8) forNotification:40];
        }
      }
    }

    else if (v8 == 34)
    {
      if (*(a1 + 336))
      {
        v48 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v48 + 16) unregister:*(*v48 + 8) forNotification:34];
      }
    }

    else if (v8 == 35 && *(a1 + 336))
    {
      v10 = sub_1003DD9F8(a1 + 256, (a1 + 336));
      [*(*v10 + 16) unregister:*(*v10 + 8) forNotification:35];
    }
  }

  else if (v8 > 27)
  {
    if (v8 == 28)
    {
      v49 = 0;
      v50 = *(a1 + 352);
      v126 = *(a1 + 340);
      LODWORD(v127) = v50;
      do
      {
        if (*(&v126 + v49))
        {
          if (qword_1025D4600 != -1)
          {
            sub_101BCFF30();
          }

          v51 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v52 = *a2;
            v53 = sub_1003DD9F8(a1 + 232, (&v126 + v49));
            v56 = v53[1];
            v54 = v53 + 1;
            v55 = v56;
            if (*(v54 + 23) >= 0)
            {
              v55 = v54;
            }

            *buf = 67240450;
            *&buf[4] = v52;
            *&buf[8] = 2082;
            *&buf[10] = v55;
            _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEBUG, "unregistering notification,%{public}d,location provider,%{public}s", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_101BCFF30();
            }

            v58 = qword_1025D4608;
            v59 = *a2;
            v60 = sub_1003DD9F8(a1 + 232, (&v126 + v49));
            v63 = v60[1];
            v61 = v60 + 1;
            v62 = v63;
            if (*(v61 + 23) >= 0)
            {
              v62 = v61;
            }

            LODWORD(v132) = 67240450;
            HIDWORD(v132) = v59;
            *v133 = 2082;
            *&v133[2] = v62;
            LODWORD(v125) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v58, 2, "unregistering notification,%{public}d,location provider,%{public}s", &v132, v125);
            v65 = v64;
            sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationController::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v64);
            if (v65 != buf)
            {
              free(v65);
            }
          }

          v57 = sub_1003DD9F8(a1 + 256, (&v126 + v49));
          [*(*v57 + 16) unregister:*(*v57 + 8) forNotification:28];
        }

        v49 += 4;
      }

      while (v49 != 8);
      if (*(a1 + 336))
      {
        v66 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v66 + 16) unregister:*(*v66 + 8) forNotification:28];
      }

      v67 = *(a1 + 280);
      if (v67)
      {
        (*(*v67 + 360))(v67, 0);
      }
    }

    else if (v8 == 29)
    {
      if (*(a1 + 336))
      {
        v19 = sub_1003DD9F8(a1 + 256, (a1 + 336));
        [*(*v19 + 16) unregister:*(*v19 + 8) forNotification:29];
      }

      if (*(a1 + 344))
      {
        v20 = sub_1003DD9F8(a1 + 256, (a1 + 344));
        [*(*v20 + 16) unregister:*(*v20 + 8) forNotification:29];
      }

      sub_100676A88(a1);
    }
  }

  else if (v8 == 15)
  {
    if (*(a1 + 336))
    {
      *buf = 15;
      if (sub_10000608C(a1, buf, 1))
      {
        __asm { FMOV            V0.2D, #-1.0 }

        *buf = _Q0;
        *&buf[16] = 0;
        LODWORD(v137) = 0;
        *&buf[20] = sub_1000F44E4(a1, 15);
        *&v132 = a1 + 336;
        v47 = sub_10010A224(a1 + 256, (a1 + 336), &unk_101C66300, &v132)[5];
        LODWORD(v132) = 15;
        sub_100109ECC(v47, &v132, buf);
      }

      *buf = a1 + 336;
      v71 = sub_10010A224(a1 + 256, (a1 + 336), &unk_101C66300, buf);
      [*(v71[5] + 16) unregister:*(v71[5] + 8) forNotification:15];
    }
  }

  else if (v8 == 17)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101BCFF30();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLMM,RunMapMatching is turned off", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101BD06A4();
    }

    *(a1 + 675) = 0;
    (*(**(a1 + 280) + 200))(*(a1 + 280));
    (*(**(a1 + 280) + 208))(*(a1 + 280));
  }

  return 1;
}

void sub_1001EEAFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100008080(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001EEB1C(int *a1, unsigned int a2)
{
  v56 = a2;
  if (a2)
  {
    *buf = &v56;
    if (*(sub_100109DF4((a1 + 58), &v56, &unk_101C66300, buf) + 911))
    {
      if (*(a1 + 672) == 1)
      {
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v3 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = &v56;
          v4 = sub_100109DF4((a1 + 58), &v56, &unk_101C66300, buf);
          v5 = v4 + 6;
          if (*(v4 + 71) < 0)
          {
            v5 = *v5;
          }

          *buf = 136315138;
          *&buf[4] = v5;
          _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Unregistering %s location provider as bystander", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_101873804();
          }

          v44 = qword_1025D4608;
          *v57 = &v56;
          v45 = sub_100109DF4((a1 + 58), &v56, &unk_101C66300, v57);
          v46 = v45 + 6;
          if (*(v45 + 71) < 0)
          {
            v46 = *v46;
          }

          *v57 = 136315138;
          *&v57[4] = v46;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v44, 2, "Unregistering %s location provider as bystander", v57);
          v48 = v47;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::stopLocationProvider(LocationProvider)", "%s\n", v47);
          if (v48 != buf)
          {
            free(v48);
          }
        }

        *buf = &v56;
        v6 = sub_10010A224((a1 + 64), &v56, &unk_101C66300, buf);
        [*(v6[5] + 16) unregister:*(v6[5] + 8) forNotification:4];
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101874224();
        }

        v17 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *buf = &v56;
          v18 = sub_100109DF4((a1 + 58), &v56, &unk_101C66300, buf);
          v19 = v18 + 6;
          if (*(v18 + 71) < 0)
          {
            v19 = *v19;
          }

          v20 = sub_100107BB8(a1);
          *buf = 136380931;
          *&buf[4] = v19;
          v61 = 2050;
          *v62 = v20;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "@ClxProvider, stop, %{private}s, desiredAccuracy, %{public}.1f", buf, 0x16u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101874224();
          }

          v49 = qword_1025D4628;
          *v57 = &v56;
          v50 = sub_100109DF4((a1 + 58), &v56, &unk_101C66300, v57);
          v51 = v50 + 6;
          if (*(v50 + 71) < 0)
          {
            v51 = *v51;
          }

          v52 = sub_100107BB8(a1);
          *v57 = 136380931;
          *&v57[4] = v51;
          v58 = 2050;
          v59 = v52;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v49, 0, "@ClxProvider, stop, %{private}s, desiredAccuracy, %{public}.1f", v57, 22);
          v54 = v53;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::stopLocationProvider(LocationProvider)", "%s\n", v53);
          if (v54 != buf)
          {
            free(v54);
          }
        }

        if (v56 == a1[82])
        {
          if (qword_1025D4620 != -1)
          {
            sub_101874224();
          }

          v21 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "WlpReg, 0, loccontroller", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101874DFC();
          }

          if (*(a1 + 682) == 1 && (*buf = a1 + 84, (*(sub_100109DF4((a1 + 58), a1 + 84, &unk_101C66300, buf) + 911) & 1) == 0))
          {
            if (qword_1025D4600 != -1)
            {
              sub_101873804();
            }

            v31 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "LCPM,stop wifi and release gps throttle", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101874EE0();
            }

            sub_1001EFA0C((a1 + 200), v32);
            *(a1 + 682) = 0;
            sub_10017ECA4(a1);
          }

          else
          {
            *buf = a1 + 84;
            if (*(sub_100109DF4((a1 + 58), a1 + 84, &unk_101C66300, buf) + 911) == 1 && *(a1 + 160) == 255)
            {
              if (qword_1025D4600 != -1)
              {
                sub_101873804();
              }

              v22 = qword_1025D4608;
              if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "LCPM,stop wifi and stop gps", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101874FC4();
              }

              sub_1001EFA0C((a1 + 200), v23);
              sub_1001EEB1C(a1, a1[84]);
            }
          }
        }

        else if (v56 == a1[83])
        {
          if (qword_1025D4620 != -1)
          {
            sub_101874224();
          }

          v24 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "UclpReg, 0, loccontroller", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101874D18();
          }
        }

        else if (v56 == a1[84])
        {
          *buf = &v56;
          v25 = sub_10010A224((a1 + 64), &v56, &unk_101C66300, buf);
          [*(v25[5] + 16) unregister:*(v25[5] + 8) forNotification:26];
          *buf = 0;
          if (sub_10000608C(a1, buf, 1) && sub_100027514(a1 + 800, v26))
          {
            *(a1 + 682) = 1;
            sub_10017ECA4(a1);
            if (qword_1025D4600 != -1)
            {
              sub_101873804();
            }

            v27 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "LCPM,stopping gps but keeping throttle state", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101874A6C();
            }
          }

          else
          {
            *(a1 + 682) = 0;
            sub_10017ECA4(a1);
            if (qword_1025D4600 != -1)
            {
              sub_101873804();
            }

            v33 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "LCPM,stopping gps and clearing throttle state", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101874B50();
            }
          }

          if (qword_1025D4650 != -1)
          {
            sub_1018745F8();
          }

          v34 = qword_1025D4658;
          if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEFAULT, "#wigo,off,LocationController", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101874C34();
          }

          AnalyticsSendEventLazy();
        }

        else if (v56 == a1[86])
        {
          *buf = &v56;
          v28 = sub_10010A224((a1 + 64), &v56, &unk_101C66300, buf);
          [*(v28[5] + 16) unregister:*(v28[5] + 8) forNotification:20];
          *buf = &v56;
          v29 = sub_10010A224((a1 + 64), &v56, &unk_101C66300, buf);
          [*(v29[5] + 16) unregister:*(v29[5] + 8) forNotification:21];
          v30 = *(a1 + 39);
          if (v30)
          {
            sub_100DAB6C0(v30);
          }
        }

        *buf = &v56;
        v35 = sub_10010A224((a1 + 64), &v56, &unk_101C66300, buf);
        [*(v35[5] + 16) unregister:*(v35[5] + 8) forNotification:0];
        *buf = &v56;
        v36 = sub_10010A224((a1 + 64), &v56, &unk_101C66300, buf);
        [*(v36[5] + 16) unregister:*(v36[5] + 8) forNotification:9];
        *buf = &v56;
        *(sub_100109DF4((a1 + 58), &v56, &unk_101C66300, buf) + 910) = 1;
        *buf = &v56;
        *(sub_100109DF4((a1 + 58), &v56, &unk_101C66300, buf) + 911) = 0;
        *buf = &v56;
        sub_100109DF4((a1 + 58), &v56, &unk_101C66300, buf)[114] = 0;
        *buf = &v56;
        v37 = sub_100109DF4((a1 + 58), &v56, &unk_101C66300, buf);
        if (*(v37 + 23) < 0.0)
        {
          v39 = sub_10000B1F8(v37, v38);
          *buf = 0;
          v40 = sub_10001A6B0(v39, buf);
          *buf = &v56;
          *(sub_100109DF4((a1 + 58), &v56, &unk_101C66300, buf) + 172) = v40;
          *buf = &v56;
          sub_100109DF4((a1 + 58), &v56, &unk_101C66300, buf)[23] = 0;
          sub_100021AFC(buf);
          v55 = 0;
          v41 = (*(*a1 + 128))(a1, &v55, buf);
          if (*&v62[3] > 0.0)
          {
            v42 = v41;
          }

          else
          {
            v42 = 0;
          }

          if (v42 == 1)
          {
            v43 = v63;
            *v57 = &v56;
            if (v43 == *(sub_100109DF4((a1 + 58), &v56, &unk_101C66300, v57) + 48))
            {
              *&v62[31] = v40;
              *&v62[37] = 0;
              *v57 = 0;
              (*(*a1 + 136))(a1, v57, buf);
              *v57 = 2;
              (*(*a1 + 136))(a1, v57, buf);
              *v57 = 1;
              (*(*a1 + 136))(a1, v57, buf);
              *v57 = 3;
              (*(*a1 + 136))(a1, v57, buf);
              *v57 = 4;
              (*(*a1 + 136))(a1, v57, buf);
              *v57 = 39;
              (*(*a1 + 136))(a1, v57, buf);
            }
          }

          if (v68)
          {
            sub_100008080(v68);
          }

          if (v67 < 0)
          {
            operator delete(v66);
          }

          if (v65)
          {
            sub_100008080(v65);
          }

          if (v64)
          {
            sub_100008080(v64);
          }
        }
      }

      sub_10010FF14(a1, v56);
      return 1;
    }

    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    v9 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = &v56;
      v10 = sub_100109DF4((a1 + 58), &v56, &unk_101C66300, buf);
      v11 = v10 + 6;
      if (*(v10 + 71) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,stopLocation when provider %s is already stopped", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v12 = qword_1025D4608;
      *v57 = &v56;
      v13 = sub_100109DF4((a1 + 58), &v56, &unk_101C66300, v57);
      v14 = v13 + 6;
      if (*(v13 + 71) < 0)
      {
        v14 = *v14;
      }

      *v57 = 136315138;
      *&v57[4] = v14;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v12, 2, "LocationController,#Warning,stopLocation when provider %s is already stopped", v57);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::stopLocationProvider(LocationProvider)", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }

      return 0;
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873CF0();
    }

    v7 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "LocationController,#Warning,stopLocation when provider is None", buf, 2u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_1018750A8();
      return 0;
    }
  }

  return result;
}

void sub_1001EF9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1001EFA0C(uint64_t result, uint64_t a2)
{
  if (*(result + 520) > 0.0)
  {
    v17 = v2;
    v18 = v3;
    v5 = sub_10000B1F8(result, a2);
    v16 = 1;
    *(result + 536) = sub_10001A6B0(v5, &v16);
    sub_100266DB8(result);
    *(result + 468) = 0;
    *(result + 464) = 0;
    *(result + 500) = 0;
    *(result + 508) = 0;
    *(result + 492) = 0;
    *(result + 520) = 0xBFF0000000000000;
    __asm { FMOV            V0.2D, #-1.0 }

    *(result + 528) = _Q0;
    if ((*(result + 48) & 1) != 0 || sub_100026C04(result, v6)) && *result == 1 && (*(result + 49) & 1) == 0 && (*(result + 51))
    {
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v12 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *v14 = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,stopBestAccuracySession,ending session without resetting IO", v14, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101876664();
      }
    }

    else
    {
      *(result + 472) = 0;
      *(result + 480) = 0;
      *(result + 488) = 0;
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v13 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,stopBestAccuracySession,ending session and resetting IO", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101876740();
      }
    }

    *(result + 50) = 0;
  }
}

uint64_t sub_1001EFBA4(uint64_t a1, int *a2)
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
    v20 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CellLoc, unregisterForNotificationInternal, notification, %{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A61324(a2);
  }

  sub_1001ECC7C(a1);
  if (*a2 <= 4 && ((1 << *a2) & 0x19) != 0)
  {
    if (!sub_10006BDFC(a1))
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A60DCC();
      }

      v6 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CellLoc, no more location-related clients - stopping telephony notifications", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A61410();
      }

      v7 = *(a1 + 136);
      sub_1001CBE2C(buf, @"kCellInfoNotification");
      [*(v7 + 16) unregister:*(v7 + 8) forNotification:{sub_10006E830(buf, v8)}];
      v9 = *(a1 + 136);
      sub_1001CBE2C(buf, @"kTimingAdvanceInfoNotification");
      [*(v9 + 16) unregister:*(v9 + 8) forNotification:{sub_10006E830(buf, v10)}];
      v11 = *(a1 + 136);
      sub_1001CBE2C(buf, @"kCLCellularTransmitStateNotification");
      [*(v11 + 16) unregister:*(v11 + 8) forNotification:{sub_10006E830(buf, v12)}];
      v13 = *(a1 + 136);
      sub_1001CBE2C(buf, @"kCellMonitorRefreshResultNotification");
      [*(v13 + 16) register:*(v13 + 8) forNotification:sub_10006E830(buf registrationInfo:{v14), 0}];
      [*(*(a1 + 144) + 16) unregister:*(*(a1 + 144) + 8) forNotification:3];
      [*(*(a1 + 144) + 16) unregister:*(*(a1 + 144) + 8) forNotification:0];
    }

    if (!*a2)
    {
      *buf = 0;
      if (!sub_10000608C(a1, buf, 1) && *(a1 + 3504) > 0.0)
      {
        v15 = (2290649225 * (CFAbsoluteTimeGetCurrent() - *(a1 + 3504) + 30.0)) >> 32;
        if (qword_1025D4620 != -1)
        {
          sub_101A60DCC();
        }

        v16 = ((v15 >> 5) + (v15 >> 31));
        v17 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240192;
          v20 = v16;
          _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "UclpMetric, regperiod, %{public}d", buf, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A614EC(v16);
        }

        AnalyticsSendEventLazy();
      }

      *(a1 + 3504) = CFAbsoluteTimeGetCurrent();
    }
  }

  return 1;
}

NSDictionary *sub_1001EFF60(uint64_t a1)
{
  v2[1] = @"duration";
  v3[0] = @"unregister";
  v2[0] = @"trigger";
  v3[1] = [NSNumber numberWithInt:*(a1 + 32)];
  return [NSDictionary dictionaryWithObjects:v3 forKeys:v2 count:2];
}

void sub_1001EFFF8(uint64_t a1, int *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1016C8E1C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssAWD::HandleLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1016C8E30();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAWD::HandleLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001F01C4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001F01C4(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (!sub_1001F02EC(a1, a3, a4))
  {
    *(a1 + 1368) = *(a4 + 736);
    if (*a3 == 10)
    {
      if (*(a4 + 96) == 3)
      {
        *(a1 + 2505) = 1;
      }
    }

    else
    {
      *(a1 + 2505) = 0;
      if (qword_1025D4650 != -1)
      {
        sub_1016C8A14();
      }

      v7 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_ERROR))
      {
        v8 = *a3;
        v9[0] = 67240192;
        v9[1] = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_ERROR, "received unhandled notification %{public, location:CLLocationProvider_Type::Notification}d", v9, 8u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1016CA960(a3);
      }
    }
  }
}

BOOL sub_1001F02EC(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  if (*a2 == 46 && *(a3 + 1512) == 1)
  {
    v7 = *(a3 + 1520);
    if (v7 > 0.0)
    {
      *(a1 + 2768) = v7 + *(a1 + 2768);
      if (qword_1025D4650 != -1)
      {
        sub_1016C8A14();
      }

      v8 = (a3 + 1520);
      v9 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v8;
        v11 = *(a1 + 2768);
        v13 = 134349312;
        v14 = v10;
        v15 = 2050;
        v16 = v11;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#gnssca,proactiveLoc,gnss,seconds,new,%{public}0.2f,total,%{public}0.2f", &v13, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1016CAA54();
      }
    }

    *(a1 + 2776) = sub_1000081AC();
    sub_100265D24(a1);
  }

  return v3 == 46;
}

void sub_1001F0438(uint64_t a1, int *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101AA95F4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssRefLocationCache::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101AA9608();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssRefLocationCache::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001F0604(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1001F0604(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D4650 != -1)
  {
    sub_10025BA4C();
  }

  v7 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a4 + 96);
    v9 = *a3;
    *v25 = 68289538;
    *&v25[4] = 0;
    *&v25[8] = 2082;
    *&v25[10] = "";
    *&v25[18] = 1026;
    *&v25[20] = v8;
    *&v25[24] = 1026;
    *&v25[26] = v9;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefLocationCache,Location notification received, type:%{public}d, notification:%{public}d}", v25, 0x1Eu);
  }

  if (*a3 == 33 || *a3 == 5)
  {
    *v25 = 0xFFFF;
    *&v25[12] = 0;
    *&v25[4] = 0;
    *&v25[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v25[36] = _Q0;
    *&v25[52] = _Q0;
    *&v25[68] = _Q0;
    *&v25[84] = 0;
    v26 = 0uLL;
    *&v25[88] = 0xBFF0000000000000;
    LODWORD(v27) = 0;
    *(&v27 + 4) = 0xBFF0000000000000;
    HIDWORD(v27) = 0x7FFFFFFF;
    memset(v28, 0, 25);
    sub_100021ED8(v29);
    v15 = *(a4 + 112);
    v26 = *(a4 + 96);
    v27 = v15;
    *v28 = *(a4 + 128);
    *&v28[12] = *(a4 + 140);
    v16 = *(a4 + 48);
    *&v25[32] = *(a4 + 32);
    *&v25[48] = v16;
    v17 = *(a4 + 80);
    *&v25[64] = *(a4 + 64);
    *&v25[80] = v17;
    v18 = *(a4 + 16);
    *v25 = *a4;
    *&v25[16] = v18;
    memcpy(v29, (a4 + 160), 0x201uLL);
    v19 = *(a4 + 680);
    v20 = *(a4 + 688);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v30 = v19;
    v21 = v31;
    v31 = v20;
    if (v21)
    {
      sub_100008080(v21);
    }

    v22 = *(a4 + 776);
    v36 = *(a4 + 760);
    v37[0] = v22;
    *(v37 + 9) = *(a4 + 785);
    v23 = *(a4 + 712);
    v32 = *(a4 + 696);
    v33 = v23;
    v24 = *(a4 + 744);
    v34 = *(a4 + 728);
    v35 = v24;
    sub_1001D7EBC(a1, v25);
    if (v31)
    {
      sub_100008080(v31);
    }
  }
}

BOOL sub_1001F0848(unsigned int a1)
{
  if (a1 >= 0x2AC)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1019846C8();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *v4 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "Bad index into kkDefenseMappingAgencyTenByTenGeoid.", v4, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019846DC();
    }
  }

  return a1 < 0x2AC;
}

uint64_t sub_1001F08F0(unsigned int *a1)
{
  result = *a1;
  if ((result - 1) >= 3)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled client location match quality type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B848A8(a1);
      return 0;
    }
  }

  return result;
}

void sub_1001F09E4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10190C160();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLNetworkLocationProvider::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10190C174();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNetworkLocationProvider::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001F0EC4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001F0BB0(unsigned int *a1)
{
  result = *a1;
  if (result >= 3)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled daemon location private gnss content type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84B6C(a1);
      return 0;
    }
  }

  return result;
}

double sub_1001F0CA0(uint64_t a1)
{
  *a1 = off_1024522C0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 32) = 0xFFFFFFFFLL;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1001F0CD8(unsigned __int8 *a1)
{
  result = *a1;
  if (result >= 4)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled daemon location private map matcher type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84D44(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F0DC8(unsigned int *a1)
{
  result = *a1;
  if ((result - 1) >= 2 && result != 0xFFFF)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v4 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v5 = *a1;
      v7[0] = 67240192;
      v7[1] = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Received unhandled client location suitability type: %{public}d", v7, 8u);
    }

    v6 = sub_10000A100(121, 0);
    result = 0;
    if (v6)
    {
      sub_101B84328(a1);
      return 0;
    }
  }

  return result;
}

void sub_1001F0EC4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 33 && (*(a4 + 672) & 1) == 0)
  {
    sub_100022008(v5, a4);
    sub_1001DFD80(*(a1 + 672), v5);

    if (v10)
    {
      sub_100008080(v10);
    }

    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (v7)
    {
      sub_100008080(v7);
    }

    if (v6)
    {
      sub_100008080(v6);
    }
  }
}

void sub_1001F0F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F0F6C(unsigned int *a1)
{
  result = *a1;
  if ((result + 1) >= 4)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled undulation model type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84994(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F1060(unsigned int *a1)
{
  result = *a1;
  if (result >= 3)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled client location origin device type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84A80(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F1150(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v4 = (v3 << 31 >> 31) & 9;
    if ((v3 & 2) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 4) != 0)
    {
      v5 = v4 + 9;
    }

    else
    {
      v5 = v4;
    }

    if ((v3 & 8) != 0)
    {
      v6 = *(a1 + 32);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
      }

      else
      {
        v7 = 2;
      }

      v5 = (v7 + v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 36) = v5;
  return v5;
}

uint64_t sub_1001F11E4(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return result;
}

uint64_t sub_1001F1250(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 32);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, *(v5 + 24), a2, a4);
      if ((*(v5 + 32) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v7 = *(v5 + 25);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, v7, a2, a4);
}

uint64_t sub_1001F1300(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return result;
}

uint64_t sub_1001F136C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return result;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

void *sub_1001F13F8(void *result)
{
  *result = off_102452068;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1001F141C(unsigned int *a1)
{
  result = *a1;
  if (((result - 25) > 0x32 || ((1 << (result - 25)) & 0x4000002000001) == 0) && result != 0)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v5 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v6 = *a1;
      v7[0] = 67240192;
      v7[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_ERROR, "Received unhandled location integrity type: %{public}d", v7, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B84500(a1);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_1001F152C(unsigned int *a1)
{
  result = *a1;
  if (result >= 3)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled client location reference frame type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B845EC(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001F163C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 28);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 28);
  }

  if ((v5 & 2) != 0)
  {
    v6 = *(v4 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, v6, a3);
  }

  return result;
}

void sub_1001F16B0(uint64_t a1, _DWORD *a2, __int128 *a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1019013A4();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLMotionStateMediator::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1019013B8();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMotionStateMediator::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001F187C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001F187C(uint64_t result, uint64_t a2, _DWORD *a3, __int128 *a4)
{
  if (*a3 == 5)
  {
    v5 = result;
    v6 = *(a4 + 4);
    v7 = *(a4 + 12);
    if (qword_1025D43F0 != -1)
    {
      sub_10023AD98();
    }

    v8 = qword_1025D43F8;
    if (os_log_type_enabled(qword_1025D43F8, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134545921;
      v19 = v6;
      v20 = 2053;
      v21 = v7;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Received leeched location, lat, %{sensitive}.7f, lon, %{sensitive}.7f", &v18, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101904660(v6, v7);
    }

    v9 = v6;
    v10 = v7;
    (*(**(v5 + 8264) + 48))(*(v5 + 8264), v9, v10);
    result = *(v5 + 8392);
    if (result)
    {
      result = sub_100C1BA18(result, v6, v7);
    }

    if (*(v5 + 10280) == 1)
    {
      v11 = *a4;
      *(v5 + 9712) = a4[1];
      *(v5 + 9696) = v11;
      v12 = a4[2];
      v13 = a4[3];
      v14 = a4[4];
      *(v5 + 9776) = a4[5];
      *(v5 + 9760) = v14;
      *(v5 + 9744) = v13;
      *(v5 + 9728) = v12;
      v15 = *(a4 + 140);
      v16 = a4[6];
      v17 = a4[7];
      *(v5 + 9824) = a4[8];
      *(v5 + 9808) = v17;
      *(v5 + 9792) = v16;
      *(v5 + 9836) = v15;
    }
  }

  return result;
}

id sub_1001F1A34(uint64_t a1, __int128 *a2)
{
  v2 = a1 - 152;
  v6 = *a2;
  v7 = *(a2 + 4);
  v3 = [*(a1 + 16) silo];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10021850C;
  v5[3] = &unk_102460E48;
  v5[4] = v2;
  return [v3 async:v5];
}

void *sub_1001F1AC4(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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
      v7 = v4[4];
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

uint64_t sub_1001F1B94(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  if (qword_1025D4600 != -1)
  {
    sub_101873CF0();
  }

  v6 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v7 = *a2;
    v8 = *(a1 + 681);
    *buf = 67240448;
    v44 = v7;
    v45 = 1026;
    v46 = v8;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "Stopping all location providers that are worse than kDynamicLocationProvider %{public}d,KeepGpsOnWithAccessory,%{public}d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187518C(a2, a1);
  }

  v9 = *(a1 + 232);
  if (v9 == (a1 + 240))
  {
    return 0;
  }

  v10 = 0;
  do
  {
    if (!*(v9 + 8))
    {
      goto LABEL_45;
    }

    v11 = *(v9 + 909);
    if (v11 == -1)
    {
      goto LABEL_45;
    }

    if (*(v9 + 911) != 1 || v11 >= *a2)
    {
      goto LABEL_45;
    }

    if (*(v9 + 226) != 1)
    {
LABEL_39:
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v27 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v28 = *a2;
        v29 = *(v9 + 909);
        *buf = 67240448;
        v44 = v28;
        v45 = 1026;
        v46 = v29;
        _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "got better location provider,%{public}d,stopping worse location provider,%{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v33 = *a2;
        v34 = *(v9 + 909);
        v39 = 67240448;
        v40 = v33;
        v41 = 1026;
        v42 = v34;
        LODWORD(v38) = 14;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "got better location provider,%{public}d,stopping worse location provider,%{public}d", &v39, v38);
        v36 = v35;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::stopLessDesirableProviders(const DynamicLocationProvider &, BOOL)", "%s\n", v35);
        if (v36 != buf)
        {
          free(v36);
        }
      }

      v10 = sub_1001EEB1C(a1, *(v9 + 10));
      goto LABEL_45;
    }

    v13 = sub_1003DFB20(a1, v3);
    v14 = *a2;
    if (v13 && v14 == 5)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v15 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v16 = *a2;
        v17 = *(v9 + 909);
        *buf = 67240448;
        v44 = v16;
        v45 = 1026;
        v46 = v17;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "got better location provider,%{public}d,NOT stopping worse location provider,%{public}d,isAccessorySpecialCase,1", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v18 = *a2;
        v19 = *(v9 + 909);
        v39 = 67240448;
        v40 = v18;
        v41 = 1026;
        v42 = v19;
        LODWORD(v38) = 14;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "got better location provider,%{public}d,NOT stopping worse location provider,%{public}d,isAccessorySpecialCase,1", &v39, v38);
LABEL_37:
        v26 = v20;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::stopLessDesirableProviders(const DynamicLocationProvider &, BOOL)", "%s\n", v20);
        if (v26 != buf)
        {
          free(v26);
        }
      }
    }

    else
    {
      if (*(v9 + 226) != 1 || v14 != 3)
      {
        goto LABEL_39;
      }

      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v22 = *a2;
        v23 = *(v9 + 909);
        *buf = 67240448;
        v44 = v22;
        v45 = 1026;
        v46 = v23;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "got better location provider,%{public}d,NOT stopping worse location provider,%{public}d", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v24 = *a2;
        v25 = *(v9 + 909);
        v39 = 67240448;
        v40 = v24;
        v41 = 1026;
        v42 = v25;
        LODWORD(v38) = 14;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "got better location provider,%{public}d,NOT stopping worse location provider,%{public}d", &v39, v38);
        goto LABEL_37;
      }
    }

LABEL_45:
    v30 = v9[1];
    if (v30)
    {
      do
      {
        v31 = v30;
        v30 = *v30;
      }

      while (v30);
    }

    else
    {
      do
      {
        v31 = v9[2];
        v32 = *v31 == v9;
        v9 = v31;
      }

      while (!v32);
    }

    v9 = v31;
  }

  while (v31 != (a1 + 240));
  if (v10)
  {
    sub_100110094(a1);
    return 1;
  }

  return 0;
}

void sub_1001F20F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100072814(a2);
  if (v4)
  {
    v5 = *(a2 + 96);
    v6 = v5 > 0xB;
    v7 = (1 << v5) & 0xC12;
    if (!v6 && v7 != 0)
    {
      sub_1001EC9FC(v4, a1 + 912, a2);
    }

    sub_1001F2170(a1);
  }
}

void sub_1001F2170(uint64_t a1)
{
  if (*(a1 + 1068) == 1 && *(a1 + 156) == 1 && *(a1 + 856) == 1 && *(a1 + 872) == 1 && *(a1 + 888) == 1 && *(a1 + 904) == 1)
  {
    v2 = (a1 + 916);
    if (vabdd_f64(*(a1 + 988), *(a1 + 864)) > 30.0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A8AF54();
      }

      v3 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        if ((*(a1 + 872) & 1) == 0)
        {
          goto LABEL_47;
        }

        v4 = vabdd_f64(*(a1 + 988), *(a1 + 864));
        *buf = 134349056;
        v28 = v4;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "ClxMetric,timingadvance,submitTimingAdvanceErrorToUncMetric,large time gap between reference and cell locations, timedelta, %{public}.3f, return", buf, 0xCu);
      }

      if (!sub_10000A100(121, 2))
      {
        return;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101A8AF68();
      }

      if (*(a1 + 872))
      {
        v5 = vabdd_f64(*(a1 + 988), *(a1 + 864));
        v19 = 134349056;
        v20 = v5;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric,timingadvance,submitTimingAdvanceErrorToUncMetric,large time gap between reference and cell locations, timedelta, %{public}.3f, return", &v19, 12);
        v7 = v6;
        sub_100152C7C("Generic", 1, 0, 2, "void CellTimingAdvanceMetrics::submitTimingAdvanceErrorToUncMetric()", "%s\n", v6);
        if (v7 != buf)
        {
          free(v7);
        }

        return;
      }

      goto LABEL_47;
    }

    v8 = *(a1 + 20);
    v9 = -1.0;
    if (v8 > 0.0)
    {
      v10 = sub_100117154(*(a1 + 4), *(a1 + 12), *v2, *(a1 + 924));
      if ((*(a1 + 156) & 1) == 0)
      {
        goto LABEL_47;
      }

      v9 = v10 / v8;
    }

    if ((*(a1 + 1068) & 1) == 0 || (*(a1 + 888) & 1) == 0)
    {
LABEL_47:
      sub_100173BA0();
    }

    v11 = *(a1 + 880);
    if (v11 > 0.0)
    {
      v12 = sub_100117154(*(a1 + 4), *(a1 + 12), *v2, *(a1 + 924));
      if (v9 > 0.0)
      {
        v13 = v12 / v11;
        if (v13 > 0.0)
        {
          if (qword_1025D4620 != -1)
          {
            sub_101A8AF54();
          }

          v14 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
          {
            v15 = *(a1 + 1008);
            *buf = 134349824;
            v28 = v9;
            v29 = 2050;
            v30 = v13;
            v31 = 2050;
            v32 = v9 / v13;
            v33 = 1026;
            v34 = v15;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "ClxMetric,timingadvance,errorToUncRatio,%{public}.3f,errorToUncRatioInflated,%{public}.3f,ta_to_cell_unc_ratio,%{public}.3f, reference_type, %{public}d", buf, 0x26u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_101A8AF68();
            }

            v16 = *(a1 + 1008);
            v19 = 134349824;
            v20 = v9;
            v21 = 2050;
            v22 = v13;
            v23 = 2050;
            v24 = v9 / v13;
            v25 = 1026;
            v26 = v16;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "ClxMetric,timingadvance,errorToUncRatio,%{public}.3f,errorToUncRatioInflated,%{public}.3f,ta_to_cell_unc_ratio,%{public}.3f, reference_type, %{public}d", &v19, 38);
            v18 = v17;
            sub_100152C7C("Generic", 1, 0, 2, "void CellTimingAdvanceMetrics::submitTimingAdvanceErrorToUncMetric()", "%s\n", v17);
            if (v18 != buf)
            {
              free(v18);
            }
          }

          AnalyticsSendEventLazy();
          if (*(a1 + 156) == 1)
          {
            *(a1 + 156) = 0;
          }

          if (*(a1 + 856) == 1)
          {
            sub_10056D2F4(a1 + 160);
            *(a1 + 856) = 0;
          }

          if (*(a1 + 888) == 1)
          {
            *(a1 + 888) = 0;
          }

          if (*(a1 + 1068) == 1)
          {
            *(a1 + 1068) = 0;
          }

          if (*(a1 + 872) == 1)
          {
            *(a1 + 872) = 0;
          }
        }
      }
    }
  }
}

uint64_t sub_1001F262C(uint64_t a1, unsigned __int8 *a2)
{
  v108 = 0;
  v106 = 0u;
  v107 = 0u;
  v4 = a2 + 124;
  v3 = *(a2 + 31);
  v105 = 0u;
  if (v3 < 1)
  {
    HIDWORD(v98) = 1;
    v10 = 0.0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = v3;
    do
    {
      v8 = *&a2[v5 + 128];
      *(&v105 + v5) = v8 / v7;
      v6 += v8;
      v5 += 4;
    }

    while (v5 != 56);
    v9 = *(a2 + 46);
    v10 = v9 / v7;
    v11 = v9 + v6;
    if (v9 + v6 == v3)
    {
      HIDWORD(v98) = 1;
    }

    else
    {
      if (qword_1025D4790 != -1)
      {
        sub_1019162C4();
      }

      v12 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
      {
        v13 = *v4;
        *buf = 67109376;
        v169 = v11;
        v170 = 1024;
        LODWORD(v171) = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "The sum of the delivered locations by type (%d) does not equal the delivered locations counter (%d).", buf, 0xEu);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019162D8();
      }

      HIDWORD(v98) = 0;
    }
  }

  v14 = *(a2 + 8);
  v15 = *(a2 + 1);
  if (qword_1025D4790 != -1)
  {
    sub_1019163F4();
  }

  v16 = v14 - v15;
  v17 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEBUG))
  {
    v18 = *a2;
    v19 = *(a2 + 1);
    v20 = *(a2 + 2);
    v21 = a2[39];
    v60 = a2[40];
    v61 = a2[41];
    v63 = a2[42];
    v65 = a2[43];
    v67 = *(a2 + 12);
    v69 = a2[44];
    v71 = a2[52];
    v76 = *(a2 + 14);
    v78 = *(a2 + 15);
    v73 = *(a2 + 8);
    v80 = *(a2 + 9);
    v82 = *(a2 + 24);
    v84 = *(a2 + 11);
    v86 = *(a2 + 10);
    v88 = *(a2 + 12);
    v90 = *(a2 + 13);
    v92 = *(a2 + 14);
    v93 = a2[120];
    v95 = *(a2 + 31);
    v96 = *(a2 + 47);
    sub_1006FA730(&v111);
    v22 = SBYTE3(v115);
    v23 = v111;
    sub_1006FA9F8(__p);
    v169 = v18;
    if (v22 >= 0)
    {
      v24 = &v111;
    }

    else
    {
      v24 = v23;
    }

    if (v21 >= 0)
    {
      v25 = a2 + 16;
    }

    else
    {
      v25 = v20;
    }

    v26 = __p;
    if (SHIBYTE(v104) < 0)
    {
      v26 = __p[0];
    }

    v171 = v19;
    v173 = v25;
    v175 = v60;
    v177 = v61;
    v179 = v63;
    v181 = v65;
    v183 = v67;
    v185 = v69;
    v187 = v71;
    v189 = v76;
    v191 = v78;
    v193 = v73;
    v197 = v82;
    v199 = v80;
    v201 = v84;
    v203 = v86;
    v205 = v88;
    v207 = v90;
    v209 = v92;
    v211 = v93;
    v213 = v95;
    v215 = v96;
    v217 = v24;
    v172 = 2080;
    v216 = 2080;
    v218 = 2080;
    v219 = v26;
    v221 = *(a2 + 46);
    v170 = 2048;
    v192 = 2048;
    v194 = 2048;
    v196 = 2048;
    v198 = 2048;
    v200 = 2048;
    v202 = 2048;
    v204 = 2048;
    v206 = 2048;
    v208 = 2048;
    v222 = 2048;
    v195 = v16;
    v223 = v10;
    v174 = 1024;
    v176 = 1024;
    v178 = 1024;
    v180 = 1024;
    v182 = 1024;
    v184 = 1024;
    v186 = 1024;
    v188 = 1024;
    v190 = 1024;
    v210 = 1024;
    v212 = 1024;
    v214 = 1024;
    v220 = 1024;
    v224 = 1024;
    *buf = 67116290;
    v225 = HIDWORD(v98);
    _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "metric.valid,%d,metric.timestamp,%.3f,metric.bundleId,%s,cellAvailable,%d,wifiAvailable,%d,passcodeLocked,%d,airplaneMode,%d,reachability,%d,accessoryConnected,%d,powered,%d,gpsCoexWifi,%d,gpsCoexBt,%d,timestampEnd,%.3f,duration,%.3f,cblsPowerSaverBkgRuntimeLoss,%.3f,desiredAccuracy,%.2f,achievedAccuracy,%.2f,distanceFilter,%.2f,ttff,%.3f,ttffGps,%.3f,achievedSpeed,%.2f,autoStopped,%d,deferredLocations,0,deliveredLocations,%d,cblsPowerSaverLocationLoss,%d,deliveredLocationsByType,%s,deliveredLocationsByTypeFraction,%s,sdeliveredLocationsUndefined,%d,deliveredLocationsUndefinedFraction,%.4f,validDeliveredLocationsByType,%d", buf, 0xE8u);
    if (SHIBYTE(v104) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE3(v115) < 0)
    {
      operator delete(v111);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191641C(buf);
    v97 = qword_1025D4798;
    v44 = *a2;
    v45 = *(a2 + 1);
    v46 = *(a2 + 2);
    v47 = a2[39];
    v48 = a2[40];
    v49 = a2[41];
    v62 = a2[42];
    v64 = a2[43];
    v66 = *(a2 + 12);
    v68 = a2[44];
    v70 = a2[52];
    v74 = *(a2 + 14);
    v77 = *(a2 + 15);
    v72 = *(a2 + 8);
    v79 = *(a2 + 9);
    v81 = *(a2 + 24);
    v83 = *(a2 + 11);
    v85 = *(a2 + 10);
    v87 = *(a2 + 12);
    v89 = *(a2 + 13);
    v91 = *(a2 + 14);
    LODWORD(v92) = a2[120];
    LODWORD(v94) = *(a2 + 31);
    HIDWORD(v94) = *(a2 + 47);
    sub_1006FA730(__p);
    v50 = SHIBYTE(v104);
    v51 = __p[0];
    sub_1006FA9F8(&v99);
    v52 = __p;
    if (v50 < 0)
    {
      v52 = v51;
    }

    if (v47 >= 0)
    {
      v53 = a2 + 16;
    }

    else
    {
      v53 = v46;
    }

    v54 = *(a2 + 46);
    v55 = &v99;
    if (v102 < 0)
    {
      v55 = v99;
    }

    LODWORD(v111) = 67116290;
    HIDWORD(v111) = v44;
    v112 = 2048;
    v113 = v45;
    v114 = 2080;
    v115 = v53;
    v116 = 1024;
    v117 = v48;
    v118 = 1024;
    v119 = v49;
    v120 = 1024;
    v121 = v62;
    v122 = 1024;
    v123 = v64;
    v124 = 1024;
    v125 = v66;
    v126 = 1024;
    v127 = v68;
    v128 = 1024;
    v129 = v70;
    v130 = 1024;
    v131 = v74;
    v132 = 1024;
    v133 = v77;
    v134 = 2048;
    v135 = v72;
    v136 = 2048;
    v137 = v16;
    v138 = 2048;
    v139 = v81;
    v140 = 2048;
    v141 = v79;
    v142 = 2048;
    v143 = v83;
    v144 = 2048;
    v145 = v85;
    v146 = 2048;
    v147 = v87;
    v148 = 2048;
    v149 = v89;
    v150 = 2048;
    v151 = v91;
    v152 = 1024;
    v153 = LODWORD(v92);
    v154 = 1024;
    v155 = LODWORD(v94);
    v156 = 1024;
    v157 = HIDWORD(v94);
    v158 = 2080;
    v159 = v52;
    v160 = 2080;
    v161 = v55;
    v162 = 1024;
    v163 = v54;
    v164 = 2048;
    v165 = v10;
    v166 = 1024;
    v167 = HIDWORD(v98);
    LODWORD(v58) = 232;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v97, 2, "metric.valid,%d,metric.timestamp,%.3f,metric.bundleId,%s,cellAvailable,%d,wifiAvailable,%d,passcodeLocked,%d,airplaneMode,%d,reachability,%d,accessoryConnected,%d,powered,%d,gpsCoexWifi,%d,gpsCoexBt,%d,timestampEnd,%.3f,duration,%.3f,cblsPowerSaverBkgRuntimeLoss,%.3f,desiredAccuracy,%.2f,achievedAccuracy,%.2f,distanceFilter,%.2f,ttff,%.3f,ttffGps,%.3f,achievedSpeed,%.2f,autoStopped,%d,deferredLocations,0,deliveredLocations,%d,cblsPowerSaverLocationLoss,%d,deliveredLocationsByType,%s,deliveredLocationsByTypeFraction,%s,sdeliveredLocationsUndefined,%d,deliveredLocationsUndefinedFraction,%.4f,validDeliveredLocationsByType,%d", &v111, v58, v59, v60, v64, v68, v72, v74, v75, v79, v81, v83, v85, v87, v89, v91, v92, v94, *&v97, v98, *&v99, v100, v101, LODWORD(__p[0]), __p[1], v104, v105, *(&v105 + 1), v106);
    v57 = v56;
    if (v102 < 0)
    {
      operator delete(v99);
    }

    if (SHIBYTE(v104) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLDaemonStats::submitMetric(const CLDaemonStats_Type::LocationUpdateSession &)", "%s\n", v57);
    if (v57 != buf)
    {
      free(v57);
    }
  }

  v109[0] = @"valid";
  v110[0] = [NSNumber numberWithBool:*a2];
  v109[1] = @"bundleId";
  if ((a2[39] & 0x80u) == 0)
  {
    v27 = a2 + 16;
  }

  else
  {
    v27 = *(a2 + 2);
  }

  v110[1] = [NSString stringWithUTF8String:v27];
  v109[2] = @"cellAvailable";
  v110[2] = [NSNumber numberWithBool:a2[40]];
  v109[3] = @"wifiAvailable";
  v110[3] = [NSNumber numberWithBool:a2[41]];
  v109[4] = @"passcodeLocked";
  v110[4] = [NSNumber numberWithBool:a2[42]];
  v109[5] = @"airplaneMode";
  v110[5] = [NSNumber numberWithBool:a2[43]];
  v109[6] = @"reachability";
  v110[6] = [NSNumber numberWithUnsignedInt:*(a2 + 12)];
  v109[7] = @"accessoryConnected";
  v110[7] = [NSNumber numberWithBool:a2[44]];
  v109[8] = @"powered";
  v110[8] = [NSNumber numberWithBool:a2[52]];
  v109[9] = @"gpsCoexWifi";
  v110[9] = [NSNumber numberWithInt:*(a2 + 14)];
  v109[10] = @"gpsCoexBt";
  v110[10] = [NSNumber numberWithInt:*(a2 + 15)];
  v109[11] = @"duration";
  v110[11] = [NSNumber numberWithDouble:v16];
  v109[12] = @"cblsPowerSaverBkgRuntimeLoss";
  v110[12] = [NSNumber numberWithDouble:*(a2 + 24)];
  v109[13] = @"desiredAccuracy";
  v110[13] = [NSNumber numberWithDouble:*(a2 + 9)];
  v109[14] = @"achievedAccuracy";
  v110[14] = [NSNumber numberWithDouble:*(a2 + 11)];
  v109[15] = @"distanceFilter";
  v110[15] = [NSNumber numberWithDouble:*(a2 + 10)];
  v109[16] = @"ttff";
  v110[16] = [NSNumber numberWithDouble:*(a2 + 12)];
  v109[17] = @"ttffGps";
  v110[17] = [NSNumber numberWithDouble:*(a2 + 13)];
  v109[18] = @"achievedSpeed";
  v110[18] = [NSNumber numberWithDouble:*(a2 + 14)];
  v109[19] = @"autoStopped";
  v110[19] = [NSNumber numberWithBool:a2[120]];
  v109[20] = @"deliveredLocations";
  v110[20] = [NSNumber numberWithInt:*(a2 + 31)];
  v109[21] = @"cblsPowerSaverLocationLoss";
  v110[21] = [NSNumber numberWithInt:*(a2 + 47)];
  v109[22] = @"deliveredLocationsUnknown";
  v110[22] = [NSNumber numberWithInt:*(a2 + 32)];
  v109[23] = @"deliveredLocationsUnknownFraction";
  LODWORD(v28) = v105;
  v110[23] = [NSNumber numberWithFloat:v28];
  v109[24] = @"deliveredLocationsGps";
  v110[24] = [NSNumber numberWithInt:*(a2 + 33)];
  v109[25] = @"deliveredLocationsGpsFraction";
  LODWORD(v29) = DWORD1(v105);
  v110[25] = [NSNumber numberWithFloat:v29];
  v109[26] = @"deliveredLocationsNmea";
  v110[26] = [NSNumber numberWithInt:*(a2 + 34)];
  v109[27] = @"deliveredLocationsNmeaFraction";
  LODWORD(v30) = DWORD2(v105);
  v110[27] = [NSNumber numberWithFloat:v30];
  v109[28] = @"deliveredLocationsAccessory";
  v110[28] = [NSNumber numberWithInt:*(a2 + 35)];
  v109[29] = @"deliveredLocationsAccessoryFraction";
  LODWORD(v31) = HIDWORD(v105);
  v110[29] = [NSNumber numberWithFloat:v31];
  v109[30] = @"deliveredLocationsWifi1";
  v110[30] = [NSNumber numberWithInt:*(a2 + 36)];
  v109[31] = @"deliveredLocationsWifi1Fraction";
  LODWORD(v32) = v106;
  v110[31] = [NSNumber numberWithFloat:v32];
  v109[32] = @"deliveredLocationsSkyhook";
  v110[32] = [NSNumber numberWithInt:*(a2 + 37)];
  v109[33] = @"deliveredLocationsSkyhookFraction";
  LODWORD(v33) = DWORD1(v106);
  v110[33] = [NSNumber numberWithFloat:v33];
  v109[34] = @"deliveredLocationsCell";
  v110[34] = [NSNumber numberWithInt:*(a2 + 38)];
  v109[35] = @"deliveredLocationsCellFraction";
  LODWORD(v34) = DWORD2(v106);
  v110[35] = [NSNumber numberWithFloat:v34];
  v109[36] = @"deliveredLocationsLac";
  v110[36] = [NSNumber numberWithInt:*(a2 + 39)];
  v109[37] = @"deliveredLocationsLacFraction";
  LODWORD(v35) = HIDWORD(v106);
  v110[37] = [NSNumber numberWithFloat:v35];
  v109[38] = @"deliveredLocationsMcc";
  v110[38] = [NSNumber numberWithInt:*(a2 + 40)];
  v109[39] = @"deliveredLocationsMccFraction";
  LODWORD(v36) = v107;
  v110[39] = [NSNumber numberWithFloat:v36];
  v109[40] = @"deliveredLocationsGpsCoarse";
  v110[40] = [NSNumber numberWithInt:*(a2 + 41)];
  v109[41] = @"deliveredLocationsGpsCoarseFraction";
  LODWORD(v37) = DWORD1(v107);
  v110[41] = [NSNumber numberWithFloat:v37];
  v109[42] = @"deliveredLocationsIndoor";
  v110[42] = [NSNumber numberWithInt:*(a2 + 42)];
  v109[43] = @"deliveredLocationsIndoorFraction";
  LODWORD(v38) = DWORD2(v107);
  v110[43] = [NSNumber numberWithFloat:v38];
  v109[44] = @"deliveredLocationsWifi2";
  v110[44] = [NSNumber numberWithInt:*(a2 + 43)];
  v109[45] = @"deliveredLocationsWifi2Fraction";
  LODWORD(v39) = HIDWORD(v107);
  v110[45] = [NSNumber numberWithFloat:v39];
  v109[46] = @"deliveredLocationsCompensated";
  v110[46] = [NSNumber numberWithInt:*(a2 + 44)];
  v109[47] = @"deliveredLocationsCompensatedFraction";
  LODWORD(v40) = v108;
  v110[47] = [NSNumber numberWithFloat:v40];
  v109[48] = @"deliveredLocationsLoiOverride";
  v110[48] = [NSNumber numberWithInt:*(a2 + 45)];
  v109[49] = @"deliveredLocationsLoiOverrideFraction";
  LODWORD(v41) = HIDWORD(v108);
  v110[49] = [NSNumber numberWithFloat:v41];
  v109[50] = @"deliveredLocationsUndefined";
  v110[50] = [NSNumber numberWithInt:*(a2 + 46)];
  v109[51] = @"deliveredLocationsUndefinedFraction";
  *&v42 = v10;
  v110[51] = [NSNumber numberWithFloat:v42];
  v110[52] = &off_10254EE88;
  v109[52] = @"sessionCount";
  v109[53] = @"validDeliveredLocationsByType";
  v110[53] = [NSNumber numberWithBool:HIDWORD(v98)];
  [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:54];
  return AnalyticsSendEvent();
}

void sub_1001F33EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1001F3424(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_10045E8A0(a1, a2);
  v4 = a2[6];
  if (v4)
  {
    sub_100008080(v4);
  }

  operator delete(a2);
  return v3;
}

double sub_1001F348C(uint64_t a1)
{
  *a1 = off_1024520E0;
  *(a1 + 148) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *&result = 0xFFFFFFFFLL;
  *(a1 + 120) = xmmword_101C771D0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return result;
}

double sub_1001F34E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = sub_1001F0DC8(a1);
    if (!sub_1001E06EC(v4))
    {
      sub_1018822EC();
    }

    v5 = *(a2 + 152);
    *(a2 + 48) = v4;
    *(a2 + 152) = v5 | 3;
    v6 = *(a2 + 8);
    if (!v6)
    {
      operator new();
    }

    *(v6 + 28) |= 1u;
    *(a2 + 152) |= 2u;
    v7 = *(a1 + 88);
    *(v6 + 28) |= 2u;
    v8 = *(a1 + 4);
    v9 = *(a2 + 152);
    v10 = *(a1 + 20);
    v11 = *(a1 + 36);
    v12 = *(a1 + 52);
    *(a2 + 152) = v9 | 0x3FC;
    v13 = *(a1 + 68);
    *(v6 + 8) = v8;
    *(a2 + 16) = v10;
    *(a2 + 32) = v11;
    *(a2 + 56) = v12;
    *(a2 + 72) = v13;
    *(a2 + 52) = *(a1 + 84);
    *(a2 + 152) = v9 | 0xFFC;
    *(a2 + 88) = v7;
    v14 = sub_10010E5D8((a1 + 96));
    if (!sub_100108BCC(v14))
    {
      sub_101882318();
    }

    v15 = *(a2 + 152);
    *(a2 + 104) = v14;
    *(a2 + 152) = v15 | 0x3000;
    v16 = *(a2 + 96);
    if (!v16)
    {
      operator new();
    }

    *(v16 + 28) |= 1u;
    *(a2 + 152) |= 0x2000u;
    v17 = *(a1 + 116);
    *(v16 + 28) |= 2u;
    *(v16 + 8) = *(a1 + 100);
    v18 = *(a2 + 152);
    *(a2 + 152) = v18 | 0x4000;
    *(a2 + 112) = v17;
    v19 = *(a1 + 124);
    *(a2 + 152) = v18 | 0xC000;
    *(a2 + 108) = v19;
    v20 = sub_1001F141C((a1 + 128));
    if (!sub_1001E0708(v20))
    {
      sub_101882344();
    }

    *(a2 + 152) |= 0x10000u;
    *(a2 + 120) = v20;
    v21 = sub_1001F152C((a1 + 132));
    if (!sub_10041ECEC(v21))
    {
      sub_101882370();
    }

    *(a2 + 152) |= 0x20000u;
    *(a2 + 124) = v21;
    v22 = sub_1001F152C((a1 + 136));
    if (!sub_10041ECEC(v22))
    {
      sub_10188239C();
    }

    *(a2 + 152) |= 0x40000u;
    *(a2 + 128) = v22;
    v29 = 0;
    v23 = *(a1 + 140);
    if (v23 <= 2)
    {
      if (v23 != 1 && v23 != 2)
      {
LABEL_25:
        v26 = sub_1001F3804(&v29);
        if (!sub_1001F161C(v26))
        {
          sub_1018823C8();
        }

        v27 = *(a2 + 152);
        *(a2 + 132) = v26;
        result = *(a1 + 144);
        *(a2 + 136) = result;
        v28 = *(a1 + 152);
        *(a2 + 152) = v27 | 0x380000;
        *(a2 + 144) = v28;
        return result;
      }
    }

    else if (v23 != 3 && v23 != 4 && v23 != 6)
    {
      goto LABEL_25;
    }

    v29 = *(a1 + 140);
    goto LABEL_25;
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v24 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_FAULT, "pLocation,Invalid pointer", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B84244();
  }

  return result;
}

uint64_t sub_1001F3804(unsigned int *a1)
{
  v2 = *a1;
  if (v2 < 7 && ((0x5Fu >> v2) & 1) != 0)
  {
    return dword_101D7A570[v2];
  }

  if (qword_1025D4730 != -1)
  {
    sub_101B83560();
  }

  v4 = qword_1025D4738;
  if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
  {
    v5 = *a1;
    v6[0] = 67240192;
    v6[1] = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "Received unhandled signal environment type: %{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_101B846D8(a1);
  }

  return 0xFFFFFFFFLL;
}

void sub_1001F3908(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 368);
    *(a2 + 8) = *a1;
    *(a2 + 24) = *(a1 + 16);
    v5 = *(a1 + 40);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 48) = v5;
    *(a2 + 56) = *(a1 + 48);
    v6 = *(a1 + 52);
    *(a2 + 368) = v4 | 0x1FF;
    *(a2 + 112) = v6;
    v7 = sub_1001F08F0((a1 + 56));
    if (!sub_10041ECF8(v7))
    {
      sub_10188244C();
    }

    v8 = *(a2 + 368);
    *(a2 + 60) = v7;
    *(a2 + 368) = v8 | 0x600;
    v9 = *(a2 + 64);
    if (!v9)
    {
      operator new();
    }

    *(v9 + 28) |= 1u;
    *(a2 + 368) |= 0x400u;
    v10 = *(a2 + 136);
    v11 = *(a1 + 96);
    v12 = *(a1 + 80);
    *(v9 + 28) |= 2u;
    *(v9 + 8) = *(a1 + 64);
    v13 = *(a2 + 368);
    *(a2 + 368) = v13 | 0x800;
    *(a2 + 72) = v12;
    v14 = *(a1 + 88);
    *(a2 + 368) = v13 | 0x1800;
    v15 = *(a1 + 92);
    *(a2 + 80) = v14;
    *(a2 + 84) = v15;
    *(a2 + 113) = v11;
    *(a2 + 368) = v13 | 0x807800;
    if (!v10)
    {
      operator new();
    }

    *(v10 + 32) |= 1u;
    *(a2 + 368) |= 0x800000u;
    *(v10 + 32) |= 2u;
    *(v10 + 8) = *(a1 + 104);
    *(a2 + 368) |= 0x800000u;
    v16 = *(a1 + 120);
    *(v10 + 32) |= 4u;
    *(v10 + 24) = v16;
    *(a2 + 368) |= 0x800000u;
    v17 = *(a2 + 88);
    v18 = *(a1 + 121);
    *(v10 + 32) |= 8u;
    *(v10 + 25) = v18;
    *(a2 + 368) |= 0x8000u;
    if (!v17)
    {
      operator new();
    }

    *(v17 + 28) |= 1u;
    *(a2 + 368) |= 0x8000u;
    *(v17 + 28) |= 2u;
    *(v17 + 8) = *(a1 + 296);
    v19 = sub_1001F0F6C((a1 + 312));
    if (!sub_1001F162C(v19))
    {
      sub_101882478();
    }

    v20 = *(a2 + 368);
    *(a2 + 96) = v19;
    *(a2 + 100) = *(a1 + 316);
    *(a2 + 368) = v20 | 0x70000;
    v21 = *(a2 + 104);
    if (!v21)
    {
      operator new();
    }

    *(v21 + 28) |= 1u;
    *(a2 + 368) |= 0x40000u;
    *(v21 + 28) |= 2u;
    *(a2 + 368) |= 0x180000u;
    v22 = *(a1 + 336);
    *(v21 + 8) = *(a1 + 320);
    *(a2 + 120) = v22;
    v23 = sub_1001F1060((a1 + 352));
    if (!sub_10041ECEC(v23))
    {
      sub_1018824A4();
    }

    *(a2 + 116) = v23;
    *(a2 + 114) = *(a1 + 356);
    *(a2 + 144) = *(a1 + 360);
    *(a2 + 160) = *(a1 + 376);
    *(a2 + 176) = *(a1 + 496);
    *(a2 + 115) = *(a1 + 512);
    v24 = *(a1 + 416);
    *(a2 + 192) = *(a1 + 392);
    *(a2 + 200) = v24;
    *(a2 + 276) = *(a1 + 424);
    *(a2 + 368) = vorr_s8(*(a2 + 368), 0x7FF600000);
    v25 = *(a2 + 208);
    if (!v25)
    {
      operator new();
    }

    *(v25 + 28) |= 1u;
    *(a2 + 372) |= 4u;
    v26 = *(a1 + 448);
    *(v25 + 28) |= 2u;
    *(v25 + 8) = *(a1 + 432);
    *(a2 + 372) |= 8u;
    *(a2 + 216) = v26;
    v27 = sub_1001F152C((a1 + 456));
    if (!sub_10041ECEC(v27))
    {
      sub_1018824D0();
    }

    *(a2 + 224) = *(a1 + 480);
    *(a2 + 240) = *(a1 + 600);
    *(a2 + 248) = *(a1 + 400);
    v28 = *(a1 + 472);
    *(a2 + 264) = *(a1 + 464);
    v29 = *(a2 + 372);
    *(a2 + 272) = v27;
    *(a2 + 277) = *(a1 + 425);
    *(a2 + 372) = v29 | 0x1FF0;
    *(a2 + 280) = v28;
    v30 = *(a1 + 520);
    if (v30)
    {
      v31 = *v30;
      v32 = v30[1];
      while (v31 != v32)
      {
        v33 = *(a2 + 296);
        v34 = *(a2 + 300);
        if (v33 >= v34)
        {
          if (v34 == *(a2 + 304))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 288), v34 + 1);
            v34 = *(a2 + 300);
          }

          *(a2 + 300) = v34 + 1;
          sub_1002A8464();
        }

        v35 = *(a2 + 288);
        *(a2 + 296) = v33 + 1;
        sub_1002A84C8(v31, *(v35 + 8 * v33));
        v31 += 28;
      }
    }

    v36 = sub_1001F0BB0((a1 + 536));
    if (!sub_10041ECEC(v36))
    {
      sub_1018824FC();
    }

    v37 = *(a2 + 372);
    *(a2 + 320) = v36;
    *(a2 + 372) = v37 | 0xC000;
    v38 = *(a2 + 312);
    if (!v38)
    {
      operator new();
    }

    *(v38 + 40) |= 1u;
    *(a2 + 372) |= 0x8000u;
    *(v38 + 40) |= 2u;
    *(v38 + 8) = *(a1 + 544);
    *(a2 + 372) |= 0x8000u;
    v39 = *(a1 + 560);
    *(v38 + 40) |= 4u;
    *(v38 + 24) = v39;
    *(a2 + 372) |= 0x8000u;
    v40 = sub_1001F0F6C((a1 + 568));
    if (!sub_1001F162C(v40))
    {
      sub_101882420();
    }

    *(v38 + 40) |= 8u;
    *(v38 + 32) = v40;
    v41 = sub_1001E079C((a1 + 576));
    if (!sub_10041ECEC(v41))
    {
      sub_101882528();
    }

    v42 = *(a2 + 372);
    *(a2 + 324) = v41;
    v43 = *(a1 + 584);
    v44 = *(a1 + 592);
    *(a2 + 372) = v42 | 0x70000;
    *(a2 + 328) = v43;
    *(a2 + 336) = v44;
    v45 = sub_1001F0CD8((a1 + 609));
    if (!sub_10041ECF8(v45))
    {
      sub_101882554();
    }

    v46 = *(a2 + 372);
    *(a2 + 344) = v45;
    v47 = *(a1 + 610);
    *(a2 + 372) = v46 | 0x180000;
    *(a2 + 278) = v47;
    v48 = sub_1001E088C((a1 + 612));
    if (!sub_10041ECEC(v48))
    {
      sub_101882580();
    }

    *(a2 + 372) |= 0x200000u;
    *(a2 + 348) = v48;
    v49 = sub_1001E097C((a1 + 616));
    if (!sub_1000183C8(v49))
    {
      sub_1018825AC();
    }

    v50 = *(a2 + 372);
    *(a2 + 352) = v49;
    v51 = *(a1 + 608) != 0;
    *(a2 + 372) = v50 | 0xC00000;
    *(a2 + 279) = v51;
    v52 = sub_1001E0B5C(a1);
    *(a2 + 372) |= 0x1000000u;
    *(a2 + 356) = v52;
    v53 = sub_1001E0A6C(*(a1 + 636));
    if (!sub_1000183C8(v53))
    {
      sub_1018825D8();
    }

    *(a2 + 372) |= 0x2000000u;
    *(a2 + 360) = v53;
  }

  else
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v54 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_FAULT))
    {
      *v55 = 0;
      _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_FAULT, "pLocationPrivate,Invalid pointer", v55, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B847C4();
    }
  }
}

double sub_1001F4008(uint64_t a1)
{
  *a1 = off_102452338;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0xFFFFFFFFLL;
  *(a1 + 104) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 242) = 0u;
  *(a1 + 226) = 0u;
  *(a1 + 210) = 0u;
  *(a1 + 194) = 0u;
  *(a1 + 178) = 0u;
  *(a1 + 162) = 0u;
  *(a1 + 146) = 0u;
  *(a1 + 114) = 0u;
  *(a1 + 130) = 0u;
  *(a1 + 258) = 0u;
  *(a1 + 341) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  return result;
}

double sub_1001F4098(uint64_t a1)
{
  *a1 = off_102452428;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_1001F40C8(unsigned int *a1)
{
  result = *a1;
  if (result >= 3)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled motion detected type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B868B4(a1);
      return 0;
    }
  }

  return result;
}

void *sub_1001F41B8(void *result)
{
  *result = off_1024524A0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

double sub_1001F41DC(uint64_t a1)
{
  *a1 = off_102452590;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

uint64_t sub_1001F4208(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 152);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_33;
  }

  if ((v3 & 1) == 0)
  {
    v4 = 0;
    if ((v3 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_13:
    v7 = *(a1 + 8);
    if (!v7)
    {
      v7 = *(qword_102636C38 + 8);
    }

    v8 = *(v7 + 28);
    if (*(v7 + 28))
    {
      if ((v8 & 2) != 0)
      {
        v8 = ((v8 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v8 = (v8 << 31 >> 31) & 9;
      }
    }

    *(v7 + 24) = v8;
    v4 += v8 + 2;
    v3 = *(a1 + 152);
    goto LABEL_20;
  }

  v6 = *(a1 + 48);
  if ((v6 & 0x80000000) != 0)
  {
    v4 = 11;
    if ((v3 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (v6 < 0x80)
  {
    v4 = 2;
    if ((v3 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6, a2) + 1;
  v3 = *(a1 + 152);
  if ((v3 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_20:
  if ((v3 & 4) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 8) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 0x10) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 0x20) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 0x40) != 0)
  {
    v4 += 9;
  }

  if ((v3 & 0x80) != 0)
  {
    v5 = v4 + 9;
  }

  else
  {
    v5 = v4;
  }

LABEL_33:
  if ((v3 & 0xFF00) != 0)
  {
    v9 = v5 + 9;
    if ((v3 & 0x100) == 0)
    {
      v9 = v5;
    }

    if ((v3 & 0x200) != 0)
    {
      LODWORD(v5) = v9 + 9;
    }

    else
    {
      LODWORD(v5) = v9;
    }

    if ((v3 & 0x400) != 0)
    {
      v10 = *(a1 + 52);
      if ((v10 & 0x80000000) != 0)
      {
        v11 = 11;
      }

      else if (v10 >= 0x80)
      {
        v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10, a2) + 1;
        v3 = *(a1 + 152);
      }

      else
      {
        v11 = 2;
      }

      LODWORD(v5) = v11 + v5;
    }

    if ((v3 & 0x800) != 0)
    {
      LODWORD(v5) = v5 + 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v12 = *(a1 + 104);
      if ((v12 & 0x80000000) != 0)
      {
        v13 = 11;
      }

      else if (v12 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2) + 1;
        v3 = *(a1 + 152);
      }

      else
      {
        v13 = 2;
      }

      LODWORD(v5) = v13 + v5;
    }

    if ((v3 & 0x2000) != 0)
    {
      v14 = *(a1 + 96);
      if (!v14)
      {
        v14 = *(qword_102636C38 + 96);
      }

      v15 = *(v14 + 28);
      v16 = (v15 << 31 >> 31) & 9;
      if ((v15 & 2) != 0)
      {
        v16 += 9;
      }

      if (*(v14 + 28))
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      *(v14 + 24) = v17;
      LODWORD(v5) = v5 + v17 + 2;
      v3 = *(a1 + 152);
    }

    if ((v3 & 0x4000) != 0)
    {
      v5 = (v5 + 9);
    }

    else
    {
      v5 = v5;
    }

    if ((v3 & 0x8000) != 0)
    {
      v18 = *(a1 + 108);
      if ((v18 & 0x80000000) != 0)
      {
        v19 = 12;
      }

      else if (v18 >= 0x80)
      {
        v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18, a2) + 2;
        v3 = *(a1 + 152);
      }

      else
      {
        v19 = 3;
      }

      v5 = (v19 + v5);
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v20 = *(a1 + 120);
      if ((v20 & 0x80000000) != 0)
      {
        v21 = 12;
      }

      else if (v20 >= 0x80)
      {
        v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, a2) + 2;
        v3 = *(a1 + 152);
      }

      else
      {
        v21 = 3;
      }

      LODWORD(v5) = v21 + v5;
      if ((v3 & 0x20000) == 0)
      {
LABEL_77:
        if ((v3 & 0x40000) == 0)
        {
          goto LABEL_78;
        }

        goto LABEL_92;
      }
    }

    else if ((v3 & 0x20000) == 0)
    {
      goto LABEL_77;
    }

    v22 = *(a1 + 124);
    if ((v22 & 0x80000000) != 0)
    {
      v23 = 12;
    }

    else if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22, a2) + 2;
      v3 = *(a1 + 152);
    }

    else
    {
      v23 = 3;
    }

    LODWORD(v5) = v23 + v5;
    if ((v3 & 0x40000) == 0)
    {
LABEL_78:
      if ((v3 & 0x80000) == 0)
      {
        goto LABEL_104;
      }

      goto LABEL_98;
    }

LABEL_92:
    v24 = *(a1 + 128);
    if ((v24 & 0x80000000) != 0)
    {
      v25 = 12;
    }

    else if (v24 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24, a2) + 2;
      v3 = *(a1 + 152);
    }

    else
    {
      v25 = 3;
    }

    LODWORD(v5) = v25 + v5;
    if ((v3 & 0x80000) == 0)
    {
LABEL_104:
      v28 = v5 + 10;
      if ((v3 & 0x100000) == 0)
      {
        v28 = v5;
      }

      if ((v3 & 0x200000) != 0)
      {
        v5 = v28 + 3;
      }

      else
      {
        v5 = v28;
      }

      goto LABEL_109;
    }

LABEL_98:
    v26 = *(a1 + 132);
    if ((v26 & 0x80000000) != 0)
    {
      v27 = 12;
    }

    else if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26, a2) + 2;
      v3 = *(a1 + 152);
    }

    else
    {
      v27 = 3;
    }

    LODWORD(v5) = v27 + v5;
    goto LABEL_104;
  }

LABEL_109:
  *(a1 + 148) = v5;
  return v5;
}

uint64_t sub_1001F4538(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 368);
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

    if ((v3 & 8) != 0)
    {
      v4 += 9;
    }

    if ((v3 & 0x10) != 0)
    {
      v4 += 9;
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
      v5 = v4 + 5;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  if ((v3 & 0xFF00) != 0)
  {
    v6 = v5 + ((v3 >> 7) & 2);
    if ((v3 & 0x200) != 0)
    {
      v7 = *(a1 + 60);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2) + 1;
        v3 = *(a1 + 368);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    if ((v3 & 0x400) != 0)
    {
      v9 = *(a1 + 64);
      if (!v9)
      {
        v9 = *(qword_102636C58 + 64);
      }

      v10 = *(v9 + 28);
      v11 = (v10 << 31 >> 31) & 9;
      if ((v10 & 2) != 0)
      {
        v11 += 9;
      }

      if (*(v9 + 28))
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      *(v9 + 24) = v12;
      v6 += v12 + 2;
      v3 = *(a1 + 368);
    }

    if ((v3 & 0x800) != 0)
    {
      v6 += 9;
    }

    if ((v3 & 0x1000) != 0)
    {
      v13 = *(a1 + 80);
      if ((v13 & 0x80000000) != 0)
      {
        v14 = 11;
      }

      else if (v13 >= 0x80)
      {
        v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13, a2) + 1;
        v3 = *(a1 + 368);
      }

      else
      {
        v14 = 2;
      }

      v6 += v14;
    }

    if ((v3 & 0x2000) != 0)
    {
      v15 = *(a1 + 84);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = 11;
      }

      else if (v15 >= 0x80)
      {
        v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15, a2) + 1;
        v3 = *(a1 + 368);
      }

      else
      {
        v16 = 2;
      }

      v6 += v16;
    }

    v5 = ((v3 >> 13) & 2) + v6;
    if ((v3 & 0x8000) != 0)
    {
      v17 = *(a1 + 88);
      if (!v17)
      {
        v17 = *(qword_102636C58 + 88);
      }

      v18 = *(v17 + 28);
      v19 = (v18 << 31 >> 31) & 9;
      if ((v18 & 2) != 0)
      {
        v19 += 9;
      }

      if (*(v17 + 28))
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      *(v17 + 24) = v20;
      v5 += v20 + 3;
      v3 = *(a1 + 368);
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      v21 = *(a1 + 96);
      if ((v21 & 0x80000000) != 0)
      {
        v22 = 12;
      }

      else if (v21 >= 0x80)
      {
        v22 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21, a2) + 2;
        v3 = *(a1 + 368);
      }

      else
      {
        v22 = 3;
      }

      v5 += v22;
    }

    v23 = v5 + 6;
    if ((v3 & 0x20000) == 0)
    {
      v23 = v5;
    }

    if ((v3 & 0x40000) != 0)
    {
      v24 = *(a1 + 104);
      if (!v24)
      {
        v24 = *(qword_102636C58 + 104);
      }

      v25 = *(v24 + 28);
      v26 = (v25 << 31 >> 31) & 9;
      if ((v25 & 2) != 0)
      {
        v26 += 9;
      }

      if (*(v24 + 28))
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      *(v24 + 24) = v27;
      v23 += v27 + 3;
      v3 = *(a1 + 368);
    }

    if ((v3 & 0x80000) != 0)
    {
      v23 += 10;
    }

    if ((v3 & 0x100000) != 0)
    {
      v28 = v23 + 10;
    }

    else
    {
      v28 = v23;
    }

    if ((v3 & 0x200000) != 0)
    {
      v29 = *(a1 + 116);
      if ((v29 & 0x80000000) != 0)
      {
        v30 = 12;
      }

      else if (v29 >= 0x80)
      {
        v30 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29, a2) + 2;
        v3 = *(a1 + 368);
      }

      else
      {
        v30 = 3;
      }

      v28 += v30;
    }

    if ((v3 & 0x400000) != 0)
    {
      v5 = v28 + 3;
    }

    else
    {
      v5 = v28;
    }

    if ((v3 & 0x800000) != 0)
    {
      v31 = *(a1 + 136);
      if (!v31)
      {
        v31 = *(qword_102636C58 + 136);
      }

      v32 = sub_1001E0B70(v31);
      v33 = v32;
      if (v32 >= 0x80)
      {
        v34 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32, a2);
      }

      else
      {
        v34 = 1;
      }

      v5 += v33 + v34 + 2;
      v3 = *(a1 + 368);
    }
  }

  if (HIBYTE(v3))
  {
    v35 = v5 + 10;
    if ((v3 & 0x1000000) == 0)
    {
      v35 = v5;
    }

    if ((v3 & 0x2000000) != 0)
    {
      v35 += 10;
    }

    if ((v3 & 0x4000000) != 0)
    {
      v35 += 10;
    }

    if ((v3 & 0x8000000) != 0)
    {
      v35 += 10;
    }

    if ((v3 & 0x10000000) != 0)
    {
      v35 += 10;
    }

    if ((v3 & 0x20000000) != 0)
    {
      v35 += 10;
    }

    if ((v3 & 0x40000000) != 0)
    {
      v35 += 3;
    }

    if ((v3 & 0x80000000) == 0)
    {
      v5 = v35;
    }

    else
    {
      v5 = v35 + 10;
    }
  }

  v36 = *(a1 + 372);
  if (v36)
  {
    v37 = v5 + 10;
    if ((v36 & 1) == 0)
    {
      v37 = v5;
    }

    if ((v36 & 2) != 0)
    {
      v37 += 3;
    }

    if ((v36 & 4) != 0)
    {
      v38 = *(a1 + 208);
      if (!v38)
      {
        v38 = *(qword_102636C58 + 208);
      }

      v39 = *(v38 + 28);
      v40 = (v39 << 31 >> 31) & 9;
      if ((v39 & 2) != 0)
      {
        v40 += 9;
      }

      if (*(v38 + 28))
      {
        v41 = v40;
      }

      else
      {
        v41 = 0;
      }

      *(v38 + 24) = v41;
      v37 += v41 + 3;
      v36 = *(a1 + 372);
    }

    if ((v36 & 8) != 0)
    {
      v42 = v37 + 10;
    }

    else
    {
      v42 = v37;
    }

    if ((v36 & 0x10) != 0)
    {
      v43 = *(a1 + 272);
      if ((v43 & 0x80000000) != 0)
      {
        v44 = 12;
      }

      else if (v43 >= 0x80)
      {
        v44 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v44 = 3;
      }

      v42 += v44;
    }

    v45 = v42 + 10;
    if ((v36 & 0x20) == 0)
    {
      v45 = v42;
    }

    if ((v36 & 0x40) != 0)
    {
      v45 += 10;
    }

    if ((v36 & 0x80) != 0)
    {
      v5 = v45 + 10;
    }

    else
    {
      v5 = v45;
    }
  }

  if ((v36 & 0xFF00) != 0)
  {
    v46 = v5 + 10;
    if ((v36 & 0x100) == 0)
    {
      v46 = v5;
    }

    if ((v36 & 0x200) != 0)
    {
      v46 += 10;
    }

    if ((v36 & 0x400) != 0)
    {
      v46 += 3;
    }

    if ((v36 & 0x800) != 0)
    {
      v46 += 10;
    }

    if ((v36 & 0x1000) != 0)
    {
      v5 = v46 + 10;
    }

    else
    {
      v5 = v46;
    }

    if ((v36 & 0x4000) != 0)
    {
      v47 = *(a1 + 320);
      if ((v47 & 0x80000000) != 0)
      {
        v48 = 12;
      }

      else if (v47 >= 0x80)
      {
        v48 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v47, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v48 = 3;
      }

      v5 += v48;
    }

    if ((v36 & 0x8000) != 0)
    {
      v49 = *(a1 + 312);
      if (!v49)
      {
        v49 = *(qword_102636C58 + 312);
      }

      v50 = sub_1001F1150(v49, a2);
      v51 = v50;
      if (v50 >= 0x80)
      {
        v52 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v50, a2);
      }

      else
      {
        v52 = 1;
      }

      v5 += v51 + v52 + 2;
      v36 = *(a1 + 372);
    }
  }

  if ((v36 & 0xFF0000) != 0)
  {
    if ((v36 & 0x10000) != 0)
    {
      v53 = *(a1 + 324);
      if ((v53 & 0x80000000) != 0)
      {
        v54 = 12;
      }

      else if (v53 >= 0x80)
      {
        v54 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v54 = 3;
      }

      v5 += v54;
    }

    v55 = v5 + 10;
    if ((v36 & 0x20000) == 0)
    {
      v55 = v5;
    }

    if ((v36 & 0x40000) != 0)
    {
      v56 = v55 + 10;
    }

    else
    {
      v56 = v55;
    }

    if ((v36 & 0x80000) != 0)
    {
      v57 = *(a1 + 344);
      if ((v57 & 0x80000000) != 0)
      {
        v58 = 12;
      }

      else if (v57 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v58 = 3;
      }

      v56 += v58;
    }

    if ((v36 & 0x100000) != 0)
    {
      v56 += 3;
    }

    if ((v36 & 0x200000) != 0)
    {
      v59 = *(a1 + 348);
      if ((v59 & 0x80000000) != 0)
      {
        v60 = 12;
      }

      else if (v59 >= 0x80)
      {
        v60 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v59, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v60 = 3;
      }

      v56 += v60;
    }

    if ((v36 & 0x400000) != 0)
    {
      v61 = *(a1 + 352);
      if ((v61 & 0x80000000) != 0)
      {
        v62 = 12;
      }

      else if (v61 >= 0x80)
      {
        v62 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61, a2) + 2;
        v36 = *(a1 + 372);
      }

      else
      {
        v62 = 3;
      }

      v56 += v62;
    }

    if ((v36 & 0x800000) != 0)
    {
      v5 = v56 + 3;
    }

    else
    {
      v5 = v56;
    }
  }

  if (HIBYTE(v36))
  {
    if ((v36 & 0x1000000) != 0)
    {
      v5 += 3;
    }

    if ((v36 & 0x2000000) != 0)
    {
      v63 = *(a1 + 360);
      if ((v63 & 0x80000000) != 0)
      {
        v64 = 12;
      }

      else if (v63 >= 0x80)
      {
        v64 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v63, a2) + 2;
      }

      else
      {
        v64 = 3;
      }

      v5 += v64;
    }
  }

  v65 = *(a1 + 296);
  v66 = (v5 + 2 * v65);
  if (v65 >= 1)
  {
    v67 = 0;
    do
    {
      v68 = sub_1002A8650(*(*(a1 + 288) + 8 * v67), a2);
      v69 = v68;
      if (v68 >= 0x80)
      {
        v70 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v68, a2);
      }

      else
      {
        v70 = 1;
      }

      v66 = (v69 + v66 + v70);
      ++v67;
    }

    while (v67 < *(a1 + 296));
  }

  *(a1 + 364) = v66;
  return v66;
}

uint64_t sub_1001F4C0C(uint64_t a1)
{
  v1 = *(a1 + 44);
  if (*(a1 + 44))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 40) = v1;
  return v1;
}

uint64_t sub_1001F4C50(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  v5 = *(result + 44);
  if (v5)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v5 = *(v4 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
      if ((*(v4 + 44) & 8) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 44);
  if ((v5 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v5 & 8) == 0)
  {
    return result;
  }

LABEL_9:
  v6 = *(v4 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, v6, a3);
}

void sub_1001F4CF8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024520E0;
  sub_1001F4D60(a1);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1001F4D60(void *result)
{
  if (qword_102636C38 != result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    result = v1[12];
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

void sub_1001F4E00(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024524A0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001F4E54(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452158;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

__n128 sub_1001F4EA8(uint64_t a1, __n128 *a2)
{
  a2[58].n128_u64[1] = 0xBFF0000000000000;
  __asm { FMOV            V0.2D, #-1.0 }

  a2[59] = result;
  return result;
}

void sub_1001F4EE0(uint64_t result, uint64_t a2)
{
  v4 = (a2 + 96);
  v3 = *(a2 + 96);
  if ((v3 & 0xFFFFFFF7) != 1)
  {
    if (v3 != 3)
    {
      return;
    }

    if (*(a2 + 516))
    {
      *(result + 3128) = *(a2 + 504);
      goto LABEL_9;
    }

LABEL_8:
    sub_10002FB88(result, a2);
    goto LABEL_9;
  }

  if ((*(a2 + 516) & 1) == 0)
  {
    result += 1560;
    goto LABEL_8;
  }

  *(result + 3136) = *(a2 + 504);
LABEL_9:
  if (qword_1025D48A0 != -1)
  {
    sub_101A8F920();
  }

  v5 = qword_1025D48A8;
  v6 = os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    v8 = sub_10000B1F8(v6, v7);
    v19 = 0;
    v9 = sub_10001A6B0(v8, &v19);
    if (*(a2 + 516))
    {
      v10 = "not saved";
    }

    else
    {
      v10 = "saved";
    }

    v11 = sub_1001FD6E4(*(a2 + 96));
    v12 = *(a2 + 76);
    v13 = *(a2 + 504);
    v14 = *(a2 + 4);
    v15 = *(a2 + 12);
    v17 = sub_10000B1F8(v11, v16);
    v18 = sub_100125220(v17);
    v19 = 134219779;
    v20 = v9;
    v21 = 2080;
    v22 = v10;
    v23 = 2080;
    v24 = v11;
    v25 = 2048;
    v26 = v12;
    v27 = 2048;
    v28 = v13;
    v29 = 2053;
    v30 = v14;
    v31 = 2053;
    v32 = v15;
    v33 = 2050;
    v34 = v18;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "%.1lf,DeadReckoning,%s,%s,time,%.1lf,machCont,%.1lf,%{sensitive}.8lf,%{sensitive}.8lf,propagation_us,%{public}.3f", &v19, 0x52u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A8FBE8(a2, v4);
  }
}

uint64_t sub_1001F50CC(uint64_t a1)
{
  *(a1 + 128) |= 1u;
  if (!*(a1 + 8))
  {
    operator new();
  }

  return *(a1 + 8);
}

uint64_t sub_1001F514C(uint64_t a1)
{
  *(a1 + 128) |= 2u;
  if (!*(a1 + 16))
  {
    operator new();
  }

  return *(a1 + 16);
}

uint64_t sub_1001F51CC(uint64_t a1)
{
  *(a1 + 128) |= 0x80u;
  if (!*(a1 + 48))
  {
    operator new();
  }

  return *(a1 + 48);
}

void *sub_1001F524C(uint64_t a1)
{
  *(a1 + 128) |= 0x100u;
  if (!*(a1 + 64))
  {
    operator new();
  }

  return *(a1 + 64);
}

uint64_t sub_1001F52CC(uint64_t a1)
{
  *(a1 + 128) |= 0x400u;
  if (!*(a1 + 72))
  {
    operator new();
  }

  return *(a1 + 72);
}

BOOL sub_1001F534C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = sub_10041ECEC(a2);
  if (!result)
  {
    sub_1018DAC4C();
  }

  *(a1 + 128) |= 0x200u;
  *(a1 + 60) = v2;
  return result;
}

uint64_t sub_1001F5390(uint64_t a1)
{
  v1 = *(a1 + 28);
  if (*(a1 + 28))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 24) = v1;
  return v1;
}

uint64_t sub_1001F53BC(uint64_t a1)
{
  v1 = *(a1 + 36);
  if (*(a1 + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(a1 + 32) = v1;
  return v1;
}

void sub_1001F53F4(uint64_t a1, uint64_t a2)
{
  sub_1001D9E2C(*(a1 + 64), a2);

  sub_10002492C(a1, v3);
}

uint64_t sub_1001F5430(uint64_t a1, uint64_t a2)
{
  if (qword_1025D48C0 != -1)
  {
    sub_10029D6CC();
  }

  v4 = qword_1025D48C8;
  if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a2 + 4);
    v21 = *(a2 + 12);
    v24 = *(a2 + 20);
    v5 = *(a2 + 96);
    v22 = sub_1001FD6E4(v5);
    v23 = *(a2 + 44);
    v25 = *(a2 + 60);
    v26 = *(a2 + 84);
    v27 = *(a2 + 88);
    v28 = *(a2 + 76);
    v7 = sub_10000B1F8(v22, v6);
    *buf = 0;
    v8 = sub_10001A6B0(v7, buf) - *(a2 + 76);
    v9 = *(a2 + 28);
    v10 = *(a2 + 36);
    v11 = *(a2 + 52);
    v12 = *(a2 + 68);
    v13 = *(a2 + 184);
    v14 = *(a2 + 128);
    v17 = sub_10000B1F8(v15, v16);
    v18 = sub_100125220(v17);
    *buf = 136320003;
    v30 = "CL-unfiltered";
    v31 = 1024;
    v32 = 0;
    v33 = 2053;
    v34 = v20;
    v35 = 2053;
    v36 = v21;
    v37 = 2048;
    v38 = v24;
    v39 = 1024;
    v40 = v5;
    v41 = 2080;
    v42 = v22;
    v43 = 2048;
    v44 = v23;
    v45 = 2048;
    v46 = v25;
    v47 = 1024;
    v48 = v26;
    v49 = 2048;
    v50 = v27;
    v51 = 2048;
    v52 = v28;
    v53 = 2048;
    v54 = v8;
    v55 = 2048;
    v56 = v9;
    v57 = 2048;
    v58 = v10;
    v59 = 2048;
    v60 = v11;
    v61 = 2048;
    v62 = v12;
    v63 = 2048;
    v64 = v13;
    v65 = 1024;
    v66 = v14;
    v67 = 2050;
    v68 = v18;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Type,%d,%s,Speed,%.2f,Course,%.2f,Confidence,%d,Lifespan,%.3f,LocationTimestamp,%.3f,Age,%.3f,Altitude,%.1f,AltitudeAccuracy,%.1f,SpeedAccuracy,%.3f,CourseAccuracy,%.1f,timestampGps,%.3lf,integrity,%d,propagation_us,%{public}.3f", buf, 0xBAu);
  }

  if (sub_10000A100(123, 2))
  {
    sub_101AAD108();
  }

  *buf = 10;
  return (*(*a1 + 152))(a1, buf, a2, 1, 0xFFFFFFFFLL, 0);
}