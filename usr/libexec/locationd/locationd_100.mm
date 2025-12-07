void sub_100723F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100723F40(wireless_diagnostics::google::protobuf::MessageLite *a1)
{
  *a1 = off_10246DAD0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(a1);

  operator delete();
}

uint64_t sub_100723F94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = qword_102637278;
  if (!qword_102637278)
  {
    sub_1007201E4(0, a2, a3, a4);
    return qword_102637278;
  }

  return result;
}

uint64_t sub_10072401C(uint64_t result)
{
  if (*(result + 36))
  {
    *(result + 28) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 36) = 0;
  return result;
}

uint64_t sub_100724038(uint64_t result, unint64_t a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  v6 = *(result + 36);
  if (v6)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(result + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
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

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
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
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, v7, a2, a4);
}

uint64_t sub_1007240E0(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 36);
  if (v3)
  {
    if (*(a1 + 36))
    {
      v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
      v3 = *(a1 + 36);
    }

    else
    {
      v4 = 0;
    }

    v5 = (v3 & 2u) + v4;
    if ((v3 & 4) != 0)
    {
      v5 = v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 16), a2) + 1;
      v3 = *(a1 + 36);
    }

    if ((v3 & 8) != 0)
    {
      v6 = *(a1 + 28);
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

  *(a1 + 32) = v5;
  return v5;
}

void sub_100724184(uint64_t a1, void *lpsrc)
{
  {
    sub_101871CF4();
  }

  sub_100723E04(a1, lpsrc);
}

uint64_t sub_100724228(uint64_t result, int a2)
{
  *result = off_10246DC68;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = a2;
  return result;
}

void *sub_100724250(void *a1)
{
  *a1 = off_10246DC68;
  sub_1004F0990(a1 + 3, 0);
  v2 = a1[2];
  if (v2)
  {
    sub_100008080(v2);
  }

  return a1;
}

BOOL sub_1007242AC(void *a1)
{
  buf[0] = (*(*a1 + 24))(a1);
  sub_100126E84(&v26, "AlwaysOnDeviceMotion", buf, 0);
  buf[0] = 1;
  v2 = sub_100126E84(&v24, "DeviceMotionUseGyroController", buf, 0);
  v4 = a1 + 1;
  if (!a1[1])
  {
    v5 = sub_100011660(v2, v3);
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_10072462C;
    v22 = &unk_102449A78;
    v23 = a1;
    sub_10017A794(v5, &v19);
  }

  v18 = 2;
  v6 = v27;
  BYTE1(v18) = v27;
  v7 = v25;
  BYTE2(v18) = v25;
  v8 = (*(*a1 + 32))(a1);
  HIBYTE(v18) = v8;
  if (qword_1025D42C0 != -1)
  {
    sub_10191E47C();
  }

  v9 = qword_1025D42C8;
  if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*v4 + 16);
    *buf = 67109888;
    v36 = v10;
    v37 = 1024;
    v38 = v6;
    v39 = 1024;
    v40 = v7;
    v41 = 1024;
    v42 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "[CLDeviceMotionControl-%d] Configuring,enableAlwaysOn,%d,useGyroController,%d,enableVisualLocalization,%d", buf, 0x1Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D42C0 != -1)
    {
      sub_10191E47C();
    }

    v15 = *(*v4 + 16);
    v28[0] = 67109888;
    v28[1] = v15;
    v29 = 1024;
    v30 = v6;
    v31 = 1024;
    v32 = v7;
    v33 = 1024;
    v34 = v8;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D42C8, 0, "[CLDeviceMotionControl-%d] Configuring,enableAlwaysOn,%d,useGyroController,%d,enableVisualLocalization,%d", v28, 26, v19, v20);
    v17 = v16;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLDeviceMotionControl::configure()", "%s\n", v16);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  v11 = sub_1007247E0(a1, &v18, 4);
  if (!v11)
  {
    if (qword_1025D42C0 != -1)
    {
      sub_10191E47C();
    }

    v12 = qword_1025D42C8;
    if (os_log_type_enabled(qword_1025D42C8, OS_LOG_TYPE_INFO))
    {
      v13 = *(*v4 + 16);
      *buf = 67109120;
      v36 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "[CLDeviceMotionControl-%d] Configure failed", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191E4A4(v4);
    }
  }

  return v11;
}

uint64_t sub_10072462C(uint64_t result, uint64_t a2)
{
  if (!*(*(result + 32) + 8))
  {
    v2 = sub_1009B38EC(result, a2);
    sub_101860780(v2);
  }

  return result;
}

void sub_100724768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

uint64_t sub_100724798(void *a1)
{
  v2 = a1[3];
  sub_1010FA2B0(v2);
  sub_1010FA55C(v2);

  return sub_1007242AC(a1);
}

BOOL sub_1007247E0(void *a1, uint64_t a2, char *a3)
{
  if (((*(*a1 + 16))(a1) & 1) == 0)
  {
    sub_10191E5D0();
  }

  v8 = 0;
  v7 = 4;
  return sub_1010FAC50(a1[3], a2, a3, &v8, &v7) == 0;
}

double sub_1007248A0(uint64_t a1)
{
  v2 = *(a1 + 324);
  v3 = *(a1 + 304);
  v4 = *(a1 + 312);
  v5 = *(a1 + 4528) * 1.107 + -0.123;
  v6 = v4 * (v5 + *(a1 + 192) * 0.006);
  if (v3 <= 0.0)
  {
    v7 = v4 * (v5 + *(a1 + 192) * 0.006);
  }

  else
  {
    v7 = 2.23693991 / v3;
  }

  if ((v2 & 0x10) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = v4 * (v5 + *(a1 + 192) * 0.006);
  }

  if (qword_1025D4230 != -1)
  {
    sub_10191E7A0();
  }

  v9 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 312);
    *buf = 134350336;
    v30 = v10;
    v31 = 1026;
    v32 = v2;
    v33 = 2050;
    v34 = v8;
    v35 = 2050;
    v36 = v7;
    v37 = 2050;
    v38 = v6;
    v39 = 2050;
    v40 = v11;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "beginTime, %{public}f, distanceConfig, %{public}d, bestSpeed, %{public}f, pedSpeed, %{public}f, uncalibratedSpeed, %{public}f, currentCadence,%{public}f", buf, 0x3Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4230 != -1)
    {
      sub_10191E7B4();
    }

    v13 = *(a1 + 16);
    v14 = *(a1 + 312);
    v17 = 134350336;
    v18 = v13;
    v19 = 1026;
    v20 = v2;
    v21 = 2050;
    v22 = v8;
    v23 = 2050;
    v24 = v7;
    v25 = 2050;
    v26 = v6;
    v27 = 2050;
    v28 = v14;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 0, "beginTime, %{public}f, distanceConfig, %{public}d, bestSpeed, %{public}f, pedSpeed, %{public}f, uncalibratedSpeed, %{public}f, currentCadence,%{public}f", &v17, 58);
    v16 = v15;
    sub_100152C7C("Generic", 1, 0, 2, "static double CLFitnessYouthBriskWalkOverride::bestSpeed(const CLNatalieModelInput &)", "%s\n", v15);
    if (v16 != buf)
    {
      free(v16);
    }
  }

  return v8;
}

uint64_t sub_100724B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1007248A0(a3);
  *buf = 0;
  v6 = sub_1006E9E64((a3 + 4520), buf);
  if (v5 <= v6)
  {
    if (v5 <= 0.0)
    {
      return a2;
    }

    v8 = sub_1001732D0(1, a2);
    if (qword_1025D4230 != -1)
    {
      sub_10191E7B4();
    }

    v13 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v14 = *(a3 + 16);
      *buf = 134218752;
      v21 = v14;
      v22 = 1026;
      v23 = a2;
      v24 = 1026;
      v25 = v8;
      v26 = 2050;
      v27 = v5;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "Overriding youth type for nonzero speed, beginTime, %f, before, %{public}d, after, %{public}d, speed, %{public}f", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_10191E7B4();
      }

      v15 = *(a3 + 16);
      *v18 = 134218752;
      *&v18[4] = v15;
      *&v18[12] = 1026;
      *&v18[14] = a2;
      *&v18[18] = 1026;
      *&v18[20] = v8;
      *v19 = 2050;
      *&v19[2] = v5;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "Overriding youth type for nonzero speed, beginTime, %f, before, %{public}d, after, %{public}d, speed, %{public}f", v18, 34, *v18, *&v18[8], *v19, *&v19[8]);
      goto LABEL_19;
    }
  }

  else
  {
    v7 = v6;
    v8 = sub_1001732D0(2, a2);
    if (qword_1025D4230 != -1)
    {
      sub_10191E7B4();
    }

    v9 = qword_1025D4238;
    if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_INFO))
    {
      v10 = *(a3 + 16);
      *buf = 134219008;
      v21 = v10;
      v22 = 1026;
      v23 = a2;
      v24 = 1026;
      v25 = v8;
      v26 = 2050;
      v27 = v5;
      v28 = 2050;
      v29 = v7;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "Overriding youth type for brisk walk, beginTime, %f, before, %{public}d, after, %{public}d, speed, %{public}f, speedThreshold, %{public}f", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4230 != -1)
      {
        sub_10191E7B4();
      }

      v11 = *(a3 + 16);
      *v18 = 134219008;
      *&v18[4] = v11;
      *&v18[12] = 1026;
      *&v18[14] = a2;
      *&v18[18] = 1026;
      *&v18[20] = v8;
      *v19 = 2050;
      *&v19[2] = v5;
      *&v19[10] = 2050;
      *&v19[12] = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4238, 1, "Overriding youth type for brisk walk, beginTime, %f, before, %{public}d, after, %{public}d, speed, %{public}f, speedThreshold, %{public}f", v18, 44, *v18, *&v18[8], *v19, *&v19[8]);
LABEL_19:
      v16 = v12;
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLMotionActivity::TypeYouth CLFitnessYouthBriskWalkOverride::doOverride(CLMotionActivity::TypeYouth, const CLNatalieModelInput &)", "%s\n", v12);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }

  return v8;
}

void sub_100724EA0(uint64_t a1, uint64_t a2)
{
  *a1 = off_10246DD38;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
  *(a1 + 28) = 0xA00000000;
  *(a1 + 24) = 1031798784;
  *(a1 + 80) = 0;
  if (a2 != 24)
  {
    if (a2 == 17)
    {
      operator new();
    }

    operator new();
  }

  operator new();
}

uint64_t sub_100725090(uint64_t a1, double *a2)
{
  if ((atomic_load_explicit(&qword_1026593F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026593F0))
  {
    LODWORD(v109[0]) = 8;
    qword_1026593E0 = 0;
    unk_1026593E8 = 0;
    qword_1026593D8 = 0;
    sub_1004579D4(&qword_1026593D8, v109, v109 + 1, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_1026593D8, dword_100000000);
    __cxa_guard_release(&qword_1026593F0);
  }

  v110 = 0;
  *v109 = xmmword_101C78400;
  memset(&v109[2], 0, 135);
  v111 = xmmword_101C78400;
  v112 = 0;
  v113 = 0;
  memset(v114, 0, sizeof(v114));
  v115 = 0;
  v117 = 0;
  v118 = 0;
  v116 = 0u;
  v119 = xmmword_101C78400;
  v120 = 0;
  v121 = 0;
  v122 = 0xFFEFFFFFFFFFFFFFLL;
  v133 = 0;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  memset(v132, 0, sizeof(v132));
  v134 = 0u;
  v135 = 0xFFEFFFFFFFFFFFFFLL;
  v136 = 0;
  v137 = 0;
  v142 = 0;
  v143 = 0;
  v148 = 0;
  memset(v141, 0, sizeof(v141));
  v140 = 0u;
  v139 = 0u;
  v138 = 0u;
  v146 = 0;
  v145 = 0u;
  v144 = 0u;
  memset(v147, 0, sizeof(v147));
  v149 = 0xFFEFFFFFFFFFFFFFLL;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0xFFEFFFFFFFFFFFFFLL;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v175 = 0xFFEFFFFFFFFFFFFFLL;
  v176 = 0;
  v177 = 0;
  v178 = 0;
  v179 = 0;
  v180 = 0xFFEFFFFFFFFFFFFFLL;
  v181 = 0u;
  v182 = 0x80000000800000;
  v183 = 0u;
  v184 = xmmword_101C78410;
  v185 = 0x80000000800000;
  v186 = 0u;
  v187 = 0u;
  v188 = 0;
  v189 = 0xFFEFFFFFFFFFFFFFLL;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  v194 = 0u;
  v195 = 0u;
  v196 = 0;
  v197 = 0xFFEFFFFFFFFFFFFFLL;
  v198 = 0;
  v199 = 0;
  v200 = 0xFFEFFFFFFFFFFFFFLL;
  v201 = 7;
  v202 = 0xFFEFFFFFFFFFFFFFLL;
  v203 = 0;
  v205 = 0;
  v204 = 0u;
  if (sub_1000C2B7C(a2, &qword_1026593D8, v109))
  {
    *(a1 + 8) = v160 != 0;
  }

  if ((***(a1 + 80))(*(a1 + 80), a2))
  {
    return 2;
  }

  if ((atomic_load_explicit(&qword_102659410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659410))
  {
    LODWORD(v12[0]) = 2;
    qword_102659400 = 0;
    unk_102659408 = 0;
    qword_1026593F8 = 0;
    sub_1004579D4(&qword_1026593F8, v12, v12 + 1, 1uLL);
    __cxa_atexit(sub_10051F310, &qword_1026593F8, dword_100000000);
    __cxa_guard_release(&qword_102659410);
  }

  v13 = 0;
  *v12 = xmmword_101C78400;
  memset(&v12[2], 0, 135);
  v14 = xmmword_101C78400;
  v15 = 0;
  v16 = 0;
  memset(v17, 0, sizeof(v17));
  v18 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0u;
  v22 = xmmword_101C78400;
  v23 = 0;
  v24 = 0;
  v25 = 0xFFEFFFFFFFFFFFFFLL;
  v36 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v37 = 0u;
  v38 = 0xFFEFFFFFFFFFFFFFLL;
  v39 = 0;
  v40 = 0;
  v45 = 0;
  v46 = 0;
  v51 = 0;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  v41 = 0u;
  v42 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  memset(v50, 0, sizeof(v50));
  v52 = 0xFFEFFFFFFFFFFFFFLL;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0xFFEFFFFFFFFFFFFFLL;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0xFFEFFFFFFFFFFFFFLL;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0xFFEFFFFFFFFFFFFFLL;
  v84 = 0u;
  v85 = 0x80000000800000;
  v86 = 0u;
  v87 = xmmword_101C78410;
  v88 = 0x80000000800000;
  v89 = 0u;
  v90 = 0u;
  v91 = 0;
  v92 = 0xFFEFFFFFFFFFFFFFLL;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0;
  v100 = 0xFFEFFFFFFFFFFFFFLL;
  v101 = 0;
  v102 = 0;
  v103 = 0xFFEFFFFFFFFFFFFFLL;
  v104 = 7;
  v105 = 0xFFEFFFFFFFFFFFFFLL;
  v106 = 0;
  v108 = 0;
  v107 = 0u;
  if (sub_1000C2B7C(a2, &qword_1026593F8, v12) && ((v6 = *(a1 + 28), v7 = *(a1 + 30), v8 = *(a1 + 32), v6 + v7 >= v8) ? (v9 = *(a1 + 32)) : (v9 = 0), (v5 = *(&v27 + 1), *(a1 + 4 * (v6 + v7 - v9) + 36) = v5, v8 <= v7) ? ((v10 = v6 + 1, v10 >= v8) ? (v11 = v8) : (v11 = 0), *(a1 + 28) = v10 - v11) : (LOWORD(v7) = v7 + 1, *(a1 + 30) = v7, LODWORD(v7) = v7), (*(a1 + 12) = 1, v8 == v7) && (sub_10072580C((a1 + 28), sub_1007258A0, 0) > 13.4112 || *(a1 + 8) == 1 && sub_10072580C((a1 + 28), sub_1007258A0, 0) > 6.7056)))
  {
    return 9;
  }

  else
  {
    return 0;
  }
}

void *sub_10072570C(void *a1)
{
  *a1 = off_10246DD38;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  return a1;
}

void sub_10072577C(void *a1)
{
  *a1 = off_10246DD38;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  operator delete();
}

float sub_10072580C(unsigned __int16 *a1, unsigned int (*a2)(float, float), unint64_t a3)
{
  v6 = a1[1];
  if (!a1[1])
  {
    sub_10191E7DC();
  }

  v7 = *sub_100457AE8(a1, a3);
  if (v6 > a3)
  {
    do
    {
      v8 = sub_100457AE8(a1, a3);
      v9 = *v8;
      if (a2(*v8, v7))
      {
        v7 = v9;
      }

      ++a3;
    }

    while (v6 != a3);
  }

  return v7;
}

void sub_1007258AC(uint64_t a1, uint64_t a2)
{
  if (CFAbsoluteTimeGetCurrent() - *a1 >= 86400.0)
  {
    if (qword_1025D41E0 != -1)
    {
      sub_10191E964();
    }

    v4 = qword_1025D41E8;
    if (os_log_type_enabled(qword_1025D41E8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 8);
      v6 = *a1;
      *buf = 67240704;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      v12 = 2050;
      Current = CFAbsoluteTimeGetCurrent();
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "[CLSuppressionLogger][counterReset]  suppressionStateMetricsCounter,%{public}d,fTimestampLastSuppressionStateMetricsCounterReset,%f,currentTime,%{public}f", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191E978(a1);
    }

    v7 = CFAbsoluteTimeGetCurrent();
    v3 = 0;
    *a1 = v7;
  }

  else
  {
    v3 = *(a1 + 8);
  }

  *(a1 + 8) = v3 + 1;
  if (v3 < *(a1 + 12))
  {
    AnalyticsSendEventLazy();
  }
}

NSDictionary *sub_100725A54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v26[0] = @"logSequenceID";
  v27[0] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v26[1] = @"isAPAwake";
  v27[1] = [NSNumber numberWithBool:*(*(a1 + 40) + 1)];
  v26[2] = @"exitedToFSMState";
  v27[2] = [NSNumber numberWithInt:*(*(a1 + 40) + 2)];
  v26[3] = @"sessionFSMState";
  v27[3] = [NSNumber numberWithInt:*(*(a1 + 40) + 3)];
  v26[4] = @"timeInFSMState";
  v27[4] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 4)];
  v26[5] = @"timeStatic";
  v27[5] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 36)];
  v26[6] = @"timeFrozen";
  v27[6] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 44)];
  v26[7] = @"timeMoving";
  v27[7] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 52)];
  v26[8] = @"meanGravityAngle";
  if (*(*(a1 + 40) + 12) >= 1.1755e-38)
  {
    v3 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v3 = +[NSNull null];
  }

  v27[8] = v3;
  v26[9] = @"meanPocketProbability";
  if (*(*(a1 + 40) + 16) >= 1.1755e-38)
  {
    v4 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v4 = +[NSNull null];
  }

  v27[9] = v4;
  v26[10] = @"meanIlluminance";
  if (*(*(a1 + 40) + 20) >= 1.1755e-38)
  {
    v5 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v5 = +[NSNull null];
  }

  v27[10] = v5;
  v26[11] = @"proxBaselineAtEntry";
  if (*(*(a1 + 40) + 60) >= 1.1755e-38)
  {
    v6 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v6 = +[NSNull null];
  }

  v27[11] = v6;
  v26[12] = @"proxBaselineAtExit";
  if (*(*(a1 + 40) + 68) >= 1.1755e-38)
  {
    v7 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v7 = +[NSNull null];
  }

  v27[12] = v7;
  v26[13] = @"proxBaselineUncertaintyAtEntry";
  if (*(*(a1 + 40) + 64) >= 1.1755e-38)
  {
    v8 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v8 = +[NSNull null];
  }

  v27[13] = v8;
  v26[14] = @"proxBaselineUncertaintyAtExit";
  if (*(*(a1 + 40) + 72) >= 1.1755e-38)
  {
    v9 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v9 = +[NSNull null];
  }

  v27[14] = v9;
  v26[15] = @"maxProxTemperature";
  if (*(*(a1 + 40) + 24) >= 1.1755e-38)
  {
    v10 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v10 = +[NSNull null];
  }

  v27[15] = v10;
  v26[16] = @"minProxTemperature";
  if (*(*(a1 + 40) + 28) <= 3.4028e38)
  {
    v11 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v11 = +[NSNull null];
  }

  v27[16] = v11;
  v26[17] = @"meanProxTemperature";
  if (*(*(a1 + 40) + 32) >= 1.1755e-38)
  {
    v12 = [NSNumber numberWithFloat:?];
  }

  else
  {
    v12 = +[NSNull null];
  }

  v27[17] = v12;
  v26[18] = @"alwaysOnViewObstructed";
  v14 = sub_100CF1D20(v12, v13);
  if (v14)
  {
    v16 = sub_100CF1D20(v14, v15);
    v18 = [NSNumber numberWithBool:sub_100CF2730(v16, v17)];
  }

  else
  {
    v18 = +[NSNull null];
  }

  v27[18] = v18;
  v26[19] = @"displayState";
  v28 = [NSNumber numberWithUnsignedInt:*(v2 + 20)];
  v26[20] = @"suppressionClientTypes";
  v20 = sub_100CF1D20(v28, v19);
  if (v20)
  {
    v22 = sub_100CF1D20(v20, v21);
    v24 = [NSNumber numberWithUnsignedInt:sub_100CF286C(v22, v23)];
  }

  else
  {
    v24 = +[NSNull null];
  }

  v29 = v24;
  return [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:21];
}

uint64_t sub_100725F04(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 1);
  if (v2 == 2)
  {
    v3 = result;
    result = AnalyticsSendEventLazy();
    *(v3 + 16) = 0;
  }

  else if (v2 == 1 || !*(a2 + 1))
  {
    return AnalyticsSendEventLazy();
  }

  return result;
}

NSDictionary *sub_100726054(uint64_t a1)
{
  v11[0] = @"logSequenceID";
  v12[0] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v11[1] = @"timeSinceLastMeasurement";
  if (*(*(a1 + 32) + 26))
  {
    v2 = [NSNumber numberWithUnsignedLongLong:?];
  }

  else
  {
    v2 = +[NSNull null];
  }

  v12[1] = v2;
  v11[2] = @"estimate";
  if (*(*(a1 + 32) + 6) >= 3.4028e38)
  {
    v3 = +[NSNull null];
  }

  else
  {
    v3 = [NSNumber numberWithFloat:?];
  }

  v12[2] = v3;
  v11[3] = @"uncertainty";
  if (*(*(a1 + 32) + 34) >= 3.4028e38)
  {
    v4 = +[NSNull null];
  }

  else
  {
    v4 = [NSNumber numberWithFloat:?];
  }

  v12[3] = v4;
  v11[4] = @"factoryCalibration";
  if (*(*(a1 + 32) + 10) >= 3.4028e38)
  {
    v5 = +[NSNull null];
  }

  else
  {
    v5 = [NSNumber numberWithFloat:?];
  }

  v12[4] = v5;
  v11[5] = @"currentLux";
  if (*(*(a1 + 32) + 2) >= 3.4028e38)
  {
    v6 = +[NSNull null];
  }

  else
  {
    v6 = [NSNumber numberWithFloat:?];
  }

  v12[5] = v6;
  v11[6] = @"proxIntensity";
  if (*(*(a1 + 32) + 14) >= 3.4028e38)
  {
    v7 = +[NSNull null];
  }

  else
  {
    v7 = [NSNumber numberWithFloat:?];
  }

  v12[6] = v7;
  v11[7] = @"temperature";
  if (*(*(a1 + 32) + 18) >= 3.4028e38)
  {
    v8 = +[NSNull null];
  }

  else
  {
    v8 = [NSNumber numberWithFloat:?];
  }

  v12[7] = v8;
  v11[8] = @"temperatureAtLastMeasurement";
  if (*(*(a1 + 32) + 22) >= 3.4028e38)
  {
    v9 = +[NSNull null];
  }

  else
  {
    v9 = [NSNumber numberWithFloat:?];
  }

  v12[8] = v9;
  return [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:9];
}

NSDictionary *sub_1007262D4(uint64_t a1)
{
  v12[0] = @"resetTriggered";
  v13[0] = [NSNumber numberWithBool:1];
  v12[1] = @"logSequenceID";
  v13[1] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v12[2] = @"suiCountSinceLastLog";
  v13[2] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 42)];
  v12[3] = @"timeSinceLastMeasurement";
  if (*(*(a1 + 32) + 26))
  {
    v2 = [NSNumber numberWithUnsignedLongLong:?];
  }

  else
  {
    v2 = +[NSNull null];
  }

  v13[3] = v2;
  v12[4] = @"estimate";
  if (*(*(a1 + 32) + 6) >= 3.4028e38)
  {
    v3 = +[NSNull null];
  }

  else
  {
    v3 = [NSNumber numberWithFloat:?];
  }

  v13[4] = v3;
  v12[5] = @"uncertainty";
  if (*(*(a1 + 32) + 34) >= 3.4028e38)
  {
    v4 = +[NSNull null];
  }

  else
  {
    v4 = [NSNumber numberWithFloat:?];
  }

  v13[5] = v4;
  v12[6] = @"factoryCalibration";
  if (*(*(a1 + 32) + 10) >= 3.4028e38)
  {
    v5 = +[NSNull null];
  }

  else
  {
    v5 = [NSNumber numberWithFloat:?];
  }

  v13[6] = v5;
  v12[7] = @"currentLux";
  if (*(*(a1 + 32) + 2) >= 3.4028e38)
  {
    v6 = +[NSNull null];
  }

  else
  {
    v6 = [NSNumber numberWithFloat:?];
  }

  v13[7] = v6;
  v12[8] = @"proxIntensity";
  if (*(*(a1 + 32) + 14) >= 3.4028e38)
  {
    v7 = +[NSNull null];
  }

  else
  {
    v7 = [NSNumber numberWithFloat:?];
  }

  v13[8] = v7;
  v12[9] = @"temperature";
  if (*(*(a1 + 32) + 18) >= 3.4028e38)
  {
    v8 = +[NSNull null];
  }

  else
  {
    v8 = [NSNumber numberWithFloat:?];
  }

  v13[9] = v8;
  v12[10] = @"temperatureAtLastMeasurement";
  if (*(*(a1 + 32) + 22) >= 3.4028e38)
  {
    v9 = +[NSNull null];
  }

  else
  {
    v9 = [NSNumber numberWithFloat:?];
  }

  v13[10] = v9;
  v12[11] = @"minProxInLast3s";
  if (*(*(a1 + 32) + 38) >= 3.4028e38)
  {
    v10 = +[NSNull null];
  }

  else
  {
    v10 = [NSNumber numberWithFloat:?];
  }

  v13[11] = v10;
  return [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:12];
}

NSDictionary *sub_1007265CC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v10[0] = @"isOutOfBox";
  v11[0] = [NSNumber numberWithBool:*(v2 + 16)];
  v10[1] = @"logSequenceID";
  v11[1] = [NSNumber numberWithUnsignedLongLong:(CFAbsoluteTimeGetCurrent() * 1000000.0)];
  v10[2] = @"timeToFirstEstimate";
  v11[2] = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 40) + 50)];
  v10[3] = @"estimate";
  if (*(*(a1 + 40) + 6) >= 3.4028e38)
  {
    v3 = +[NSNull null];
  }

  else
  {
    v3 = [NSNumber numberWithFloat:?];
  }

  v11[3] = v3;
  v10[4] = @"uncertainty";
  if (*(*(a1 + 40) + 34) >= 3.4028e38)
  {
    v4 = +[NSNull null];
  }

  else
  {
    v4 = [NSNumber numberWithFloat:?];
  }

  v11[4] = v4;
  v10[5] = @"factoryCalibration";
  if (*(*(a1 + 40) + 10) >= 3.4028e38)
  {
    v5 = +[NSNull null];
  }

  else
  {
    v5 = [NSNumber numberWithFloat:?];
  }

  v11[5] = v5;
  v10[6] = @"currentLux";
  if (*(*(a1 + 40) + 2) >= 3.4028e38)
  {
    v6 = +[NSNull null];
  }

  else
  {
    v6 = [NSNumber numberWithFloat:?];
  }

  v11[6] = v6;
  v10[7] = @"proxIntensity";
  if (*(*(a1 + 40) + 14) >= 3.4028e38)
  {
    v7 = +[NSNull null];
  }

  else
  {
    v7 = [NSNumber numberWithFloat:?];
  }

  v11[7] = v7;
  v10[8] = @"temperature";
  if (*(*(a1 + 40) + 18) >= 3.4028e38)
  {
    v8 = +[NSNull null];
  }

  else
  {
    v8 = [NSNumber numberWithFloat:?];
  }

  v11[8] = v8;
  return [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:9];
}

unsigned __int16 *sub_100726880(uint64_t a1, int *a2, uint64_t a3)
{
  v18 = 0;
  v6 = *(a3 + 8);
  v5 = *(a3 + 16);
  *&v16 = *(a3 + 40);
  *(&v16 + 1) = v6;
  LOBYTE(v18) = *a3 == 4;
  if (v18)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v5;
  }

  v17 = v7;
  if (qword_1025D45A0 != -1)
  {
    sub_10191EAD0();
  }

  v8 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a2;
    *buf = 67109632;
    v25 = v9;
    v26 = 2048;
    v27 = v6;
    v28 = 2048;
    v29 = v7;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Raw HR notification %d hr %f confidence %f", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45A0 != -1)
    {
      sub_10191EAE4();
    }

    v12 = *a2;
    v19[0] = 67109632;
    v19[1] = v12;
    v20 = 2048;
    v21 = v6;
    v22 = 2048;
    v23 = v7;
    LODWORD(v15) = 28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "Raw HR notification %d hr %f confidence %f", v19, v15, *&v16);
    v14 = v13;
    sub_100152C7C("Generic", 1, 0, 2, "void CMDataProviderFactoryRawHR::onRawHeartrate(const CLCatherineNotifier_Type::Notification &, const CLCatherineNotifier_Type::NotificationData &)", "%s\n", v13);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  sub_100726AD4((a1 + 64), &v16);
  result = sub_100726B38((a1 + 1672), a2);
  for (i = *(a1 + 32); i != a1 + 24; i = *(i + 8))
  {
    result = (*(**(i + 24) + 16))(*(i + 24), a1);
  }

  return result;
}

unsigned __int16 *sub_100726AD4(unsigned __int16 *result, __int128 *a2)
{
  v2 = *(result + 1);
  v3 = *result + result[1];
  if (v3 < v2)
  {
    v2 = 0;
  }

  v4 = &result[16 * (v3 - v2)];
  v5 = *a2;
  *(v4 + 12) = a2[1];
  *(v4 + 4) = v5;
  v6 = result[1];
  v7 = *(result + 1);
  if (v7 <= v6)
  {
    v8 = *result + 1;
    if (v8 < v7)
    {
      LOWORD(v7) = 0;
    }

    *result = v8 - v7;
  }

  else
  {
    result[1] = v6 + 1;
  }

  return result;
}

unsigned __int16 *sub_100726B38(unsigned __int16 *result, _DWORD *a2)
{
  v2 = result[1];
  v3 = *(result + 1);
  v4 = *result;
  if (v4 + v2 >= v3)
  {
    v5 = *(result + 1);
  }

  else
  {
    v5 = 0;
  }

  *&result[2 * (v4 + v2 - v5) + 4] = *a2;
  if (v3 <= v2)
  {
    if (v4 + 1 < v3)
    {
      LOWORD(v3) = 0;
    }

    *result = v4 + 1 - v3;
  }

  else
  {
    result[1] = v2 + 1;
  }

  return result;
}

void sub_100726B8C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = (a1 + 16);
  v6 = *(a1 + 16);
  sub_1003E66FC(a1 + 8, a2, a3);
  if (qword_1025D45A0 != -1)
  {
    sub_10191EAD0();
  }

  v7 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    v8 = *v5;
    *buf = 67109376;
    v11 = v8;
    v12 = 1024;
    v13 = v3;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "xxx - fActiveRefCount %d leech %d", buf, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191EB0C(v5, v3);
  }

  if (!v6 && *v5 == 1)
  {
    if (qword_1025D45A0 != -1)
    {
      sub_10191EAE4();
    }

    v9 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "creating Raw HR dispatcher", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191EC28();
    }

    if (*(a1 + 48))
    {
      operator new();
    }
  }
}

void sub_100726DCC(uint64_t a1, uint64_t a2)
{
  if (sub_1003E6B84(a1 + 8, a2))
  {
    if (*(a1 + 16) != 1)
    {
      sub_10191ED0C(qword_1025D45A0 == -1);
    }

    if (qword_1025D45A0 != -1)
    {
      sub_10191EAD0();
    }

    v4 = qword_1025D45A8;
    if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "removing Raw HR delegate", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191EED4();
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      (*(*v5 + 232))(v5);
    }
  }

  if (qword_1025D45A0 != -1)
  {
    sub_10191EAE4();
  }

  v6 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "release Raw HR client", v7, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191EFB4();
  }

  sub_1003E6D3C(a1 + 8, a2);
}

double sub_100726F44(uint64_t a1, int a2)
{
  result = -1.0;
  if (a2 == 1 && *(a1 + 66))
  {
    v3 = *(a1 + 66) + *(a1 + 64) - 1;
    v4 = *(a1 + 68);
    if (v3 < v4)
    {
      v4 = 0;
    }

    return *(a1 + 32 * (v3 - v4) + 72);
  }

  return result;
}

void sub_100726F84(void *a1)
{
  sub_100727040(a1);

  operator delete();
}

void sub_100726FD4(uint64_t a1)
{
  sub_100727040((a1 - 8));

  operator delete();
}

void *sub_100727040(void *a1)
{
  *a1 = &off_10246DDC0;
  a1[1] = off_10246DE28;
  if (qword_1025D45A0 != -1)
  {
    sub_10191EAD0();
  }

  v2 = qword_1025D45A8;
  if (os_log_type_enabled(qword_1025D45A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "factory stream raw hr destroyed", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191F094(buf);
    v7[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45A8, 2, "factory stream raw hr destroyed", v7, 2);
    v6 = v5;
    sub_100152C7C("Generic", 1, 0, 2, "virtual CMDataProviderFactoryRawHR::~CMDataProviderFactoryRawHR()", "%s\n", v5);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100008080(v3);
  }

  a1[1] = off_10244FCF8;
  sub_1001FB750(a1 + 3);
  return a1;
}

void sub_10072720C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void *sub_100727284(void *a1, uint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_10246DEB8;
  sub_10072737C((a1 + 3), a2);
  return a1;
}

void sub_100727300(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246DEB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10072737C(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1007273F0(a1, &v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  return a1;
}

void sub_1007273D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1007273F0(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 24;
  *(a1 + 32) = a1 + 24;
  *(a1 + 40) = 0;
  *a1 = &off_10246DDC0;
  *(a1 + 8) = off_10246DE28;
  v2 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *&result = 0x3200000000;
  *(a1 + 64) = 0x3200000000;
  *(a1 + 1672) = 0x3200000000;
  return result;
}

__n128 sub_1007274CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_10246DF08;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100727504(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

uint64_t sub_10072754C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100727598(uint64_t a1)
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

BOOL sub_100727618(void *a1, CFArrayRef *a2)
{
  theArray = *a2;
  if (*a2)
  {
    Count = CFArrayGetCount(theArray);
    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v5 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      *&buf[4] = Count;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,signalEnvironment,count,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191F0EC();
    }

    if (Count >= 1)
    {
      v6 = 0;
      v7 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a2, v6);
        v9 = ValueAtIndex;
        if (ValueAtIndex)
        {
          sub_10000EC00(buf, [ValueAtIndex UTF8String]);
          v10 = sub_100727A34(buf);
          v12 = a1[4];
          v11 = a1[5];
          if (v12 >= v11)
          {
            v15 = a1[3];
            v16 = v12 - v15;
            v17 = (v12 - v15) >> 2;
            v18 = v17 + 1;
            if ((v17 + 1) >> 62)
            {
              sub_10028C64C();
            }

            v19 = v11 - v15;
            if (v19 >> 1 > v18)
            {
              v18 = v19 >> 1;
            }

            v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
            v21 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v20)
            {
              v21 = v18;
            }

            if (v21)
            {
              sub_1000B85D0((a1 + 3), v21);
            }

            v22 = (v12 - v15) >> 2;
            v23 = (4 * v17);
            v24 = (4 * v17 - 4 * v22);
            *v23 = v10;
            v13 = v23 + 1;
            memcpy(v24, v15, v16);
            v25 = a1[3];
            a1[3] = v24;
            a1[4] = v13;
            a1[5] = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            *v12 = v10;
            v13 = v12 + 4;
          }

          a1[4] = v13;
          if (v43 < 0)
          {
            operator delete(*buf);
          }

          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v26 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            v27 = *(a1[4] - 4);
            *buf = 138543618;
            *&buf[4] = v9;
            v41 = 1026;
            v42 = v27;
            _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,signalEnvironment,%{public}@,%{public}d", buf, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D46B0 != -1)
            {
              sub_10191F1DC();
            }

            v28 = *(a1[4] - 4);
            v36 = 138543618;
            v37 = v9;
            v38 = 1026;
            v39 = v28;
            LODWORD(v32) = 18;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,signalEnvironment,%{public}@,%{public}d", &v36, v32);
            v30 = v29;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::fillSignalEnvironment(const CFArrayRef &)", "%s\n", v29);
            if (v30 != buf)
            {
              free(v30);
            }
          }
        }

        else
        {
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v14 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,signalEnvironment,NULL arrayElement", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F204(&v34, v35);
          }
        }

        ++v6;
      }

      while (v7 != v6);
    }
  }

  return theArray != 0;
}

void sub_100727A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100727A34(const void **a1)
{
  sub_10000EC00(&__p, "Unavailable");
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = v47;
  v5 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v4 = v46;
  }

  if (v3 != v4)
  {
    v8 = 0;
    if (v47 < 0)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (!v8)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (v2 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if ((v47 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v8 = memcmp(v6, p_p, v3) == 0;
  if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  operator delete(__p);
  if (v8)
  {
    return 0;
  }

LABEL_19:
  sub_10000EC00(&__p, "Rural");
  v10 = *(a1 + 23);
  if (v10 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  v12 = v47;
  v13 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v12 = v46;
  }

  if (v11 != v12)
  {
    v16 = 0;
    if (v47 < 0)
    {
      goto LABEL_36;
    }

LABEL_34:
    if (!v16)
    {
      goto LABEL_37;
    }

    return 1;
  }

  if (v10 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if ((v47 & 0x80u) == 0)
  {
    v15 = &__p;
  }

  else
  {
    v15 = __p;
  }

  v16 = memcmp(v14, v15, v11) == 0;
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_34;
  }

LABEL_36:
  operator delete(__p);
  if (v16)
  {
    return 1;
  }

LABEL_37:
  sub_10000EC00(&__p, "Urban");
  v17 = *(a1 + 23);
  if (v17 >= 0)
  {
    v18 = *(a1 + 23);
  }

  else
  {
    v18 = a1[1];
  }

  v19 = v47;
  v20 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v19 = v46;
  }

  if (v18 != v19)
  {
    v23 = 0;
    if (v47 < 0)
    {
      goto LABEL_54;
    }

LABEL_52:
    if (!v23)
    {
      goto LABEL_55;
    }

    return 2;
  }

  if (v17 >= 0)
  {
    v21 = a1;
  }

  else
  {
    v21 = *a1;
  }

  if ((v47 & 0x80u) == 0)
  {
    v22 = &__p;
  }

  else
  {
    v22 = __p;
  }

  v23 = memcmp(v21, v22, v18) == 0;
  if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

LABEL_54:
  operator delete(__p);
  if (v23)
  {
    return 2;
  }

LABEL_55:
  sub_10000EC00(&__p, "DenseUrban");
  v24 = *(a1 + 23);
  if (v24 >= 0)
  {
    v25 = *(a1 + 23);
  }

  else
  {
    v25 = a1[1];
  }

  v26 = v47;
  v27 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v26 = v46;
  }

  if (v25 != v26)
  {
    v30 = 0;
    if ((v47 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v24 >= 0)
  {
    v28 = a1;
  }

  else
  {
    v28 = *a1;
  }

  if ((v47 & 0x80u) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p;
  }

  v30 = memcmp(v28, v29, v25) == 0;
  if (v27 < 0)
  {
LABEL_70:
    operator delete(__p);
  }

LABEL_71:
  if (v30)
  {
    return 3;
  }

  sub_10000EC00(&__p, "DenseUrbanCanyon");
  v31 = *(a1 + 23);
  if (v31 >= 0)
  {
    v32 = *(a1 + 23);
  }

  else
  {
    v32 = a1[1];
  }

  v33 = v47;
  v34 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v33 = v46;
  }

  if (v32 == v33)
  {
    if (v31 >= 0)
    {
      v35 = a1;
    }

    else
    {
      v35 = *a1;
    }

    if ((v47 & 0x80u) == 0)
    {
      v36 = &__p;
    }

    else
    {
      v36 = __p;
    }

    v37 = memcmp(v35, v36, v32) == 0;
  }

  else
  {
    v37 = 0;
  }

  if (v34 < 0)
  {
    operator delete(__p);
  }

  if (v37)
  {
    return 4;
  }

  sub_10000EC00(&__p, "Foliage");
  v38 = *(a1 + 23);
  if (v38 >= 0)
  {
    v39 = *(a1 + 23);
  }

  else
  {
    v39 = a1[1];
  }

  v40 = v47;
  v41 = v47;
  if ((v47 & 0x80u) != 0)
  {
    v40 = v46;
  }

  if (v39 == v40)
  {
    if (v38 >= 0)
    {
      v42 = a1;
    }

    else
    {
      v42 = *a1;
    }

    if ((v47 & 0x80u) == 0)
    {
      v43 = &__p;
    }

    else
    {
      v43 = __p;
    }

    if (!memcmp(v42, v43, v39))
    {
      v9 = 6;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  if (v41 < 0)
  {
    operator delete(__p);
  }

  return v9;
}

BOOL sub_100727DAC(uint64_t a1, uint64_t *a2, const std::string *a3, CFArrayRef *a4, uint64_t *a5)
{
  if (*a4)
  {
    Count = CFArrayGetCount(*a4);
    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v9 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = *a2;
      }

      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = a3->__r_.__value_.__r.__words[0];
      }

      *buf = 136446722;
      *&buf[4] = v10;
      v90 = 2082;
      *v91 = v11;
      *&v91[8] = 1026;
      *&v91[10] = Count;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,%{public}s,%{public}s,coordinate count,%{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      if (*(a2 + 23) >= 0)
      {
        v61 = a2;
      }

      else
      {
        v61 = *a2;
      }

      if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v62 = a3;
      }

      else
      {
        v62 = a3->__r_.__value_.__r.__words[0];
      }

      *v80 = 136446722;
      *&v80[4] = v61;
      v81 = 2082;
      v82 = v62;
      v83 = 1026;
      v84 = Count;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,%{public}s,%{public}s,coordinate count,%{public}d", v80, 28);
      v64 = v63;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::fillPolygonData(const std::string &, const std::string &, const CFArrayRef &, std::vector<CLMapMatcherOperatingPolygon> &)", "%s\n", v63);
      if (v64 != buf)
      {
        free(v64);
      }
    }

    __src = 0;
    v78 = 0;
    v79 = 0;
    if (Count < 1)
    {
      return 1;
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = Count & 0x7FFFFFFF;
      p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a4, v12);
        v17 = ValueAtIndex;
        if (ValueAtIndex)
        {
          if ([ValueAtIndex containsString:{@", "}])
          {
            v18 = [v17 componentsSeparatedByString:{@", "}];
            v19 = v18;
            if (!v18 || [v18 count] != 2)
            {
              if (qword_1025D46B0 != -1)
              {
                sub_10191F1DC();
                p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
              }

              v52 = p_info[215];
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                v53 = *(a2 + 23);
                v54 = *a2;
                v55 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
                v56 = a3->__r_.__value_.__r.__words[0];
                v57 = [v19 count];
                if (v55 >= 0)
                {
                  v58 = a3;
                }

                else
                {
                  v58 = v56;
                }

                *buf = 136446722;
                if (v53 >= 0)
                {
                  v59 = a2;
                }

                else
                {
                  v59 = v54;
                }

                *&buf[4] = v59;
                v90 = 2082;
                *v91 = v58;
                *&v91[8] = 1026;
                *&v91[10] = v57;
                _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_ERROR, "CLMM,MA-OTA,%{public}s,%{public}s,invalid split counts in reading coordinate data,%{public}d", buf, 0x1Cu);
              }

              if (sub_10000A100(121, 0))
              {
                sub_10191F310(buf);
                v65 = qword_1025D46B8;
                v66 = *(a2 + 23);
                v67 = *a2;
                v68 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
                v69 = a3->__r_.__value_.__r.__words[0];
                v70 = [v19 count];
                v71 = (v68 >= 0 ? a3 : v69);
                *v80 = 136446722;
                v72 = v66 >= 0 ? a2 : v67;
                *&v80[4] = v72;
                v81 = 2082;
                v82 = v71;
                v83 = 1026;
                v84 = v70;
                LODWORD(v75) = 28;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v65, 16, "CLMM,MA-OTA,%{public}s,%{public}s,invalid split counts in reading coordinate data,%{public}d", COERCE_DOUBLE(136446722), v80, v75);
                v74 = v73;
                sub_100152C7C("Generic", 1, 0, 0, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::fillPolygonData(const std::string &, const std::string &, const CFArrayRef &, std::vector<CLMapMatcherOperatingPolygon> &)", "%s\n", v73);
                if (v74 != buf)
                {
                  free(v74);
                }
              }

              goto LABEL_90;
            }

            [objc_msgSend(v19 objectAtIndexedSubscript:{0), "doubleValue"}];
            v21 = v20;
            [objc_msgSend(v19 objectAtIndexedSubscript:{1), "doubleValue"}];
            v23 = v22;
            if (qword_1025D46B0 != -1)
            {
              sub_10191F1DC();
              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            v24 = p_info[215];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              if (*(a2 + 23) >= 0)
              {
                v25 = a2;
              }

              else
              {
                v25 = *a2;
              }

              if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v26 = a3;
              }

              else
              {
                v26 = a3->__r_.__value_.__r.__words[0];
              }

              *buf = 136447235;
              *&buf[4] = v25;
              v90 = 2082;
              *v91 = v26;
              *&v91[8] = 1026;
              *&v91[10] = v12;
              *&v91[14] = 2053;
              *&v91[16] = v21;
              *&v91[24] = 2053;
              *&v91[26] = v23;
              _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,%{public}s,%{public}s,coordinate%{public}d,ll,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x30u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191F310(buf);
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v47 = *(a2 + 23) >= 0 ? a2 : *a2;
              v48 = (a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? a3 : a3->__r_.__value_.__r.__words[0];
              *v80 = 136447235;
              *&v80[4] = v47;
              v81 = 2082;
              v82 = v48;
              v83 = 1026;
              v84 = v12;
              v85 = 2053;
              v86 = v21;
              v87 = 2053;
              v88 = v23;
              LODWORD(v75) = 48;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,%{public}s,%{public}s,coordinate%{public}d,ll,%{sensitive}.7lf,%{sensitive}.7lf", v80, v75);
              v50 = v49;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::fillPolygonData(const std::string &, const std::string &, const CFArrayRef &, std::vector<CLMapMatcherOperatingPolygon> &)", "%s\n", v49);
              if (v50 != buf)
              {
                free(v50);
              }
            }

            v27 = v78;
            if (v78 >= v79)
            {
              v36 = __src;
              v37 = v78 - __src;
              v38 = (v78 - __src) >> 4;
              v39 = v38 + 1;
              if ((v38 + 1) >> 60)
              {
                sub_10028C64C();
              }

              v40 = v79 - __src;
              if ((v79 - __src) >> 3 > v39)
              {
                v39 = v40 >> 3;
              }

              v41 = v40 >= 0x7FFFFFFFFFFFFFF0;
              v42 = 0xFFFFFFFFFFFFFFFLL;
              if (!v41)
              {
                v42 = v39;
              }

              if (v42)
              {
                sub_1003E5FE8(&__src, v42);
              }

              v43 = (v78 - __src) >> 4;
              v44 = (16 * v38);
              *v44 = v21;
              v44[1] = v23;
              v28 = 16 * v38 + 16;
              v45 = (16 * v38 - 16 * v43);
              memcpy(&v44[-2 * v43], v36, v37);
              v46 = __src;
              __src = v45;
              v78 = v28;
              v79 = 0;
              if (v46)
              {
                operator delete(v46);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            else
            {
              *v78 = v21;
              *(v27 + 1) = v23;
              v28 = (v27 + 16);
            }

            v78 = v28;
          }
        }

        else
        {
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
            p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          }

          v29 = p_info[215];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            if (*(a2 + 23) >= 0)
            {
              v30 = a2;
            }

            else
            {
              v30 = *a2;
            }

            if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = a3;
            }

            else
            {
              v31 = a3->__r_.__value_.__r.__words[0];
            }

            *buf = 136446466;
            *&buf[4] = v30;
            v90 = 2082;
            *v91 = v31;
            _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_ERROR, "CLMM,MA-OTA,%{public}s,%{public}s,NULL arrayElements", buf, 0x16u);
          }

          if (sub_10000A100(121, 0))
          {
            sub_10191F310(buf);
            p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
            v32 = *(a2 + 23) >= 0 ? a2 : *a2;
            v33 = (a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? a3 : a3->__r_.__value_.__r.__words[0];
            *v80 = 136446466;
            *&v80[4] = v32;
            v81 = 2082;
            v82 = v33;
            LODWORD(v75) = 22;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM,MA-OTA,%{public}s,%{public}s,NULL arrayElements", v80, v75);
            v35 = v34;
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::fillPolygonData(const std::string &, const std::string &, const CFArrayRef &, std::vector<CLMapMatcherOperatingPolygon> &)", "%s\n", v34);
            if (v35 != buf)
            {
              free(v35);
            }
          }
        }

        v13 = ++v12 >= v14;
      }

      while (v14 != v12);
      v51 = __src;
      if (__src == v78)
      {
        goto LABEL_91;
      }

      *buf = 0xBFF0000000000000;
      buf[8] = 0;
      memset(&v91[2], 0, 32);
      v92 = 0u;
      v93 = 0u;
      v94 = 0;
      sub_1007286F0(buf, a3, &__src);
      sub_1007289F4(a5, buf);
      *v80 = &v93;
      sub_1002EC52C(v80);
      if (*&v91[26])
      {
        *&v92 = *&v91[26];
        operator delete(*&v91[26]);
      }

      if ((v91[25] & 0x80000000) != 0)
      {
        operator delete(*&v91[2]);
      }

LABEL_90:
      v51 = __src;
LABEL_91:
      if (v51)
      {
        v78 = v51;
        operator delete(v51);
      }
    }
  }

  else
  {
    return 0;
  }

  return v13;
}

void sub_100728698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007286F0(uint64_t a1, const std::string *a2, char **a3)
{
  sub_1002EC580((a1 + 64));
  v6 = (a1 + 40);
  *(a1 + 48) = *(a1 + 40);
  v28 = (a1 + 16);
  std::string::operator=((a1 + 16), a2);
  v7 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    v9 = *(a1 + 48);
    do
    {
      v10 = *v7;
      v11 = *(v7 + 1);
      v12 = *(a1 + 56);
      if (v9 >= v12)
      {
        v13 = (v9 - *v6) >> 4;
        if ((v13 + 1) >> 60)
        {
          sub_10028C64C();
        }

        v14 = v12 - *v6;
        v15 = v14 >> 3;
        if (v14 >> 3 <= (v13 + 1))
        {
          v15 = v13 + 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (v16)
        {
          sub_1003E5FE8(a1 + 40, v16);
        }

        v17 = (16 * v13);
        *v17 = v11;
        v17[1] = v10;
        v9 = (16 * v13 + 16);
        v18 = *(a1 + 40);
        v19 = *(a1 + 48) - v18;
        v20 = 16 * v13 - v19;
        memcpy(v17 - v19, v18, v19);
        v21 = *(a1 + 40);
        *(a1 + 40) = v20;
        *(a1 + 48) = v9;
        *(a1 + 56) = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v9 = v11;
        v9[1] = v10;
        v9 += 2;
      }

      *(a1 + 48) = v9;
      v7 += 16;
    }

    while (v7 != v8);
  }

  if (qword_1025D46B0 != -1)
  {
    sub_10191F0D8();
  }

  v22 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
  {
    v23 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v23 = *v28;
    }

    v24 = (a3[1] - *a3) >> 4;
    *buf = 136446466;
    *&buf[4] = v23;
    v34 = 2050;
    v35 = v24;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Polygon,%{public}s,set with,%{public}lu,coordinates", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D46B0 != -1)
    {
      sub_10191F1DC();
    }

    if (*(a1 + 39) < 0)
    {
      v28 = *v28;
    }

    v25 = (a3[1] - *a3) >> 4;
    v29 = 136446466;
    v30 = v28;
    v31 = 2050;
    v32 = v25;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,Polygon,%{public}s,set with,%{public}lu,coordinates", &v29, 22);
    v27 = v26;
    sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherOperatingPolygon::setPolygon(const std::string &, const std::vector<CLClientLocationCoordinate> &)", "%s\n", v26);
    if (v27 != buf)
    {
      free(v27);
    }
  }

  *buf = 0x3FF0000000000000;
  sub_10072F128((a1 + 40), buf);
}

uint64_t sub_1007289F4(uint64_t *a1, uint64_t *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_10072FCB0(a1, a2);
  }

  else
  {
    sub_10072FBB8(a1, a2);
    result = v3 + 88;
  }

  a1[1] = result;
  return result;
}

void sub_100729890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  a25 = &a16;
  sub_1001E56E8(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_1007298FC(uint64_t a1, int a2, int8x16_t *a3)
{
  if (*a1)
  {
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v9 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10 = sub_1000081AC();
    v11 = *(a1 + 8);
    v12 = vabdd_f64(v10, v11);
    if (v11 >= 0.0)
    {
      v13 = v12;
    }

    else
    {
      v13 = -1.0;
    }

    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v14 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v15 = (*(a1 + 32) - *(a1 + 24)) >> 2;
      v16 = -1171354717 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
      v17 = -1171354717 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
      v18 = *(a1 + 16);
      *buf = 67242240;
      v67 = a2;
      v68 = 1026;
      v69 = v6 == v7;
      v70 = 1026;
      v71 = v15;
      v72 = 1026;
      *v73 = v8 == v9;
      *&v73[4] = 1026;
      *&v73[6] = v16;
      v74 = 1026;
      v75 = 0;
      v76 = 1026;
      v77 = v17;
      v78 = 2050;
      v79 = v13;
      v80 = 1026;
      v81 = v18;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,initialCheck,signalEnv,%{public}d,isSEOk,%{public}d,size,%{public}d,isPolygonOK,%{public}d,size,%{public}d,isInsideSkippedPolygon,%{public}d,size,%{public}d,dtSinceLastMMStateChangedBasedOnSE,%{public}.1lf,mmStateBasedOnSE,%{public}d", buf, 0x3Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v43 = (*(a1 + 32) - *(a1 + 24)) >> 2;
      v44 = -1171354717 * ((*(a1 + 56) - *(a1 + 48)) >> 3);
      v45 = -1171354717 * ((*(a1 + 80) - *(a1 + 72)) >> 3);
      v46 = *(a1 + 16);
      v49[0] = 67242240;
      v49[1] = a2;
      v50 = 1026;
      v51 = v6 == v7;
      v52 = 1026;
      v53 = v43;
      v54 = 1026;
      v55 = v8 == v9;
      v56 = 1026;
      v57 = v44;
      v58 = 1026;
      v59 = 0;
      v60 = 1026;
      v61 = v45;
      v62 = 2050;
      v63 = v13;
      v64 = 1026;
      v65 = v46;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,MA-OTA,initialCheck,signalEnv,%{public}d,isSEOk,%{public}d,size,%{public}d,isPolygonOK,%{public}d,size,%{public}d,isInsideSkippedPolygon,%{public}d,size,%{public}d,dtSinceLastMMStateChangedBasedOnSE,%{public}.1lf,mmStateBasedOnSE,%{public}d", v49, 60);
      v48 = v47;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingRegions::canMapMatch(const CLSignalEnvironmentProvider_Type::SignalEnvironmentType, const CLClientLocationCoordinate &)", "%s\n", v47);
      if (v48 != buf)
      {
        free(v48);
      }
    }

    if (v6 != v7)
    {
      v20 = *(a1 + 24);
      v19 = *(a1 + 32);
      if (v20 == v19)
      {
        v23 = 0;
      }

      else
      {
        v21 = v20 + 4;
        do
        {
          v22 = *(v21 - 4);
          v23 = v22 == a2;
          v24 = v22 == a2 || v21 == v19;
          v21 += 4;
        }

        while (!v24);
      }

      v27 = *(a1 + 16);
      if (v27 == v23 || (*(a1 + 8) >= 0.0 ? (v28 = v13 <= 120.0) : (v28 = 0), v28))
      {
        if ((v27 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (qword_1025D46B0 != -1)
        {
          sub_10191F1DC();
        }

        v29 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          v30 = *(a1 + 16);
          *buf = 67240448;
          v67 = v30;
          v68 = 1026;
          v69 = v23;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,seStateChanged,prevSEState,%{public}d,newSEState,%{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10191F444((a1 + 16), v23);
        }

        *(a1 + 16) = v23;
        *(a1 + 8) = v10;
        if (!v23)
        {
LABEL_38:
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v31 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67240704;
            v67 = 0;
            v68 = 1026;
            v69 = v8 == v9;
            v70 = 1026;
            v71 = 0;
            _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,seCheck,isSEOk,%{public}d,isPolygonOK,%{public}d,isInsideSkippedPolygon,%{public}d,early return due to failed se check - polygon not checked)", buf, 0x14u);
          }

          result = sub_10000A100(121, 2);
          if (result)
          {
            sub_10191F548((v8 == v9));
            return 0;
          }

          return result;
        }
      }
    }

    if (v8 == v9)
    {
LABEL_65:
      v38 = *(a1 + 72);
      v37 = *(a1 + 80);
      while (1)
      {
        if (v38 == v37)
        {
          v39 = 0;
          goto LABEL_79;
        }

        if (sub_10072A0D0(v38, a3))
        {
          break;
        }

        v38 += 88;
      }

      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v40 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v41 = (v38 + 16);
        if (*(v38 + 39) < 0)
        {
          v41 = *v41;
        }

        *buf = 67240963;
        v67 = 1;
        v68 = 1026;
        v69 = 1;
        v70 = 1026;
        v71 = 1;
        v72 = 2081;
        *v73 = v41;
        _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,skipRegionCheck,isSEOk,%{public}d,isPolygonOK,%{public}d,isInsideSkippedPolygon,%{public}d,inside,%{private}s", buf, 0x1Eu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191F868(v38);
      }

      v39 = 1;
LABEL_79:
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v42 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240704;
        v67 = 1;
        v68 = 1026;
        v69 = 1;
        v70 = 1026;
        v71 = v39;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,final,isSEOk,%{public}d,isPolygonOK,%{public}d,isInsideSkippedPolygon,%{public}d", buf, 0x14u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191F97C(v39);
      }

      return v39 ^ 1;
    }

    else
    {
      v32 = *(a1 + 48);
      v33 = *(a1 + 56);
      while (v32 != v33)
      {
        if (sub_10072A0D0(v32, a3))
        {
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v35 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
          {
            v36 = v32 + 16;
            if (v32[39] < 0)
            {
              v36 = *v36;
            }

            *buf = 67240963;
            v67 = 1;
            v68 = 1026;
            v69 = 1;
            v70 = 1026;
            v71 = 0;
            v72 = 2081;
            *v73 = v36;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,polygonCheck,isSEOk,%{public}d,isPolygonOK,%{public}d,isInsideSkippedPolygon,%{public}d,inside,%{private}s", buf, 0x1Eu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F654(v32);
          }

          goto LABEL_65;
        }

        v32 += 88;
      }

      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v34 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67240704;
        v67 = 1;
        v68 = 1026;
        v69 = 0;
        v70 = 1026;
        v71 = 0;
        _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,polygonCheck,isSEOk,%{public}d,isPolygonOK,%{public}d,isInsideSkippedPolygon,%{public}d,early return due to failed polygon check - skipregion not checked)", buf, 0x14u);
      }

      result = sub_10000A100(121, 2);
      if (result)
      {
        sub_10191F768();
        return 0;
      }
    }

    return result;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_10191F0D8();
  }

  v25 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,MM disabled for this country", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10191F354();
    return 0;
  }

  return result;
}

uint64_t sub_10072A0D0(double *a1, int8x16_t *a2)
{
  if (*a1 <= 0.0 || vabdd_f64(sub_1000081AC(), *a1) >= 300.0)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v5 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v6 = a1 + 2;
      if (*(a1 + 39) < 0)
      {
        v6 = *v6;
      }

      *buf = 136380675;
      *&buf[4] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLMM,MA-OTA,Polygon,%{private}s,verified", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191FA8C(a1);
    }

    *a1 = sub_1000081AC();
    *buf = vextq_s8(*a2, *a2, 8uLL);
    v4 = sub_100730340(buf, a1 + 5) >= 0;
    *(a1 + 8) = v4;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  return v4 & 1;
}

uint64_t sub_10072A224(uint64_t a1, int a2, uint64_t **a3)
{
  v61 = 0;
  __str = 0;
  v62 = 0;
  v4 = sub_10072A8A0(a3, &__str);
  v6 = v4;
  if (v4)
  {
    v7 = 0;
    memset(v45, 0, 24);
    do
    {
      v8 = &v45[v7];
      v8[1].__r_.__value_.__s.__data_[0] = 0;
      v8[1].__r_.__value_.__l.__size_ = 0xBFF0000000000000;
      v8[1].__r_.__value_.__s.__data_[16] = 0;
      *&v8[2].__r_.__value_.__l.__data_ = 0uLL;
      *&v8[2].__r_.__value_.__r.__words[2] = 0uLL;
      *&v8[3].__r_.__value_.__r.__words[1] = 0uLL;
      *&v8[4].__r_.__value_.__l.__data_ = 0uLL;
      v7 += 4;
      v8[4].__r_.__value_.__r.__words[2] = 0;
    }

    while (v7 != 16);
    v46 = 16777472;
    v47 = 1;
    v48 = 0;
    v50 = xmmword_101C8BC90;
    v51 = xmmword_101C8BCA0;
    v52 = 400;
    *&v9 = -1;
    *(&v9 + 1) = -1;
    v53 = v9;
    v54 = v9;
    v55 = v9;
    v56 = v9;
    v57 = v9;
    v58 = -1;
    v59 = xmmword_101C8BCB0;
    v49 = xmmword_101C8BCC0;
    if (sub_10001CF04(v4, v5))
    {
      DWORD1(v49) = 4233600;
    }

    HIDWORD(v42) = v6;
    DWORD2(v53) = 125000;
    DWORD1(v54) = 125000;
    LODWORD(v55) = 125000;
    HIDWORD(v55) = 15000;
    DWORD2(v56) = 25000;
    DWORD1(v57) = -1;
    v58 = -1;
    std::string::operator=(v45, __str);
    v43 = a2;
    v10 = __str;
    if (0xAAAAAAAAAAAAAAABLL * ((v61 - __str) >> 3) >= 2)
    {
      v11 = &v45[4 * a2];
      v12 = 1;
      v13 = 1;
      do
      {
        v14 = sub_100727A34(&v10[v13].__r_.__value_.__l.__data_);
        size = v11[2].__r_.__value_.__l.__size_;
        v15 = v11[2].__r_.__value_.__r.__words[2];
        if (size >= v15)
        {
          data = v11[2].__r_.__value_.__l.__data_;
          v19 = size - data;
          v20 = (size - data) >> 2;
          v21 = v20 + 1;
          if ((v20 + 1) >> 62)
          {
            sub_10028C64C();
          }

          v22 = v15 - data;
          if (v22 >> 1 > v21)
          {
            v21 = v22 >> 1;
          }

          v23 = v22 >= 0x7FFFFFFFFFFFFFFCLL;
          v24 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v23)
          {
            v24 = v21;
          }

          if (v24)
          {
            sub_1000B85D0(&v11[2], v24);
          }

          v25 = (size - data) >> 2;
          v26 = (4 * v20);
          v27 = (4 * v20 - 4 * v25);
          *v26 = v14;
          v17 = v26 + 1;
          memcpy(v27, data, v19);
          v28 = v11[2].__r_.__value_.__l.__data_;
          v11[2].__r_.__value_.__r.__words[0] = v27;
          v11[2].__r_.__value_.__l.__size_ = v17;
          v11[2].__r_.__value_.__r.__words[2] = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *size = v14;
          v17 = size + 4;
        }

        v11[2].__r_.__value_.__l.__size_ = v17;
        if (qword_1025D46B0 != -1)
        {
          sub_10191F1DC();
        }

        v29 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
        {
          v30 = &__str[v13];
          if (SHIBYTE(__str[v13].__r_.__value_.__r.__words[2]) < 0)
          {
            v30 = v30->__r_.__value_.__r.__words[0];
          }

          v31 = *(v11[2].__r_.__value_.__l.__size_ - 4);
          *buf = 136446466;
          *&buf[4] = v30;
          v68 = 1026;
          v69 = v31;
          _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,DefaultsWrite,signalEnvironment,%{public}s,%{public}d", buf, 0x12u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v32 = &__str[v13];
          if (SHIBYTE(__str[v13].__r_.__value_.__r.__words[2]) < 0)
          {
            v32 = v32->__r_.__value_.__r.__words[0];
          }

          v33 = *(v11[2].__r_.__value_.__l.__size_ - 4);
          *v64 = 136446466;
          *&v64[4] = v32;
          v65 = 1026;
          v66 = v33;
          LODWORD(v42) = 18;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,DefaultsWrite,signalEnvironment,%{public}s,%{public}d", v64, v42);
          v35 = v34;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingDynamics::updateCountrySettingUsingDefaultWriteSEString(const MatcherOperatingDynamicsEnum, const std::string &)", "%s\n", v34);
          if (v35 != buf)
          {
            free(v35);
          }
        }

        ++v12;
        v10 = __str;
        ++v13;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((v61 - __str) >> 3) > v12);
    }

    if (sub_100192868(a1 + 96, v45))
    {
      *v64 = v45;
      LOBYTE(sub_10022DD34((a1 + 96), v45, &unk_101C66300, v64, &v63)[12 * v43 + 10]) = 1;
      *v64 = v45;
      v36 = sub_10022DD34((a1 + 96), v45, &unk_101C66300, v64, &v63);
      if (v36 + 10 != &v45[1])
      {
        sub_100731D80(&v36[12 * v43 + 13], v45[4 * v43 + 2].__r_.__value_.__l.__data_, v45[4 * v43 + 2].__r_.__value_.__l.__size_, (v45[4 * v43 + 2].__r_.__value_.__l.__size_ - v45[4 * v43 + 2].__r_.__value_.__r.__words[0]) >> 2);
      }
    }

    else
    {
      sub_100731EAC(buf, v45, v45);
      sub_100732B8C((a1 + 96), buf, buf);
      for (i = 0; i != -384; i -= 96)
      {
        *v64 = &v73[i + 48];
        sub_100731CAC(v64);
        *v64 = &v73[i + 24];
        sub_100731CAC(v64);
        v38 = *&v73[i];
        if (v38)
        {
          *&v73[i + 8] = v38;
          operator delete(v38);
        }
      }

      if (v72 < 0)
      {
        operator delete(__p);
      }

      if (v70 < 0)
      {
        operator delete(*buf);
      }
    }

    for (j = 0; j != -384; j -= 96)
    {
      *buf = &v45[j / 0x18 + 16];
      sub_100731CAC(buf);
      *buf = &v45[j / 0x18 + 15];
      sub_100731CAC(buf);
      v40 = v45[j / 0x18 + 14].__r_.__value_.__l.__data_;
      if (v40)
      {
        v45[j / 0x18 + 14].__r_.__value_.__l.__size_ = v40;
        operator delete(v40);
      }
    }

    if (SHIBYTE(v45[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45[0].__r_.__value_.__l.__data_);
    }

    v6 = HIDWORD(v42);
  }

  *buf = &__str;
  sub_1001E56E8(buf);
  return v6;
}

void sub_10072A818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(__p, a13);
  sub_1007323B0(__p);
  STACK[0x2B0] = &STACK[0x270];
  sub_1001E56E8(&STACK[0x2B0]);
  _Unwind_Resume(a1);
}

uint64_t sub_10072A8A0(uint64_t **a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = a1[1];
  }

  if (!v2)
  {
    return 0;
  }

  sub_10003848C(v20);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  sub_100038730(&v21, v6, v7);
  sub_1001E573C(a2);
  while ((*(&v23[0].__locale_ + *(v20[0] - 3)) & 5) == 0)
  {
    __p[0] = 0;
    __p[1] = 0;
    v19 = 0;
    v8 = sub_100485630(v20, __p, 0x2Cu);
    v9 = *(v8 + *(*v8 - 24) + 32) & 5;
    if (!v9)
    {
      sub_1003CDE18(a2, __p);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
      if (v9)
      {
        break;
      }
    }

    else if (v9)
    {
      break;
    }
  }

  v10 = *a2;
  if (*(a2 + 8) == *a2)
  {
    goto LABEL_31;
  }

  if (*(v10 + 23) < 0)
  {
    sub_100007244(__p, *v10, v10[1]);
  }

  else
  {
    v11 = *v10;
    v19 = v10[2];
    *__p = v11;
  }

  v13 = HIBYTE(v19);
  if (SHIBYTE(v19) < 0)
  {
    v13 = __p[1];
  }

  if (v13 == 2)
  {
LABEL_26:
    v12 = 1;
    if (SHIBYTE(v19) < 0)
    {
      goto LABEL_38;
    }

    goto LABEL_41;
  }

  if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    if (SHIBYTE(v19) == 3)
    {
      v14 = __p;
      goto LABEL_33;
    }

LABEL_31:
    v12 = 0;
    goto LABEL_41;
  }

  v14 = __p[0];
  if (__p[1] != 3)
  {
    v12 = 0;
    goto LABEL_40;
  }

LABEL_33:
  if (*v14 == 20306 && *(v14 + 2) == 87)
  {
    goto LABEL_26;
  }

  v12 = 0;
  if (SHIBYTE(v19) < 0)
  {
LABEL_38:
    v14 = __p[0];
LABEL_40:
    operator delete(v14);
  }

LABEL_41:
  v21 = v16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return v12;
}

void sub_10072ABAC(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10072ABF0(uint64_t a1, int a2, uint64_t **a3)
{
  v70 = 0;
  __str = 0;
  v71 = 0;
  v5 = sub_10072A8A0(a3, &__str);
  v7 = v5;
  if (v5)
  {
    v8 = 0;
    memset(v54, 0, 24);
    do
    {
      v9 = &v54[v8];
      v9[1].__r_.__value_.__s.__data_[0] = 0;
      v9[1].__r_.__value_.__l.__size_ = 0xBFF0000000000000;
      v9[1].__r_.__value_.__s.__data_[16] = 0;
      *&v9[2].__r_.__value_.__l.__data_ = 0uLL;
      *&v9[2].__r_.__value_.__r.__words[2] = 0uLL;
      *&v9[3].__r_.__value_.__r.__words[1] = 0uLL;
      *&v9[4].__r_.__value_.__l.__data_ = 0uLL;
      v8 += 4;
      v9[4].__r_.__value_.__r.__words[2] = 0;
    }

    while (v8 != 16);
    v55 = 16777472;
    v56 = 1;
    v57 = 0;
    v59 = xmmword_101C8BC90;
    v60 = xmmword_101C8BCA0;
    v61 = 400;
    *&v10 = -1;
    *(&v10 + 1) = -1;
    v62 = v10;
    v63 = v10;
    v64 = v10;
    v65 = v10;
    v66 = v10;
    v67 = -1;
    v68 = xmmword_101C8BCB0;
    v58 = xmmword_101C8BCC0;
    v48 = a2;
    v49 = a1;
    if (sub_10001CF04(v5, v6))
    {
      DWORD1(v58) = 4233600;
    }

    HIDWORD(v47) = v7;
    DWORD2(v62) = 125000;
    DWORD1(v63) = 125000;
    LODWORD(v64) = 125000;
    HIDWORD(v64) = 15000;
    DWORD2(v65) = 25000;
    DWORD1(v66) = -1;
    v67 = -1;
    std::string::operator=(v54, __str);
    __src = 0;
    v52 = 0;
    v53 = 0;
    memset(&v50, 0, sizeof(v50));
    v11 = __str;
    if (v70 != __str)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v70 - __str) >> 3);
      p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      do
      {
        if (v13)
        {
          if (v14 <= v13 + 1)
          {
            break;
          }

          v16 = &v11[v12];
          if (SHIBYTE(v16->__r_.__value_.__r.__words[2]) < 0)
          {
            v16 = v16->__r_.__value_.__r.__words[0];
          }

          v17 = v13 + 1;
          v18 = atof(v16);
          v19 = &v11[v13 + 1];
          if (SHIBYTE(v19->__r_.__value_.__r.__words[2]) < 0)
          {
            v19 = v19->__r_.__value_.__r.__words[0];
          }

          v20 = atof(v19);
          v21 = v20;
          v22 = v52;
          if (v52 >= v53)
          {
            v24 = __src;
            v25 = v52 - __src;
            v26 = (v52 - __src) >> 4;
            v27 = v26 + 1;
            if ((v26 + 1) >> 60)
            {
              sub_10028C64C();
            }

            v28 = v53 - __src;
            if ((v53 - __src) >> 3 > v27)
            {
              v27 = v28 >> 3;
            }

            v29 = v28 >= 0x7FFFFFFFFFFFFFF0;
            v30 = 0xFFFFFFFFFFFFFFFLL;
            if (!v29)
            {
              v30 = v27;
            }

            if (v30)
            {
              sub_1003E5FE8(&__src, v30);
            }

            v31 = (v52 - __src) >> 4;
            v32 = 16 * v26;
            *v32 = v18;
            *(v32 + 8) = v20;
            v23 = 16 * v26 + 16;
            v33 = (16 * v26 - 16 * v31);
            memcpy((v32 - 16 * v31), v24, v25);
            v34 = __src;
            __src = v33;
            v52 = v23;
            v53 = 0;
            if (v34)
            {
              operator delete(v34);
            }

            p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
          }

          else
          {
            *v52 = v18;
            *(v22 + 1) = v20;
            v23 = (v22 + 16);
          }

          v52 = v23;
          if (p_info[214] != -1)
          {
            sub_10191F1DC();
          }

          v35 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            v36 = &v50;
            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v36 = v50.__r_.__value_.__r.__words[0];
            }

            *buf = 136446979;
            *&buf[4] = v36;
            v81 = 1026;
            v82 = v17 / 2;
            v83 = 2053;
            *v84 = v18;
            *&v84[8] = 2053;
            *&v84[10] = v21;
            _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,DefaultsWrite,polygon,%{public}s,coordinate%{public}d,ll,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x26u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F310(buf);
            v37 = &v50;
            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v37 = v50.__r_.__value_.__r.__words[0];
            }

            *v74 = 136446979;
            *&v74[4] = v37;
            v75 = 1026;
            *v76 = v17 / 2;
            *&v76[4] = 2053;
            *&v76[6] = v18;
            *&v76[14] = 2053;
            *&v76[16] = v21;
            LODWORD(v47) = 38;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,DefaultsWrite,polygon,%{public}s,coordinate%{public}d,ll,%{sensitive}.7lf,%{sensitive}.7lf", v74, v47);
            v39 = v38;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherOperatingDynamics::updateCountrySettingUsingDefaultWritePolygonString(const MatcherOperatingDynamicsEnum, const std::string &)", "%s\n", v38);
            if (v39 != buf)
            {
              free(v39);
            }
          }

          v13 += 2;
        }

        else
        {
          std::string::operator=(&v50, &v11[v12]);
          v13 = 1;
        }

        v12 = v13;
        v11 = __str;
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v70 - __str) >> 3);
      }

      while (v14 > v13);
    }

    *v74 = 0xBFF0000000000000;
    v74[8] = 0;
    memset(&v76[2], 0, 32);
    v77 = 0u;
    v78 = 0u;
    v79 = 0;
    sub_1007286F0(v74, &v50, &__src);
    v40 = &v54[4 * v48 + 1];
    sub_1007289F4(&v40[2], v74);
    if (sub_100192868(v49 + 96, v54))
    {
      v73 = v54;
      LOBYTE(sub_10022DD34((v49 + 96), v54, &unk_101C66300, &v73, &v72)[12 * v48 + 10]) = 1;
      v73 = v54;
      v41 = sub_10022DD34((v49 + 96), v54, &unk_101C66300, &v73, &v72);
      if (v41 + 10 != &v54[1])
      {
        sub_100732438(&v41[12 * v48 + 16], v40[2].__r_.__value_.__l.__data_, v40[2].__r_.__value_.__l.__size_, 0x2E8BA2E8BA2E8BA3 * ((v40[2].__r_.__value_.__l.__size_ - v40[2].__r_.__value_.__r.__words[0]) >> 3));
      }
    }

    else
    {
      sub_100731EAC(buf, v54, v54);
      sub_100732B8C((v49 + 96), buf, buf);
      for (i = 0; i != -384; i -= 96)
      {
        v73 = &v86[i + 48];
        sub_100731CAC(&v73);
        v73 = &v86[i + 24];
        sub_100731CAC(&v73);
        v43 = *&v86[i];
        if (v43)
        {
          *&v86[i + 8] = v43;
          operator delete(v43);
        }
      }

      if (v85 < 0)
      {
        operator delete(*&v84[4]);
      }

      if ((v84[3] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    *buf = &v78;
    sub_1002EC52C(buf);
    if (*&v76[26])
    {
      *&v77 = *&v76[26];
      operator delete(*&v76[26]);
    }

    v7 = HIDWORD(v47);
    if ((v76[25] & 0x80000000) != 0)
    {
      operator delete(*&v76[2]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (__src)
    {
      v52 = __src;
      operator delete(__src);
    }

    for (j = 0; j != -384; j -= 96)
    {
      *buf = &v54[j / 0x18 + 16];
      sub_100731CAC(buf);
      *buf = &v54[j / 0x18 + 15];
      sub_100731CAC(buf);
      data = v54[j / 0x18 + 14].__r_.__value_.__l.__data_;
      if (data)
      {
        v54[j / 0x18 + 14].__r_.__value_.__l.__size_ = data;
        operator delete(data);
      }
    }

    if (SHIBYTE(v54[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54[0].__r_.__value_.__l.__data_);
    }
  }

  *buf = &__str;
  sub_1001E56E8(buf);
  return v7;
}

void sub_10072B2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__pa, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  if (a24 < 0)
  {
    operator delete(__pa);
  }

  if (a25)
  {
    operator delete(a25);
  }

  sub_1007323B0(va);
  STACK[0x330] = &STACK[0x2A8];
  sub_1001E56E8(&STACK[0x330]);
  _Unwind_Resume(a1);
}

void sub_10072B39C(uint64_t result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 <= 6)
  {
    v10 = (result + 12 * a3 + 64);
    if (*(a4 + 23) >= 0)
    {
      v11 = a4;
    }

    else
    {
      v11 = *a4;
    }

    if ((sub_10005BBE4(a2, v11, v10) & 1) == 0)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10191F0D8();
      }

      v12 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v19 = 67240192;
        v20 = a3;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Unable to get enabled road tile radius setting for type,%{public}d", &v19, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101920638(a3);
      }
    }

    if (*(a5 + 23) >= 0)
    {
      v13 = a5;
    }

    else
    {
      v13 = *a5;
    }

    if ((sub_10005BBE4(a2, v13, v10 + 1) & 1) == 0)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v14 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v19 = 67240192;
        v20 = a3;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Unable to get enabled building tile radius setting for type,%{public}d", &v19, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101920720(a3);
      }
    }

    if (*(a6 + 23) >= 0)
    {
      v15 = a6;
    }

    else
    {
      v15 = *a6;
    }

    if ((sub_10005BBE4(a2, v15, v10 + 2) & 1) == 0)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v16 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v19 = 67240192;
        v20 = a3;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Unable to get enabled running track tile radius setting for type,%{public}d", &v19, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101920808(a3);
      }
    }

    if (v10[2] > 1000000)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v17 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v10[2];
        v19 = 67240704;
        v20 = v18;
        v21 = 1026;
        v22 = 1000000;
        v23 = 1026;
        v24 = a3;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "#Warning,TrackRun,Track tile download radius,%{public}d,exceeds cap,%{public}d,for type,%{public}d", &v19, 0x14u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019208F0(v10 + 2, a3);
      }

      v10[2] = 1000000;
    }

    if (*v10 > 125000)
    {
      *v10 = 125000;
    }

    if (v10[1] > 125000)
    {
      v10[1] = 125000;
    }
  }
}

uint64_t sub_10072B6D8(unsigned __int8 *a1, uint64_t a2)
{
  if (byte_10265942F < 0)
  {
    sub_100007244(__p, xmmword_102659418, *(&xmmword_102659418 + 1));
  }

  else
  {
    *__p = xmmword_102659418;
    v134 = unk_102659428;
  }

  *a1 = sub_10072C9B4(a2, __p, *a1);
  if (SHIBYTE(v134) < 0)
  {
    operator delete(__p[0]);
  }

  if (byte_10265951F < 0)
  {
    sub_100007244(__dst, xmmword_102659508, *(&xmmword_102659508 + 1));
  }

  else
  {
    *__dst = xmmword_102659508;
    v132 = unk_102659518;
  }

  *(a1 + 4) = sub_10072CBA0(a2, __dst, 1209600, 43200, 15552000);
  if (SHIBYTE(v132) < 0)
  {
    operator delete(__dst[0]);
  }

  if (byte_102659537 < 0)
  {
    sub_100007244(v129, xmmword_102659520, *(&xmmword_102659520 + 1));
  }

  else
  {
    *v129 = xmmword_102659520;
    v130 = unk_102659530;
  }

  *(a1 + 5) = sub_10072CBA0(a2, v129, 1209600, 43200, 15552000);
  if (SHIBYTE(v130) < 0)
  {
    operator delete(v129[0]);
  }

  if (byte_10265954F < 0)
  {
    sub_100007244(v127, xmmword_102659538, *(&xmmword_102659538 + 1));
  }

  else
  {
    *v127 = xmmword_102659538;
    v128 = unk_102659548;
  }

  *(a1 + 6) = sub_10072CBA0(a2, v127, 75, 25, 100);
  if (SHIBYTE(v128) < 0)
  {
    operator delete(v127[0]);
  }

  if (byte_102659567 < 0)
  {
    sub_100007244(v125, xmmword_102659550, *(&xmmword_102659550 + 1));
  }

  else
  {
    *v125 = xmmword_102659550;
    v126 = unk_102659560;
  }

  *(a1 + 7) = sub_10072CBA0(a2, v125, 50, 25, 100);
  if (SHIBYTE(v126) < 0)
  {
    operator delete(v125[0]);
  }

  if (byte_10265957F < 0)
  {
    sub_100007244(v123, xmmword_102659568, *(&xmmword_102659568 + 1));
  }

  else
  {
    *v123 = xmmword_102659568;
    v124 = unk_102659578;
  }

  *(a1 + 8) = sub_10072CBA0(a2, v123, 301, 301, 21600);
  if (SHIBYTE(v124) < 0)
  {
    operator delete(v123[0]);
  }

  if (byte_102659597 < 0)
  {
    sub_100007244(v121, xmmword_102659580, *(&xmmword_102659580 + 1));
  }

  else
  {
    *v121 = xmmword_102659580;
    v122 = unk_102659590;
  }

  *(a1 + 9) = sub_10072CBA0(a2, v121, 150000, 1000, 3000000);
  if (SHIBYTE(v122) < 0)
  {
    operator delete(v121[0]);
  }

  if (byte_1026595AF < 0)
  {
    sub_100007244(v119, xmmword_102659598, *(&xmmword_102659598 + 1));
  }

  else
  {
    *v119 = xmmword_102659598;
    v120 = unk_1026595A8;
  }

  *(a1 + 10) = sub_10072CBA0(a2, v119, 10000, 10, 300000);
  if (SHIBYTE(v120) < 0)
  {
    operator delete(v119[0]);
  }

  if (byte_1026595C7 < 0)
  {
    sub_100007244(v117, xmmword_1026595B0, *(&xmmword_1026595B0 + 1));
  }

  else
  {
    *v117 = xmmword_1026595B0;
    v118 = unk_1026595C0;
  }

  *(a1 + 11) = sub_10072CBA0(a2, v117, 150, 2, 900);
  if (SHIBYTE(v118) < 0)
  {
    operator delete(v117[0]);
  }

  if (byte_10265975F < 0)
  {
    sub_100007244(v115, xmmword_102659748, *(&xmmword_102659748 + 1));
  }

  else
  {
    *v115 = xmmword_102659748;
    v116 = unk_102659758;
  }

  *(a1 + 3) = sub_10072CBA0(a2, v115, 21600, 1, 86400);
  if (SHIBYTE(v116) < 0)
  {
    operator delete(v115[0]);
  }

  if (byte_102659777 < 0)
  {
    sub_100007244(v113, xmmword_102659760, *(&xmmword_102659760 + 1));
  }

  else
  {
    *v113 = xmmword_102659760;
    v114 = unk_102659770;
  }

  *(a1 + 12) = sub_10072CBA0(a2, v113, 10, 10, 2000);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(v113[0]);
  }

  if (byte_10265978F < 0)
  {
    sub_100007244(v111, xmmword_102659778, *(&xmmword_102659778 + 1));
  }

  else
  {
    *v111 = xmmword_102659778;
    v112 = unk_102659788;
  }

  *(a1 + 13) = sub_10072CBA0(a2, v111, 100, 10, 2000);
  if (SHIBYTE(v112) < 0)
  {
    operator delete(v111[0]);
  }

  if (byte_1026597A7 < 0)
  {
    sub_100007244(v109, xmmword_102659790, *(&xmmword_102659790 + 1));
  }

  else
  {
    *v109 = xmmword_102659790;
    v110 = unk_1026597A0;
  }

  *(a1 + 14) = sub_10072CBA0(a2, v109, 4, 10, 2000);
  if (SHIBYTE(v110) < 0)
  {
    operator delete(v109[0]);
  }

  if (byte_1026597BF < 0)
  {
    sub_100007244(v107, xmmword_1026597A8, *(&xmmword_1026597A8 + 1));
  }

  else
  {
    *v107 = xmmword_1026597A8;
    v108 = unk_1026597B8;
  }

  *(a1 + 15) = sub_10072CBA0(a2, v107, 400, 10, 2000);
  if (SHIBYTE(v108) < 0)
  {
    operator delete(v107[0]);
  }

  if (byte_10265981F < 0)
  {
    sub_100007244(v105, xmmword_102659808, *(&xmmword_102659808 + 1));
  }

  else
  {
    *v105 = xmmword_102659808;
    v106 = unk_102659818;
  }

  *(a1 + 39) = sub_10072CBA0(a2, v105, 100000, 25000, 1000000);
  if (SHIBYTE(v106) < 0)
  {
    operator delete(v105[0]);
  }

  if (byte_102659837 < 0)
  {
    sub_100007244(v103, xmmword_102659820, *(&xmmword_102659820 + 1));
  }

  else
  {
    *v103 = xmmword_102659820;
    v104 = unk_102659830;
  }

  *(a1 + 40) = sub_10072CBA0(a2, v103, 21, 0, 120);
  if (SHIBYTE(v104) < 0)
  {
    operator delete(v103[0]);
  }

  if (byte_1026595DF < 0)
  {
    sub_100007244(v101, xmmword_1026595C8, *(&xmmword_1026595C8 + 1));
  }

  else
  {
    *v101 = xmmword_1026595C8;
    v102 = unk_1026595D8;
  }

  a1[1] = sub_10072C9B4(a2, v101, a1[1]);
  if (SHIBYTE(v102) < 0)
  {
    operator delete(v101[0]);
  }

  if (byte_1026595F7 < 0)
  {
    sub_100007244(v99, xmmword_1026595E0, *(&xmmword_1026595E0 + 1));
  }

  else
  {
    *v99 = xmmword_1026595E0;
    v100 = unk_1026595F0;
  }

  a1[2] = sub_10072C9B4(a2, v99, a1[2]);
  if (SHIBYTE(v100) < 0)
  {
    operator delete(v99[0]);
  }

  if (byte_1026596FF < 0)
  {
    sub_100007244(v97, xmmword_1026596E8, *(&xmmword_1026596E8 + 1));
  }

  else
  {
    *v97 = xmmword_1026596E8;
    v98 = unk_1026596F8;
  }

  a1[3] = sub_10072C9B4(a2, v97, a1[3]);
  if (SHIBYTE(v98) < 0)
  {
    operator delete(v97[0]);
  }

  strcpy(v96, "PrecachngAllowNPLOI");
  HIDWORD(v96[2]) = unk_101C8BD3C;
  a1[4] = sub_10072C9B4(a2, v96, a1[4]);
  if (SHIBYTE(v96[2]) < 0)
  {
    operator delete(v96[0]);
  }

  v95 = a1[6];
  a1[5] = 0;
  if (byte_10265960F >= 0)
  {
    v4 = &qword_1026595F8;
  }

  else
  {
    v4 = qword_1026595F8;
  }

  if (sub_10001CB4C(a2, v4, &v95, 0xFFFFFFFFLL))
  {
    a1[6] = v95;
    a1[5] = 1;
    if (qword_1025D46B0 != -1)
    {
      sub_10191F1DC();
    }

    v5 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      if (byte_10265960F >= 0)
      {
        v6 = &qword_1026595F8;
      }

      else
      {
        v6 = qword_1026595F8;
      }

      *buf = 136446466;
      *v225 = v6;
      *&v225[8] = 1026;
      *v226 = v95;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,read,%{public}s,value,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101920A00();
    }
  }

  v95 = a1[8];
  a1[7] = 0;
  if (byte_10265966F >= 0)
  {
    v7 = &qword_102659658;
  }

  else
  {
    v7 = qword_102659658;
  }

  if (sub_10001CB4C(a2, v7, &v95, 0xFFFFFFFFLL))
  {
    a1[8] = v95;
    a1[7] = 1;
    if (qword_1025D46B0 != -1)
    {
      sub_10191F1DC();
    }

    v8 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      if (byte_10265966F >= 0)
      {
        v9 = &qword_102659658;
      }

      else
      {
        v9 = qword_102659658;
      }

      *buf = 136446466;
      *v225 = v9;
      *&v225[8] = 1026;
      *v226 = v95;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,read,%{public}s,value,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101920B18();
    }
  }

  sub_10072B39C(a1, a2, 0, qword_102659430, qword_102659448, qword_102659460);
  sub_10072B39C(a1, a2, 1, qword_102659478, qword_102659490, qword_1026594A8);
  sub_10072B39C(a1, a2, 2, qword_1026594C0, qword_1026594D8, qword_1026594F0);
  *(a1 + 100) = vdup_n_s32(0x1770u);
  sub_10072B39C(a1, a2, 3, qword_1026597C0, qword_1026597D8, qword_1026597F0);
  *(a1 + 14) = 107374182450000;
  sub_10072B39C(a1, a2, 4, qword_102659700, qword_102659718, qword_102659730);
  *(a1 + 124) = vdup_n_s32(0x186A0u);
  sub_10072B39C(a1, a2, 5, qword_102659610, qword_102659628, qword_102659640);
  *(a1 + 17) = -4294917296;
  sub_10072B39C(a1, a2, 6, qword_102659670, qword_102659688, qword_1026596A0);
  if (byte_1026596CF < 0)
  {
    sub_100007244(v93, xmmword_1026596B8, *(&xmmword_1026596B8 + 1));
  }

  else
  {
    *v93 = xmmword_1026596B8;
    v94 = unk_1026596C8;
  }

  *(a1 + 37) = sub_10072CBA0(a2, v93, 70, 1, 500);
  if (SHIBYTE(v94) < 0)
  {
    operator delete(v93[0]);
  }

  if (byte_1026596E7 < 0)
  {
    sub_100007244(v91, xmmword_1026596D0, *(&xmmword_1026596D0 + 1));
  }

  else
  {
    *v91 = xmmword_1026596D0;
    v92 = unk_1026596E0;
  }

  *(a1 + 38) = sub_10072CBA0(a2, v91, 86400, 43200, 17280000);
  if (SHIBYTE(v92) < 0)
  {
    operator delete(v91[0]);
  }

  if (qword_1025D46B0 != -1)
  {
    sub_10191F1DC();
  }

  v10 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 5);
    v12 = *(a1 + 6);
    v13 = *(a1 + 7);
    v14 = *(a1 + 8);
    v15 = *(a1 + 9);
    v16 = *(a1 + 10);
    v17 = a1[1];
    v18 = a1[3];
    v20 = *(a1 + 3);
    v19 = *(a1 + 4);
    v21 = a1[4];
    v22 = *(a1 + 13);
    v23 = *(a1 + 14);
    *v225 = *a1;
    v24 = a1[8];
    *&v225[6] = v19;
    v25 = *(a1 + 38);
    *&v226[2] = v11;
    v26 = *(a1 + 40);
    v228 = v12;
    v230 = v13;
    v28 = *(a1 + 15);
    v27 = *(a1 + 16);
    v232 = v14;
    v236 = v16;
    v30 = *(a1 + 17);
    v29 = *(a1 + 18);
    v240 = v17;
    v244 = v18;
    v31 = *(a1 + 19);
    v32 = *(a1 + 20);
    v248 = v21;
    v252 = v22;
    v33 = *(a1 + 21);
    v34 = *(a1 + 22);
    v256 = v28;
    v260 = v24;
    v35 = *(a1 + 23);
    v36 = *(a1 + 24);
    v264 = v25;
    v268 = v26;
    v37 = *(a1 + 25);
    v38 = *(a1 + 26);
    v272 = v30;
    v276 = v31;
    v40 = *(a1 + 27);
    v39 = *(a1 + 28);
    v280 = v33;
    v284 = v35;
    v41 = *(a1 + 29);
    v42 = *(a1 + 30);
    v288 = v37;
    v292 = v40;
    v44 = *(a1 + 31);
    v43 = *(a1 + 32);
    v296 = v41;
    v300 = v44;
    v45 = *(a1 + 34);
    v304 = *(a1 + 33);
    v46 = *(a1 + 35);
    v47 = *(a1 + 36);
    v234 = v15;
    v308 = v46;
    v48 = *(a1 + 12);
    v238 = *(a1 + 11);
    v242 = a1[2];
    v246 = v20;
    v250 = v48;
    v254 = v23;
    v258 = a1[6];
    v262 = *(a1 + 37);
    v266 = *(a1 + 39);
    v270 = v27;
    v274 = v29;
    v278 = v32;
    v282 = v34;
    v286 = v36;
    v290 = v38;
    v294 = v39;
    v298 = v42;
    v302 = v43;
    v306 = v45;
    *&v225[4] = 1026;
    *v226 = 1026;
    v227 = 1026;
    v229 = 1026;
    v231 = 1026;
    v233 = 1026;
    v235 = 1026;
    v237 = 1026;
    v239 = 1026;
    v241 = 1026;
    v243 = 1026;
    v245 = 1026;
    v247 = 1026;
    v249 = 1026;
    v251 = 1026;
    v253 = 1026;
    v255 = 1026;
    v257 = 1026;
    v259 = 1026;
    v261 = 1026;
    v263 = 1026;
    v265 = 1026;
    v267 = 1026;
    v269 = 1026;
    v271 = 1026;
    v273 = 1026;
    v275 = 1026;
    v277 = 1026;
    v279 = 1026;
    v281 = 1026;
    v283 = 1026;
    v285 = 1026;
    v287 = 1026;
    v289 = 1026;
    v291 = 1026;
    v293 = 1026;
    v295 = 1026;
    v297 = 1026;
    v299 = 1026;
    v301 = 1026;
    v303 = 1026;
    v305 = 1026;
    v307 = 1026;
    v309 = 1026;
    v310 = v47;
    *buf = 67251456;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,CLGMTPS,enabled,%{public}d,refreshPeriod,%{public}d,refreshPeriodNPLOITourist,%{public}d,minBattery,%{public}d,minBatteryAggressive,%{public}d,xpcInterval,%{public}d,downloadSz,%{public}d,uploadSz,%{public}d,downloadTime,%{public}d,insideOut,%{public}d,diskIntensive,%{public}d,touristMode,%{public}d,maxLocAge,%{public}d,nextPLOI,%{public}d,sections,%{public}d,sectionsTourist,%{public}d,sectionsNPLOI,%{public}d,sectionsSE,%{public}d,allowSE,%{public}d,allowAggressive,%{public}d,maxAggressiveSections,%{public}d,timeWindowForMaxAggressive,%{public}d,touristDistance,%{public}d,workoutLookbackDays,%{public}d,home,%{public}d,%{public}d,%{public}d,work,%{public}d,%{public}d,%{public}d,school,%{public}d,%{public}d,%{public}d,nploi,%{public}d,%{public}d,%{public}d,tourist,%{public}d,%{public}d,%{public}d,sigEnv,%{public}d,%{public}d,%{public}d,touristSigEnv,%{public}d,%{public}d,%{public}d", buf, 0x110u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D46B0 != -1)
    {
      sub_10191F1DC();
    }

    v50 = *(a1 + 5);
    v51 = *(a1 + 6);
    v52 = *(a1 + 7);
    v53 = *(a1 + 8);
    v54 = *(a1 + 9);
    v55 = *(a1 + 10);
    v56 = a1[1];
    v57 = a1[3];
    v59 = *(a1 + 3);
    v58 = *(a1 + 4);
    v60 = a1[4];
    v62 = *(a1 + 13);
    v61 = *(a1 + 14);
    v63 = a1[8];
    v135[1] = *a1;
    v64 = *(a1 + 38);
    v137 = v58;
    v65 = *(a1 + 40);
    v139 = v50;
    v141 = v51;
    v66 = *(a1 + 15);
    v67 = *(a1 + 16);
    v143 = v52;
    v145 = v53;
    v68 = *(a1 + 17);
    v69 = *(a1 + 18);
    v147 = v54;
    v149 = v55;
    v70 = *(a1 + 19);
    v71 = *(a1 + 20);
    v153 = v56;
    v157 = v57;
    v73 = *(a1 + 21);
    v72 = *(a1 + 22);
    v161 = v60;
    v165 = v62;
    v74 = *(a1 + 23);
    v75 = *(a1 + 24);
    v169 = v66;
    v173 = v63;
    v76 = *(a1 + 25);
    v77 = *(a1 + 26);
    v177 = v64;
    v181 = v65;
    v79 = *(a1 + 27);
    v78 = *(a1 + 28);
    v185 = v68;
    v189 = v70;
    v81 = *(a1 + 29);
    v80 = *(a1 + 30);
    v193 = v73;
    v197 = v74;
    v83 = *(a1 + 31);
    v82 = *(a1 + 32);
    v201 = v76;
    v205 = v79;
    v84 = *(a1 + 33);
    v85 = *(a1 + 34);
    v209 = v81;
    v213 = v83;
    v86 = *(a1 + 35);
    v87 = *(a1 + 36);
    v217 = v84;
    v221 = v86;
    v88 = *(a1 + 12);
    v151 = *(a1 + 11);
    v155 = a1[2];
    v159 = v59;
    v163 = v88;
    v167 = v61;
    v171 = a1[6];
    v175 = *(a1 + 37);
    v179 = *(a1 + 39);
    v183 = v67;
    v187 = v69;
    v191 = v71;
    v195 = v72;
    v199 = v75;
    v203 = v77;
    v207 = v78;
    v211 = v80;
    v215 = v82;
    v219 = v85;
    v136 = 1026;
    v138 = 1026;
    v140 = 1026;
    v142 = 1026;
    v144 = 1026;
    v146 = 1026;
    v148 = 1026;
    v150 = 1026;
    v152 = 1026;
    v154 = 1026;
    v156 = 1026;
    v158 = 1026;
    v160 = 1026;
    v162 = 1026;
    v164 = 1026;
    v166 = 1026;
    v168 = 1026;
    v170 = 1026;
    v172 = 1026;
    v174 = 1026;
    v176 = 1026;
    v178 = 1026;
    v180 = 1026;
    v182 = 1026;
    v184 = 1026;
    v186 = 1026;
    v188 = 1026;
    v190 = 1026;
    v192 = 1026;
    v194 = 1026;
    v196 = 1026;
    v198 = 1026;
    v200 = 1026;
    v202 = 1026;
    v204 = 1026;
    v206 = 1026;
    v208 = 1026;
    v210 = 1026;
    v212 = 1026;
    v214 = 1026;
    v216 = 1026;
    v218 = 1026;
    v220 = 1026;
    v222 = 1026;
    v223 = v87;
    v135[0] = 67251456;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,CLGMTPS,enabled,%{public}d,refreshPeriod,%{public}d,refreshPeriodNPLOITourist,%{public}d,minBattery,%{public}d,minBatteryAggressive,%{public}d,xpcInterval,%{public}d,downloadSz,%{public}d,uploadSz,%{public}d,downloadTime,%{public}d,insideOut,%{public}d,diskIntensive,%{public}d,touristMode,%{public}d,maxLocAge,%{public}d,nextPLOI,%{public}d,sections,%{public}d,sectionsTourist,%{public}d,sectionsNPLOI,%{public}d,sectionsSE,%{public}d,allowSE,%{public}d,allowAggressive,%{public}d,maxAggressiveSections,%{public}d,timeWindowForMaxAggressive,%{public}d,touristDistance,%{public}d,workoutLookbackDays,%{public}d,home,%{public}d,%{public}d,%{public}d,work,%{public}d,%{public}d,%{public}d,school,%{public}d,%{public}d,%{public}d,nploi,%{public}d,%{public}d,%{public}d,tourist,%{public}d,%{public}d,%{public}d,sigEnv,%{public}d,%{public}d,%{public}d,touristSigEnv,%{public}d,%{public}d,%{public}d", v135, 272);
    v90 = v89;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::CLMapMatcherGeoTilesPrecachingConfig::fillFromMobileAssetNVP(const CLNameValuePair &)", "%s\n", v89);
    if (v90 != buf)
    {
      free(v90);
    }
  }

  return 1;
}

void sub_10072C7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10072C9B4(uint64_t a1, const char *a2, char a3)
{
  v3 = a2;
  HIBYTE(v9) = a3;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (sub_10001CB4C(a1, a2, &v9 + 7, 0xFFFFFFFFLL))
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10191F1DC();
    }

    v4 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      v5 = v3;
      if (v3[23] < 0)
      {
        v5 = *v3;
      }

      *buf = 136446466;
      v15 = v5;
      v16 = 1026;
      v17 = HIBYTE(v9);
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,read,%{public}s,value,%{public}d", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      if (v3[23] < 0)
      {
        v3 = *v3;
      }

      v10 = 136446466;
      v11 = v3;
      v12 = 1026;
      v13 = HIBYTE(v9);
      LODWORD(v9) = 18;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,read,%{public}s,value,%{public}d", &v10, v9);
      v8 = v7;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLMapMatcherOperatingPolicy::getField(const CLNameValuePair &, const std::string, BOOL)", "%s\n", v7);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return HIBYTE(v9);
}

uint64_t sub_10072CBA0(uint64_t a1, const char *a2, uint64_t a3, int a4, int a5)
{
  v7 = a3;
  v8 = a2;
  HIDWORD(v15) = a3;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  if (sub_10005BBE4(a1, a2, &v15 + 1))
  {
    if (SHIDWORD(v15) >= a4 && SHIDWORD(v15) <= a5)
    {
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v10 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v11 = v8;
        if (v8[23] < 0)
        {
          v11 = *v8;
        }

        *buf = 136446466;
        v21 = v11;
        v22 = 1026;
        v23 = HIDWORD(v15);
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,read,%{public}s,value,%{public}d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D46B0 != -1)
        {
          sub_10191F1DC();
        }

        if (v8[23] < 0)
        {
          v8 = *v8;
        }

        v16 = 136446466;
        v17 = v8;
        v18 = 1026;
        v19 = HIDWORD(v15);
        LODWORD(v15) = 18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,read,%{public}s,value,%{public}d", &v16, v15);
        v14 = v13;
        sub_100152C7C("Generic", 1, 0, 2, "T CLMapMatcherOperatingPolicy::getField(const CLNameValuePair &, const std::string, T, T, T) [T = int]", "%s\n", v13);
        if (v14 != buf)
        {
          free(v14);
        }
      }

      return HIDWORD(v15);
    }
  }

  return v7;
}

uint64_t sub_10072CDAC(uint64_t a1, void *a2)
{
  v2 = *a2;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) < 2)
  {
    return 0;
  }

  if (*(v2 + 23) < 0)
  {
    sub_100007244(__p, *v2, *(v2 + 1));
  }

  else
  {
    v6 = *v2;
    v62 = *(v2 + 2);
    *__p = v6;
  }

  v7 = HIBYTE(v62);
  v8 = SHIBYTE(v62);
  if (v62 < 0)
  {
    v7 = __p[1];
  }

  if (v7 == 2)
  {
    goto LABEL_9;
  }

  if (SHIBYTE(v62) < 0)
  {
    v58 = __p[0];
    if (__p[1] != 3)
    {
      v3 = 0;
      goto LABEL_126;
    }

LABEL_118:
    if (*v58 != 20306 || *(v58 + 2) != 87)
    {
      v3 = 0;
LABEL_123:
      if ((v8 & 0x80000000) == 0)
      {
        return v3;
      }

      v58 = __p[0];
LABEL_126:
      operator delete(v58);
      return v3;
    }

LABEL_9:
    v3 = 1;
    *a1 = 1;
    v10 = a2;
    v9 = *a2;
    v11 = v10[1] - v9;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    if (v12 >= 2)
    {
      v13 = *(v9 + 47);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = *(v9 + 4);
      }

      if (v13)
      {
        v15 = v9 + 24;
        if (v14 < 0)
        {
          v15 = *v15;
        }

        *(a1 + 64) = atof(v15);
      }

      if (v11 != 48)
      {
        v16 = *(v9 + 71);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = *(v9 + 7);
        }

        if (v16)
        {
          v18 = (v9 + 3);
          if (v17 < 0)
          {
            v18 = *v18;
          }

          *(a1 + 68) = atof(v18);
        }

        if (v12 >= 4)
        {
          v19 = *(v9 + 95);
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(v9 + 10);
          }

          if (v19)
          {
            v21 = v9 + 72;
            if (v20 < 0)
            {
              v21 = *v21;
            }

            *(a1 + 76) = atof(v21);
          }

          if (v11 != 96)
          {
            v22 = *(v9 + 119);
            v23 = v22;
            if ((v22 & 0x80u) != 0)
            {
              v22 = *(v9 + 13);
            }

            if (v22)
            {
              v24 = (v9 + 6);
              if (v23 < 0)
              {
                v24 = *v24;
              }

              *(a1 + 80) = atof(v24);
            }

            if (v12 >= 6)
            {
              v25 = *(v9 + 143);
              v26 = v25;
              if ((v25 & 0x80u) != 0)
              {
                v25 = *(v9 + 16);
              }

              if (v25)
              {
                v27 = v9 + 120;
                if (v26 < 0)
                {
                  v27 = *v27;
                }

                *(a1 + 88) = atof(v27);
              }

              if (v11 != 144)
              {
                v28 = *(v9 + 167);
                v29 = v28;
                if ((v28 & 0x80u) != 0)
                {
                  v28 = *(v9 + 19);
                }

                if (v28)
                {
                  v30 = (v9 + 9);
                  if (v29 < 0)
                  {
                    v30 = *v30;
                  }

                  *(a1 + 92) = atof(v30);
                }

                if (v12 >= 8)
                {
                  v31 = *(v9 + 191);
                  v32 = v31;
                  if ((v31 & 0x80u) != 0)
                  {
                    v31 = *(v9 + 22);
                  }

                  if (v31)
                  {
                    v33 = v9 + 168;
                    if (v32 < 0)
                    {
                      v33 = *v33;
                    }

                    *(a1 + 100) = atof(v33);
                  }

                  if (v11 != 192)
                  {
                    v34 = *(v9 + 215);
                    v35 = v34;
                    if ((v34 & 0x80u) != 0)
                    {
                      v34 = *(v9 + 25);
                    }

                    if (v34)
                    {
                      v36 = (v9 + 12);
                      if (v35 < 0)
                      {
                        v36 = *v36;
                      }

                      *(a1 + 104) = atof(v36);
                    }

                    if (v12 >= 0xA)
                    {
                      v37 = *(v9 + 239);
                      v38 = v37;
                      if ((v37 & 0x80u) != 0)
                      {
                        v37 = *(v9 + 28);
                      }

                      if (v37)
                      {
                        v39 = v9 + 216;
                        if (v38 < 0)
                        {
                          v39 = *v39;
                        }

                        *(a1 + 112) = atof(v39);
                      }

                      if (v11 != 240)
                      {
                        v40 = *(v9 + 263);
                        v41 = v40;
                        if ((v40 & 0x80u) != 0)
                        {
                          v40 = *(v9 + 31);
                        }

                        if (v40)
                        {
                          v42 = (v9 + 15);
                          if (v41 < 0)
                          {
                            v42 = *v42;
                          }

                          *(a1 + 116) = atof(v42);
                        }

                        if (v12 >= 0xC)
                        {
                          v43 = *(v9 + 287);
                          v44 = v43;
                          if ((v43 & 0x80u) != 0)
                          {
                            v43 = *(v9 + 34);
                          }

                          if (v43)
                          {
                            v45 = v9 + 264;
                            if (v44 < 0)
                            {
                              v45 = *v45;
                            }

                            *(a1 + 72) = atof(v45);
                          }

                          if (v11 != 288)
                          {
                            v46 = *(v9 + 311);
                            v47 = v46;
                            if ((v46 & 0x80u) != 0)
                            {
                              v46 = *(v9 + 37);
                            }

                            if (v46)
                            {
                              v48 = (v9 + 18);
                              if (v47 < 0)
                              {
                                v48 = *v48;
                              }

                              *(a1 + 84) = atof(v48);
                            }

                            if (v12 >= 0xE)
                            {
                              v49 = *(v9 + 335);
                              v50 = v49;
                              if ((v49 & 0x80u) != 0)
                              {
                                v49 = *(v9 + 40);
                              }

                              if (v49)
                              {
                                v51 = v9 + 312;
                                if (v50 < 0)
                                {
                                  v51 = *v51;
                                }

                                *(a1 + 96) = atof(v51);
                              }

                              if (v11 != 336)
                              {
                                v52 = *(v9 + 359);
                                v53 = v52;
                                if ((v52 & 0x80u) != 0)
                                {
                                  v52 = *(v9 + 43);
                                }

                                if (v52)
                                {
                                  v54 = (v9 + 21);
                                  if (v53 < 0)
                                  {
                                    v54 = *v54;
                                  }

                                  *(a1 + 108) = atof(v54);
                                }

                                if (v12 >= 0x10)
                                {
                                  v55 = *(v9 + 383);
                                  v56 = v55;
                                  if ((v55 & 0x80u) != 0)
                                  {
                                    v55 = *(v9 + 46);
                                  }

                                  if (v55)
                                  {
                                    v57 = v9 + 360;
                                    if (v56 < 0)
                                    {
                                      v57 = *v57;
                                    }

                                    *(a1 + 120) = atof(v57);
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_123;
  }

  if (SHIBYTE(v62) == 3)
  {
    v58 = __p;
    goto LABEL_118;
  }

  return 0;
}

void sub_10072D218(uint64_t **a1, uint64_t ***a2, __int128 *a3)
{
  if (sub_100192868(a1, a2))
  {
    v26[0].__r_.__value_.__r.__words[0] = a2;
    v7 = sub_10022DD34(a1, a2, &unk_101C66300, v26, &v34);
    v8 = *a3;
    v9 = a3[2];
    *(v7 + 30) = a3[1];
    *(v7 + 31) = v9;
    *(v7 + 29) = v8;
    v10 = a3[3];
    v11 = a3[4];
    v12 = a3[6];
    *(v7 + 34) = a3[5];
    *(v7 + 35) = v12;
    *(v7 + 32) = v10;
    *(v7 + 33) = v11;
    v13 = a3[7];
    v14 = a3[8];
    v15 = a3[9];
    *(v7 + 156) = *(a3 + 40);
    *(v7 + 37) = v14;
    *(v7 + 38) = v15;
    *(v7 + 36) = v13;
  }

  else
  {
    v16 = 0;
    memset(v26, 0, 24);
    do
    {
      v17 = &v26[v16];
      v17[1].__r_.__value_.__s.__data_[0] = 0;
      v17[1].__r_.__value_.__l.__size_ = 0xBFF0000000000000;
      v17[1].__r_.__value_.__s.__data_[16] = 0;
      *&v17[2].__r_.__value_.__l.__data_ = 0uLL;
      *&v17[2].__r_.__value_.__r.__words[2] = 0uLL;
      *&v17[3].__r_.__value_.__r.__words[1] = 0uLL;
      *&v17[4].__r_.__value_.__l.__data_ = 0uLL;
      v16 += 4;
      v17[4].__r_.__value_.__r.__words[2] = 0;
    }

    while (v16 != 16);
    *v27 = 16777472;
    v27[4] = 1;
    *&v27[5] = 0;
    *&v27[28] = xmmword_101C8BC90;
    *&v27[44] = xmmword_101C8BCA0;
    *&v27[60] = 400;
    *&v18 = -1;
    *(&v18 + 1) = -1;
    v28 = v18;
    v29 = v18;
    v30 = v18;
    v31 = v18;
    v32 = v18;
    *v33 = -1;
    *&v33[4] = xmmword_101C8BCB0;
    *&v27[12] = xmmword_101C8BCC0;
    if (sub_10001CF04(0, v6))
    {
      *&v27[16] = 4233600;
    }

    DWORD2(v28) = 125000;
    DWORD1(v29) = 125000;
    LODWORD(v30) = 125000;
    HIDWORD(v30) = 15000;
    DWORD2(v31) = 25000;
    DWORD1(v32) = -1;
    *v33 = -1;
    std::string::operator=(v26, a2);
    v19 = a3[9];
    v32 = a3[8];
    *v33 = v19;
    *&v33[16] = *(a3 + 40);
    v20 = a3[5];
    v28 = a3[4];
    v29 = v20;
    v21 = a3[7];
    v30 = a3[6];
    v31 = v21;
    v22 = a3[1];
    *v27 = *a3;
    *&v27[16] = v22;
    v23 = a3[3];
    *&v27[32] = a3[2];
    *&v27[48] = v23;
    sub_10072D498(a1, v26);
    for (i = 0; i != -384; i -= 96)
    {
      v34 = &v26[i / 0x18 + 16];
      sub_100731CAC(&v34);
      v34 = &v26[i / 0x18 + 15];
      sub_100731CAC(&v34);
      data = v26[i / 0x18 + 14].__r_.__value_.__l.__data_;
      if (data)
      {
        v26[i / 0x18 + 14].__r_.__value_.__l.__size_ = data;
        operator delete(data);
      }
    }

    if (SHIBYTE(v26[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26[0].__r_.__value_.__l.__data_);
    }
  }
}

void sub_10072D454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  for (i = 312; i != -72; i -= 96)
  {
    sub_100731C50(v15 + i);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10072D498(uint64_t **a1, uint64_t a2)
{
  if (sub_100192868(a1, a2))
  {
    v19[0] = a2;
    v4 = sub_10022DD34(a1, a2, &unk_101C66300, v19, &v24);
    std::string::operator=((v4 + 7), a2);
    v5 = v4 + 19;
    v6 = a2 + 56;
    v7 = 4;
    do
    {
      v8 = *(v6 - 32);
      *(v5 - 56) = *(v6 - 16);
      *(v5 - 9) = v8;
      if (v4 + 7 != a2)
      {
        sub_100731D80(v5 - 6, *(v6 - 8), *v6, (*v6 - *(v6 - 8)) >> 2);
        sub_100732438(v5 - 3, *(v6 + 16), *(v6 + 24), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 24) - *(v6 + 16)) >> 3));
        sub_100732438(v5, *(v6 + 40), *(v6 + 48), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 48) - *(v6 + 40)) >> 3));
      }

      v5 += 12;
      v6 += 96;
      --v7;
    }

    while (v7);
    v9 = *(a2 + 408);
    v10 = *(a2 + 440);
    *(v4 + 30) = *(a2 + 424);
    *(v4 + 31) = v10;
    *(v4 + 29) = v9;
    v11 = *(a2 + 456);
    v12 = *(a2 + 472);
    v13 = *(a2 + 504);
    *(v4 + 34) = *(a2 + 488);
    *(v4 + 35) = v13;
    *(v4 + 32) = v11;
    *(v4 + 33) = v12;
    v14 = *(a2 + 520);
    v15 = *(a2 + 536);
    v16 = *(a2 + 552);
    *(v4 + 156) = *(a2 + 568);
    *(v4 + 37) = v15;
    *(v4 + 38) = v16;
    *(v4 + 36) = v14;
  }

  else
  {
    sub_100731EAC(v19, a2, a2);
    sub_100732B8C(a1, v19, v19);
    for (i = 0; i != -384; i -= 96)
    {
      v24 = &v23[i + 48];
      sub_100731CAC(&v24);
      v24 = &v23[i + 24];
      sub_100731CAC(&v24);
      v18 = *&v23[i];
      if (v18)
      {
        *&v23[i + 8] = v18;
        operator delete(v18);
      }
    }

    if (v22 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v19[0]);
    }
  }
}

uint64_t sub_10072D67C(uint64_t **a1, char *a2, int a3, int a4, int8x16_t *a5)
{
  v8 = a2;
  if (sub_100192868(a1, a2) || (v8 = "ROW", (result = sub_100192868(a1, "ROW")) != 0))
  {
    v13 = v8;
    v11 = sub_10022DD34(a1, v8, &unk_101C66300, &v13, &v12);
    return sub_1007298FC(&v11[12 * a3 + 10], a4, a5);
  }

  return result;
}

uint64_t sub_10072D71C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  sub_1007328C8(a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 16) = 0;
  *v4 = 0;
  v44 = 0;
  if (sub_1004FC4F4(a2, @"CountryConfiguration", &v44))
  {
    sub_10072E32C(a1, &v44);
  }

  sub_10004FD18();
  if (sub_100185ADC(a2, "GeneralSettings", v43, 0xFFFFFFFFLL))
  {
    v42 = *(a1 + 56);
    if (sub_1000B9370(v43, "TrackRunProximityThreshold", &v42))
    {
      *(a1 + 56) = v42;
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v5 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v6 = *(a1 + 56);
        *buf = 134349056;
        v48 = v6;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,GeneralSettings,read trackRunProximityThreshold,%{public}.1lf", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191F310(buf);
        v18 = *(a1 + 56);
        v45 = 134349056;
        v46 = v18;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,GeneralSettings,read trackRunProximityThreshold,%{public}.1lf", &v45, 12);
        v20 = v19;
        sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readConfig(const CLNameValuePair &)", "%s\n", v19);
        if (v20 != buf)
        {
          free(v20);
        }
      }
    }

    v41 = *(a1 + 32);
    if (sub_10001CB4C(v43, "UseMapDataBufferForMM", &v41, 0xFFFFFFFFLL))
    {
      *(a1 + 32) = v41;
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v7 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        *buf = 67240192;
        LODWORD(v48) = v8;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,GeneralSettings,read useMapDataBuffer,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191F310(buf);
        v21 = *(a1 + 32);
        v45 = 67240192;
        LODWORD(v46) = v21;
        LODWORD(v28) = 8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,GeneralSettings,read useMapDataBuffer,%{public}d", &v45, v28);
        v23 = v22;
        sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readConfig(const CLNameValuePair &)", "%s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }
    }

    v40 = *(a1 + 33);
    if (sub_10001CB4C(v43, "UseXPCServiceForMapDataQueriesInMM", &v40, 0xFFFFFFFFLL))
    {
      *(a1 + 33) = v40;
      if (qword_1025D46B0 != -1)
      {
        sub_10191F1DC();
      }

      v9 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 33);
        *buf = 67240192;
        LODWORD(v48) = v10;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,GeneralSettings,read useXPCServiceForMapQueries,%{public}d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191F310(buf);
        v24 = *(a1 + 33);
        v45 = 67240192;
        LODWORD(v46) = v24;
        LODWORD(v28) = 8;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,GeneralSettings,read useXPCServiceForMapQueries,%{public}d", &v45, v28);
        v26 = v25;
        sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readConfig(const CLNameValuePair &)", "%s\n", v25);
        if (v26 != buf)
        {
          free(v26);
        }
      }
    }

    if ((atomic_load_explicit(&qword_102659850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659850))
    {
      sub_10000EC00(&xmmword_102659838, "MapsRoadDataBufferRadiusVehicle");
      __cxa_atexit(&std::string::~string, &xmmword_102659838, dword_100000000);
      __cxa_guard_release(&qword_102659850);
    }

    if (byte_10265984F < 0)
    {
      sub_100007244(&__p, xmmword_102659838, *(&xmmword_102659838 + 1));
    }

    else
    {
      __p = xmmword_102659838;
      v39 = unk_102659848;
    }

    *(a1 + 36) = sub_10072CBA0(v43, &__p, *(a1 + 36), 50, 2500);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(__p);
    }

    if ((atomic_load_explicit(&qword_102659870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659870))
    {
      sub_10000EC00(&xmmword_102659858, "MapsRoadDataBufferRadiusPedestrian");
      __cxa_atexit(&std::string::~string, &xmmword_102659858, dword_100000000);
      __cxa_guard_release(&qword_102659870);
    }

    if (byte_10265986F < 0)
    {
      sub_100007244(__dst, xmmword_102659858, *(&xmmword_102659858 + 1));
    }

    else
    {
      *__dst = xmmword_102659858;
      v37 = unk_102659868;
    }

    *(a1 + 40) = sub_10072CBA0(v43, __dst, *(a1 + 40), 50, 2500);
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((atomic_load_explicit(&qword_102659890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102659890))
    {
      sub_10000EC00(&xmmword_102659878, "MapsRoadDataBufferRadiusBicycle");
      __cxa_atexit(&std::string::~string, &xmmword_102659878, dword_100000000);
      __cxa_guard_release(&qword_102659890);
    }

    if (byte_10265988F < 0)
    {
      sub_100007244(v34, xmmword_102659878, *(&xmmword_102659878 + 1));
    }

    else
    {
      *v34 = xmmword_102659878;
      v35 = unk_102659888;
    }

    *(a1 + 44) = sub_10072CBA0(v43, v34, *(a1 + 44), 50, 2500);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    if ((atomic_load_explicit(&qword_1026598B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026598B0))
    {
      sub_10000EC00(&xmmword_102659898, "MapsBuildingDataBufferRadiusPedestrian");
      __cxa_atexit(&std::string::~string, &xmmword_102659898, dword_100000000);
      __cxa_guard_release(&qword_1026598B0);
    }

    if (byte_1026598AF < 0)
    {
      sub_100007244(v32, xmmword_102659898, *(&xmmword_102659898 + 1));
    }

    else
    {
      *v32 = xmmword_102659898;
      v33 = unk_1026598A8;
    }

    *(a1 + 48) = sub_10072CBA0(v43, v32, *(a1 + 48), 5, 1000);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }

    if ((atomic_load_explicit(&qword_1026598D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1026598D0))
    {
      sub_10000EC00(&xmmword_1026598B8, "MapsBuildingDataBufferRadiusBicycle");
      __cxa_atexit(&std::string::~string, &xmmword_1026598B8, dword_100000000);
      __cxa_guard_release(&qword_1026598D0);
    }

    if (byte_1026598CF < 0)
    {
      sub_100007244(v30, xmmword_1026598B8, *(&xmmword_1026598B8 + 1));
    }

    else
    {
      *v30 = xmmword_1026598B8;
      v31 = unk_1026598C8;
    }

    *(a1 + 52) = sub_10072CBA0(v43, v30, *(a1 + 52), 5, 1000);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    v29 = *(a1 + 24);
    if (sub_1000B9370(v43, "RoadWidthBufferForFitnessUseCase", &v29))
    {
      if (v29 < 0.0 || v29 > 50.0)
      {
        if (qword_1025D46B0 != -1)
        {
          sub_10191F1DC();
        }

        v16 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
        {
          *buf = 134349056;
          v48 = v29;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,GeneralSettings,read invalid roadWidthBufferForFitnessUseCase,%{public}.1lf", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10191F310(buf);
          v45 = 134349056;
          v46 = v29;
          LODWORD(v28) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,GeneralSettings,read invalid roadWidthBufferForFitnessUseCase,%{public}.1lf", &v45, v28);
          v15 = v27;
          sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readConfig(const CLNameValuePair &)", "%s\n", v27);
LABEL_74:
          if (v15 != buf)
          {
            free(v15);
          }
        }
      }

      else
      {
        *(a1 + 24) = v29;
        if (qword_1025D46B0 != -1)
        {
          sub_10191F1DC();
        }

        v11 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
        {
          v12 = *(a1 + 24);
          *buf = 134349056;
          v48 = v12;
          _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,GeneralSettings,read roadWidthBufferForFitnessUseCase,%{public}.1lf", buf, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10191F310(buf);
          v13 = *(a1 + 24);
          v45 = 134349056;
          v46 = v13;
          LODWORD(v28) = 12;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,GeneralSettings,read roadWidthBufferForFitnessUseCase,%{public}.1lf", &v45, v28);
          v15 = v14;
          sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readConfig(const CLNameValuePair &)", "%s\n", v14);
          goto LABEL_74;
        }
      }
    }
  }

  return sub_100005DA4();
}

void sub_10072E224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  __cxa_guard_abort(&qword_1026598D0);
  sub_100005DA4();
  _Unwind_Resume(a1);
}

void sub_10072E32C(uint64_t **a1, CFArrayRef *a2)
{
  if (*a2)
  {
    Count = CFArrayGetCount(*a2);
    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v3 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
    {
      *buf = 67240192;
      *&buf[4] = Count;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,CountryConfiguration,numberOfCountries,%{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101920C30();
    }

    if (Count >= 1)
    {
      v4 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*a2, v4);
        v6 = sub_100005548(v62, ValueAtIndex);
        v8 = 0;
        memset(__p, 0, 24);
        do
        {
          v9 = &__p[v8];
          v9[1].__r_.__value_.__s.__data_[0] = 0;
          v9[1].__r_.__value_.__l.__size_ = 0xBFF0000000000000;
          v9[1].__r_.__value_.__s.__data_[16] = 0;
          *&v9[2].__r_.__value_.__l.__data_ = 0uLL;
          *&v9[2].__r_.__value_.__r.__words[2] = 0uLL;
          *&v9[3].__r_.__value_.__r.__words[1] = 0uLL;
          *&v9[4].__r_.__value_.__l.__data_ = 0uLL;
          v8 += 4;
          v9[4].__r_.__value_.__r.__words[2] = 0;
        }

        while (v8 != 16);
        v48 = 16777472;
        v49 = 1;
        v50 = 0;
        v52 = xmmword_101C8BC90;
        v53 = xmmword_101C8BCA0;
        v54 = 400;
        *&v10 = -1;
        *(&v10 + 1) = -1;
        v55 = v10;
        v56 = v10;
        v57 = v10;
        v58 = v10;
        v59 = v10;
        v60 = -1;
        v61 = xmmword_101C8BCB0;
        v51 = xmmword_101C8BCC0;
        if (sub_10001CF04(v6, v7))
        {
          DWORD1(v51) = 4233600;
        }

        DWORD2(v55) = 125000;
        DWORD1(v56) = 125000;
        LODWORD(v57) = 125000;
        HIDWORD(v57) = 15000;
        DWORD2(v58) = 25000;
        DWORD1(v59) = -1;
        v60 = -1;
        if (sub_100175094(v62, "CountryCode", __p))
        {
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v11 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v12 = __p;
            }

            else
            {
              v12 = __p[0].__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            *&buf[4] = v12;
            _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,**ReadCountryCode**,%s", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F310(buf);
            v26 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
            v69 = 136315138;
            v70 = v26;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,**ReadCountryCode**,%s", &v69);
            v28 = v27;
            sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v27);
            if (v28 != buf)
            {
              free(v28);
            }
          }

          sub_10004FD18();
          if (sub_100185ADC(v62, "EnableActivityBasedPedestrianMapMatching", &v69, 0xFFFFFFFFLL))
          {
            if (qword_1025D46B0 != -1)
            {
              sub_10191F1DC();
            }

            v13 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
            {
              if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v14 = __p;
              }

              else
              {
                v14 = __p[0].__r_.__value_.__r.__words[0];
              }

              *buf = 136446210;
              *&buf[4] = v14;
              _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Reading PedestrianMM settings for,%{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191F310(buf);
              if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v32 = __p;
              }

              else
              {
                v32 = __p[0].__r_.__value_.__r.__words[0];
              }

              v67 = 136446210;
              v68 = v32;
              LODWORD(v42) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,Reading PedestrianMM settings for,%{public}s", &v67, v42);
              v34 = v33;
              sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v33);
              if (v34 != buf)
              {
                free(v34);
              }
            }

            sub_100728A34(v46, &v69);
          }

          sub_10004FD18();
          if (sub_100185ADC(v62, "EnableActivityBasedCyclingMapMatching", &v67, 0xFFFFFFFFLL))
          {
            if (qword_1025D46B0 != -1)
            {
              sub_10191F1DC();
            }

            v15 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
            {
              if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = __p;
              }

              else
              {
                v16 = __p[0].__r_.__value_.__r.__words[0];
              }

              *buf = 136446210;
              *&buf[4] = v16;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Reading CyclingMM settings for,%{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191F310(buf);
              v35 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
              v65 = 136446210;
              v66 = v35;
              LODWORD(v42) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,Reading CyclingMM settings for,%{public}s", &v65, v42);
              v37 = v36;
              sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v36);
              if (v37 != buf)
              {
                free(v37);
              }
            }

            sub_100728A34(v47, &v67);
          }

          sub_10004FD18();
          if (sub_100185ADC(v62, "GeoTilesPrecaching", &v65, 0xFFFFFFFFLL))
          {
            if (qword_1025D46B0 != -1)
            {
              sub_10191F1DC();
            }

            v17 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
            {
              if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v18 = __p;
              }

              else
              {
                v18 = __p[0].__r_.__value_.__r.__words[0];
              }

              *buf = 136446210;
              *&buf[4] = v18;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Reading GeoTilesPrecaching settings for,%{public}s", buf, 0xCu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191F310(buf);
              v38 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
              v63 = 136446210;
              v64 = v38;
              LODWORD(v42) = 12;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,Reading GeoTilesPrecaching settings for,%{public}s", &v63, v42);
              v40 = v39;
              sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v39);
              if (v40 != buf)
              {
                free(v40);
              }
            }

            sub_10072B6D8(&v48, &v65);
          }

          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v19 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v20 = __p;
            }

            else
            {
              v20 = __p[0].__r_.__value_.__r.__words[0];
            }

            *buf = 136446210;
            *&buf[4] = v20;
            _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Read all settings for,%{public}s", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F310(buf);
            v29 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
            v63 = 136446210;
            v64 = v29;
            LODWORD(v42) = 12;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,Read all settings for,%{public}s", &v63, v42);
            v31 = v30;
            sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v30);
            if (v31 != buf)
            {
              free(v31);
            }
          }

          sub_10072D498(a1, __p);
          sub_100005DA4();
          sub_100005DA4();
          sub_100005DA4();
        }

        else
        {
          if (qword_1025D46B0 != -1)
          {
            sub_10191F1DC();
          }

          v21 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_INFO, "CLMM,MA-OTA,Unable to get country code", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191F310(buf);
            LOWORD(v69) = 0;
            LODWORD(v42) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 1, "CLMM,MA-OTA,Unable to get country code", &v69, v42);
            v23 = v22;
            sub_100152C7C("Generic", 1, 0, 2, "void CLMapMatcherOperatingPolicy::CLMapMatcherMobileAssetReader::readCountrySpecificConfig(const CFArrayRef &)", "%s\n", v22);
            if (v23 != buf)
            {
              free(v23);
            }
          }
        }

        for (i = 0; i != -48; i -= 12)
        {
          *buf = &v47[i + 9];
          sub_100731CAC(buf);
          *buf = &v47[i + 6];
          sub_100731CAC(buf);
          v25 = v47[i + 3];
          if (v25)
          {
            v47[i + 4] = v25;
            operator delete(v25);
          }
        }

        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        sub_100005DA4();
        ++v4;
      }

      while (v4 != (Count & 0x7FFFFFFF));
    }
  }

  else
  {
    if (qword_1025D46B0 != -1)
    {
      sub_10191F0D8();
    }

    v41 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v41, OS_LOG_TYPE_ERROR, "CLMM,MA-OTA,NULL countryConfigArray", buf, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101920D20();
    }
  }
}

void sub_10072F044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p)
{
  sub_100005DA4();
  sub_100005DA4();
  sub_100005DA4();
  sub_1007323B0(&__p);
  sub_100005DA4();
  _Unwind_Resume(a1);
}

void sub_10072F128(double **a1, double *a2)
{
  sub_10072F464(a1);
  v4 = *a1;
  v5 = a1[1];
  if (v5 - *a1 >= 0x40)
  {
    v6 = *a2;
    v7 = v4 + 2;
    if (v4 + 2 == v5)
    {
      v9 = 0.0;
    }

    else
    {
      v8 = 0;
      v9 = 0.0;
      do
      {
        v10 = *(v7 - 2);
        v11 = *v7;
        if (v10 != *v7)
        {
          if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_9;
          }

          v13 = fabs(v10);
          v14 = fabs(v11);
          v15 = vabdd_f64(v10, v11);
          if (v13 >= v14)
          {
            v16 = v13;
          }

          else
          {
            v16 = v14;
          }

          if (v16 < 1.0)
          {
            v16 = 1.0;
          }

          if (v15 > v16 * 2.22044605e-16)
          {
LABEL_9:
            v9 = v9 + sub_10072F8D8(v7 - 2, v7);
            v8 += sub_10072FA34(v7 - 2, v7);
          }
        }

        v7 += 2;
      }

      while (v7 != v5);
      if (v8)
      {
        v17 = ((v8 >> 1) + 1);
        v18 = fabs(v9);
        v19 = -v18;
        v20 = -(v18 - v17 * 6.28318531);
        v21 = -(v19 + v17 * 6.28318531);
        if (v9 <= 0.0)
        {
          v9 = v20;
        }

        else
        {
          v9 = v21;
        }
      }
    }

    if (v6 * v6 * v9 < 0.0)
    {
      v23 = *a1;
      v22 = a1[1];
      if (*a1 != v22)
      {
        v24 = (v22 - 16);
        if (v24 > v23)
        {
          v25 = v23 + 2;
          do
          {
            v26 = *(v25 - 1);
            *(v25 - 1) = *v24;
            *v24 = v26;
            v24 -= 2;
            v27 = v25 >= v24;
            v25 += 2;
          }

          while (!v27);
        }
      }
    }
  }

  v30 = (a1 + 3);
  v28 = a1[3];
  for (i = v30[1]; v28 != i; v28 += 24)
  {
    sub_10072F464(v28);
    v31 = *v28;
    v32 = *(v28 + 8);
    if (v32 - *v28 >= 0x40)
    {
      v33 = *a2;
      v34 = v31 + 2;
      if (v31 + 2 == v32)
      {
        v36 = 0.0;
      }

      else
      {
        v35 = 0;
        v36 = 0.0;
        do
        {
          v37 = *(v34 - 2);
          v38 = *v34;
          if (v37 != *v34)
          {
            if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_39;
            }

            v40 = fabs(v37);
            v41 = fabs(v38);
            v42 = vabdd_f64(v37, v38);
            if (v40 >= v41)
            {
              v43 = v40;
            }

            else
            {
              v43 = v41;
            }

            if (v43 < 1.0)
            {
              v43 = 1.0;
            }

            if (v42 > v43 * 2.22044605e-16)
            {
LABEL_39:
              v36 = v36 + sub_10072F8D8(v34 - 2, v34);
              v35 += sub_10072FA34(v34 - 2, v34);
            }
          }

          v34 += 2;
        }

        while (v34 != v32);
        if (v35)
        {
          v44 = (v35 >> 1) + 1;
          v45 = fabs(v36);
          v46 = -v45;
          v47 = -(v45 - v44 * 6.28318531);
          if (v36 <= 0.0)
          {
            v36 = v47;
          }

          else
          {
            v36 = -(v46 + v44 * 6.28318531);
          }
        }
      }

      if (v33 * v33 * v36 > 0.0)
      {
        v49 = *v28;
        v48 = *(v28 + 8);
        if (*v28 != v48)
        {
          v50 = (v48 - 16);
          if (v50 > v49)
          {
            v51 = v49 + 2;
            do
            {
              v52 = *(v51 - 1);
              *(v51 - 1) = *v50;
              *v50 = v52;
              v50 -= 2;
              v27 = v51 >= v50;
              v51 += 2;
            }

            while (!v27);
          }
        }
      }
    }
  }
}

void sub_10072F464(double **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if ((v2 - *a1) >= 0x21)
  {
    v4 = *v1;
    v26 = v1[1];
    v27 = v4;
    sub_10072F654(&v27, &v26, 1);
    v5 = v26;
    v6 = v27;
    v7 = *(v2 - 2);
    v26 = *(v2 - 1);
    v27 = v7;
    sub_10072F654(&v27, &v26, 1);
    if (v6 != v27)
    {
      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }

      v11 = fabs(v6);
      v12 = fabs(v27);
      v13 = vabdd_f64(v6, v27);
      if (v11 < v12)
      {
        v11 = v12;
      }

      if (v11 < 1.0)
      {
        v11 = 1.0;
      }

      if (v13 > v11 * 2.22044605e-16)
      {
        goto LABEL_19;
      }
    }

    if (v5 != v26)
    {
      if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_19;
      }

      v8 = fabs(v5);
      v9 = fabs(v26);
      v10 = vabdd_f64(v5, v26);
      if (v8 < v9)
      {
        v8 = v9;
      }

      if (v8 < 1.0)
      {
        v8 = 1.0;
      }

      if (v10 > v8 * 2.22044605e-16)
      {
LABEL_19:
        v14 = *a1;
        v15 = a1[1];
        v16 = **a1;
        v17 = a1[2];
        if (v15 >= v17)
        {
          v19 = (v15 - v14) >> 4;
          if ((v19 + 1) >> 60)
          {
            sub_10028C64C();
          }

          v20 = v17 - v14;
          v21 = v20 >> 3;
          if (v20 >> 3 <= (v19 + 1))
          {
            v21 = v19 + 1;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            sub_1003E5FE8(a1, v22);
          }

          *(16 * v19) = v16;
          v18 = 16 * v19 + 16;
          v23 = a1[1] - *a1;
          v24 = (16 * v19 - v23);
          memcpy(v24, *a1, v23);
          v25 = *a1;
          *a1 = v24;
          a1[1] = v18;
          a1[2] = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v15 = v16;
          v18 = (v15 + 16);
        }

        a1[1] = v18;
      }
    }
  }
}

void sub_10072F654(double *a1, double *a2, int a3)
{
  v6 = *a1;
  v7 = fabs(*a1);
  v8 = 180.0;
  if (v7 == 180.0)
  {
    goto LABEL_2;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v10 = fabs(v7 + -180.0);
    v8 = 180.0;
    if (v7 < 180.0)
    {
      v7 = 180.0;
    }

    if (v7 < 1.0)
    {
      v7 = 1.0;
    }

    if (v10 <= v7 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  v8 = 180.0;
  if (v6 <= 180.0)
  {
    if (v6 >= -180.0)
    {
      goto LABEL_3;
    }

    v8 = fmod(v6 + -180.0, 360.0) + 180.0;
    goto LABEL_2;
  }

  v6 = fmod(v6 + 180.0, 360.0) + -180.0;
  *a1 = v6;
  if (v6 == -180.0)
  {
    goto LABEL_2;
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v11 = fabs(v6);
    v8 = 180.0;
    v12 = fabs(v6 + 180.0);
    if (v11 < 180.0)
    {
      v11 = 180.0;
    }

    if (v11 < 1.0)
    {
      v11 = 1.0;
    }

    if (v12 <= v11 * 2.22044605e-16)
    {
LABEL_2:
      *a1 = v8;
      v6 = v8;
    }
  }

  if (!a3)
  {
    goto LABEL_27;
  }

LABEL_3:
  v9 = fabs(*a2);
  if (v9 == 90.0)
  {
    goto LABEL_5;
  }

  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  v13 = fabs(v9 + -90.0);
  if (v9 < 90.0)
  {
    v9 = 90.0;
  }

  if (v9 < 1.0)
  {
    v9 = 1.0;
  }

  if (v13 <= v9 * 2.22044605e-16)
  {
LABEL_5:
    *a1 = 0.0;
    v6 = 0.0;
  }

  else
  {
LABEL_27:
    if (v6 <= -180.0)
    {
      goto LABEL_44;
    }
  }

  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v14 = fabs(v6);
    v15 = fabs(v6 + 180.0);
    if (v14 < 180.0)
    {
      v14 = 180.0;
    }

    if (v14 < 1.0)
    {
      v14 = 1.0;
    }

    if (v15 <= v14 * 2.22044605e-16)
    {
LABEL_44:
      sub_101920E24();
    }
  }

  if (v6 > 180.0)
  {
    if (v6 == INFINITY)
    {
      goto LABEL_45;
    }

    v16 = fabs(v6 + -180.0);
    if (v6 < 180.0)
    {
      v6 = 180.0;
    }

    if (v6 < 1.0)
    {
      v6 = 1.0;
    }

    if (v16 > v6 * 2.22044605e-16)
    {
LABEL_45:
      sub_101920E50();
    }
  }
}

double sub_10072F8D8(double *a1, double *a2)
{
  v2 = a1[1];
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v23 = a1;
    v16 = a2;
    sub_101920E7C();
    a2 = v16;
    a1 = v23;
  }

  v3 = *&qword_1025D80D0;
  v4 = a2[1];
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v20 = a2;
    v24 = a1;
    v17 = v3;
    sub_101920E7C();
    v3 = v17;
    a2 = v20;
    a1 = v24;
  }

  v5 = *&qword_1025D80D0;
  v6 = *a2;
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v25 = a1;
    v21 = v3;
    v18 = v6;
    sub_101920E7C();
    v6 = v18;
    v3 = v21;
    a1 = v25;
  }

  v7 = *&qword_1025D80D0;
  v8 = *a1;
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v19 = v6;
    v22 = v3;
    v26 = v7;
    sub_101920E7C();
    v3 = v22;
    v7 = v26;
    v6 = v19;
  }

  v9 = v6 * v7;
  v10 = tan(v2 * v3 * 0.5);
  v11 = tan(v4 * v5 * 0.5);
  v12 = (v10 + v11) / (v10 * v11 + 1.0);
  v13 = tan((v9 - v8 * *&qword_1025D80D0) * 0.5);
  v14 = atan(v12 * v13);
  return v14 + v14;
}

BOOL sub_10072FA34(double *a1, double *a2)
{
  v2 = *a1;
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v24 = a2;
    v18 = a1;
    v22 = v2;
    sub_101920E7C();
    v2 = v22;
    a1 = v18;
    a2 = v24;
  }

  v3 = *&qword_1025D80D0;
  v4 = *a1;
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v25 = a2;
    v23 = v2;
    v15 = v3;
    v19 = v4;
    sub_101920E7C();
    v3 = v15;
    v4 = v19;
    v2 = v23;
    a2 = v25;
  }

  v5 = v2 * v3;
  v6 = floor(v4 * *&qword_1025D80D0 / 6.28318531);
  v7 = *a2;
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v26 = a2;
    v16 = v6;
    v20 = v5;
    v14 = v7;
    sub_101920E7C();
    v7 = v14;
    v6 = v16;
    v5 = v20;
    a2 = v26;
  }

  v8 = v5 - v6 * 6.28318531;
  v9 = v7 * *&qword_1025D80D0;
  v10 = *a2;
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v27 = v8;
    v17 = v9;
    v21 = v10;
    sub_101920E7C();
    v9 = v17;
    v10 = v21;
    v8 = v27;
  }

  result = 0;
  v12 = v9 - floor(v10 * *&qword_1025D80D0 / 6.28318531) * 6.28318531;
  if (v8 >= v12)
  {
    v13 = v8;
  }

  else
  {
    v13 = v12;
  }

  if (v12 < v8)
  {
    v8 = v12;
  }

  if (v13 > 3.14159265 && v8 < 3.14159265)
  {
    return v13 - v8 > 3.14159265;
  }

  return result;
}

uint64_t *sub_10072FBB8(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *(v4 + 8) = *(a2 + 8);
  *v4 = v5;
  if (*(a2 + 39) < 0)
  {
    sub_100007244((v4 + 16), a2[2], a2[3]);
  }

  else
  {
    v6 = *(a2 + 1);
    *(v4 + 32) = a2[4];
    *(v4 + 16) = v6;
  }

  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  sub_1004BF900((v4 + 40), a2[5], a2[6], (a2[6] - a2[5]) >> 4);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  result = sub_10072FE9C((v4 + 64), a2[8], a2[9], 0xAAAAAAAAAAAAAAABLL * ((a2[9] - a2[8]) >> 3));
  *(a1 + 8) = v4 + 88;
  return result;
}

uint64_t sub_10072FCB0(uint64_t *a1, uint64_t *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10028C64C();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_100730010(a1, v6);
  }

  v7 = 88 * v2;
  v16 = 0;
  v17 = v7;
  v18 = (88 * v2);
  v8 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *v7 = v8;
  if (*(a2 + 39) < 0)
  {
    sub_100007244((v7 + 16), a2[2], a2[3]);
  }

  else
  {
    v9 = *(a2 + 1);
    *(88 * v2 + 0x20) = a2[4];
    *(88 * v2 + 0x10) = v9;
  }

  *(88 * v2 + 0x28) = 0;
  *(88 * v2 + 0x30) = 0;
  *(88 * v2 + 0x38) = 0;
  sub_1004BF900((v7 + 40), a2[5], a2[6], (a2[6] - a2[5]) >> 4);
  *(88 * v2 + 0x40) = 0;
  *(88 * v2 + 0x48) = 0;
  *(88 * v2 + 0x50) = 0;
  sub_10072FE9C((v7 + 64), a2[8], a2[9], 0xAAAAAAAAAAAAAAABLL * ((a2[9] - a2[8]) >> 3));
  *&v18 = v18 + 88;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_10073006C(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100730258(&v16);
  return v15;
}

void sub_10072FE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v10 = *v7;
  if (*v7)
  {
    *(v8 + 48) = v10;
    operator delete(v10);
  }

  if (*(v8 + 39) < 0)
  {
    operator delete(*(v8 + 16));
  }

  sub_100730258(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10072FE9C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002887D4(result, a4);
  }

  return result;
}

void sub_10072FF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1002EC52C(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10072FF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_1004BF900(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 4);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10072FFD8(v8);
  return v4;
}

uint64_t sub_10072FFD8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_10038AFD8(a1);
  }

  return a1;
}

void sub_100730010(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10073006C(uint64_t a1, void **a2, void **a3, uint64_t a4)
{
  v15 = a4;
  v14 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    do
    {
      v6 = *v5;
      *(a4 + 8) = *(v5 + 8);
      *a4 = v6;
      v7 = *(v5 + 1);
      *(a4 + 32) = v5[4];
      *(a4 + 16) = v7;
      v5[3] = 0;
      v5[4] = 0;
      v5[2] = 0;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 40) = *(v5 + 5);
      *(a4 + 56) = v5[7];
      v5[5] = 0;
      v5[6] = 0;
      v5[7] = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 64) = *(v5 + 4);
      *(a4 + 80) = v5[10];
      v5[8] = 0;
      v5[9] = 0;
      v5[10] = 0;
      v5 += 11;
      a4 += 88;
    }

    while (v5 != a3);
    v15 = a4;
    v13 = 1;
    if (a2 != a3)
    {
      v8 = a2 + 8;
      do
      {
        v16 = v8;
        sub_1002EC52C(&v16);
        v9 = *(v8 - 3);
        if (v9)
        {
          *(v8 - 2) = v9;
          operator delete(v9);
        }

        if (*(v8 - 25) < 0)
        {
          operator delete(*(v8 - 6));
        }

        v10 = v8 + 3;
        v8 += 11;
      }

      while (v10 != a3);
    }
  }

  return sub_100730198(v12);
}

uint64_t sub_100730198(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1007301E4(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1007301E4(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v11[3] = v5;
    v11[4] = v6;
    v8 = a3 - 3;
    do
    {
      v11[0] = v8;
      sub_1002EC52C(v11);
      v9 = *(v8 - 3);
      if (v9)
      {
        *(v8 - 2) = v9;
        operator delete(v9);
      }

      if (*(v8 - 25) < 0)
      {
        operator delete(*(v8 - 6));
      }

      v10 = v8 - 8;
      v8 -= 11;
    }

    while (v10 != a5);
  }
}

uint64_t sub_100730258(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    v6 = (i - 24);
    sub_1002EC52C(&v6);
    v4 = *(i - 48);
    if (v4)
    {
      *(i - 40) = v4;
      operator delete(v4);
    }

    if (*(i - 49) < 0)
    {
      operator delete(*(i - 72));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007302E4(uint64_t a1)
{
  v4 = (a1 + 64);
  sub_1002EC52C(&v4);
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_100730340(double *a1, double **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if ((v3 - *a2) < 0x40)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v2 + 2 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  do
  {
    if (!sub_1007304E0(&v13, a1, v2, v2 + 2, &v14))
    {
      break;
    }

    v6 = v2 + 4;
    v2 += 2;
  }

  while (v6 != v3);
  if (v16)
  {
    return 0;
  }

  if (v15 && HIDWORD(v15))
  {
    if (v15 < 1)
    {
      if (!v14)
      {
        return 0xFFFFFFFFLL;
      }
    }

    else if (!(v14 + HIDWORD(v14)))
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (!v14)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2[3];
  v8 = a2[4];
  while (v9 != v8)
  {
    v10 = *v9;
    v11 = *(v9 + 8);
    if (v11 - *v9 >= 0x40)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      if (v10 + 2 != v11)
      {
        do
        {
          if (!sub_1007304E0(&v13, a1, v10, v10 + 2, &v14))
          {
            break;
          }

          v12 = v10 + 4;
          v10 += 2;
        }

        while (v12 != v11);
        if (v16)
        {
          return 0;
        }

        if (v15 && HIDWORD(v15))
        {
          if (v15 < 1)
          {
            if (v14)
            {
              return 0xFFFFFFFFLL;
            }
          }

          else if (v14 + HIDWORD(v14))
          {
            return 0xFFFFFFFFLL;
          }
        }

        else if (v14)
        {
          return 0xFFFFFFFFLL;
        }
      }

      v8 = a2[4];
    }

    v9 += 24;
  }

  return 1;
}

uint64_t sub_1007304E0(uint64_t a1, double *a2, double *a3, double *a4, uint64_t a5)
{
  v19 = 0;
  v18 = 0;
  if (!sub_100730A08(a2, a3, a4, a5, &v19 + 1, &v19, &v18))
  {
    v12 = sub_10073152C(a2, a3, a4, HIBYTE(v19), v19, v18);
    v16 = v12;
    v17 = BYTE4(v12);
    if (v12)
    {
      if ((v12 & 0x100000000) == 0)
      {
        if (v12 == 1 || v12 == -1)
        {
          if (HIBYTE(v19))
          {
            v14 = a3;
          }

          else
          {
            v14 = a4;
          }

          v15 = sub_100730664(a1, a2, v14, &v16);
        }

        else
        {
          if (v18)
          {
            if (v12 < 1)
            {
              v10 = -1;
            }

            else
            {
              v10 = 1;
            }

            if (180.0 - a3[1] - a4[1] <= 180.0)
            {
              v10 = -v10;
            }

LABEL_24:
            if (v12 * v10 >= 1)
            {
              *a5 += v12;
            }

            *(a5 + 8) += v12;
            goto LABEL_2;
          }

          v15 = sub_100730850(a3, a4, a2);
        }

        v10 = v15;
        if (!v15)
        {
          *(a5 + 16) = 1;
          *a5 = 0;
          return v10 & 1;
        }

        LODWORD(v12) = v16;
        goto LABEL_24;
      }

      *(a5 + 4) -= v12;
      *(a5 + 12) -= v12;
    }
  }

LABEL_2:
  LOBYTE(v10) = *(a5 + 16) ^ 1;
  return v10 & 1;
}

uint64_t sub_100730664(uint64_t a1, double *a2, double *a3, int *a4)
{
  v8 = a2[1];
  v9 = a3[1];
  if (v8 == v9)
  {
    return 0;
  }

  v25[2] = v7;
  v25[3] = v6;
  v25[6] = v4;
  v25[7] = v5;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  v21 = fabs(v8);
  v22 = fabs(v9);
  v23 = vabdd_f64(v8, v9);
  if (v21 < v22)
  {
    v21 = v22;
  }

  if (v21 < 1.0)
  {
    v21 = 1.0;
  }

  if (v23 > v21 * 2.22044605e-16)
  {
LABEL_7:
    v13 = *a3;
    v25[0] = *a3;
    v25[1] = v9;
    v24[1] = v9;
    v14 = -1.0;
    if (*a4 > 0)
    {
      v14 = 1.0;
    }

    v15 = v13 + v14;
    v16 = fabs(v15);
    v17 = 180.0;
    if (v16 != 180.0)
    {
      if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_18;
      }

      v18 = fabs(v16 + -180.0);
      v17 = 180.0;
      if (v16 < 180.0)
      {
        v16 = 180.0;
      }

      if (v16 < 1.0)
      {
        v16 = 1.0;
      }

      if (v18 > v16 * 2.22044605e-16)
      {
LABEL_18:
        v17 = 180.0;
        if (v15 <= 180.0)
        {
          if (v15 >= -180.0)
          {
            goto LABEL_11;
          }

          v17 = fmod(v15 + -180.0, 360.0) + 180.0;
        }

        else
        {
          v15 = fmod(v15 + 180.0, 360.0) + -180.0;
          if (v15 != -180.0)
          {
            if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_11;
            }

            v19 = fabs(v15);
            v17 = 180.0;
            v20 = fabs(v15 + 180.0);
            if (v19 < 180.0)
            {
              v19 = 180.0;
            }

            if (v19 < 1.0)
            {
              v19 = 1.0;
            }

            if (v20 > v19 * 2.22044605e-16)
            {
              goto LABEL_11;
            }
          }
        }
      }
    }

    v15 = v17;
LABEL_11:
    v24[0] = v15;
    return sub_100730850(v25, v24, a2);
  }

  return 0;
}

uint64_t sub_100730850(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v14 = a2;
    v19 = a3;
    v11 = a1;
    v10 = v3;
    sub_101920E7C();
    v3 = v10;
    a1 = v11;
    a2 = v14;
    a3 = v19;
  }

  v30 = v3 * *&qword_1025D80D0;
  v4 = a1[1];
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v15 = a2;
    v20 = a3;
    v12 = v4;
    sub_101920E7C();
    v4 = v12;
    a2 = v15;
    a3 = v20;
  }

  v29 = v4 * *&qword_1025D80D0;
  v5 = *a2;
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v16 = a2;
    v21 = a3;
    v13 = v5;
    sub_101920E7C();
    v5 = v13;
    a2 = v16;
    a3 = v21;
  }

  v28 = v5 * *&qword_1025D80D0;
  v6 = a2[1];
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v22 = a3;
    v17 = v6;
    sub_101920E7C();
    v6 = v17;
    a3 = v22;
  }

  v27 = v6 * *&qword_1025D80D0;
  v7 = *a3;
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v23 = a3;
    v18 = v7;
    sub_101920E7C();
    v7 = v18;
    a3 = v23;
  }

  v26 = v7 * *&qword_1025D80D0;
  v8 = a3[1];
  if ((atomic_load_explicit(byte_1025D80D8, memory_order_acquire) & 1) == 0)
  {
    v24 = v8;
    sub_101920E7C();
    v8 = v24;
  }

  v25 = v8 * *&qword_1025D80D0;
  return sub_100731AF8(&v30, &v29, &v28, &v27, &v26, &v25);
}

uint64_t sub_100730A08(double *a1, double *a2, double *a3, uint64_t a4, BOOL *a5, BOOL *a6, BOOL *a7)
{
  v12 = *a1;
  v11 = a1[1];
  v14 = *a2;
  v13 = a2[1];
  v16 = *a3;
  v15 = a3[1];
  v17 = vabdd_f64(*a1, *a2);
  v18 = 180.0;
  if (v17 == 180.0)
  {
    goto LABEL_2;
  }

  v19 = v12 - v14;
  if (COERCE__INT64(fabs(v12 - v14)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v21 = fabs(v17 + -180.0);
    v18 = 180.0;
    if (v17 < 180.0)
    {
      v17 = 180.0;
    }

    if (v17 < 1.0)
    {
      v17 = 1.0;
    }

    if (v21 <= v17 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

  v18 = 180.0;
  if (v19 <= 180.0)
  {
    if (v19 >= -180.0)
    {
      goto LABEL_3;
    }

    v18 = fmod(v19 + -180.0, 360.0) + 180.0;
LABEL_2:
    v19 = v18;
    goto LABEL_3;
  }

  v19 = fmod(v19 + 180.0, 360.0) + -180.0;
  if (v19 == -180.0)
  {
    goto LABEL_2;
  }

  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v22 = fabs(v19);
    v18 = 180.0;
    v23 = fabs(v19 + 180.0);
    if (v22 < 180.0)
    {
      v22 = 180.0;
    }

    if (v22 < 1.0)
    {
      v22 = 1.0;
    }

    if (v23 <= v22 * 2.22044605e-16)
    {
      goto LABEL_2;
    }
  }

LABEL_3:
  if (v19 == 0.0)
  {
    v20 = 1;
  }

  else if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v24 = fabs(v19);
    v25 = 1.0;
    if (v24 >= 1.0)
    {
      v25 = v24;
    }

    v20 = v24 <= v25 * 2.22044605e-16;
  }

  else
  {
    v20 = 0;
  }

  v26 = vabdd_f64(v12, v16);
  v27 = 180.0;
  if (v26 == 180.0)
  {
    goto LABEL_26;
  }

  v28 = v12 - v16;
  if (COERCE__INT64(fabs(v12 - v16)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v30 = fabs(v26 + -180.0);
    v27 = 180.0;
    if (v26 < 180.0)
    {
      v26 = 180.0;
    }

    if (v26 < 1.0)
    {
      v26 = 1.0;
    }

    if (v30 <= v26 * 2.22044605e-16)
    {
      goto LABEL_26;
    }
  }

  v27 = 180.0;
  if (v28 <= 180.0)
  {
    if (v28 >= -180.0)
    {
      goto LABEL_27;
    }

    v27 = fmod(v28 + -180.0, 360.0) + 180.0;
LABEL_26:
    v28 = v27;
    goto LABEL_27;
  }

  v28 = fmod(v28 + 180.0, 360.0) + -180.0;
  if (v28 == -180.0)
  {
    goto LABEL_26;
  }

  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v31 = fabs(v28);
    v27 = 180.0;
    v32 = fabs(v28 + 180.0);
    if (v31 < 180.0)
    {
      v31 = 180.0;
    }

    if (v31 < 1.0)
    {
      v31 = 1.0;
    }

    if (v32 <= v31 * 2.22044605e-16)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  if (v28 == 0.0)
  {
    v29 = 1;
  }

  else if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v33 = fabs(v28);
    v34 = 1.0;
    if (v33 >= 1.0)
    {
      v34 = v33;
    }

    v29 = v33 <= v34 * 2.22044605e-16;
  }

  else
  {
    v29 = 0;
  }

  v35 = v12 + dbl_101C8BCD0[v12 <= 0.0];
  if (v20)
  {
    goto LABEL_50;
  }

  v37 = vabdd_f64(v35, v14);
  v38 = 180.0;
  if (v37 == 180.0)
  {
    goto LABEL_52;
  }

  v39 = v35 - v14;
  if (COERCE__INT64(fabs(v35 - v14)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v56 = fabs(v37 + -180.0);
    v38 = 180.0;
    if (v37 < 180.0)
    {
      v37 = 180.0;
    }

    if (v37 < 1.0)
    {
      v37 = 1.0;
    }

    if (v56 <= v37 * 2.22044605e-16)
    {
      goto LABEL_52;
    }
  }

  v38 = 180.0;
  if (v39 > 180.0)
  {
    v39 = fmod(v39 + 180.0, 360.0) + -180.0;
    if (v39 != -180.0)
    {
      if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_53;
      }

      v57 = fabs(v39);
      v38 = 180.0;
      v58 = fabs(v39 + 180.0);
      if (v57 < 180.0)
      {
        v57 = 180.0;
      }

      if (v57 < 1.0)
      {
        v57 = 1.0;
      }

      if (v58 > v57 * 2.22044605e-16)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_52;
  }

  if (v39 < -180.0)
  {
    v38 = fmod(v39 + -180.0, 360.0) + 180.0;
LABEL_52:
    v39 = v38;
  }

LABEL_53:
  if (v39 == 0.0)
  {
    goto LABEL_54;
  }

  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v59 = fabs(v39);
    v60 = 1.0;
    if (v59 >= 1.0)
    {
      v60 = v59;
    }

    if (v59 <= v60 * 2.22044605e-16)
    {
LABEL_54:
      v36 = 0;
      goto LABEL_55;
    }
  }

  v61 = fabs(v13);
  if (v61 != 90.0)
  {
    if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v84 = fabs(v61 + -90.0);
      if (v61 < 90.0)
      {
        v61 = 90.0;
      }

      if (v61 < 1.0)
      {
        v61 = 1.0;
      }

      v40 = v84 <= v61 * 2.22044605e-16;
    }

    else
    {
      v40 = 0;
    }

    v36 = 1;
    goto LABEL_56;
  }

LABEL_50:
  v36 = 1;
LABEL_55:
  v40 = 1;
LABEL_56:
  *a5 = v40;
  if (v29)
  {
    goto LABEL_57;
  }

  v42 = vabdd_f64(v35, v16);
  v43 = 180.0;
  if (v42 == 180.0)
  {
    goto LABEL_59;
  }

  v44 = v35 - v16;
  if (COERCE__INT64(fabs(v35 - v16)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v62 = fabs(v42 + -180.0);
    v43 = 180.0;
    if (v42 < 180.0)
    {
      v42 = 180.0;
    }

    if (v42 < 1.0)
    {
      v42 = 1.0;
    }

    if (v62 <= v42 * 2.22044605e-16)
    {
      goto LABEL_59;
    }
  }

  v43 = 180.0;
  if (v44 <= 180.0)
  {
    if (v44 >= -180.0)
    {
      goto LABEL_60;
    }

    v43 = fmod(v44 + -180.0, 360.0) + 180.0;
    goto LABEL_59;
  }

  v44 = fmod(v44 + 180.0, 360.0) + -180.0;
  if (v44 == -180.0)
  {
    goto LABEL_59;
  }

  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v63 = fabs(v44);
    v43 = 180.0;
    v64 = fabs(v44 + 180.0);
    if (v63 < 180.0)
    {
      v63 = 180.0;
    }

    if (v63 < 1.0)
    {
      v63 = 1.0;
    }

    if (v64 <= v63 * 2.22044605e-16)
    {
LABEL_59:
      v44 = v43;
    }
  }

LABEL_60:
  if (v44 == 0.0)
  {
    goto LABEL_61;
  }

  if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v65 = fabs(v44);
    v66 = 1.0;
    if (v65 >= 1.0)
    {
      v66 = v65;
    }

    if (v65 <= v66 * 2.22044605e-16)
    {
LABEL_61:
      v41 = 0;
      goto LABEL_62;
    }
  }

  v67 = fabs(v15);
  if (v67 == 90.0)
  {
LABEL_57:
    v41 = 1;
LABEL_62:
    v45 = 1;
    goto LABEL_63;
  }

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v85 = fabs(v67 + -90.0);
    if (v67 < 90.0)
    {
      v67 = 90.0;
    }

    if (v67 < 1.0)
    {
      v67 = 1.0;
    }

    v45 = v85 <= v67 * 2.22044605e-16;
  }

  else
  {
    v45 = 0;
  }

  v41 = 1;
LABEL_63:
  *a6 = v45;
  v46 = vabdd_f64(v16, v14);
  v47 = 180.0;
  if (v46 == 180.0)
  {
    goto LABEL_64;
  }

  v48 = v16 - v14;
  if (COERCE__INT64(fabs(v16 - v14)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v51 = fabs(v46 + -180.0);
    v47 = 180.0;
    if (v46 < 180.0)
    {
      v46 = 180.0;
    }

    if (v46 < 1.0)
    {
      v46 = 1.0;
    }

    if (v51 <= v46 * 2.22044605e-16)
    {
      goto LABEL_64;
    }
  }

  v47 = 180.0;
  if (v48 <= 180.0)
  {
    if (v48 >= -180.0)
    {
      goto LABEL_65;
    }

    v47 = fmod(v48 + -180.0, 360.0) + 180.0;
LABEL_64:
    v48 = v47;
    goto LABEL_65;
  }

  v52 = fmod(v48 + 180.0, 360.0);
  v48 = v52 + -180.0;
  if (v52 + -180.0 == -180.0)
  {
    goto LABEL_64;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v52 + -180.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v53 = fabs(v48);
    v47 = 180.0;
    v54 = fabs(v48 + 180.0);
    if (v53 < 180.0)
    {
      v53 = 180.0;
    }

    if (v53 < 1.0)
    {
      v53 = 1.0;
    }

    if (v54 <= v53 * 2.22044605e-16)
    {
      goto LABEL_64;
    }
  }

LABEL_65:
  if (v48 == 180.0)
  {
    *a7 = 1;
LABEL_67:
    v49 = *a5 || *a6;
    *a6 = v49;
    *a5 = v49;
    v50 = fabs(v11);
    if (v50 == 90.0)
    {
      goto LABEL_68;
    }

    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v55 = fabs(v50 + -90.0);
      if (v50 < 90.0)
      {
        v50 = 90.0;
      }

      if (v50 < 1.0)
      {
        v50 = 1.0;
      }

      if (v55 <= v50 * 2.22044605e-16)
      {
LABEL_68:
        *a6 = 1;
        *a5 = 1;
      }
    }

    goto LABEL_142;
  }

  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    *a7 = 0;
    goto LABEL_142;
  }

  v68 = fabs(v48);
  v69 = fabs(v48 + -180.0);
  if (v68 < 180.0)
  {
    v68 = 180.0;
  }

  if (v68 < 1.0)
  {
    v68 = 1.0;
  }

  v70 = v68 * 2.22044605e-16;
  *a7 = v69 <= v70;
  if (v69 <= v70)
  {
    goto LABEL_67;
  }

LABEL_142:
  if (*a5 && *a6)
  {
    if (*a7)
    {
      if (180.0 - v13 - v15 <= 180.0)
      {
        if ((v13 > v11 || !v20) && (v15 > v11 || !v29))
        {
          v80 = 90.0;
          if (v11 != 90.0)
          {
            v81 = fabs(v11);
            if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_224;
            }

            v82 = fabs(v11 + -90.0);
            if (v81 >= 90.0)
            {
              v83 = v81;
            }

            else
            {
              v83 = 90.0;
            }

            if (v83 < 1.0)
            {
              v83 = 1.0;
            }

            if (v82 > v83 * 2.22044605e-16)
            {
LABEL_224:
              if (!v20 && !v29)
              {
                if (v11 == -90.0)
                {
                  return 0;
                }

                if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v86 = fabs(v11 + 90.0);
                  if (v81 >= 90.0)
                  {
                    v80 = v81;
                  }

                  if (v80 < 1.0)
                  {
                    v80 = 1.0;
                  }

                  if (v86 <= v80 * 2.22044605e-16)
                  {
                    return 0;
                  }
                }
              }

              return 1;
            }
          }
        }
      }

      else if (v13 < v11 || !v20)
      {
        v72 = v15 >= v11 && v29;
        if (!v72 && v11 != -90.0)
        {
          v73 = fabs(v11);
          if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_168;
          }

          v74 = 90.0;
          v75 = fabs(v11 + 90.0);
          if (v73 >= 90.0)
          {
            v74 = v73;
          }

          if (v74 < 1.0)
          {
            v74 = 1.0;
          }

          if (v75 > v74 * 2.22044605e-16)
          {
LABEL_168:
            if (!v20 && !v29)
            {
              if (v11 == 90.0)
              {
                return 0;
              }

              if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v76 = fabs(v11 + -90.0);
                if (v73 < 90.0)
                {
                  v73 = 90.0;
                }

                if (v73 < 1.0)
                {
                  v73 = 1.0;
                }

                if (v76 <= v73 * 2.22044605e-16)
                {
                  return 0;
                }
              }
            }

            return 1;
          }
        }
      }
    }

    else if ((v13 > v11 || v15 < v11) && (v15 > v11 || v13 < v11) || ((v36 | v41) & 1) == 0)
    {
      return 1;
    }

    *(a4 + 16) = 1;
    return 1;
  }

  return 0;
}

unint64_t sub_10073152C(double *a1, double *a2, double *a3, int a4, int a5, int a6)
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a3;
  v12 = vabdd_f64(*a1, *a2);
  v13 = 180.0;
  if (v12 != 180.0)
  {
    v14 = v9 - v10;
    if (COERCE__INT64(fabs(v9 - v10)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_50;
    }

    v37 = fabs(v12 + -180.0);
    v13 = 180.0;
    if (v12 < 180.0)
    {
      v12 = 180.0;
    }

    if (v12 < 1.0)
    {
      v12 = 1.0;
    }

    if (v37 > v12 * 2.22044605e-16)
    {
LABEL_50:
      v13 = 180.0;
      if (v14 <= 180.0)
      {
        if (v14 >= -180.0)
        {
          goto LABEL_3;
        }

        v13 = fmod(v14 + -180.0, 360.0) + 180.0;
      }

      else
      {
        v38 = fmod(v14 + 180.0, 360.0);
        v14 = v38 + -180.0;
        if (v38 + -180.0 != -180.0)
        {
          if (COERCE_UNSIGNED_INT64(fabs(v38 + -180.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_3;
          }

          v39 = fabs(v14);
          v13 = 180.0;
          v40 = fabs(v14 + 180.0);
          if (v39 < 180.0)
          {
            v39 = 180.0;
          }

          if (v39 < 1.0)
          {
            v39 = 1.0;
          }

          if (v40 > v39 * 2.22044605e-16)
          {
            goto LABEL_3;
          }
        }
      }
    }
  }

  v14 = v13;
LABEL_3:
  if (a6)
  {
    v15 = 0;
    v16 = v14 < 0.0;
    goto LABEL_5;
  }

  v18 = vabdd_f64(v11, v10);
  v19 = 180.0;
  if (v18 == 180.0)
  {
    goto LABEL_9;
  }

  v20 = v11 - v10;
  if (COERCE__INT64(fabs(v11 - v10)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v46 = fabs(v18 + -180.0);
    v19 = 180.0;
    if (v18 < 180.0)
    {
      v18 = 180.0;
    }

    if (v18 < 1.0)
    {
      v18 = 1.0;
    }

    if (v46 <= v18 * 2.22044605e-16)
    {
      goto LABEL_9;
    }
  }

  v19 = 180.0;
  if (v20 <= 180.0)
  {
    if (v20 >= -180.0)
    {
      goto LABEL_10;
    }

    v19 = fmod(v20 + -180.0, 360.0) + 180.0;
    goto LABEL_9;
  }

  v47 = fmod(v20 + 180.0, 360.0);
  v20 = v47 + -180.0;
  if (v47 + -180.0 == -180.0)
  {
    goto LABEL_9;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v47 + -180.0)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v48 = fabs(v20);
    v19 = 180.0;
    v49 = fabs(v20 + 180.0);
    if (v48 < 180.0)
    {
      v48 = 180.0;
    }

    if (v48 < 1.0)
    {
      v48 = 1.0;
    }

    if (v49 <= v48 * 2.22044605e-16)
    {
LABEL_9:
      v20 = v19;
    }
  }

LABEL_10:
  if ((a4 & 1) == 0 && !a5)
  {
    if (v14 >= 0.0)
    {
      v21 = 0;
    }

    else
    {
      v21 = -1;
    }

    if (v20 >= 0.0)
    {
      v22 = 0;
    }

    else
    {
      v22 = -1;
    }

    if (v20 > 0.0)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = v23 == v21;
    if (v14 > 0.0)
    {
      v24 = v20 > 0.0;
    }

    v25 = fabs(v14);
    v26 = fabs(v20);
    if (v24 && v25 < v26)
    {
      v15 = 0;
      v16 = v20 < 0.0;
LABEL_5:
      if (v16)
      {
        v17 = 4294967294;
      }

      else
      {
        v17 = 2;
      }

      return v15 | v17;
    }

    v28 = 180.0;
    v29 = vabdd_f64(v9 + 180.0, v10);
    if (v29 != 180.0)
    {
      v30 = v9 + 180.0 - v10;
      if (COERCE_UNSIGNED_INT64(fabs(v30)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_111;
      }

      v53 = fabs(v29 + -180.0);
      v28 = 180.0;
      if (v29 < 180.0)
      {
        v29 = 180.0;
      }

      if (v29 < 1.0)
      {
        v29 = 1.0;
      }

      if (v53 > v29 * 2.22044605e-16)
      {
LABEL_111:
        v28 = 180.0;
        if (v30 <= 180.0)
        {
          if (v30 >= -180.0)
          {
            goto LABEL_29;
          }

          v28 = fmod(v30 + -180.0, 360.0) + 180.0;
        }

        else
        {
          v30 = fmod(v30 + 180.0, 360.0) + -180.0;
          if (v30 != -180.0)
          {
            if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_29;
            }

            v54 = fabs(v30);
            v28 = 180.0;
            v55 = fabs(v30 + 180.0);
            if (v54 < 180.0)
            {
              v54 = 180.0;
            }

            if (v54 < 1.0)
            {
              v54 = 1.0;
            }

            if (v55 > v54 * 2.22044605e-16)
            {
              goto LABEL_29;
            }
          }
        }
      }
    }

    v30 = v28;
LABEL_29:
    v31 = v20 > 0.0;
    if (v30 >= 0.0)
    {
      v32 = 0;
    }

    else
    {
      v32 = -1;
    }

    v33 = v23 == v32;
    if (v30 <= 0.0)
    {
      v31 = v33;
    }

    v34 = fabs(v30);
    v35 = 2;
    if (v20 < 0.0)
    {
      v35 = 4294967294;
    }

    v36 = dword_100000000;
    if (v34 >= v26)
    {
      v35 = 0;
      v36 = 0;
    }

    if (v31)
    {
      v17 = v35;
    }

    else
    {
      v17 = 0;
    }

    if (v31)
    {
      v15 = v36;
    }

    else
    {
      v15 = 0;
    }

    return v15 | v17;
  }

  if (v20 >= 0.0)
  {
    v17 = 1;
  }

  else
  {
    v17 = 0xFFFFFFFFLL;
  }

  v41 = 180.0;
  v42 = v9 + 180.0;
  if (a4)
  {
    v43 = v10;
  }

  else
  {
    v43 = v11;
  }

  v44 = vabdd_f64(v43, v42);
  if (v44 == 180.0)
  {
    goto LABEL_66;
  }

  v45 = v43 - v42;
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v50 = fabs(v44 + -180.0);
    v41 = 180.0;
    if (v44 < 180.0)
    {
      v44 = 180.0;
    }

    if (v44 < 1.0)
    {
      v44 = 1.0;
    }

    if (v50 <= v44 * 2.22044605e-16)
    {
      goto LABEL_66;
    }
  }

  v41 = 180.0;
  if (v45 > 180.0)
  {
    v45 = fmod(v45 + 180.0, 360.0) + -180.0;
    if (v45 != -180.0)
    {
      if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_67;
      }

      v51 = fabs(v45);
      v41 = 180.0;
      v52 = fabs(v45 + 180.0);
      if (v51 < 180.0)
      {
        v51 = 180.0;
      }

      if (v51 < 1.0)
      {
        v51 = 1.0;
      }

      if (v52 > v51 * 2.22044605e-16)
      {
        goto LABEL_67;
      }
    }

    goto LABEL_66;
  }

  if (v45 < -180.0)
  {
    v41 = fmod(v45 + -180.0, 360.0) + 180.0;
LABEL_66:
    v45 = v41;
  }

LABEL_67:
  if (v45 == 0.0)
  {
    v15 = dword_100000000;
  }

  else if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v56 = fabs(v45);
    v57 = 1.0;
    if (v56 >= 1.0)
    {
      v57 = v56;
    }

    v15 = (v56 <= v57 * 2.22044605e-16) << 32;
  }

  else
  {
    v15 = 0;
  }

  return v15 | v17;
}

uint64_t sub_100731AF8(double *a1, double *a2, double *a3, double *a4, double *a5, double *a6)
{
  v11 = __sincos_stret(*a2);
  v12 = __sincos_stret(*a1);
  v13 = __sincos_stret(*a4);
  v14 = __sincos_stret(*a3);
  v15 = __sincos_stret(*a6);
  v16 = __sincos_stret(*a5);
  v17 = v16.__sinval * (v15.__cosval * (v11.__sinval * (v13.__cosval * v14.__cosval) - v11.__cosval * v12.__cosval * v13.__sinval)) + v15.__cosval * (v11.__cosval * v12.__sinval * v13.__sinval - v11.__sinval * (v13.__cosval * v14.__sinval)) * v16.__cosval + (v11.__cosval * v12.__cosval * (v13.__cosval * v14.__sinval) - v11.__cosval * v12.__sinval * (v13.__cosval * v14.__cosval)) * v15.__sinval;
  if (v17 == 0.0)
  {
    return 0;
  }

  if (COERCE_UNSIGNED_INT64(fabs(v16.__sinval * (v15.__cosval * (v11.__sinval * (v13.__cosval * v14.__cosval) - v11.__cosval * v12.__cosval * v13.__sinval)) + v15.__cosval * (v11.__cosval * v12.__sinval * v13.__sinval - v11.__sinval * (v13.__cosval * v14.__sinval)) * v16.__cosval + (v11.__cosval * v12.__cosval * (v13.__cosval * v14.__sinval) - v11.__cosval * v12.__sinval * (v13.__cosval * v14.__cosval)) * v15.__sinval)) < 0x7FF0000000000000)
  {
    v19 = fabs(v17);
    v20 = 1.0;
    if (v19 >= 1.0)
    {
      v20 = v19;
    }

    v21 = v20 * 2.22044605e-16;
    if (v17 > 0.0)
    {
      result = 1;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    if (v19 <= v21)
    {
      return 0;
    }
  }

  else if (v17 > 0.0)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t sub_100731C50(uint64_t a1)
{
  v4 = (a1 + 72);
  sub_100731CAC(&v4);
  v4 = (a1 + 48);
  sub_100731CAC(&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100731CAC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100731D00(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100731D00(void ***a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 3;
    do
    {
      v7 = v4;
      sub_1002EC52C(&v7);
      v5 = *(v4 - 3);
      if (v5)
      {
        *(v4 - 2) = v5;
        operator delete(v5);
      }

      if (*(v4 - 25) < 0)
      {
        operator delete(*(v4 - 6));
      }

      v6 = v4 - 8;
      v4 -= 11;
    }

    while (v6 != v3);
  }

  a1[1] = v3;
}

uint64_t *sub_100731D80(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_10038EBB4(v6, v10);
    }

    sub_10028C64C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

char *sub_100731EAC(char *__dst, __int128 *a2, __int128 *a3)
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

  sub_100731F28(__dst + 24, a3);
  return __dst;
}

void sub_100731F0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100731F28(char *__dst, __int128 *a2)
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

  v5 = 0;
  v6 = a2 + 56;
  do
  {
    v7 = &__dst[v5];
    v8 = *&v6[v5 - 32];
    v9 = v6[v5 - 16];
    *&__dst[v5 + 48] = 0;
    v10 = &__dst[v5 + 48];
    *(v10 - 8) = v9;
    *(v10 - 3) = v8;
    v10[1] = 0;
    v10[2] = 0;
    sub_10038EB38(v10, *&v6[v5 - 8], *&v6[v5], (*&v6[v5] - *&v6[v5 - 8]) >> 2);
    *(v7 + 9) = 0;
    *(v7 + 10) = 0;
    v11 = &__dst[v5 + 72];
    v11[2] = 0;
    sub_1007320E8(v11, *&v6[v5 + 16], *&v6[v5 + 24], 0x2E8BA2E8BA2E8BA3 * ((*&v6[v5 + 24] - *&v6[v5 + 16]) >> 3));
    v12 = &__dst[v5];
    *(v12 + 12) = 0;
    *(v12 + 13) = 0;
    v13 = &__dst[v5 + 96];
    v13[2] = 0;
    sub_1007320E8(v13, *&v6[v5 + 40], *&v6[v5 + 48], 0x2E8BA2E8BA2E8BA3 * ((*&v6[v5 + 48] - *&v6[v5 + 40]) >> 3));
    v5 += 96;
  }

  while (v5 != 384);
  v14 = *(a2 + 408);
  v15 = *(a2 + 440);
  *(__dst + 424) = *(a2 + 424);
  *(__dst + 440) = v15;
  *(__dst + 408) = v14;
  v16 = *(a2 + 456);
  v17 = *(a2 + 472);
  v18 = *(a2 + 504);
  *(__dst + 488) = *(a2 + 488);
  *(__dst + 504) = v18;
  *(__dst + 456) = v16;
  *(__dst + 472) = v17;
  v19 = *(a2 + 520);
  v20 = *(a2 + 536);
  v21 = *(a2 + 552);
  *(__dst + 142) = *(a2 + 142);
  *(__dst + 536) = v20;
  *(__dst + 552) = v21;
  *(__dst + 520) = v19;
  return __dst;
}

void sub_100732078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v11)
  {
    v13 = v10 + v11 - 72;
    v14 = -v11;
    do
    {
      v13 = sub_100731C50(v13) - 96;
      v14 += 96;
    }

    while (v14);
  }

  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1007320E8(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100732170(result, a4);
  }

  return result;
}

void sub_100732150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100731CAC(&a9);
  _Unwind_Resume(a1);
}

void sub_100732170(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    sub_100730010(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_1007321C0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 1;
    do
    {
      v8 = v6 - 1;
      v7 = *(v6 - 2);
      *(v4 + 8) = *(v6 - 8);
      *v4 = v7;
      if (*(v6 + 23) < 0)
      {
        sub_100007244((v4 + 16), *v6, *(v6 + 1));
      }

      else
      {
        v9 = *v6;
        *(v4 + 32) = *(v6 + 2);
        *(v4 + 16) = v9;
      }

      *(v4 + 40) = 0;
      *(v4 + 48) = 0;
      *(v4 + 56) = 0;
      sub_1004BF900((v4 + 40), *(v6 + 3), *(v6 + 4), (*(v6 + 4) - *(v6 + 3)) >> 4);
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      sub_10072FE9C((v4 + 64), *(v6 + 6), *(v6 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 7) - *(v6 + 6)) >> 3));
      v4 = v14 + 88;
      v14 += 88;
      v6 = (v6 + 88);
    }

    while ((v8 + 88) != a3);
  }

  v12 = 1;
  sub_100730198(v11);
  return v4;
}

uint64_t sub_100732318(uint64_t a1)
{
  for (i = 0; i != -384; i -= 96)
  {
    v5 = (a1 + i + 408);
    sub_100731CAC(&v5);
    v5 = (a1 + i + 384);
    sub_100731CAC(&v5);
    v3 = *(a1 + i + 360);
    if (v3)
    {
      *(a1 + i + 368) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1007323B0(uint64_t a1)
{
  for (i = 0; i != -384; i -= 96)
  {
    v5 = (a1 + i + 384);
    sub_100731CAC(&v5);
    v5 = (a1 + i + 360);
    sub_100731CAC(&v5);
    v3 = *(a1 + i + 336);
    if (v3)
    {
      *(a1 + i + 344) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100732438(uint64_t *a1, char ***a2, char ***a3, unint64_t a4)
{
  v8 = *a1;
  if (0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1007325E0(a1);
    if (a4 <= 0x2E8BA2E8BA2E8BALL)
    {
      v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
      {
        v10 = 0x2E8BA2E8BA2E8BALL;
      }

      else
      {
        v10 = v9;
      }

      sub_100732170(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = a1[1] - v8;
  if (0x2E8BA2E8BA2E8BA3 * (v11 >> 3) >= a4)
  {
    sub_100732620(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = (v14 - 24);
      do
      {
        v20 = v15;
        sub_1002EC52C(&v20);
        v16 = *(v15 - 3);
        if (v16)
        {
          *(v15 - 2) = v16;
          operator delete(v16);
        }

        if (*(v15 - 25) < 0)
        {
          operator delete(*(v15 - 6));
        }

        v17 = v15 - 8;
        v15 -= 11;
      }

      while (v17 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_100732620(&v18, a2, (a2 + v11), v8);
    a1[1] = sub_1007321C0(a1, (a2 + v11), a3, a1[1]);
  }
}

void sub_1007325E0(uint64_t a1)
{
  if (*a1)
  {
    sub_100731D00(a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

char ***sub_100732620(uint64_t a1, char ***a2, char ***a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 9;
  do
  {
    v8 = v6 - 9;
    v7 = *(v6 - 9);
    *(a4 + 8) = *(v6 - 64);
    *a4 = v7;
    std::string::operator=((a4 + 16), (v6 - 7));
    if (a4 != v6 - 9)
    {
      sub_1006BA434((a4 + 40), *(v6 - 4), *(v6 - 3), (*(v6 - 3) - *(v6 - 4)) >> 4);
      sub_1007326E0(a4 + 64, *(v6 - 1), *v6, 0xAAAAAAAAAAAAAAABLL * (*v6 - *(v6 - 1)));
    }

    a4 += 88;
    v6 += 11;
  }

  while (v8 + 11 != v5);
  return v5;
}

void sub_1007326E0(uint64_t a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_1002EC750(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1002887D4(a1, v10);
    }

    sub_10028C64C();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_100732858(&v19, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      v15 = *(a1 + 8);
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_100732858(&v18, a2, (a2 + v11), v8);
    *(a1 + 8) = sub_10072FF24(a1, a2 + v11, a3, *(a1 + 8));
  }
}

char **sub_100732858(int a1, char **a2, char **a3, uint64_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_1006BA434(a4, *v5, v5[1], (v5[1] - *v5) >> 4);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1007328C8(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1007328C8(a1, *a2);
    sub_1007328C8(a1, *(a2 + 1));
    v4 = 384;
    do
    {
      v6 = &a2[v4 + 56];
      sub_100731CAC(&v6);
      v6 = &a2[v4 + 32];
      sub_100731CAC(&v6);
      v5 = *&a2[v4 + 8];
      if (v5)
      {
        *&a2[v4 + 16] = v5;
        operator delete(v5);
      }

      v4 -= 96;
    }

    while (v4);
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_100732A0C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100732AE0(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_100732A28(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100007244(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  bzero(__dst + 24, 0x240uLL);
  for (i = 0; i != 384; i += 96)
  {
    v7 = &__dst[i];
    v7[48] = 0;
    *(v7 + 7) = 0xBFF0000000000000;
    v7[64] = 0;
    *(v7 + 72) = 0uLL;
    *(v7 + 88) = 0uLL;
    *(v7 + 104) = 0uLL;
    *(v7 + 120) = 0uLL;
    *(v7 + 17) = 0;
  }

  sub_10022F21C((__dst + 432), v5);
  return __dst;
}

void sub_100732AE0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = (a2 + 440);
    v4 = -384;
    do
    {
      v6 = v3;
      sub_100731CAC(&v6);
      v6 = v3 - 3;
      sub_100731CAC(&v6);
      v5 = *(v3 - 6);
      if (v5)
      {
        *(v3 - 5) = v5;
        operator delete(v5);
      }

      v3 -= 12;
      v4 += 96;
    }

    while (v4);
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}