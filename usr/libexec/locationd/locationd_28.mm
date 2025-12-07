unint64_t *sub_1001D4750(unint64_t *a1, void *a2)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = a2[1];
  if (a2[2] == v4)
  {
    v5 = 0;
    v8 = 0;
    v7 = (v4 + ((((a2[5] + v3) * 0x4EC4EC4EC4EC4EC5uLL) >> 64) & 0x7FFFFFFFFFFFFFF8));
  }

  else
  {
    v5 = (*(v4 + 8 * (v3 / 0x1A)) + 156 * (v3 % 0x1A));
    v6 = a2[5] + v3;
    v7 = (v4 + 8 * (v6 / 0x1A));
    v8 = (*v7 + 156 * (v6 % 0x1A));
  }

  sub_1001DA11C(a1, (v4 + 8 * (v3 / 0x1A)), v5, v7, v8);
  return a1;
}

void sub_1001D4820(float64x2_t *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  if (a3[5])
  {
    v4 = *(a3[1] + 8 * (a3[4] / 0x1AuLL)) + 156 * (a3[4] % 0x1AuLL);
    if (*(a2 + 76) - *(v4 + 76) < 900.0)
    {
      *a4 = 1;
      sub_1001D4898(a1, a2, v4, a4 + 1, a4 + 2, a4 + 2);
    }
  }
}

void sub_1001D4898(float64x2_t *a1, uint64_t a2, uint64_t a3, double *a4, BOOL *a5, double *a6)
{
  sub_1001097CC(a1, a2, a3);
  v13 = v12;
  v14 = *(a2 + 76);
  v15 = v14 - *(a3 + 76);
  if (v15 >= -2.0)
  {
    v17 = v15 >= 0.0 || v15 <= -2.0;
    v18 = fabs(v15);
    if (v17)
    {
      v18 = v14 - *(a3 + 76);
    }

    v19 = sub_1001F5CA4(a1, v18, v14);
    v20 = v19 + (*(a3 + 20) + *(a2 + 20)) * 3.0;
    *a4 = v20;
    *a6 = v13 - v20;
    *a5 = v13 < *a4;
    if (qword_1025D4870 != -1)
    {
      sub_101B70AC4();
    }

    v21 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v22 = *a4;
      v23 = *a5;
      sub_1001D78F4(v43);
      v24 = SHIBYTE(v46);
      v25 = *v43;
      sub_1001D78F4(__p);
      v26 = v43;
      if (v24 < 0)
      {
        v26 = v25;
      }

      if (v42 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      *buf = 134219266;
      v55 = v22;
      v56 = 2048;
      v57 = *&v13;
      v58 = 2048;
      v59 = v19;
      v60 = 1024;
      v61 = v23;
      v62 = 2080;
      v63 = v26;
      v64 = 2080;
      v65 = v27;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "IntegrityMonitor, hpl %.1f, distance %.1f, hplmodifier %.1f, withinhpl_ %d, loc1 %s, loc2 %s", buf, 0x3Au);
      if (v42 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v46) < 0)
      {
        operator delete(*v43);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B70AD8(buf);
      v28 = qword_1025D4878;
      v29 = *a4;
      v30 = *a5;
      sub_1001D78F4(__p);
      v31 = v42;
      v32 = __p[0];
      sub_1001D78F4(&v38);
      v33 = __p;
      if (v31 < 0)
      {
        v33 = v32;
      }

      if (SHIBYTE(v40) >= 0)
      {
        v34 = &v38;
      }

      else
      {
        v34 = v38;
      }

      *v43 = 134219266;
      *&v43[4] = v29;
      v44 = 2048;
      v45 = v13;
      v46 = 2048;
      v47 = v19;
      v48 = 1024;
      v49 = v30;
      v50 = 2080;
      v51 = v33;
      v52 = 2080;
      v53 = v34;
      LODWORD(v37) = 58;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 2, "IntegrityMonitor, hpl %.1f, distance %.1f, hplmodifier %.1f, withinhpl_ %d, loc1 %s, loc2 %s", COERCE_DOUBLE(v43), v37, *&v38, v39, v40, __p[0]);
      v36 = v35;
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v38);
      }

      if (v42 < 0)
      {
        operator delete(__p[0]);
      }

      sub_100152C7C("Generic", 1, 0, 2, "void CLIntegrityMonitor::crossCheck(const CLDaemonLocation &, const CLDaemonLocation &, double &, BOOL &, double &)", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }
  }

  else
  {
    if (qword_1025D4870 != -1)
    {
      sub_101B70AC4();
    }

    v16 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v55 = v15;
      v56 = 2048;
      v57 = 0xC000000000000000;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "IntegrityMonitor, #Warning deltaTime = %0.3f, but most negative allowed is %0.3lf, resetting Integrity Monitor", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B70B1C(v15);
    }

    sub_10120B8E8(a1);
  }
}

void sub_1001D4C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001D4CB8(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 96);
  if ((v5 & 0xFFFFFFF7) == 1)
  {
    v6 = *(a1 + 5176);
  }

  else
  {
    v6 = 0;
  }

  v7 = v5 == 4 || v5 == 11;
  if (!v7 && (v6 & 1) == 0)
  {
    v29 = v5 > 0xA;
    v30 = (1 << v5) & 0x5C0;
    if (v29 || v30 == 0)
    {
      return;
    }
  }

  *(a1 + 2000) = 0xBFF0000000000000;
  v8 = (a1 + 2008);
  *(a1 + 2008) = 0u;
  *(a1 + 2024) = 0xBFF0000000000000;
  v9 = sub_10000B1F8(a1, a2);
  *buf = 1;
  *(a1 + 2000) = sub_10001A6B0(v9, buf);
  *(a1 + 2016) = *(a2 + 28);
  *v8 = 0;
  v56 = 0;
  *v57 = 0;
  *&v57[8] = xmmword_101C75BF0;
  v58 = -1;
  v59 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  if (!(*(**(a1 + 280) + 288))())
  {
    return;
  }

  v10 = *(a2 + 36);
  if (v10 <= 0.0 || (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || ((v6 ^ 1 | a3) & 1) == 0)
  {
    v11 = *&v57[8] > 0.0;
    if (*&v57[8] >= 20.0)
    {
      v11 = 0;
    }

    v12 = (*&v57[8] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v11;
    goto LABEL_18;
  }

  if (v10 >= *(sub_1000F7F38() + 44))
  {
    v32 = *&v57[8] > 0.0;
    if (*&v57[8] >= 20.0)
    {
      v32 = 0;
    }

    v12 = (*&v57[8] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && v32;
    if (*&v57[8] >= *(a2 + 36))
    {
      v12 = 0;
    }

LABEL_18:
    v52 = v12;
    goto LABEL_19;
  }

  v52 = 0;
LABEL_19:
  if (qword_1025D4600 != -1)
  {
    sub_101ACBA1C();
  }

  v13 = qword_1025D4608;
  v14 = os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG);
  if (v14)
  {
    v16 = *(a2 + 96);
    v17 = *(a2 + 504);
    v18 = *(a2 + 28);
    v19 = *(a2 + 36);
    v20 = *(a2 + 476);
    v21 = *(a2 + 472);
    v46 = *(a1 + 5176);
    v48 = *(a2 + 704);
    v50 = *(a2 + 712);
    v22 = sub_10000B1F8(v14, v15);
    v23 = sub_100125220(v22);
    *buf = 67244289;
    *&buf[4] = v52;
    *v95 = 1026;
    *&v95[2] = v16;
    v96 = 2050;
    v97 = v17;
    v98 = 2049;
    *v99 = v18;
    *&v99[8] = 2050;
    v100 = v19;
    v101 = 2050;
    v102 = v20;
    v103 = 1026;
    v104 = v21;
    v105 = 2050;
    v106 = v56;
    v107 = 2049;
    v108 = *v57;
    *v109 = 2050;
    *&v109[2] = *&v57[8];
    *&v109[10] = 2050;
    v110 = *&v57[16];
    v111 = 1026;
    v112 = v58;
    v113 = 1026;
    v114 = v46;
    *v115 = 2049;
    *&v115[2] = v48;
    *&v115[10] = 2050;
    v116 = v50;
    v117 = 1026;
    v118 = a3;
    v119 = 2050;
    v120 = v23;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "BaroAlt,updateAltIfApprprt,success,%{public}d,type,%{public}d,locMachContTime,%{public}lf,altPrior,%{private}.3lf,altUncPrior,%{public}.3lf,undulationPrior,%{public}.3lf,undulationModelPrior,%{public}d,baroAltApplicableTime,%{public}lf,baroAltVal,%{private}.3lf, baroAltUnc,%{public}.3lf,undulation,%{public}.3lf, undulationModel,%{public}d,emergency,%{public}d,rawAlt,%{private}.3lf,rawAltUnc,%{public}.3lf,isOverridenByWiFiZ,%{public}d,propagation_us,%{public}.3f", buf, 0x94u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4600 != -1)
    {
      sub_101ACBA1C();
    }

    v51 = qword_1025D4608;
    v35 = *(a2 + 96);
    v36 = *(a2 + 504);
    v37 = *(a2 + 28);
    v38 = *(a2 + 36);
    v39 = *(a2 + 476);
    v40 = *(a2 + 472);
    v45 = *(a1 + 5176);
    v47 = *(a2 + 704);
    v49 = *(a2 + 712);
    v41 = sub_10000B1F8(v33, v34);
    v42 = sub_100125220(v41);
    LODWORD(v63) = 67244289;
    HIDWORD(v63) = v52;
    LOWORD(v64) = 1026;
    *(&v64 + 2) = v35;
    HIWORD(v64) = 2050;
    v65 = v36;
    v66 = 2049;
    v67 = v37;
    v68 = 2050;
    v69 = v38;
    v70 = 2050;
    v71 = v39;
    v72 = 1026;
    v73 = v40;
    v74 = 2050;
    v75 = v56;
    v76 = 2049;
    v77 = *v57;
    v78 = 2050;
    v79 = *&v57[8];
    v80 = 2050;
    v81 = *&v57[16];
    v82 = 1026;
    v83 = v58;
    v84 = 1026;
    v85 = v45;
    v86 = 2049;
    v87 = v47;
    v88 = 2050;
    v89 = v49;
    v90 = 1026;
    v91 = a3;
    v92 = 2050;
    v93 = v42;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v51, 2, "BaroAlt,updateAltIfApprprt,success,%{public}d,type,%{public}d,locMachContTime,%{public}lf,altPrior,%{private}.3lf,altUncPrior,%{public}.3lf,undulationPrior,%{public}.3lf,undulationModelPrior,%{public}d,baroAltApplicableTime,%{public}lf,baroAltVal,%{private}.3lf, baroAltUnc,%{public}.3lf,undulation,%{public}.3lf, undulationModel,%{public}d,emergency,%{public}d,rawAlt,%{private}.3lf,rawAltUnc,%{public}.3lf,isOverridenByWiFiZ,%{public}d,propagation_us,%{public}.3f", &v63, 148);
    v44 = v43;
    sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::updateAltitudeWithBaroIfAppropriate(CLLocationProvider_Type::NotificationData &, const BOOL)", "%s\n", v43);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  if (v52)
  {
    *(a2 + 704) = *(a2 + 28);
    *(a2 + 720) = *(a2 + 476);
    *(a2 + 728) = *(a2 + 472);
    *(a2 + 28) = *v57;
    v24 = *&v57[16];
    *(a2 + 476) = v24;
    *(a2 + 472) = v58;
    *v8 = 1;
    v55 = 0;
    v25 = sub_100226520((a2 + 4), (a2 + 12), &v55);
    *buf = 184;
    *v95 = 100;
    v26 = *(a2 + 36);
    *&v99[6] = 0;
    HIDWORD(v100) = 185;
    *(&v102 + 2) = v26;
    LODWORD(v108) = 4;
    *v109 = 187;
    *&v109[8] = v26;
    *v115 = 4;
    *&v115[8] = 189;
    HIDWORD(v116) = v25;
    v121 = 0;
    v64 = 0;
    v65 = 0;
    v63 = 0;
    sub_1007B6614(&v63, buf, &v122, 4uLL);
    for (i = 128; i != -32; i -= 40)
    {
      sub_10008F96C(&buf[i]);
    }

    v28 = *(a1 + 5192);
    memset(v54, 0, sizeof(v54));
    sub_1007B68E0(v54, v63, v64, 0xCCCCCCCCCCCCCCCDLL * ((v64 - v63) >> 3));
    [v28 setMeasurements:sub_1007B2EC4(v54)];
    *buf = v54;
    sub_1007B6858(buf);
    *buf = &v63;
    sub_1007B6858(buf);
  }
}

void sub_1001D537C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char *a53)
{
  a53 = &a33;
  sub_1007B6858(&a53);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D53D4(uint64_t a1, int a2, uint64_t a3, double a4)
{
  v260 = a2;
  if (!a2)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v19 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "LocationController,#Warning, not notifying clients when provider is None", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AAC34C();
    }

    return 0;
  }

  v9 = a1 + 240;
  v8 = *(a1 + 240);
  if (!v8)
  {
    goto LABEL_9;
  }

  v10 = a1 + 240;
  v11 = *(a1 + 240);
  do
  {
    if (*(v11 + 32) >= a2)
    {
      v10 = v11;
    }

    v11 = *(v11 + 8 * (*(v11 + 32) < a2));
  }

  while (v11);
  if (v10 == v9 || *(v10 + 32) > a2)
  {
LABEL_9:
    v10 = a1 + 240;
  }

  v12 = (a1 + 220);
  if (!v8)
  {
    goto LABEL_17;
  }

  v13 = *v12;
  v14 = a1 + 240;
  v15 = *(a1 + 240);
  do
  {
    if (*(v15 + 32) >= v13)
    {
      v14 = v15;
    }

    v15 = *(v15 + 8 * (*(v15 + 32) < v13));
  }

  while (v15);
  if (v14 == v9 || v13 < *(v14 + 32))
  {
LABEL_17:
    v14 = a1 + 240;
  }

  if (!v8)
  {
    goto LABEL_25;
  }

  v16 = *(a1 + 224);
  v17 = a1 + 240;
  do
  {
    if (*(v8 + 32) >= v16)
    {
      v17 = v8;
    }

    v8 = *(v8 + 8 * (*(v8 + 32) < v16));
  }

  while (v8);
  if (v17 == v9 || v16 < *(v17 + 32))
  {
LABEL_25:
    v17 = a1 + 240;
  }

  if ([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")] && (*(v10 + 911) & 1) == 0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v46 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "LocationController,#Warning, not notifying clients when device is sleeping", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AABED4();
    }

    return 0;
  }

  if (a2 == 4 && sub_1002A4D0C(a1, v10, v14, a4))
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v18 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEBUG, "LocationController,#Warning, not notifying clients in WiFi to GPS transition", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AAC270();
    }

    return 0;
  }

  v20 = *(v10 + 116);
  v21 = *(v10 + 192);
  if ((v21 & 0xFFFFFFFE) != 0xA || *(v10 + 224) != 75 || (v22 = 0.0, v20 <= 0.0))
  {
    if (v20 < 20.0 && v20 > 0.0 && v21 == 4)
    {
      v22 = 20.0;
    }

    else
    {
      v22 = *(v10 + 116);
    }
  }

  v25 = *(v17 + 116);
  v26 = *(v17 + 192);
  if ((v26 & 0xFFFFFFFE) != 0xA || *(v17 + 224) != 75 || (v27 = 0.0, v25 <= 0.0))
  {
    if (v25 < 20.0 && v25 > 0.0 && v26 == 4)
    {
      v27 = 20.0;
    }

    else
    {
      v27 = *(v17 + 116);
    }
  }

  v30 = *(v14 + 116);
  v31 = *(v14 + 192);
  if ((v31 & 0xFFFFFFFE) != 0xA || *(v14 + 224) != 75 || (v32 = 0.0, v30 <= 0.0))
  {
    if (v30 < 20.0 && v30 > 0.0 && v31 == 4)
    {
      v32 = 20.0;
    }

    else
    {
      v32 = *(v14 + 116);
    }
  }

  v258 = v9 - 8;
  v256 = a3;
  v257 = *(a1 + 344) == a2 && *(v10 + 228) == 2;
  if (*v12 && *v12 != a2 && (*(v10 + 911) & 1) == 0)
  {
    v35 = *(v10 + 908);
    if (v35 <= *(v14 + 908) && a4 - *(v14 + 172) < *(v14 + 184))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101AAB6FC();
      }

      v36 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v37 = *(v10 + 100);
        v38 = *(v10 + 108);
        *buf = &v260;
        v39 = sub_100109DF4(v258, &v260, &unk_101C66300, buf);
        v40 = v39 + 6;
        if (*(v39 + 71) < 0)
        {
          v40 = *v40;
        }

        *buf = 134546179;
        *&buf[4] = v37;
        *&buf[12] = 2053;
        v283 = v38;
        v284 = 2082;
        v285 = v40;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "Got,lat,%{sensitive}.7f,lon,%{sensitive}.7f,for non-active location provider,%{public}s,ignoring", buf, 0x20u);
      }

      if (!sub_10000A100(121, 2))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v41 = qword_1025D4608;
      v42 = *(v10 + 100);
      v43 = *(v10 + 108);
      *v261 = &v260;
      v44 = sub_100109DF4(v258, &v260, &unk_101C66300, v261);
      v45 = v44 + 6;
      if (*(v44 + 71) < 0)
      {
        v45 = *v45;
      }

      goto LABEL_226;
    }

    if (v35 <= 0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_101AAB6FC();
      }

      v111 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v112 = *(v10 + 100);
        v113 = *(v10 + 108);
        *buf = &v260;
        v114 = sub_100109DF4(v258, &v260, &unk_101C66300, buf);
        v115 = v114 + 6;
        if (*(v114 + 71) < 0)
        {
          v115 = *v115;
        }

        *buf = 134546179;
        *&buf[4] = v112;
        *&buf[12] = 2053;
        v283 = v113;
        v284 = 2082;
        v285 = v115;
        _os_log_impl(dword_100000000, v111, OS_LOG_TYPE_DEBUG, "Got,lat,%{sensitive}.7f,lon,%{sensitive}.7f,for non-active location provider,%{public}s,ignoring", buf, 0x20u);
      }

      if (!sub_10000A100(121, 2))
      {
        return 0;
      }

      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v41 = qword_1025D4608;
      v42 = *(v10 + 100);
      v43 = *(v10 + 108);
      *v261 = &v260;
      v116 = sub_100109DF4(v258, &v260, &unk_101C66300, v261);
      v45 = v116 + 6;
      if (*(v116 + 71) < 0)
      {
        v45 = *v45;
      }

LABEL_226:
      *v261 = 134546179;
      *&v261[4] = v42;
      v262 = 2053;
      v263 = v43;
      v264 = 2082;
      v265 = v45;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v41, 2, "Got,lat,%{sensitive}.7f,lon,%{sensitive}.7f,for non-active location provider,%{public}s,ignoring", v261, 32);
      v118 = v117;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v117);
      if (v118 != buf)
      {
        free(v118);
      }

      return 0;
    }
  }

  v259 = (a1 + 224);
  v49 = *(v10 + 172);
  if (v49 > a4)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101AAB6FC();
    }

    v50 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      v51 = *(v10 + 100);
      v52 = *(v10 + 108);
      *buf = &v260;
      v53 = sub_100109DF4(v258, &v260, &unk_101C66300, buf);
      v54 = v53 + 6;
      if (*(v53 + 71) < 0)
      {
        v54 = *v54;
      }

      v55 = a4 - *(v10 + 172);
      *buf = 134546691;
      *&buf[4] = v51;
      *&buf[12] = 2053;
      v283 = v52;
      v284 = 2082;
      v285 = v54;
      v286 = 2050;
      v287 = v55;
      v288 = 2050;
      *v289 = a4;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Got future,lat,%{sensitive}.7f,lon,%{sensitive}.7f,from provider,%{public}s,age,%{public}.3f,correcting to,%{public}.3f", buf, 0x34u);
      v12 = (a1 + 220);
    }

    if (sub_10000A100(121, 2))
    {
      v181 = v12;
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v182 = qword_1025D4608;
      v183 = *(v10 + 100);
      v184 = *(v10 + 108);
      *v261 = &v260;
      v185 = sub_100109DF4(v258, &v260, &unk_101C66300, v261);
      v186 = v185 + 6;
      if (*(v185 + 71) < 0)
      {
        v186 = *v186;
      }

      v187 = a4 - *(v10 + 172);
      *v261 = 134546691;
      *&v261[4] = v183;
      v262 = 2053;
      v263 = v184;
      v264 = 2082;
      v265 = v186;
      v266 = 2050;
      v267 = v187;
      v268 = 2050;
      *v269 = a4;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v182, 0, "LocationController,#Warning,Got future,lat,%{sensitive}.7f,lon,%{sensitive}.7f,from provider,%{public}s,age,%{public}.3f,correcting to,%{public}.3f", v261, 52);
      v189 = v188;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v188);
      if (v189 != buf)
      {
        free(v189);
      }

      v12 = v181;
    }

    *(v10 + 172) = a4;
    v49 = a4;
  }

  v56 = *(v10 + 184);
  if (v56 >= 0.0 && vabdd_f64(a4, v49) > v56)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
    }

    v57 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = &v260;
      v58 = sub_100109DF4(v258, &v260, &unk_101C66300, buf);
      v59 = v58 + 6;
      if (*(v58 + 71) < 0)
      {
        v59 = *v59;
      }

      v60 = *(v10 + 100);
      v61 = *(v10 + 108);
      v62 = a4 - *(v10 + 172);
      v63 = *(v10 + 184);
      *buf = 136447235;
      *&buf[4] = v59;
      *&buf[12] = 2053;
      v283 = v60;
      v284 = 2053;
      v285 = v61;
      v286 = 2050;
      v287 = v62;
      v288 = 2050;
      *v289 = v63;
      _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "expiredLocation,provider,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,age,%{public}.3fs,lifespan,%{public}.1fs,(not throwing away)", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v196 = qword_1025D4608;
      *v261 = &v260;
      v197 = sub_100109DF4(v258, &v260, &unk_101C66300, v261);
      v198 = v197 + 6;
      if (*(v197 + 71) < 0)
      {
        v198 = *v198;
      }

      v199 = *(v10 + 100);
      v200 = *(v10 + 108);
      v201 = a4 - *(v10 + 172);
      v202 = *(v10 + 184);
      *v261 = 136447235;
      *&v261[4] = v198;
      v262 = 2053;
      v263 = v199;
      v264 = 2053;
      v265 = v200;
      v266 = 2050;
      v267 = v201;
      v268 = 2050;
      *v269 = v202;
      LODWORD(v251) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v196, 2, "expiredLocation,provider,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,age,%{public}.3fs,lifespan,%{public}.1fs,(not throwing away)", v261, v251);
      v204 = v203;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v203);
      if (v204 != buf)
      {
        free(v204);
      }
    }
  }

  if (*(v10 + 911) == 1)
  {
    v64 = (a1 + 224);
    if (!*v259 || *v259 != v260 && *(v17 + 180) <= *(v10 + 180) || (v65 = *(v17 + 184), v65 >= 0.0) && v65 + *(v17 + 172) < a4)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v66 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = &v260;
        v67 = sub_100109DF4(v258, &v260, &unk_101C66300, buf);
        v68 = v67 + 6;
        if (*(v67 + 71) < 0)
        {
          v68 = *v68;
        }

        v69 = *(a3 + 84);
        *buf = 136446466;
        *&buf[4] = v68;
        *&buf[12] = 1026;
        LODWORD(v283) = v69;
        _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEBUG, "current most confident provider,%{public}s,conf,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_10022FB88();
        }

        v190 = qword_1025D4608;
        *v261 = &v260;
        v191 = sub_100109DF4(v258, &v260, &unk_101C66300, v261);
        v192 = v191 + 6;
        if (*(v191 + 71) < 0)
        {
          v192 = *v192;
        }

        v193 = *(a3 + 84);
        *v261 = 136446466;
        *&v261[4] = v192;
        v262 = 1026;
        LODWORD(v263) = v193;
        LODWORD(v251) = 18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v190, 2, "current most confident provider,%{public}s,conf,%{public}d", v261, v251);
        v195 = v194;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v194);
        if (v195 != buf)
        {
          free(v195);
        }
      }

      v64 = (a1 + 224);
      *v259 = v260;
      v17 = v10;
    }
  }

  else
  {
    v64 = (a1 + 224);
  }

  if (!*v12)
  {
    goto LABEL_179;
  }

  v70 = *(a1 + 344);
  if (v260 == v70 && v257)
  {
    goto LABEL_179;
  }

  if (v260 == *v12 || (v84 = *(v14 + 184), v84 >= 0.0) && a4 - *(v14 + 172) > v84)
  {
    if (v260 == *v64)
    {
      goto LABEL_179;
    }

    sub_1001097CC((a1 + 120), v10 + 96, v17 + 96);
    v72 = v71;
    v47 = 1;
    if (v71 > 5000.0)
    {
      v73 = v71 <= v22 * 4.0 || v71 <= v27 * 4.0;
      if (!v73 && v71 > (*(v10 + 172) - *(v17 + 172)) * 50.0 && *(v17 + 180) - *(v10 + 180) >= 5)
      {
        if (qword_1025D4600 != -1)
        {
          sub_10022FB88();
        }

        v74 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
        {
          *buf = &v260;
          v75 = sub_100109DF4(v258, &v260, &unk_101C66300, buf);
          v76 = v75 + 6;
          if (*(v75 + 71) < 0)
          {
            v76 = *v76;
          }

          v77 = *(v10 + 100);
          v252 = *(v10 + 108);
          v254 = *(v10 + 180);
          *buf = a1 + 224;
          v78 = sub_100109DF4(v258, v259, &unk_101C66300, buf);
          v79 = v78 + 6;
          if (*(v78 + 71) < 0)
          {
            v79 = *v79;
          }

          v80 = *(v17 + 100);
          v81 = *(v17 + 108);
          v82 = *(v17 + 180);
          v83 = a4 - *(v17 + 172);
          *buf = 136449027;
          *&buf[4] = v76;
          *&buf[12] = 2053;
          v283 = v77;
          v284 = 2053;
          v285 = v252;
          v286 = 2050;
          v287 = v22;
          v288 = 1026;
          *v289 = v254;
          *&v289[4] = 2082;
          *&v289[6] = v79;
          v290 = 2053;
          v291 = v80;
          v292 = 2053;
          v293 = v81;
          v294 = 2050;
          v295 = v27;
          v296 = 1026;
          v297 = v82;
          v298 = 2050;
          v299 = v83;
          v300 = 2050;
          v301 = v72;
          _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,new,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,conflicts with confident,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,age,%{public}.3f,distance,%{public}.2f,discarding", buf, 0x72u);
        }

        if (!sub_10000A100(121, 2))
        {
          v47 = 0;
          goto LABEL_180;
        }

        v255 = v12;
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_10022FB88();
        }

        v133 = qword_1025D4608;
        *v261 = &v260;
        v214 = sub_100109DF4(v258, &v260, &unk_101C66300, v261);
        v215 = v214 + 6;
        if (*(v214 + 71) < 0)
        {
          v215 = *v215;
        }

        v216 = *(v10 + 100);
        v217 = *(v10 + 108);
        v253 = *(v10 + 180);
        *v261 = a1 + 224;
        v218 = sub_100109DF4(v258, v259, &unk_101C66300, v261);
        v219 = v218 + 6;
        if (*(v218 + 71) < 0)
        {
          v219 = *v219;
        }

        v220 = *(v17 + 100);
        v221 = *(v17 + 108);
        v222 = *(v17 + 180);
        v223 = a4 - *(v17 + 172);
        *v261 = 136449027;
        *&v261[4] = v215;
        v262 = 2053;
        v263 = v216;
        v264 = 2053;
        v265 = v217;
        v266 = 2050;
        v267 = v22;
        v268 = 1026;
        *v269 = v253;
        *&v269[4] = 2082;
        *&v269[6] = v219;
        v270 = 2053;
        v271 = v220;
        v272 = 2053;
        v273 = v221;
        v274 = 2050;
        v275 = v27;
        v276 = 1026;
        v277 = v222;
        v278 = 2050;
        v279 = v223;
        v280 = 2050;
        v281 = v72;
        LODWORD(v251) = 114;
        v144 = "LocationController,#Warning,new,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,conflicts with confident,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,age,%{public}.3f,distance,%{public}.2f,discarding";
LABEL_347:
        v224 = v133;
        v225 = 0;
LABEL_356:
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v224, v225, v144, v261, v251);
        v237 = v236;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v236);
        if (v237 != buf)
        {
          free(v237);
        }

        v47 = 0;
LABEL_359:
        v12 = v255;
      }
    }
  }

  else
  {
    if (*(v10 + 180) > *(v14 + 180))
    {
      if (v260 != v70)
      {
        sub_1001097CC((a1 + 120), v10 + 96, v14 + 96);
        if (v22 > v32)
        {
          v86 = v85;
          if (v85 > 5000.0 && v85 > v22 * 4.0 && *(v10 + 180) - *(v14 + 180) >= 5)
          {
            if (qword_1025D4600 != -1)
            {
              sub_10022FB88();
            }

            v87 = qword_1025D4608;
            if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
            {
              *buf = &v260;
              v88 = sub_100109DF4(v258, &v260, &unk_101C66300, buf);
              v89 = v88 + 6;
              if (*(v88 + 71) < 0)
              {
                v89 = *v89;
              }

              v90 = *(v10 + 100);
              v91 = *(v10 + 108);
              v92 = *(v10 + 180);
              *buf = v12;
              v93 = sub_100109DF4(v258, v12, &unk_101C66300, buf);
              v94 = v93 + 6;
              if (*(v93 + 71) < 0)
              {
                v94 = *v94;
              }

              v95 = *(v14 + 100);
              v96 = *(v14 + 108);
              v97 = *(v14 + 180);
              *buf = 136448771;
              *&buf[4] = v89;
              *&buf[12] = 2053;
              v283 = v90;
              v284 = 2053;
              v285 = v91;
              v286 = 2050;
              v287 = v22;
              v288 = 1026;
              *v289 = v92;
              *&v289[4] = 2082;
              *&v289[6] = v94;
              v290 = 2053;
              v291 = v95;
              v292 = 2053;
              v293 = v96;
              v294 = 2050;
              v295 = v32;
              v296 = 1026;
              v297 = v97;
              v298 = 2050;
              v299 = v86;
              _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,new,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,conflicts with current,%{public}s lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,notifying", buf, 0x68u);
            }

            if (!sub_10000A100(121, 2))
            {
              v47 = 1;
              goto LABEL_180;
            }

            v255 = v12;
            bzero(buf, 0x65CuLL);
            if (qword_1025D4600 != -1)
            {
              sub_10022FB88();
            }

            v238 = qword_1025D4608;
            *v261 = &v260;
            v239 = sub_100109DF4(v258, &v260, &unk_101C66300, v261);
            v240 = v239 + 6;
            if (*(v239 + 71) < 0)
            {
              v240 = *v240;
            }

            v241 = *(v10 + 100);
            v242 = *(v10 + 108);
            v243 = *(v10 + 180);
            *v261 = v12;
            v244 = sub_100109DF4(v258, v12, &unk_101C66300, v261);
            v245 = v244 + 6;
            if (*(v244 + 71) < 0)
            {
              v245 = *v245;
            }

            v246 = *(v14 + 100);
            v247 = *(v14 + 108);
            v248 = *(v14 + 180);
            *v261 = 136448771;
            *&v261[4] = v240;
            v262 = 2053;
            v263 = v241;
            v264 = 2053;
            v265 = v242;
            v266 = 2050;
            v267 = v22;
            v268 = 1026;
            *v269 = v243;
            *&v269[4] = 2082;
            *&v269[6] = v245;
            v270 = 2053;
            v271 = v246;
            v272 = 2053;
            v273 = v247;
            v274 = 2050;
            v275 = v32;
            v276 = 1026;
            v277 = v248;
            v278 = 2050;
            v279 = v86;
            LODWORD(v251) = 104;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v238, 0, "LocationController,#Warning,new,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,conflicts with current,%{public}s lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,notifying", v261, v251);
            v250 = v249;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v249);
            if (v250 != buf)
            {
              free(v250);
            }

            v47 = 1;
            goto LABEL_359;
          }

          if (qword_1025D4600 != -1)
          {
            sub_10022FB88();
          }

          v170 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *buf = &v260;
            v171 = sub_100109DF4(v258, &v260, &unk_101C66300, buf);
            v172 = v171 + 6;
            if (*(v171 + 71) < 0)
            {
              v172 = *v172;
            }

            v173 = *(v10 + 100);
            v174 = *(v10 + 108);
            v175 = *(v10 + 180);
            *buf = v12;
            v176 = sub_100109DF4(v258, v12, &unk_101C66300, buf);
            v177 = v176 + 6;
            if (*(v176 + 71) < 0)
            {
              v177 = *v177;
            }

            v178 = *(v14 + 100);
            v179 = *(v14 + 108);
            v180 = *(v14 + 180);
            *buf = 136317699;
            *&buf[4] = v172;
            *&buf[12] = 2053;
            v283 = v173;
            v284 = 2053;
            v285 = v174;
            v286 = 2050;
            v287 = v22;
            v288 = 1026;
            *v289 = v175;
            *&v289[4] = 2082;
            *&v289[6] = v177;
            v290 = 2053;
            v291 = v178;
            v292 = 2053;
            v293 = v179;
            v294 = 2050;
            v295 = v32;
            v296 = 1026;
            v297 = v180;
            v298 = 2050;
            v299 = v86;
            _os_log_impl(dword_100000000, v170, OS_LOG_TYPE_DEBUG, "new,%s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,coarser and agrees with current,%{public}s, lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,discarding", buf, 0x68u);
          }

          if (!sub_10000A100(121, 2))
          {
LABEL_298:
            v47 = 0;
            goto LABEL_180;
          }

          v255 = v12;
          bzero(buf, 0x65CuLL);
          if (qword_1025D4600 != -1)
          {
            sub_10022FB88();
          }

          v156 = qword_1025D4608;
          *v261 = &v260;
          v226 = sub_100109DF4(v258, &v260, &unk_101C66300, v261);
          v227 = v226 + 6;
          if (*(v226 + 71) < 0)
          {
            v227 = *v227;
          }

          v228 = *(v10 + 100);
          v229 = *(v10 + 108);
          v230 = *(v10 + 180);
          *v261 = v12;
          v231 = sub_100109DF4(v258, v12, &unk_101C66300, v261);
          v232 = v231 + 6;
          if (*(v231 + 71) < 0)
          {
            v232 = *v232;
          }

          v233 = *(v14 + 100);
          v234 = *(v14 + 108);
          v235 = *(v14 + 180);
          *v261 = 136317699;
          *&v261[4] = v227;
          v262 = 2053;
          v263 = v228;
          v264 = 2053;
          v265 = v229;
          v266 = 2050;
          v267 = v22;
          v268 = 1026;
          *v269 = v230;
          *&v269[4] = 2082;
          *&v269[6] = v232;
          v270 = 2053;
          v271 = v233;
          v272 = 2053;
          v273 = v234;
          v274 = 2050;
          v275 = v32;
          v276 = 1026;
          v277 = v235;
          v278 = 2050;
          v279 = v86;
          LODWORD(v251) = 104;
          v144 = "new,%s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,coarser and agrees with current,%{public}s, lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,discarding";
          goto LABEL_355;
        }
      }

LABEL_179:
      v47 = 1;
      goto LABEL_180;
    }

    sub_1001097CC((a1 + 120), v10 + 96, v14 + 96);
    v121 = v120;
    if (v22 >= v32)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v145 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = &v260;
        v146 = sub_100109DF4(v258, &v260, &unk_101C66300, buf);
        v147 = v146 + 6;
        if (*(v146 + 71) < 0)
        {
          v147 = *v147;
        }

        v148 = *(v10 + 100);
        v149 = *(v10 + 108);
        v150 = *(v10 + 180);
        *buf = v12;
        v151 = sub_100109DF4(v258, v12, &unk_101C66300, buf);
        v152 = v151 + 6;
        if (*(v151 + 71) < 0)
        {
          v152 = *v152;
        }

        v153 = *(v14 + 100);
        v154 = *(v14 + 108);
        v155 = *(v14 + 180);
        *buf = 136317699;
        *&buf[4] = v147;
        *&buf[12] = 2053;
        v283 = v148;
        v284 = 2053;
        v285 = v149;
        v286 = 2050;
        v287 = v22;
        v288 = 1026;
        *v289 = v150;
        *&v289[4] = 2082;
        *&v289[6] = v152;
        v290 = 2053;
        v291 = v153;
        v292 = 2053;
        v293 = v154;
        v294 = 2050;
        v295 = v32;
        v296 = 1026;
        v297 = v155;
        v298 = 2050;
        v299 = v121;
        _os_log_impl(dword_100000000, v145, OS_LOG_TYPE_DEBUG, "new,%s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,coarser than current,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,discarding", buf, 0x68u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_298;
      }

      v255 = v12;
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v156 = qword_1025D4608;
      *v261 = &v260;
      v157 = sub_100109DF4(v258, &v260, &unk_101C66300, v261);
      v158 = v157 + 6;
      if (*(v157 + 71) < 0)
      {
        v158 = *v158;
      }

      v159 = *(v10 + 100);
      v160 = *(v10 + 108);
      v161 = *(v10 + 180);
      *v261 = v12;
      v162 = sub_100109DF4(v258, v12, &unk_101C66300, v261);
      v163 = v162 + 6;
      if (*(v162 + 71) < 0)
      {
        v163 = *v163;
      }

      v164 = *(v14 + 100);
      v165 = *(v14 + 108);
      v166 = *(v14 + 180);
      *v261 = 136317699;
      *&v261[4] = v158;
      v262 = 2053;
      v263 = v159;
      v264 = 2053;
      v265 = v160;
      v266 = 2050;
      v267 = v22;
      v268 = 1026;
      *v269 = v161;
      *&v269[4] = 2082;
      *&v269[6] = v163;
      v270 = 2053;
      v271 = v164;
      v272 = 2053;
      v273 = v165;
      v274 = 2050;
      v275 = v32;
      v276 = 1026;
      v277 = v166;
      v278 = 2050;
      v279 = v121;
      LODWORD(v251) = 104;
      v144 = "new,%s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,coarser than current,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,discarding";
LABEL_355:
      v224 = v156;
      v225 = 2;
      goto LABEL_356;
    }

    v47 = 1;
    if (v120 >= 5000.0 && v120 >= v32 * 4.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v122 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
      {
        *buf = &v260;
        v123 = sub_100109DF4(v258, &v260, &unk_101C66300, buf);
        v124 = v123 + 6;
        if (*(v123 + 71) < 0)
        {
          v124 = *v124;
        }

        v125 = *(v10 + 100);
        v126 = *(v10 + 108);
        v127 = *(v10 + 180);
        *buf = v12;
        v128 = sub_100109DF4(v258, v12, &unk_101C66300, buf);
        v129 = v128 + 6;
        if (*(v128 + 71) < 0)
        {
          v129 = *v129;
        }

        v130 = *(v14 + 100);
        v131 = *(v14 + 108);
        v132 = *(v14 + 180);
        *buf = 136317699;
        *&buf[4] = v124;
        *&buf[12] = 2053;
        v283 = v125;
        v284 = 2053;
        v285 = v126;
        v286 = 2050;
        v287 = v22;
        v288 = 1026;
        *v289 = v127;
        *&v289[4] = 2082;
        *&v289[6] = v129;
        v290 = 2053;
        v291 = v130;
        v292 = 2053;
        v293 = v131;
        v294 = 2050;
        v295 = v32;
        v296 = 1026;
        v297 = v132;
        v298 = 2050;
        v299 = v121;
        _os_log_impl(dword_100000000, v122, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,new,%s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,conflicts with current,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,discarding", buf, 0x68u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_298;
      }

      v255 = v12;
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v133 = qword_1025D4608;
      *v261 = &v260;
      v134 = sub_100109DF4(v258, &v260, &unk_101C66300, v261);
      v135 = v134 + 6;
      if (*(v134 + 71) < 0)
      {
        v135 = *v135;
      }

      v136 = *(v10 + 100);
      v137 = *(v10 + 108);
      v138 = *(v10 + 180);
      *v261 = v12;
      v139 = sub_100109DF4(v258, v12, &unk_101C66300, v261);
      v140 = v139 + 6;
      if (*(v139 + 71) < 0)
      {
        v140 = *v140;
      }

      v141 = *(v14 + 100);
      v142 = *(v14 + 108);
      v143 = *(v14 + 180);
      *v261 = 136317699;
      *&v261[4] = v135;
      v262 = 2053;
      v263 = v136;
      v264 = 2053;
      v265 = v137;
      v266 = 2050;
      v267 = v22;
      v268 = 1026;
      *v269 = v138;
      *&v269[4] = 2082;
      *&v269[6] = v140;
      v270 = 2053;
      v271 = v141;
      v272 = 2053;
      v273 = v142;
      v274 = 2050;
      v275 = v32;
      v276 = 1026;
      v277 = v143;
      v278 = 2050;
      v279 = v121;
      LODWORD(v251) = 104;
      v144 = "LocationController,#Warning,new,%s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,conflicts with current,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,hunc,%{public}.2f,conf,%{public}d,distance,%{public}.2f,discarding";
      goto LABEL_347;
    }
  }

LABEL_180:
  if (*(v10 + 911) != 1)
  {
    return v47;
  }

  *(v10 + 910) = 0;
  v98 = *(v10 + 184);
  if (v98 < 0.0)
  {
    v99 = *(a1 + 664);
    v100 = 1.79769313e308;
LABEL_187:
    [v99 setNextFireDelay:v100];
    goto LABEL_188;
  }

  if (v14 == v9 || v98 > *(v14 + 184) - (a4 - *(v14 + 172)))
  {
    [*(a1 + 664) nextFireDelay];
    if (v101 != 1.79769313e308)
    {
      v99 = *(a1 + 664);
      v100 = *(v10 + 184) + 15.0;
      goto LABEL_187;
    }
  }

LABEL_188:
  v102 = *(v10 + 908);
  v103 = *(a1 + 160);
  if (v102 >= v103)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
    }

    v104 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = v12;
      v105 = sub_100109DF4(v258, v12, &unk_101C66300, buf);
      v106 = v105 + 6;
      if (*(v105 + 71) < 0)
      {
        v106 = *v106;
      }

      *buf = 136446210;
      *&buf[4] = v106;
      _os_log_impl(dword_100000000, v104, OS_LOG_TYPE_DEBUG, "reached the granularity, stopping all providers finer than current,%{public}s ", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v205 = qword_1025D4608;
      *v261 = v12;
      v206 = sub_100109DF4(v258, v12, &unk_101C66300, v261);
      v207 = v206 + 6;
      if (*(v206 + 71) < 0)
      {
        v207 = *v207;
      }

      *v261 = 136446210;
      *&v261[4] = v207;
      LODWORD(v251) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v205, 2, "reached the granularity, stopping all providers finer than current,%{public}s ", v261, v251);
      v209 = v208;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v208);
      if (v209 != buf)
      {
        free(v209);
      }
    }

    sub_1001D3BE4(a1, (v10 + 908));
    LOBYTE(v102) = *(v10 + 908);
    LOBYTE(v103) = *(a1 + 160);
  }

  if (v102 > v103 || *(a1 + 216) != 1)
  {
LABEL_207:
    if (!v47)
    {
      return v47;
    }

    goto LABEL_208;
  }

  if (v260 == *(a1 + 344))
  {
    buf[0] = 5;
    if (sub_1001F1B94(a1, buf, (v257 | *(v256 + 516)) & 1))
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v107 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v108 = *(v256 + 516);
        *buf = 67240448;
        *&buf[4] = v257;
        *&buf[8] = 1026;
        *&buf[10] = v108;
        _os_log_impl(dword_100000000, v107, OS_LOG_TYPE_DEBUG, "got accessory,stopped everything less preferred,isShifted,%{public}d,isPropagatedSolution,%{public}d\n", buf, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AAC178(v257, (v256 + 516));
      }
    }

    goto LABEL_207;
  }

  if (!v47)
  {
    return v47;
  }

  if (v260 == *(a1 + 336) && *(v10 + 192) == 9)
  {
    buf[0] = 0;
    if (sub_1001F1B94(a1, buf, 0))
    {
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      v119 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v119, OS_LOG_TYPE_DEBUG, "stopped all providers below coarse gps", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AAC09C();
      }
    }
  }

  else if (sub_1001F1B94(a1, (v10 + 909), 0))
  {
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
    }

    v168 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v169 = *(v10 + 909);
      *buf = 67240192;
      *&buf[4] = v169;
      _os_log_impl(dword_100000000, v168, OS_LOG_TYPE_DEBUG, "stopped all providers below newIter %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101AABFB0((v10 + 909));
    }
  }

LABEL_208:
  if (*v12 != v260)
  {
    if (qword_1025D4600 != -1)
    {
      sub_10022FB88();
    }

    v109 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      if (v10 == v9)
      {
        v110 = "(none)";
      }

      else
      {
        v110 = (v10 + 48);
        if (*(v10 + 71) < 0)
        {
          v110 = *v110;
        }
      }

      if (v14 == v9)
      {
        v167 = "(none)";
      }

      else
      {
        v167 = (v14 + 48);
        if (*(v14 + 71) < 0)
        {
          v167 = *v167;
        }
      }

      *buf = 136446466;
      *&buf[4] = v110;
      *&buf[12] = 2082;
      v283 = v167;
      _os_log_impl(dword_100000000, v109, OS_LOG_TYPE_DEBUG, "changing to provider,%{public}s,from,%{public}s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_10022FB88();
      }

      if (v10 == v9)
      {
        v210 = "(none)";
      }

      else
      {
        v210 = (v10 + 48);
        if (*(v10 + 71) < 0)
        {
          v210 = *v210;
        }
      }

      if (v14 == v9)
      {
        v211 = "(none)";
      }

      else
      {
        v211 = (v14 + 48);
        if (*(v14 + 71) < 0)
        {
          v211 = *v211;
        }
      }

      *v261 = 136446466;
      *&v261[4] = v210;
      v262 = 2082;
      v263 = v211;
      LODWORD(v251) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "changing to provider,%{public}s,from,%{public}s", v261, v251);
      v213 = v212;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLocationController::shouldNotify(CFAbsoluteTime, LocationProvider, const CLLocationProvider_Type::NotificationData &)", "%s\n", v212);
      if (v213 != buf)
      {
        free(v213);
      }
    }

    *v12 = v260;
  }

  return 1;
}

void sub_1001D77F4(__int128 *a1, int64x2_t *a2)
{
  sub_1001DF618(a2, a1);
  v3 = a2[2].u64[1];
  if (v3 >= 5)
  {
    a2[2].i64[1] = v3 - 1;

    sub_1001E0254(a2, 1);
  }
}

uint64_t sub_1001D7858(uint64_t a1, _BYTE *a2)
{
  if (*a1 == 1)
  {
    if (*(a1 + 2) == 1)
    {
      v2 = *(a1 + 8);
      if (v2 <= 1000.0)
      {
        return 1;
      }

      else if (v2 > 5000.0 || v2 <= 1000.0)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else if (*a2 == 1 && (a2[2] & 1) != 0)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }

  else if (*a2 == 1)
  {
    if (a2[2])
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001D78F4@<X0>(void *a2@<X8>)
{
  sub_10003848C(v19);
  v3 = sub_100038730(&v20, "ll, ", 4);
  v4 = *v3;
  *(v3 + *(*v3 - 24) + 16) = 8;
  *(v3 + *(v4 - 24) + 8) = *(v3 + *(v4 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v5 = sub_100038730(&v20, ", ", 2);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 16) = 8;
  *(v5 + *(v6 - 24) + 8) = *(v5 + *(v6 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v7 = sub_100038730(&v20, ", alt, ", 7);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 16) = 1;
  *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v9 = sub_100038730(&v20, ", acc, ", 7);
  v10 = *v9;
  *(v9 + *(*v9 - 24) + 16) = 1;
  *(v9 + *(v10 - 24) + 8) = *(v9 + *(v10 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v11 = sub_100038730(&v20, ", vacc, ", 8);
  v12 = *v11;
  *(v11 + *(*v11 - 24) + 16) = 1;
  *(v11 + *(v12 - 24) + 8) = *(v11 + *(v12 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v13 = sub_100038730(&v20, ", timestamp, ", 13);
  v14 = *v13;
  *(v13 + *(*v13 - 24) + 16) = 1;
  *(v13 + *(v14 - 24) + 8) = *(v13 + *(v14 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v15 = sub_100038730(&v20, ", age, ", 7);
  v16 = *v15;
  *(v15 + *(*v15 - 24) + 16) = 1;
  *(v15 + *(v16 - 24) + 8) = *(v15 + *(v16 - 24) + 8) & 0xFFFFFEFB | 4;
  CFAbsoluteTimeGetCurrent();
  std::ostream::operator<<();
  sub_100038730(&v20, ", type, ", 8);
  std::ostream::operator<<();
  sub_100038730(&v20, ", lifespan, ", 12);
  std::ostream::operator<<();
  sub_100038730(&v20, ", confidence, ", 14);
  std::ostream::operator<<();
  sub_100038730(&v20, ", integrity, ", 13);
  std::ostream::operator<<();
  sub_100073518(v19, a2);
  v20 = v17;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001D7E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1001D7EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001CCA3C(a2, a2 + 160);
  if (qword_1025D4650 != -1)
  {
    sub_10025BA4C();
  }

  v5 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    sub_100072AFC(a2, __p);
    v6 = v58 >= 0 ? __p : __p[0];
    v7 = *(a2 + 476);
    v8 = *(a2 + 472);
    v9 = *(a2 + 128);
    v10 = *(a2 + 132);
    v11 = *(a1 + 108);
    *buf = 68290563;
    *v60 = 0;
    *&v60[4] = 2082;
    *&v60[6] = "";
    v61 = 2085;
    v62 = v6;
    v63 = 1026;
    v64 = v9;
    v65 = 2050;
    v66 = v7;
    v67 = 1026;
    v68 = v8;
    v69 = 1026;
    v70 = v10;
    v71 = 2050;
    v72 = v11;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache, location,:%{sensitive, location:escape_only}s, integrity:%{public}d, undulation:%{public}f, undulationModel:%{public}d, referenceFrame:%{public}d, cacheTimestamp:%{public}.1f}", buf, 0x42u);
    if (v58 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*(a2 + 20) <= 0.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AA95CC();
    }

    v16 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289026;
    *v60 = 0;
    *&v60[4] = 2082;
    *&v60[6] = "";
    v15 = "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,drop,hunc invalid}";
LABEL_33:
    v19 = v16;
    v20 = 18;
LABEL_65:
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, v15, buf, v20);
    return;
  }

  v12 = (a2 + 96);
  if ((*(a2 + 96) & 0xFFFFFFF7) != 1 && *(a1 + 24) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AA95CC();
    }

    v13 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1 + 24);
      *buf = 68289282;
      *v60 = 0;
      *&v60[4] = 2082;
      *&v60[6] = "";
      v61 = 1026;
      LODWORD(v62) = v14;
      v15 = "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,drop,ignoring non-gps location assistance when airborne, IsAirborne:%{public}d}";
LABEL_64:
      v19 = v13;
      v20 = 24;
      goto LABEL_65;
    }

    return;
  }

  v17 = sub_1001D8750(a1, a2);
  if ((v17 & 1) == 0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_101AA95CC();
    }

    v16 = qword_1025D4658;
    if (!os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289026;
    *v60 = 0;
    *&v60[4] = 2082;
    *&v60[6] = "";
    v15 = "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,drop,not valid for caching}";
    goto LABEL_33;
  }

  if (v4 > 60.0 || v4 < 0.0)
  {
    if (*(a2 + 20) < 500.0)
    {
      *(a2 + 20) = 0x407F400000000000;
      if (qword_1025D4650 != -1)
      {
        sub_101AA95CC();
      }

      v21 = qword_1025D4658;
      v17 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
      if (v17)
      {
        sub_100072AFC(a2, __p);
        v22 = v58 >= 0 ? __p : __p[0];
        *buf = 68289283;
        *v60 = 0;
        *&v60[4] = 2082;
        *&v60[6] = "";
        v61 = 2085;
        v62 = v22;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,adjust,hunc,age lapsed, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v23 = *(a2 + 36);
    if (v23 > 0.0 && v23 < 200.0)
    {
      *(a2 + 36) = 0x4069000000000000;
      if (qword_1025D4650 != -1)
      {
        sub_101AA95CC();
      }

      v24 = qword_1025D4658;
      v17 = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
      if (v17)
      {
        sub_100072AFC(a2, __p);
        v25 = v58 >= 0 ? __p : __p[0];
        *buf = 68289283;
        *v60 = 0;
        *&v60[4] = 2082;
        *&v60[6] = "";
        v61 = 2085;
        v62 = v25;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,adjust,vunc,age lapsed, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
        if (v58 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v18 = *v12;
  if (*v12 > 5)
  {
    if (v18 > 10)
    {
      if (v18 == 11)
      {
LABEL_72:
        sub_1001EBA08(a1, a2);
        goto LABEL_80;
      }

      if (v18 == 12 || v18 == 14)
      {
        goto LABEL_60;
      }

LABEL_80:
      if (v4 >= 0.0 && sub_1001D8CE8(v17, a2))
      {
        v37 = *(a2 + 16);
        *(a1 + 32) = *a2;
        *(a1 + 48) = v37;
        v38 = *(a2 + 32);
        v39 = *(a2 + 48);
        v40 = *(a2 + 80);
        *(a1 + 96) = *(a2 + 64);
        *(a1 + 112) = v40;
        *(a1 + 64) = v38;
        *(a1 + 80) = v39;
        v41 = *(a2 + 96);
        v42 = *(a2 + 112);
        v43 = *(a2 + 128);
        *(a1 + 172) = *(a2 + 140);
        *(a1 + 144) = v42;
        *(a1 + 160) = v43;
        *(a1 + 128) = v41;
        memcpy((a1 + 192), (a2 + 160), 0x201uLL);
        v44 = *(a2 + 680);
        v45 = *(a2 + 688);
        if (v45)
        {
          atomic_fetch_add_explicit((v45 + 8), 1uLL, memory_order_relaxed);
        }

        *(a1 + 712) = v44;
        v46 = *(a1 + 720);
        *(a1 + 720) = v45;
        if (v46)
        {
          sub_100008080(v46);
        }

        v47 = *(a2 + 696);
        v48 = *(a2 + 728);
        *(a1 + 744) = *(a2 + 712);
        *(a1 + 760) = v48;
        *(a1 + 728) = v47;
        v49 = *(a2 + 744);
        v50 = *(a2 + 760);
        v51 = *(a2 + 776);
        *(a1 + 817) = *(a2 + 785);
        *(a1 + 792) = v50;
        *(a1 + 808) = v51;
        *(a1 + 776) = v49;
        if (qword_1025D4650 != -1)
        {
          sub_101AA95CC();
        }

        v52 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
        {
          sub_100072AFC(a2, __p);
          v53 = v58 >= 0 ? __p : __p[0];
          *buf = 68289283;
          *v60 = 0;
          *&v60[4] = 2082;
          *&v60[6] = "";
          v61 = 2085;
          v62 = v53;
          _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,cached, location,:%{sensitive, location:escape_only}s}", buf, 0x1Cu);
          if (v58 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      return;
    }

    if (v18 == 6)
    {
      v29 = *(a2 + 16);
      *(a1 + 840) = *a2;
      *(a1 + 856) = v29;
      v30 = *(a2 + 32);
      v31 = *(a2 + 48);
      v32 = *(a2 + 80);
      *(a1 + 904) = *(a2 + 64);
      *(a1 + 920) = v32;
      *(a1 + 872) = v30;
      *(a1 + 888) = v31;
      v33 = *(a2 + 96);
      v34 = *(a2 + 112);
      v35 = *(a2 + 128);
      *(a1 + 980) = *(a2 + 140);
      *(a1 + 952) = v34;
      *(a1 + 968) = v35;
      *(a1 + 936) = v33;
      if (qword_1025D4650 != -1)
      {
        sub_101AA95CC();
      }

      v36 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,updateReferenceLocationCache,cache,Cell location", buf, 2u);
      }

      v17 = sub_10000A100(121, 2);
      if (v17)
      {
        sub_101AA9630();
      }

      goto LABEL_80;
    }

    if (v18 != 9)
    {
      goto LABEL_80;
    }

LABEL_69:
    v27 = *(a2 + 76);
    v28 = (a1 + 1000);
    if (v27 - *(a1 + 1000) < 30.0 && *(a2 + 20) >= *(a1 + 52))
    {
      if (qword_1025D4650 != -1)
      {
        sub_101AA95CC();
      }

      v54 = qword_1025D4658;
      if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
      {
        v55 = *v28;
        v56 = *v12;
        *buf = 134349312;
        *v60 = v55;
        *&v60[8] = 1026;
        *&v60[10] = v56;
        _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,updateReferenceLocationCache,ignoring GPS location,lastGpsTime,%{public}.1lf,type,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101AA971C((a1 + 1000), v12);
      }

      return;
    }

    *v28 = v27;
    goto LABEL_80;
  }

  if (v18 <= 2)
  {
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        goto LABEL_60;
      }

      goto LABEL_80;
    }

    goto LABEL_69;
  }

  if (v18 == 3)
  {
    if (sub_1001CCA3C(a1 + 32, a1 + 192) < 900.0)
    {
      return;
    }

    goto LABEL_80;
  }

  if (v18 == 4)
  {
    goto LABEL_72;
  }

  if (v18 != 5)
  {
    goto LABEL_80;
  }

LABEL_60:
  if (qword_1025D4650 != -1)
  {
    sub_101AA95CC();
  }

  v13 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v26 = *v12;
    *buf = 68289282;
    *v60 = 0;
    *&v60[4] = 2082;
    *&v60[6] = "";
    v61 = 1026;
    LODWORD(v62) = v26;
    v15 = "{msg%{public}.0s:#GnssRefLocationCache,updateReferenceLocationCache,unsupported, locationType:%{public}d}";
    goto LABEL_64;
  }
}

uint64_t sub_1001D8750(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52) <= 0.0)
  {
    return 1;
  }

  result = sub_1001D8CE8(a1, a2);
  if (!result)
  {
    return result;
  }

  v5 = sub_1001CCA3C(a1 + 32, a1 + 192);
  v6 = (a2 + 20);
  v7 = *(a2 + 20);
  v8 = *(a2 + 36);
  if (v8 <= 0.0)
  {
    v10 = 1;
  }

  else
  {
    v9 = *(a1 + 68);
    v10 = v8 > v9;
    if (v9 <= 0.0)
    {
      v10 = 0;
    }
  }

  if (v7 >= *(a1 + 52))
  {
    v10 = 1;
  }

  if (v5 < 6.0 && v10)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v14 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v34 = v5;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,isLocationValidForCaching,ignoring location as cache is fresh,age,%{public}.1lf", buf, 0xCu);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101AA995C(v5);
      return 0;
    }

    return result;
  }

  if (v7 <= 75000.0 || v5 >= 1800.0)
  {
    if (v8 <= 0.0 && *(a1 + 68) > 0.0 && v5 < 900.0)
    {
      sub_1001097CC((a1 + 1008), a2, a1 + 32);
      v23 = v22;
      if (v22 < 5000.0 || *(a2 + 20) > v22)
      {
        if (qword_1025D4650 != -1)
        {
          sub_10025BA4C();
        }

        v24 = qword_1025D4658;
        if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
        {
          v25 = *v6;
          v26 = *(a1 + 68);
          *buf = 134349824;
          v34 = v25;
          v35 = 2050;
          v36 = v26;
          v37 = 2050;
          v38 = v5;
          v39 = 2050;
          v40 = v23;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,isLocationValidForCaching,reject location,no altitude,Hunc,%{public}.1lf,cacheVunc,%{public}.1lf,cacheAge,%{public}.1lf,distance,%{public}.1lf", buf, 0x2Au);
        }

        result = sub_10000A100(121, 2);
        if (!result)
        {
          return result;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4650 != -1)
        {
          sub_101AA95CC();
        }

        v27 = *v6;
        v28 = *(a1 + 68);
        *v30 = 134349824;
        *&v30[4] = v27;
        *&v30[12] = 2050;
        *&v30[14] = v28;
        *&v30[22] = 2050;
        LOWORD(v32) = 2050;
        *(&v32 + 2) = v23;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#GnssRefLocationCache,isLocationValidForCaching,reject location,no altitude,Hunc,%{public}.1lf,cacheVunc,%{public}.1lf,cacheAge,%{public}.1lf,distance,%{public}.1lf", v30, 42, *v30, *&v30[8], *&v5, v32);
LABEL_62:
        v29 = v21;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGnssRefLocationCache::isLocationValidForCaching(CLDaemonLocation &)", "%s\n", v21);
        if (v29 != buf)
        {
          free(v29);
        }

        return 0;
      }

      sub_100E63920(a1, a2);
    }

    v15 = *(a1 + 128);
    if ((v15 & 0xFFFFFFF7) != 1 && (v15 > 0xD || ((1 << v15) & 0x2C10) == 0) || *v6 <= 1000.0 || v5 >= 220.0)
    {

      return sub_1001D1DA4(a1, a2);
    }

    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v16 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 52);
      v18 = *(a1 + 128);
      *buf = 134349568;
      v34 = v17;
      v35 = 2050;
      v36 = v5;
      v37 = 1026;
      LODWORD(v38) = v18;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,isLocationValidForCaching,reject location,cache accurate,cacheHunc,%{public}.1lf,cacheAge,%{public}.1lf,type,%{public}d", buf, 0x1Cu);
    }

    result = sub_10000A100(121, 2);
    if (!result)
    {
      return result;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4650 != -1)
    {
      sub_101AA95CC();
    }

    v19 = *(a1 + 52);
    v20 = *(a1 + 128);
    *v30 = 134349568;
    *&v30[4] = v19;
    *&v30[12] = 2050;
    *&v30[14] = v5;
    *&v30[22] = 1026;
    LODWORD(v31) = v20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4658, 2, "#GnssRefLocationCache,isLocationValidForCaching,reject location,cache accurate,cacheHunc,%{public}.1lf,cacheAge,%{public}.1lf,type,%{public}d", v30, 28, *v30, *&v30[8], v31, v32);
    goto LABEL_62;
  }

  if (qword_1025D4650 != -1)
  {
    sub_10025BA4C();
  }

  v12 = qword_1025D4658;
  if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
  {
    v13 = *v6;
    *buf = 134349312;
    v34 = v13;
    v35 = 2050;
    v36 = v5;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#GnssRefLocationCache,isLocationValidForCaching,reject location,large hunc,%{public}.1lf,cacheAge,%{public}.1lf", buf, 0x16u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101AA9838((a2 + 20), v5);
    return 0;
  }

  return result;
}

BOOL sub_1001D8CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  if (v3 <= 0.0 || v3 > 200000.0)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10025BA4C();
    }

    v11 = qword_1025D4658;
    result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v12 = *(a2 + 20);
      v16 = 68289538;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2050;
      *v21 = v12;
      *&v21[8] = 2050;
      *&v21[10] = 0x41086A0000000000;
      v8 = "{msg%{public}.0s:#GnssRefLocationCache,Warning invalid assistance location, horizontalAccuracy:%{public}f, maximumAccuracy:%{public}f}";
      v9 = v11;
      v10 = 38;
      goto LABEL_14;
    }
  }

  else
  {
    v4 = (a2 + 4);
    v5 = (a2 + 12);
    if (sub_10002807C(*(a2 + 4), *(a2 + 12)) || fabs(*v4) > 90.0 || fabs(*v5) > 180.0)
    {
      if (qword_1025D4650 != -1)
      {
        sub_10025BA4C();
      }

      v6 = qword_1025D4658;
      result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v16 = 68290050;
        v18 = 2082;
        v17 = 0;
        v19 = "";
        v20 = 1040;
        *v21 = LocationLogEncryptionDataSize();
        *&v21[4] = 2098;
        *&v21[6] = LocationLogEncryptionEncryptData();
        *&v21[14] = 1040;
        *&v21[16] = LocationLogEncryptionDataSize();
        v22 = 2098;
        v23 = LocationLogEncryptionEncryptData();
        v8 = "{msg%{public}.0s:#GnssRefLocationCache,Warning invalid assistance location,invalid coordinates, lat:%{public, location:Encrypted_latitude}.*P, lon:%{public, location:Encrypted_longitude}.*P}";
        v9 = v6;
        v10 = 50;
LABEL_14:
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, v8, &v16, v10);
        return 0;
      }
    }

    else
    {
      if (*(a2 + 36) <= 0.0)
      {
        return 1;
      }

      v13 = *(a2 + 28);
      if (v13 >= -450.0 && v13 <= 8850.0)
      {
        return 1;
      }

      if (qword_1025D4650 != -1)
      {
        sub_10025BA4C();
      }

      v14 = qword_1025D4658;
      result = os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG);
      if (result)
      {
        v15 = *(a2 + 28);
        v16 = 68289283;
        v17 = 0;
        v18 = 2082;
        v19 = "";
        v20 = 2049;
        *v21 = v15;
        v8 = "{msg%{public}.0s:#GnssRefLocationCache,Warning invalid assistance location, altitude:%{private}.2f}";
        v9 = v14;
        v10 = 28;
        goto LABEL_14;
      }
    }
  }

  return result;
}

void sub_1001D8FE0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (*(a1 + 11768) == 1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v7 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a3;
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v8;
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
      _os_log_impl(dword_100000000, v9, v10, "{msg%{public}.0s:#GnssAssistancePosition, Received location notification, notification:%{public}d}", buf, 0x18u);
    }
  }

  else
  {
    if (qword_1025D4650 != -1)
    {
      sub_100244280();
    }

    v11 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v12 = *a3;
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v12;
      v9 = v11;
      v10 = OS_LOG_TYPE_DEBUG;
      goto LABEL_10;
    }
  }

  if (*a3 == 33)
  {
    *buf = 0xFFFF;
    *&buf[12] = 0;
    *&buf[4] = 0;
    *&buf[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&buf[36] = _Q0;
    *&buf[52] = _Q0;
    *&buf[68] = _Q0;
    *&buf[84] = 0;
    v52 = 0uLL;
    *&buf[88] = 0xBFF0000000000000;
    *(&v53 + 4) = 0xBFF0000000000000;
    LODWORD(v53) = 0;
    HIDWORD(v53) = 0x7FFFFFFF;
    memset(v54, 0, 25);
    sub_100021ED8(v55);
    v31 = *(a4 + 112);
    v52 = *(a4 + 96);
    v53 = v31;
    *v54 = *(a4 + 128);
    *&v54[12] = *(a4 + 140);
    v32 = *(a4 + 48);
    *&buf[32] = *(a4 + 32);
    *&buf[48] = v32;
    v33 = *(a4 + 80);
    *&buf[64] = *(a4 + 64);
    *&buf[80] = v33;
    v34 = *(a4 + 16);
    *buf = *a4;
    *&buf[16] = v34;
    memcpy(v55, (a4 + 160), 0x201uLL);
    v35 = *(a4 + 680);
    v36 = *(a4 + 688);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = v35;
    v37 = v57;
    v57 = v36;
    if (v37)
    {
      sub_100008080(v37);
    }

    v38 = *(a4 + 776);
    v62 = *(a4 + 760);
    v63[0] = v38;
    *(v63 + 9) = *(a4 + 785);
    v39 = *(a4 + 712);
    v58 = *(a4 + 696);
    v59 = v39;
    v40 = *(a4 + 744);
    v60 = *(a4 + 728);
    v61 = v40;
    if ((v52 == 11 || v52 == 4) && sub_100195800(a1, buf, a1 + 4844))
    {
      sub_1001EBD10(a1 + 72, buf, v55);
    }

    if (qword_1025D4650 != -1)
    {
      sub_1001A7560();
    }

    v41 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEBUG))
    {
      v42 = *(a1 + 11768);
      v43 = *(a1 + 1544);
      v44[0] = 68289538;
      v44[1] = 0;
      v45 = 2082;
      v46 = "";
      v47 = 1026;
      v48 = v42;
      v49 = 1026;
      v50 = v43;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#GnssAssistancePosition,, fInEmergency:%{public}hhd, fPositionAssistanceRunning:%{public}hhd}", v44, 0x1Eu);
    }

    if ((*(a1 + 11768) & 1) != 0 || *(a1 + 1544) == 1)
    {
      sub_1001928D0(a1, buf, 1, 1);
    }
  }

  else
  {
    if (*a3 != 5)
    {
      return;
    }

    *buf = 0xFFFF;
    *&buf[12] = 0;
    *&buf[4] = 0;
    *&buf[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&buf[36] = _Q0;
    *&buf[52] = _Q0;
    *&buf[68] = _Q0;
    *&buf[84] = 0;
    v52 = 0uLL;
    *&buf[88] = 0xBFF0000000000000;
    *(&v53 + 4) = 0xBFF0000000000000;
    LODWORD(v53) = 0;
    HIDWORD(v53) = 0x7FFFFFFF;
    memset(v54, 0, 25);
    sub_100021ED8(v55);
    v18 = *(a4 + 112);
    v52 = *(a4 + 96);
    v53 = v18;
    *v54 = *(a4 + 128);
    *&v54[12] = *(a4 + 140);
    v19 = *(a4 + 48);
    *&buf[32] = *(a4 + 32);
    *&buf[48] = v19;
    v20 = *(a4 + 80);
    *&buf[64] = *(a4 + 64);
    *&buf[80] = v20;
    v21 = *(a4 + 16);
    *buf = *a4;
    *&buf[16] = v21;
    memcpy(v55, (a4 + 160), 0x201uLL);
    v22 = *(a4 + 680);
    v23 = *(a4 + 688);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v56 = v22;
    v24 = v57;
    v57 = v23;
    if (v24)
    {
      sub_100008080(v24);
    }

    v25 = *(a4 + 776);
    v62 = *(a4 + 760);
    v63[0] = v25;
    *(v63 + 9) = *(a4 + 785);
    v26 = *(a4 + 712);
    v58 = *(a4 + 696);
    v59 = v26;
    v27 = *(a4 + 744);
    v60 = *(a4 + 728);
    v61 = v27;
    sub_1001928D0(a1, buf, 0, 1);
    v28 = *(a1 + 11776);
    if (v28 && sub_100226220(v28, a4) && *(a1 + 64))
    {
      v29 = sub_1003CCBA8(*(a1 + 11776));
      sub_1000B92AC(a1 + 40, v29);
    }
  }

  if (v57)
  {
    sub_100008080(v57);
  }
}

void sub_1001D94E8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452068;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void *sub_1001D953C(void *result)
{
  if (qword_102636C58 != result)
  {
    v1 = result;
    v2 = result[8];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[11];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[13];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[17];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[26];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    result = v1[39];
    if (result)
    {
      v7 = *(*result + 8);

      return v7();
    }
  }

  return result;
}

uint64_t sub_1001D968C(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 368);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 368);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_65;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 368);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_66;
  }

LABEL_65:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 368);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_67;
  }

LABEL_66:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_68;
  }

LABEL_67:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 40), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_69;
  }

LABEL_68:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 48), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_70;
  }

LABEL_69:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 52), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_71;
  }

LABEL_70:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 56), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_72;
  }

LABEL_71:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(9, *(v5 + 112), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_73;
  }

LABEL_72:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_76;
  }

LABEL_73:
  v10 = *(v5 + 64);
  if (!v10)
  {
    v10 = *(qword_102636C58 + 64);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v10, a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_77;
  }

LABEL_76:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 72), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_78;
  }

LABEL_77:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xD, *(v5 + 80), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_79;
  }

LABEL_78:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xE, *(v5 + 84), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_80;
  }

LABEL_79:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 113), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_83;
  }

LABEL_80:
  v11 = *(v5 + 88);
  if (!v11)
  {
    v11 = *(qword_102636C58 + 88);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v11, a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_84;
  }

LABEL_83:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, *(v5 + 96), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_85;
  }

LABEL_84:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x12, a2, *(v5 + 100), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_88;
  }

LABEL_85:
  v12 = *(v5 + 104);
  if (!v12)
  {
    v12 = *(qword_102636C58 + 104);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v12, a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_89;
  }

LABEL_88:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x14, a2, *(v5 + 120), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_90;
  }

LABEL_89:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 128), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_91;
  }

LABEL_90:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, *(v5 + 116), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_92;
  }

LABEL_91:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x17, *(v5 + 114), a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_95;
  }

LABEL_92:
  v13 = *(v5 + 136);
  if (!v13)
  {
    v13 = *(qword_102636C58 + 136);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v13, a2, a4);
  v6 = *(v5 + 368);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_96;
  }

LABEL_95:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x19, a2, *(v5 + 144), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_97;
  }

LABEL_96:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1A, a2, *(v5 + 152), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1B, a2, *(v5 + 160), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1C, a2, *(v5 + 168), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_100;
  }

LABEL_99:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1D, a2, *(v5 + 176), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

LABEL_101:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x1F, *(v5 + 115), a2, a4);
    if ((*(v5 + 368) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_102;
  }

LABEL_100:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x1E, a2, *(v5 + 184), a3);
  v6 = *(v5 + 368);
  if ((v6 & 0x40000000) != 0)
  {
    goto LABEL_101;
  }

LABEL_32:
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

LABEL_102:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x20, a2, *(v5 + 192), a3);
LABEL_33:
  v7 = *(v5 + 372);
  if (v7)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x21, a2, *(v5 + 200), a3);
    v7 = *(v5 + 372);
    if ((v7 & 2) == 0)
    {
LABEL_35:
      if ((v7 & 4) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_105;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_35;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x22, *(v5 + 276), a2, a4);
  v7 = *(v5 + 372);
  if ((v7 & 4) == 0)
  {
LABEL_36:
    if ((v7 & 8) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_108;
  }

LABEL_105:
  v14 = *(v5 + 208);
  if (!v14)
  {
    v14 = *(qword_102636C58 + 208);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x23, v14, a2, a4);
  v7 = *(v5 + 372);
  if ((v7 & 8) == 0)
  {
LABEL_37:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_109;
  }

LABEL_108:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x24, a2, *(v5 + 216), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x10) == 0)
  {
LABEL_38:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_110;
  }

LABEL_109:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x25, *(v5 + 272), a2, a4);
  v7 = *(v5 + 372);
  if ((v7 & 0x20) == 0)
  {
LABEL_39:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_111;
  }

LABEL_110:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x26, a2, *(v5 + 224), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x40) == 0)
  {
LABEL_40:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_112;
  }

LABEL_111:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x27, a2, *(v5 + 232), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x80) == 0)
  {
LABEL_41:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_113;
  }

LABEL_112:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x28, a2, *(v5 + 240), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x100) == 0)
  {
LABEL_42:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x29, a2, *(v5 + 248), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x200) == 0)
  {
LABEL_43:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x2A, a2, *(v5 + 256), a3);
  v7 = *(v5 + 372);
  if ((v7 & 0x400) == 0)
  {
LABEL_44:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x2B, *(v5 + 277), a2, a4);
  v7 = *(v5 + 372);
  if ((v7 & 0x800) == 0)
  {
LABEL_45:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_116:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x2C, a2, *(v5 + 264), a3);
  if ((*(v5 + 372) & 0x1000) != 0)
  {
LABEL_46:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x2D, a2, *(v5 + 280), a3);
  }

LABEL_47:
  if (*(v5 + 296) >= 1)
  {
    v8 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x2E, *(*(v5 + 288) + 8 * v8++), a2, a4);
    }

    while (v8 < *(v5 + 296));
  }

  v9 = *(v5 + 372);
  if ((v9 & 0x4000) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x2F, *(v5 + 320), a2, a4);
    v9 = *(v5 + 372);
    if ((v9 & 0x8000) == 0)
    {
LABEL_52:
      if ((v9 & 0x10000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_122;
    }
  }

  else if ((v9 & 0x8000) == 0)
  {
    goto LABEL_52;
  }

  v15 = *(v5 + 312);
  if (!v15)
  {
    v15 = *(qword_102636C58 + 312);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x30, v15, a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x10000) == 0)
  {
LABEL_53:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x31, *(v5 + 324), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x20000) == 0)
  {
LABEL_54:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_124;
  }

LABEL_123:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x32, a2, *(v5 + 328), a3);
  v9 = *(v5 + 372);
  if ((v9 & 0x40000) == 0)
  {
LABEL_55:
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_125;
  }

LABEL_124:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x33, a2, *(v5 + 336), a3);
  v9 = *(v5 + 372);
  if ((v9 & 0x80000) == 0)
  {
LABEL_56:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_126;
  }

LABEL_125:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x34, *(v5 + 344), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x100000) == 0)
  {
LABEL_57:
    if ((v9 & 0x200000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_127;
  }

LABEL_126:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x35, *(v5 + 278), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x200000) == 0)
  {
LABEL_58:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_128;
  }

LABEL_127:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x36, *(v5 + 348), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x400000) == 0)
  {
LABEL_59:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_129;
  }

LABEL_128:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x37, *(v5 + 352), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x800000) == 0)
  {
LABEL_60:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_61;
    }

LABEL_130:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x39, *(v5 + 356), a2, a4);
    if ((*(v5 + 372) & 0x2000000) == 0)
    {
      return result;
    }

    goto LABEL_131;
  }

LABEL_129:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x38, *(v5 + 279), a2, a4);
  v9 = *(v5 + 372);
  if ((v9 & 0x1000000) != 0)
  {
    goto LABEL_130;
  }

LABEL_61:
  if ((v9 & 0x2000000) == 0)
  {
    return result;
  }

LABEL_131:
  v16 = *(v5 + 360);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x3A, v16, a2, a4);
}

void sub_1001D9DA0(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  sub_1001E0634(a1);

  operator delete();
}

void sub_1001D9DD8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452428;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001D9E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B1F8(a1, a2);
  sub_10000AED4(v4, v14);
  v13 = 0.0;
  if (sub_100125300(v14, &v13))
  {
    v7 = *(a2 + 96);
    if (v7 == 4 || v7 == 1)
    {
      v9 = *(a2 + 76) - v13;
      v10 = -6.0;
      if (*(a1 + 128) == 1)
      {
        v10 = *(a1 + 120);
      }

      if (v9 - v10 > 5.0)
      {
        *(a1 + 104) = v9;
        *(a1 + 112) = 1;
        v7 = *(a2 + 96);
      }

      if (v7 == 1)
      {
        *(a1 + 120) = v9;
        *(a1 + 128) = 1;
      }

      v6.n128_f64[0] = v9;
      sub_1001E8A54(a1, v6, v5);
      sub_1001E94EC(a1, a2, v9);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019DC4B0();
    }

    v11 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *v12 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment, cannot compute machContinuousToCFAbsoluteOffset_s, discarding location sample", v12, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DC624();
    }
  }
}

void *sub_1001D9F70(unint64_t *a1, void *a2, _OWORD *a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 26 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_1001F5958(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x1A));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 156 * (v11 % 0x1A);
    v15 = v14;
  }

  v30 = v13;
  v31 = v15;
  result = sub_1001DA180(&v30, a4);
  v17 = v31;
  if (v14 != v31)
  {
    v18 = v30;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4056;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14;
        do
        {
          v21 = a3[1];
          *v20 = *a3;
          v20[1] = v21;
          v22 = a3[2];
          v23 = a3[3];
          v24 = a3[5];
          v20[4] = a3[4];
          v20[5] = v24;
          v20[2] = v22;
          v20[3] = v23;
          v25 = a3[6];
          v26 = a3[7];
          v27 = a3[8];
          *(v20 + 140) = *(a3 + 140);
          v20[7] = v26;
          v20[8] = v27;
          v20[6] = v25;
          a3 = (a3 + 156);
          if ((a3 - *a2) == 4056)
          {
            v28 = a2[1];
            ++a2;
            a3 = v28;
          }

          v20 = (v20 + 156);
        }

        while (v20 != v19);
      }

      a1[5] += 0x6F96F96F96F96F97 * ((v19 - v14) >> 2);
      if (v13 == v18)
      {
        break;
      }

      v29 = v13[1];
      ++v13;
      v14 = v29;
    }

    while (v29 != v17);
  }

  return result;
}

void *sub_1001DA11C(unint64_t *a1, void *a2, _OWORD *a3, void *a4, _OWORD *a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 26 * (a4 - a2) + 0x6F96F96F96F96F97 * ((a5 - *a4) >> 2) - 0x6F96F96F96F96F97 * ((a3 - *a2) >> 2);
  }

  return sub_1001D9F70(a1, a2, a3, v5);
}

void *sub_1001DA180(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 + 0x6F96F96F96F96F97 * ((result[1] - **result) >> 2);
    if (v3 < 1)
    {
      v5 = 25 - v3;
      v6 = &v2[-(v5 / 0x1A)];
      *result = v6;
      v4 = *v6 + 156 * (26 * (v5 / 0x1A) - v5) + 3900;
    }

    else
    {
      *result = &v2[v3 / 0x1A];
      v4 = v2[v3 / 0x1A] + 156 * (v3 % 0x1A);
    }

    result[1] = v4;
  }

  return result;
}

uint64_t sub_1001DA234(uint64_t a1, uint64_t a2, char *a3)
{
  *a3 = 0;
  if (*(a1 + 2884))
  {
    if (*(a1 + 2880) != 4 || *(a1 + 2840) == 1)
    {
      sub_100272FF0(a1, a2);
    }

    v6 = (a2 + 96);
    if (sub_100208064(a1, *(a2 + 96)))
    {
      *(a1 + 2754) = 0;
      *(a1 + 2872) = 0;
      if (sub_100028030(a1 + 1160) && (*(a1 + 1283) & 1) == 0)
      {
        *(a1 + 1360) = *(a1 + 1232);
        *(a1 + 1376) = *(a1 + 1248);
        *(a1 + 1392) = *(a1 + 1264);
        *(a1 + 1408) = *(a1 + 1280);
        *(a1 + 1296) = *(a1 + 1168);
        *(a1 + 1312) = *(a1 + 1184);
        *(a1 + 1328) = *(a1 + 1200);
        *(a1 + 1344) = *(a1 + 1216);
      }

      sub_1001FB908(a1 + 1160);
      if (*(a2 + 20) <= 0.0)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v19 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          v20 = *(a2 + 76);
          v21 = sub_1001FD6E4(*(a2 + 96));
          sub_1001D78F4(__p);
          v22 = v123 >= 0 ? COERCE_DOUBLE(__p) : *__p;
          *buf = 134349571;
          *&buf[4] = v20;
          v138 = 2082;
          v139 = v21;
          v140 = 2085;
          v141 = v22;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "#Error,timestamp,%{public}.3f,Invalid location update,hunc <= 0,type,%{public}s,inputLoc,%{sensitive}s", buf, 0x20u);
          if (SHIBYTE(v123) < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 0))
        {
          goto LABEL_42;
        }

        sub_101A7B5F4(buf);
        v85 = qword_1025D4778;
        v86 = *(a2 + 76);
        v87 = sub_1001FD6E4(*(a2 + 96));
        sub_1001D78F4(v133);
        if (v136 >= 0)
        {
          v88 = COERCE_DOUBLE(v133);
        }

        else
        {
          v88 = *v133;
        }

        *__p = 134349571;
        *&__p[4] = v86;
        v121 = 2082;
        v122 = v87;
        v123 = 2085;
        v124 = v88;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v85, 16, "#Error,timestamp,%{public}.3f,Invalid location update,hunc <= 0,type,%{public}s,inputLoc,%{sensitive}s", __p, 32);
        v16 = v89;
        if (v136 < 0)
        {
          operator delete(*v133);
        }

        sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v16);
        goto LABEL_153;
      }

      if (!sub_100072814(a2) || sub_10002807C(*(a2 + 4), *(a2 + 12)))
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v7 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(a2 + 76);
          v9 = sub_1001FD6E4(*(a2 + 96));
          sub_1001D78F4(__p);
          v10 = v123 >= 0 ? COERCE_DOUBLE(__p) : *__p;
          *buf = 134349571;
          *&buf[4] = v8;
          v138 = 2082;
          v139 = v9;
          v140 = 2085;
          v141 = v10;
          _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "#Warning,timestamp,%{public}.3f,Invalid location update,null island,type,%{public}s,inputLoc,%{sensitive}s", buf, 0x20u);
          if (SHIBYTE(v123) < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_42;
        }

        sub_101A7B5F4(buf);
        v11 = qword_1025D4778;
        v12 = *(a2 + 76);
        v13 = sub_1001FD6E4(*(a2 + 96));
        sub_1001D78F4(v133);
        if (v136 >= 0)
        {
          v14 = COERCE_DOUBLE(v133);
        }

        else
        {
          v14 = *v133;
        }

        *__p = 134349571;
        *&__p[4] = v12;
        v121 = 2082;
        v122 = v13;
        v123 = 2085;
        v124 = v14;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v11, 2, "#Warning,timestamp,%{public}.3f,Invalid location update,null island,type,%{public}s,inputLoc,%{sensitive}s", __p, 32);
        v16 = v15;
        if (v136 < 0)
        {
          operator delete(*v133);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v16);
LABEL_153:
        if (v16 != buf)
        {
          free(v16);
        }

LABEL_42:
        *a3 = 1;
        *(a1 + 1544) = 2;
        v23 = a1 + 3000;
        v24 = 2;
LABEL_43:
        sub_1002389A4(v23, v24);
        v18 = *a3;
        return v18 & 1;
      }

      v26 = sub_100072814(a1 + 16);
      if (v26)
      {
        v26 = sub_1001FCBD4(a1 + 16, a2);
        if (v26)
        {
          if (qword_1025D4770 != -1)
          {
            sub_1002F97A8();
          }

          v28 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v29 = *(a2 + 76);
            v30 = sub_1001FD6E4(*(a2 + 96));
            sub_1001D78F4(__p);
            v31 = SHIBYTE(v123);
            v32 = *__p;
            sub_1001D78F4(v133);
            v33 = COERCE_DOUBLE(__p);
            if (v31 < 0)
            {
              v33 = *&v32;
            }

            if (v136 >= 0)
            {
              v34 = COERCE_DOUBLE(v133);
            }

            else
            {
              v34 = *v133;
            }

            *buf = 134349827;
            *&buf[4] = v29;
            v138 = 2082;
            v139 = v30;
            v140 = 2085;
            v141 = v33;
            v142 = 2085;
            v143 = v34;
            _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "#fusion,location timestamp,%{public}.3f,ignoring duplicate location of type,%{public}s,newLoc,%{sensitive}s,oldLoc,%{sensitive}s", buf, 0x2Au);
            if (v136 < 0)
            {
              operator delete(*v133);
            }

            if (SHIBYTE(v123) < 0)
            {
              operator delete(*__p);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v97 = qword_1025D4778;
            v98 = *(a2 + 76);
            v99 = sub_1001FD6E4(*(a2 + 96));
            sub_1001D78F4(v133);
            v100 = v136;
            v101 = *v133;
            sub_1001D78F4(v118);
            v102 = COERCE_DOUBLE(v133);
            if (v100 < 0)
            {
              v102 = *&v101;
            }

            if (v119 >= 0)
            {
              *&v103 = COERCE_DOUBLE(v118);
            }

            else
            {
              v103 = v118[0];
            }

            *__p = 134349827;
            *&__p[4] = v98;
            v121 = 2082;
            v122 = v99;
            v123 = 2085;
            v124 = v102;
            v125 = 2085;
            v126 = *&v103;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v97, 2, "#fusion,location timestamp,%{public}.3f,ignoring duplicate location of type,%{public}s,newLoc,%{sensitive}s,oldLoc,%{sensitive}s", __p, 42);
            v105 = v104;
            if (v119 < 0)
            {
              operator delete(v118[0]);
            }

            if (v136 < 0)
            {
              operator delete(*v133);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v105);
            if (v105 != buf)
            {
              free(v105);
            }
          }

          *a3 = 1;
          *(a1 + 1544) = 3;
          v23 = a1 + 3000;
          v24 = 3;
          goto LABEL_43;
        }
      }

      if (*v6 == 10)
      {
        v35 = sub_10002F470(v26, v27);
        v36 = sub_100125258(a1 + 2424, v35, 6.0);
        if (v36 || (v38 = sub_10002F470(v36, v37), v26 = sub_1001252CC(a1 + 2424, v38, 6.0), v26))
        {
          if (qword_1025D4770 != -1)
          {
            sub_1002F97A8();
          }

          v39 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            v40 = *(a2 + 76);
            sub_1001D78F4(buf);
            v41 = v140 >= 0 ? buf : *buf;
            *__p = 134349315;
            *&__p[4] = v40;
            v121 = 2085;
            v122 = v41;
            _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "#fusion,indoor location timestamp,%{public}.3f,ignored in driving/vehicular context,location,%{sensitive}s", __p, 0x16u);
            if (SHIBYTE(v140) < 0)
            {
              operator delete(*buf);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v92 = qword_1025D4778;
            v93 = *(a2 + 76);
            sub_1001D78F4(__p);
            if (v123 >= 0)
            {
              v94 = __p;
            }

            else
            {
              v94 = *__p;
            }

            *v133 = 134349315;
            *&v133[4] = v93;
            v134 = 2085;
            v135 = v94;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v92, 2, "#fusion,indoor location timestamp,%{public}.3f,ignored in driving/vehicular context,location,%{sensitive}s", v133, 22);
            v96 = v95;
            if (SHIBYTE(v123) < 0)
            {
              operator delete(*__p);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v96);
            if (v96 != buf)
            {
              free(v96);
            }
          }

          *a3 = 1;
          *(a1 + 1544) = 13;
          v23 = a1 + 3000;
          v24 = 13;
          goto LABEL_43;
        }
      }

      if ((*(a1 + 2840) & 1) != 0 || *(a1 + 2904) != 1)
      {
LABEL_132:
        if ((*(a1 + 2840) & 1) != 0 || *(a1 + 2880) == 2)
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v72 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v72, OS_LOG_TYPE_DEBUG, "#fusion,processing buffered data on receiving a location notification after sleep notifications and before wake-up", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            *__p = 0;
            LODWORD(v116) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,processing buffered data on receiving a location notification after sleep notifications and before wake-up", __p, v116);
            v91 = v90;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v90);
            if (v91 != buf)
            {
              free(v91);
            }
          }

          sub_100D6CE60(a1, 1);
          sub_100857280(a1 + 2920, *(a1 + 2928));
          *(a1 + 2920) = a1 + 2928;
          *(a1 + 2928) = 0u;
          *(a1 + 2912) = sub_10002F470(v73, v74);
        }

        v75 = *(a2 + 16);
        *(a1 + 16) = *a2;
        *(a1 + 32) = v75;
        v76 = *(a2 + 32);
        v77 = *(a2 + 48);
        v78 = *(a2 + 80);
        *(a1 + 80) = *(a2 + 64);
        *(a1 + 96) = v78;
        *(a1 + 48) = v76;
        *(a1 + 64) = v77;
        v79 = *(a2 + 96);
        v80 = *(a2 + 112);
        v81 = *(a2 + 128);
        *(a1 + 156) = *(a2 + 140);
        *(a1 + 128) = v80;
        *(a1 + 144) = v81;
        *(a1 + 112) = v79;
        if (*(a2 + 36) > 0.0)
        {
          *(a1 + 2248) = *(a2 + 28);
        }

        v118[0] = 0;
        v118[1] = 0;
        v82 = sub_10002F470(v26, v27);
        sub_100125424(a1 + 2424, v82, 6.0);
        if (*v6 == 1)
        {
          sub_1002A4FB4();
        }

        sub_1001FCD94();
      }

      v42 = sub_10002F470(v26, v27);
      v43 = *(a1 + 2856);
      if (v43 > 0.0 || (v43 = *(a1 + 2864), v44 = -1.0, v43 > 0.0))
      {
        v44 = v42 - v43;
      }

      v45 = 2.0;
      if (*v6 <= 8 && ((1 << *v6) & 0x1D0) != 0)
      {
        v45 = 5.0;
        if ((sub_100681564(a1 + 2424, v42, -1.0) & 1) == 0)
        {
          v46 = *(a1 + 2448) - 1;
          if (v46 <= 9)
          {
            v45 = dbl_101CFC808[v46];
          }
        }
      }

      if ((*(a1 + 2856) >= 0.0 || *(a1 + 2864) >= 0.0) && v44 <= v45)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v47 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v48 = *(a2 + 504);
          v49 = sub_1001FD6E4(*(a2 + 96));
          v50 = *(a1 + 2936);
          *buf = 134349826;
          *&buf[4] = v48;
          v138 = 2082;
          v139 = v49;
          v140 = 2050;
          v141 = v44;
          v142 = 2050;
          v143 = v50;
          _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "#fusion,Location notification arrived while collecting buffered data,Loc_mct,%{public}.3f,loc_type,%{public}s,timeSinceWakeUp_s,%{public}.3f,enable roll-back to consume buffered data once ready,currentAOPDataBufferSize,%{public}zu", buf, 0x2Au);
        }

        v26 = sub_10000A100(121, 2);
        if (v26)
        {
          sub_101A7B5F4(buf);
          v106 = qword_1025D4778;
          v107 = *(a2 + 504);
          v108 = sub_1001FD6E4(*(a2 + 96));
          v109 = *(a1 + 2936);
          *__p = 134349826;
          *&__p[4] = v107;
          v121 = 2082;
          v122 = v108;
          v123 = 2050;
          v124 = v44;
          v125 = 2050;
          v126 = v109;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v106, 2, "#fusion,Location notification arrived while collecting buffered data,Loc_mct,%{public}.3f,loc_type,%{public}s,timeSinceWakeUp_s,%{public}.3f,enable roll-back to consume buffered data once ready,currentAOPDataBufferSize,%{public}zu", __p, 42);
          v111 = v110;
          v26 = sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v110);
          if (v111 != buf)
          {
            free(v111);
          }
        }

        for (i = *(a1 + 248); i; i = *i)
        {
          v54 = *(i + 209);
          if ((v54 & 0x80000000) != 0 || i[8] <= v54)
          {
            sub_1011699E4((i + 1), v51, v52);
          }
        }

        if (*(a1 + 1104))
        {
          v55 = *(a1 + 1084);
          if ((v55 & 0x80000000) != 0 || *(a1 + 312) <= v55)
          {
            sub_1011699E4(a1 + 256, v51, v52);
          }
        }

        if (!*(a1 + 248))
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v56 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v56, OS_LOG_TYPE_DEBUG, "#fusion,no hypothesis location as yet, processing buffered data on receiving a location notification", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            *__p = 0;
            LODWORD(v116) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,no hypothesis location as yet, processing buffered data on receiving a location notification", __p, v116);
            v115 = v114;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v114);
            if (v115 != buf)
            {
              free(v115);
            }
          }

          sub_100D6CE60(a1, 0);
        }

        goto LABEL_132;
      }

      if (v44 <= v45)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v70 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v71 = *(a1 + 2936);
          *buf = 134349056;
          *&buf[4] = v71;
          _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEBUG, "#fusion,no wakeup notification detected and not in sleep mode, processing buffered data on receiving a location notification,syncedBuffSize,%{public}zu", buf, 0xCu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_131;
        }

        sub_101A7B5F4(buf);
        v112 = *(a1 + 2936);
        *__p = 134349056;
        *&__p[4] = v112;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,no wakeup notification detected and not in sleep mode, processing buffered data on receiving a location notification,syncedBuffSize,%{public}zu", __p, 12);
        v69 = v113;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v113);
        if (v69 == buf)
        {
          goto LABEL_131;
        }
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_1002F97A8();
        }

        v57 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v58 = *(a1 + 2856);
          v59 = *(a1 + 2864);
          v60 = *(a1 + 2936);
          v61 = *v6;
          sub_1001FCE40(a1 + 2424, __p);
          v62 = __p;
          if (v123 < 0)
          {
            v62 = *__p;
          }

          *buf = 134350594;
          *&buf[4] = v58;
          v138 = 2050;
          v139 = v59;
          v140 = 2050;
          v141 = v44;
          v142 = 2050;
          v143 = v45;
          v144 = 2050;
          v145 = v60;
          v146 = 1026;
          v147 = v61;
          v148 = 2082;
          v149 = v62;
          _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "#fusion,max leeway after wakeup reached,processing buffered data on receiving a location notification,wakeupTime_mct,%{public}.3f,%{public}.3f,dt_since_s,%{public}.1f,gatingThreshold_s,%{public}.1f,syncedBuffSize,%{public}zu,locType,%{public}d,MotionType,%{public}s", buf, 0x44u);
          if (SHIBYTE(v123) < 0)
          {
            operator delete(*__p);
          }
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_131;
        }

        bzero(buf, 0x65CuLL);
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v117 = qword_1025D4778;
        v63 = *(a1 + 2856);
        v64 = *(a1 + 2864);
        v65 = *(a1 + 2936);
        v66 = *v6;
        sub_1001FCE40(a1 + 2424, v133);
        if (v136 >= 0)
        {
          v67 = v133;
        }

        else
        {
          v67 = *v133;
        }

        *__p = 134350594;
        *&__p[4] = v63;
        v121 = 2050;
        v122 = v64;
        v123 = 2050;
        v124 = v44;
        v125 = 2050;
        v126 = v45;
        v127 = 2050;
        v128 = v65;
        v129 = 1026;
        v130 = v66;
        v131 = 2082;
        v132 = v67;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v117, 2, "#fusion,max leeway after wakeup reached,processing buffered data on receiving a location notification,wakeupTime_mct,%{public}.3f,%{public}.3f,dt_since_s,%{public}.1f,gatingThreshold_s,%{public}.1f,syncedBuffSize,%{public}zu,locType,%{public}d,MotionType,%{public}s", __p, 68);
        v69 = v68;
        if (v136 < 0)
        {
          operator delete(*v133);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v69);
        if (v69 == buf)
        {
          goto LABEL_131;
        }
      }

      free(v69);
LABEL_131:
      sub_100D6CE60(a1, 1);
      sub_100857280(a1 + 2920, *(a1 + 2928));
      *(a1 + 2920) = a1 + 2928;
      *(a1 + 2928) = 0u;
      *(a1 + 2904) = 0;
      *(a1 + 2912) = 0xBFF0000000000000;
      *(a1 + 2856) = 0xBFF0000000000000;
      *(a1 + 2864) = 0xBFF0000000000000;
      goto LABEL_132;
    }
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1002F97A8();
    }

    v17 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#Error,LC Fusion is not configured.", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A7B5F4(buf);
      *__p = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "#Error,LC Fusion is not configured.", __p, 2);
      v84 = v83;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::CLLCFusion::locationUpdate(const CLLocationProvider_Type::NotificationData &, BOOL &)", "%s\n", v83);
      if (v84 != buf)
      {
        free(v84);
      }
    }
  }

  v18 = 0;
  return v18 & 1;
}

void sub_1001DD3AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1001DD3B8(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4)
{
  *a4 = 0;
  *a3 = 0;
  v8 = sub_10000B1F8(a1, a2);
  *buf = 0;
  v9 = sub_10001A6B0(v8, buf);
  v10 = (a2 + 8);
  v11 = *(a2 + 8);
  v12 = v9 - v11;
  if (v9 - v11 < 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v13 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a2 + 16);
      v14 = *(a2 + 24);
      v16 = *(a2 + 32);
      v17 = sub_1001FD6E4(*(a2 + 124));
      v18 = *v10;
      v20 = sub_10000B1F8(v17, v19);
      v21 = sub_100125220(v20);
      *buf = 134350851;
      *&buf[4] = v15;
      v101 = 2053;
      v102 = v14;
      v103 = 2053;
      v104 = v16;
      v105 = 2082;
      v106 = v17;
      v107 = 2050;
      v108 = v12;
      v109 = 2050;
      v110 = v18;
      v111 = 2050;
      v112 = v9;
      v113 = 2050;
      v114 = v21;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#Warning,Got location with future timestamp,mct,%{public}.3f,lat,%{sensitive}.7f,lon,%{sensitive}.7f,provider,%{public}s,age,%{public}.3f,timestampiOS,%{public}.3f,correcting to,%{public}.3f,propagation_us,%{public}.3f", buf, 0x52u);
    }

    v22 = sub_10000A100(121, 2);
    if (v22)
    {
      sub_101A7B5F4(buf);
      v56 = qword_1025D4778;
      v58 = *(a2 + 16);
      v57 = *(a2 + 24);
      v59 = *(a2 + 32);
      v60 = sub_1001FD6E4(*(a2 + 124));
      v61 = *v10;
      v63 = sub_10000B1F8(v60, v62);
      v84 = 134350851;
      v85 = v58;
      v86 = 2053;
      v87 = v57;
      v88 = 2053;
      v89 = v59;
      v90 = 2082;
      v91 = v60;
      v92 = 2050;
      v93 = v12;
      v94 = 2050;
      v95 = v61;
      v96 = 2050;
      v97 = v9;
      v98 = 2050;
      v99 = sub_100125220(v63);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v56, 0, "#Warning,Got location with future timestamp,mct,%{public}.3f,lat,%{sensitive}.7f,lon,%{sensitive}.7f,provider,%{public}s,age,%{public}.3f,timestampiOS,%{public}.3f,correcting to,%{public}.3f,propagation_us,%{public}.3f", &v84, 82);
      v65 = v64;
      v22 = sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::ageCheckLocation(LCFusionProviderLocation &, BOOL &, BOOL &)", "%s\n", v64);
      if (v65 != buf)
      {
        free(v65);
      }
    }

    *v10 = v9;
    v24 = sub_10000B1F8(v22, v23);
    *buf = 1;
    *(a2 + 16) = sub_10001A6B0(v24, buf);
    return;
  }

  v25 = *(a1 + 2792);
  if (v25 && v25[1] == 1 && *v25 == 1 && v12 > 2.5 && *(a2 + 124) == 3)
  {
    goto LABEL_27;
  }

  v27 = *(a2 + 104);
  if (v12 > v27 && v27 >= 0.0 && v9 > v11)
  {
    if (qword_1025D4770 != -1)
    {
      sub_100224830();
    }

    v29 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a2 + 8);
      v31 = sub_1001FD6E4(*(a2 + 124));
      v32 = *(a2 + 24);
      v33 = *(a2 + 32);
      v34 = *(a2 + 104);
      v36 = sub_10000B1F8(v31, v35);
      v37 = sub_100125220(v36);
      *buf = 134350595;
      *&buf[4] = v30;
      v101 = 2082;
      v102 = v31;
      v103 = 2053;
      v104 = v32;
      v105 = 2053;
      v106 = v33;
      v107 = 2050;
      v108 = v34;
      v109 = 2050;
      v110 = v12;
      v111 = 2050;
      v112 = v37;
      _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "#Warning,Got expiredLocation,timestamp_ios,%{public}.3f,provider,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,lifespan,%{public}.1f,age,%{public}.3f,propagation_us,%{public}.3f", buf, 0x48u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A7B5F4(buf);
      v66 = qword_1025D4778;
      v67 = *(a2 + 8);
      v68 = sub_1001FD6E4(*(a2 + 124));
      v70 = *(a2 + 24);
      v69 = *(a2 + 32);
      v71 = *(a2 + 104);
      v73 = sub_10000B1F8(v68, v72);
      v84 = 134350595;
      v85 = v67;
      v86 = 2082;
      v87 = v68;
      v88 = 2053;
      v89 = v70;
      v90 = 2053;
      v91 = v69;
      v92 = 2050;
      v93 = v71;
      v94 = 2050;
      v95 = v12;
      v96 = 2050;
      v97 = sub_100125220(v73);
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v66, 0, "#Warning,Got expiredLocation,timestamp_ios,%{public}.3f,provider,%{public}s,lat,%{sensitive}.7lf,lon,%{sensitive}.7lf,lifespan,%{public}.1f,age,%{public}.3f,propagation_us,%{public}.3f", &v84, 72);
      v75 = v74;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::ageCheckLocation(LCFusionProviderLocation &, BOOL &, BOOL &)", "%s\n", v74);
      if (v75 != buf)
      {
        free(v75);
      }
    }

    *a4 = 1;
    v38 = *v10;
    v39 = v10[1];
    v40 = v10[2];
    *(a1 + 1216) = v10[3];
    *(a1 + 1200) = v40;
    *(a1 + 1184) = v39;
    *(a1 + 1168) = v38;
    v41 = v10[4];
    v42 = v10[5];
    v43 = v10[6];
    *(a1 + 1280) = *(v10 + 14);
    *(a1 + 1264) = v43;
    *(a1 + 1248) = v42;
    *(a1 + 1232) = v41;
    return;
  }

  if (v12 > 900.0)
  {
LABEL_27:
    *a3 = 1;
    v44 = 4;
LABEL_28:
    *(a1 + 1544) = v44;
  }

  else if (v12 >= 2.0)
  {
    v45 = *(a1 + 208);
    v46 = (a2 + 124);
    *buf = a2 + 124;
    v47 = sub_1001FBADC(v45, (a2 + 124), &unk_101C66300, buf) + 5;
    while (1)
    {
      v47 = *v47;
      v48 = *(a1 + 208);
      *buf = a2 + 124;
      sub_1001FBADC(v48, (a2 + 124), &unk_101C66300, buf);
      if (!v47)
      {
        break;
      }

      v49 = v47[1];
      if (v49 && (*(*v49 + 16))(v49, a2))
      {
        if (qword_1025D4770 != -1)
        {
          sub_100224830();
        }

        v50 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v51 = *v10;
          v52 = sub_1001FD6E4(*v46);
          v53 = *(a2 + 24);
          v54 = *(a2 + 32);
          v55 = *(a2 + 104);
          *buf = 134350339;
          *&buf[4] = v51;
          v101 = 2082;
          v102 = v52;
          v103 = 2053;
          v104 = v53;
          v105 = 2053;
          v106 = v54;
          v107 = 2050;
          v108 = v55;
          v109 = 2050;
          v110 = v12;
          _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "Duplicate location detected in LC Fusion,timestamp_ios,%{public}.3f,provider,%{public}s,lat,%{sensitive}.7f,lon,%{sensitive}.7f,lifespan,%{public}.1f,age,%{public}.3f", buf, 0x3Eu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A7B5F4(buf);
          v76 = qword_1025D4778;
          v77 = *v10;
          v78 = sub_1001FD6E4(*v46);
          v79 = *(a2 + 24);
          v80 = *(a2 + 32);
          v81 = *(a2 + 104);
          v84 = 134350339;
          v85 = v77;
          v86 = 2082;
          v87 = v78;
          v88 = 2053;
          v89 = v79;
          v90 = 2053;
          v91 = v80;
          v92 = 2050;
          v93 = v81;
          v94 = 2050;
          v95 = v12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v76, 2, "Duplicate location detected in LC Fusion,timestamp_ios,%{public}.3f,provider,%{public}s,lat,%{sensitive}.7f,lon,%{sensitive}.7f,lifespan,%{public}.1f,age,%{public}.3f", &v84, 62);
          v83 = v82;
          sub_100152C7C("Generic", 1, 0, 2, "void cllcf::CLLCFusion::ageCheckLocation(LCFusionProviderLocation &, BOOL &, BOOL &)", "%s\n", v82);
          if (v83 != buf)
          {
            free(v83);
          }
        }

        *a3 = 1;
        v44 = 3;
        goto LABEL_28;
      }
    }
  }
}

void sub_1001DDB40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001DDB50(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  sub_1001FB908(a1 + 1160);
  v223 = a3;
  *a3 = 0;
  *(a1 + 1544) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  v226 = _Q0;
  if (!(_NF ^ _VF | _ZF))
  {
    v12 = sub_10000B1F8(v5, v6);
    *buf = 1;
    if (vabdd_f64(sub_10001A6B0(v12, buf), *(a1 + 200)) > 40.0)
    {
      *(a1 + 175) = 0;
      *(a1 + 184) = v226;
    }
  }

  if (*(a1 + 2800) == 1 && (*(*a2 + 124) - 6) >= 3)
  {
    sub_100109D18((a1 + 2384), *(*a2 + 24), *(*a2 + 32), *(a1 + 2808), *(a1 + 2816), *(a1 + 2248));
    v16 = v15;
    v17 = *(a1 + 2824);
    v18 = 0.0;
    if (v17 > 0.0)
    {
      v19 = sub_10000B1F8(v13, v14);
      *buf = 1;
      v20 = sub_10001A6B0(v19, buf);
      v17 = *(a1 + 2824);
      v18 = v20 - v17;
    }

    if (v16 > 600.0 && (v17 < 0.0 || v18 > 60.0) && sub_10025BC08(a1, v14))
    {
      if (qword_1025D4770 != -1)
      {
        sub_100224830();
      }

      v21 = qword_1025D4778;
      v22 = os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        v24 = sub_10002F470(v22, v23);
        v25 = *(*a1 + 24);
        v26 = *(a1 + 2824);
        v27 = *(a1 + 2808);
        v28 = *(a1 + 2816);
        *buf = 134350593;
        *&buf[4] = v24;
        *&buf[12] = 2050;
        *&buf[14] = v25;
        *&buf[22] = 2050;
        *&buf[24] = v26;
        *&buf[32] = 2050;
        *&buf[34] = v18;
        *&buf[42] = 2050;
        *&buf[44] = v16;
        *&buf[52] = 2053;
        *&buf[54] = v27;
        *&buf[62] = 2053;
        *&buf[64] = v28;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "#fusion,Overrides WiFi Service AP Associated state,now_mct,%{public}.3f,time received associated state,%{public}.3f,time last APWiFiFix seen,%{public}.3f,elapsedTime,%{public}.3f,distance user moved away,%{public}.2f,AP WiFi approx location LL deg,%{sensitive}.7f,%{sensitive}.7f", buf, 0x48u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A7B5F4(buf);
        v165 = qword_1025D4778;
        v168 = sub_10002F470(v166, v167);
        v169 = *(*a1 + 24);
        v170 = *(a1 + 2824);
        v171 = *(a1 + 2808);
        v172 = *(a1 + 2816);
        *v260 = 134350593;
        *&v260[4] = v168;
        *&v260[12] = 2050;
        *&v260[14] = v169;
        *&v260[22] = 2050;
        *&v260[24] = v170;
        *&v260[32] = 2050;
        *&v260[34] = v18;
        *&v260[42] = 2050;
        *&v260[44] = v16;
        *&v260[52] = 2053;
        *&v260[54] = v171;
        *&v260[62] = 2053;
        *&v260[64] = v172;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v165, 0, "#fusion,Overrides WiFi Service AP Associated state,now_mct,%{public}.3f,time received associated state,%{public}.3f,time last APWiFiFix seen,%{public}.3f,elapsedTime,%{public}.3f,distance user moved away,%{public}.2f,AP WiFi approx location LL deg,%{sensitive}.7f,%{sensitive}.7f", v260, 72);
        v174 = v173;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v173);
        if (v174 != buf)
        {
          free(v174);
        }
      }

      *(a1 + 2800) = 0;
    }
  }

  v29 = (*a2 + 16);
  *(a1 + 200) = *v29;
  sub_1001FBBCC(a1, v29);
  v30 = *(a1 + 2792);
  if (!v30 || v30[1] != 1 || *v30 != 1)
  {
    goto LABEL_26;
  }

  v31 = a2[1];
  v255[0] = *a2;
  v255[1] = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = sub_100D6EE20(a1, v255);
  if (v31)
  {
    sub_100008080(v31);
  }

  if ((v32 & 1) == 0)
  {
    result = 1;
    *a3 = 1;
  }

  else
  {
LABEL_26:
    v246 = v226;
    v247 = xmmword_101C75BF0;
    v248 = xmmword_101C75BF0;
    v249 = v226;
    v250 = v226;
    v245 = off_1024DE5F8;
    v251 = 0xBFF0000000000000;
    v253 = 0;
    v252 = 0;
    v254 = 0;
    v34 = *a2;
    v33 = a2[1];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v243 = v34;
    v244 = v33;
    if (*(a1 + 182))
    {
      *buf = *a2 + 124;
      if (!*(sub_10030B63C(a1 + 224, *buf, &unk_101C66300, buf) + 220))
      {
        *buf = *a2 + 124;
        v35 = sub_10030B63C(a1 + 224, *buf, &unk_101C66300, buf);
        sub_101168DA4((v35 + 5), *(*a2 + 124));
        *buf = *a2 + 124;
        *(sub_10030B63C(a1 + 224, *buf, &unk_101C66300, buf) + 148) = *(a1 + 2448);
      }

      *buf = *a2 + 124;
      v36 = sub_10030B63C(a1 + 224, *buf, &unk_101C66300, buf);
      sub_100204720((v36 + 5), &v243);
    }

    v222 = sub_100202484(a1, &v243);
    if (v222)
    {
      sub_10021003C(a1);
      sub_100210238(a1, *a2);
      for (i = *(a1 + 248); i; i = *i)
      {
        if (*(i + 214) && (v38 = i[8]) != 0 && (*(*(i[4] + 8 * ((v38 + i[7] - 1) / 0x1AuLL)) + 152 * ((v38 + i[7] - 1) % 0x1AuLL) + 148) & 1) != 0)
        {
          v228 = off_1024DE5F8;
          v229 = v226;
          v232 = xmmword_101C75BF0;
          v233 = xmmword_101C75BF0;
          v234 = v226;
          v235 = v226;
          v236 = 0xBFF0000000000000;
          v237 = 0;
          v238 = 0;
          if (!sub_10002A8E4((i + 25), *&v226, &v228))
          {
            continue;
          }

          v39 = i[8] + i[7] - 1;
          sub_1012E8F84(&v228, *(i[4] + 8 * (v39 / 0x1A)) + 152 * (v39 % 0x1A) + 16);
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v40 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
          {
            v41 = *(i + 212);
            v42 = v229;
            v43 = sub_1001FD6E4(v238);
            v44 = sub_1000291EC((i + 1), &v229 + 1);
            v45 = sub_1001FD6E4(v44);
            v46 = i[102];
            v47 = i[1];
            v48 = *(i + 214);
            *buf = 67245315;
            *&buf[4] = v41;
            *&buf[8] = 2050;
            *&buf[10] = v42;
            *&buf[18] = 2050;
            *&buf[20] = *(&v42 + 1);
            *&buf[28] = 2082;
            *&buf[30] = v43;
            *&buf[38] = 2082;
            *&buf[40] = v45;
            *&buf[48] = 2053;
            *&buf[50] = v230;
            *&buf[58] = 2053;
            *&buf[60] = v231;
            *&buf[68] = 2049;
            *&buf[70] = *(&v232 + 1);
            *&buf[78] = 2049;
            *&buf[80] = v234;
            *&buf[88] = 2049;
            *&buf[90] = v235;
            *&buf[98] = 2050;
            *&buf[100] = v232;
            *&buf[108] = 2050;
            *&buf[110] = v233;
            *&buf[118] = 2050;
            *&buf[120] = *(&v234 + 1);
            *&buf[128] = 2050;
            *&buf[130] = *(&v235 + 1);
            *&buf[138] = 1026;
            *&buf[140] = v237;
            *v284 = 2050;
            *&v284[2] = v236;
            v285 = 1026;
            v286 = BYTE4(v237);
            v287 = 1026;
            v288 = BYTE5(v237);
            v289 = 2050;
            *v290 = v46;
            *&v290[8] = 2050;
            v291 = v47;
            *v292 = 1026;
            *&v292[2] = v48;
            _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "#fusion hypothesis,%{public}d,%{public}.3f,%{public}.3f,%{public}s,%{public}s,%{sensitive}.7f,%{sensitive}.7f,%{private}.1f,%{private}.2f,%{private}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}d,%{public}.2f,%{public}d,%{public}d,%{public}.3f,%{public}.3f,%{public}d", buf, 0xC0u);
          }

          if (!sub_10000A100(121, 2))
          {
            continue;
          }

          sub_101A7B5F4(buf);
          v217 = qword_1025D4778;
          v49 = *(i + 212);
          v51 = *(&v229 + 1);
          v50 = v229;
          v52 = sub_1001FD6E4(v238);
          v53 = sub_1000291EC((i + 1), &v229 + 1);
          v54 = sub_1001FD6E4(v53);
          v55 = i[102];
          v56 = i[1];
          v57 = *(i + 214);
          *v260 = 67245315;
          *&v260[4] = v49;
          *&v260[8] = 2050;
          *&v260[10] = v50;
          *&v260[18] = 2050;
          *&v260[20] = v51;
          *&v260[28] = 2082;
          *&v260[30] = v52;
          *&v260[38] = 2082;
          *&v260[40] = v54;
          *&v260[48] = 2053;
          *&v260[50] = v230;
          *&v260[58] = 2053;
          *&v260[60] = v231;
          *&v260[68] = 2049;
          *&v260[70] = *(&v232 + 1);
          *&v260[78] = 2049;
          *&v260[80] = v234;
          *&v260[88] = 2049;
          *&v260[90] = v235;
          *&v260[98] = 2050;
          *&v260[100] = v232;
          *&v260[108] = 2050;
          *&v260[110] = v233;
          *&v260[118] = 2050;
          *&v260[120] = *(&v234 + 1);
          *&v260[128] = 2050;
          *&v260[130] = *(&v235 + 1);
          *&v260[138] = 1026;
          *&v260[140] = v237;
          *v261 = 2050;
          *&v261[2] = v236;
          v262 = 1026;
          v263 = BYTE4(v237);
          v264 = 1026;
          v265 = BYTE5(v237);
          v266 = 2050;
          *v267 = v55;
          *&v267[8] = 2050;
          v268 = v56;
          *v269 = 1026;
          *&v269[2] = v57;
          LODWORD(v181) = 192;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v217, 0, "#fusion hypothesis,%{public}d,%{public}.3f,%{public}.3f,%{public}s,%{public}s,%{sensitive}.7f,%{sensitive}.7f,%{private}.1f,%{private}.2f,%{private}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}.1f,%{public}d,%{public}.2f,%{public}d,%{public}d,%{public}.3f,%{public}.3f,%{public}d", v260, v181);
          v59 = v58;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v58);
        }

        else
        {
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v60 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
          {
            v61 = i[8];
            v62 = v61 == 0;
            if (v61)
            {
              LODWORD(v61) = *(*(i[4] + 8 * ((v61 + i[7] - 1) / 0x1AuLL)) + 152 * ((v61 + i[7] - 1) % 0x1AuLL) + 148);
            }

            v63 = *(i + 212);
            *buf = 67240704;
            *&buf[4] = v63;
            *&buf[8] = 1026;
            *&buf[10] = v62;
            *&buf[14] = 1026;
            *&buf[16] = v61;
            _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_DEFAULT, "#fusion,Invalid hypothesis,hID,%{public}d,bufferEmpty,%{public}d,fused,%{public}d", buf, 0x14u);
          }

          if (!sub_10000A100(121, 2))
          {
            continue;
          }

          bzero(buf, 0x65CuLL);
          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v64 = *(i + 212);
          v65 = i[8];
          v66 = v65 == 0;
          if (v65)
          {
            LODWORD(v65) = *(*(i[4] + 8 * ((v65 + i[7] - 1) / 0x1AuLL)) + 152 * ((v65 + i[7] - 1) % 0x1AuLL) + 148);
          }

          *v260 = 67240704;
          *&v260[4] = v64;
          *&v260[8] = 1026;
          *&v260[10] = v66;
          *&v260[14] = 1026;
          *&v260[16] = v65;
          LODWORD(v181) = 20;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 0, "#fusion,Invalid hypothesis,hID,%{public}d,bufferEmpty,%{public}d,fused,%{public}d", v260, v181);
          v59 = v67;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v67);
        }

        if (v59 != buf)
        {
          free(v59);
        }
      }

      v68 = *(a1 + 2792);
      if (!v68 || (v68[1] & 1) == 0 || (*v68 & 1) == 0)
      {
        sub_1001FDF20(a1, *a2);
      }

      sub_100211EF8(a1);
      if ((*(a1 + 2904) & 1) == 0)
      {
        sub_100215BE4(a1);
      }

      *v223 = 1;
      if (*(a1 + 173) == 1)
      {
        if (*(a1 + 172) == 1)
        {
          v69 = *(a1 + 208);
          *buf = *a2 + 124;
          v70 = *(sub_1001FBADC(v69, *buf, &unk_101C66300, buf)[5] + 8);
          v71 = *(v70 + 88);
          v72 = *(v70 + 104);
          v73 = *(v70 + 120);
          *(a1 + 1232) = *(v70 + 72);
          *(a1 + 1280) = v73;
          *(a1 + 1264) = v72;
          *(a1 + 1248) = v71;
          v74 = *(v70 + 8);
          v75 = *(v70 + 24);
          v76 = *(v70 + 40);
          *(a1 + 1216) = *(v70 + 56);
          *(a1 + 1200) = v76;
          *(a1 + 1184) = v75;
          *(a1 + 1168) = v74;
          *v223 = 0;
        }

        else
        {
          *(a1 + 1544) = 1;
        }
      }

      else
      {
        v77 = sub_10020AB5C(a1, *a2);
        if (v77)
        {
          *v223 = 0;
          *(a1 + 1283) = *(*a2 + 123);
          v79 = sub_10000B1F8(v77, v78);
          *buf = 0;
          v242 = sub_10001A6B0(v79, buf) - *(a1 + 1168);
          v80 = *(a1 + 248);
          if (v80)
          {
            v81 = 0;
            do
            {
              ++v81;
              v80 = *v80;
            }

            while (v80);
          }

          else
          {
            v81 = 0;
          }

          if (qword_1025D4770 != -1)
          {
            sub_100224830();
          }

          v83 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
          {
            v84 = *(a1 + 1184);
            v85 = *(a1 + 1192);
            v86 = *(a1 + 1200);
            v87 = *(a1 + 1284);
            v88 = sub_1001FD6E4(v87);
            v89 = *(a1 + 1232);
            v90 = *(a1 + 1248);
            v183 = *(a1 + 1276);
            v185 = *(a1 + 1264);
            v187 = *(a1 + 1168);
            v189 = v242;
            v191 = *(a1 + 1208);
            v193 = *(a1 + 1216);
            v195 = *(a1 + 1240);
            v197 = *(a1 + 1256);
            v199 = *(a1 + 1176);
            v201 = *(a1 + 1280);
            v203 = *(a1 + 2800);
            v205 = *(a1 + 2778);
            v207 = *(a1 + 175);
            v209 = *(a1 + 2448);
            v91 = *(a1 + 2168);
            v215 = *(v91 + 560);
            v211 = *(v91 + 568);
            v213 = *(a1 + 112);
            v218 = *(a1 + 2880);
            v220 = *(a1 + 1281);
            v224 = *(a1 + 1283);
            v93 = sub_10000B1F8(v88, v92);
            v94 = sub_100125220(v93);
            *buf = 134552835;
            *&buf[4] = v84;
            *&buf[12] = 2053;
            *&buf[14] = v85;
            *&buf[22] = 2050;
            *&buf[24] = v86;
            *&buf[32] = 1026;
            *&buf[34] = v87;
            *&buf[38] = 2082;
            *&buf[40] = v88;
            *&buf[48] = 2049;
            *&buf[50] = v89;
            *&buf[58] = 2049;
            *&buf[60] = v90;
            *&buf[68] = 1026;
            *&buf[70] = v183;
            *&buf[74] = 2050;
            *&buf[76] = v185;
            *&buf[84] = 2050;
            *&buf[86] = v187;
            *&buf[94] = 2050;
            *&buf[96] = v189;
            *&buf[104] = 2049;
            *&buf[106] = v191;
            *&buf[114] = 2050;
            *&buf[116] = v193;
            *&buf[124] = 2050;
            *&buf[126] = v195;
            *&buf[134] = 2050;
            *&buf[136] = v197;
            *v284 = 2050;
            *&v284[2] = v199;
            v285 = 1026;
            v286 = v201;
            v287 = 1026;
            v288 = v203;
            v289 = 1026;
            *v290 = v205;
            *&v290[4] = 1026;
            *&v290[6] = v207;
            LOWORD(v291) = 1026;
            *(&v291 + 2) = v209;
            HIWORD(v291) = 1026;
            *v292 = v211;
            *&v292[4] = 2050;
            v293 = v215;
            v294 = 1026;
            v295 = v213;
            v296 = 1026;
            v297 = v81;
            v298 = 1026;
            v299 = v218;
            v300 = 1026;
            v301 = v220;
            v302 = 1026;
            v303 = v224;
            v304 = 2050;
            v305 = v94;
            _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEFAULT, "CL-fusion,Pos,0,%{sensitive}.7f,%{sensitive}.7f,Accuracy,%{public}.3f,Type,%{public}d,%{public}s,Speed,%{private}.2f,Course,%{private}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.1f,AltitudeAccuracy,%{public}.1f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampMCT,%{public}.3f,fixIsWiFiAP,%{public}d,linkIsAssociated,%{public}d,inVisit,%{public}d,isPassthrough,%{public}d,dynamicsMode,%{public}d,IO_Context,%{public}d,IO_mct,%{public}.3f,origProviderType,%{public}d,numHypothesis,%{public}d,FusionExeState,%{public}d,CourseAided,%{public}d,IsWSBFix,%{public}d,propagation_us,%{public}.3f", buf, 0xF0u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_101A7B5F4(buf);
            v225 = qword_1025D4778;
            v152 = *(a1 + 1184);
            v153 = *(a1 + 1192);
            v154 = *(a1 + 1200);
            v155 = *(a1 + 1284);
            v156 = sub_1001FD6E4(v155);
            v157 = *(a1 + 1232);
            v158 = *(a1 + 1248);
            v182 = *(a1 + 1276);
            v184 = *(a1 + 1264);
            v186 = *(a1 + 1168);
            v188 = v242;
            v190 = *(a1 + 1208);
            v192 = *(a1 + 1216);
            v194 = *(a1 + 1240);
            v196 = *(a1 + 1256);
            v198 = *(a1 + 1176);
            v200 = *(a1 + 1280);
            v202 = *(a1 + 2800);
            v204 = *(a1 + 2778);
            v206 = *(a1 + 175);
            v208 = *(a1 + 2448);
            v159 = *(a1 + 2168);
            v214 = *(v159 + 560);
            v210 = *(v159 + 568);
            v212 = *(a1 + 112);
            v216 = *(a1 + 2880);
            v219 = *(a1 + 1281);
            v221 = *(a1 + 1283);
            v161 = sub_10000B1F8(v156, v160);
            v162 = sub_100125220(v161);
            *v260 = 134552835;
            *&v260[4] = v152;
            *&v260[12] = 2053;
            *&v260[14] = v153;
            *&v260[22] = 2050;
            *&v260[24] = v154;
            *&v260[32] = 1026;
            *&v260[34] = v155;
            *&v260[38] = 2082;
            *&v260[40] = v156;
            *&v260[48] = 2049;
            *&v260[50] = v157;
            *&v260[58] = 2049;
            *&v260[60] = v158;
            *&v260[68] = 1026;
            *&v260[70] = v182;
            *&v260[74] = 2050;
            *&v260[76] = v184;
            *&v260[84] = 2050;
            *&v260[86] = v186;
            *&v260[94] = 2050;
            *&v260[96] = v188;
            *&v260[104] = 2049;
            *&v260[106] = v190;
            *&v260[114] = 2050;
            *&v260[116] = v192;
            *&v260[124] = 2050;
            *&v260[126] = v194;
            *&v260[134] = 2050;
            *&v260[136] = v196;
            *v261 = 2050;
            *&v261[2] = v198;
            v262 = 1026;
            v263 = v200;
            v264 = 1026;
            v265 = v202;
            v266 = 1026;
            *v267 = v204;
            *&v267[4] = 1026;
            *&v267[6] = v206;
            LOWORD(v268) = 1026;
            *(&v268 + 2) = v208;
            HIWORD(v268) = 1026;
            *v269 = v210;
            *&v269[4] = 2050;
            v270 = v214;
            v271 = 1026;
            v272 = v212;
            v273 = 1026;
            v274 = v81;
            v275 = 1026;
            v276 = v216;
            v277 = 1026;
            v278 = v219;
            v279 = 1026;
            v280 = v221;
            v281 = 2050;
            v282 = v162;
            LODWORD(v181) = 240;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v225, 0, "CL-fusion,Pos,0,%{sensitive}.7f,%{sensitive}.7f,Accuracy,%{public}.3f,Type,%{public}d,%{public}s,Speed,%{private}.2f,Course,%{private}.2f,Confidence,%{public}d,Lifespan,%{public}.3f,LocationTimestamp,%{public}.3f,Age,%{public}.3f,Altitude,%{private}.1f,AltitudeAccuracy,%{public}.1f,SpeedAccuracy,%{public}.3f,CourseAccuracy,%{public}.1f,timestampMCT,%{public}.3f,fixIsWiFiAP,%{public}d,linkIsAssociated,%{public}d,inVisit,%{public}d,isPassthrough,%{public}d,dynamicsMode,%{public}d,IO_Context,%{public}d,IO_mct,%{public}.3f,origProviderType,%{public}d,numHypothesis,%{public}d,FusionExeState,%{public}d,CourseAided,%{public}d,IsWSBFix,%{public}d,propagation_us,%{public}.3f", v260, v181);
            v164 = v163;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v163);
            if (v164 != buf)
            {
              free(v164);
            }
          }

          if (*(a1 + 1104))
          {
            *(a1 + 1044) = 2020;
          }

          v95 = *(a1 + 808);
          v96 = *(a1 + 2904);
          if (v96 & 1) != 0 || (*(a1 + 1283))
          {
            if ((*(a1 + 1284) - 6) >= 3)
            {
              *&v260[12] = 0;
              *&v260[4] = 0;
              *&v260[20] = xmmword_101C75BF0;
              *&v260[36] = v226;
              *&v260[52] = v226;
              *&v260[68] = v226;
              *v260 = 0xFFFF;
              *&v260[84] = 0;
              *&v260[88] = 0xBFF0000000000000;
              memset(&v260[96], 0, 20);
              *&v260[116] = 0xBFF0000000000000;
              *&v260[124] = 0x7FFFFFFF;
              *v261 = 0;
              *&v260[128] = 0;
              *&v260[136] = 0;
              v261[8] = 0;
              if ((v96 & 1) == 0)
              {
                if (sub_10002790C(a1 + 1160, v260))
                {
                  *&v260[132] = 1;
                  *&v260[88] = 0x4008000000000000;
                  sub_10002D644(&v228, v260, *(a1 + 1176));
                  v239 = 0xBFF0000000000000;
                  v240 = 1;
                  v241 = v95;
                  if (qword_1025D4770 != -1)
                  {
                    sub_100224830();
                  }

                  v97 = qword_1025D4778;
                  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                  {
                    v98 = *(a1 + 1176);
                    v99 = *(a1 + 1200);
                    *buf = 134349312;
                    *&buf[4] = v98;
                    *&buf[12] = 2050;
                    *&buf[14] = v99;
                    _os_log_impl(dword_100000000, v97, OS_LOG_TYPE_DEBUG, "#fusion,#ADL,pushing location to output buffer (non-cell) at MCT %{public}.3f sec (hunc: %{public}.3f)", buf, 0x16u);
                  }

                  if (sub_10000A100(121, 2))
                  {
                    sub_101A7B5F4(buf);
                    v177 = *(a1 + 1176);
                    v178 = *(a1 + 1200);
                    v256 = 134349312;
                    v257 = v177;
                    v258 = 2050;
                    v259 = v178;
                    LODWORD(v181) = 22;
                    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,#ADL,pushing location to output buffer (non-cell) at MCT %{public}.3f sec (hunc: %{public}.3f)", &v256, v181);
                    v180 = v179;
                    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v179);
                    if (v180 != buf)
                    {
                      free(v180);
                    }
                  }

                  sub_100D6C864(a1 + 2960);
                  if (*(a1 + 1283) == 1)
                  {
                    if (qword_1025D4770 != -1)
                    {
                      sub_100224830();
                    }

                    v100 = qword_1025D4778;
                    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                    {
                      v101 = *(a1 + 1176);
                      *buf = 134349056;
                      *&buf[4] = v101;
                      _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_DEBUG, "#fusion,#ADL,forwarding filtered WSB location to output buffer at MCT %{public}.3f sec", buf, 0xCu);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_101A7B5F4(buf);
                      v102 = *(a1 + 1176);
                      v256 = 134349056;
                      v257 = v102;
                      LODWORD(v181) = 12;
                      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "#fusion,#ADL,forwarding filtered WSB location to output buffer at MCT %{public}.3f sec", &v256, v181);
                      v104 = v103;
                      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v103);
                      if (v104 != buf)
                      {
                        free(v104);
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            sub_10002AAB0(a1, (a1 + 1160), 0, *(a1 + 808));
            if (*(a1 + 1176) > *(a1 + 1432))
            {
              v105 = *(a1 + 1248);
              *(a1 + 1488) = *(a1 + 1232);
              *(a1 + 1504) = v105;
              *(a1 + 1520) = *(a1 + 1264);
              v106 = *(a1 + 1184);
              *(a1 + 1424) = *(a1 + 1168);
              *(a1 + 1440) = v106;
              v107 = *(a1 + 1216);
              *(a1 + 1456) = *(a1 + 1200);
              *(a1 + 1536) = *(a1 + 1280);
              *(a1 + 1472) = v107;
            }
          }

          *&buf[12] = 0;
          *&buf[4] = 0;
          *&buf[20] = xmmword_101C75BF0;
          *&buf[36] = v226;
          *&buf[52] = v226;
          *&buf[68] = v226;
          *buf = 0xFFFF;
          *&buf[84] = 0;
          *&buf[88] = 0xBFF0000000000000;
          memset(&buf[96], 0, 20);
          *&buf[116] = 0xBFF0000000000000;
          *&buf[124] = 0x7FFFFFFF;
          *v284 = 0;
          *&buf[128] = 0;
          *&buf[136] = 0;
          v284[8] = 0;
          if (*(a1 + 2952) == 1)
          {
            v108 = sub_10002790C(a1 + 1160, buf);
            if (v108)
            {
              *v260 = 0xBFF0000000000000;
              CLMotionActivity::getInit(v108);
              v109 = sub_1000D0738(a1 + 2424, v260);
              v111 = sub_10000AE98(v109, v110);
              v112 = *(a1 + 1280);
              v113 = *(a1 + 2800);
              v114 = *(a1 + 2778);
              v115 = *(a1 + 175);
              v256 = *(a1 + 2448);
              v116 = *(a1 + 2168);
              v117 = *(v116 + 560);
              v118 = *(v116 + 568);
              v228 = v117;
              LODWORD(v229) = v118;
              sub_1005D4344(v111, buf, &v242, v112, v113, v114, v115, &v256, &v228, (a1 + 112), v81, (a1 + 2880), v260);
            }
          }
        }

        else
        {
          if (!*(a1 + 1544))
          {
            *(a1 + 1544) = 9;
          }

          *v223 = 1;
        }

        if ((*(a1 + 174) & 1) == 0)
        {
          v119 = *(a1 + 2792);
          if (!v119 || v119[1] != 1 || (*v119 & 1) == 0)
          {
            if (sub_1002096A0(a1, *a2))
            {
              if (*(a1 + 172) == 1)
              {
                v120 = *(a1 + 112);
                if (v120 > 8 || ((1 << v120) & 0x1D0) == 0)
                {
                  v121 = *(a1 + 208);
                  *buf = *a2 + 124;
                  v122 = *(sub_1001FBADC(v121, *buf, &unk_101C66300, buf)[5] + 8);
                  v123 = *(v122 + 88);
                  v124 = *(v122 + 104);
                  v125 = *(v122 + 120);
                  *(a1 + 1232) = *(v122 + 72);
                  *(a1 + 1280) = v125;
                  *(a1 + 1264) = v124;
                  *(a1 + 1248) = v123;
                  v126 = *(v122 + 8);
                  v127 = *(v122 + 24);
                  v128 = *(v122 + 40);
                  *(a1 + 1216) = *(v122 + 56);
                  *(a1 + 1200) = v128;
                  *(a1 + 1184) = v127;
                  *(a1 + 1168) = v126;
                  *v223 = 0;
                }
              }

              else
              {
                if (qword_1025D4770 != -1)
                {
                  sub_100224830();
                }

                v129 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v129, OS_LOG_TYPE_DEFAULT, "#fusion,passthrough mode,mark the fix as rejected,legacy should notify block the provider fix", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_101A7B5F4(buf);
                  *v260 = 0;
                  LODWORD(v181) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 0, "#fusion,passthrough mode,mark the fix as rejected,legacy should notify block the provider fix", v260, v181);
                  v176 = v175;
                  sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::CLLCFusion::locationUpdate(const std::shared_ptr<const LCFusionProviderLocation>, BOOL &)", "%s\n", v175);
                  if (v176 != buf)
                  {
                    free(v176);
                  }
                }

                *v223 = 1;
                *(a1 + 1544) = 1;
              }

              *(a1 + 175) = 1;
            }
          }
        }
      }

      *(a1 + 172) = 0;
      if ((*v223 & 1) == 0)
      {
        *(a1 + 2832) = 0;
        if ((*(a1 + 2904) & 1) == 0)
        {
          v130 = *(a1 + 2176);
          if (v130)
          {
            sub_100216EAC(v130, *(a1 + 200));
          }
        }
      }

      v131 = *(a1 + 2272);
      if (v131 != (a1 + 2280))
      {
        do
        {
          v132 = *(v131[5] + 16);
          v133 = *(a1 + 200);
          if (v133 <= v132 || v133 - v132 <= 300.0)
          {
            v135 = v131[1];
            if (v135)
            {
              do
              {
                v134 = v135;
                v135 = *v135;
              }

              while (v135);
            }

            else
            {
              do
              {
                v134 = v131[2];
                _ZF = *v134 == v131;
                v131 = v134;
              }

              while (!_ZF);
            }
          }

          else
          {
            v134 = sub_1001F3424((a1 + 2272), v131);
          }

          v131 = v134;
        }

        while (v134 != (a1 + 2280));
      }

      v136 = *(a1 + 208);
      v139 = *v136;
      v137 = v136 + 1;
      v138 = v139;
      if (v139 != v137)
      {
        do
        {
          v140 = v138 + 5;
          v141 = v138[5];
          if (v141)
          {
            do
            {
              v142 = *(a1 + 200);
              v143 = *(v141[1] + 16);
              if (v142 > v143 && v142 - v143 > 900.0)
              {
                v144 = v141[2];
                v141[1] = 0;
                v141[2] = 0;
                if (v144)
                {
                  sub_100008080(v144);
                }
              }

              v141 = *v141;
            }

            while (v141);
            v145 = *v140;
            for (*buf = 0; v145; v145 = *v145)
            {
              v146 = v145[2];
              if (!v146 || *(v146 + 8) == -1)
              {
                while (1)
                {
                  v145 = *v145;
                  if (!v145)
                  {
                    break;
                  }

                  v147 = v145[2];
                  if (v147)
                  {
                    if (*(v147 + 8) != -1)
                    {
                      break;
                    }
                  }
                }

                if (buf != v140 && v140 != v145)
                {
                  v148 = v140;
                  do
                  {
                    v149 = v148;
                    v148 = *v148;
                  }

                  while (v148 != v145);
                  if (v149 != v140)
                  {
                    *v149 = *buf;
                    *buf = *v140;
                    *v140 = v145;
                  }
                }

                if (!v145)
                {
                  break;
                }
              }

              v140 = v145;
            }
          }

          else
          {
            *buf = 0;
          }

          sub_100224858(buf);
          v150 = v138[1];
          if (v150)
          {
            do
            {
              v151 = v150;
              v150 = *v150;
            }

            while (v150);
          }

          else
          {
            do
            {
              v151 = v138[2];
              _ZF = *v151 == v138;
              v138 = v151;
            }

            while (!_ZF);
          }

          v138 = v151;
        }

        while (v151 != v137);
      }
    }

    else
    {
      *a3 = 1;
    }

    if (v244)
    {
      std::__shared_weak_count::__release_weak(v244);
    }

    return v222;
  }

  return result;
}

void sub_1001DF600(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10037EA9C(a1);
  }

  _Unwind_Resume(a1);
}

int64x2_t sub_1001DF618(int64x2_t *a1, __int128 *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    sub_10025A210(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x1A));
  v7 = *v6 + 156 * (v4 % 0x1A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4056;
  }

  v8 = *a2;
  *(v7 - 140) = a2[1];
  *(v7 - 156) = v8;
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  *(v7 - 76) = a2[5];
  *(v7 - 92) = v11;
  *(v7 - 108) = v10;
  *(v7 - 124) = v9;
  v12 = a2[6];
  v13 = a2[7];
  v14 = a2[8];
  *(v7 - 16) = *(a2 + 140);
  *(v7 - 28) = v14;
  *(v7 - 44) = v13;
  *(v7 - 60) = v12;
  result = vaddq_s64(a1[2], xmmword_101C79510);
  a1[2] = result;
  return result;
}

void sub_1001DF6F0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = 368;
  if (*(a1 + 245))
  {
    v5 = 244;
  }

  if (*(a1 + v5) == 1)
  {
    v10 = v3;
    v11 = v4;
    if (*(a1 + 2172) == 1 && *a1 && sub_100021618(a3, *(a1 + 1568), 315360000.0) >= 120.0)
    {
      if (qword_1025D4600 != -1)
      {
        sub_10023A174();
      }

      v8 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "BaroAlt,query ref pressure during a e911 call", v9, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101747178();
      }

      sub_10173C5AC(a1, a2);
    }
  }
}

uint64_t sub_1001DF7F8(uint64_t a1, uint64_t a2, double *__src)
{
  if (!*(a1 + 3872) || !*(a1 + 3880) || (*(a2 + 96) & 0xFFFFFFF7) != 1)
  {
    return 0;
  }

  v6 = *(a2 + 112);
  v46[6] = *(a2 + 96);
  v46[7] = v6;
  v47[0] = *(a2 + 128);
  *(v47 + 12) = *(a2 + 140);
  v7 = *(a2 + 48);
  v46[2] = *(a2 + 32);
  v46[3] = v7;
  v8 = *(a2 + 80);
  v46[4] = *(a2 + 64);
  v46[5] = v8;
  v9 = *(a2 + 16);
  v46[0] = *a2;
  v46[1] = v9;
  memcpy(v48, __src, 0x201uLL);
  v10 = *(__src + 65);
  v48[65] = v10;
  v11 = *(__src + 66);
  v49 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *(__src + 65);
    v12 = *(__src + 66);
  }

  else
  {
    v12 = 0;
  }

  v14 = *(__src + 77);
  v54 = *(__src + 75);
  v55[0] = v14;
  *(v55 + 9) = *(__src + 625);
  v15 = *(__src + 69);
  v50 = *(__src + 67);
  v51 = v15;
  v16 = *(__src + 73);
  v52 = *(__src + 71);
  v53 = v16;
  v17 = *(a2 + 112);
  v36[6] = *(a2 + 96);
  v36[7] = v17;
  v37[0] = *(a2 + 128);
  *(v37 + 12) = *(a2 + 140);
  v18 = *(a2 + 48);
  v36[2] = *(a2 + 32);
  v36[3] = v18;
  v19 = *(a2 + 80);
  v36[4] = *(a2 + 64);
  v36[5] = v19;
  v20 = *(a2 + 16);
  v36[0] = *a2;
  v36[1] = v20;
  memcpy(v38, __src, 0x201uLL);
  v38[65] = v10;
  v39 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(__src + 77);
  v44 = *(__src + 75);
  v45[0] = v21;
  *(v45 + 9) = *(__src + 625);
  v22 = *(__src + 69);
  v40 = *(__src + 67);
  v41 = v22;
  v23 = *(__src + 73);
  v42 = *(__src + 71);
  v43 = v23;
  HIWORD(v35) = 0;
  sub_1002A3274(*(a1 + 3872), v46, &v35 + 7);
  sub_1002A3274(*(a1 + 3880), v36, &v35 + 6);
  v24 = HIBYTE(v35);
  if (HIBYTE(v35) == *(a1 + 3888))
  {
    v25 = *&v48[1];
    v26 = *v38;
    v27 = *(a1 + 3896) + *&v48[1] - *&v38[1];
    *(a1 + 3896) = v27;
  }

  else
  {
    v26 = *v38;
    v25 = *&v38[1];
    v27 = *(a1 + 3896);
  }

  *(__src + 1) = v25;
  *(a1 + 3888) = v24;
  *__src = v26 + v27;
  if (qword_1025D46B0 != -1)
  {
    sub_101956350();
  }

  v28 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v29 = *__src;
    v30 = *(a1 + 3896);
    buf = 134218240;
    v61 = v29;
    v62 = 2048;
    v63 = v30;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "GPSODOM,odometer,%.1lf,fAccumulatedDeltaDistanceDifferenceM,%.1lf", &buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101956DC4(&buf);
    v31 = *__src;
    v32 = *(a1 + 3896);
    v56 = 134218240;
    v57 = v31;
    v58 = 2048;
    v59 = v32;
    LODWORD(v35) = 22;
    _os_log_send_and_compose_impl(2, 0, &buf, 1628, dword_100000000, qword_1025D46B8, 2, "GPSODOM,odometer,%.1lf,fAccumulatedDeltaDistanceDifferenceM,%.1lf", COERCE_DOUBLE(&v56), v35);
    v34 = v33;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLLocationControllerFusion::updateGnssOdometer(CLDaemonLocation &, CLDaemonLocationPrivate &)", "%s\n", v33);
    if (v34 != &buf)
    {
      free(v34);
    }
  }

  if (v39)
  {
    sub_100008080(v39);
  }

  if (v49)
  {
    sub_100008080(v49);
  }

  return 1;
}

void sub_1001DFB84(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 688);
  if (v4)
  {
    sub_100008080(v4);
  }

  v5 = *(v1 + 688);
  if (v5)
  {
    sub_100008080(v5);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001DFBB4(uint64_t a1, int *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101A9619C();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLGnssAssistancePosition::onLocationNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101A961B0();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLGnssAssistancePosition::onLocationNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001D8FE0(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001DFD80(uint64_t a1, _OWORD *a2)
{
  result = *(a1 + 136);
  if (result)
  {
    if (*(a2 + 24) == 1)
    {
      v4 = *a2;
      *(a1 + 168) = a2[1];
      *(a1 + 152) = v4;
      v5 = a2[2];
      v6 = a2[3];
      v7 = a2[4];
      *(a1 + 232) = a2[5];
      *(a1 + 216) = v7;
      *(a1 + 200) = v6;
      *(a1 + 184) = v5;
      v8 = a2[6];
      v9 = a2[7];
      v10 = a2[8];
      *(a1 + 292) = *(a2 + 140);
      *(a1 + 264) = v9;
      *(a1 + 280) = v10;
      *(a1 + 248) = v8;
    }

    return sub_1001DFDE0(result, a2);
  }

  return result;
}

uint64_t sub_1001DFDE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 96);
  if (v4 == 6)
  {
    v5 = sub_1001D3D90(*(a1 + 40), a2);
    if (qword_1025D4620 != -1)
    {
      sub_101968930();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_1001D78F4(__p);
      v7 = __p[0];
      v8 = "yes";
      if (v34 >= 0)
      {
        v7 = __p;
      }

      if (v5)
      {
        v8 = "no";
      }

      *buf = 136643075;
      *&buf[4] = v7;
      v26 = 2080;
      v27 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "MovingApDetector, CellOnly, received location: %{sensitive}s, success: %s", buf, 0x16u);
      if (v34 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(__p, 0x65CuLL);
      if (qword_1025D4620 != -1)
      {
        sub_1019688C4();
      }

      v19 = qword_1025D4628;
      sub_1001D78F4(buf);
      v20 = *buf;
      v21 = "yes";
      if (v28 >= 0)
      {
        v20 = buf;
      }

      if (v5)
      {
        v21 = "no";
      }

      v29 = 136643075;
      v30 = v20;
      v31 = 2080;
      v32 = v21;
      _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v19, 0, "MovingApDetector, CellOnly, received location: %{sensitive}s, success: %s", &v29, 22);
      v23 = v22;
      if (v28 < 0)
      {
        operator delete(*buf);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMovingApDetector::receiveLocation(CLDaemonLocation &)", "%s\n", v23);
      if (v23 != __p)
      {
        free(v23);
      }
    }

    v4 = *(a2 + 96);
  }

  if (v4 != 1 && (v4 != 6 || sub_1001CCA30()[1] != 1))
  {
    return 0;
  }

  v9 = sub_1001D3D90(*(a1 + 24), a2);
  if (qword_1025D4620 != -1)
  {
    sub_1019688C4();
  }

  v10 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_1001D78F4(__p);
    v11 = __p[0];
    v12 = "yes";
    if (v34 >= 0)
    {
      v11 = __p;
    }

    if (v9)
    {
      v12 = "no";
    }

    *buf = 136643075;
    *&buf[4] = v11;
    v26 = 2080;
    v27 = v12;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "MovingApDetector, received location: %{sensitive}s, success: %s", buf, 0x16u);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10000A100(121, 2))
  {
    bzero(__p, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_1019688C4();
    }

    v13 = qword_1025D4628;
    sub_1001D78F4(buf);
    v14 = *buf;
    v15 = "yes";
    if (v28 >= 0)
    {
      v14 = buf;
    }

    if (v9)
    {
      v15 = "no";
    }

    v29 = 136643075;
    v30 = v14;
    v31 = 2080;
    v32 = v15;
    LODWORD(v24) = 22;
    _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v13, 0, "MovingApDetector, received location: %{sensitive}s, success: %s", &v29, v24);
    v17 = v16;
    if (v28 < 0)
    {
      operator delete(*buf);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMovingApDetector::receiveLocation(CLDaemonLocation &)", "%s\n", v17);
    if (v17 != __p)
    {
      free(v17);
    }
  }

  return v9;
}

uint64_t sub_1001E0254(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 26 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1A)
  {
    a2 = 1;
  }

  if (v5 < 0x34)
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

uint64_t sub_1001E02CC(uint64_t result, const wireless_diagnostics::google::protobuf::MessageLite *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 152);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(result + 48), a2, a4);
    v6 = *(v5 + 152);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v7 = *(v5 + 8);
  if (!v7)
  {
    v7 = *(qword_102636C38 + 8);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 152);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(v5 + 40), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, *(v5 + 56), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(8, a2, *(v5 + 64), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(9, a2, *(v5 + 72), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 52), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xC, a2, *(v5 + 88), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xD, *(v5 + 104), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_39:
  v8 = *(v5 + 96);
  if (!v8)
  {
    v8 = *(qword_102636C38 + 96);
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v8, a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0xF, a2, *(v5 + 112), a3);
  v6 = *(v5 + 152);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0x10, *(v5 + 108), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x11, *(v5 + 120), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 124), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, *(v5 + 128), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

LABEL_48:
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(0x15, a2, *(v5 + 136), a3);
    if ((*(v5 + 152) & 0x200000) == 0)
    {
      return result;
    }

    goto LABEL_49;
  }

LABEL_47:
  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(v5 + 132), a2, a4);
  v6 = *(v5 + 152);
  if ((v6 & 0x100000) != 0)
  {
    goto LABEL_48;
  }

LABEL_22:
  if ((v6 & 0x200000) == 0)
  {
    return result;
  }

LABEL_49:
  v9 = *(v5 + 144);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x16, v9, a2, a4);
}

uint64_t sub_1001E058C(uint64_t result, int a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(result + 8), a3);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
      if ((*(v5 + 40) & 8) == 0)
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
  v6 = *(v5 + 40);
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
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

void sub_1001E0634(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_102452338;
  sub_1001D953C(a1);
  sub_100027438(a1 + 288);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);
}

BOOL sub_1001E0708(int a1)
{
  result = 1;
  if ((a1 - 25) > 0x32 || ((1 << (a1 - 25)) & 0x4000002000001) == 0)
  {
    return (a1 + 1) < 2;
  }

  return result;
}

uint64_t sub_1001E074C(uint64_t result)
{
  *(result + 28) = 0;
  *(result + 32) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = off_102452158;
  *(result + 24) = 0;
  return result;
}

void *sub_1001E0778(void *result)
{
  *result = off_1024521D0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t sub_1001E079C(unsigned __int8 *a1)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled daemon location private position context type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84C58(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001E088C(unsigned int *a1)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled daemon location private loi location accuracy type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84E30(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001E097C(unsigned int *a1)
{
  result = *a1;
  if (result >= 5)
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
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled client batched location fix type: %{public}d", v6, 8u);
    }

    v5 = sub_10000A100(121, 0);
    result = 0;
    if (v5)
    {
      sub_101B84F1C(a1);
      return 0;
    }
  }

  return result;
}

void *sub_1001E0A6C(void *result)
{
  v1 = result;
  if (result >= 5)
  {
    if (qword_1025D4730 != -1)
    {
      sub_101B83560();
    }

    v2 = qword_1025D4738;
    if (os_log_type_enabled(qword_1025D4738, OS_LOG_TYPE_ERROR))
    {
      v4[0] = 67240192;
      v4[1] = v1;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "Invalid GES,%{public}d", v4, 8u);
    }

    v3 = sub_10000A100(121, 0);
    result = 0;
    if (v3)
    {
      sub_101B85008(v1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001E0B70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ((v1 << 31) >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  v3 = ((v1 >> 2) & 2) + ((v1 >> 1) & 2) + v2;
  if (*(a1 + 32))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 28) = v4;
  return v4;
}

void sub_1001E0BB8(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_1024522C0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

void sub_1001E0C14(uint64_t a1, uint64_t a2)
{
  if (rand() % 100 <= 0)
  {

    sub_100F356A8(a1, a2);
  }
}

void sub_1001E0CA4(uint64_t result, __int128 *a2)
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
        sub_1018819CC();
      }
    }

    else
    {
      v2 = *a2;
      *(result + 56) = a2[1];
      *(result + 40) = v2;
      v3 = a2[2];
      v4 = a2[3];
      v5 = a2[4];
      *(result + 120) = a2[5];
      *(result + 104) = v5;
      *(result + 88) = v4;
      *(result + 72) = v3;
      v6 = a2[6];
      v7 = a2[7];
      v8 = a2[8];
      *(result + 180) = *(a2 + 140);
      *(result + 168) = v8;
      *(result + 152) = v7;
      *(result + 136) = v6;
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
      sub_1018818F8();
    }
  }
}

uint64_t sub_1001E0E04(uint64_t a1)
{
  v2 = sub_100100690();
  if ((sub_1001AC2B4(v2) & 1) == 0)
  {
    v6 = a1 + 888;
    v7 = 1;
LABEL_16:
    sub_1001E268C(v6, v7);
    return 0;
  }

  if (!sub_100072814(a1 + 312))
  {
    v6 = a1 + 888;
    v7 = 2;
    goto LABEL_16;
  }

  if (!sub_1001E9CC8(a1 + 1536, a1 + 316, a1 + 324, 4))
  {
    v8 = *(sub_100100690() + 9);
    v9 = (a1 + 332);
    if (*(a1 + 332) > v8)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101AA3E94();
      }

      v10 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        sub_10018F0D0(&buf);
        v11 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        v12 = *v9;
        LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
        *(__p.__r_.__value_.__r.__words + 4) = v11;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v12;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2050;
        v94 = v8;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as its uncertainty %{public}.1f is greater than %{public}.1f", &__p, 0x20u);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      if (sub_10000A100(121, 2))
      {
        bzero(&__p, 0x65CuLL);
        if (qword_1025D4620 != -1)
        {
          sub_101AA3FB0();
        }

        v57 = qword_1025D4628;
        sub_10018F0D0(&v90);
        if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = &v90;
        }

        else
        {
          v58 = v90.__r_.__value_.__r.__words[0];
        }

        v59 = *v9;
        LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
        *(buf.__r_.__value_.__r.__words + 4) = v58;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v59;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
        v92 = v8;
        _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v57, 0, "WifiCalc, skip updating computed location using associated AP %{private}s as its uncertainty %{public}.1f is greater than %{public}.1f", &buf, 32);
        v61 = v60;
        if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v61);
        if (v61 != &__p)
        {
          free(v61);
        }
      }

      sub_1001E268C(a1 + 888, 5);
      return 0;
    }

    if (*(a1 + 1528) != 2)
    {
      if ((*(a1 + 1488) & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AA3E94();
        }

        v29 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&__p);
          v30 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
          *(buf.__r_.__value_.__r.__words + 4) = v30;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as we cannot determine its LOI type", &buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AA4734(a1);
        }

        sub_1001E268C(a1 + 888, 6);
        return 0;
      }

      v23 = *(a1 + 1480);
      v24 = sub_100100690();
      if ((sub_10023866C(v24, v23, v25) & 1) == 0)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AA3E94();
        }

        v26 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&__p);
          p_p = __p.__r_.__value_.__r.__words[0];
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          v28 = (a1 + 1496);
          if (*(a1 + 1519) < 0)
          {
            v28 = *v28;
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136380931;
          *(buf.__r_.__value_.__r.__words + 4) = p_p;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v28;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as its LOI type %{private}s is not enabled", &buf, 0x16u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AA483C(a1);
        }

        sub_1001E268C(a1 + 888, 7);
        return 0;
      }
    }

    if (sub_1001E2324(a1))
    {
      if (sub_1001E2678((a1 + 512)) && (*(a1 + 616) & 1) == 0)
      {
        v13 = *(a1 + 624);
        *v89 = *(a1 + 512);
        memset(&v90, 0, sizeof(v90));
        sub_1006DFE88(&v90, v89, &v89[8], 1uLL);
        sub_1001E4A94(a1 + 696, &__p);
        Current_2 = j__CFAbsoluteTimeGetCurrent_2();
        (*(*v13 + 16))(&buf, v13, &v90, &__p, Current_2);
        if (v90.__r_.__value_.__r.__words[0])
        {
          v90.__r_.__value_.__l.__size_ = v90.__r_.__value_.__r.__words[0];
          operator delete(v90.__r_.__value_.__l.__data_);
        }

        v15 = sub_100198C70(&buf, (a1 + 512));
        if (&buf.__r_.__value_.__r.__words[1] == v15)
        {
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v31 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&__p);
            v32 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(v90.__r_.__value_.__l.__data_) = 136315138;
            *(v90.__r_.__value_.__r.__words + 4) = v32;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "WifiCalc, still could not look up centroid from tile/als for associated AP %s", &v90, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AA3FD8(&__p);
            v84 = qword_1025D4628;
            sub_10018F0D0(&v90);
            if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v85 = &v90;
            }

            else
            {
              v85 = v90.__r_.__value_.__r.__words[0];
            }

            *v89 = 136315138;
            *&v89[4] = v85;
            _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v84, 0, "WifiCalc, still could not look up centroid from tile/als for associated AP %s", v89);
            v87 = v86;
            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v87);
            if (v87 != &__p)
            {
              free(v87);
            }
          }
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v16 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&__p);
            v17 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(v90.__r_.__value_.__l.__data_) = 136315138;
            *(v90.__r_.__value_.__r.__words + 4) = v17;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "WifiCalc, found centroid from tile/als for associated AP %s", &v90, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AA3FD8(&__p);
            v72 = qword_1025D4628;
            sub_10018F0D0(&v90);
            if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v73 = &v90;
            }

            else
            {
              v73 = v90.__r_.__value_.__r.__words[0];
            }

            *v89 = 136315138;
            *&v89[4] = v73;
            _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v72, 0, "WifiCalc, found centroid from tile/als for associated AP %s", v89);
            v75 = v74;
            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v75);
            if (v75 != &__p)
            {
              free(v75);
            }
          }

          v18 = *(a1 + 616);
          v19 = *(v15 + 56);
          *(a1 + 520) = *(v15 + 40);
          *(a1 + 536) = v19;
          v20 = *(v15 + 88);
          v21 = *(v15 + 120);
          v22 = *(v15 + 72);
          *(a1 + 584) = *(v15 + 104);
          *(a1 + 600) = v21;
          *(a1 + 552) = v22;
          *(a1 + 568) = v20;
          if ((v18 & 1) == 0)
          {
            *(a1 + 616) = 1;
          }
        }

        sub_1003C93BC(&buf, buf.__r_.__value_.__l.__size_);
      }

      if (*(a1 + 616) == 1 && sub_1001E4BB4(a1 + 520))
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AA3FB0();
        }

        v33 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&__p);
          v34 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
          *(buf.__r_.__value_.__r.__words + 4) = v34;
          _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "WifiCalc, warning, associated AP %{private}s server-side centroid from tile/als is moving", &buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101AA4984();
        }
      }

      v35 = *(sub_100100690() + 6);
      if (*(a1 + 1520) >= v35)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AA3FB0();
        }

        v43 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&buf);
          v44 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          v45 = *(a1 + 1520);
          LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
          *(__p.__r_.__value_.__r.__words + 4) = v44;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v45;
          HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
          v94 = v35;
          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEFAULT, "WifiCalc, will update computed location using associated AP %{private}s as stationary time %.1f is no less than threshold %.1f", &__p, 0x20u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v67 = qword_1025D4628;
          sub_10018F0D0(&v90);
          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v68 = &v90;
          }

          else
          {
            v68 = v90.__r_.__value_.__r.__words[0];
          }

          v69 = *(a1 + 1520);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
          *(buf.__r_.__value_.__r.__words + 4) = v68;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v69;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v92 = v35;
          _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v67, 0, "WifiCalc, will update computed location using associated AP %{private}s as stationary time %.1f is no less than threshold %.1f", &buf, 32);
          v71 = v70;
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v71);
          if (v71 != &__p)
          {
            free(v71);
          }
        }

        sub_1001E268C(a1 + 888, 9);
      }

      else
      {
        if (qword_1025D4620 != -1)
        {
          sub_101AA3FB0();
        }

        v36 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_10018F0D0(&buf);
          v37 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          v38 = *(a1 + 1520);
          LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
          *(__p.__r_.__value_.__r.__words + 4) = v37;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v38;
          HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
          v94 = v35;
          _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEFAULT, "WifiCalc, associated AP %{private}s has stationary time %.1f, less than threshold %.1f", &__p, 0x20u);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          bzero(&__p, 0x65CuLL);
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v62 = qword_1025D4628;
          sub_10018F0D0(&v90);
          if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v63 = &v90;
          }

          else
          {
            v63 = v90.__r_.__value_.__r.__words[0];
          }

          v64 = *(a1 + 1520);
          LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
          *(buf.__r_.__value_.__r.__words + 4) = v63;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v64;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
          v92 = v35;
          _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v62, 0, "WifiCalc, associated AP %{private}s has stationary time %.1f, less than threshold %.1f", &buf, 32);
          v66 = v65;
          if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v90.__r_.__value_.__l.__data_);
          }

          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v66);
          if (v66 != &__p)
          {
            free(v66);
          }
        }

        if (sub_1001E2678((a1 + 512)) && (*(a1 + 616) & 1) == 0)
        {
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v51 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&__p);
            v52 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
            *(buf.__r_.__value_.__r.__words + 4) = v52;
            _os_log_impl(dword_100000000, v51, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as server-side centroid from tile/als is unavailable", &buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AA4A88();
          }

          sub_1001E268C(a1 + 888, 10);
          return 0;
        }

        if (sub_1001E2678((a1 + 512)) && !sub_10019A2D4((a1 + 520)))
        {
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v55 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&__p);
            v56 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
            *(buf.__r_.__value_.__r.__words + 4) = v56;
            _os_log_impl(dword_100000000, v55, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as server-side centroid from tile/als is invalid", &buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AA4B8C();
          }

          sub_1001E268C(a1 + 888, 11);
          return 0;
        }

        v39 = sub_1001E2678((a1 + 512));
        if (v39 || (sub_10001A3E8(v39, v40), !sub_10001CF3C()))
        {
          sub_100109D18((a1 + 472), *(a1 + 528), *(a1 + 536), *(a1 + 696), *(a1 + 704), 0.0);
          v47 = v46;
          v48 = *(sub_100100690() + 8);
          if (*&v47 > v48)
          {
            if (qword_1025D4620 != -1)
            {
              sub_101AA3FB0();
            }

            v53 = qword_1025D4628;
            if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
            {
              sub_10018F0D0(&buf);
              v54 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
              LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
              *(__p.__r_.__value_.__r.__words + 4) = v54;
              WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
              *(&__p.__r_.__value_.__r.__words[1] + 6) = v47;
              HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
              v94 = v48;
              _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as distance %.1f is greater than threshold %.0f", &__p, 0x20u);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }

            if (sub_10000A100(121, 2))
            {
              bzero(&__p, 0x65CuLL);
              if (qword_1025D4620 != -1)
              {
                sub_101AA3FB0();
              }

              v80 = qword_1025D4628;
              sub_10018F0D0(&v90);
              if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v81 = &v90;
              }

              else
              {
                v81 = v90.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
              *(buf.__r_.__value_.__r.__words + 4) = v81;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v47;
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
              v92 = v48;
              LODWORD(v88) = 32;
              _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v80, 0, "WifiCalc, skip updating computed location using associated AP %{private}s as distance %.1f is greater than threshold %.0f", &buf, v88);
              v83 = v82;
              if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v90.__r_.__value_.__l.__data_);
              }

              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v83);
              if (v83 != &__p)
              {
                free(v83);
              }
            }

            sub_1001E268C(a1 + 888, 13);
            return 0;
          }

          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v49 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&buf);
            v50 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
            LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
            *(__p.__r_.__value_.__r.__words + 4) = v50;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
            *(&__p.__r_.__value_.__r.__words[1] + 6) = v47;
            HIWORD(__p.__r_.__value_.__r.__words[2]) = 2048;
            v94 = v48;
            _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "WifiCalc, will update computed location using associated AP %{private}s as distance %.1f is no more than threshold %.0f", &__p, 0x20u);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            bzero(&__p, 0x65CuLL);
            if (qword_1025D4620 != -1)
            {
              sub_101AA3FB0();
            }

            v76 = qword_1025D4628;
            sub_10018F0D0(&v90);
            if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v77 = &v90;
            }

            else
            {
              v77 = v90.__r_.__value_.__r.__words[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
            *(buf.__r_.__value_.__r.__words + 4) = v77;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = v47;
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
            v92 = v48;
            LODWORD(v88) = 32;
            _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v76, 0, "WifiCalc, will update computed location using associated AP %{private}s as distance %.1f is no more than threshold %.0f", &buf, v88);
            v79 = v78;
            if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v90.__r_.__value_.__l.__data_);
            }

            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::shouldUpdateComputedLocation()", "%s\n", v79);
            if (v79 != &__p)
            {
              free(v79);
            }
          }

          sub_1001E268C(a1 + 888, 14);
        }

        else
        {
          if (qword_1025D4620 != -1)
          {
            sub_101AA3FB0();
          }

          v41 = qword_1025D4628;
          if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
          {
            sub_10018F0D0(&__p);
            v42 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
            LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
            *(buf.__r_.__value_.__r.__words + 4) = v42;
            _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_DEFAULT, "WifiCalc, will update computed location using associated AP %{private}s on residential devices", &buf, 0xCu);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }

          if (sub_10000A100(121, 2))
          {
            sub_101AA4C90();
          }

          sub_1001E268C(a1 + 888, 12);
        }
      }

      return 1;
    }

    v6 = a1 + 888;
    v7 = 8;
    goto LABEL_16;
  }

  sub_1001E268C(a1 + 888, 4);
  if (qword_1025D4620 != -1)
  {
    sub_101AA3E94();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_10018F0D0(&__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v4 = &__p;
    }

    else
    {
      v4 = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "WifiCalc, skip updating computed location using associated AP %{private}s as it is KnownAC", &buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101AA4D94(a1);
    return 0;
  }

  return result;
}

uint64_t sub_1001E21E4(uint64_t a1, double *a2, double *a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_1001E4A58(a1, a2);
  v8 = sub_1001E9838(v7, a2, a3, v4);
  v10 = sub_1001E22E8(v8, v9);
  sub_1001E2240(v10, v8, v4);
  return v8;
}

void sub_1001E2240(uint64_t a1, char a2, int a3)
{
  if (qword_102666B48 != -1)
  {
    sub_1016B3C90();
  }

  v5 = *off_102635870;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001E4AD4;
  block[3] = &unk_1024FA088;
  v8 = a2;
  v7 = a3;
  dispatch_async(v5, block);
}

void *sub_1001E22E8(uint64_t a1, uint64_t a2)
{
  if (qword_102666B48 != -1)
  {
    sub_1016B3C90();
  }

  return off_102635870;
}

uint64_t sub_1001E2324(uint64_t a1)
{
  v1 = *(a1 + 792);
  if (fabs(v1) > 90.0)
  {
    return 1;
  }

  v3 = *(a1 + 800);
  if (fabs(v3) > 180.0 || (*(a1 + 1528) & 0xFFFFFFFD) != 1)
  {
    return 1;
  }

  v4 = *(a1 + 696);
  if (fabs(v4) > 90.0 || (v5 = *(a1 + 704), fabs(v5) > 180.0))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101AA3E94();
    }

    v6 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      sub_10018F0D0(&__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136380675;
      *(buf.__r_.__value_.__r.__words + 4) = p_p;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as GPS harvest centroid is invalid", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101AA462C(a1);
      return 0;
    }

    return result;
  }

  v9 = sub_100117154(v1, v3, v4, v5);
  v10 = *(sub_100100690() + 7);
  if (v9 <= v10)
  {
    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101AA3E94();
  }

  v11 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    sub_10018F0D0(&buf);
    v12 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    LODWORD(__p.__r_.__value_.__l.__data_) = 136381187;
    *(__p.__r_.__value_.__r.__words + 4) = v12;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2050;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = v9;
    HIWORD(__p.__r_.__value_.__r.__words[2]) = 2050;
    v21 = v10;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "WifiCalc, skip updating computed location using associated AP %{private}s as the distance between GPS harvest centroid and wifi harvest centroid is %{public}.1f, greater than %{public}.1f", &__p, 0x20u);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(&__p, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101AA3FB0();
    }

    v13 = qword_1025D4628;
    sub_10018F0D0(&v17);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v17;
    }

    else
    {
      v14 = v17.__r_.__value_.__r.__words[0];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136381187;
    *(buf.__r_.__value_.__r.__words + 4) = v14;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2050;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v9;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2050;
    v19 = v10;
    _os_log_send_and_compose_impl(2, 0, &__p, 1628, dword_100000000, v13, 0, "WifiCalc, skip updating computed location using associated AP %{private}s as the distance between GPS harvest centroid and wifi harvest centroid is %{public}.1f, greater than %{public}.1f", &buf, 32);
    v16 = v15;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLWifiPositionCalculatorWithAssociatedAp::crossCheckGpsHarvestCentroidWithWifiHarvestCentroid() const", "%s\n", v16);
    if (v16 != &__p)
    {
      free(v16);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1001E2694@<X0>(_BYTE *a2@<X8>)
{
  sub_10003848C(v17);
  v3 = v18;
  *(&v20[0].__locale_ + *(v18 - 24)) = 8;
  *(&v18 + *(v3 - 24) + 8) = *(&v18 + *(v3 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v4 = sub_100038730(&v18, ", ", 2);
  v5 = *v4;
  *(v4 + *(*v4 - 24) + 16) = 8;
  *(v4 + *(v5 - 24) + 8) = *(v4 + *(v5 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v6 = sub_100038730(&v18, ", hacc, ", 8);
  v7 = *v6;
  *(v6 + *(*v6 - 24) + 16) = 1;
  *(v6 + *(v7 - 24) + 8) = *(v6 + *(v7 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v8 = sub_100038730(&v18, ", alt, ", 7);
  v9 = *v8;
  *(v8 + *(*v8 - 24) + 16) = 1;
  *(v8 + *(v9 - 24) + 8) = *(v8 + *(v9 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v10 = sub_100038730(&v18, ", vacc, ", 8);
  v11 = *v10;
  *(v10 + *(*v10 - 24) + 16) = 1;
  *(v10 + *(v11 - 24) + 8) = *(v10 + *(v11 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  if ((v25 & 0x10) != 0)
  {
    v13 = v24;
    if (v24 < v21)
    {
      v24 = v21;
      v13 = v21;
    }

    locale = v20[4].__locale_;
  }

  else
  {
    if ((v25 & 8) == 0)
    {
      v12 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v20[1].__locale_;
    v13 = v20[3].__locale_;
  }

  v12 = v13 - locale;
  if ((v13 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v12 >= 0x17)
  {
    operator new();
  }

  a2[23] = v12;
  if (v12)
  {
    memmove(a2, locale, v12);
  }

LABEL_14:
  a2[v12] = 0;
  v18 = v15;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001E2B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1001E2B70(uint64_t a1)
{
  result = sub_100072814(a1 + 40);
  if (result)
  {
    result = sub_100072814(a1 + 196);
    if (result)
    {
      result = rand();
      if (!(result % dword_1026562C0))
      {
        sub_1001097CC(a1, a1 + 40, a1 + 196);
        v4 = v3;
        if (qword_1025D4620 != -1)
        {
          sub_1018818E4();
        }

        v5 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
        {
          v6 = (a1 + 568);
          if (*(a1 + 591) < 0)
          {
            v6 = *v6;
          }

          v7 = (a1 + 512);
          if (*(a1 + 535) < 0)
          {
            v7 = *v7;
          }

          *buf = 136446723;
          v10 = v6;
          v11 = 2050;
          v12 = v4;
          v13 = 2081;
          v14 = v7;
          _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "WifiPositionCalculatorWithAssociatedApAnalytics, fixType, %{public}s, wifiFixDistanceBeforeAndAfterUseOfAssociatedAp, %{public}.1fm, LOI %{private}s", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101881E34(a1, v4);
        }

        if (byte_1026562DF >= 0)
        {
          v8 = &qword_1026562C8;
        }

        else
        {
          v8 = qword_1026562C8;
        }

        [NSString stringWithUTF8String:v8];
        return AnalyticsSendEventLazy();
      }
    }
  }

  return result;
}

void sub_1001E2D44(uint64_t result)
{
  if (*(result + 509) == 1 && sub_100072814(result + 352) && sub_100072814(result + 40) && sub_100072814(result + 196))
  {
    v2 = *(result + 272);
    if (*(result + 116) == v2)
    {
      if (vabdd_f64(*(result + 428), v2) <= 1.0)
      {
        sub_100419A78(result);
        if (!(rand() % dword_1026562C0))
        {

          sub_100419FC4(result);
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_1018818E4();
      }

      v3 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        *v4 = 0;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_FAULT, "different timestamps between wifi locations before and after use of associated AP!", v4, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101881F88();
      }
    }
  }
}

uint64_t sub_1001E2E78(uint64_t a1)
{
  result = rand();
  if (!(result % dword_1026562C0))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018818E4();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_1004198FC(*(a1 + 536), __p);
      v4 = v6 >= 0 ? __p : __p[0];
      *buf = 136380675;
      v8 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "wifiFixWithAssociatedApOutcome, %{private}s", buf, 0xCu);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10188205C(a1);
    }

    return AnalyticsSendEventLazy();
  }

  return result;
}

uint64_t sub_1001E2FF8(char *a1)
{
  result = rand();
  if (!(result % dword_1026562C0))
  {
    if (qword_1025D4620 != -1)
    {
      sub_1018818E4();
    }

    v3 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v4 = a1 + 544;
      if (a1[567] < 0)
      {
        v4 = *v4;
      }

      *buf = 136380675;
      v6 = v4;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "associatedApCentroidFetchOutcome, %{private}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018821A4(a1);
    }

    return AnalyticsSendEventLazy();
  }

  return result;
}

uint64_t sub_1001E314C(uint64_t a1)
{
  sub_1003C93BC(a1 + 1776, *(a1 + 1784));
  sub_1003C93BC(a1 + 1544, *(a1 + 1552));
  if (*(a1 + 1519) < 0)
  {
    operator delete(*(a1 + 1496));
  }

  if (*(a1 + 1479) < 0)
  {
    operator delete(*(a1 + 1456));
  }

  if (*(a1 + 1455) < 0)
  {
    operator delete(*(a1 + 1432));
  }

  if (*(a1 + 1423) < 0)
  {
    operator delete(*(a1 + 1400));
  }

  v2 = *(a1 + 672);
  if (v2)
  {
    *(a1 + 680) = v2;
    operator delete(v2);
  }

  if (*(a1 + 671) < 0)
  {
    operator delete(*(a1 + 648));
  }

  v3 = *(a1 + 640);
  *(a1 + 640) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 632);
  if (v4)
  {
    sub_100008080(v4);
  }

  return a1;
}

BOOL sub_1001E3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 84);
  if (v5 > 0x4E)
  {
    v6 = 75;
LABEL_18:
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v16 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      sub_100C45B38(v6, &__p);
      if (v30 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      *buf = 136446210;
      v32 = p_p;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, not bumping integrity %{public}s as it is not Medium", buf, 0xCu);
      if (v30 < 0)
      {
        operator delete(__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A3426C(v6);
    }

    return 0;
  }

  if (v5 <= 0x44)
  {
    if (v5 <= 0x40)
    {
      v6 = 0;
    }

    else
    {
      v6 = 25;
    }

    goto LABEL_18;
  }

  if (!sub_100072814(a2))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v19 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_ERROR, "WifiCalc, integrity, multi-AP wifi reference location unavailable", &__p, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A33D6C();
    }

    return 0;
  }

  if (*(a2 + 96) != 4)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v20 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a2 + 96);
      LODWORD(__p) = 67240192;
      HIDWORD(__p) = v21;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_ERROR, "WifiCalc, integrity, incorrect wifi location type, %{public}d", &__p, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A33E60((a2 + 96));
    }

    return 0;
  }

  if (!sub_100072814(a4))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "WifiCalc, integrity, cell reference location unavailable", &__p, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A33F5C();
    }

    return 0;
  }

  if (*(a4 + 96) != 6)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v23 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a4 + 96);
      LODWORD(__p) = 67240192;
      HIDWORD(__p) = v24;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_ERROR, "WifiCalc, integrity, incorrect cell location type, %{public}d", &__p, 8u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101A34050((a4 + 96));
    }

    return 0;
  }

  v12 = sub_1001AB6A8();
  v13 = *v12;
  if (*(a2 + 156) < *v12)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A33790();
    }

    v14 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a2 + 156);
      LODWORD(__p) = 67240448;
      HIDWORD(__p) = v15;
      v28 = 1026;
      v29 = v13;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, multi-AP wifi fix unavailable, %{public}d APs, threshold, %{public}d, fail", &__p, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A3414C((a2 + 156), v13);
    }

    return 0;
  }

  v25 = sub_1001AB6A8();
  if (!sub_1002AB68C(a1, a2, a3, *(v25 + 2)))
  {
    return 0;
  }

  v26 = *(sub_1001AB6A8() + 1);

  return sub_1002AB68C(a1, a4, a5, v26);
}

uint64_t sub_1001E36C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 4096;
  if (sub_100189470((a1 + 6096)))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v4 + 2204);
  }

  v6 = *(a1 + 6472);
  v7 = *(v4 + 2380);

  return sub_1001E5214(a2, v7, v5 & 1, v6);
}

void sub_1001E3748(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void sub_1001E37B8(int *a1)
{
  if (qword_1025D4620 != -1)
  {
    sub_10190A3AC();
  }

  v2 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v6[0] = 67240192;
    v6[1] = v3;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "WifiFlow, reset, last, %{public}d", v6, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190A3C0(a1);
  }

  v4 = *a1;
  *a1 = 0;
  a1[1] = v4;
  a1[12] = 0;
  *(a1 + 5) = 0xBFF0000000000000;
  if (*(a1 + 39) < 0)
  {
    *(a1 + 3) = 7;
    v5 = *(a1 + 2);
  }

  else
  {
    v5 = (a1 + 4);
    *(a1 + 39) = 7;
  }

  strcpy(v5, "default");
}

void sub_1001E38E4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 1436;
  v5 = *(a1 + 3508);
  v6 = *(a1 + 6440);
  if (!sub_1001883B8((a1 + 6096)) && !sub_1001E3C20((a1 + 6096)))
  {
LABEL_13:
    v16 = 0;
    *a2 = 0;
    goto LABEL_14;
  }

  v7 = v6 - v5;
  if (*v4 >= 0.0 || (*(a1 + 6433) & 1) != 0)
  {
    goto LABEL_5;
  }

  v8 = 0;
  v17 = *(a1 + 6428);
  if (v17 != 1 && v17 != 6)
  {
    if (*(a1 + 1136) < 5uLL)
    {
LABEL_5:
      v8 = 0;
      goto LABEL_6;
    }

    v18 = *(v4 + 2016);
    v19 = v18 < 600.0;
    if (v7 >= 12.0)
    {
      v19 = 0;
    }

    v8 = v18 >= 0.0 && v19;
  }

LABEL_6:
  if (qword_1025D4630 != -1)
  {
    sub_1019C7870();
  }

  v9 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 6433);
    v11 = *v4 < 0.0;
    v12 = *(a1 + 6428);
    v13 = *(a1 + 1136);
    v14 = *(v4 + 2016);
    *buf = 67241728;
    v41 = v8;
    v42 = 1026;
    v43 = v11;
    v44 = 1026;
    v45 = v10;
    v46 = 1026;
    v47 = v12;
    v48 = 2050;
    v49 = v13;
    v50 = 2050;
    v51 = v14;
    v52 = 1026;
    v53 = v7;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "WifiFlow, cpitile, %{public}d, didfix, %{public}d, battsaver, %{public}d, sigenv, %{public}d, aps, %{public}ld, hacc, %{public}0.1f, scanAge, %{public}d", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4630 != -1)
    {
      sub_1019C7884();
    }

    v20 = *(a1 + 6433);
    v21 = *v4 < 0.0;
    v22 = *(a1 + 6428);
    v23 = *(a1 + 1136);
    v24 = *(v4 + 2016);
    v27[0] = 67241728;
    v27[1] = v8;
    v28 = 1026;
    v29 = v21;
    v30 = 1026;
    v31 = v20;
    v32 = 1026;
    v33 = v22;
    v34 = 2050;
    v35 = v23;
    v36 = 2050;
    v37 = v24;
    v38 = 1026;
    v39 = v7;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "WifiFlow, cpitile, %{public}d, didfix, %{public}d, battsaver, %{public}d, sigenv, %{public}d, aps, %{public}ld, hacc, %{public}0.1f, scanAge, %{public}d", v27, 52);
    v26 = v25;
    sub_100152C7C("Generic", 1, 0, 2, "static std::optional<Decisions::WifiTileDownloadRequest> CL::Wifi1::Policies::TileRequest::HandleEvent::defaultDecisionLogic(const Input &)", "%s\n", v25);
    if (v26 != buf)
    {
      free(v26);
    }
  }

  if (!v8)
  {
    goto LABEL_13;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v16 = 1;
  *a2 = 1;
  *(a2 + 2) = 1;
  *(a2 + 8) = 0xBFF0000000000000;
  *(a2 + 16) = 3;
  *(a2 + 24) = Current;
  *(a2 + 32) = 1;
  *(a2 + 40) = *(v4 + 2000);
LABEL_14:
  *(a2 + 56) = v16;
}

uint64_t sub_1001E40AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 808);
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 80);
  v8 = *(a2 + 32);
  v7 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  v10 = *(a2 + 112);
  v9 = *(a2 + 128);
  v11 = *(a2 + 96);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 112) = v10;
  *(a1 + 128) = v9;
  *(a1 + 96) = v11;
  memcpy((a1 + 160), (a2 + 160), 0x201uLL);
  v12 = (a2 + 680);
  v13 = *(a2 + 680);
  if (v4 == 1)
  {
    v14 = *(a2 + 688);
    *v12 = 0;
    *(a2 + 688) = 0;
    *(a1 + 680) = v13;
    v15 = *(a1 + 688);
    *(a1 + 688) = v14;
    if (v15)
    {
      sub_100008080(v15);
    }

    v16 = *(a2 + 696);
    v17 = *(a2 + 728);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 728) = v17;
    *(a1 + 696) = v16;
    v18 = *(a2 + 744);
    v19 = *(a2 + 760);
    v20 = *(a2 + 776);
    *(a1 + 785) = *(a2 + 785);
    *(a1 + 760) = v19;
    *(a1 + 776) = v20;
    *(a1 + 744) = v18;
  }

  else
  {
    *(a1 + 680) = v13;
    *(a1 + 688) = *(a2 + 688);
    *v12 = 0;
    *(a2 + 688) = 0;
    v21 = *(a2 + 696);
    v22 = *(a2 + 728);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 728) = v22;
    *(a1 + 696) = v21;
    v23 = *(a2 + 744);
    v24 = *(a2 + 760);
    v25 = *(a2 + 776);
    *(a1 + 785) = *(a2 + 785);
    *(a1 + 760) = v24;
    *(a1 + 776) = v25;
    *(a1 + 744) = v23;
    *(a1 + 808) = 1;
  }

  return a1;
}

uint64_t sub_1001E41C8(_OWORD *a1, _OWORD *a2)
{
  if (!sub_100072814(a2))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101BCF2A8();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "@WifiPositionWiggleMetrics, invalid location LatLon", v15, 2u);
    }

    result = sub_10000A100(121, 0);
    if (!result)
    {
      return result;
    }

    sub_101BCF2BC();
    return 0;
  }

  if (*(a2 + 24) == 4)
  {
    sub_1001EACF0(a1, a2);
    v4 = a2[1];
    *a1 = *a2;
    a1[1] = v4;
    v5 = a2[2];
    v6 = a2[3];
    v7 = a2[5];
    a1[4] = a2[4];
    a1[5] = v7;
    a1[2] = v5;
    a1[3] = v6;
    v8 = a2[6];
    v9 = a2[7];
    v10 = a2[8];
    *(a1 + 140) = *(a2 + 140);
    a1[7] = v9;
    a1[8] = v10;
    a1[6] = v8;
    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101BCF2A8();
  }

  v13 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
  {
    v14 = *(a2 + 24);
    v15[0] = 67240192;
    v15[1] = v14;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "@WifiPositionWiggleMetrics, invalid location type %{public}d", v15, 8u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101BCF3C0(a2 + 24);
    return 0;
  }

  return result;
}

void sub_1001E4380(uint64_t a1, unsigned int *a2, __int128 *a3, uint64_t a4)
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
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onWifiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onWifiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1001E8968(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1001E455C(void **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *v1;
  v2 = v1 + 1;
  v3 = v4;
  if (v4 == v2)
  {
    return 0;
  }

  result = 0;
  do
  {
    v6 = v3[5];
    if (v6)
    {
      v7 = 0;
      do
      {
        ++v7;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = v3[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = v3[2];
        v10 = *v9 == v3;
        v3 = v9;
      }

      while (!v10);
    }

    result += v7;
    v3 = v9;
  }

  while (v9 != v2);
  return result;
}

void sub_1001E45DC(uint64_t a1@<X1>, const void **a2@<X8>, double a3@<D0>, double a4@<D1>, uint64_t *a5@<X0>)
{
  v7 = a1;
  v9 = sub_1001E9E38(a5, a1);
  if (v9)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v10 = *v9;
    if (*v9)
    {
      v11 = (a4 + 1.0);
      v12 = a3;
      __asm { FMOV            V0.2D, #-1.0 }

      v51 = _Q0;
      do
      {
        v18 = v10[1];
        if (v18)
        {
          if ((*(*v18 + 104))(v18))
          {
            v19 = v10[1];
            v52 = off_1024DE5F8;
            v20 = *(v19 + 24);
            v21 = *(v19 + 40);
            v22 = *(v19 + 56);
            v53 = *(v19 + 8);
            v56 = v22;
            v55 = v21;
            v54 = v20;
            v23 = *(v19 + 88);
            v24 = *(v19 + 104);
            v25 = *(v19 + 120);
            v57 = *(v19 + 72);
            v60 = v25;
            v59 = v24;
            v58 = v23;
            if (*&v53 <= v11)
            {
              if (*&v53 < v12)
              {
                return;
              }

              *&buf[12] = 0;
              *&buf[4] = 0;
              *&buf[20] = xmmword_101C75BF0;
              *&buf[36] = v51;
              *&buf[52] = v51;
              *&buf[68] = v51;
              *buf = 0xFFFF;
              *&buf[84] = 0;
              *&buf[88] = 0xBFF0000000000000;
              v62 = 0uLL;
              LODWORD(v63) = 0;
              *(&v63 + 4) = 0xBFF0000000000000;
              HIDWORD(v63) = 0x7FFFFFFF;
              memset(v64, 0, 25);
              sub_10002790C(&v52, buf);
              v26 = a2[1];
              v27 = a2[2];
              if (v26 >= v27)
              {
                v36 = *a2;
                v37 = v26 - *a2;
                v38 = 0x6F96F96F96F96F97 * (v37 >> 2) + 1;
                if (v38 > 0x1A41A41A41A41A4)
                {
                  sub_10028C64C();
                }

                v39 = 0x6F96F96F96F96F97 * ((v27 - v36) >> 2);
                if (2 * v39 > v38)
                {
                  v38 = 2 * v39;
                }

                if (v39 >= 0xD20D20D20D20D2)
                {
                  v38 = 0x1A41A41A41A41A4;
                }

                if (v38)
                {
                  sub_100238948(a2, v38);
                }

                v40 = (4 * (v37 >> 2));
                v41 = *&buf[16];
                *v40 = *buf;
                v40[1] = v41;
                v42 = *&buf[32];
                v43 = *&buf[48];
                v44 = *&buf[80];
                v40[4] = *&buf[64];
                v40[5] = v44;
                v40[2] = v42;
                v40[3] = v43;
                v45 = v62;
                v46 = v63;
                v47 = v64[0];
                *(v40 + 140) = *(v64 + 12);
                v40[7] = v46;
                v40[8] = v47;
                v40[6] = v45;
                v35 = v40 + 156;
                v48 = v40 - v37;
                memcpy(v40 - v37, v36, v37);
                v49 = *a2;
                *a2 = v48;
                a2[1] = v35;
                a2[2] = 0;
                if (v49)
                {
                  operator delete(v49);
                }
              }

              else
              {
                v28 = *&buf[16];
                *v26 = *buf;
                v26[1] = v28;
                v29 = *&buf[32];
                v30 = *&buf[48];
                v31 = *&buf[80];
                v26[4] = *&buf[64];
                v26[5] = v31;
                v26[2] = v29;
                v26[3] = v30;
                v32 = v62;
                v33 = v63;
                v34 = v64[0];
                *(v26 + 140) = *(v64 + 12);
                v26[7] = v33;
                v26[8] = v34;
                v26[6] = v32;
                v35 = v26 + 156;
              }

              a2[1] = v35;
            }
          }
        }

        v10 = *v10;
      }

      while (v10);
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101A836F8();
    }

    v50 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "LCInputBuffer,getLocationsForInterval,buffer for location type %d does not exist", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A83834();
    }

    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

uint64_t sub_1001E49C8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102664848, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102664848))
  {
    unk_102664840 = sub_101226D48();
    __cxa_guard_release(&qword_102664848);
  }

  v2 = &unk_102664840;
  if (!byte_102664841)
  {
    v2 = (a1 + 140);
  }

  return *v2;
}

uint64_t sub_1001E4A58(uint64_t a1, uint64_t a2)
{
  if (qword_102666B00 != -1)
  {
    sub_10168DA9C();
  }

  return qword_102635860;
}

_DWORD *sub_1001E4AD4(uint64_t a1, uint64_t a2)
{
  if (qword_102666B48 != -1)
  {
    sub_1016B3C90();
  }

  v3 = off_102635870;
  v4 = *(a1 + 36);
  v5 = *(a1 + 32);

  return sub_1001E4B30(v3, v4, v5);
}

_DWORD *sub_1001E4B30(_DWORD *result, int a2, int a3)
{
  if (!a2)
  {
    return result;
  }

  if (a3 > 5)
  {
    if ((a3 - 6) < 3)
    {
      ++result[7];
      return result;
    }

    if (a3 != 11)
    {
      if (a3 == 9)
      {
        goto LABEL_12;
      }

      return result;
    }

LABEL_13:
    ++result[6];
    return result;
  }

  switch(a3)
  {
    case 1:
LABEL_12:
      ++result[5];
      return result;
    case 3:
      ++result[4];
      return result;
    case 4:
      goto LABEL_13;
  }

  return result;
}

uint64_t sub_1001E4BCC(char *a1)
{
  sub_1001E4C24(a1);
  sub_1001E9CD4(a1);
  sub_1001E2B70(a1);
  sub_1001E2D44(a1);
  sub_1001E2E78(a1);

  return sub_1001E2FF8(a1);
}

void sub_1001E4C24(uint64_t a1)
{
  if (!(rand() % dword_1026562C0))
  {
    std::operator+<char>();
    if (byte_1026562DF >= 0)
    {
      v1 = &qword_1026562C8;
    }

    else
    {
      v1 = qword_1026562C8;
    }

    [NSString stringWithUTF8String:v1];
    AnalyticsSendEventLazy();
    if (v3 < 0)
    {
      operator delete(v2);
    }
  }
}

void sub_1001E4D00(_Unwind_Exception *exception_object)
{
  if (*(v1 - 17) < 0)
  {
    operator delete(*(v1 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001E4D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 84);
  if (v10 <= 0x40)
  {
    v11 = 0;
  }

  else
  {
    v11 = 25;
  }

  if (v10 <= 0x44)
  {
    v12 = v11;
  }

  else
  {
    v12 = 50;
  }

  if (v10 <= 0x4E)
  {
    v13 = v12;
  }

  else
  {
    v13 = 75;
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (qword_1025D4620 != -1)
  {
    sub_101A33790();
  }

  v15 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v16 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    sub_100C45B38(v13, v50);
    v36 = v13;
    if (SBYTE3(v54) >= 0)
    {
      v17 = v50;
    }

    else
    {
      v17 = *v50;
    }

    v18 = *(a1 + 84);
    sub_100B1AA60(v48);
    v38 = a3;
    v40 = a5;
    if (v49 >= 0)
    {
      v19 = v48;
    }

    else
    {
      v19 = v48[0];
    }

    sub_100B1AA60(v46);
    v20 = v47;
    v21 = v46[0];
    sub_100B1AA60(__p);
    v22 = v46;
    if (v20 < 0)
    {
      v22 = v21;
    }

    if (v45 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    *buf = 136447235;
    v60 = v17;
    v61 = 1026;
    v62 = v18;
    v63 = 2085;
    v64 = v19;
    v65 = 2085;
    v66 = v22;
    v67 = 2085;
    v68 = v23;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, %{public}s, confidence, %{public}d, location, %{sensitive}s, reference multi-AP wifi, %{sensitive}s, reference cell, %{sensitive}s", buf, 0x30u);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    a3 = v38;
    a5 = v40;
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    v15 = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    v13 = v36;
    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    if (SBYTE3(v54) < 0)
    {
      operator delete(*v50);
    }
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A34390(buf);
    v26 = qword_1025D4628;
    sub_100C45B38(v13, v48);
    v37 = a2;
    if (v49 >= 0)
    {
      v27 = v48;
    }

    else
    {
      v27 = v48[0];
    }

    v28 = *(a1 + 84);
    sub_100B1AA60(v46);
    v39 = a3;
    v41 = a5;
    if (v47 >= 0)
    {
      v29 = v46;
    }

    else
    {
      v29 = v46[0];
    }

    sub_100B1AA60(__p);
    v30 = v45;
    v31 = __p[0];
    sub_100B1AA60(v42);
    v32 = __p;
    if (v30 < 0)
    {
      v32 = v31;
    }

    if (v43 >= 0)
    {
      v33 = v42;
    }

    else
    {
      v33 = v42[0];
    }

    *v50 = 136447235;
    *&v50[4] = v27;
    v51 = 1026;
    v52 = v28;
    v53 = 2085;
    v54 = v29;
    v55 = 2085;
    v56 = v32;
    v57 = 2085;
    v58 = v33;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v26, 2, "WifiCalc, integrity, %{public}s, confidence, %{public}d, location, %{sensitive}s, reference multi-AP wifi, %{sensitive}s, reference cell, %{sensitive}s", v50, 48);
    v35 = v34;
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    a3 = v39;
    a5 = v41;
    a2 = v37;
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    v15 = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
    if (v45 < 0)
    {
      operator delete(__p[0]);
    }

    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (v49 < 0)
    {
      operator delete(v48[0]);
    }

    sub_100152C7C("Generic", 1, 0, 2, "static CLLocationIntegrity CLWifiLocationIntegrityCalculator::calculateLocationIntegrity(const CLDaemonLocation &, const CL::Wifi1::Types::ComputedLocation &, const CLDaemonLocationPrivate &, const CLDaemonLocation &, const CLDaemonLocationPrivate &)", "%s\n", v35);
    if (v35 != buf)
    {
      free(v35);
    }
  }

  if (sub_1001E3224(a1, a2, a3, a4, a5))
  {
    if (p_info[196] != -1)
    {
      sub_101A33C14();
    }

    v24 = v15[197];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "WifiCalc, integrity, bumping wifi location integrity from Medium to High", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A343D4();
    }

    return 75;
  }

  return v13;
}