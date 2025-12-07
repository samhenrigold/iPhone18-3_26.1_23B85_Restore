BOOL sub_100226B74(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = v1 & 0xFFFFFFF7;
  v3 = v1 & 0xFFFFFFFE;
  return v2 == 1 || v3 == 2;
}

void sub_100226B90(double *a1, uint64_t a2, float64x2_t *a3)
{
  if (*(a2 + 232) == *(a2 + 224))
  {
    sub_100109D18(a3, *a1, a1[1], *(a2 + 72), *(a2 + 80), 0.0);
  }

  else
  {
    sub_100AF6D04(a1, a2 + 224, 0);
  }
}

double sub_100226BC0(uint64_t a1)
{
  v2 = fmax(sub_1002298D0(a1), *(a1 + 88));
  if (*(a1 + 168) <= 1u && v2 < *(sub_100226B68() + 2))
  {
    return *(sub_100226B68() + 2);
  }

  return v2;
}

uint64_t sub_100226C1C(uint64_t a1, uint64_t a2)
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
    v6 = sub_100229BA0(v3 + 32, a2);
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
  if (v5 == v2 || sub_100229BA0(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

void sub_100226CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      CLClientGetDistanceHighPrecision();
      if (vabdd_f64(*(a3 + 76), *(a2 + 76)) < 1.0)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10193CEB4();
        }

        v5 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *v6 = 0;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#HST, Warning small delta time for speed estimation - setting delta time to one", v6, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10193D2A0();
        }
      }
    }
  }
}

void sub_100226DAC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = sub_10000B1F8(a1, a2);
  sub_10000AED4(v7, &v14);
  v8 = v15;
  v9 = *(a1 + 56) + a3 * (v15 - *(a1 + 64));
  *(a1 + 56) = v9;
  *(a1 + 64) = v8;
  *(a1 + 258) = v9 > 1600.0;
  if (*(a1 + 3) == 1)
  {
    v10 = a3 > 10.0;
  }

  else
  {
    v11 = v9 <= 1600.0;
    v12 = a4 * 3.0 + 35.0;
    v13 = !v11 && a4 * 3.0 + 26.0 < a3;
    *(a1 + 256) = v12 < a3;
    *(a1 + 257) = a4 * 3.0 + 26.0 < a3;
    v10 = v12 < a3 || v13;
  }

  *(a1 + 3) = v10;
}

unsigned __int8 *sub_100226E7C(unsigned __int8 *result)
{
  v1 = result;
  v3 = result + 3;
  v2 = result[3];
  if (v2 != result[259])
  {
    if (qword_1025D4600 != -1)
    {
      sub_10193CEB4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = v1[3];
      v6 = v1[256];
      v7 = v1[257];
      v8 = v1[258];
      v9[0] = 67109888;
      v9[1] = v5;
      v10 = 1024;
      v11 = v6;
      v12 = 1024;
      v13 = v7;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#HST, High speed transit state changed,newState,{public}%d,isAboveAutomobileSpeed,{public}%d,isHighwaySpeed,{public}%d,isSmoothTrajectory,{public}%d", v9, 0x1Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10193CFC4(v3, v1);
    }

    result = sub_1000B92AC((v1 + 24), v1[3]);
    LOBYTE(v2) = v1[3];
  }

  v1[259] = v2;
  return result;
}

__n128 sub_100226FAC(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 26 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_10030806C(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x1A)) + 156 * (v7 % 0x1A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v12 = *(a2 + 80);
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = v12;
  *(v8 + 32) = v10;
  *(v8 + 48) = v11;
  result = *(a2 + 96);
  v14 = *(a2 + 112);
  v15 = *(a2 + 128);
  *(v8 + 140) = *(a2 + 140);
  *(v8 + 112) = v14;
  *(v8 + 128) = v15;
  *(v8 + 96) = result;
  ++a1[5];
  return result;
}

id sub_1002270B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = +[NSMutableDictionary dictionary];
  sub_10022721C(a2, a3, v5);
  result = [v5 count];
  if (result)
  {
    if (qword_1025D4620 != -1)
    {
      sub_10016157C();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "UclpMetric, submitting cell location distance metrics, %{public}@", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E9094(v5);
    }

    return AnalyticsSendEventLazy();
  }

  return result;
}

id sub_10022721C(uint64_t a1, uint64_t a2, void *a3)
{
  result = sub_100072814(a1);
  if (result)
  {
    result = sub_100072814(a2);
    if (result)
    {
      [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", *(a1 + 76) - *(a2 + 76)), @"age"}];
      v7 = sub_100117154(*(a1 + 4), *(a1 + 12), *(a2 + 4), *(a2 + 12));
      [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"distance"}];
      if (*(a1 + 20) != -1.0)
      {
        [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"horizontalAccuracy"}];
        v8 = *(a1 + 20);
        if (v8 > 0.0)
        {
          [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v7 / v8), @"horizontalDistanceRatio"}];
        }
      }

      [a3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", *(a1 + 96)), @"locationType"}];
      if (*(a2 + 20) != -1.0)
      {
        [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"ReferenceHorizontalAccuracy"}];
      }

      result = [a3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", *(a2 + 96)), @"referenceLocationType"}];
      if (*(a2 + 36) != -1.0)
      {
        result = [a3 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:"), @"ReferenceVerticalAccuracy"}];
      }

      if (*(a1 + 36) != -1.0)
      {
        v9 = [NSNumber numberWithDouble:?];

        return [a3 setObject:v9 forKeyedSubscript:@"verticalAccuracy"];
      }
    }
  }

  return result;
}

void sub_100227404(uint64_t a1, uint64_t a2, unsigned int *a3, int8x16_t *a4)
{
  Current = CFAbsoluteTimeGetCurrent();
  sub_1002287A0((a1 + 120), a3, a4, Current);
  if (*(a1 + 3032))
  {
    sub_10000AED0();
    sub_100223710(a3, a4, v8, Current);
    sub_10021CB90(*(a1 + 3032), v8);
    sub_10000CE1C(v8);
  }
}

void sub_100227494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000CE1C(va);
  _Unwind_Resume(a1);
}

void sub_1002274A8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = *(a2 + 112);
  v100 = *(a2 + 96);
  v101 = v8;
  v102[0] = *(a2 + 128);
  *(v102 + 12) = *(a2 + 140);
  v9 = *(a2 + 48);
  v97 = *(a2 + 32);
  v98 = v9;
  v10 = *(a2 + 80);
  *v99 = *(a2 + 64);
  *&v99[16] = v10;
  v11 = *(a2 + 16);
  *v96 = *a2;
  *&v96[16] = v11;
  sub_1002267B8(v96);
  sub_100228D9C(a1 + 904, v96);
  if (qword_1025D4640 != -1)
  {
    sub_101A4C980();
  }

  v12 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
  {
    sub_100072AFC(v96, __p);
    v13 = v105 >= 0 ? __p : *__p;
    v14 = *(a1 + 612);
    v15 = *(a1 + 728);
    v16 = *(a1 + 730);
    *buf = 136643587;
    *&buf[4] = v13;
    *&buf[12] = 1025;
    *&buf[14] = v14;
    *&buf[18] = 1025;
    *&buf[20] = v15;
    *&buf[24] = 1025;
    *&buf[26] = v16;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "Fence: handleLocation, location, %{sensitive}s, services, %{private}d, airplane, %{private}d, connected, %{private}d", buf, 0x1Eu);
    if (SHIBYTE(v105) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v64 = off_1025D4648;
    sub_100072AFC(v96, &v93);
    if (v95 >= 0)
    {
      v65 = &v93;
    }

    else
    {
      v65 = v93;
    }

    v66 = *(a1 + 612);
    v67 = *(a1 + 728);
    v68 = *(a1 + 730);
    *__p = 136643587;
    *&__p[4] = v65;
    *&__p[12] = 1025;
    *&__p[14] = v66;
    v104 = 1025;
    v105 = v67;
    v106 = 1025;
    v107 = v68;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v64, 2, "Fence: handleLocation, location, %{sensitive}s, services, %{private}d, airplane, %{private}d, connected, %{private}d", __p, 30);
    v70 = v69;
    if (v95 < 0)
    {
      operator delete(v93);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v70);
    if (v70 != buf)
    {
      free(v70);
    }
  }

  if (!*(a1 + 612) || *(a1 + 730) == 1 && (*(a1 + 731) & 1) == 0)
  {
    (*(**(a1 + 1768) + 352))(*(a1 + 1768));
    (*(**(a1 + 1768) + 288))(*(a1 + 1768));
    return;
  }

  sub_100228DE0(a1 + 1312, a2);
  if ((sub_1002267D4(a1, v96, a4) & 1) == 0)
  {
    *(a1 + 672) = *(a2 + 76);
    if (!*(a1 + 256) || sub_100227084(v96))
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v17 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 256);
        v19 = sub_1001FD6E4(v100);
        *buf = 134349315;
        *&buf[4] = v18;
        *&buf[12] = 2081;
        *&buf[14] = v19;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "Fence: cancelLocationWatchdog, num fences, %{public}lu, location type, %{private}s", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4E5F8(a1 + 256, v96);
      }

      (*(**(a1 + 1768) + 352))(*(a1 + 1768));
      (*(**(a1 + 1768) + 288))(*(a1 + 1768));
      *(a1 + 684) = 0;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v20 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
    {
      *buf = 134546433;
      *&buf[4] = *&v96[4];
      *&buf[12] = 2053;
      *&buf[14] = *&v96[12];
      *&buf[22] = 2049;
      *&buf[24] = *&v96[20];
      LOWORD(v109) = 2049;
      *(&v109 + 2) = *&v99[12];
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_INFO, "Fence: Handling location, %{sensitive}+.8f, %{sensitive}+.8f, acc, %{private}.2f, timestamp, %{private}.1lf\n", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4E70C(v96);
    }

    v90 = *(a1 + 623);
    sub_1001097CC((a1 + 1776), a1 + 448, v96);
    v22 = v21;
    v89 = sub_100226B74(v96);
    v23 = v100;
    v24 = sub_1002270A4(v96);
    v87 = sub_100226B74(a1 + 448);
    if (v24)
    {
      *(a1 + 880) = a4;
    }

    if (v23 == 11 || v23 == 4)
    {
      *(a1 + 888) = a4;
    }

    if (v89 || v23 == 10)
    {
      *(a1 + 896) = a4;
    }

    v25 = *(a1 + 544);
    v88 = v100;
    if (vabdd_f64(a4, *(a1 + 524)) >= *(sub_100226B68() + 27) || v22 >= *(sub_100226B68() + 28))
    {
      v27 = 1;
    }

    else
    {
      v26 = *(a1 + 468);
      if (v26 < *(sub_100226B68() + 29))
      {
        v86 = 0;
LABEL_43:
        v92 = 5000000.0;
        if (*sub_100229814() == 1 && *&v96[20] <= 250.0)
        {
          v28 = *(a1 + 208);
          if (v28 && *&v99[12] <= *(*(*(a1 + 176) + 8 * ((v28 + *(a1 + 200) - 1) / 0x1AuLL)) + 156 * ((v28 + *(a1 + 200) - 1) % 0x1AuLL) + 76) + 10.0)
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v29 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "not caching location newer than threshold", buf, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A4E840();
            }
          }

          else
          {
            sub_100226FAC((a1 + 168), v96);
          }

          v30 = *(a1 + 208);
          if (v30 >= *(sub_100229814() + 12))
          {
            do
            {
              *(a1 + 200) = vaddq_s64(*(a1 + 200), xmmword_101C66230);
              sub_1001FD668(a1 + 168, 1);
              v31 = *(a1 + 208);
            }

            while (v31 >= *(sub_100229814() + 12));
          }
        }

        sub_100229878((a1 + 48), &v93);
        v32 = v93;
        if (v93)
        {
          ++*(v93 + 13);
          if ((v100 - 6) > 2)
          {
            if (v100 == 11 || v100 == 4)
            {
              ++v32[25];
            }

            else if ((v100 & 0xFFFFFFF7) == 1)
            {
              ++v32[26];
            }
          }

          else
          {
            ++v32[24];
          }
        }

        v91 = v24;
        v33 = *(a1 + 240);
        if (v33 != (a1 + 248))
        {
          v34 = 0;
          v35 = 0;
          v36 = v25 == 4 || (v25 & 0xFFFFFFFE) == 10;
          v37 = v36 || v25 == 13;
          v38 = v87;
          if (v37)
          {
            v38 = 1;
          }

          v39 = (v89 || v23 == 10) & v38 ^ 1 | v86;
          v40 = 5000000.0;
          while (1)
          {
            if (*(v33 + 284) == 1)
            {
              if (*(a1 + 730) != 1)
              {
                goto LABEL_81;
              }

              if (v33[33] == v33[32])
              {
                if (_os_feature_enabled_impl())
                {
                  goto LABEL_101;
                }

                v41 = 64;
              }

              else
              {
                v41 = 8;
              }

              if ((v33[24] & v41) != 0)
              {
LABEL_81:
                v113 = v100;
                v114 = v101;
                v115[0] = v102[0];
                *(v115 + 12) = *(v102 + 12);
                v109 = v97;
                v110 = v98;
                v111 = *v99;
                v112 = *&v99[16];
                *buf = *v96;
                *&buf[16] = *&v96[16];
                if (*(v33 + 53) == 2)
                {
                  sub_100CC3408(a1, (v33 + 4), buf);
                }

                v42 = sub_100229820(buf, (v33 + 4), (a1 + 1776));
                v92 = fmin(v42, v92);
                v43 = *(v33 + 70);
                v44 = fmin(v42, v40);
                if (v43)
                {
                  v40 = v44;
                }

                if (v43 == -1 || (v43 != 1 || !v89 && (v23 > 0xB || ((1 << v23) & 0xC10) == 0) && v88 != 13 || v42 < 50000.0) && ((v39 & 1) != 0 || *(a1 + 684) || sub_1002230EC((a1 + 48))))
                {
                  if ((v33[24] & 0x20) == 0 && (v42 <= 25000.0 || *(v33 + 70) == -1))
                  {
                    ++v34;
                  }

                  v46 = v101;
                  *(a1 + 544) = v100;
                  *(a1 + 560) = v46;
                  *(a1 + 576) = v102[0];
                  *(a1 + 588) = *(v102 + 12);
                  v47 = v98;
                  *(a1 + 480) = v97;
                  *(a1 + 496) = v47;
                  v48 = *&v99[16];
                  *(a1 + 512) = *v99;
                  *(a1 + 528) = v48;
                  v49 = *&v96[16];
                  *(a1 + 448) = *v96;
                  *(a1 + 464) = v49;
                  sub_100229948(a1, v96, a3, (v33 + 4), a4);
                  ++v35;
                  v90 = 1;
                }
              }
            }

LABEL_101:
            v50 = v33[1];
            if (v50)
            {
              do
              {
                v51 = v50;
                v50 = *v50;
              }

              while (v50);
            }

            else
            {
              do
              {
                v51 = v33[2];
                v36 = *v51 == v33;
                v33 = v51;
              }

              while (!v36);
            }

            v33 = v51;
            if (v51 == (a1 + 248))
            {
              goto LABEL_111;
            }
          }
        }

        v35 = 0;
        v34 = 0;
        v40 = 5000000.0;
LABEL_111:
        sub_10021DEC0(a1, a4);
        p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
        if (v88 == 13 || v23 == 11 || v23 == 4)
        {
          *(a1 + 696) = 0;
        }

        else if (v91 && *(a1 + 256))
        {
          v56 = *(a1 + 648);
          if ((*(**(a1 + 1768) + 16))(*(a1 + 1768)))
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v57 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              v58 = *(a1 + 256);
              *buf = 134349056;
              *&buf[4] = v58;
              _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "request a scan to comfirm cell location, fences, %{public}lu", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A4C9A8(buf);
              v77 = *(a1 + 256);
              *__p = 134349056;
              *&__p[4] = v77;
              LODWORD(v85) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "request a scan to comfirm cell location, fences, %{public}lu", __p, v85);
              v79 = v78;
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v78);
              if (v79 != buf)
              {
                free(v79);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            if (*&v96[20] > 1400.0 && v34)
            {
              if (qword_1025D4640 != -1)
              {
                sub_101A4C980();
              }

              v59 = p_info[201];
              if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67240449;
                *&buf[4] = v34;
                *&buf[8] = 2049;
                *&buf[10] = v92;
                _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "Fence: requesting a scan, numOfFencesNeedScan, %{public}d, minDistanceToFence, %{private}.1lf", buf, 0x12u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101A4C9A8(buf);
                v82 = p_info[201];
                *__p = 67240449;
                *&__p[4] = v34;
                *&__p[8] = 2049;
                *&__p[10] = v92;
                LODWORD(v85) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v82, 2, "Fence: requesting a scan, numOfFencesNeedScan, %{public}d, minDistanceToFence, %{private}.1lf", __p, v85);
                v84 = v83;
                sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v83);
                if (v84 != buf)
                {
                  free(v84);
                }
              }

              (*(*a1 + 96))(a1, 10, 0, a4);
              goto LABEL_120;
            }
          }

          else if (v40 <= 25000.0)
          {
            v62 = (*(**(a1 + 1768) + 408))(*(a1 + 1768));
            if (vabdd_f64(a4, v56) <= 756.0)
            {
              v63 = 1;
            }

            else
            {
              v63 = v62;
            }

            if ((v63 & 1) == 0 && sub_10021D1B8(a1))
            {
              *(a1 + 648) = a4;
              *(a1 + 684) = 0x300000001;
              (*(**(a1 + 1768) + 240))(*(a1 + 1768), &unk_101CF5678);
            }
          }

          else
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v61 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134283521;
              *&buf[4] = v40;
              _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEBUG, "cancelLocationWatchdog, wifi off, minDistance, %{private}lf", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A4C9A8(buf);
              *__p = 134283521;
              *&__p[4] = v40;
              LODWORD(v85) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "cancelLocationWatchdog, wifi off, minDistance, %{private}lf", __p, v85);
              v81 = v80;
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v80);
              if (v81 != buf)
              {
                free(v81);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            (*(**(a1 + 1768) + 288))(*(a1 + 1768));
            *(a1 + 684) = 0;
          }
        }

        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v53 = p_info[201];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67240449;
          *&buf[4] = v34;
          *&buf[8] = 2049;
          *&buf[10] = v92;
          _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "Fence: avoid a scan, numOfFencesNeedScan, %{public}d, minDistanceToFence, %{private}.1lf", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4C9A8(buf);
          v71 = p_info[201];
          *__p = 67240449;
          *&__p[4] = v34;
          *&__p[8] = 2049;
          *&__p[10] = v92;
          LODWORD(v85) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v71, 2, "Fence: avoid a scan, numOfFencesNeedScan, %{public}d, minDistanceToFence, %{private}.1lf", __p, v85);
          v73 = v72;
          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v72);
          if (v73 != buf)
          {
            free(v73);
          }
        }

LABEL_120:
        if (sub_100071CA0())
        {
          sub_10004FD18();
          *__p = *(a1 + 256);
          sub_10004345C(buf, "fenceUpdate", __p);
          sub_100116D68(buf, "horizontalAccuracy", &v96[20]);
          *__p = v35;
          sub_10004345C(buf, "numOfDispatchedChecks", __p);
          sub_100116D68(buf, "minDistanceToFence", &v92);
          sub_100071CAC(buf, "locationd");
          sub_100005DA4();
        }

        if (v90)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v54 = p_info[201];
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "Fence: Dispatch continuous engagement", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4C9A8(buf);
            v74 = p_info[201];
            *__p = 0;
            LODWORD(v85) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v74, 2, "Fence: Dispatch continuous engagement", __p, v85);
            v76 = v75;
            sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocation(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v75);
            if (v76 != buf)
            {
              free(v76);
            }
          }

          v55 = v92 - *&v96[20];
          if (v92 - *&v96[20] < 0.0)
          {
            v55 = 0.0;
          }

          *(a1 + 736) = v55;
          *(a1 + 744) = *&v99[12];
          sub_10022312C(a1, a4);
          (*(**(a1 + 1768) + 120))(*(a1 + 1768));
        }

        if (!v35 && *(a1 + 684) && sub_10021DBD8(a1 + 904, a4))
        {
          sub_100E270D4(a1 + 1312);
        }

        if (v94)
        {
          sub_100008080(v94);
        }

        return;
      }

      v60 = *&v96[20];
      v27 = v60 < *(sub_100226B68() + 29);
    }

    v86 = v27;
    goto LABEL_43;
  }
}

void sub_100228740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a19)
  {
    sub_100008080(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002287A0(void *a1, int *a2, uint64_t a3, double a4)
{
  v7 = *a2;
  if (!*a2)
  {
    goto LABEL_4;
  }

  if (v7 == 22)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v14 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
    {
      v15 = sub_10030D934(*(a3 + 808));
      *buf = 134217984;
      *&buf[4] = v15;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "Fence: received WSB, %lu", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4E2E8(a3);
    }

    v16 = a1 + 18;
    a1[19] = a1[18];
    if (sub_10030D934(*(a3 + 808)) && sub_10030D934(*(a3 + 808)))
    {
      v17 = 0;
      do
      {
        sub_10030E2C0(*(a3 + 808), v17, buf);
        v18 = a1[19];
        v19 = a1[20];
        if (v18 >= v19)
        {
          v28 = 0x6F96F96F96F96F97 * ((v18 - *v16) >> 2);
          v29 = v28 + 1;
          if ((v28 + 1) > 0x1A41A41A41A41A4)
          {
            sub_10028C64C();
          }

          v30 = 0x6F96F96F96F96F97 * ((v19 - *v16) >> 2);
          if (2 * v30 > v29)
          {
            v29 = 2 * v30;
          }

          if (v30 >= 0xD20D20D20D20D2)
          {
            v31 = 0x1A41A41A41A41A4;
          }

          else
          {
            v31 = v29;
          }

          if (v31)
          {
            sub_100238948((a1 + 18), v31);
          }

          v32 = 156 * v28;
          v33 = *&buf[16];
          *v32 = *buf;
          *(v32 + 16) = v33;
          v34 = *v72;
          v35 = *&v72[16];
          v36 = v74;
          *(v32 + 64) = v73;
          *(v32 + 80) = v36;
          *(v32 + 32) = v34;
          *(v32 + 48) = v35;
          v37 = v75;
          v38 = v76;
          v39 = v77[0];
          *(v32 + 140) = *(v77 + 12);
          *(v32 + 112) = v38;
          *(v32 + 128) = v39;
          *(v32 + 96) = v37;
          v27 = 156 * v28 + 156;
          v40 = a1[18];
          v41 = a1[19] - v40;
          v42 = 156 * v28 - v41;
          memcpy((v32 - v41), v40, v41);
          v43 = a1[18];
          a1[18] = v42;
          a1[19] = v27;
          a1[20] = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          v20 = *&buf[16];
          *v18 = *buf;
          v18[1] = v20;
          v21 = *v72;
          v22 = *&v72[16];
          v23 = v74;
          v18[4] = v73;
          v18[5] = v23;
          v18[2] = v21;
          v18[3] = v22;
          v24 = v75;
          v25 = v76;
          v26 = v77[0];
          *(v18 + 140) = *(v77 + 12);
          v18[7] = v25;
          v18[8] = v26;
          v18[6] = v24;
          v27 = v18 + 156;
        }

        a1[19] = v27;
        ++v17;
      }

      while (v17 < sub_10030D934(*(a3 + 808)));
    }
  }

  else
  {
    if (v7 == 3)
    {
LABEL_4:
      v8 = *(a3 + 88);
      v9 = *(a3 + 76);
      if (v8 >= 0.0 && v8 + v9 < a4)
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C9EC();
        }

        v44 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
        {
          v45 = *(a3 + 4);
          v46 = *(a3 + 12);
          v47 = *(a3 + 20);
          v48 = *(a3 + 76);
          v49 = *(a3 + 88);
          *buf = 134546689;
          *&buf[4] = v45;
          *&buf[12] = 2053;
          *&buf[14] = v46;
          *&buf[22] = 2050;
          *&buf[24] = v47;
          *v72 = 2050;
          *&v72[2] = v48;
          *&v72[10] = 2050;
          *&v72[12] = v49;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_DEBUG, "Fence: Ignoring expired location <%{sensitive}+.8f, %{sensitive}.8f>, acc %{public}.2f, timestamp %{public}.2f, lifespan %{public}.2f", buf, 0x34u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v50 = *(a3 + 4);
          v51 = *(a3 + 12);
          v52 = *(a3 + 20);
          v53 = *(a3 + 76);
          v54 = *(a3 + 88);
          v61 = 134546689;
          v62 = v50;
          v63 = 2053;
          v64 = v51;
          v65 = 2050;
          v66 = v52;
          v67 = 2050;
          v68 = v53;
          v69 = 2050;
          v70 = v54;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: Ignoring expired location <%{sensitive}+.8f, %{sensitive}.8f>, acc %{public}.2f, timestamp %{public}.2f, lifespan %{public}.2f", &v61, 52);
          v56 = v55;
          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationNotification(const CFAbsoluteTime, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v55);
          if (v56 != buf)
          {
            free(v56);
          }
        }
      }

      else if (vabdd_f64(a4, v9) <= 10.0)
      {
        v60 = a3 + 160;

        sub_1002274A8(a1, a3, v60, a4);
      }

      else
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C9EC();
        }

        v11 = a4 - v9;
        v12 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_INFO))
        {
          v13 = *(a3 + 96);
          *buf = 67240448;
          *&buf[4] = v13;
          *&buf[8] = 2050;
          *&buf[10] = v11;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Fence: Ignoring old location, type, %{public}d, age, %{public}.1f", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4E3E8(a3, v11);
        }
      }

      return;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C9EC();
    }

    v58 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      v59 = *a2;
      *buf = 67240192;
      *&buf[4] = v59;
      _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "#Warning Fence: Got unknown location notification %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4E504(a2);
    }
  }
}

__n128 sub_100228D9C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v2;
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  *(a1 + 88) = a2[5];
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 40) = v3;
  result = a2[6];
  v7 = a2[7];
  v8 = a2[8];
  *(a1 + 148) = *(a2 + 140);
  *(a1 + 136) = v8;
  *(a1 + 120) = v7;
  *(a1 + 104) = result;
  return result;
}

uint64_t sub_100228DE0(uint64_t result, uint64_t a2)
{
  ++*(result + 184);
  v2 = *(a2 + 96) - 1;
  if (v2 <= 0xA && ((0x66Du >> v2) & 1) != 0)
  {
    ++*(result + qword_101D03510[v2]);
  }

  return result;
}

uint64_t sub_100228E24(double *a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, __n128 a9, char a10)
{
  __p = 0uLL;
  v78 = 0;
  v18 = a9.n128_f64[0];
  switch(*(a5 + 96))
  {
    case 0:
    case 2:
    case 5:
    case 0xC:
    case 0xE:
      if (a8 && a10)
      {
        HIBYTE(v78) = 13;
        strcpy(&__p, "other leashed");
        *a1 = 0.0;
        *a2 = 0;
        goto LABEL_72;
      }

      HIBYTE(v78) = 10;
      strcpy(&__p, "other type");
      goto LABEL_19;
    case 1:
    case 3:
    case 9:
      v19 = *(a3 + 96);
      v32 = v19 > 9;
      v20 = (1 << v19) & 0x20E;
      v21 = v32 || v20 == 0;
      if (v21 || vabdd_f64(a9.n128_f64[0], *a1) > *(sub_100226B68() + 35) && vabdd_f64(v18, *(a3 + 76)) > *(sub_100226B68() + 36))
      {
        goto LABEL_12;
      }

      v23 = *a2 + 1;
      goto LABEL_23;
    case 4:
    case 0xD:
      if (*(a5 + 84) > 0x42u)
      {
        v29 = *(a5 + 20);
        if (v29 < *(sub_100226B68() + 30))
        {
          HIBYTE(v78) = 4;
          strcpy(&__p, "2+AP");
LABEL_19:
          *a1 = 0.0;
          *a2 = 0;
          goto LABEL_58;
        }

        HIBYTE(v78) = 8;
        strcpy(&__p, "accuracy");
      }

      else
      {
        HIBYTE(v78) = 6;
        strcpy(&__p, "one-AP");
      }

      *a1 = 0.0;
      *a2 = 0;
      if (a6 >= 2)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    case 6:
    case 7:
    case 8:
    case 0xA:
      HIBYTE(v78) = 4;
      strcpy(&__p, "type");
      goto LABEL_19;
    case 0xB:
LABEL_12:
      if (qword_1025D4640 != -1)
      {
        sub_1019EC040();
      }

      v22 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "Fence: location treated as new continuous session", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019EC38C(buf);
        LOWORD(v79) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: location treated as new continuous session", &v79, 2);
        v75 = v74;
        sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::shouldIgnoreLocation(const CFAbsoluteTime, CFAbsoluteTime &, int &, CLDaemonLocation &, const CLDaemonLocation &, const CLDaemonLocation &, const int, const BOOL, const BOOL, const BOOL)", "%s\n", v74);
        if (v75 != buf)
        {
          free(v75);
        }
      }

      v23 = 0;
      *a1 = v18;
LABEL_23:
      *a2 = v23;
      v24 = *(sub_100226B68() + 105);
      v25 = *(sub_100226B68() + 106);
      v26 = *a2;
      if (a6 >= 2 && a7 && v26 >= v24)
      {
        if (SHIBYTE(v78) < 0)
        {
          *(&__p + 1) = 9;
          p_p = __p;
        }

        else
        {
          HIBYTE(v78) = 9;
          p_p = &__p;
        }

        strcpy(p_p, "requested");
      }

      else if ((a8 & 1) != 0 || v26 < v24)
      {
        if (*(a5 + 84) < 51 || v26 <= v25)
        {
          if (a8 && a10)
          {
            if (SHIBYTE(v78) < 0)
            {
              *(&__p + 1) = 7;
              v31 = __p;
            }

            else
            {
              HIBYTE(v78) = 7;
              v31 = &__p;
            }

            strcpy(v31, "leashed");
          }

          else
          {
            v32 = vabdd_f64(v18, *(a4 + 76)) <= 120.0 || v26 < v24;
            if (!v32)
            {
              if (SHIBYTE(v78) < 0)
              {
                *(&__p + 1) = 17;
                v42 = __p;
              }

              else
              {
                HIBYTE(v78) = 17;
                v42 = &__p;
              }

              strcpy(v42, "last location old");
              goto LABEL_58;
            }

            if (SHIBYTE(v78) < 0)
            {
              *(&__p + 1) = 5;
              v33 = __p;
            }

            else
            {
              HIBYTE(v78) = 5;
              v33 = &__p;
            }

            strcpy(v33, "other");
          }

LABEL_72:
          if (qword_1025D4640 != -1)
          {
            sub_1019EC264();
          }

          v43 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v44 = &__p;
            if (v78 < 0)
            {
              v44 = __p;
            }

            v45 = *(a5 + 96);
            v46 = *(a5 + 20);
            v47 = *(a5 + 84);
            v48 = *(a5 + 128);
            v49 = *a2;
            *buf = 136382211;
            v94 = v44;
            v95 = 1026;
            v96 = v45;
            v97 = 2050;
            v98 = v46;
            v99 = 1026;
            v100 = v47;
            v101 = 1026;
            v102 = v48;
            v103 = 1025;
            v104 = v49;
            v105 = 1025;
            v106 = a6;
            _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "Fence: Ignoring location, %{private}s, type, %{public}d, hacc, %{public}.1f, conf, %{public}d, integ, %{public}d, fixCnt, %{private}d, counter, %{private}d", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019EC38C(buf);
            v66 = &__p;
            if (v78 < 0)
            {
              v66 = __p;
            }

            v67 = *(a5 + 96);
            v68 = *(a5 + 20);
            v69 = *(a5 + 84);
            v70 = *(a5 + 128);
            v71 = *a2;
            v79 = 136382211;
            v80 = v66;
            v81 = 1026;
            v82 = v67;
            v83 = 2050;
            v84 = v68;
            v85 = 1026;
            v86 = v69;
            v87 = 1026;
            v88 = v70;
            v89 = 1025;
            v90 = v71;
            v91 = 1025;
            v92 = a6;
            LODWORD(v76) = 52;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: Ignoring location, %{private}s, type, %{public}d, hacc, %{public}.1f, conf, %{public}d, integ, %{public}d, fixCnt, %{private}d, counter, %{private}d", &v79, v76);
            v73 = v72;
            sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::shouldIgnoreLocation(const CFAbsoluteTime, CFAbsoluteTime &, int &, CLDaemonLocation &, const CLDaemonLocation &, const CLDaemonLocation &, const int, const BOOL, const BOOL, const BOOL)", "%s\n", v72);
            if (v73 != buf)
            {
              free(v73);
            }
          }

          v41 = 1;
          goto LABEL_80;
        }

        if (SHIBYTE(v78) < 0)
        {
          *(&__p + 1) = 4;
          v30 = __p;
        }

        else
        {
          HIBYTE(v78) = 4;
          v30 = &__p;
        }

        strcpy(v30, "good");
      }

      else
      {
        if (SHIBYTE(v78) < 0)
        {
          *(&__p + 1) = 8;
          v28 = __p;
        }

        else
        {
          HIBYTE(v78) = 8;
          v28 = &__p;
        }

        strcpy(v28, "wifi off");
      }

LABEL_58:
      if (qword_1025D4640 != -1)
      {
        sub_1019EC264();
      }

      v34 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        v35 = &__p;
        if (v78 < 0)
        {
          v35 = __p;
        }

        v36 = *(a5 + 96);
        v37 = *(a5 + 20);
        v38 = *(a5 + 84);
        v39 = *(a5 + 128);
        v40 = *a2;
        *buf = 136382211;
        v94 = v35;
        v95 = 1026;
        v96 = v36;
        v97 = 2050;
        v98 = v37;
        v99 = 1026;
        v100 = v38;
        v101 = 1026;
        v102 = v39;
        v103 = 1025;
        v104 = v40;
        v105 = 1025;
        v106 = a6;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "Fence: Accepting location, %{private}s, type, %{public}d, hacc, %{public}.1f, conf, %{public}d, integ, %{public}d, fixCnt, %{private}d, counter, %{private}d", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019EC38C(buf);
        v58 = &__p;
        if (v78 < 0)
        {
          v58 = __p;
        }

        v59 = *(a5 + 96);
        v60 = *(a5 + 20);
        v61 = *(a5 + 84);
        v62 = *(a5 + 128);
        v63 = *a2;
        v79 = 136382211;
        v80 = v58;
        v81 = 1026;
        v82 = v59;
        v83 = 2050;
        v84 = v60;
        v85 = 1026;
        v86 = v61;
        v87 = 1026;
        v88 = v62;
        v89 = 1025;
        v90 = v63;
        v91 = 1025;
        v92 = a6;
        LODWORD(v76) = 52;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 2, "Fence: Accepting location, %{private}s, type, %{public}d, hacc, %{public}.1f, conf, %{public}d, integ, %{public}d, fixCnt, %{private}d, counter, %{private}d", &v79, v76);
        v65 = v64;
        sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLFenceMonitorLogic::shouldIgnoreLocation(const CFAbsoluteTime, CFAbsoluteTime &, int &, CLDaemonLocation &, const CLDaemonLocation &, const CLDaemonLocation &, const int, const BOOL, const BOOL, const BOOL)", "%s\n", v64);
        if (v65 != buf)
        {
          free(v65);
        }
      }

      v41 = 0;
LABEL_80:
      if (*(a5 + 20) > 0.0)
      {
        v50 = *(a5 + 16);
        *a3 = *a5;
        *(a3 + 16) = v50;
        v51 = *(a5 + 32);
        v52 = *(a5 + 48);
        v53 = *(a5 + 80);
        *(a3 + 64) = *(a5 + 64);
        *(a3 + 80) = v53;
        *(a3 + 32) = v51;
        *(a3 + 48) = v52;
        v54 = *(a5 + 96);
        v55 = *(a5 + 112);
        v56 = *(a5 + 128);
        *(a3 + 140) = *(a5 + 140);
        *(a3 + 112) = v55;
        *(a3 + 128) = v56;
        *(a3 + 96) = v54;
      }

      if (SHIBYTE(v78) < 0)
      {
        operator delete(__p);
      }

      return v41;
    default:
      goto LABEL_58;
  }
}

void sub_100229798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100229820(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  sub_100226B90((a1 + 4), a2, a3);
  v6 = v5 - *(a1 + 20);
  if (*(a2 + 232) == *(a2 + 224))
  {
    return v6 - sub_100226BC0(a2);
  }

  return v6;
}

void *sub_100229878@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[8];
  if (v2 && (v3 = (*(result[4] + (((v2 + result[7] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v2 + *(result + 56) - 1)), v4 = *v3, (*(*v3 + 24) & 1) == 0))
  {
    v5 = v3[1];
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

double sub_1002298D0(uint64_t a1)
{
  v2 = sub_100226B68();
  if ((*v2 & 1) != 0 || (v2 = sub_100226B68(), v2[1] == 1) && *(a1 + 176) == 1)
  {
    v4 = sub_10001A3E8(v2, v3);
    v6 = sub_10003A088(v4, v5);
    v7 = sub_100226B68();
    v8 = (v7 + 24);
    if ((v6 & 8) != 0)
    {
      v8 = (v7 + 8);
    }
  }

  else
  {
    v8 = &qword_10262E1F0;
  }

  return *v8;
}

void sub_100229948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = sub_100226C1C(a1 + 240, a4);
  if (a1 + 248 != v8)
  {
    v9 = v8;
    if (*(a1 + 730) == 1)
    {
      if (*(v8 + 264) == *(v8 + 256))
      {
        if (_os_feature_enabled_impl())
        {
LABEL_20:
          if (qword_1025D4640 != -1)
          {
            sub_101A4C9EC();
          }

          v17 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v18) = 0;
            _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "Processing location when not supposed to", &v18, 2u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_101A50EC4();
          }

          goto LABEL_26;
        }

        v10 = 64;
      }

      else
      {
        v10 = 8;
      }

      if ((*(v9 + 192) & v10) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_26:
    sub_100229CF4(a1);
    return;
  }

  if (qword_1025D4640 != -1)
  {
    sub_101A4C9EC();
  }

  v11 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a2 + 4);
    v13 = *(a2 + 12);
    v14 = *(a2 + 20);
    if (*(a4 + 23) >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    if (*(a4 + 47) >= 0)
    {
      v16 = a4 + 24;
    }

    else
    {
      v16 = *(a4 + 24);
    }

    v18 = 134546691;
    v19 = v12;
    v20 = 2053;
    v21 = v13;
    v22 = 2050;
    v23 = v14;
    v24 = 2082;
    v25 = v15;
    v26 = 2081;
    v27 = v16;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Fence: Attempt to handle location <%{sensitive}+.8f,%{sensitive}+.8f> acc %{public}.2f for non-present fence %{public}s/%{private}s", &v18, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A50FA8();
  }
}

uint64_t sub_100229BA0(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 48);
  v3 = (a2 + 48);
  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = *(a2 + 71);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 56);
  }

  if (v5 != v6)
  {
    goto LABEL_14;
  }

  v10 = v4 >= 0 ? (a1 + 48) : *v2;
  v11 = v7 >= 0 ? (a2 + 48) : *v3;
  if (memcmp(v10, v11, v5))
  {
    goto LABEL_14;
  }

  v15 = *(a1 + 23);
  if (v15 >= 0)
  {
    v16 = *(a1 + 23);
  }

  else
  {
    v16 = *(a1 + 8);
  }

  v17 = *(a2 + 23);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a2 + 8);
  }

  if (v16 != v17 || (v15 >= 0 ? (v19 = a1) : (v19 = *a1), v18 >= 0 ? (v20 = a2) : (v20 = *a2), memcmp(v19, v20, v16)))
  {
    v12 = a1;
    v13 = a2;
    return (sub_100019438(v12, v13) & 0x80u) != 0;
  }

  v2 = (a1 + 24);
  v3 = (a2 + 24);
  v21 = *(a1 + 47);
  if (v21 >= 0)
  {
    v22 = *(a1 + 47);
  }

  else
  {
    v22 = *(a1 + 32);
  }

  v23 = *(a2 + 47);
  v24 = v23;
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a2 + 32);
  }

  if (v22 != v23 || (v21 >= 0 ? (v25 = (a1 + 24)) : (v25 = *v2), v24 >= 0 ? (v26 = (a2 + 24)) : (v26 = *v3), result = memcmp(v25, v26, v22), result))
  {
LABEL_14:
    v12 = v2;
    v13 = v3;
    return (sub_100019438(v12, v13) & 0x80u) != 0;
  }

  return result;
}

void sub_100229CF4(uint64_t a1)
{
  v3 = __chkstk_darwin(a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  p_info = v2;
  v12 = v11;
  v14 = v13;
  v15 = v3;
  v16 = v1;
  v17 = v13[7];
  v272 = v13[6];
  v273 = v17;
  v274[0] = v13[8];
  *(v274 + 12) = *(v13 + 140);
  v18 = v13[3];
  v268 = v13[2];
  v269 = v18;
  v19 = v13[5];
  v270 = v13[4];
  v271 = v19;
  v20 = v13[1];
  *v267 = *v13;
  *&v267[16] = v20;
  if (*(v2 + 180) == 2)
  {
    v252 = sub_100CC3408(v1, v2, v267) ^ 1;
  }

  else
  {
    v252 = 0;
  }

  sub_100226B90(&v267[4], p_info, (v16 + 1776));
  v22 = v21;
  sub_10021CF0C(v16, &v272, 0, v15);
  __asm { FMOV            V0.2D, #-1.0 }

  __src[1] = _Q0;
  __src[2] = _Q0;
  __src[3] = _Q0;
  __src[4] = _Q0;
  __src[5] = _Q0;
  __src[6] = _Q0;
  __src[7] = _Q0;
  *(&__src[9] + 4) = 0;
  *(&__src[8] + 12) = 0;
  *(&__src[9] + 12) = xmmword_101C75BF0;
  *(&__src[10] + 12) = _Q0;
  *(&__src[11] + 12) = _Q0;
  *(&__src[12] + 12) = _Q0;
  DWORD2(__src[8]) = 0xFFFF;
  HIDWORD(__src[13]) = 0;
  *&__src[14] = 0xBFF0000000000000;
  __src[20] = xmmword_101C76220;
  __src[21] = _Q0;
  v28 = *(v16 + 288);
  v27 = *(v16 + 304);
  __src[22] = _Q0;
  *(&__src[17] + 4) = *(v14 + 140);
  v29 = v14[7];
  *(&__src[16] + 8) = v14[8];
  v30 = v14[6];
  *(&__src[15] + 8) = v29;
  *(&__src[14] + 8) = v30;
  v31 = v14[3];
  *(&__src[10] + 8) = v14[2];
  *(&__src[11] + 8) = v31;
  v32 = v14[5];
  *(&__src[12] + 8) = v14[4];
  v33 = *v14;
  *(&__src[9] + 8) = v14[1];
  DWORD1(__src[18]) = 0xFFFF;
  *&__src[19] = 0;
  *(&__src[18] + 1) = 0;
  *(&__src[19] + 1) = 0xBFF0000000000000;
  *(&__src[8] + 8) = v33;
  *(&__src[13] + 8) = v32;
  v34 = *(v16 + 560);
  *(&__src[24] + 4) = *(v16 + 544);
  *(&__src[25] + 4) = v34;
  *(&__src[26] + 4) = *(v16 + 576);
  v35 = *(v16 + 496);
  *(&__src[20] + 4) = *(v16 + 480);
  *(&__src[21] + 4) = v35;
  v36 = *(v16 + 528);
  *(&__src[22] + 4) = *(v16 + 512);
  *(&__src[23] + 4) = v36;
  v37 = *(v16 + 464);
  *(&__src[18] + 4) = *(v16 + 448);
  *(&__src[19] + 4) = v37;
  *(&__src[36] + 12) = *(v16 + 428);
  v38 = *(v16 + 400);
  __src[34] = *(v16 + 384);
  __src[35] = v38;
  __src[36] = *(v16 + 416);
  v39 = *(v16 + 336);
  __src[30] = *(v16 + 320);
  __src[31] = v39;
  v40 = *(v16 + 368);
  __src[32] = *(v16 + 352);
  __src[33] = v40;
  BYTE8(__src[0]) = 1;
  *&__src[8] = v15;
  __src[27] = *(v16 + 588);
  __src[28] = v28;
  __src[29] = v27;
  DWORD1(__src[38]) = *(v16 + 604);
  (*(**(v16 + 1768) + 128))(buf);
  __src[48] = *&v306[32];
  __src[49] = *v307;
  *&__src[50] = *&v307[16];
  __src[44] = *&buf[32];
  __src[45] = *&buf[48];
  __src[47] = *&v306[16];
  __src[46] = *v306;
  __src[43] = *&buf[16];
  __src[42] = *buf;
  (*(**(v16 + 1768) + 136))(buf);
  *(&__src[56] + 8) = *&v306[32];
  *(&__src[57] + 8) = *v307;
  *(&__src[52] + 8) = *&buf[32];
  *(&__src[53] + 8) = *&buf[48];
  *(&__src[54] + 8) = *v306;
  *(&__src[55] + 8) = *&v306[16];
  *(&__src[50] + 8) = *buf;
  *(&__src[51] + 8) = *&buf[16];
  *(&__src[58] + 1) = *&v307[16];
  v41 = (*(**(v16 + 1768) + 16))();
  sub_100221314(v267, v12, p_info, v9, v41, __src, v22);
  v42 = __src[0];
  v265 = __src[0];
  v250 = *(v16 + 604);
  v43 = *v9;
  v251 = *(v9 + 17);
  if (v252)
  {
    if (v43)
    {
      return;
    }

    v44 = sub_100226BC0(p_info);
    if (v22 <= v44 + *(sub_100226B68() + 42))
    {
      return;
    }

    v42 = 1;
    v265 = 1;
  }

  if (v5)
  {
    v45 = sub_100226C1C(v16 + 1880, p_info);
    v42 = v265;
    if (!v265 && v16 + 1888 != v45)
    {
      sub_100CC7508((v16 + 1880), v45);
      v42 = v265;
    }
  }

  if (v42 == -1 || v42 == v43)
  {
    v47 = 0;
    v48 = v42 | v43;
    _ZF = (~*(p_info + 40) & 5) == 0 && v48 == 0;
    v46 = _ZF && v251 == 1 && v250 == 2;
    goto LABEL_74;
  }

  if (v43 != -1 && !v42)
  {
    if ((p_info[20] & 1) == 0)
    {
      v46 = 0;
      v47 = 1;
      goto LABEL_43;
    }

LABEL_42:
    v47 = 0;
    v46 = 1;
    goto LABEL_43;
  }

  v46 = 0;
  v47 = 1;
  if (v43 != -1 && v42 == 1)
  {
    if ((p_info[20] & 2) == 0)
    {
      v46 = 0;
      goto LABEL_43;
    }

    if (*(v16 + 656) > 0.0)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v52 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "Fence: invalidate EPNO exit trigger time", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4EB8C();
      }

      *(v16 + 656) = 0;
    }

    goto LABEL_42;
  }

LABEL_43:
  if ((~*(p_info + 40) & 5) == 0)
  {
    if (!v265 && v250 != 2)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v53 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        v54 = p_info + 3;
        if (*(p_info + 47) < 0)
        {
          v54 = p_info[3];
        }

        if ((v265 + 1) > 4)
        {
          v55 = "---";
        }

        else
        {
          v55 = off_1024A5428[v265 + 1];
        }

        *buf = 136380931;
        *&buf[4] = v54;
        *&buf[12] = 2081;
        *&buf[14] = v55;
        _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "Fence: %{private}s, filtering unwanted, %{private}s, nofitication, has not achieved settled state yet", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4EC70();
      }

      v47 = 0;
      v46 = 0;
    }

    if (v265 == 1 && v251 != 2 && (p_info[20] & 2) != 0)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v56 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
      {
        sub_1008C3CF8(p_info, buf);
        v57 = buf[23] >= 0 ? buf : *buf;
        v58 = (v265 + 1) > 4 ? "---" : off_1024A5428[v265 + 1];
        LODWORD(v275.__r_.__value_.__l.__data_) = 136380931;
        *(v275.__r_.__value_.__r.__words + 4) = v57;
        WORD2(v275.__r_.__value_.__r.__words[1]) = 2081;
        *(&v275.__r_.__value_.__r.__words[1] + 6) = v58;
        _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "Fence: %{private}s, filtering unwanted, %{private}s, nofitication, never achieved settled state for entry notification", &v275, 0x16u);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v208 = off_1025D4648;
        sub_1008C3CF8(p_info, &v275);
        if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v209 = &v275;
        }

        else
        {
          v209 = v275.__r_.__value_.__r.__words[0];
        }

        if ((v265 + 1) > 4)
        {
          v210 = "---";
        }

        else
        {
          v210 = off_1024A5428[v265 + 1];
        }

        v304.type = 136380931;
        *&v304.confidence = v209;
        LOWORD(v304.mountedState) = 2081;
        *(&v304.mountedState + 2) = v210;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v208, 2, "Fence: %{private}s, filtering unwanted, %{private}s, nofitication, never achieved settled state for entry notification", &v304, 22);
        v212 = v211;
        if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v275.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v212);
        if (v212 != buf)
        {
          free(v212);
        }
      }

      v47 = 0;
      v46 = 0;
    }
  }

LABEL_74:
  v249 = sub_10021D984(v16, v15);
  if ((v47 | v46) != 1)
  {
    v248 = 0;
    v247 = 0;
    v47 = 0;
    v46 = 0;
    if (!v7)
    {
      goto LABEL_274;
    }

    goto LABEL_227;
  }

  if ((p_info[20] & 0x80) != 0)
  {
    if (v16 + 824 != sub_100226C1C(v16 + 816, p_info))
    {
      sub_10005FB68(buf);
      if (sub_1002D2820(v16, p_info, buf))
      {
        v62 = sub_100226C1C(v16 + 240, buf);
        if (v16 + 248 == v62)
        {
          sub_1004BF9B8(buf);
        }

        else
        {
          v63 = *(v62 + 280);
          sub_1004BF9B8(buf);
          if (v63 != -1)
          {
            goto LABEL_224;
          }
        }
      }

      else
      {
        if (*&v327[12])
        {
          *&v328 = *&v327[12];
          operator delete(*&v327[12]);
        }

        if ((v327[3] & 0x80000000) != 0)
        {
          operator delete(v323);
        }

        if ((v306[7] & 0x80000000) != 0)
        {
          operator delete(*&buf[48]);
        }

        if ((buf[47] & 0x80000000) != 0)
        {
          operator delete(*&buf[24]);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }
    }

    if (v43 == -1)
    {
      if (v46)
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v103 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v103, OS_LOG_TYPE_ERROR, "#significantFence, state init on transition", buf, 2u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_101A4EF28();
        }
      }

      sub_10000EC00(v255, "SigFence");
      sub_100CBABD0(v16, p_info, &v265, v255);
      if ((v256 & 0x80000000) == 0)
      {
        goto LABEL_224;
      }

      v102 = v255[0];
      goto LABEL_223;
    }

    if (!v46)
    {
      v248 = 0;
      v47 = 0;
LABEL_226:
      v247 = 1;
      if (!v7)
      {
        goto LABEL_274;
      }

LABEL_227:
      if ((*(v16 + 1875) & 1) != 0 || *(v16 + 1874) == 1)
      {
        v104 = v265 == 1 ? v46 : 0;
        if (v104 == 1 && v272 == 4 && *(p_info + 43) == 1)
        {
          if (qword_1025D4640 != -1)
          {
            sub_101A4C980();
          }

          v105 = off_1025D4648;
          if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEBUG))
          {
            v106 = sub_100CB9350((v16 + 1840), v15);
            v107 = *(v16 + 1848);
            *buf = 67174913;
            *&buf[4] = v106;
            *&buf[8] = 2049;
            *&buf[10] = v107;
            _os_log_impl(dword_100000000, v105, OS_LOG_TYPE_DEBUG, "Fence: MiLo, homeLoi exit detected, isMicroLocationEventRecent, %{private}d, homeLoiProbability, %{private}.2f", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A4F12C(v16, v15);
          }

          if (!sub_100CB9350((v16 + 1840), v15))
          {
            *buf = p_info;
            v113 = sub_100CC7964((v16 + 1880), p_info, &unk_101C66300, buf, &v275);
            v114 = v271;
            *(v113 + 43) = v270;
            *(v113 + 45) = v114;
            v115 = v269;
            *(v113 + 39) = v268;
            *(v113 + 41) = v115;
            *(v113 + 420) = *(v274 + 12);
            v116 = v274[0];
            v117 = v272;
            *(v113 + 49) = v273;
            *(v113 + 51) = v116;
            *(v113 + 47) = v117;
            v118 = *&v267[16];
            *(v113 + 35) = *v267;
            *(v113 + 37) = v118;
            if ((*(v16 + 1872) & 1) == 0)
            {
              (*(**(v16 + 1768) + 456))(*(v16 + 1768));
              v119 = *(v16 + 1768);
              v120 = sub_100226B68();
              (*(*v119 + 248))(v119, v120 + 400);
              *(v16 + 1872) = 1;
            }

            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v121 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
            {
              v122 = p_info + 3;
              if (*(p_info + 47) < 0)
              {
                v122 = p_info[3];
              }

              v123 = *(v16 + 1872);
              v124 = *(v16 + 1896);
              *buf = 136381187;
              *&buf[4] = v122;
              *&buf[12] = 1025;
              *&buf[14] = v123;
              *&buf[18] = 1025;
              *&buf[20] = v124;
              _os_log_impl(dword_100000000, v121, OS_LOG_TYPE_DEFAULT, "Fence: MiLo, Added fencePendingMiloLocalizer, %{private}s, fIsPendingMicroLocationEventUpdate, %{private}d, fFenceToLocationPendingMiLoLocalizer size, %{private}d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4640 != -1)
              {
                sub_101A4C980();
              }

              v127 = p_info[3];
              v126 = p_info + 3;
              v125 = v127;
              if (*(v126 + 23) >= 0)
              {
                v125 = v126;
              }

              v128 = *(v16 + 1872);
              v129 = *(v16 + 1896);
              LODWORD(v275.__r_.__value_.__l.__data_) = 136381187;
              *(v275.__r_.__value_.__r.__words + 4) = v125;
              WORD2(v275.__r_.__value_.__r.__words[1]) = 1025;
              *(&v275.__r_.__value_.__r.__words[1] + 6) = v128;
              WORD1(v275.__r_.__value_.__r.__words[2]) = 1025;
              HIDWORD(v275.__r_.__value_.__r.__words[2]) = v129;
              LODWORD(v213) = 24;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "Fence: MiLo, Added fencePendingMiloLocalizer, %{private}s, fIsPendingMicroLocationEventUpdate, %{private}d, fFenceToLocationPendingMiLoLocalizer size, %{private}d", &v275, v213);
              v131 = v130;
              sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v130);
              if (v131 != buf)
              {
                free(v131);
              }
            }

            return;
          }

          v108 = *(v16 + 1848);
          if (v108 >= *(sub_100226B68() + 49) && *(v16 + 1856) == 1)
          {
            if (qword_1025D4640 != -1)
            {
              sub_101A4C980();
            }

            v109 = off_1025D4648;
            if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
            {
              v110 = p_info + 3;
              if (*(p_info + 47) < 0)
              {
                v110 = p_info[3];
              }

              v111 = *(v16 + 1848);
              *buf = 136380931;
              *&buf[4] = v110;
              *&buf[12] = 2049;
              *&buf[14] = v111;
              _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_DEFAULT, "#Warning Fence: MiLo, false exit detected, fence, %{private}s, homeLoiProbability, %{private}.2f", buf, 0x16u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A4F260();
            }

            v112 = *(v16 + 1875);
            if (v112 == 1)
            {
              v47 = 0;
              v265 = 0;
            }

            v46 = v112 ^ 1;
            if (*(v16 + 1874) == 1)
            {
              sub_100E27324(v16 + 1312);
              sub_100CC3C38(v16, p_info, v15, *(v16 + 1848));
            }
          }

          else
          {
            if (*(v16 + 1874) == 1)
            {
              sub_100E27334(v16 + 1312);
            }

            v46 = 1;
          }
        }
      }

      goto LABEL_274;
    }

    if (qword_1025D4640 != -1)
    {
      sub_101A4C980();
    }

    v96 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      if (*(p_info + 47) >= 0)
      {
        v97 = p_info + 3;
      }

      else
      {
        v97 = p_info[3];
      }

      v98 = *(v16 + 619);
      v100 = p_info[9];
      v99 = p_info[10];
      v101 = sub_100226BC0(p_info);
      *buf = 136381699;
      *&buf[4] = v97;
      *&buf[12] = 1026;
      *&buf[14] = v98;
      *&buf[18] = 2053;
      *&buf[20] = v100;
      *&buf[28] = 2053;
      *&buf[30] = v99;
      *&buf[38] = 2050;
      *&buf[40] = v101;
      _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_DEFAULT, "#significantRegion: fence, %{private}s, fence event, hint, %{public}d, latLon, %{sensitive}.6lf,%{sensitive}.6lf, radius, %{public}.1lf", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4EDB0(p_info, v16);
    }

    (*(**(v16 + 1768) + 432))(*(v16 + 1768), &v265, p_info, v267);
    if ((*(v16 + 619) & 1) == 0)
    {
      sub_10000EC00(&v253, "SigFence");
      sub_100CBB08C(v16);
      if (v254 < 0)
      {
        v102 = v253;
LABEL_223:
        operator delete(v102);
      }
    }

LABEL_224:
    v248 = 0;
    v47 = 0;
    v46 = 0;
    goto LABEL_226;
  }

  if (sub_100CC3BB8(v16, (p_info + 3), p_info))
  {
    if ((p_info[22] & 1) == 0)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v59 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_FAULT))
      {
        if (*(p_info + 23) >= 0)
        {
          v60 = p_info;
        }

        else
        {
          v60 = *p_info;
        }

        if (*(p_info + 47) >= 0)
        {
          v61 = p_info + 3;
        }

        else
        {
          v61 = p_info[3];
        }

        *buf = 136446467;
        *&buf[4] = v60;
        *&buf[12] = 2081;
        *&buf[14] = v61;
        _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_FAULT, "LOI helper fence %{public}s/%{private}s has isHelperFence=false", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101A4F014();
      }
    }

    if (*(p_info + 47) < 0)
    {
      sub_100007244(__dst, p_info[3], p_info[4]);
    }

    else
    {
      *__dst = *(p_info + 3);
      v264 = p_info[5];
    }

    v64 = *(v16 + 816);
    if (v64 != (v16 + 824))
    {
      while (1)
      {
        isa_high = SHIBYTE(v64[37].isa);
        if (isa_high >= 0)
        {
          isa = HIBYTE(v64[37].isa);
        }

        else
        {
          isa = v64[36].isa;
        }

        v67 = HIBYTE(v264);
        if (SHIBYTE(v264) < 0)
        {
          v67 = __dst[1];
        }

        if (isa != v67)
        {
          goto LABEL_139;
        }

        v68 = isa_high >= 0 ? &v64[35] : v64[35].isa;
        v69 = SHIBYTE(v264) >= 0 ? __dst : __dst[0];
        if (memcmp(v68, v69, isa))
        {
          goto LABEL_139;
        }

        v70 = SHIBYTE(v64[6].isa);
        if (v70 >= 0)
        {
          v71 = HIBYTE(v64[6].isa);
        }

        else
        {
          v71 = v64[5].isa;
        }

        v72 = *(p_info + 23);
        v73 = v72;
        if (v72 < 0)
        {
          v72 = p_info[1];
        }

        if (v71 != v72)
        {
          goto LABEL_139;
        }

        v74 = v70 >= 0 ? &v64[4] : v64[4].isa;
        v75 = v73 >= 0 ? p_info : *p_info;
        if (memcmp(v74, v75, v71))
        {
          goto LABEL_139;
        }

        v78 = sub_100226C1C(v16 + 240, &v64[4]);
        if (v16 + 248 != v78)
        {
          v79 = *(v78 + 280);
          if (v79 != -1)
          {
            break;
          }
        }

        sub_10000EC00(v261, "LoiFence");
        sub_100CBABD0(v16, &v64[4], &v265, v261);
        if (v262 < 0)
        {
          v86 = v261;
LABEL_168:
          operator delete(*v86);
        }

LABEL_139:
        v76 = v64[1].isa;
        if (v76)
        {
          do
          {
            v77 = v76;
            v76 = v76->isa;
          }

          while (v76);
        }

        else
        {
          do
          {
            v77 = v64[2].isa;
            _ZF = *v77 == v64;
            v64 = v77;
          }

          while (!_ZF);
        }

        v64 = v77;
        if (v77 == (v16 + 824))
        {
          goto LABEL_179;
        }
      }

      if (v265 == v79)
      {
        v80 = v46;
      }

      else
      {
        v80 = 1;
      }

      if (v265 == -1 || !v80)
      {
        goto LABEL_139;
      }

      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      log = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        v81 = v64 + 7;
        v215 = v43;
        v243 = v46;
        if (SHIBYTE(v64[9].isa) < 0)
        {
          v81 = v81->isa;
        }

        v82 = SHIBYTE(v264);
        v83 = __dst[0];
        v223 = *(v16 + 619);
        v227 = p_info[9];
        v231 = p_info[10];
        v235 = v81;
        v84 = sub_100226BC0(p_info);
        *buf = 136381955;
        if (v82 >= 0)
        {
          v85 = __dst;
        }

        else
        {
          v85 = v83;
        }

        *&buf[4] = v235;
        *&buf[12] = 2082;
        *&buf[14] = v85;
        *&buf[22] = 1026;
        *&buf[24] = v223;
        *&buf[28] = 2053;
        *&buf[30] = v227;
        *&buf[38] = 2053;
        *&buf[40] = v231;
        *&buf[48] = 2050;
        *&buf[50] = v84;
        _os_log_impl(dword_100000000, log, OS_LOG_TYPE_DEFAULT, "#significantRegion: fence, %{private}s, loi fence event, id, %{public}s, hint, %{public}d, latLon, %{sensitive}.6lf,%{sensitive}.6lf, radius, %{public}.1lf", buf, 0x3Au);
        v43 = v215;
        v46 = v243;
      }

      if (sub_10000A100(121, 2))
      {
        v244 = v46;
        v216 = v43;
        bzero(buf, 0x65CuLL);
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v236 = off_1025D4648;
        loga = v64 + 7;
        if (SHIBYTE(v64[9].isa) < 0)
        {
          loga = loga->isa;
        }

        v87 = SHIBYTE(v264);
        v88 = __dst[0];
        v224 = *(v16 + 619);
        v228 = p_info[9];
        v232 = p_info[10];
        v89 = sub_100226BC0(p_info);
        LODWORD(v275.__r_.__value_.__l.__data_) = 136381955;
        if (v87 >= 0)
        {
          v90 = __dst;
        }

        else
        {
          v90 = v88;
        }

        *(v275.__r_.__value_.__r.__words + 4) = loga;
        WORD2(v275.__r_.__value_.__r.__words[1]) = 2082;
        *(&v275.__r_.__value_.__r.__words[1] + 6) = v90;
        HIWORD(v275.__r_.__value_.__r.__words[2]) = 1026;
        *v276 = v224;
        *&v276[4] = 2053;
        *&v276[6] = v228;
        *&v276[14] = 2053;
        *&v276[16] = v232;
        *&v276[24] = 2050;
        *&v276[26] = v89;
        LODWORD(v213) = 58;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v236, 0, "#significantRegion: fence, %{private}s, loi fence event, id, %{public}s, hint, %{public}d, latLon, %{sensitive}.6lf,%{sensitive}.6lf, radius, %{public}.1lf", &v275, v213);
        v92 = v91;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v91);
        if (v92 != buf)
        {
          free(v92);
        }

        v43 = v216;
        v46 = v244;
      }

      (*(**(v16 + 1768) + 432))(*(v16 + 1768), &v265, &v64[4].isa, v267);
      if (*(v16 + 619))
      {
        goto LABEL_139;
      }

      sub_10000EC00(v259, "LoiFence");
      sub_100CBB08C(v16);
      if ((v260 & 0x80000000) == 0)
      {
        goto LABEL_139;
      }

      v86 = v259;
      goto LABEL_168;
    }

LABEL_179:
    if ((v46 & 1) != 0 && sub_100E26220((v16 + 1312)))
    {
      sub_1004BF718(&v275, p_info);
      *&v281[24] = sub_100CD1DBC(v16 + 904, p_info);
      *&v281[20] = sub_100CD1DFC(v16 + 904);
      v93 = *(v9 + 3);
      v257[2] = *(v9 + 2);
      v257[3] = v93;
      v257[4] = *(v9 + 4);
      v258 = v9[10];
      v94 = *(v9 + 1);
      v257[0] = *v9;
      v257[1] = v94;
      LODWORD(v257[0]) = v265;
      (*(**(v16 + 1768) + 128))(&v304);
      v95 = (*(**(v16 + 1768) + 16))(*(v16 + 1768));
      sub_100E27C80(buf, &v275, v257, (v16 + 1648), &v304, v267, v16 + 144, v95, v15, *(v16 + 613), *(v16 + 728));
      sub_100E27C94(buf);
      *(v9 + 7) = v15;
      *(v9 + 16) = v272;
      if (*(&v328 + 1))
      {
        *v329 = *(&v328 + 1);
        operator delete(*(&v328 + 1));
      }

      if ((buf[31] & 0x80000000) != 0)
      {
        operator delete(*&buf[8]);
      }

      if (*&v289[12])
      {
        *v290 = *&v289[12];
        operator delete(*&v289[12]);
      }

      if ((v289[3] & 0x80000000) != 0)
      {
        operator delete(v285);
      }

      if (SHIBYTE(v278) < 0)
      {
        operator delete(*&v276[24]);
      }

      if ((v276[23] & 0x80000000) != 0)
      {
        operator delete(*v276);
      }

      if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v275.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v264) < 0)
    {
      operator delete(__dst[0]);
    }

    v247 = 0;
    v47 = 0;
    v46 = 0;
    v248 = 1;
    if (!v7)
    {
      goto LABEL_274;
    }

    goto LABEL_227;
  }

  v248 = 0;
  v247 = 0;
  if (v7)
  {
    goto LABEL_227;
  }

LABEL_274:
  if (*(v16 + 1874) == 1)
  {
    v132 = v265 == 1 ? v46 : 0;
    if (v132 == 1)
    {
      sub_100E27354(v16 + 1312);
      if (*(p_info + 43) == 1)
      {
        sub_100E27344(v16 + 1312);
        if (v272 == 4 && *(p_info + 43) == 1)
        {
          sub_100E27364(v16 + 1312);
        }
      }
    }
  }

  if (qword_1025D4640 != -1)
  {
    goto LABEL_401;
  }

  while (1)
  {
    v133 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      if (*(p_info + 47) >= 0)
      {
        v134 = p_info + 3;
      }

      else
      {
        v134 = p_info[3];
      }

      if (*(p_info + 23) >= 0)
      {
        v135 = p_info;
      }

      else
      {
        v135 = *p_info;
      }

      v233 = v135;
      v237 = v134;
      v229 = sub_1001FD6E4(v272);
      v219 = *&v267[12];
      v221 = *&v267[4];
      v225 = *&v267[20];
      sub_10021DA88(*(v9 + 2), &v275);
      logb = v47;
      v245 = v46;
      if ((v275.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v136 = &v275;
      }

      else
      {
        v136 = v275.__r_.__value_.__r.__words[0];
      }

      v217 = v136;
      if ((*(**(v16 + 1768) + 16))(*(v16 + 1768)))
      {
        v137 = "+";
      }

      else
      {
        v137 = "-";
      }

      v138 = *(v16 + 623);
      if (p_info[29] == p_info[28])
      {
        v139 = p_info[9];
      }

      else
      {
        v139 = 0xBFF0000000000000;
      }

      if (p_info[29] == p_info[28])
      {
        v140 = p_info[10];
      }

      else
      {
        v140 = 0xBFF0000000000000;
      }

      v141 = sub_100226BC0(p_info);
      v142 = *(v9 + 5);
      v143 = v15 - v142;
      if (v142 <= 0.0)
      {
        v143 = -1.0;
      }

      v144 = *v9 + 1;
      if (v144 > 4)
      {
        v145 = "---";
      }

      else
      {
        v145 = off_1024A5428[v144];
      }

      if ((v265 + 1) > 4)
      {
        v146 = "---";
      }

      else
      {
        v146 = off_1024A5428[v265 + 1];
      }

      if (v251 > 2)
      {
        v147 = "---";
      }

      else
      {
        v147 = off_1024A5450[v251];
      }

      v148 = p_info[15];
      v149 = *(v16 + 684);
      v150 = *(v16 + 688);
      v151 = *(v16 + 704);
      v152 = *(v16 + 708);
      if (v250 > 2)
      {
        v153 = "---";
      }

      else
      {
        v153 = off_1024A5450[v250];
      }

      v154 = *(v9 + 7);
      v331 = v9[9];
      v155 = *(v9 + 21);
      v333 = *(v9 + 20);
      v156 = v15 - v154;
      if (v154 <= 0.0)
      {
        v156 = -1.0;
      }

      *&buf[4] = v237;
      *&buf[14] = v233;
      *&buf[24] = v229;
      *&buf[34] = v221;
      *&buf[44] = v219;
      *&buf[52] = 2050;
      *&buf[54] = v225;
      *&v306[10] = v217;
      *&v306[20] = v137;
      *&v306[42] = v138;
      *v307 = v139;
      *&buf[32] = 2053;
      *&buf[42] = 2053;
      *&v306[46] = 2053;
      *&v307[8] = 2053;
      *&v307[10] = v140;
      v309 = v148;
      v311 = v149;
      v313 = v150;
      v315 = v151;
      v317 = v152;
      v319 = v143;
      v323 = v145;
      v325 = v146;
      *v327 = v147;
      *&buf[12] = 2081;
      *&buf[22] = 2081;
      *&v306[8] = 2081;
      *&v306[18] = 2081;
      v322 = 2081;
      v324 = 2081;
      v326 = 2081;
      *&v327[8] = 2081;
      *&v327[10] = v153;
      *&v306[28] = 1025;
      *&v306[34] = 1025;
      *&v306[40] = 1025;
      v310 = 1025;
      v312 = 1025;
      v314 = 1025;
      v316 = 1025;
      v320 = 1025;
      *&v327[18] = 1025;
      *&buf[62] = 2049;
      *&v307[18] = 2049;
      v308 = 2049;
      v318 = 2049;
      WORD2(v328) = 2049;
      *(&v328 + 6) = v156;
      v330 = 2048;
      HIWORD(v328) = 1024;
      *&v329[4] = 1024;
      v332 = 1024;
      v334 = 1024;
      v335 = v155;
      *buf = 136388867;
      *v306 = v22;
      v46 = v245;
      *&v306[30] = v245;
      v47 = logb;
      *&v306[36] = logb;
      *&v307[20] = v141;
      v321 = v249;
      LODWORD(v328) = v252;
      *v329 = v247;
      *&v329[6] = v248;
      _os_log_impl(dword_100000000, v133, OS_LOG_TYPE_DEFAULT, "Fence: fenceUpdate, %{private}s, bundle, %{private}s, type, %{private}-16s, loc, %{sensitive}12.7lf, %{sensitive}12.7lf, acc, %{public}4.0lf, distance, %{private}9.0lf, tech, %{private}4s%{private}s, trans, %{private}d, state, %{private}d, cont, %{private}d, fence, %{sensitive}12.8lf, %{sensitive}12.8lf, %{private}.1lf, %{private}.1lf, sCount, %{private}d, %{private}d, trig, %{private}d, %{private}d, sinceLastLoc, %{private}.1lf, events, 0x%{private}08x, status, %{private}-10s => %{private}-10s, settled state, %{private}s ==> %{private}s, cantShiftButNeedTo, %{private}d, sinceLastTransition, %{private}.1lf, significant, %d, loi, %d, lastProximityStateTimestamp, %f, lastProximityState, %d, lastApproachingState, %d", buf, 0x118u);
      if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v275.__r_.__value_.__l.__data_);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A4C9A8(buf);
      if (*(p_info + 47) >= 0)
      {
        v177 = p_info + 3;
      }

      else
      {
        v177 = p_info[3];
      }

      v234 = v177;
      v238 = off_1025D4648;
      if (*(p_info + 23) >= 0)
      {
        v178 = p_info;
      }

      else
      {
        v178 = *p_info;
      }

      v230 = v178;
      v226 = sub_1001FD6E4(v272);
      v220 = *&v267[12];
      v222 = *&v267[4];
      v179 = *&v267[20];
      sub_10021DA88(*(v9 + 2), &v304);
      logc = v47;
      v246 = v46;
      if (v304.conservativeMountedState >= 0)
      {
        v180 = &v304;
      }

      else
      {
        v180 = *&v304.type;
      }

      v218 = v180;
      if ((*(**(v16 + 1768) + 16))(*(v16 + 1768)))
      {
        v181 = "+";
      }

      else
      {
        v181 = "-";
      }

      v214 = *(v16 + 623);
      if (p_info[29] == p_info[28])
      {
        v182 = p_info[9];
      }

      else
      {
        v182 = 0xBFF0000000000000;
      }

      if (p_info[29] == p_info[28])
      {
        v183 = p_info[10];
      }

      else
      {
        v183 = 0xBFF0000000000000;
      }

      v184 = sub_100226BC0(p_info);
      v185 = *(v9 + 5);
      v186 = v15 - v185;
      if (v185 <= 0.0)
      {
        v186 = -1.0;
      }

      v187 = *v9 + 1;
      if (v187 > 4)
      {
        v188 = "---";
      }

      else
      {
        v188 = off_1024A5428[v187];
      }

      if ((v265 + 1) > 4)
      {
        v189 = "---";
      }

      else
      {
        v189 = off_1024A5428[v265 + 1];
      }

      if (v251 > 2)
      {
        v190 = "---";
      }

      else
      {
        v190 = off_1024A5450[v251];
      }

      v191 = p_info[15];
      v192 = *(v16 + 684);
      v193 = *(v16 + 688);
      v194 = *(v16 + 704);
      v195 = *(v16 + 708);
      if (v250 > 2)
      {
        v196 = "---";
      }

      else
      {
        v196 = off_1024A5450[v250];
      }

      v197 = *(v9 + 7);
      *(&v293 + 1) = v9[9];
      v198 = *(v9 + 21);
      *(&v294 + 2) = *(v9 + 20);
      v199 = v15 - v197;
      if (v197 <= 0.0)
      {
        v199 = -1.0;
      }

      *(v275.__r_.__value_.__r.__words + 4) = v234;
      *(&v275.__r_.__value_.__r.__words[1] + 6) = v230;
      *v276 = v226;
      *&v276[10] = v222;
      *&v276[20] = v220;
      *&v276[28] = 2050;
      *&v276[30] = v179;
      *&v279[2] = v218;
      *&v279[12] = v181;
      *(&v280 + 2) = v214;
      *(&v280 + 1) = v182;
      *&v276[8] = 2053;
      *&v276[18] = 2053;
      WORD3(v280) = 2053;
      *v281 = 2053;
      *&v281[2] = v183;
      *&v281[22] = v191;
      LODWORD(v282) = v192;
      *(&v282 + 6) = v193;
      HIDWORD(v282) = v194;
      *&v283[2] = v195;
      *&v283[8] = v186;
      v285 = v188;
      v287 = v189;
      *v289 = v190;
      WORD2(v275.__r_.__value_.__r.__words[1]) = 2081;
      HIWORD(v275.__r_.__value_.__r.__words[2]) = 2081;
      *v279 = 2081;
      *&v279[10] = 2081;
      v284 = 2081;
      v286 = 2081;
      v288 = 2081;
      *&v289[8] = 2081;
      *&v289[10] = v196;
      *&v279[20] = 1025;
      *&v279[26] = 1025;
      LOWORD(v280) = 1025;
      *&v281[30] = 1025;
      WORD2(v282) = 1025;
      WORD5(v282) = 1025;
      *v283 = 1025;
      *&v283[16] = 1025;
      *&v289[18] = 1025;
      *v290 = v252;
      v277 = 2049;
      *&v281[10] = 2049;
      *&v281[20] = 2049;
      *&v283[6] = 2049;
      *&v290[4] = 2049;
      *&v290[6] = v199;
      v46 = v246;
      v292 = v247;
      *(&v293 + 2) = v248;
      WORD3(v293) = 2048;
      v291 = 1024;
      LOWORD(v293) = 1024;
      LOWORD(v294) = 1024;
      WORD3(v294) = 1024;
      DWORD2(v294) = v198;
      LODWORD(v275.__r_.__value_.__l.__data_) = 136388867;
      v278 = v22;
      *&v279[22] = v246;
      v47 = logc;
      *&v279[28] = logc;
      *&v281[12] = v184;
      *&v283[18] = v249;
      LODWORD(v213) = 280;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v238, 0, "Fence: fenceUpdate, %{private}s, bundle, %{private}s, type, %{private}-16s, loc, %{sensitive}12.7lf, %{sensitive}12.7lf, acc, %{public}4.0lf, distance, %{private}9.0lf, tech, %{private}4s%{private}s, trans, %{private}d, state, %{private}d, cont, %{private}d, fence, %{sensitive}12.8lf, %{sensitive}12.8lf, %{private}.1lf, %{private}.1lf, sCount, %{private}d, %{private}d, trig, %{private}d, %{private}d, sinceLastLoc, %{private}.1lf, events, 0x%{private}08x, status, %{private}-10s => %{private}-10s, settled state, %{private}s ==> %{private}s, cantShiftButNeedTo, %{private}d, sinceLastTransition, %{private}.1lf, significant, %d, loi, %d, lastProximityStateTimestamp, %f, lastProximityState, %d, lastApproachingState, %d", &v275, v213);
      v201 = v200;
      if (SHIBYTE(v304.conservativeMountedState) < 0)
      {
        operator delete(*&v304.type);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v201);
      if (v201 != buf)
      {
        free(v201);
      }
    }

    v157 = v265;
    if (v265 != -1)
    {
      *v9 = v265;
      if (v43 == 1 && !v157)
      {
        v158 = 1;
LABEL_329:
        *(v9 + 17) = v158;
        goto LABEL_330;
      }

      if (!v157 && v251 != 2)
      {
        v158 = v250;
        if (v250 == 2)
        {
          goto LABEL_329;
        }
      }
    }

LABEL_330:
    if ((v47 | v46) == 1)
    {
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v159 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "handleLocationMonitoredFence";
        _os_log_impl(dword_100000000, v159, OS_LOG_TYPE_DEFAULT, "%s, issuing state/transition", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4F378();
      }

      sub_100C936B4(&v275);
      std::string::operator=(&v275, p_info);
      std::string::operator=(v276, p_info + 1);
      std::string::operator=(&v276[24], p_info + 2);
      *&v281[16] = *(p_info + 17);
      v282 = *(p_info + 19);
      *v283 = *(p_info + 21);
      *&v283[13] = *(p_info + 181);
      *v279 = *(p_info + 9);
      *&v279[16] = *(p_info + 11);
      v280 = *(p_info + 13);
      *v281 = *(p_info + 15);
      std::string::operator=(&v285, p_info + 8);
      v160 = *&v289[4];
      *&v289[4] = p_info[27];

      if (&v275 != p_info)
      {
        sub_1006BA434(&v289[12], p_info[28], p_info[29], (p_info[29] - p_info[28]) >> 4);
      }

      *&v281[8] = v9[5];
      v300 = v273;
      *v301 = v274[0];
      *&v301[12] = *(v274 + 12);
      v296 = v269;
      v297 = v270;
      *&v281[16] = v249;
      v298 = v271;
      v299 = v272;
      v294 = *&v267[16];
      v295 = v268;
      v293 = *v267;
      v161 = *(v9 + 7);
      v162 = v15 - v161;
      v163 = v161 <= 0.0;
      v292 = v265;
      v302 = v43;
      v164 = -1.0;
      if (!v163)
      {
        v164 = v162;
      }

      *&v282 = v164;
      *&v281[24] = sub_100CD1DBC(v16 + 904, p_info);
      *&v281[20] = sub_100CD1DFC(v16 + 904);
      if (qword_1025D4640 != -1)
      {
        sub_101A4C980();
      }

      v165 = off_1025D4648;
      if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "handleLocationMonitoredFence";
        _os_log_impl(dword_100000000, v165, OS_LOG_TYPE_DEFAULT, "%s, collecting state change metrics", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A4C9A8(buf);
        v304.type = 136315138;
        *&v304.confidence = "handleLocationMonitoredFence";
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "%s, collecting state change metrics", &v304);
        v203 = v202;
        sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v202);
        if (v203 != buf)
        {
          free(v203);
        }
      }

      memcpy(v303, __src, sizeof(v303));
      v166 = *(v16 + 1728);
      *&v303[9] = *(v16 + 1712);
      *&v303[11] = v166;
      *&v303[13] = *(v16 + 1744);
      v303[15] = *(v16 + 1760);
      v167 = *(v16 + 1664);
      *&v303[1] = *(v16 + 1648);
      *&v303[3] = v167;
      v168 = *(v16 + 1696);
      *&v303[5] = *(v16 + 1680);
      *&v303[7] = v168;
      *buf = 6;
      sub_100CBAF2C(v16, buf, &v275);
      if (v46)
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v169 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "handleLocationMonitoredFence";
          _os_log_impl(dword_100000000, v169, OS_LOG_TYPE_DEFAULT, "%s, issuing transition", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4C9A8(buf);
          v304.type = 136315138;
          *&v304.confidence = "handleLocationMonitoredFence";
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "%s, issuing transition", &v304);
          v205 = v204;
          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v204);
          if (v205 != buf)
          {
            free(v205);
          }
        }

        *buf = 0;
        sub_100CBAF2C(v16, buf, &v275);
        if (sub_100E26220((v16 + 1312)))
        {
          (*(**(v16 + 1768) + 128))(&v304);
          v170 = (*(**(v16 + 1768) + 16))(*(v16 + 1768));
          sub_100E27C80(buf, &v275, v9, (v16 + 1648), &v304, v267, v16 + 144, v170, v15, *(v16 + 613), *(v16 + 728));
          sub_100E27C94(buf);
          if (*(&v328 + 1))
          {
            *v329 = *(&v328 + 1);
            operator delete(*(&v328 + 1));
          }

          if ((buf[31] & 0x80000000) != 0)
          {
            operator delete(*&buf[8]);
          }
        }

        *(v9 + 7) = v15;
        *(v9 + 16) = v272;
      }

      else if (v47)
      {
        if (qword_1025D4640 != -1)
        {
          sub_101A4C980();
        }

        v171 = off_1025D4648;
        if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "handleLocationMonitoredFence";
          _os_log_impl(dword_100000000, v171, OS_LOG_TYPE_DEFAULT, "%s, issuing state", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A4C9A8(buf);
          v304.type = 136315138;
          *&v304.confidence = "handleLocationMonitoredFence";
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "%s, issuing state", &v304);
          v207 = v206;
          sub_100152C7C("Generic", 1, 0, 2, "void CLFenceMonitor::handleLocationMonitoredFence(const CFAbsoluteTime, const CLDaemonLocation &, const CLDaemonLocationPrivate &, const CLFenceManager_Type::Fence &, CLFenceMonitorLogic::FenceMonitoringStatus &, const BOOL, const BOOL)", "%s\n", v206);
          if (v207 != buf)
          {
            free(v207);
          }
        }

        *buf = 1;
        sub_100CBAF2C(v16, buf, &v275);
      }

      if (*&v289[12])
      {
        *v290 = *&v289[12];
        operator delete(*&v289[12]);
      }

      if ((v289[3] & 0x80000000) != 0)
      {
        operator delete(v285);
      }

      if (SHIBYTE(v278) < 0)
      {
        operator delete(*&v276[24]);
      }

      if ((v276[23] & 0x80000000) != 0)
      {
        operator delete(*v276);
      }

      if (SHIBYTE(v275.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v275.__r_.__value_.__l.__data_);
      }

      v157 = v265;
    }

    if (*(v9 + 4) < 0.0 || vabdd_f64(*(v9 + 3), v22) >= 100.0 || v157 != v43 || *(v9 + 17) != v251)
    {
      v172 = v157 != v43;
      v173 = sub_100CC2D14(v16, p_info, v9, v267);
      sub_100CC21BC(v16, p_info, v9, v173, v172, v15);
      *(v9 + 3) = v22;
      *(v9 + 4) = v15;
    }

    v174 = v272;
    if (v272 > 0xD)
    {
      goto LABEL_386;
    }

    if (((1 << v272) & 0x2E1E) != 0)
    {
      break;
    }

    if (v272 != 5)
    {
      goto LABEL_386;
    }

    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (qword_1025D4600 != -1)
    {
      sub_101A4F478();
    }

    v9 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v175 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_log_impl(dword_100000000, v175, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101A4F478();
      }
    }

    v176 = qword_1025D4608;
    if (os_signpost_enabled(qword_1025D4608))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v176, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "skyhook is no longer supported", "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D4600 != -1)
      {
        sub_101A4F478();
      }
    }

    v16 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2082;
      *&buf[20] = "assert";
      *&buf[28] = 2081;
      *&buf[30] = "false";
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:skyhook is no longer supported, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Core/Fence/CLFenceMonitor.mm", 3148, "handleLocationMonitoredFence");
    __break(1u);
LABEL_401:
    sub_101A4C980();
  }

  *(v9 + 5) = v15;
  *(v9 + 12) = v174;
  *(v9 + 2) = v22;
  if ((p_info[20] & 0x80) != 0 || *(p_info + 176) == 1)
  {
    *(v9 + 20) = sub_1002D7A58(v267, p_info, v9);
    *(v9 + 21) = 0;
    *(v9 + 9) = v15;
  }

LABEL_386:
  if (sub_10021DBD8(v16 + 904, v15))
  {
    sub_100E270D4(v16 + 1312);
  }
}

void sub_10022C7A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10022F038([*(a1 + 8) fitnessModeStateMachine], a2);
  if (sub_10018E9E4([*(a1 + 8) fitnessModeStateMachine]))
  {
    if ([*(a1 + 8) pipelinedSeeded])
    {
      sub_10000EC00(__p, "startstop");
      sub_10017F2F4(a1, 2, __p);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if ([*(a1 + 8) pipelinedSeeded])
  {
    sub_10023E5A8(a1, a2, a3);
  }

  else
  {
    sub_10018EA08(a1, a2, a3);
  }
}

void sub_10022C868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_10022C884(uint64_t a1, __int128 *a2, char *__src)
{
  v5 = *a2;
  *(a1 + 132) = a2[1];
  *(a1 + 116) = v5;
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  *(a1 + 196) = a2[5];
  *(a1 + 180) = v8;
  *(a1 + 164) = v7;
  *(a1 + 148) = v6;
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  *(a1 + 256) = *(a2 + 140);
  *(a1 + 244) = v11;
  *(a1 + 228) = v10;
  *(a1 + 212) = v9;
  memcpy((a1 + 272), __src, 0x201uLL);
  v12 = *(__src + 65);
  v13 = *(__src + 66);
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 792) = v12;
  v14 = *(a1 + 800);
  *(a1 + 800) = v13;
  if (v14)
  {
    sub_100008080(v14);
  }

  v15 = *(__src + 536);
  v16 = *(__src + 568);
  *(a1 + 824) = *(__src + 552);
  *(a1 + 840) = v16;
  *(a1 + 808) = v15;
  result = *(__src + 584);
  v18 = *(__src + 600);
  v19 = *(__src + 616);
  *(a1 + 897) = *(__src + 625);
  *(a1 + 872) = v18;
  *(a1 + 888) = v19;
  *(a1 + 856) = result;
  return result;
}

uint64_t sub_10022C954(uint64_t a1, double *a2, double *a3, double *a4, _BYTE *a5)
{
  v19 = qword_102639D28;
  (*(*qword_102639D28 + 16))(qword_102639D28);
  v21 = 256;
  if (*a2 <= *(a1 + 32) || *a2 >= *(a1 + 40) || *a3 <= *(a1 + 48) || *a3 >= *(a1 + 56))
  {
    goto LABEL_15;
  }

  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  if (v12 == v11)
  {
    sub_1012C2B98(a1, v10);
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
  }

  if (v11 == v12)
  {
LABEL_15:
    v15 = 0;
  }

  else
  {
    while (1)
    {
      v13 = sub_1012C2F58(v11, v10, *a2, *a3);
      if (v13)
      {
        v18 = 0;
        v17 = 0.0;
        v14 = sub_10065DD9C(v13, v10);
        if (sub_100662B7C(v14, (v11 + 32), &v18, &v17, *a2, *a3))
        {
          if ((v18 & 1) != 0 || *a5 == 1 && v17 <= *a4)
          {
            break;
          }
        }
      }

      v15 = 0;
      v11 += 40;
      if (v11 == v12)
      {
        goto LABEL_16;
      }
    }

    v15 = 1;
  }

LABEL_16:
  if (HIBYTE(v21) == 1)
  {
    if (v21)
    {
      pthread_mutex_unlock(v20);
    }

    else
    {
      (*(*v19 + 24))(v19);
    }
  }

  return v15;
}

void sub_10022CB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10022CB20(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *result = *a3;
  *(result + 16) = v3;
  v4 = *(a3 + 32);
  v5 = *(a3 + 48);
  v6 = *(a3 + 80);
  *(result + 64) = *(a3 + 64);
  *(result + 80) = v6;
  *(result + 32) = v4;
  *(result + 48) = v5;
  v7 = *(a3 + 96);
  v8 = *(a3 + 112);
  v9 = *(a3 + 128);
  *(result + 140) = *(a3 + 140);
  *(result + 112) = v8;
  *(result + 128) = v9;
  *(result + 96) = v7;
  *&v7 = *(a3 + 88);
  v10 = (*&v7 * 1000000000.0) + a2;
  if (*&v7 < 0.0)
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  *(result + 160) = a2;
  *(result + 168) = v10;
  return result;
}

uint64_t sub_10022CB7C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (sub_100072814(a2))
  {
    v8 = *(a2 + 16);
    *(a1 + 32) = *a2;
    *(a1 + 48) = v8;
    v9 = *(a2 + 32);
    v10 = *(a2 + 48);
    v11 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 64);
    *(a1 + 112) = v11;
    *(a1 + 64) = v9;
    *(a1 + 80) = v10;
    v12 = *(a2 + 96);
    v13 = *(a2 + 112);
    v14 = *(a2 + 128);
    *(a1 + 172) = *(a2 + 140);
    *(a1 + 144) = v13;
    *(a1 + 160) = v14;
    *(a1 + 128) = v12;
    *v42 = 0;
    result = sub_10022CF50(a1 + 8, v42);
    if (result)
    {
      v16 = sub_1000081AC();
      v17 = *(a1 + 192);
      v18 = vabdd_f64(v16, v17);
      if (v17 < 0.0 || v18 > 600.0)
      {
        *v42 = 0;
        if (sub_10022CF50(a1 + 8, v42))
        {
          v19 = *(a1 + 16);
          if (v19)
          {
            v20 = a1 + 16;
            do
            {
              v21 = *(v19 + 32);
              if ((v21 & 0x80000000) == 0)
              {
                v20 = v19;
              }

              v19 = *(v19 + ((v21 >> 28) & 8));
            }

            while (v19);
            if (v20 != a1 + 16 && *(v20 + 32) <= 0)
            {
              sub_100109D18((a1 + 208), *(v20 + 40), *(v20 + 48), *(a1 + 36), *(a1 + 44), 0.0);
              v23 = v22;
              if (v22 <= a4)
              {
                v24 = 1;
              }

              else
              {
                v24 = 2;
              }

              *(a1 + 200) = v24;
              v25 = (a1 + 200);
              *(a1 + 192) = v16;
              if (qword_1025D46B0 != -1)
              {
                sub_101B9B0B8();
              }

              v26 = qword_1025D46B8;
              if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
              {
                v27 = *v25;
                *v42 = 67174913;
                *&v42[4] = v27;
                *&v42[8] = 2050;
                *&v42[10] = v23;
                _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "CLGMTPS,currentServiceMode,%{private}d,distance,%{public}.1lf", v42, 0x12u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101BA1BA0();
              }

              v28 = *(a1 + 144);
              v45 = *(a1 + 128);
              v46 = v28;
              v47[0] = *(a1 + 160);
              *(v47 + 12) = *(a1 + 172);
              v29 = *(a1 + 80);
              *&v42[32] = *(a1 + 64);
              *&v42[48] = v29;
              v30 = *(a1 + 112);
              v43 = *(a1 + 96);
              v44 = v30;
              v31 = *(a1 + 48);
              v32 = *v25;
              *v42 = *(a1 + 32);
              *&v42[16] = v31;
              (*(a3 + 16))(a3, v42, v32 == 2);
            }
          }
        }
      }

      if (qword_1025D46B0 != -1)
      {
        sub_101B9B0B8();
      }

      v33 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v34 = *(a1 + 108);
        v35 = *(a1 + 128);
        v36 = *(a1 + 36);
        v37 = *(a1 + 44);
        v38 = *(a1 + 200);
        *v42 = 134284801;
        *&v42[4] = v34;
        *&v42[12] = 1026;
        *&v42[14] = v35;
        *&v42[18] = 2053;
        *&v42[20] = v36;
        *&v42[28] = 2053;
        *&v42[30] = v37;
        *&v42[38] = 1025;
        *&v42[40] = v38;
        *&v42[44] = 2049;
        *&v42[46] = v18;
        _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEBUG, "CLGMTPS,received valid location,time,%{private}.1lf,type,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,touristMode,%{private}d,dT,%{private}.1lf", v42, 0x36u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101BA1CA8(a1, v18);
      }

      return 1;
    }
  }

  else
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101B9B124();
    }

    v39 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a2 + 76);
      v41 = *(a2 + 96);
      *v42 = 134283777;
      *&v42[4] = v40;
      *&v42[12] = 1026;
      *&v42[14] = v41;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_ERROR, "CLGMTPS,received invalid location,time,%{private}.1lf,type,%{public}d,", v42, 0x12u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101BA1A90();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10022CF50(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = *a2;
  while (1)
  {
    v6 = *(v3 + 8);
    if (v5 >= v6)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return 0;
    }
  }

  if (v6 < v5)
  {
    ++v3;
    goto LABEL_7;
  }

  v9 = *v3;
  v10 = v3;
  if (*v3)
  {
    v10 = v3;
    do
    {
      if (*(v9 + 8) >= v5)
      {
        v10 = v9;
      }

      v9 = v9[*(v9 + 8) < v5];
    }

    while (v9);
  }

  for (i = v3[1]; i; i = *(i + 8 * v14))
  {
    v12 = *(i + 32);
    v13 = v5 < v12;
    v14 = v5 >= v12;
    if (v13)
    {
      v2 = i;
    }
  }

  if (v10 == v2)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v15 = v10[1];
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
        v16 = v10[2];
        v17 = *v16 == v10;
        v10 = v16;
      }

      while (!v17);
    }

    ++v7;
    v10 = v16;
  }

  while (v16 != v2);
  return v7;
}

uint64_t sub_10022D024(double *a1)
{
  if (*a1 <= 0.0)
  {
    return 1;
  }

  v2 = vabdd_f64(sub_1000081AC(), *a1);
  v3 = sub_10022D44C(a1);
  if (v3 && v2 <= 86400.0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101B9B124();
    }

    v4 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v7 = 134349568;
      v8 = v3;
      v9 = 2050;
      v10 = v2;
      v11 = 2050;
      v12 = 0x40F5180000000000;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLGMTPS,LOIs already exist,%{public}ld,and it's not time to refresh yet,%{public}.1lf,threshold,%{public}.1lf", &v7, 0x20u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101B9C6F4(v3);
      return 0;
    }

    return result;
  }

  if (v2 > 3600.0)
  {
    return 1;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101B9B124();
  }

  v6 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 134349568;
    v8 = v3;
    v9 = 2050;
    v10 = v2;
    v11 = 2050;
    v12 = 0x40AC200000000000;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLGMTPS,home work school LOIs does not exist,%{public}ld,but we recently requested,%{public}.1lf,need to wait,%{public}.1lf", &v7, 0x20u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101B9C5EC(v3);
    return 0;
  }

  return result;
}

uint64_t sub_10022D44C(uint64_t a1)
{
  v7 = 0;
  v2 = sub_10022CF50(a1 + 8, &v7);
  v6 = 1;
  v3 = sub_10022CF50(a1 + 8, &v6) + v2;
  v5 = 2;
  return v3 + sub_10022CF50(a1 + 8, &v5);
}

void sub_10022DCDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10022DD34(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *sub_1000F2B3C(a1, &v6, a2);
  if (!result)
  {
    sub_100732980();
  }

  return result;
}

void sub_10022DDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (a3 + 20);
  if (*(a3 + 20) <= 165.0)
  {
    sub_10022CB20(v20, a2, a3);
    v9 = *(a1 + 8);
    v29 = v20[8];
    v30 = v20[9];
    v31 = v20[10];
    v25 = v20[4];
    v26 = v20[5];
    v27 = v20[6];
    v28 = v20[7];
    *buf = v20[0];
    v22 = v20[1];
    v23 = v20[2];
    v24 = v20[3];
    [v9 setLatestPosition:buf];
    [*(a1 + 8) latestNavModeEstimate];
    v11 = v10;
    v12 = sub_1001FB6D0([*(a1 + 8) navModeEstimator], a3);
    [*(a1 + 8) setLatestNavModeEstimate:{v12, v13 & 0xFFFFFFFFFFLL}];
    [*(a1 + 8) latestNavModeEstimate];
    v15 = v14;
    if (v11 != v14)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v16 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
      {
        *buf = 67174657;
        *&buf[4] = v15;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "updateLatestEstimate state,%{private}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186DB1C();
      }

      v17 = [*(a1 + 8) pipelinedSeeded];
      if (v15 == 2)
      {
        if (v17)
        {
          sub_10000EC00(buf, "navmode");
          sub_10017F2F4(a1, 2, buf);
          if (SBYTE7(v22) < 0)
          {
            operator delete(*buf);
          }
        }
      }
    }

    sub_10000EC00(buf, "updateLatestEstimate");
    sub_10022C7A4(a1, a2, buf);
    if (SBYTE7(v22) < 0)
    {
      operator delete(*buf);
    }
  }

  else if ([*(a1 + 8) pipelinedSeeded])
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v5 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v6 = *v4;
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Ignoring LocationController fix with horizontalAccuracy %f because the existing fix would be more helpful anyway.", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186DC0C();
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v18 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v19 = *v4;
      *buf = 134217984;
      *&buf[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "Ignoring LocationController fix with horizontalAccuracy %f because the existing fix would be more helpful anyway.", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186DD00();
    }
  }
}

void sub_10022E0EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022E114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([*(a1 + 152) indoord])
  {
    v6 = [[CLGpsPosition alloc] initWithLocation:a2 andPrivateLocation:{v47, sub_10023F924(v47, a3)}];
    if (qword_1025D4620 != -1)
    {
      sub_101B1AFCC();
    }

    v7 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if (v6)
      {
        objc_msgSend_gpsLocation(v6);
        v8 = *(v47 + 4);
        objc_msgSend_gpsLocation(v6);
        v9 = *(v25 + 12);
        objc_msgSend_gpsLocation(v6);
        v10 = v22;
      }

      else
      {
        v10 = 0;
        v9 = 0;
        v8 = 0;
        memset(v47, 0, 156);
        v31 = 0u;
        memset(v32, 0, 28);
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        memset(v25, 0, sizeof(v25));
        v23 = 0u;
        memset(v24, 0, 28);
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        memset(v17, 0, sizeof(v17));
      }

      *buf = 134546177;
      *&buf[4] = v8;
      *&buf[12] = 2053;
      *&buf[14] = v9;
      *&buf[22] = 1025;
      *&buf[24] = v10;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Notifying pipelined of a new outdoor location @ %{sensitive}.6lf, %{sensitive}.6lf, type, %{private}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(v47, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101B1AFCC();
      }

      v11 = qword_1025D4628;
      if (v6)
      {
        objc_msgSend_gpsLocation(v6);
        v12 = *(v25 + 4);
        objc_msgSend_gpsLocation(v6);
        v13 = *(v17 + 12);
        objc_msgSend_gpsLocation(v6);
        v14 = v38;
      }

      else
      {
        v14 = 0;
        v13 = 0;
        v12 = 0;
        v31 = 0u;
        memset(v32, 0, 28);
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        memset(v25, 0, sizeof(v25));
        v23 = 0u;
        memset(v24, 0, 28);
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        memset(v17, 0, sizeof(v17));
        v39 = 0u;
        memset(v40, 0, sizeof(v40));
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        memset(buf, 0, sizeof(buf));
      }

      v41 = 134546177;
      v42 = v12;
      v43 = 2053;
      v44 = v13;
      v45 = 1025;
      v46 = v14;
      _os_log_send_and_compose_impl(2, 0, v47, 1628, dword_100000000, v11, 2, "Notifying pipelined of a new outdoor location @ %{sensitive}.6lf, %{sensitive}.6lf, type, %{private}d", &v41, 28, v17[0], v17[1], v18, v19, v20, v21, v22, v23, v24[0], *&v24[1], DWORD2(v24[1]), v25[0], v25[1], v26, v27, v28, v29, v30, v31, v32[0], *&v32[1], DWORD2(v32[1]), *buf, *&buf[8], *&buf[16], *&buf[24], v34, v35, v36, v37, v38);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "void CLPipelineLocationProvider::sendOutdoorLocationToPipelined(const CLDaemonLocation &, const CLDaemonLocationPrivate &) const", "%s\n", v15);
      if (v16 != v47)
      {
        free(v16);
      }
    }

    [objc_msgSend(*(a1 + 152) "indoord")];
  }
}

void sub_10022E474(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 56) "silo")];
  if (qword_1025D47F0 != -1)
  {
    dispatch_once(&qword_1025D47F0, &stru_102502540);
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v67 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLNearbydInterfaceManager::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      dispatch_once(&qword_1025D47F0, &stru_102502540);
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      *v83 = 0;
      *&v83[4] = 2082;
      *&v83[6] = "";
      *&v83[14] = 2082;
      *&v83[16] = "activity";
      *&v83[24] = 2050;
      *&v83[26] = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLNearbydInterfaceManager::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v67 = 0;
  }

  if ((*a4 & 1) == 0)
  {
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v32 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,gizmo is not nearby.", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_64;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    LOWORD(v68) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#assistancerelay,gizmo is not nearby.", &v68, 2);
    v34 = v33;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v33);
LABEL_49:
    if (v34 != buf)
    {
      free(v34);
    }

    goto LABEL_64;
  }

  v9 = sub_1000081AC();
  v10 = *(a4 + 48);
  sub_100109D18((a4 + 336), *(a3 + 4), *(a3 + 12), *(a4 + 180), *(a4 + 188), 0.0);
  if (*a2 != 5)
  {
    if (qword_1025D4660 != -1)
    {
      dispatch_once(&qword_1025D4660, &stru_102502560);
    }

    v35 = qword_1025D4668;
    if (os_log_type_enabled(qword_1025D4668, OS_LOG_TYPE_DEBUG))
    {
      v36 = *a2;
      *buf = 67109120;
      *v83 = v36;
      _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,Got unknown notification %d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_64;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4660 != -1)
    {
      dispatch_once(&qword_1025D4660, &stru_102502560);
    }

    v37 = *a2;
    v68 = 67109120;
    LODWORD(v69) = v37;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4668, 2, "#NearbydIfMgr,#assistancerelay,Got unknown notification %d", &v68);
    v34 = v38;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v38);
    goto LABEL_49;
  }

  v12 = v11;
  if (!sub_100072814(a3))
  {
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v39 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,#warning.lastReceivedLocation is invalid.", buf, 2u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_64;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    LOWORD(v68) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#assistancerelay,#warning.lastReceivedLocation is invalid.", &v68, 2);
    v34 = v40;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v40);
    goto LABEL_49;
  }

  v13 = v9 - v10;
  if (*(a3 + 44) >= 11.0)
  {
    v14 = (*(a3 + 96) & 0xFFFFFFF7) == 1;
    if ((*(a3 + 96) & 0xFFFFFFF7) == 1 && v13 >= 1800.0)
    {
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v41 = off_1025D47A8;
      if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
      {
        v42 = *(a3 + 4);
        v43 = *(a3 + 12);
        v44 = *(a3 + 20);
        v45 = *(a3 + 76);
        v46 = *(a3 + 88);
        v47 = *(a3 + 84);
        v48 = *(a3 + 44);
        *buf = 134547201;
        *v83 = v42;
        *&v83[8] = 2053;
        *&v83[10] = v43;
        *&v83[18] = 2048;
        *&v83[20] = v44;
        *&v83[28] = 2048;
        *&v83[30] = v45;
        v84 = 2048;
        v85 = v46;
        v86 = 1024;
        v87 = v47;
        v88 = 2048;
        v89 = v48;
        _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,moving vehicle,lat,%{sensitive}+.6f,lon,%{sensitive}.6f,acc, %.2f,timestamp,%.2f,lifespan,%.2f,confidence,%d,speed,%.3f", buf, 0x44u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_58;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D47A0 != -1)
      {
        dispatch_once(&qword_1025D47A0, &stru_102502520);
      }

      v57 = *(a3 + 4);
      v58 = *(a3 + 12);
      v59 = *(a3 + 20);
      v60 = *(a3 + 76);
      v61 = *(a3 + 88);
      v62 = *(a3 + 84);
      v63 = *(a3 + 44);
      v68 = 134547201;
      v69 = v57;
      v70 = 2053;
      v71 = v58;
      v72 = 2048;
      v73 = v59;
      v74 = 2048;
      v75 = v60;
      v76 = 2048;
      v77 = v61;
      v78 = 1024;
      v79 = v62;
      v80 = 2048;
      v81 = v63;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#assistancerelay,moving vehicle,lat,%{sensitive}+.6f,lon,%{sensitive}.6f,acc, %.2f,timestamp,%.2f,lifespan,%.2f,confidence,%d,speed,%.3f", &v68, 68);
      v31 = v64;
      sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v64);
      goto LABEL_70;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v13 < 3600.0 || v14)
  {
    goto LABEL_64;
  }

  if (v12 > 1000.0)
  {
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v15 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v16 = *(a3 + 4);
      v17 = *(a3 + 12);
      v18 = *(a3 + 20);
      v19 = *(a3 + 76);
      v20 = *(a3 + 88);
      v21 = *(a3 + 84);
      v22 = *(a3 + 44);
      *buf = 134547201;
      *v83 = v16;
      *&v83[8] = 2053;
      *&v83[10] = v17;
      *&v83[18] = 2048;
      *&v83[20] = v18;
      *&v83[28] = 2048;
      *&v83[30] = v19;
      v84 = 2048;
      v85 = v20;
      v86 = 1024;
      v87 = v21;
      v88 = 2048;
      v89 = v22;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,non static,lat,%{sensitive}+.6f,lon,%{sensitive}.6f,acc,%.2f,timestamp, %.2f,lifespan,%.2f,confidence,%d,speed,%.3f", buf, 0x44u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_58;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    v23 = *(a3 + 4);
    v24 = *(a3 + 12);
    v25 = *(a3 + 20);
    v26 = *(a3 + 76);
    v27 = *(a3 + 88);
    v28 = *(a3 + 84);
    v29 = *(a3 + 44);
    v68 = 134547201;
    v69 = v23;
    v70 = 2053;
    v71 = v24;
    v72 = 2048;
    v73 = v25;
    v74 = 2048;
    v75 = v26;
    v76 = 2048;
    v77 = v27;
    v78 = 1024;
    v79 = v28;
    v80 = 2048;
    v81 = v29;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#assistancerelay,non static,lat,%{sensitive}+.6f,lon,%{sensitive}.6f,acc,%.2f,timestamp, %.2f,lifespan,%.2f,confidence,%d,speed,%.3f", &v68, 68);
    v31 = v30;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v30);
LABEL_70:
    if (v31 != buf)
    {
      free(v31);
    }

LABEL_58:
    v49 = *(a3 + 16);
    *(a4 + 176) = *a3;
    *(a4 + 192) = v49;
    v50 = *(a3 + 32);
    v51 = *(a3 + 48);
    v52 = *(a3 + 80);
    *(a4 + 240) = *(a3 + 64);
    *(a4 + 256) = v52;
    *(a4 + 208) = v50;
    *(a4 + 224) = v51;
    v53 = *(a3 + 96);
    v54 = *(a3 + 112);
    v55 = *(a3 + 128);
    *(a4 + 316) = *(a3 + 140);
    *(a4 + 288) = v54;
    *(a4 + 304) = v55;
    *(a4 + 272) = v53;
    sub_101801C14(a4);
    goto LABEL_64;
  }

  if (qword_1025D47A0 != -1)
  {
    dispatch_once(&qword_1025D47A0, &stru_102502520);
  }

  v56 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "#NearbydIfMgr,#assistancerelay,device is static.", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D47A0 != -1)
    {
      dispatch_once(&qword_1025D47A0, &stru_102502520);
    }

    LOWORD(v68) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D47A8, 2, "#NearbydIfMgr,#assistancerelay,device is static.", &v68, 2);
    v34 = v65;
    sub_100152C7C("Generic", 1, 0, 2, "void CLNearbydInterfaceManager::onLocationNotification(int, const CLLocationProvider_Type::Notification &, const CLLocationProvider_Type::NotificationData &)", "%s\n", v65);
    goto LABEL_49;
  }

LABEL_64:
  if (v67 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10022EFB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_activity_scope_state_s state, char a13)
{
  if (a13 == 1)
  {
    os_activity_scope_leave(&state);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022EFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  sub_10022DDCC(*(a1 + 144), v6.__d_.__rep_, a4);

  sub_10022E114(a1, a4, a4 + 160);
}

void sub_10022F038(uint64_t result, uint64_t a2)
{
  v4 = *result;
  if (*result > 4)
  {
    if (v4 == 5)
    {
      if (a2 - *(result + 8) > 1000000000 * *(result + 32))
      {
        v5 = 1;
      }

      else
      {
        v5 = 5;
      }
    }

    else
    {
      if (v4 != 6)
      {
        return;
      }

      if (a2 - *(result + 8) <= 1000000000 * *(result + 40))
      {
        v5 = 6;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else if (v4 == 2)
  {
    if (a2 - *(result + 8) <= 1000000000 * *(result + 24))
    {
      v5 = 2;
    }

    else
    {
      v5 = 4;
    }
  }

  else
  {
    if (v4 != 3)
    {
      return;
    }

    if (a2 - *(result + 8) <= 1000000000 * *(result + 16))
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }
  }

  if (v5 != v4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101870488();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
    {
      v7 = sub_10038A560(*result);
      v14 = 136380931;
      v15 = v7;
      v16 = 2081;
      v17 = sub_10038A560(v5);
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "#indoor-fitness-classifier state change, current, %{private}s, updated, %{private}s", &v14, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101870804(result, v5, v8, v9, v10, v11, v12, v13);
    }

    *(result + 8) = a2;
    *result = v5;
  }
}

uint64_t sub_10022F21C(uint64_t a1, uint64_t a2)
{
  *a1 = 16777472;
  *(a1 + 4) = 1;
  *(a1 + 5) = 0;
  *(a1 + 28) = xmmword_101C8BC90;
  *(a1 + 44) = xmmword_101C8BCA0;
  *(a1 + 60) = 400;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *(a1 + 64) = v3;
  *(a1 + 80) = v3;
  *(a1 + 96) = v3;
  *(a1 + 112) = v3;
  *(a1 + 128) = v3;
  *(a1 + 144) = -1;
  *(a1 + 148) = xmmword_101C8BCB0;
  *(a1 + 12) = xmmword_101C8BCC0;
  if (sub_10001CF04(a1, a2))
  {
    *(a1 + 16) = 4233600;
  }

  *(a1 + 72) = 125000;
  *(a1 + 84) = 125000;
  *(a1 + 96) = 125000;
  *(a1 + 108) = 15000;
  *(a1 + 120) = 25000;
  *(a1 + 132) = -1;
  *(a1 + 144) = -1;
  return a1;
}

uint64_t sub_10022F2E4(uint64_t **a1, char *a2, uint64_t a3)
{
  v4 = a2;
  if (sub_100192868(a1, a2) || (v4 = "ROW", (result = sub_100192868(a1, "ROW")) != 0))
  {
    v17 = v4;
    v7 = sub_10022DD34(a1, v4, &unk_101C66300, &v17, &v16);
    v8 = *(v7 + 29);
    v9 = *(v7 + 31);
    *(a3 + 16) = *(v7 + 30);
    *(a3 + 32) = v9;
    *a3 = v8;
    v10 = *(v7 + 32);
    v11 = *(v7 + 33);
    v12 = *(v7 + 35);
    *(a3 + 80) = *(v7 + 34);
    *(a3 + 96) = v12;
    *(a3 + 48) = v10;
    *(a3 + 64) = v11;
    v13 = *(v7 + 36);
    v14 = *(v7 + 37);
    v15 = *(v7 + 38);
    *(a3 + 160) = *(v7 + 156);
    *(a3 + 128) = v14;
    *(a3 + 144) = v15;
    *(a3 + 112) = v13;
    return 1;
  }

  return result;
}

void sub_10022F398(uint64_t a1, int a2, int a3, uint64_t a4)
{
  ++*(a1 + 348);
  if ((*(*a1 + 160))(a1))
  {
    switch(a3)
    {
      case 5:
        if ((*(*a1 + 192))(a1, a4))
        {
          sub_100039440(a1);
          v15[0] = _NSConcreteStackBlock;
          v15[1] = 3221225472;
          v15[2] = sub_10021C9A8;
          v15[3] = &unk_10245FB68;
          v16 = a2;
          v17 = 5;
          v15[4] = a1;
          v15[5] = a4;
          sub_100071CE4(a1, 1u, v15);
          sub_100039584(a1);
        }

        break;
      case 46:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v9 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = *(a4 + 1512);
          v11 = *(a4 + 1520);
          *buf = 68289538;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 1026;
          LODWORD(v23[0]) = v10;
          WORD2(v23[0]) = 2050;
          *(v23 + 6) = v11;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLProactiveLoc ntfy, sessionState:%{public}d, sec_s:%{public}.09f}", buf, 0x22u);
        }

        v12 = *(a1 + 152);
        if (v12)
        {
          (*(*v12 + 112))(v12, a4 + 1512);
        }

        break;
      case 12:
        v8 = *(*a1 + 40);

        v8(a1);
        break;
      default:
        if (qword_1025D47D0 != -1)
        {
          sub_100248BFC();
        }

        v13 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
        {
          *buf = 68289283;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2049;
          v23[0] = a3;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Harvester received an un-registered location notification, notification:%{private, location:CLLocationProvider_Type::Notification}lld}", buf, 0x1Cu);
          if (qword_1025D47D0 != -1)
          {
            sub_1018C4FA8();
          }
        }

        v14 = qword_1025D47D8;
        if (os_signpost_enabled(qword_1025D47D8))
        {
          *buf = 68289283;
          v19 = 0;
          v20 = 2082;
          v21 = "";
          v22 = 2049;
          v23[0] = a3;
          _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Harvester received an un-registered location notification", "{msg%{public}.0s:Harvester received an un-registered location notification, notification:%{private, location:CLLocationProvider_Type::Notification}lld}", buf, 0x1Cu);
        }

        break;
    }
  }
}

BOOL sub_10022F734(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 132) | 2) != 2)
  {
    return 1;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_100248BFC();
  }

  v3 = qword_1025D47D8;
  result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO);
  if (result)
  {
    v5 = *(a2 + 132);
    v6[0] = 68289283;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 2049;
    v10 = v5;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:WARN: location dropped due to referenceFrame, referenceFrame:%{private, location:CLClientLocationReferenceFrame}lld}", v6, 0x1Cu);
    return 0;
  }

  return result;
}

void sub_10022F82C(uint64_t a1, std::string *a2)
{
  sub_1000EBF44(a2, v18);
  v3 = [objc_msgSend(*(a1 + 24) "vendor")];
  sub_1000350D0(v4, v18);
  [v3 markReceivingLocationInformation:sub_100061198(v4)];
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }
}

void sub_10022F978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_100039BE8(&a9);
  sub_100039BE8(va);
  _Unwind_Resume(a1);
}

BOOL sub_10022FB0C()
{
  v2 = *(v0 + 1624);

  return os_log_type_enabled(v2, OS_LOG_TYPE_INFO);
}

void sub_10022FB28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0x26u);
}

BOOL sub_10022FB54()
{
  v1 = qword_1025D4658;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_10022FBB0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = (*(*a1 + 224))(a1);
  if ((*(v6 + 148) & 0x80000000) == 0)
  {
    v7 = v6;
    v12 = 0;
    v14 = 0xBFF0000000000000;
    Current = CFAbsoluteTimeGetCurrent();
    v17 = 1;
    v13 = 0;
    v15 = *(v7 + 148);
    v8 = *(v7 + 4);
    v9 = *(a2 + 4);
    v10 = *(a2 + 12);
    sub_10000EC00(&__p, "");
    sub_10022FF70(a1, v8, &__p, &v12, v9, v10, a3);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_10022FC9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022FCB8(uint64_t a1)
{
  result = sub_10007253C((a1 + 512), 0);
  if (!result)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v2 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      *buf = 67174657;
      v7 = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "WifiTile, invalid tileType, %{private}d, #CloneMe", buf, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101B27A78();
    }

    if (qword_1025D48A0 != -1)
    {
      sub_101B239BC();
    }

    v3 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "false";
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D48A0 != -1)
      {
        sub_101B239BC();
      }
    }

    v4 = qword_1025D48A8;
    if (os_signpost_enabled(qword_1025D48A8))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "false";
      _os_signpost_emit_with_name_impl(dword_100000000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Assertion failed", "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D48A0 != -1)
      {
        sub_101B239BC();
      }
    }

    v5 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "assert";
      v12 = 2081;
      v13 = "false";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Assertion failed, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Tiles/CLWifiTilesManager.mm", 1735, "getTilesSet");
  }

  return result;
}

uint64_t sub_10022FF70(uint64_t a1, uint64_t a2, const std::string *a3, uint64_t a4, double a5, double a6, double a7)
{
  v188 = a2;
  if (a2)
  {
    sub_101B23850(a1, a2, a3, a4, a5, a6, a7);
  }

  sub_1000850D0(&v185, &v188);
  std::string::operator=(&__p, a3);
  v13 = *(a4 + 16);
  v182 = *a4;
  v183 = v13;
  v184 = *(a4 + 32);
  v14 = (*(*a1 + 224))(a1);
  v15 = v14;
  if ((*v14 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101B239BC();
    }

    v45 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v46 = v188;
      v47 = sub_100085790(v188);
      *buf = 67109378;
      *&buf[4] = v46;
      *&buf[8] = 2080;
      *&buf[10] = v47;
      _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, type, %d, %s, not active", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B239E4(buf);
      v127 = qword_1025D48A8;
      v128 = v188;
      v129 = sub_100085790(v188);
      *v192 = 67109378;
      *&v192[4] = v128;
      *&v192[8] = 2080;
      *&v192[10] = v129;
      LODWORD(v163) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v127, 2, "WIFITILE: requestDownload, type, %d, %s, not active", v192, v163);
      v131 = v130;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v130);
      if (v131 != buf)
      {
        free(v131);
      }
    }

    goto LABEL_63;
  }

  sub_10008511C(&v185, -1, a5, a6, *(v14 + 152), *(v14 + 160));
  if (sub_1000852BC(&v185))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2374C();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v17 = sub_100085338(&v185);
      v18 = sub_100085314(&v185);
      *buf = 134546177;
      *&buf[4] = v17;
      *&buf[12] = 2053;
      *&buf[14] = v18;
      *&buf[22] = 1026;
      *&buf[24] = v182;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "@TileDl, wifi, request, llsw, %{sensitive}.2lf, %{sensitive}.2lf, currOverCell, %{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B23A94(buf);
      v132 = qword_1025D4628;
      v133 = sub_100085338(&v185);
      v134 = sub_100085314(&v185);
      *v192 = 134546177;
      *&v192[4] = v133;
      *&v192[12] = 2053;
      *&v192[14] = v134;
      *&v192[22] = 1026;
      LODWORD(v193.__r_.__value_.__l.__data_) = v182;
      LODWORD(v163) = 28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v132, 1, "@TileDl, wifi, request, llsw, %{sensitive}.2lf, %{sensitive}.2lf, currOverCell, %{public}d", v192);
      v136 = v135;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v135);
      if (v136 != buf)
      {
        free(v136);
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B2374C();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_100EDCE5C(buf);
      v20 = buf[23] >= 0 ? buf : *buf;
      *v192 = 136446210;
      *&v192[4] = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "TileDl, wifi, %{public}s", v192, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v21 = sub_10000A100(121, 2);
    if (v21)
    {
      sub_101B23A94(buf);
      v137 = qword_1025D4628;
      sub_100EDCE5C(v192);
      if (v192[23] >= 0)
      {
        v138 = v192;
      }

      else
      {
        v138 = *v192;
      }

      *v189 = 136446210;
      *&v189[4] = v138;
      LODWORD(v163) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v137, 2, "TileDl, wifi, %{public}s", v189);
      v140 = v139;
      if ((v192[23] & 0x80000000) != 0)
      {
        operator delete(*v192);
      }

      v21 = sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v140);
      if (v140 != buf)
      {
        free(v140);
      }
    }

    if (*(a1 + 217))
    {
      if (*(v15 + 176) != 1)
      {
        v29 = *(a1 + 408);
        v30 = sub_10008535C(a1 + 128, &v185);
        v31 = sub_1000853E0(v15 + 184, &v185);
        if (qword_1025D48A0 != -1)
        {
          sub_101B239BC();
        }

        v177 = a1 + 136;
        v32 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          sub_100B4EFD4(&v185, v192);
          v33 = v192[23] >= 0 ? v192 : *v192;
          *buf = 136316162;
          *&buf[4] = v33;
          *&buf[12] = 1024;
          *&buf[14] = v31;
          *&buf[18] = 1024;
          *&buf[20] = v177 != v30;
          *&buf[24] = 1024;
          *&buf[26] = 0;
          *&buf[30] = 1024;
          *&buf[32] = v31;
          _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, tileId=%s isAlreadyDownloaded, %d, isBeingDownloaded, %d, shouldDownloadedBasedOnPermissions, %d, isAlreadyDownloaded, %d", buf, 0x24u);
          if ((v192[23] & 0x80000000) != 0)
          {
            operator delete(*v192);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B239E4(buf);
          v143 = qword_1025D48A8;
          sub_100B4EFD4(&v185, v189);
          if (v191[1] >= 0)
          {
            v144 = v189;
          }

          else
          {
            v144 = *v189;
          }

          *v192 = 136316162;
          *&v192[4] = v144;
          *&v192[12] = 1024;
          *&v192[14] = v31;
          *&v192[18] = 1024;
          *&v192[20] = v177 != v30;
          LOWORD(v193.__r_.__value_.__l.__data_) = 1024;
          *&v193.__r_.__value_.__s.__data_[2] = 0;
          HIWORD(v193.__r_.__value_.__r.__words[0]) = 1024;
          LODWORD(v193.__r_.__value_.__r.__words[1]) = v31;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v143, 2, "WIFITILE: requestDownload, tileId=%s isAlreadyDownloaded, %d, isBeingDownloaded, %d, shouldDownloadedBasedOnPermissions, %d, isAlreadyDownloaded, %d", v192, 36, v164, v165, v166);
          v146 = v145;
          if ((v191[1] & 0x80000000) != 0)
          {
            operator delete(*v189);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v146);
          if (v146 != buf)
          {
            free(v146);
          }
        }

        if (v31)
        {
          v34 = sub_100085520(v15 + 184, &v185);
          v35 = sub_100232000(v34, v29 > 1, *(v15 + 128), a7);
          if (qword_1025D48A0 != -1)
          {
            sub_101B239BC();
          }

          v36 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            (*(*v34 + 16))(v192, v34);
            v37 = v192[23] >= 0 ? v192 : *v192;
            *buf = 136315906;
            *&buf[4] = v37;
            *&buf[12] = 1024;
            *&buf[14] = BYTE1(v184);
            *&buf[18] = 1024;
            *&buf[20] = v35;
            *&buf[24] = 1024;
            *&buf[26] = v177 != v30;
            _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, tileid, %s, already available, isUpdateMTimestamp, %d, isShouldBeRefreshed, %d, isBeingDownloaded, %d", buf, 0x1Eu);
            if ((v192[23] & 0x80000000) != 0)
            {
              operator delete(*v192);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B239E4(buf);
            v147 = qword_1025D48A8;
            (*(*v34 + 16))(v189, v34);
            if (v191[1] >= 0)
            {
              v148 = v189;
            }

            else
            {
              v148 = *v189;
            }

            *v192 = 136315906;
            *&v192[4] = v148;
            *&v192[12] = 1024;
            *&v192[14] = BYTE1(v184);
            *&v192[18] = 1024;
            *&v192[20] = v35;
            LOWORD(v193.__r_.__value_.__l.__data_) = 1024;
            *&v193.__r_.__value_.__s.__data_[2] = v177 != v30;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v147, 2, "WIFITILE: requestDownload, tileid, %s, already available, isUpdateMTimestamp, %d, isShouldBeRefreshed, %d, isBeingDownloaded, %d", v192, 30, v164, v165);
            v150 = v149;
            if ((v191[1] & 0x80000000) != 0)
            {
              operator delete(*v189);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v150);
            if (v150 != buf)
            {
              free(v150);
            }
          }

          if (BYTE1(v184) == 1)
          {
            sub_1010C9A2C(a1, v34, buf, a7);
          }

          LOBYTE(v38) = 0;
          if (!v35 || v177 != v30)
          {
            goto LABEL_142;
          }

          if (qword_1025D48A0 != -1)
          {
            sub_101B239BC();
          }

          v39 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            (*(*v34 + 16))(buf, v34);
            v40 = buf[23] >= 0 ? buf : *buf;
            *v192 = 136315138;
            *&v192[4] = v40;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, refresh download, %s", v192, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          if (!sub_10000A100(121, 2))
          {
LABEL_132:
            sub_1010AB49C(*(v15 + 4), v189);
            v74 = *v189;
            *v189 = 0;
            v181 = v74;
            sub_1010C6EDC(a1, &v181, &v185, &v182);
            v75 = v181;
            v181 = 0;
            if (v75)
            {
              (*(*v75 + 8))(v75);
            }

            if (qword_1025D4620 != -1)
            {
              sub_101B2374C();
            }

            v76 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v77 = sub_100085338(&v185);
              v78 = sub_100085314(&v185);
              v79 = *(a1 + 144);
              *buf = 134546177;
              *&buf[4] = v77;
              *&buf[12] = 2053;
              *&buf[14] = v78;
              *&buf[22] = 2050;
              *&buf[24] = v79;
              _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEFAULT, "@TileReq, wifi, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, center, size, %{public}ld", buf, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B23A94(buf);
              v153 = qword_1025D4628;
              v154 = sub_100085338(&v185);
              v155 = sub_100085314(&v185);
              v156 = *(a1 + 144);
              *v192 = 134546177;
              *&v192[4] = v154;
              *&v192[12] = 2053;
              *&v192[14] = v155;
              *&v192[22] = 2050;
              v193.__r_.__value_.__r.__words[0] = v156;
              LODWORD(v163) = 32;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v153, 0, "@TileReq, wifi, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, center, size, %{public}ld", v192, v163);
              v158 = v157;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v157);
              if (v158 != buf)
              {
                free(v158);
              }
            }

            v80 = *v189;
            *v189 = 0;
            if (v80)
            {
              (*(*v80 + 8))(v80);
            }

            LOBYTE(v38) = 1;
LABEL_142:
            *v192 = v185;
            *&v192[16] = v186;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100007244(&v193, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              v193 = __p;
            }

            v175 = v38;
            LOWORD(v182) = 0;
            BYTE2(v182) = 0;
            if ((v183 & 0x80000000) == 0)
            {
              v81 = -v183;
              v168 = (2 * v183) | 1;
              v169 = -v183;
              HIDWORD(v166) = v183;
              do
              {
                v82 = v168;
                v83 = v169;
                do
                {
                  if (v83 | v81)
                  {
                    *v192 = v185;
                    *&v192[16] = v186;
                    std::string::operator=(&v193, &__p);
                    v84 = *(v15 + 160);
                    v85 = *(v15 + 152);
                    *&v84 = v84;
                    sub_100085AC4(v192, v81, v83, v85, *&v84);
                    if (sub_1000852BC(v192))
                    {
                      if (qword_1025D48A0 != -1)
                      {
                        sub_101B239BC();
                      }

                      v86 = qword_1025D48A8;
                      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                      {
                        v87 = *&v192[8];
                        v88 = *&v192[4];
                        sub_100B4EFD4(v192, v189);
                        v89 = v189;
                        if (v191[1] < 0)
                        {
                          v89 = *v189;
                        }

                        *buf = 67110146;
                        *&buf[4] = v81;
                        *&buf[8] = 1024;
                        *&buf[10] = v83;
                        *&buf[14] = 1024;
                        *&buf[16] = v87;
                        *&buf[20] = 1024;
                        *&buf[22] = v88;
                        *&buf[26] = 2080;
                        *&buf[28] = v89;
                        _os_log_impl(dword_100000000, v86, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", buf, 0x24u);
                        if ((v191[1] & 0x80000000) != 0)
                        {
                          operator delete(*v189);
                        }
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101B239E4(buf);
                        v102 = qword_1025D48A8;
                        v103 = *&v192[8];
                        v104 = *&v192[4];
                        sub_100B4EFD4(v192, v194);
                        v105 = v194;
                        if (v195 < 0)
                        {
                          v105 = *v194;
                        }

                        *v189 = 67110146;
                        *&v189[4] = v81;
                        *&v189[8] = 1024;
                        *&v189[10] = v83;
                        LOWORD(v190) = 1024;
                        *(&v190 + 2) = v103;
                        HIWORD(v190) = 1024;
                        *v191 = v104;
                        *&v191[4] = 2080;
                        *&v191[6] = v105;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v102, 2, "WIFITILE: requestDownload, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", v189, 36, v164, v165, v166);
                        v107 = v106;
                        if (v195 < 0)
                        {
                          operator delete(*v194);
                        }

                        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v107);
                        if (v107 != buf)
                        {
                          free(v107);
                        }
                      }

                      v90 = sub_10008535C(a1 + 128, v192);
                      if (((*(a1 + 216) | sub_1000853E0(v15 + 184, v192)) & 1) == 0 && v177 == v90)
                      {
                        if (qword_1025D48A0 != -1)
                        {
                          sub_101B239BC();
                        }

                        v91 = qword_1025D48A8;
                        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                        {
                          sub_100B4EFD4(v192, buf);
                          v92 = buf;
                          if (buf[23] < 0)
                          {
                            v92 = *buf;
                          }

                          *v189 = 136315138;
                          *&v189[4] = v92;
                          _os_log_impl(dword_100000000, v91, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, adding neighbour, %s", v189, 0xCu);
                          if ((buf[23] & 0x80000000) != 0)
                          {
                            operator delete(*buf);
                          }
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101B239E4(buf);
                          v114 = qword_1025D48A8;
                          sub_100B4EFD4(v192, v189);
                          v115 = v189;
                          if (v191[1] < 0)
                          {
                            v115 = *v189;
                          }

                          *v194 = 136315138;
                          *&v194[4] = v115;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v114, 2, "WIFITILE: requestDownload, adding neighbour, %s", v194);
                          v117 = v116;
                          if ((v191[1] & 0x80000000) != 0)
                          {
                            operator delete(*v189);
                          }

                          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v117);
                          if (v117 != buf)
                          {
                            free(v117);
                          }
                        }

                        sub_1010AB49C(*(v15 + 4), &v180);
                        sub_1010C6EDC(a1, &v180, v192, &v182);
                        v93 = v180;
                        v180 = 0;
                        if (v93)
                        {
                          (*(*v93 + 8))(v93);
                        }

                        if (qword_1025D4620 != -1)
                        {
                          sub_101B2374C();
                        }

                        v94 = qword_1025D4628;
                        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
                        {
                          v95 = sub_100085338(v192);
                          v96 = sub_100085314(v192);
                          v97 = *(a1 + 144);
                          *buf = 134546177;
                          *&buf[4] = v95;
                          *&buf[12] = 2053;
                          *&buf[14] = v96;
                          *&buf[22] = 2050;
                          *&buf[24] = v97;
                          _os_log_impl(dword_100000000, v94, OS_LOG_TYPE_DEFAULT, "@TileReq, wifi, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, neighbor, size, %{public}ld", buf, 0x20u);
                        }

                        if (sub_10000A100(121, 2))
                        {
                          sub_101B23A94(buf);
                          v118 = qword_1025D4628;
                          v119 = sub_100085338(v192);
                          v120 = sub_100085314(v192);
                          v121 = *(a1 + 144);
                          *v189 = 134546177;
                          *&v189[4] = v119;
                          *&v189[12] = 2053;
                          v190 = v120;
                          *v191 = 2050;
                          *&v191[2] = v121;
                          LODWORD(v163) = 32;
                          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v118, 0, "@TileReq, wifi, onlist, llsw, %{sensitive}.2lf, %{sensitive}.2lf, neighbor, size, %{public}ld", v189, v163);
                          v123 = v122;
                          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v122);
                          if (v123 != buf)
                          {
                            free(v123);
                          }
                        }

                        v175 = 1;
                      }
                    }

                    else
                    {
                      if (qword_1025D48A0 != -1)
                      {
                        sub_101B239BC();
                      }

                      v98 = qword_1025D48A8;
                      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                      {
                        v99 = *&v192[8];
                        v100 = *&v192[4];
                        sub_100B4EFD4(v192, v189);
                        v101 = v189;
                        if (v191[1] < 0)
                        {
                          v101 = *v189;
                        }

                        *buf = 67110146;
                        *&buf[4] = v81;
                        *&buf[8] = 1024;
                        *&buf[10] = v83;
                        *&buf[14] = 1024;
                        *&buf[16] = v99;
                        *&buf[20] = 1024;
                        *&buf[22] = v100;
                        *&buf[26] = 2080;
                        *&buf[28] = v101;
                        _os_log_impl(dword_100000000, v98, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, out of boundaries, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", buf, 0x24u);
                        if ((v191[1] & 0x80000000) != 0)
                        {
                          operator delete(*v189);
                        }
                      }

                      if (sub_10000A100(121, 2))
                      {
                        sub_101B239E4(buf);
                        v108 = qword_1025D48A8;
                        v109 = *&v192[8];
                        v110 = *&v192[4];
                        sub_100B4EFD4(v192, v194);
                        v111 = v194;
                        if (v195 < 0)
                        {
                          v111 = *v194;
                        }

                        *v189 = 67110146;
                        *&v189[4] = v81;
                        *&v189[8] = 1024;
                        *&v189[10] = v83;
                        LOWORD(v190) = 1024;
                        *(&v190 + 2) = v109;
                        HIWORD(v190) = 1024;
                        *v191 = v110;
                        *&v191[4] = 2080;
                        *&v191[6] = v111;
                        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v108, 2, "WIFITILE: requestDownload, out of boundaries, y, %d, x, %d, tile_y, %d, tile_x, %d, neighbourTileID, %s", v189, 36, v164, v165, v166);
                        v113 = v112;
                        if (v195 < 0)
                        {
                          operator delete(*v194);
                        }

                        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v113);
                        if (v113 != buf)
                        {
                          free(v113);
                        }
                      }
                    }
                  }

                  ++v83;
                  --v82;
                }

                while (v82);
              }

              while (v81++ != HIDWORD(v166));
            }

            if (v175)
            {
              v125 = (*(**(a1 + 448) + 80))(*(a1 + 448));
              if (qword_1025D4620 != -1)
              {
                sub_101B2374C();
              }

              v126 = qword_1025D4628;
              if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67240192;
                *&buf[4] = v125;
                _os_log_impl(dword_100000000, v126, OS_LOG_TYPE_DEFAULT, "@TileSched, wifi, set, %{public}d", buf, 8u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101B23A94(buf);
                *v189 = 67240192;
                *&v189[4] = v125;
                LODWORD(v163) = 8;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@TileSched, wifi, set, %{public}d", v189, v163);
                v152 = v151;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v151);
                if (v152 != buf)
                {
                  free(v152);
                }
              }

              sub_100233368(a1, 0, a7);
            }

            if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v193.__r_.__value_.__l.__data_);
            }

LABEL_63:
            v48 = 1;
            goto LABEL_85;
          }

          sub_101B239E4(buf);
          v41 = qword_1025D48A8;
          (*(*v34 + 16))(v192, v34);
          if (v192[23] >= 0)
          {
            v42 = v192;
          }

          else
          {
            v42 = *v192;
          }

          *v189 = 136315138;
          *&v189[4] = v42;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 2, "WIFITILE: requestDownload, refresh download, %s", v189);
          v44 = v43;
          if ((v192[23] & 0x80000000) != 0)
          {
            operator delete(*v192);
          }
        }

        else
        {
          if (v177 != v30)
          {
            v58 = *(v30 + 80);
            v38 = *(v58 + 114) != BYTE2(v182) || __PAIR64__(*(v58 + 113), *(v58 + 112)) != __PAIR64__(BYTE1(v182), v182);
            if (*(v58 + 114))
            {
              BYTE2(v182) = 1;
            }

            if (*(v58 + 112) == 1)
            {
              LOBYTE(v182) = 1;
            }

            if (*(v58 + 113) == 1)
            {
              BYTE1(v182) = 1;
            }

            v59 = v183;
            *(v58 + 112) = v182;
            *(v58 + 128) = v59;
            *(v58 + 144) = v184;
            if (qword_1025D48A0 != -1)
            {
              sub_101B239BC();
            }

            v60 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              (*(*v58 + 16))(v192, v58);
              v61 = v192[23];
              v62 = *v192;
              sub_100EDCE5C(v189);
              v63 = v192;
              if (v61 < 0)
              {
                v63 = v62;
              }

              if (v191[1] >= 0)
              {
                v64 = v189;
              }

              else
              {
                v64 = *v189;
              }

              *buf = 136315650;
              *&buf[4] = v63;
              *&buf[12] = 2080;
              *&buf[14] = v64;
              *&buf[22] = 1024;
              *&buf[24] = v38;
              _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, tileid, %s, will be downloaded, details, %s, updated, %d", buf, 0x1Cu);
              if ((v191[1] & 0x80000000) != 0)
              {
                operator delete(*v189);
              }

              if ((v192[23] & 0x80000000) != 0)
              {
                operator delete(*v192);
              }
            }

            if (sub_10000A100(121, 2))
            {
              sub_101B239E4(buf);
              v65 = qword_1025D48A8;
              (*(*v58 + 16))(v189, v58);
              v66 = v191[1];
              v67 = *v189;
              sub_100EDCE5C(v194);
              v68 = v189;
              if (v66 < 0)
              {
                v68 = v67;
              }

              if (v195 >= 0)
              {
                v69 = v194;
              }

              else
              {
                v69 = *v194;
              }

              *v192 = 136315650;
              *&v192[4] = v68;
              *&v192[12] = 2080;
              *&v192[14] = v69;
              *&v192[22] = 1024;
              LODWORD(v193.__r_.__value_.__l.__data_) = v38;
              LODWORD(v163) = 28;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v65, 2, "WIFITILE: requestDownload, tileid, %s, will be downloaded, details, %s, updated, %d", v192, v163, v164);
              v71 = v70;
              if (v195 < 0)
              {
                operator delete(*v194);
              }

              if ((v191[1] & 0x80000000) != 0)
              {
                operator delete(*v189);
              }

              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v71);
              if (v71 != buf)
              {
                free(v71);
              }
            }

            goto LABEL_142;
          }

          if (qword_1025D48A0 != -1)
          {
            sub_101B239BC();
          }

          v72 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            sub_100EDCE5C(v192);
            v73 = v192[23] >= 0 ? v192 : *v192;
            *buf = 134546179;
            *&buf[4] = a5;
            *&buf[12] = 2053;
            *&buf[14] = a6;
            *&buf[22] = 2080;
            *&buf[24] = v73;
            _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, tileid, %{sensitive}.8lf, %{sensitive}8lf, will be downloaded, details, %s", buf, 0x20u);
            if ((v192[23] & 0x80000000) != 0)
            {
              operator delete(*v192);
            }
          }

          if (!sub_10000A100(121, 2))
          {
            goto LABEL_132;
          }

          sub_101B239E4(buf);
          v159 = qword_1025D48A8;
          sub_100EDCE5C(v189);
          if (v191[1] >= 0)
          {
            v160 = v189;
          }

          else
          {
            v160 = *v189;
          }

          *v192 = 134546179;
          *&v192[4] = a5;
          *&v192[12] = 2053;
          *&v192[14] = a6;
          *&v192[22] = 2080;
          v193.__r_.__value_.__r.__words[0] = v160;
          LODWORD(v163) = 32;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v159, 2, "WIFITILE: requestDownload, tileid, %{sensitive}.8lf, %{sensitive}8lf, will be downloaded, details, %s", v192, v163);
          v44 = v161;
          if ((v191[1] & 0x80000000) != 0)
          {
            operator delete(*v189);
          }
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v44);
        if (v44 != buf)
        {
          free(v44);
        }

        goto LABEL_132;
      }

      sub_101B23AD8(v21, v22, v23, v24, v25, v26, v27, v28, v162, v163, v164, v165, v166, v167, v170, v171, v172, v173, v174, v176, v178, v179, v180, v181);
      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocation/Daemon/Positioning/Tiles/CLWifiTilesManager.mm", 1295, "requestDownload");
      __break(1u);
    }

    else if (qword_1025D48A0 == -1)
    {
      goto LABEL_81;
    }

    sub_101B239BC();
LABEL_81:
    v55 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v56 = *(a1 + 216);
      *buf = 67109120;
      *&buf[4] = v56;
      _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEBUG, "WIFITILE: requestDownload, index is not available until first unlock, fDataProtectionEnabled, %d", buf, 8u);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_84;
    }

    sub_101B239E4(buf);
    v141 = *(a1 + 216);
    *v192 = 67109120;
    *&v192[4] = v141;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "WIFITILE: requestDownload, index is not available until first unlock, fDataProtectionEnabled, %d", v192);
    v54 = v142;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v142);
    if (v54 == buf)
    {
      goto LABEL_84;
    }

    goto LABEL_232;
  }

  if (qword_1025D4630 != -1)
  {
    sub_101B23A28();
  }

  v49 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_FAULT))
  {
    sub_100B4EFD4(&v185, buf);
    v50 = buf[23] >= 0 ? buf : *buf;
    *v192 = 136380675;
    *&v192[4] = v50;
    _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_FAULT, "WIFITILE: requestDownload, invalid tile ID: %{private}s, #CloneMe", v192, 0xCu);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (!sub_10000A100(121, 0))
  {
    goto LABEL_84;
  }

  sub_101B23A50(buf);
  v51 = qword_1025D4638;
  sub_100B4EFD4(&v185, v192);
  if (v192[23] >= 0)
  {
    v52 = v192;
  }

  else
  {
    v52 = *v192;
  }

  *v189 = 136380675;
  *&v189[4] = v52;
  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v51, 17, "WIFITILE: requestDownload, invalid tile ID: %{private}s, #CloneMe", v189, 12);
  v54 = v53;
  if ((v192[23] & 0x80000000) != 0)
  {
    operator delete(*v192);
  }

  sub_100152C7C("Generic", 1, 0, 0, "BOOL CLWifiTilesManager::requestDownload(CLTilesManager_Type::TileType, double, double, const std::string &, const CLTileFileDownloadDetails &, CFAbsoluteTime)", "%s\n", v54);
  if (v54 == buf)
  {
    goto LABEL_84;
  }

LABEL_232:
  free(v54);
LABEL_84:
  v48 = 0;
LABEL_85:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v48;
}

void sub_100231E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100232000(uint64_t a1, uint64_t a2, float a3, double a4)
{
  v6 = a2;
  v62[0] = 0;
  v62[1] = 0;
  v63 = 0;
  v8 = *(a1 + 160);
  v9 = *&qword_102630970;
  v10 = sub_10023325C(*(a1 + 96), a4, *&qword_102630970);
  v11 = *&qword_102630978;
  v12 = vabdd_f64(a4, v8);
  if (sub_1002332E4(a1))
  {
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = &v62[1] + 2;
    HIBYTE(v63) = 10;
    LOWORD(v62[1]) = 29555;
    v16 = "InProgress";
LABEL_3:
    v62[0] = *v16;
    goto LABEL_49;
  }

  if (*(a1 + 168))
  {
LABEL_5:
    v17 = sub_100085A44(a1);
    if (v12 >= v11)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18 == 1)
    {
      v13 = sub_100ED9330(a1, v6, a4, a3);
      if (v13)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101ABEA90();
        }

        v19 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          (*(*a1 + 16))(__p, a1);
          v20 = v67 >= 0 ? __p : *__p;
          v21 = vabdd_f64(a4, *(a1 + 176));
          v22 = *(a1 + 200);
          *buf = 136381187;
          *&buf[4] = v20;
          v90 = 2050;
          v91 = v21;
          v92 = 1024;
          LODWORD(v93) = v22;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "TileFile, canRequestBasedOnAttempts, tile, %{private}s, age, %{public}.1lf, expirationAge, %d", buf, 0x1Cu);
          if (SHIBYTE(v67) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABEAA4(buf);
          v51 = qword_1025D4628;
          (*(*a1 + 16))(v85, a1);
          if (v88 >= 0)
          {
            v52 = v85;
          }

          else
          {
            v52 = *v85;
          }

          v53 = vabdd_f64(a4, *(a1 + 176));
          v54 = *(a1 + 200);
          *__p = 136381187;
          *&__p[4] = v52;
          v65 = 2050;
          v66 = v53;
          v67 = 1024;
          LODWORD(v68) = v54;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v51, 2, "TileFile, canRequestBasedOnAttempts, tile, %{private}s, age, %{public}.1lf, expirationAge, %d", __p, 28);
          v56 = v55;
          if (v88 < 0)
          {
            operator delete(*v85);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileFile::canRequestBasedOnAttempts(BOOL, float, CFAbsoluteTime)", "%s\n", v56);
          if (v56 != buf)
          {
            free(v56);
          }
        }
      }

      v15 = v62 + 4;
      HIBYTE(v63) = 4;
      LODWORD(v62[0]) = 1684367169;
      v14 = v13;
LABEL_49:
      *v15 = 0;
      if (!v14)
      {
        v29 = 0;
        if (*(a1 + 240) == 65)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_51;
    }

    if ((*(a1 + 168) & 1) != 0 && (sub_100085A44(a1) & 1) == 0)
    {
      v14 = v12 >= 1209600.0;
      if (v12 >= 1209600.0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101ABEA90();
        }

        v27 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          (*(*a1 + 16))(__p, a1);
          v28 = v67 >= 0 ? __p : *__p;
          *buf = 136381187;
          *&buf[4] = v28;
          v90 = 2050;
          v91 = v12;
          v92 = 1026;
          LODWORD(v93) = 1209600;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "TileFile, canRequestBasedOnAttempts, tile, %{private}s, sinceLastDownload, %{public}.1lf, %{public}d, needs to be refreshed, TileDoesNotExistOnTheServer", buf, 0x1Cu);
          if (SHIBYTE(v67) < 0)
          {
            operator delete(*__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101ABEAA4(buf);
          v57 = qword_1025D4628;
          (*(*a1 + 16))(v85, a1);
          if (v88 >= 0)
          {
            v58 = v85;
          }

          else
          {
            v58 = *v85;
          }

          *__p = 136381187;
          *&__p[4] = v58;
          v65 = 2050;
          v66 = v12;
          v67 = 1026;
          LODWORD(v68) = 1209600;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v57, 2, "TileFile, canRequestBasedOnAttempts, tile, %{private}s, sinceLastDownload, %{public}.1lf, %{public}d, needs to be refreshed, TileDoesNotExistOnTheServer", __p, 28);
          v60 = v59;
          if (v88 < 0)
          {
            operator delete(*v85);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileFile::canRequestBasedOnAttempts(BOOL, float, CFAbsoluteTime)", "%s\n", v60);
          if (v60 != buf)
          {
            free(v60);
          }
        }
      }

      LODWORD(v13) = 0;
      v15 = &v62[1] + 3;
      HIBYTE(v63) = 11;
      *(v62 + 7) = 1953720696;
      v16 = "DoesntExist";
      goto LABEL_3;
    }

LABEL_48:
    LODWORD(v13) = 0;
    v14 = 0;
    v15 = v62 + 5;
    HIBYTE(v63) = 5;
    qmemcpy(v62, "Empty", 5);
    goto LABEL_49;
  }

  v23 = sub_100085A44(a1);
  if (v12 >= v9)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if ((v24 & v10 & 1) == 0)
  {
    if ((*(a1 + 168) & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_5;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101ABEA90();
  }

  v25 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    (*(*a1 + 16))(buf, a1);
    v26 = v92 >= 0 ? buf : *buf;
    *__p = 136380931;
    *&__p[4] = v26;
    v65 = 2050;
    v66 = v12;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "TileFile, canRequestBasedOnAttempts, tile, %{private}s, age, %{public}.1lf, needs to be refreshed - retry", __p, 0x16u);
    if (SHIBYTE(v92) < 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ABEAA4(buf);
    v47 = qword_1025D4628;
    (*(*a1 + 16))(__p, a1);
    if (v67 >= 0)
    {
      v48 = __p;
    }

    else
    {
      v48 = *__p;
    }

    *v85 = 136380931;
    *&v85[4] = v48;
    v86 = 2050;
    v87 = v12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v47, 2, "TileFile, canRequestBasedOnAttempts, tile, %{private}s, age, %{public}.1lf, needs to be refreshed - retry", v85, 22);
    v50 = v49;
    if (SHIBYTE(v67) < 0)
    {
      operator delete(*__p);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileFile::canRequestBasedOnAttempts(BOOL, float, CFAbsoluteTime)", "%s\n", v50);
    if (v50 != buf)
    {
      free(v50);
    }
  }

  LODWORD(v13) = 0;
  HIBYTE(v63) = 10;
  strcpy(v62, "1st/Re-Try");
  v14 = 1;
LABEL_51:
  if (qword_1025D4620 != -1)
  {
    sub_101ABE668();
  }

  v30 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v31 = sub_100085790(*(a1 + 48));
    v32 = sub_100085338(a1 + 48);
    v33 = sub_100085314(a1 + 48);
    v34 = *(a1 + 168);
    v35 = sub_100085A44(a1);
    v36 = v62;
    *buf = 136448771;
    if (v63 < 0)
    {
      v36 = v62[0];
    }

    *&buf[4] = v31;
    v90 = 2053;
    v91 = v32;
    v92 = 2053;
    v93 = v33;
    v94 = 1026;
    v95 = v34;
    v96 = 1026;
    v97 = v35;
    v98 = 2050;
    v99 = v12;
    v100 = 1026;
    v101 = v12 >= v9;
    v102 = 1026;
    v103 = v10;
    v104 = 1026;
    v105 = v12 >= v11;
    v106 = 1026;
    v107 = v13;
    v108 = 2081;
    v109 = v36;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_INFO, "@TileDl, %{public}s, attempts, llsw, %{sensitive}.2lf, %{sensitive}.2lf, lastSuccess, %{public}d, existsOnServer, %{public}d, sinceLastDownload, %{public}.1lf, cooloff1, %{public}d, cooloff2, %{public}d, cooloff3, %{public}d, expired, %{public}d, path, %{private}s", buf, 0x58u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101ABEAA4(buf);
    v38 = qword_1025D4628;
    v39 = sub_100085790(*(a1 + 48));
    v40 = sub_100085338(a1 + 48);
    v41 = sub_100085314(a1 + 48);
    v42 = *(a1 + 168);
    v43 = sub_100085A44(a1);
    v44 = v62;
    *__p = 136448771;
    if (v63 < 0)
    {
      v44 = v62[0];
    }

    *&__p[4] = v39;
    v65 = 2053;
    v66 = v40;
    v67 = 2053;
    v68 = v41;
    v69 = 1026;
    v70 = v42;
    v71 = 1026;
    v72 = v43;
    v73 = 2050;
    v74 = v12;
    v75 = 1026;
    v76 = v12 >= v9;
    v77 = 1026;
    v78 = v10;
    v79 = 1026;
    v80 = v12 >= v11;
    v81 = 1026;
    v82 = v13;
    v83 = 2081;
    v84 = v44;
    LODWORD(v61) = 88;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v38, 1, "@TileDl, %{public}s, attempts, llsw, %{sensitive}.2lf, %{sensitive}.2lf, lastSuccess, %{public}d, existsOnServer, %{public}d, sinceLastDownload, %{public}.1lf, cooloff1, %{public}d, cooloff2, %{public}d, cooloff3, %{public}d, expired, %{public}d, path, %{private}s", COERCE_DOUBLE(136448771), __p, v61);
    v46 = v45;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTileFile::canRequestBasedOnAttempts(BOOL, float, CFAbsoluteTime)", "%s\n", v45);
    if (v46 != buf)
    {
      free(v46);
    }
  }

  v29 = v14;
LABEL_59:
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62[0]);
  }

  return v29;
}

void sub_100232AA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100232B00(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x40;
  v3 = v1 - 64;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_100232C88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100232CFC(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 408);
  if (v4 <= 0)
  {
    v6 = *(a1 + 412);
    v5 = v6 ^ 1;
  }

  else
  {
    v5 = 0;
    if (v4 == 1)
    {
      v6 = *(a1 + 412);
    }

    else
    {
      v6 = 1;
    }
  }

  v7 = (*(*a1 + 224))(a1);
  if ((*(*a1 + 240))(a1, a2))
  {
    if (v5 & 1 | ((a2[112] & 1) == 0))
    {
      if (v5 & 1 | ((*(v7 + 177) & 1) == 0))
      {
        if (v6)
        {
          if (qword_1025D48A0 != -1)
          {
            sub_101B23F7C();
          }

          v8 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            (*(*a2 + 16))(__p, a2);
            if (v20 >= 0)
            {
              v9 = __p;
            }

            else
            {
              v9 = __p[0];
            }

            *buf = 136315138;
            v22 = v9;
            _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, rule, isCurrent, IsOkToDownloadLarge, %s", buf, 0xCu);
            if (v20 < 0)
            {
              operator delete(__p[0]);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101B26B10();
          }

          goto LABEL_32;
        }

        return 0;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_101B23F7C();
      }

      v17 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        (*(*a2 + 16))(__p, a2);
        v18 = v20 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v22 = v18;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, rule, isCurrent, fDownloadCurrentTileOverCell, IsOkToDownloadRealtime, %s", buf, 0xCu);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B269F0();
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B23F7C();
      }

      v13 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        (*(*a2 + 16))(__p, a2);
        v14 = v20 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v22 = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, rule, isCurrent, isAllowCellularIfCurrent,  IsOkToDownloadRealtime, %s", buf, 0xCu);
        if (v20 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B268D0();
      }
    }
  }

  else
  {
    if (v5 & 1 | ((a2[113] & 1) == 0))
    {
      if (v6)
      {
        if (qword_1025D48A0 != -1)
        {
          sub_101B23F7C();
        }

        v10 = qword_1025D48A8;
        if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
        {
          (*(*a2 + 16))(__p, a2);
          v11 = v20 >= 0 ? __p : __p[0];
          *buf = 136315138;
          v22 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, rule, IsOkToDownloadLarge, %s", buf, 0xCu);
          if (v20 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101B267B0();
        }

LABEL_32:
        if (*(a1 + 192) != 1)
        {
          return 2;
        }
      }

      return 0;
    }

    if (qword_1025D48A0 != -1)
    {
      sub_101B23F7C();
    }

    v15 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      (*(*a2 + 16))(__p, a2);
      v16 = v20 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v22 = v16;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, rule, isAllowCellularIfNotCurrent, IsOkToDownloadRealtime, %s", buf, 0xCu);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B26690();
    }
  }

  return (*(a1 + 160) & 1) == 0;
}

BOOL sub_10023325C(uint64_t a1, double a2, double a3)
{
  [*a1 assertInside];
  v6 = *(a1 + 8);
  result = 1;
  if (v6 != -1.0 && a2 - v6 < 900.0)
  {
    return v6 + a3 + (*(a1 + 16) - 1) * (*(a1 + 16) - 1) * 30.0 <= a2;
  }

  return result;
}

BOOL sub_1002332E4(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*v2 + 16))(v2);
  v3 = *(a1 + 104);
  (*(*v2 + 24))(v2);
  return v3 != 0;
}

void sub_100233368(uint64_t a1, unsigned int a2, double a3)
{
  v6 = (*(**(a1 + 448) + 32))(*(a1 + 448));
  v7 = *(a1 + 408);
  if (((*(**(a1 + 448) + 16))(*(a1 + 448)) & 1) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101B23CA4();
    }

    v16 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, wifi off - no tile downloads", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24894();
    }

    goto LABEL_39;
  }

  if (((*(**(a1 + 448) + 48))(*(a1 + 448)) & 1) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101B23CA4();
    }

    v17 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, location services disabled - no tile downloads", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24978();
    }

    goto LABEL_39;
  }

  if ((*(a1 + 217) & 1) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_101B23CA4();
    }

    v18 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 216);
      *buf = 67240192;
      *&buf[4] = v19;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, index is not available until first unlock, fDataProtectionEnabled, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24A5C(a1);
    }

    goto LABEL_39;
  }

  v9 = (a1 + 408);
  if (!*(a1 + 408) && (*(a1 + 412) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v31 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v32 = *v9;
      v33 = *(a1 + 412);
      *buf = 67240448;
      *&buf[4] = v32;
      *&buf[8] = 1026;
      *&buf[10] = v33;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, no data connectivity, avoiding downloads, reachability, %{public}d, companion, %{public}d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24B50();
    }

    goto LABEL_39;
  }

  if (!((v7 != 1) | v6 & 1) && (*(a1 + 412) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v30 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, no download on none broadband cellular connections", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24C60();
    }

LABEL_39:
    if (qword_1025D4630 != -1)
    {
      sub_101B23A28();
    }

    v20 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v21 = (*(**(a1 + 448) + 16))(*(a1 + 448));
      v22 = (*(**(a1 + 448) + 48))(*(a1 + 448));
      v23 = *(a1 + 217);
      v24 = *(a1 + 216);
      v25 = *(a1 + 420);
      v26 = *(a1 + 408);
      v27 = *(a1 + 412);
      *buf = 67241984;
      *&buf[4] = v21;
      *&buf[8] = 1026;
      *&buf[10] = v22;
      *&buf[14] = 1026;
      *&buf[16] = v23;
      *&buf[20] = 1026;
      *&buf[22] = v24;
      *&buf[26] = 1026;
      *&buf[28] = v25;
      *&buf[32] = 1026;
      *&buf[34] = v26;
      v114 = 1026;
      v115 = v27;
      v116 = 1026;
      v117 = v6;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "WIFITILE: checkDownloadSchedule, skip, wifion, %{public}d, ls, %{public}d, indexed, %{public}d, protection, %{public}d, lockdisable, %{public}d, reach, %{public}d, companion, %{public}d, broadband, %{public}d", buf, 0x32u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4630 != -1)
      {
        sub_101B23A28();
      }

      v78 = qword_1025D4638;
      v79 = (*(**(a1 + 448) + 16))(*(a1 + 448));
      v80 = (*(**(a1 + 448) + 48))(*(a1 + 448));
      v81 = *(a1 + 217);
      v82 = *(a1 + 216);
      v83 = *(a1 + 420);
      v84 = *(a1 + 408);
      v85 = *(a1 + 412);
      *v108 = 67241984;
      *&v108[4] = v79;
      *&v108[8] = 1026;
      *&v108[10] = v80;
      *&v108[14] = 1026;
      *&v108[16] = v81;
      *&v108[20] = 1026;
      *&v108[22] = v82;
      *&v108[26] = 1026;
      *&v108[28] = v83;
      *&v108[32] = 1026;
      *&v108[34] = v84;
      v109 = 1026;
      v110 = v85;
      v111 = 1026;
      v112 = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v78, 0, "WIFITILE: checkDownloadSchedule, skip, wifion, %{public}d, ls, %{public}d, indexed, %{public}d, protection, %{public}d, lockdisable, %{public}d, reach, %{public}d, companion, %{public}d, broadband, %{public}d", v108, 50);
      v87 = v86;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::checkDownloadSchedule(DownloadPriority, CFAbsoluteTime)", "%s\n", v86);
      if (v87 != buf)
      {
        free(v87);
      }
    }

    return;
  }

  v99 = sub_100234AA0(a1, v8);
  if (v99 >= 2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      *&buf[4] = v99;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, numOfActiveDownloads, %{public}d, not scheduling more", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B25290();
    }

LABEL_15:
    if (qword_1025D4630 != -1)
    {
      sub_101B23A28();
    }

    v11 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 192);
      v13 = *(a1 + 160);
      v14 = *(a1 + 176) == 0;
      v15 = *(a1 + 208) == 0;
      *buf = 67241216;
      *&buf[4] = v99;
      *&buf[8] = 1026;
      *&buf[10] = v12;
      *&buf[14] = 1026;
      *&buf[16] = v13;
      *&buf[20] = 1026;
      *&buf[22] = v14;
      *&buf[26] = 1026;
      *&buf[28] = v15;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "WIFITILE: checkDownloadSchedule, skip, active, %{public}d, inprogress, %{public}d, %{public}d, shutdown, %{public}d, %{public}d", buf, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B25388();
    }

    return;
  }

  if (*(a1 + 192) == 1 && *(a1 + 160) == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v28 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, both download requests are already in use", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B251AC();
    }

    goto LABEL_15;
  }

  if (!*(a1 + 176) && !*(a1 + 208))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2365C();
    }

    v77 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_INFO, "WIFITILE: checkDownloadSchedule, both download requests null, shutdown?", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B250C8();
    }

    goto LABEL_15;
  }

  if (*v9 <= 1)
  {
    v29 = *(a1 + 412);
  }

  else
  {
    v29 = 1;
  }

  v98 = v29;
  if (qword_1025D4620 != -1)
  {
    sub_101B2365C();
  }

  v97 = (a1 + 408);
  v34 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_100072AFC(a1 + 232, buf);
    v35 = buf[23] >= 0 ? buf : *buf;
    *v108 = 67240451;
    *&v108[4] = a2;
    *&v108[8] = 2085;
    *&v108[10] = v35;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, priority, %{public}d, lastLocation, %{sensitive}s", v108, 0x12u);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101B2374C();
    }

    v88 = qword_1025D4628;
    sub_100072AFC(a1 + 232, v108);
    if (v108[23] >= 0)
    {
      v89 = v108;
    }

    else
    {
      v89 = *v108;
    }

    v104 = 67240451;
    v105 = a2;
    v106 = 2085;
    v107 = v89;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v88, 2, "WIFITILE: checkDownloadSchedule, priority, %{public}d, lastLocation, %{sensitive}s", &v104, 18);
    v91 = v90;
    if ((v108[23] & 0x80000000) != 0)
    {
      operator delete(*v108);
    }

    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::checkDownloadSchedule(DownloadPriority, CFAbsoluteTime)", "%s\n", v91);
    if (v91 != buf)
    {
      free(v91);
    }
  }

  v36 = *(a1 + 128);
  if (v36 != (a1 + 136))
  {
    while (1)
    {
      if (*(a1 + 160) == 1 && (*(a1 + 192) & 1) != 0)
      {
        goto LABEL_152;
      }

      v37 = v36[10];
      v38 = (*(*a1 + 224))(a1);
      v101 = (*(*a1 + 240))(a1, v37);
      if (*(v37 + 48))
      {
        sub_101B24D44();
      }

      if (sub_1002332E4(v37))
      {
        break;
      }

      if (!sub_100232000(v37, v98 & 1, *(v38 + 128), a3))
      {
        v39 = 65;
        goto LABEL_130;
      }

      v100 = 0;
      v40 = sub_100232CFC(a1, v37);
      v41 = a1 + 184;
      if (v40 != 2)
      {
        if (v40 != 1)
        {
          v39 = 67;
          goto LABEL_130;
        }

        v100 = 1;
        v41 = a1 + 152;
      }

      if (!a2 && v100 != 1)
      {
        v39 = 76;
        goto LABEL_130;
      }

      if (qword_1025D4620 != -1)
      {
        sub_101B2374C();
      }

      v42 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        v43 = *v41;
        *buf = 136446210;
        *&buf[4] = v43;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, chose, downloadState, %{public}s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B24EC8(v102, v41, &v103);
      }

      v44 = *(v41 + 24);
      *(v44 + 80) = v100;
      *(v44 + 81) = 1;
      if (*(v38 + 79) >= 0)
      {
        v45 = v38 + 56;
      }

      else
      {
        v45 = *(v38 + 56);
      }

      v46 = [NSString stringWithUTF8String:v45];
      if ((*(v38 + 80) & 1) == 0)
      {
        v47 = +[GEOCountryConfiguration sharedConfiguration];
        if (*(v38 + 111) >= 0)
        {
          v48 = v38 + 88;
        }

        else
        {
          v48 = *(v38 + 88);
        }

        v46 = [v47 defaultForKey:+[NSString stringWithUTF8String:](NSString defaultValue:{"stringWithUTF8String:", v48), v46}];
      }

      sub_10000EC00(buf, [(NSString *)v46 UTF8String]);
      v49 = sub_100ED9670(v37, buf, *(v41 + 24));
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (v49)
      {
        *(v41 + 8) = 1;
        *(v41 + 16) = a3;
        if (qword_1025D4620 != -1)
        {
          sub_101B2374C();
        }

        ++v99;
        v50 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          (*(*v37 + 16))(buf, v37);
          v51 = buf;
          if (buf[23] < 0)
          {
            v51 = *buf;
          }

          *v108 = 67240451;
          *&v108[4] = v99;
          *&v108[8] = 2081;
          *&v108[10] = v51;
          _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, started downloading, numOfActiveDownloads, %{public}d, tile, %{private}s", v108, 0x12u);
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101B2374C();
          }

          v61 = qword_1025D4628;
          (*(*v37 + 16))(v108, v37);
          v62 = v108;
          if (v108[23] < 0)
          {
            v62 = *v108;
          }

          v104 = 67240451;
          v105 = v99;
          v106 = 2081;
          v107 = v62;
          LODWORD(v96) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v61, 2, "WIFITILE: checkDownloadSchedule, started downloading, numOfActiveDownloads, %{public}d, tile, %{private}s", &v104, v96);
          v64 = v63;
          if ((v108[23] & 0x80000000) != 0)
          {
            operator delete(*v108);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::checkDownloadSchedule(DownloadPriority, CFAbsoluteTime)", "%s\n", v64);
          if (v64 != buf)
          {
            free(v64);
          }
        }

        (*(*(v38 + 232) + 16))(v38 + 232);
        ++*(v38 + 280);
        (*(*(v38 + 232) + 24))(v38 + 232);
        sub_10000EC00(buf, "startDownloading");
        sub_100C43164(v38 + 232, buf, *v97);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        if (sub_100071CA0())
        {
          sub_10004FD18();
          v52 = (v37 + 8);
          if (*(v37 + 31) < 0)
          {
            v52 = *v52;
          }

          sub_1002DC414(buf, "getTile", v52);
          sub_100043360(buf, "protection", (a1 + 216));
          sub_100043360(buf, "isCurrentTile", &v101);
          sub_100043360(buf, "isAllowCellular", &v100);
          sub_100071CAC(buf, "locationd");
          sub_100005DA4();
        }

        if (qword_1025D4620 != -1)
        {
          sub_101B2374C();
        }

        v53 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v54 = sub_100085338(v37 + 48);
          v55 = sub_100085314(v37 + 48);
          v56 = *v97;
          v57 = [(NSString *)v46 UTF8String];
          *buf = 134546435;
          *&buf[4] = v54;
          *&buf[12] = 2053;
          *&buf[14] = v55;
          *&buf[22] = 1026;
          *&buf[24] = v56;
          *&buf[28] = 2081;
          *&buf[30] = v57;
          _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEFAULT, "@TileReq, wifi, start, llsw, %{sensitive}.2lf, %{sensitive}.2lf, reach, %{public}d, url, %{private}s", buf, 0x26u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101B2374C();
          }

          v65 = qword_1025D4628;
          v66 = sub_100085338(v37 + 48);
          v67 = sub_100085314(v37 + 48);
          v68 = *v97;
          v69 = [(NSString *)v46 UTF8String];
          *v108 = 134546435;
          *&v108[4] = v66;
          *&v108[12] = 2053;
          *&v108[14] = v67;
          *&v108[22] = 1026;
          *&v108[24] = v68;
          *&v108[28] = 2081;
          *&v108[30] = v69;
          LODWORD(v96) = 38;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v65, 0, "@TileReq, wifi, start, llsw, %{sensitive}.2lf, %{sensitive}.2lf, reach, %{public}d, url, %{private}s", v108, v96);
          v71 = v70;
          sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::checkDownloadSchedule(DownloadPriority, CFAbsoluteTime)", "%s\n", v70);
          if (v71 != buf)
          {
            free(v71);
          }
        }

        sub_100235310(v37, 68);
        if (v99 > 1)
        {
          goto LABEL_152;
        }
      }

LABEL_131:
      v58 = v36[1];
      if (v58)
      {
        do
        {
          v59 = v58;
          v58 = *v58;
        }

        while (v58);
      }

      else
      {
        do
        {
          v59 = v36[2];
          v60 = *v59 == v36;
          v36 = v59;
        }

        while (!v60);
      }

      v36 = v59;
      if (v59 == (a1 + 136))
      {
        goto LABEL_152;
      }
    }

    v39 = 80;
LABEL_130:
    sub_100235310(v37, v39);
    goto LABEL_131;
  }

LABEL_152:
  v72 = *(a1 + 144);
  if (qword_1025D4620 != -1)
  {
    sub_101B2374C();
  }

  v73 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v74 = *(a1 + 160);
    v75 = *(a1 + 192);
    *buf = 67240960;
    *&buf[4] = v99;
    *&buf[8] = 2050;
    *&buf[10] = v72;
    *&buf[18] = 1026;
    *&buf[20] = v74;
    *&buf[24] = 1026;
    *&buf[26] = v75;
    _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, numOfActiveDownloads, %{public}d, tilesToDownload, %{public}lu, small, %{public}d, large, %{public}d", buf, 0x1Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101B2374C();
    }

    v92 = *(a1 + 160);
    v93 = *(a1 + 192);
    *v108 = 67240960;
    *&v108[4] = v99;
    *&v108[8] = 2050;
    *&v108[10] = v72;
    *&v108[18] = 1026;
    *&v108[20] = v92;
    *&v108[24] = 1026;
    *&v108[26] = v93;
    LODWORD(v96) = 30;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WIFITILE: checkDownloadSchedule, numOfActiveDownloads, %{public}d, tilesToDownload, %{public}lu, small, %{public}d, large, %{public}d", v108, v96);
    v95 = v94;
    sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::checkDownloadSchedule(DownloadPriority, CFAbsoluteTime)", "%s\n", v94);
    if (v95 != buf)
    {
      free(v95);
    }
  }

  if ((*(a1 + 160) & 1) == 0 && (*(a1 + 192) & 1) == 0)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101B2374C();
    }

    v76 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v76, OS_LOG_TYPE_DEBUG, "WIFITILE: checkDownloadSchedule, NoActiveDownloads", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B24FE4();
    }
  }
}

void sub_1002347B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_1002347F8(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + 16) "vendor")];

  return [v1 syncgetIsBroadConnection];
}

BOOL sub_100234858(_DWORD *a1)
{
  v2 = a1[152];
  v3 = v2 == 2 || v2 == 1 && (a1[153] > 2 || a1[154] >= 3);
  if (qword_1025D4620 != -1)
  {
    sub_10190BC08();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
  {
    v5 = a1[152];
    v6 = a1[153];
    v7 = a1[154];
    *buf = 67240960;
    v22 = v3;
    v23 = 1026;
    v24 = v5;
    v25 = 2050;
    v26 = v6;
    v27 = 2050;
    v28 = v7;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "Nlp, isBroadConnection, %{public}d, reachability, %{public}d, dataAccessTech, %{public}ld, %{public}ld", buf, 0x22u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_10190B63C();
    }

    v9 = a1[152];
    v10 = a1[153];
    v11 = a1[154];
    v14[0] = 67240960;
    v14[1] = v3;
    v15 = 1026;
    v16 = v9;
    v17 = 2050;
    v18 = v10;
    v19 = 2050;
    v20 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 1, "Nlp, isBroadConnection, %{public}d, reachability, %{public}d, dataAccessTech, %{public}ld, %{public}ld", v14, 34);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNetworkLocationProvider::isBroadConnection()", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  return v3;
}

uint64_t sub_100234AA0(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 128);
  v3 = (a1 + 136);
  if (v2 == (a1 + 136))
  {
    return 0;
  }

  LODWORD(v4) = 0;
  a2.n128_u64[0] = 136315906;
  v17 = a2;
  do
  {
    v5 = sub_100234DA4(v2[10]);
    v6 = sub_1002332E4(v2[10]);
    v4 = (v4 + v6);
    if (v6)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B239BC();
      }

      v7 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        (*(*v2[10] + 16))(__p);
        v8 = __p;
        if (v24 < 0)
        {
          v8 = *__p;
        }

        *buf = v17.n128_u32[0];
        v28 = v8;
        v29 = 1024;
        v30 = 1;
        v31 = 1024;
        v32 = v4;
        v33 = 2048;
        v34 = v5;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "WIFITILE: getNumOfActiveDownloads, tile, %s, is being downloaded, %d, total, %d, download, %p", buf, 0x22u);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(*__p);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D48A0 != -1)
        {
          sub_101B239BC();
        }

        v12 = qword_1025D48A8;
        (*(*v2[10] + 16))(v18);
        v13 = v18;
        if (v19 < 0)
        {
          v13 = v18[0];
        }

        *__p = v17.n128_u32[0];
        *&__p[4] = v13;
        v21 = 1024;
        v22 = 1;
        v23 = 1024;
        v24 = v4;
        v25 = 2048;
        v26 = v5;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v12, 2, "WIFITILE: getNumOfActiveDownloads, tile, %s, is being downloaded, %d, total, %d, download, %p", __p, 34, v17.n128_u32[0], v17.n128_u64[1]);
        v15 = v14;
        if (v19 < 0)
        {
          operator delete(v18[0]);
        }

        sub_100152C7C("Generic", 1, 0, 2, "unsigned int CLWifiTilesManager::getNumOfActiveDownloads()", "%s\n", v15);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }

    v9 = v2[1];
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = v2[2];
        v11 = *v10 == v2;
        v2 = v10;
      }

      while (!v11);
    }

    v2 = v10;
  }

  while (v10 != v3);
  return v4;
}

uint64_t sub_100234DA4(uint64_t a1)
{
  v2 = *(a1 + 40);
  (*(*v2 + 16))(v2);
  v3 = *(a1 + 104);
  (*(*v2 + 24))(v2);
  return v3;
}

uint64_t sub_100234E24(uint64_t a1, _DWORD *a2)
{
  v2 = a2 + 12;
  if (a2[12])
  {
    sub_101B25FA0(a1);
  }

  v5 = (*(**(a1 + 448) + 56))(*(a1 + 448));
  v6 = *(a1 + 308);
  v7 = *(a1 + 252);
  v8 = (*(*a1 + 224))(a1);
  v9 = (*(*a2 + 56))(a2) / 20.0;
  v10 = fmin(fmax(v9, (*(*a2 + 64))(a2) / 20.0), 0.01);
  v11 = *(a1 + 236);
  v12 = v11 - sub_100085338(v2);
  v13 = *(a1 + 244);
  v14 = v13 - sub_100085314(v2);
  v28 = v12 >= -v10 && v12 <= v10 + (*(*a2 + 56))(a2);
  v15 = v5 - v6;
  v16 = v14 >= -v10 && v14 <= v10 + (*(*a2 + 64))(a2);
  v17 = v15 < *(v8 + 136) && v7 > 0.0;
  if (v17 && *(a1 + 252) <= 3000.0)
  {
    v18 = v28 & v16;
  }

  else
  {
    v18 = 0;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101B23F7C();
  }

  v19 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(v8 + 177);
    (*(*a2 + 16))(__p, a2);
    v21 = v34 >= 0 ? __p : *__p;
    *buf = 134547459;
    v47 = v12;
    v48 = 2053;
    v49 = v14;
    v50 = 1024;
    v51 = v28;
    v52 = 1024;
    v53 = v16;
    v54 = 1024;
    v55 = v18;
    v56 = 1024;
    v57 = v20;
    v58 = 1024;
    v59 = v17;
    v60 = 2080;
    v61 = v21;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WIFITILE: isCurrentTile, degreesFromCornerLat, %{sensitive}.8lf, degreesFromCornerLon, %{sensitive}.8lf, inside, %d, %d, isCurrentTile, %d, %d, isCurrentLocationKnown, %d, %s", buf, 0x3Eu);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(*__p);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D48A0 != -1)
    {
      sub_101B239BC();
    }

    v23 = qword_1025D48A8;
    v24 = *(v8 + 177);
    (*(*a2 + 16))(v29, a2);
    if (v30 >= 0)
    {
      v25 = v29;
    }

    else
    {
      v25 = v29[0];
    }

    *__p = 134547459;
    *&__p[4] = v12;
    v32 = 2053;
    v33 = v14;
    v34 = 1024;
    v35 = v28;
    v36 = 1024;
    v37 = v16;
    v38 = 1024;
    v39 = v18;
    v40 = 1024;
    v41 = v24;
    v42 = 1024;
    v43 = v17;
    v44 = 2080;
    v45 = v25;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v23, 2, "WIFITILE: isCurrentTile, degreesFromCornerLat, %{sensitive}.8lf, degreesFromCornerLon, %{sensitive}.8lf, inside, %d, %d, isCurrentTile, %d, %d, isCurrentLocationKnown, %d, %s", __p, 62);
    v27 = v26;
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiTilesManager::isCurrentTile(CLTileFile *)", "%s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  return v18;
}

void sub_100235310(uint64_t a1, int a2)
{
  BYTE6(v20) = a2;
  v2 = (a1 + 240);
  if (a2 != 68 && *(a1 + 240) != a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101ABEA90();
    }

    v4 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_INFO))
    {
      v5 = sub_100085790(*(a1 + 48));
      v6 = sub_100085338(a1 + 48);
      v7 = sub_100085314(a1 + 48);
      *buf = &v20 + 6;
      v8 = sub_100EE0BB4(qword_102638100, &v20 + 6, &unk_101C66300, buf)[5];
      *buf = v2;
      v9 = sub_100EE0BB4(qword_102638100, v2, &unk_101C66300, buf)[5];
      *buf = 136447235;
      *&buf[4] = v5;
      v31 = 2053;
      v32 = v6;
      v33 = 2053;
      v34 = v7;
      v35 = 2082;
      v36 = v8;
      v37 = 2082;
      v38 = v9;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "@TileReq, %{public}s, skip, llsw, %{sensitive}.2lf, %{sensitive}.2lf, reason, %{public}s, last, %{public}s", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_101ABE668();
      }

      v10 = qword_1025D4628;
      v12 = *(a1 + 48);
      v11 = a1 + 48;
      v13 = sub_100085790(v12);
      v14 = sub_100085338(v11);
      v15 = sub_100085314(v11);
      *v21 = &v20 + 6;
      v16 = sub_100EE0BB4(qword_102638100, &v20 + 6, &unk_101C66300, v21)[5];
      *v21 = v2;
      v17 = sub_100EE0BB4(qword_102638100, v2, &unk_101C66300, v21)[5];
      *v21 = 136447235;
      *&v21[4] = v13;
      v22 = 2053;
      v23 = v14;
      v24 = 2053;
      v25 = v15;
      v26 = 2082;
      v27 = v16;
      v28 = 2082;
      v29 = v17;
      LODWORD(v20) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v10, 1, "@TileReq, %{public}s, skip, llsw, %{sensitive}.2lf, %{sensitive}.2lf, reason, %{public}s, last, %{public}s", v21, v20);
      v19 = v18;
      sub_100152C7C("Generic", 1, 0, 2, "void CLTileFile::setSkipDownloadReason(char)", "%s\n", v18);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }

  *v2 = BYTE6(v20);
}

id *sub_100235624(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 20) <= 0.0)
  {
    sub_101B275C4();
  }

  sub_10000FF38(v16, "CLWifiTilesManager::updateTileLocationRelevancy", 0);
  v4 = (*(*a1 + 224))(a1);
  if (*v4)
  {
    (*(**(a1 + 448) + 56))(*(a1 + 448));
    if (*(a2 + 20) >= 0.0 && vabdd_f64(v5, *(a2 + 76)) <= 3600.0)
    {
      sub_1002359B8(*(a1 + 480), a2, *&qword_1026321A0, buf, v5);
      if (*&buf[0])
      {
        *(&buf[0] + 1) = *&buf[0];
        operator delete(*&buf[0]);
      }
    }

    else
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101B239BC();
      }

      v6 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "WIFITILE: location not relevant", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B239E4(buf);
        LOWORD(v17) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "WIFITILE: location not relevant", &v17, 2);
        v8 = v7;
        sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)", "%s\n", v7);
LABEL_25:
        if (v8 != buf)
        {
          free(v8);
        }
      }
    }
  }

  else
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101B239BC();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v10 = v4 + 8;
      if (*(v4 + 31) < 0)
      {
        v10 = *(v4 + 8);
      }

      LODWORD(buf[0]) = 136315138;
      *(buf + 4) = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "WIFITILE: tiles, %s, not active", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B239E4(buf);
      v14 = *(v4 + 8);
      v13 = v4 + 8;
      v12 = v14;
      if (*(v13 + 23) >= 0)
      {
        v12 = v13;
      }

      v17 = 136315138;
      v18 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "WIFITILE: tiles, %s, not active", &v17);
      v8 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "void CLWifiTilesManager::updateTileLocationRelevancy(const CLDaemonLocation &)", "%s\n", v15);
      goto LABEL_25;
    }
  }

  return sub_10001A420(v16);
}

void sub_100235988(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10001A420(va);
  _Unwind_Resume(a1);
}

void sub_1002359B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void **a4@<X8>, double a5@<D0>)
{
  v10 = *(a1 + 56);
  v58 = a1 + 56;
  (*(v10 + 16))();
  v60 = 256;
  sub_100235DCC(a1, v57);
  sub_1002414D8((a1 + 72), v57, a2, v54, a5);
  sub_100236C0C(v53, v54[0], v54[1]);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_100198F4C(a1, v53, a3, &v51, a5);
  v11 = v52;
  if (v51 != v52)
  {
    v12 = (v51 + 24);
    do
    {
      v13 = *(v12 - 24);
      v48 = *(v12 - 1);
      v47 = v13;
      if (*(v12 + 23) < 0)
      {
        sub_100007244(&__p, *v12, *(v12 + 1));
      }

      else
      {
        v14 = *v12;
        v50 = *(v12 + 2);
        __p = v14;
      }

      v15 = v12 - 24;
      if (*(v12 + 24) == 1)
      {
        sub_1012625C4(a1, &v38);
        v16 = a4[1];
        v17 = a4[2];
        if (v16 >= v17)
        {
          v25 = *a4;
          v26 = v16 - *a4;
          v27 = 0x8E38E38E38E38E39 * (v26 >> 4) + 1;
          if (v27 > 0x1C71C71C71C71C7)
          {
            sub_10028C64C();
          }

          v28 = 0x8E38E38E38E38E39 * ((v17 - v25) >> 4);
          if (2 * v28 > v27)
          {
            v27 = 2 * v28;
          }

          if (v28 >= 0xE38E38E38E38E3)
          {
            v27 = 0x1C71C71C71C71C7;
          }

          if (v27)
          {
            sub_100241440(a4, v27);
          }

          v29 = (16 * (v26 >> 4));
          *v29 = v38;
          v30 = v39;
          v31 = v40;
          v32 = v42;
          v29[3] = v41;
          v29[4] = v32;
          v29[1] = v30;
          v29[2] = v31;
          v33 = v43;
          v34 = v44;
          v35 = v46;
          v29[7] = v45;
          v29[8] = v35;
          v29[5] = v33;
          v29[6] = v34;
          v24 = v29 + 9;
          v36 = v29 - v26;
          memcpy(v29 - v26, v25, v26);
          v37 = *a4;
          *a4 = v36;
          a4[1] = v24;
          a4[2] = 0;
          if (v37)
          {
            operator delete(v37);
          }
        }

        else
        {
          *v16 = v38;
          v18 = v39;
          v19 = v40;
          v20 = v42;
          *(v16 + 3) = v41;
          *(v16 + 4) = v20;
          *(v16 + 1) = v18;
          *(v16 + 2) = v19;
          v21 = v43;
          v22 = v44;
          v23 = v46;
          *(v16 + 7) = v45;
          *(v16 + 8) = v23;
          *(v16 + 5) = v21;
          *(v16 + 6) = v22;
          v24 = v16 + 144;
        }

        a4[1] = v24;
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(__p);
      }

      v12 = (v12 + 56);
    }

    while (v15 + 56 != v11);
  }

  *&v38 = &v51;
  sub_100199B08(&v38);
  sub_100199B5C(v53, v53[1]);
  *&v38 = &v56;
  sub_100236AE4(&v38);
  *&v38 = &v55;
  sub_100236AE4(&v38);
  *&v38 = v54;
  sub_100236AE4(&v38);
  if (v57[0])
  {
    v57[1] = v57[0];
    operator delete(v57[0]);
  }

  if (HIBYTE(v60) == 1)
  {
    if (v60)
    {
      pthread_mutex_unlock(v59);
    }

    else
    {
      (*(*v58 + 24))(v58);
    }
  }
}

void sub_100235D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char *a42)
{
  v45 = *v42;
  if (*v42)
  {
    *(v42 + 8) = v45;
    operator delete(v45);
  }

  sub_100199B5C(&a41, a42);
  sub_101264B68((v43 - 224));
  v46 = *(v43 - 152);
  if (v46)
  {
    *(v43 - 144) = v46;
    operator delete(v46);
  }

  sub_1017EC98C(v43 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_100235DCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 56);
  (*(*(a1 + 56) + 16))(a1 + 56);
  sub_1002365D0(v3[5], a2);
  return ((*v3)[3])(v3);
}

void sub_100235E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

void sub_100235E78(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *(a1 + 104);
  if (v3 && sub_100023B68(v3))
  {
    *(&v23.__r_.__value_.__s + 23) = 7;
    strcpy(&v23, "SELECT ");
    sub_1002365D8(__p);
    if ((v22 & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    if ((v22 & 0x80u) == 0)
    {
      v5 = v22;
    }

    else
    {
      v5 = __p[1];
    }

    v6 = std::string::append(&v23, v4, v5);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v24.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v24.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v20 = 6;
    strcpy(__s, " FROM ");
    v8 = std::string::append(&v24, __s, 6uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v25.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v25.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = *(a1 + 23);
    if (v10 >= 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + 23);
    }

    else
    {
      v12 = *(a1 + 8);
    }

    v13 = std::string::append(&v25, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v27 = v13->__r_.__value_.__r.__words[2];
    *buf = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    if (v20 < 0)
    {
      operator delete(*__s);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (v27 >= 0)
    {
      v15 = buf;
    }

    else
    {
      v15 = *buf;
    }

    sub_1000388D8(*(a1 + 104), v15);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v16 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192AFA8(buf);
    LOWORD(v25.__r_.__value_.__l.__data_) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "not connected to wifi #tile header table", &v25, 2);
    v18 = v17;
    sub_100152C7C("Generic", 1, 0, 2, "std::vector<CLWifiTileHeaderEntry> CLWifiTileHeaderDatabase::selectAll()", "%s\n", v17);
    if (v18 != buf)
    {
      free(v18);
    }
  }
}

void sub_100236478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  v54 = *a15;
  if (*a15)
  {
    *(a15 + 8) = v54;
    operator delete(v54);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002365D8(uint64_t a1@<X8>)
{
  v2 = &qword_102659A78;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = 17;
  do
  {
    if (*(v2 + 2) != 4)
    {
      v4 = *(a1 + 23);
      if ((v4 & 0x80u) != 0)
      {
        v4 = *(a1 + 8);
      }

      if (v4)
      {
        *(&v11.__r_.__value_.__s + 23) = 2;
        strcpy(&v11, ", ");
        v5 = strlen(*v2);
        v6 = std::string::append(&v11, *v2, v5);
        v7 = *&v6->__r_.__value_.__l.__data_;
        v13 = v6->__r_.__value_.__r.__words[2];
        *__p = v7;
        v6->__r_.__value_.__l.__size_ = 0;
        v6->__r_.__value_.__r.__words[2] = 0;
        v6->__r_.__value_.__r.__words[0] = 0;
        if (v13 >= 0)
        {
          v8 = __p;
        }

        else
        {
          v8 = __p[0];
        }

        if (v13 >= 0)
        {
          v9 = HIBYTE(v13);
        }

        else
        {
          v9 = __p[1];
        }

        std::string::append(a1, v8, v9);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v11.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        v10 = strlen(*v2);
        std::string::append(a1, *v2, v10);
      }
    }

    v2 += 6;
    --v3;
  }

  while (v3);
}

void sub_100236708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100236764(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_10028C64C();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_100242100(a1, v6);
  }

  v7 = 48 * v2;
  v17 = 0;
  v18 = v7;
  v19 = 48 * v2;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  if (*(a2 + 47) < 0)
  {
    sub_100007244((v7 + 24), *(a2 + 3), *(a2 + 4));
    v7 = v18;
    v10 = v19;
  }

  else
  {
    v9 = *(a2 + 24);
    *(48 * v2 + 0x28) = *(a2 + 5);
    *(48 * v2 + 0x18) = v9;
    v10 = 48 * v2;
  }

  *&v19 = v10 + 48;
  v11 = a1[1];
  v12 = v7 + *a1 - v11;
  sub_100241F7C(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1002368FC(&v17);
  return v16;
}

void sub_1002368B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1002368FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002368C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10046F2DC(a1);
  }

  return a1;
}

uint64_t sub_1002368FC(uint64_t a1)
{
  sub_100236934(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100236934(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 48;
      *(a1 + 16) = v2 - 48;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *sub_100236990(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  result = *sub_1000897E8(a1, &v4, a2);
  if (!result)
  {
    sub_100242040();
  }

  return result;
}

uint64_t *sub_100236A10(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100236A98(result, a4);
  }

  return result;
}

void sub_100236A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_100236AE4(&a9);
  _Unwind_Resume(a1);
}

void sub_100236A98(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    sub_100242100(a1, a2);
  }

  sub_10028C64C();
}

void sub_100236AE4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100236B38(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100236B38(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void *sub_100236B88(uint64_t **a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = *sub_1002422A4(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_100242040();
  }

  return result;
}

uint64_t sub_100236C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_100236B88(a1, v4, v6, v6);
      v6 += 48;
    }

    while (v6 != a3);
  }

  return a1;
}

void sub_100236C90(uint64_t a1, void *a2, void *a3)
{
  if (sub_1001AF614())
  {
    if (a3 && ([a3 isValid] & 1) != 0)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A31C74();
      }

      v5 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        objc_msgSend_getBasicInfo(a3);
        v6 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
        *buf = 136380675;
        v47 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, local store valid, %{private}s", buf, 0xCu);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A3267C();
      }

      __p[0].__r_.__value_.__r.__words[0] = 0x7FEFFFFFFFFFFFFFLL;
      sub_1001ACAE0(buf, a1, __p);
      if (sub_101208234(buf))
      {
        sub_10018F0D0(__p);
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0].__r_.__value_.__r.__words[0];
        }

        v8 = [NSString stringWithUTF8String:v7];
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (qword_1025D4620 != -1)
        {
          sub_101A31D8C();
        }

        v9 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [(NSString *)v8 UTF8String];
          LODWORD(__p[0].__r_.__value_.__l.__data_) = 136380675;
          *(__p[0].__r_.__value_.__r.__words + 4) = v10;
          _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, deleting records for associated AP %{private}s in local store as it is detected as moving using GPS harvest samples!", __p, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A3277C(__p);
          v23 = qword_1025D4628;
          LODWORD(v36) = 136380675;
          *(&v36 + 4) = [(NSString *)v8 UTF8String];
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v23, 0, "WifiAssociatedApCentroidStore, deleting records for associated AP %{private}s in local store as it is detected as moving using GPS harvest samples!", &v36, 12);
          v25 = v24;
          sub_100152C7C("Generic", 1, 0, 2, "static void CLWifiAssociatedApCentroidStoreUpdateManager::updateSyncedDataStoreIfNecessary(const std::vector<CLWifiHarvestDatabaseEntry> &, const CLMacAddress &, CLWifiAssociatedApCentroidSyncedDataStore *)", "%s\n", v24);
          if (v25 != __p)
          {
            free(v25);
          }
        }

        [a3 deleteRecordByMacString:v8];
      }

      else
      {
        sub_1001AD9CC(buf, &v36);
        if (fabs(*&v36) <= 90.0 && fabs(*(&v36 + 1)) <= 180.0)
        {
          sub_1001A7094(__p);
          (*(*__p[0].__r_.__value_.__l.__data_ + 48))(&v54);
          if (__p[0].__r_.__value_.__l.__size_)
          {
            sub_100008080(__p[0].__r_.__value_.__l.__size_);
          }

          if (v54)
          {
            sub_100199FB0(v54);
            sub_1001E0C88(v54);
            v14 = v54;
            sub_1001970F8(__p, v44, v42, v41, 0, v38, -1, *&v36, *(&v36 + 1), v37, v39, v40, v43);
            v53 = v45;
            Current = CFAbsoluteTimeGetCurrent();
            v16 = sub_1001E0C90(v14, __p, Current);
          }

          else
          {
            if (qword_1025D4620 != -1)
            {
              sub_101A31D8C();
            }

            v17 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
            {
              LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEBUG, "#warning, movingApDetector is null", __p, 2u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A3277C(__p);
              v35[0] = 0;
              _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 2, "#warning, movingApDetector is null", v35, 2);
              v33 = v32;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL isBadClientSideCentroidByMovingApDetector(const CLWifiAccessPoint &)", "%s\n", v32);
              if (v33 != __p)
              {
                free(v33);
              }
            }

            v16 = 0;
          }

          if (*(&v54 + 1))
          {
            sub_100008080(*(&v54 + 1));
          }

          if (v16)
          {
            sub_10018F0D0(__p);
            if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v18 = __p;
            }

            else
            {
              v18 = __p[0].__r_.__value_.__r.__words[0];
            }

            v19 = [NSString stringWithUTF8String:v18];
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (qword_1025D4620 != -1)
            {
              sub_101A31D8C();
            }

            v20 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [(NSString *)v19 UTF8String];
              LODWORD(__p[0].__r_.__value_.__l.__data_) = 136380675;
              *(__p[0].__r_.__value_.__r.__words + 4) = v21;
              _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, deleting records for associated AP %{private}s in local store as it fails to pass cross-check with GPS/Cell!", __p, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_101A3277C(__p);
              v28 = qword_1025D4628;
              v29 = [(NSString *)v19 UTF8String];
              LODWORD(v54) = 136380675;
              *(&v54 + 4) = v29;
              LODWORD(v34) = 12;
              _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v28, 0, "WifiAssociatedApCentroidStore, deleting records for associated AP %{private}s in local store as it fails to pass cross-check with GPS/Cell!", &v54, v34);
              v31 = v30;
              sub_100152C7C("Generic", 1, 0, 2, "static void CLWifiAssociatedApCentroidStoreUpdateManager::updateSyncedDataStoreIfNecessary(const std::vector<CLWifiHarvestDatabaseEntry> &, const CLMacAddress &, CLWifiAssociatedApCentroidSyncedDataStore *)", "%s\n", v30);
              if (v31 != __p)
              {
                free(v31);
              }
            }

            [a3 deleteRecordByMacString:v19];
          }

          else
          {
            v22 = sub_10024338C(buf);
            sub_1002434B8(v22);
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101A31D8C();
          }

          v13 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
            _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip updating local store as it does not have a valid centroid!", __p, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A3277C(__p);
            LOWORD(v54) = 0;
            _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, qword_1025D4628, 0, "WifiAssociatedApCentroidStore, skip updating local store as it does not have a valid centroid!", &v54, 2);
            v27 = v26;
            sub_100152C7C("Generic", 1, 0, 2, "static void CLWifiAssociatedApCentroidStoreUpdateManager::updateSyncedDataStoreIfNecessary(const std::vector<CLWifiHarvestDatabaseEntry> &, const CLMacAddress &, CLWifiAssociatedApCentroidSyncedDataStore *)", "%s\n", v26);
            if (v27 != __p)
            {
              free(v27);
            }
          }
        }
      }

      if (v51 < 0)
      {
        operator delete(v50);
      }

      if (v48)
      {
        v49 = v48;
        operator delete(v48);
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A31C74();
      }

      v12 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip updating local store as the store is invalid", __p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A327C0();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A31C74();
    }

    v11 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip updating local store as it is disabled by settings", __p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A325A0();
    }
  }
}

void sub_1002374CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  v60 = *(v58 - 88);
  if (v60)
  {
    sub_100008080(v60);
  }

  sub_100C42C30(&a25);
  _Unwind_Resume(a1);
}

const __CFString *sub_10023756C(uint64_t **a1, uint64_t a2)
{
  v2 = a2;
  __src = 0;
  v20 = 0;
  v21 = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *v3;
      if (v5 >= v21)
      {
        v7 = __src;
        v8 = v5 - __src;
        v9 = (v5 - __src) >> 3;
        v10 = v9 + 1;
        if ((v9 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v11 = v21 - __src;
        if ((v21 - __src) >> 2 > v10)
        {
          v10 = v11 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v10;
        }

        if (v12)
        {
          sub_1000B9708(&__src, v12);
        }

        v13 = (v5 - __src) >> 3;
        v14 = (8 * v9);
        v15 = (8 * v9 - 8 * v13);
        *v14 = v6;
        v5 = (v14 + 1);
        memcpy(v15, v7, v8);
        v16 = __src;
        __src = v15;
        v20 = v5;
        v21 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v5 = v6;
        v5 += 8;
      }

      v20 = v5;
      v3 += 14;
    }

    while (v3 != v4);
  }

  v17 = sub_1002376D4(v2, &__src);
  if (__src)
  {
    v20 = __src;
    operator delete(__src);
  }

  return v17;
}

void sub_1002376B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const __CFString *sub_1002376D4(int a1, uint64_t *a2)
{
  if (a1 < 1)
  {
    return &stru_1025052F8;
  }

  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return &stru_1025052F8;
  }

  v5 = v3 - v2;
  v6 = (v3 - v2) >> 3;
  if (v6 <= a1)
  {
    v7 = 0;
  }

  else
  {
    v7 = rand() % (v6 - a1 + 1);
  }

  *(&v18.__r_.__value_.__s + 23) = 0;
  v18.__r_.__value_.__s.__data_[0] = 0;
  if (v7 >= v6)
  {
    v15 = &v18;
  }

  else
  {
    v9 = 8 * v7;
    v10 = v7 + 1;
    v11 = 1;
    do
    {
      if (v11 != 1)
      {
        std::string::append(&v18, ", ", 2uLL);
      }

      sub_10018F0D0(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v18, p_p, size);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v10 >= (v5 >> 3))
      {
        break;
      }

      v9 += 8;
      ++v10;
    }

    while (v11++ < a1);
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = &v18;
    }

    else
    {
      v15 = v18.__r_.__value_.__r.__words[0];
    }
  }

  v8 = [NSString stringWithCString:v15 encoding:4];
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_100237850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002378A4(uint64_t a1, double *a2, uint64_t *a3, double a4)
{
  v8 = *(a1 + 24);
  Current = CFAbsoluteTimeGetCurrent();
  result = sub_100199EB8(v8, Current);
  if (result)
  {
    if (*a3)
    {
      return sub_100237C4C(a1, a2, a3, a4) == 0;
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101968930();
      }

      v11 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *v12 = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "MovingApDetector, centroid database is null!", v12, 2u);
      }

      result = sub_10000A100(121, 0);
      if (result)
      {
        sub_101969688();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100237998(uint64_t a1, double *a2, double a3)
{
  if (!sub_10019A2D4(a2))
  {
    return 3;
  }

  v6 = *(a1 + 24);
  Current = CFAbsoluteTimeGetCurrent();
  if (!sub_100199EB8(v6, Current))
  {
    return 2;
  }

  sub_1001AB7A0(a2, v18);
  v20 = a3;
  v19 = 0;
  v8 = sub_1001D3D90(*(a1 + 24), v18);
  v9 = sub_1001D3D90(*(a1 + 40), v18);
  sub_1002386C0((a1 + 168), v8, v9);
  if (qword_1025D4620 != -1)
  {
    sub_1019688C4();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_1002386FC(a2, &v27);
    v11 = (v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v27 : v27.__r_.__value_.__r.__words[0];
    *buf = 136643331;
    v22 = v11;
    v23 = 1024;
    v24 = v9;
    v25 = 1024;
    v26 = v8;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "MovingApDetector, centroid: %{sensitive}s, Rejected by Cell Only IM: %d, Rejected by GPS IM: %d", buf, 0x18u);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1019688C4();
    }

    v13 = qword_1025D4628;
    sub_1002386FC(a2, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v27.__r_.__value_.__l.__data_) = 136643331;
    *(v27.__r_.__value_.__r.__words + 4) = p_p;
    WORD2(v27.__r_.__value_.__r.__words[1]) = 1024;
    *(&v27.__r_.__value_.__r.__words[1] + 6) = v9;
    WORD1(v27.__r_.__value_.__r.__words[2]) = 1024;
    HIDWORD(v27.__r_.__value_.__r.__words[2]) = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v13, 0, "MovingApDetector, centroid: %{sensitive}s, Rejected by Cell Only IM: %d, Rejected by GPS IM: %d", &v27, 24);
    v16 = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "CrossCheckOutcome CLMovingApDetector::crossCheckCentroid(const CLWifiAPLocation &, const CFAbsoluteTime)", "%s\n", v16);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  return v8 ^ 1u;
}

uint64_t sub_100237C4C(uint64_t a1, double *a2, uint64_t *a3, double a4)
{
  v8 = sub_100237998(a1, a2, a4);
  v9 = v8;
  if (v8 == 1)
  {
    sub_1002380A8(a1, a2, a3, a4);
  }

  else if (!v8)
  {
    sub_1008DB7FC(a1, a2, a3);
  }

  return v9;
}