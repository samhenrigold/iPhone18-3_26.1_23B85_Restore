void sub_1006E7A14(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v10 = vdupq_n_s64(0xFFF0000000000000);
  *(a4 + 1) = v10;
  v11 = (a4 + 2);
  *a4 = 0;
  a4[1] = 0;
  *(a4 + 2) = v10;
  *(a4 + 3) = 0u;
  v12 = a4 + 6;
  *(a4 + 4) = 0u;
  *(a4 + 5) = 0u;
  *(a4 + 24) = 0;
  *(a4 + 13) = v10;
  v13 = a4 + 13;
  *(a4 + 15) = v10;
  *(a4 + 17) = v10;
  *(a4 + 19) = v10;
  *(a4 + 21) = v10;
  *(a4 + 23) = v10;
  *(a4 + 25) = v10;
  *(a4 + 27) = v10;
  *(a4 + 29) = v10;
  a4[31] = 0xFFF0000000000000;
  *(a4 + 76) = 0;
  *(a4 + 17) = 0u;
  *(a4 + 18) = 0u;
  *(a4 + 16) = 0u;
  a4[39] = 0xFFF0000000000000;
  *(a4 + 20) = v10;
  *(a4 + 21) = v10;
  *(a4 + 22) = v10;
  *(a4 + 23) = v10;
  a4[48] = 0xFFF0000000000000;
  v14 = a4 + 49;
  *(a4 + 49) = 0u;
  *(a4 + 51) = 0u;
  *(a4 + 53) = 0u;
  *(a4 + 110) = 0;
  *(a4 + 28) = v10;
  *(a4 + 29) = v10;
  *(a4 + 30) = 0u;
  *(a4 + 31) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 132) = 0;
  a4[67] = 0xFFF0000000000000;
  *(a4 + 34) = v10;
  *(a4 + 35) = v10;
  *(a4 + 36) = v10;
  *(a4 + 37) = v10;
  *(a4 + 38) = v10;
  *(a4 + 39) = v10;
  *(a4 + 40) = v10;
  *(a4 + 41) = v10;
  *(a4 + 42) = v10;
  *(a4 + 43) = v10;
  *(a4 + 44) = v10;
  *(a4 + 45) = v10;
  *(a4 + 46) = v10;
  *(a4 + 47) = v10;
  a4[96] = 0xFFF0000000000000;
  *(a4 + 776) = 0;
  __p = 0;
  v79 = 0;
  v80 = 0;
  sub_100D8C754(a2, a3, buf, a5);
  v15 = v95;
  *(v13 + 6) = v94;
  *(v13 + 7) = v15;
  *(v13 + 8) = v96;
  v13[18] = v97;
  v16 = v91;
  *(v13 + 2) = v90;
  *(v13 + 3) = v16;
  v17 = v93;
  *(v13 + 4) = v92;
  *(v13 + 5) = v17;
  v18 = *&buf[16];
  *v13 = *buf;
  *(v13 + 1) = v18;
  sub_100D8C1C4(a1 + 1, v13, a2, a3, buf, a5);
  v19 = *&buf[16];
  *v12 = *buf;
  *(v12 + 1) = v19;
  *(v12 + 2) = v90;
  *(v12 + 12) = v91;
  if (!*(a4 + 24))
  {
    v20 = v79;
    if (v79 >= v80)
    {
      v22 = (v79 - __p) >> 4;
      v23 = v22 + 1;
      if ((v22 + 1) >> 60)
      {
        goto LABEL_71;
      }

      v24 = v80 - __p;
      if ((v80 - __p) >> 3 > v23)
      {
        v23 = v24 >> 3;
      }

      if (v24 >= 0x7FFFFFFFFFFFFFF0)
      {
        v25 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        sub_1003E5FE8(&__p, v25);
      }

      *(16 * v22) = *(a4 + 5);
      v21 = 16 * v22 + 16;
      memcpy((16 * v22 - (v79 - __p)), __p, v79 - __p);
      v26 = __p;
      __p = (16 * v22 - (v79 - __p));
      v79 = v21;
      v80 = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v79 = *(a4 + 5);
      v21 = (v20 + 16);
    }

    v79 = v21;
  }

  sub_100DC7A70(a2, buf, a5);
  v27 = v91;
  *(a4 + 43) = v90;
  *(a4 + 45) = v27;
  *(a4 + 47) = v92;
  v28 = *&buf[16];
  *(a4 + 39) = *buf;
  *(a4 + 41) = v28;
  sub_100DC731C(a1 + 2, (a4 + 39), a2, a3, buf, a5);
  v29 = *&buf[16];
  *(a4 + 16) = *buf;
  *(a4 + 17) = v29;
  *(a4 + 18) = v90;
  *(a4 + 76) = v91;
  if (*(a4 + 76))
  {
    goto LABEL_29;
  }

  v30 = v79;
  if (v79 >= v80)
  {
    v32 = (v79 - __p) >> 4;
    v33 = v32 + 1;
    if (!((v32 + 1) >> 60))
    {
      v34 = v80 - __p;
      if ((v80 - __p) >> 3 > v33)
      {
        v33 = v34 >> 3;
      }

      if (v34 >= 0x7FFFFFFFFFFFFFF0)
      {
        v35 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v35 = v33;
      }

      if (v35)
      {
        sub_1003E5FE8(&__p, v35);
      }

      *(16 * v32) = *(a4 + 18);
      v31 = 16 * v32 + 16;
      memcpy((16 * v32 - (v79 - __p)), __p, v79 - __p);
      v36 = __p;
      __p = (16 * v32 - (v79 - __p));
      v79 = v31;
      v80 = 0;
      if (v36)
      {
        operator delete(v36);
      }

      goto LABEL_28;
    }

LABEL_71:
    sub_10028C64C();
  }

  *v79 = *(a4 + 18);
  v31 = (v30 + 16);
LABEL_28:
  v79 = v31;
LABEL_29:
  *(a4 + 2) = sub_10084644C(a5, a1, a2);
  a4[3] = v37;
  a4[4] = v38;
  a4[5] = v39;
  sub_1008462A8(a1, v11);
  *(a4 + 56) = sub_100DBC834(a5, a1 + 3, a2, a3);
  a4[57] = v40;
  a4[58] = v41;
  a4[59] = v42;
  sub_100DBC3A0(a1 + 3, a4 + 28, a2, a3, buf, a5);
  v43 = *&buf[16];
  *v14 = *buf;
  *(v14 + 1) = v43;
  *(v14 + 2) = v90;
  *(v14 + 12) = v91;
  if (!*(a4 + 110))
  {
    v44 = a4 + 53;
    v45 = v79;
    if (v79 >= v80)
    {
      v47 = (v79 - __p) >> 4;
      v48 = v47 + 1;
      if ((v47 + 1) >> 60)
      {
        goto LABEL_72;
      }

      v49 = v80 - __p;
      if ((v80 - __p) >> 3 > v48)
      {
        v48 = v49 >> 3;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF0)
      {
        v50 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        sub_1003E5FE8(&__p, v50);
      }

      v51 = (16 * v47);
      *v51 = *v44;
      v46 = 16 * v47 + 16;
      v52 = v51 - (v79 - __p);
      memcpy(v52, __p, v79 - __p);
      v53 = __p;
      __p = v52;
      v79 = v46;
      v80 = 0;
      if (v53)
      {
        operator delete(v53);
      }
    }

    else
    {
      *v79 = *v44;
      v46 = (v45 + 16);
    }

    v79 = v46;
  }

  sub_1006EA950(a2, buf, a5);
  v54 = v101;
  *(a4 + 91) = v100;
  *(a4 + 93) = v54;
  *(a4 + 95) = v102;
  v55 = v97;
  *(a4 + 83) = v96;
  *(a4 + 85) = v55;
  v56 = v99;
  *(a4 + 87) = v98;
  *(a4 + 89) = v56;
  v57 = v93;
  *(a4 + 75) = v92;
  *(a4 + 77) = v57;
  v58 = v95;
  *(a4 + 79) = v94;
  *(a4 + 81) = v58;
  v59 = *&buf[16];
  *(a4 + 67) = *buf;
  *(a4 + 69) = v59;
  v60 = v91;
  *(a4 + 71) = v90;
  *(a4 + 73) = v60;
  sub_1006EA1BC(a1 + 4, (a4 + 67), a2, a3, buf, a5);
  v62 = *&buf[16];
  *(a4 + 30) = *buf;
  *(a4 + 31) = v62;
  *(a4 + 32) = v90;
  *(a4 + 132) = v91;
  if (!*(a4 + 132))
  {
    v63 = v79;
    if (v79 < v80)
    {
      *v79 = *(a4 + 32);
      v64 = (v63 + 16);
LABEL_56:
      v79 = v64;
      goto LABEL_57;
    }

    v65 = (v79 - __p) >> 4;
    v66 = v65 + 1;
    if (!((v65 + 1) >> 60))
    {
      v67 = v80 - __p;
      if ((v80 - __p) >> 3 > v66)
      {
        v66 = v67 >> 3;
      }

      if (v67 >= 0x7FFFFFFFFFFFFFF0)
      {
        v68 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v68 = v66;
      }

      if (v68)
      {
        sub_1003E5FE8(&__p, v68);
      }

      *(16 * v65) = *(a4 + 32);
      v64 = 16 * v65 + 16;
      memcpy((16 * v65 - (v79 - __p)), __p, v79 - __p);
      v61 = __p;
      __p = (16 * v65 - (v79 - __p));
      v79 = v64;
      v80 = 0;
      if (v61)
      {
        operator delete(v61);
      }

      goto LABEL_56;
    }

LABEL_72:
    sub_10028C64C();
  }

LABEL_57:
  if (!*(a4 + 24) && !*(a4 + 110) && !*(a4 + 76))
  {
    v69 = sub_1006E8218(v61, &__p);
    *a4 = v69;
    sub_1009A37F4(a3, v69);
    a4[1] = v70;
    *(a4 + 776) = 1;
  }

  if (qword_1025D41B0 != -1)
  {
    sub_10191209C();
  }

  v71 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEFAULT))
  {
    v72 = *a4;
    v73 = a4[1];
    *buf = 134349824;
    *&buf[4] = a5;
    *&buf[12] = 2050;
    *&buf[14] = v72;
    *&buf[22] = 2050;
    *&buf[24] = v73;
    LOWORD(v90) = 2050;
    *(&v90 + 2) = (v79 - __p) >> 4;
    _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEFAULT, "CLMobility::ModelFusion::Result,classificationEnd,%{public}.2f,rawSteadiness,%{public}.2f,walkingSteadiness,%{public}.2f,successfulModelCount,%{public}lu", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019120C4(buf);
    v74 = *a4;
    v75 = a4[1];
    v81 = 134349824;
    v82 = a5;
    v83 = 2050;
    v84 = v74;
    v85 = 2050;
    v86 = v75;
    v87 = 2050;
    v88 = (v79 - __p) >> 4;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D41B8, 0, "CLMobility::ModelFusion::Result,classificationEnd,%{public}.2f,rawSteadiness,%{public}.2f,walkingSteadiness,%{public}.2f,successfulModelCount,%{public}lu", &v81, 42);
    v77 = v76;
    sub_100152C7C("Generic", 1, 0, 2, "SteadinessModelFusion::Result CLMobility::SteadinessModelFusion::runSteadinessModel(CFAbsoluteTime, const std::vector<BoutMetrics> &, const CLBodyMetrics &) const", "%s\n", v76);
    if (v77 != buf)
    {
      free(v77);
    }
  }

  if (__p)
  {
    v79 = __p;
    operator delete(__p);
  }
}

void sub_1006E81C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1006E8218(uint64_t a1, double **a2)
{
  if (qword_1025D41B0 != -1)
  {
    sub_101912108();
  }

  v3 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEBUG))
  {
    v4 = (a2[1] - *a2) >> 4;
    v17 = 134349056;
    v18 = *&v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "fuseLikelihoods using mean log odds fusion rule, modelLikelihoods count,%{public}lu", &v17, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191211C(a2);
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    if (qword_1025D41B0 != -1)
    {
      sub_10191209C();
    }

    v15 = qword_1025D41B8;
    if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_INFO, "No component models to fuse likelihoods", &v17, 2u);
    }

    v11 = -1.0;
    if (sub_10000A100(121, 2))
    {
      sub_101912378();
    }
  }

  else
  {
    v7 = 0.0;
    v8 = *a2;
    while (*v8 != 0.0)
    {
      v9 = *(v8 + 1);
      if (v9 == 0.0)
      {
        break;
      }

      v7 = v7 + log(*v8 / v9);
      v8 += 16;
      if (v8 == v6)
      {
        v10 = exp(v7 / ((v6 - v5) >> 4));
        return v10 / (v10 + 1.0);
      }
    }

    if (qword_1025D41B0 != -1)
    {
      sub_10191209C();
    }

    v12 = qword_1025D41B8;
    if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_FAULT))
    {
      v13 = *v8;
      v14 = *(v8 + 1);
      v17 = 134349312;
      v18 = v13;
      v19 = 2050;
      v20 = v14;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_FAULT, "Unexpected model likelihood OK,%{public}.2f and/or NotOK,%{public}.2f", &v17, 0x16u);
    }

    v11 = -1.0;
    if (sub_10000A100(121, 0))
    {
      sub_101912248(v8);
    }
  }

  return v11;
}

void sub_1006E84A4(uint64_t a1, uint64_t a2)
{
  sub_1004582A8(v4, a2);
  *a1 = &off_10246BBF8;
  sub_100458228(v4);
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *a1 = off_10246BBA0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0x3FF0000000000000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x404E000000000000;
  *(a1 + 136) = 0;
  sub_1006E9C08((a1 + 56));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  memset(v5, 0, sizeof(v5));
  v3 = v5;
  sub_1006E9CB4(&v3);
  operator new();
}

void sub_1006E88C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  (*(*v4 + 8))(v4, a2);
  sub_1006E9CB4(va);
  sub_10049AC1C(v3);
  _Unwind_Resume(a1);
}

void sub_1006E896C(void *a1, uint64_t a2, double a3)
{
  if (qword_1025D4490 != -1)
  {
    sub_101912484();
  }

  v6 = qword_1025D4498;
  if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEBUG))
  {
    v13 = 134217984;
    v14 = a3;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLExerciseMinuteIntensityEstimator::feedNatalie called, rawMets, %f", &v13, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101912498(a3);
  }

  sub_1006E8AF4(a1, a2);
  v7 = a1[7];
  v8 = a1[8];
  v9 = 0.0;
  if (v7 != v8)
  {
    do
    {
      (*(**v7 + 24))();
      v10 = *v7++;
      v11 = *(v10 + 40);
      if (v11 > v9)
      {
        v9 = v11;
      }
    }

    while (v7 != v8);
    v7 = a1[7];
    v8 = a1[8];
  }

  while (v7 != v8)
  {
    v12 = *v7++;
    (*(*v12 + 16))(v12, v9);
  }
}

void sub_1006E8AF4(void *a1, uint64_t a2)
{
  v31 = 1065353216;
  v30 = 0;
  v29 = 0;
  v4 = *(a2 + 8);
  *&v27 = v4 - (*(a2 + 24) - *(a2 + 16));
  *(&v27 + 1) = v4;
  sub_1006E92F4(a1, a2, &v31, &v30);
  v28 = v5;
  LODWORD(v29) = v31;
  BYTE4(v29) = *(a2 + 248);
  BYTE5(v29) = v30;
  if (v4 < v4 - *&v27)
  {
    if (qword_1025D4490 != -1)
    {
      sub_101912484();
    }

    v6 = qword_1025D4498;
    if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v37 = v4;
      v38 = 2048;
      v39 = v4 - *&v27;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Invalid timestamps, natalieModelInput computeTime is less than the duration, computeTime, %.3f, duration, %.3f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019126D8();
    }

    return;
  }

  if (*&v27 >= v4)
  {
    if (qword_1025D4490 != -1)
    {
      sub_101912484();
    }

    v16 = qword_1025D4498;
    if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v37 = *&v27;
      v38 = 2048;
      v39 = v4;
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_ERROR, "Sample start time is after sample end time, startTime, %.3f, endTime, %.3f", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019125A8();
    }
  }

  else
  {
    v7 = a1[6];
    if (v7 && *&v27 < *(*(a1[2] + (((v7 + a1[5] - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v7 + a1[5] - 1) & 0x7F) + 8))
    {
      if (qword_1025D4490 != -1)
      {
        sub_101912484();
      }

      v8 = qword_1025D4498;
      if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a1[6] + a1[5] - 1;
        v10 = *(*(a1[2] + ((v9 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v9 & 0x7F) + 8);
        *buf = 134218240;
        v37 = v10;
        v38 = 2048;
        v39 = *&v27;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "Time rolled back, bufferEndTime, %.3f, newSampleStartTime, %.3f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4490 != -1)
        {
          sub_1019126B0();
        }

        v22 = a1[6] + a1[5] - 1;
        v23 = *(*(a1[2] + ((v22 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v22 & 0x7F) + 8);
        v32 = 134218240;
        v33 = v23;
        v34 = 2048;
        v35 = v27;
        LODWORD(v26) = 22;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4498, 0, "Time rolled back, bufferEndTime, %.3f, newSampleStartTime, %.3f", COERCE_DOUBLE(&v32), v26);
        v25 = v24;
        sub_100152C7C("Generic", 1, 0, 2, "void CLExerciseMinuteIntensityEstimator::updateSampleBuffer(double, const CLNatalieModelInput &)", "%s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      v11 = a1[2];
      v12 = a1[3];
      a1[6] = 0;
      v13 = (v12 - v11) >> 3;
      if (v13 >= 3)
      {
        do
        {
          operator delete(*v11);
          v14 = a1[3];
          v11 = (a1[2] + 8);
          a1[2] = v11;
          v13 = (v14 - v11) >> 3;
        }

        while (v13 > 2);
      }

      if (v13 == 1)
      {
        v15 = 64;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_34;
        }

        v15 = 128;
      }

      a1[5] = v15;
LABEL_34:
      sub_1006E941C(a1 + 1, &v27);
      v21 = a1[7];
      v20 = a1[8];
      while (v21 != v20)
      {
        (*(**v21 + 32))();
        v21 += 8;
      }

      return;
    }

    sub_1006E941C(a1 + 1, &v27);
    v17 = a1[6];
    if (v17)
    {
      v18 = *(*(a1[2] + (((v17 + a1[5] - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v17 + a1[5] - 1) & 0x7F) + 8) + -310.0;
      do
      {
        v19 = a1[5];
        if (*(*(a1[2] + ((v19 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v19 & 0x7F) + 8) > v18)
        {
          break;
        }

        a1[6] = v17 - 1;
        a1[5] = v19 + 1;
        sub_10051373C((a1 + 1), 1);
        v17 = a1[6];
      }

      while (v17);
    }
  }
}

void sub_1006E9000(uint64_t a1, float *a2)
{
  if (qword_1025D4490 != -1)
  {
    sub_101912484();
  }

  v4 = qword_1025D4498;
  if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLExerciseMinuteIntensityEstimator::feedBodyMetrics called", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019127E0();
  }

  sub_1006E9278(a2);
  v15 = v5;
  v16 = v6;
  v7 = 1.0;
  if (*&v5 > 0.0)
  {
    v7 = 4.40208912 / *&v5;
  }

  *(a1 + 80) = v7;
  v8 = sub_1000A23E0(v5, v6);
  sub_100E03980(v8, &v15);
  if (qword_1025D4490 != -1)
  {
    sub_1019126B0();
  }

  v9 = qword_1025D4498;
  if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 80);
    *buf = 134218496;
    v24 = v15;
    v25 = 2048;
    v26 = v10;
    v27 = 1024;
    v28 = v16;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLExerciseMinuteIntensityEstimator::feedBodyMetrics, threshold, %f, scalingFactor, %f, thresholdSource, %d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4490 != -1)
    {
      sub_1019126B0();
    }

    v11 = *(a1 + 80);
    v17 = 134218496;
    v18 = v15;
    v19 = 2048;
    v20 = v11;
    v21 = 1024;
    v22 = v16;
    LODWORD(v14) = 28;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4498, 0, "CLExerciseMinuteIntensityEstimator::feedBodyMetrics, threshold, %f, scalingFactor, %f, thresholdSource, %d", COERCE_DOUBLE(&v17), v14, v15);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLExerciseMinuteIntensityEstimator::feedBodyMetrics(const CLBodyMetrics &)", "%s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }
}

double sub_1006E9278(float *a1)
{
  sub_1006E9DE4(a1);
  result = v2;
  v4 = a1[13];
  if (v4 != -1.0 && v2 > v4)
  {
    result = v4;
  }

  if (result < 2.19999981)
  {
    result = 2.19999981;
  }

  if (result > 4.40208912)
  {
    return 4.40208912;
  }

  return result;
}

void *sub_1006E92F4(uint64_t a1, uint64_t a2, float *a3, _BYTE *a4)
{
  if (((CLMotionActivity::isTypePedestrian() & 1) != 0 || (CLMotionActivity::isTypeIndoorPedestrian() & 1) != 0 || (*(a2 + 48) - 61) <= 1) && (sub_100DBB74C(a2, v8) & 1) == 0)
  {
    goto LABEL_14;
  }

  if (*(a2 + 248) == 1)
  {
    v9 = *(a2 + 48);
    if (v9 <= 2100)
    {
      if (v9 != 2022 && v9 != 2024)
      {
LABEL_14:
        v10 = *(a1 + 80);
        *a3 = v10;
      }
    }

    else if (((v9 - 2101) > 0x31 || ((1 << (v9 - 53)) & 0x2000000000011) == 0) && v9 != 15670)
    {
      goto LABEL_14;
    }
  }

  result = sub_10124A8B4(a1 + 88, a2, v12);
  *a4 = v12[0];
  return result;
}

uint64_t sub_1006E941C(unint64_t *a1, _OWORD *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 16 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    sub_1006E9F80(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = (*(v5 + ((v7 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v7 & 0x7F));
  v9 = a2[1];
  *v8 = *a2;
  v8[1] = v9;
  v10 = a1[4];
  v11 = a1[5] + 1;
  a1[5] = v11;
  v12 = v10 + v11;
  v13 = a1[1];
  v14 = (v13 + 8 * (v12 >> 7));
  v15 = *v14 + 32 * (v12 & 0x7F);
  if (a1[2] == v13)
  {
    v15 = 0;
  }

  if (v15 == *v14)
  {
    v15 = *(v14 - 1) + 4096;
  }

  return v15 - 32;
}

void *sub_1006E94E4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1024553F0;
  sub_1004582A8((a1 + 1), a3);
  a1[5] = 0;
  a1[6] = a2;
  return a1;
}

uint64_t sub_1006E9534(uint64_t a1, double *a2, void *a3, uint64_t a4, __n128 a5)
{
  v6 = (a1 + 48);
  v5 = *(a1 + 48);
  v7 = v5[5];
  if (!v7)
  {
    return 0;
  }

  v11 = a5.n128_f64[0];
  v12 = *a2;
  v13 = v5[1];
  v14 = v5[4] >> 7;
  if (*a2 == 0.0)
  {
    v12 = *(*(v13 + 8 * v14) + 32 * (v5[4] & 0x7FLL));
    *a2 = v12;
    goto LABEL_12;
  }

  if (v12 >= *(*(v13 + 8 * v14) + 32 * (v5[4] & 0x7FLL)))
  {
LABEL_12:
    v18 = v5[4];
    goto LABEL_13;
  }

  if (qword_1025D4490 != -1)
  {
    sub_101912484();
  }

  v15 = qword_1025D4498;
  if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_ERROR))
  {
    v16 = *a2;
    v17 = *(*(*(*v6 + 8) + ((*(*v6 + 32) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (*(*v6 + 32) & 0x7FLL));
    *buf = 134218240;
    v72 = v16;
    v73 = 2048;
    v74 = v17;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "operateOnWindow - windowStartTime is outside of our intensity buffer, windowStartTime, %.3f, bufferStartTime, %.3f", buf, 0x16u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019128F0(a2, v6);
  }

  v5 = *v6;
  v13 = *(*v6 + 8);
  v18 = *(*v6 + 32);
  v12 = *(*(v13 + ((v18 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v18 & 0x7F));
  *a2 = v12;
  v7 = v5[5];
LABEL_13:
  v19 = v18 + v7;
  if (*(*(v13 + (((v19 - 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v19 - 1) & 0x7F) + 8) - v12 < v11)
  {
    return 0;
  }

  v20 = (v13 + 8 * (v19 >> 7));
  v21 = v5[2];
  if (v21 == v13)
  {
    v22 = 0;
  }

  else
  {
    v22 = *v20 + 32 * (v19 & 0x7F);
  }

  while (1)
  {
    v24 = v5[1];
    v25 = v21 == v24 ? 0 : *(v24 + ((v5[4] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v5[4] & 0x7FLL);
    if (v25 == v22)
    {
      break;
    }

    v26 = v22;
    if (v22 == *v20)
    {
      v26 = *(v20 - 1) + 4096;
    }

    *a3 = v26 - 32;
    if (v22 == *v20)
    {
      v31 = *(v20 - 1);
      v27 = v31 + 4064;
      v28 = *(v31 + 4064);
      v29 = *a2;
      v30 = v31 + 4096;
      if (v28 <= *a2)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v27 = v22 - 32;
      v28 = *(v22 - 32);
      v29 = *a2;
      if (v28 <= *a2)
      {
        v30 = v22;
LABEL_32:
        sub_1006E9B18(a4, v27, *(v30 - 24) - v29);
        v5 = *v6;
        v24 = *(*v6 + 8);
        v21 = *(*v6 + 16);
        break;
      }

      v30 = v22;
    }

    sub_1006E9B18(a4, v27, *(v30 - 24) - v28);
    if (v22 == *v20)
    {
      v32 = *--v20;
      v22 = v32 + 4096;
    }

    v22 -= 32;
    v5 = *v6;
    v21 = *(*v6 + 16);
  }

  v33 = v5[4] + v5[5];
  v34 = (v24 + 8 * (v33 >> 7));
  if (v21 == v24)
  {
    v35 = 0;
  }

  else
  {
    v35 = *v34 + 32 * (v33 & 0x7F);
  }

  v36 = *a2 + v11;
  a5.n128_u64[0] = 134219008;
  v60 = a5;
  while (1)
  {
    v37 = v21 == v24 ? 0 : *(v24 + ((v5[4] >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v5[4] & 0x7FLL);
    if (v37 == v35)
    {
      return 1;
    }

    if (v35 == *v34)
    {
      v41 = *(v34 - 1);
      v38 = v41 + 4064;
      v39 = *(v41 + 4064);
      if (v39 >= v36)
      {
        v45 = v41 + 4096;
        goto LABEL_54;
      }

      v40 = *(v41 + 4072);
    }

    else
    {
      v38 = v35 - 32;
      v39 = *(v35 - 32);
      if (v39 >= v36)
      {
        v45 = v35;
LABEL_54:
        sub_1006E9B18(a4, v38, -(*(v45 - 24) - v39));
        goto LABEL_58;
      }

      v40 = *(v35 - 24);
    }

    if (v40 >= v36)
    {
      sub_1006E9B18(a4, v38, v36 - v40);
      return 1;
    }

    if (qword_1025D4490 != -1)
    {
      sub_1019126B0();
    }

    v42 = qword_1025D4498;
    if (os_log_type_enabled(qword_1025D4498, OS_LOG_TYPE_ERROR))
    {
      if (v35 == *v34)
      {
        v46 = *(v34 - 1);
        v43 = (v46 + 4064);
        v44 = v46 + 4096;
      }

      else
      {
        v43 = (v35 - 32);
        v44 = v35;
      }

      v47 = *a2;
      v48 = *v43;
      v49 = *(v44 - 24);
      *buf = v60.n128_u32[0];
      v72 = v47;
      v73 = 2048;
      v74 = v36;
      v75 = 2048;
      v76 = v11;
      v77 = 2048;
      v78 = v48;
      v79 = 2048;
      v80 = v49;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_ERROR, "operateOnWindow - our window is incomplete, this indicates there is a logic error, windowStartTime, %.3f, windowEndTime, %.3f, windowDuration, %.3f, sampleStartTime, %.3f, sampleEndTime, %.3f", buf, 0x34u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4490 != -1)
      {
        sub_1019126B0();
      }

      v51 = *a2;
      if (v35 == *v34)
      {
        v54 = *(v34 - 1);
        v52 = (v54 + 4064);
        v53 = v54 + 4096;
      }

      else
      {
        v52 = (v35 - 32);
        v53 = v35;
      }

      v55 = *v52;
      v56 = *(v53 - 24);
      v61 = v60.n128_u32[0];
      v62 = v51;
      v63 = 2048;
      v64 = v36;
      v65 = 2048;
      v66 = v11;
      v67 = 2048;
      v68 = v55;
      v69 = 2048;
      v70 = v56;
      LODWORD(v59) = 52;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4498, 16, "operateOnWindow - our window is incomplete, this indicates there is a logic error, windowStartTime, %.3f, windowEndTime, %.3f, windowDuration, %.3f, sampleStartTime, %.3f, sampleEndTime, %.3f", COERCE_DOUBLE(&v61), v59, v60.n128_f64[0], v60.n128_f64[1]);
      v58 = v57;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL CLExerciseMinuteIntensityEstimatorBase::operateOnWindow(CFTimeInterval, CFAbsoluteTime &, const CLExerciseMinuteIntensitySample *&, std::function<void (const CLExerciseMinuteIntensitySample &, CFTimeInterval)>) const", "%s\n", v57);
      if (v58 != buf)
      {
        free(v58);
      }
    }

LABEL_58:
    if (v35 == *v34)
    {
      v50 = *--v34;
      v35 = v50 + 4096;
    }

    v35 -= 32;
    v5 = *v6;
    v24 = *(*v6 + 8);
    v21 = *(*v6 + 16);
  }
}

uint64_t sub_1006E9B18(uint64_t a1, uint64_t a2, double a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000CF05C();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t sub_1006E9B6C(uint64_t a1)
{
  v3 = (a1 + 56);
  sub_1006E9CB4(&v3);
  sub_10049AC1C((a1 + 8));
  return a1;
}

void sub_1006E9BB0(uint64_t a1)
{
  v2 = (a1 + 56);
  sub_1006E9CB4(&v2);
  sub_10049AC1C((a1 + 8));
  operator delete();
}

void sub_1006E9C08(void **a1)
{
  if (*a1)
  {
    sub_1006E9C48(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_1006E9C48(void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void sub_1006E9CB4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1006E9C48(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1006E9D08(uint64_t a1)
{
  sub_1006E9D40(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1006E9D40(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

double sub_1006E9DE4(float *a1)
{
  result = sub_1006E9E64(a1, &v3);
  *&result = result;
  if (*&result >= 1.0)
  {
    v2 = ((*&result * -0.793) + ((*&result * 0.3564) * *&result)) + 3.142;
    if (v2 > 8.0)
    {
      return 8.0;
    }

    return v2;
  }

  return result;
}

double sub_1006E9E64(float *a1, int *a2)
{
  v2 = a1[5];
  v3 = a1[2];
  v4 = dbl_101C89420[v2 <= 13.0];
  v5 = v2 * -0.01 + 1.6;
  v6 = fmin(v3 * 0.5 + 0.225, 1.0);
  if (v4 >= v6)
  {
    v6 = v4;
  }

  v7 = fmax(fmin(v5, 1.0), 0.7);
  v8 = fmax(fmin(a1[3] / (v3 * v3) * -0.0125 + 1.425, 1.0), 0.9);
  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v8 < v9)
  {
    v9 = v8;
  }

  if (v9 == 1.0)
  {
    *a2 = 0;
    return 3.2973001;
  }

  else
  {
    v11 = fmax(v7 * v6 * v8, 0.9);
    if (v11 < v9)
    {
      v9 = v11;
    }

    if (v9 == v11)
    {
      v12 = 5;
    }

    else
    {
      v12 = 1;
    }

    if (v9 == v8)
    {
      v13 = 4;
    }

    else
    {
      v13 = v12;
    }

    if (v9 == v6)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13;
    }

    if (v9 == v7)
    {
      v15 = 3;
    }

    else
    {
      v15 = v14;
    }

    *a2 = v15;
    return v9 * 3.2973001;
  }
}

void sub_1006E9F80(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
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

void sub_1006EA108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006EA154()
{
  __cxa_atexit(sub_1005A704C, aAcc800fp_2, dword_100000000);

  return __cxa_atexit(sub_1005A704C, aDmfp_2, dword_100000000);
}

void sub_1006EA1BC(uint64_t a1@<X0>, float64x2_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  *(a5 + 48) = 0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *(a5 + 16) = a6;
  if (sub_1006EA690(a2->f64))
  {
    v11 = 4;
  }

  else
  {
    if (qword_1025D41B0 != -1)
    {
      sub_101912A40();
    }

    v12 = qword_1025D41B8;
    if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_INFO, "Rejection: SteadinessModelHarmonic missing required feature inputs", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912A54();
    }

    *(a5 + 48) = 8;
    v11 = 12;
  }

  if ((*(a4 + 57) & 1) == 0)
  {
    *(a5 + 48) = v11;
  }

  sub_1006EA880(a1, a5, a3);
  v13 = sub_1009A3654(a2);
  *(a5 + 24) = v13;
  *(a5 + 32) = sub_1009A37B4(v13);
  *(a5 + 40) = v14;
  if (qword_1025D41B0 != -1)
  {
    sub_101912B68();
  }

  v15 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a5 + 32);
    v17 = *(a5 + 40);
    v18 = *(a5 + 16);
    v19 = *(a5 + 24);
    v20 = *(a5 + 48);
    v21 = *(a5 + 8);
    v22 = *(a5 + 12);
    *buf = 134350593;
    v64 = v18;
    v65 = 2050;
    v66 = v16;
    v67 = 2050;
    v68 = v17;
    v69 = 2049;
    v70 = v19;
    v71 = 1026;
    *v72 = v20;
    *&v72[4] = 1025;
    *&v72[6] = v21;
    LOWORD(v73) = 1025;
    *(&v73 + 2) = v22;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "CLMobility::SteadinessModelHarmonic::Result,hkEndTime,%{public}.2f,likelihoodOK,%{public}.2f,likelihoodNotOK,%{public}.2f,rawSteadiness,%{private}.2f,rejectionStatus,%{public}d,numValidBouts7Days,%{private}d,numValidBouts28Days,%{private}d", buf, 0x3Cu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D41B0 != -1)
    {
      sub_101912B68();
    }

    v40 = *(a5 + 32);
    v41 = *(a5 + 40);
    v42 = *(a5 + 16);
    v43 = *(a5 + 24);
    v44 = *(a5 + 48);
    v45 = *(a5 + 8);
    v46 = *(a5 + 12);
    v49 = 134350593;
    v50 = v42;
    v51 = 2050;
    v52 = v40;
    v53 = 2050;
    v54 = v41;
    v55 = 2049;
    v56 = v43;
    v57 = 1026;
    v58 = v44;
    v59 = 1025;
    v60 = v45;
    v61 = 1025;
    v62 = v46;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D41B8, 0, "CLMobility::SteadinessModelHarmonic::Result,hkEndTime,%{public}.2f,likelihoodOK,%{public}.2f,likelihoodNotOK,%{public}.2f,rawSteadiness,%{private}.2f,rejectionStatus,%{public}d,numValidBouts7Days,%{private}d,numValidBouts28Days,%{private}d", &v49, 60);
    v48 = v47;
    sub_100152C7C("Generic", 1, 0, 2, "SteadinessModel::Result CLMobility::SteadinessModelHarmonic::runSteadinessModel(CFAbsoluteTime, const Features &, const std::vector<BoutMetrics> &, const CLBodyMetrics &) const", "%s\n", v47);
    if (v48 != buf)
    {
      free(v48);
    }
  }

  if (qword_1025D41B0 != -1)
  {
    sub_101912B68();
  }

  v23 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *&a2->f64[1];
    v64 = a2->f64[0];
    v25 = *&a2[1].f64[0];
    v26 = *&a2[1].f64[1];
    v66 = v24;
    v68 = v25;
    v70 = v26;
    v27 = *&a2[4].f64[0];
    v28 = *&a2[4].f64[1];
    v77 = *&a2[3].f64[1];
    v79 = v27;
    v81 = v28;
    v29 = *&a2[6].f64[0];
    v30 = *&a2[6].f64[1];
    v85 = *&a2[5].f64[1];
    v87 = v29;
    v89 = v30;
    v31 = *&a2[8].f64[0];
    v32 = *&a2[8].f64[1];
    v93 = *&a2[7].f64[1];
    v95 = v31;
    v97 = v32;
    v33 = *&a2[10].f64[0];
    v34 = *&a2[10].f64[1];
    v101 = *&a2[9].f64[1];
    v103 = v33;
    v105 = v34;
    v35 = *&a2[12].f64[0];
    v109 = *&a2[11].f64[1];
    v111 = v35;
    v36 = *&a2[12].f64[1];
    v113 = *&a2[13].f64[0];
    v37 = *&a2[13].f64[1];
    v38 = *&a2[14].f64[1];
    v117 = *&a2[14].f64[0];
    v119 = v38;
    v121 = v36;
    v39 = *&a2[2].f64[1];
    *v72 = a2[2].f64[0];
    v73 = v39;
    v75 = *&a2[3].f64[0];
    v83 = *&a2[5].f64[0];
    v91 = *&a2[7].f64[0];
    v99 = *&a2[9].f64[0];
    v107 = *&a2[11].f64[0];
    v115 = v37;
    v65 = 2049;
    v67 = 2049;
    v69 = 2049;
    v71 = 2049;
    *&v72[8] = 2049;
    v74 = 2049;
    v76 = 2049;
    v78 = 2049;
    v80 = 2049;
    v82 = 2049;
    v84 = 2049;
    v86 = 2049;
    v88 = 2049;
    v90 = 2049;
    v92 = 2049;
    v94 = 2049;
    v96 = 2049;
    v98 = 2049;
    v100 = 2049;
    v102 = 2049;
    v104 = 2049;
    v106 = 2049;
    v108 = 2049;
    v110 = 2049;
    v112 = 2049;
    v114 = 2049;
    v116 = 2049;
    v118 = 2049;
    v120 = 2049;
    *buf = 134290945;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "CLMobility::SteadinessModelHarmonic::Features, allBoutsStepIndexOfHarmonicityApCv,%{private}.2f,  allBoutsStepIndexOfHarmonicityApMean,%{private}.2f,allBoutsStepIndexOfHarmonicityApMedian,%{private}.2f, allBoutsStepIndexOfHarmonicityApQ5,%{private}.2f,allBoutsStepIndexOfHarmonicityApQ95,%{private}.2f, allBoutsStepIndexOfHarmonicityMlCv,%{private}.2f, allBoutsStepIndexOfHarmonicityMlMean,%{private}.2f, allBoutsStepIndexOfHarmonicityMlMedian,%{private}.2f, allBoutsStepIndexOfHarmonicityMlQ5,%{private}.2f, allBoutsStepIndexOfHarmonicityMlQ95,%{private}.2f, allBoutsStepIndexOfHarmonicityVtCv,%{private}.2f, allBoutsStepIndexOfHarmonicityVtMean,%{private}.2f, allBoutsStepIndexOfHarmonicityVtMedian,%{private}.2f,  allBoutsStepIndexOfHarmonicityVtQ5,%{private}.2f, allBoutsStepIndexOfHarmonicityVtQ95,%{private}.2f, allBoutsSwingIndexOfHarmonicityApCv,%{private}.2f, allBoutsSwingIndexOfHarmonicityApMean,%{private}.2f, allBoutsSwingIndexOfHarmonicityApMedian,%{private}.2f, allBoutsSwingIndexOfHarmonicityApQ5,%{private}.2f,allBoutsSwingIndexOfHarmonicityApQ95,%{private}.2f, allBoutsSwingIndexOfHarmonicityMlCv,%{private}.2f,allBoutsSwingIndexOfHarmonicityMlMean,%{private}.2f, allBoutsSwingIndexOfHarmonicityMlMedian,%{private}.2f,allBoutsSwingIndexOfHarmonicityMlQ5,%{private}.2f, allBoutsSwingIndexOfHarmonicityMlQ95,%{private}.2f,  allBoutsSwingIndexOfHarmonicityVtMean,%{private}.2f, allBoutsSwingIndexOfHarmonicityVtMedian,%{private}.2f, allBoutsSwingIndexOfHarmonicityVtQ5,%{private}.2f,allBoutsSwingIndexOfHarmonicityVtQ95,%{private}.2f,allBoutsSwingIndexOfHarmonicityVtCv,%{private}.2f", buf, 0x12Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101912B90(a2);
  }
}

void sub_1006EA880(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a2 + 8) = 0;
  v4 = *a3;
  v3 = a3[1];
  if (v3 == *a3)
  {
    *(a2 + 48) |= 0x20u;
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a2 + 16);
  do
  {
    v8 = *(v4 + 8);
    if (v8 > v7)
    {
      break;
    }

    if (*(v4 + 52))
    {
      v9 = 42;
    }

    else
    {
      v9 = -1;
    }

    if ((v9 & *(v4 + 192)) == 0)
    {
      if (v8 > v7 + -2419200.0)
      {
        *(a2 + 12) = ++v5;
      }

      if (v8 > v7 + -604800.0)
      {
        *(a2 + 8) = ++v6;
      }
    }

    v4 += 224;
  }

  while (v4 != v3);
  if (v6 <= 14)
  {
    *(a2 + 48) |= 0x20u;
    if (v5 >= 68)
    {
      return;
    }

LABEL_18:
    *(a2 + 48) |= 0x10u;
    return;
  }

  if (v5 <= 67)
  {
    goto LABEL_18;
  }
}

void sub_1006EA950(uint64_t *a1@<X1>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = vdupq_n_s64(0xFFF0000000000000);
  *a2 = v5;
  *(a2 + 16) = v5;
  *(a2 + 32) = v5;
  *(a2 + 48) = v5;
  *(a2 + 64) = v5;
  *(a2 + 80) = v5;
  *(a2 + 96) = v5;
  *(a2 + 112) = v5;
  *(a2 + 128) = v5;
  *(a2 + 144) = v5;
  *(a2 + 160) = v5;
  *(a2 + 176) = v5;
  *(a2 + 192) = v5;
  *(a2 + 208) = v5;
  *(a2 + 224) = v5;
  __src = 0;
  v123 = 0;
  v124 = 0;
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    v8 = 0;
    v39 = 0;
  }

  else
  {
    v8 = 0;
    do
    {
      v9 = *(v6 + 8);
      if (v9 < a3 && v9 >= a3 + -2419200.0)
      {
        if (v8 >= v124)
        {
          v21 = __src;
          v22 = v8 - __src;
          v23 = 0x6DB6DB6DB6DB6DB7 * ((v8 - __src) >> 5);
          v24 = v23 + 1;
          if ((v23 + 1) > 0x124924924924924)
          {
            sub_10028C64C();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v124 - __src) >> 5) > v24)
          {
            v24 = 0xDB6DB6DB6DB6DB6ELL * ((v124 - __src) >> 5);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v124 - __src) >> 5)) >= 0x92492492492492)
          {
            v25 = 0x124924924924924;
          }

          else
          {
            v25 = v24;
          }

          if (v25)
          {
            sub_1006EB5FC(&__src, v25);
          }

          v26 = (32 * ((v8 - __src) >> 5));
          v27 = *(v6 + 16);
          *v26 = *v6;
          v26[1] = v27;
          v28 = *(v6 + 32);
          v29 = *(v6 + 48);
          v30 = *(v6 + 80);
          v26[4] = *(v6 + 64);
          v26[5] = v30;
          v26[2] = v28;
          v26[3] = v29;
          v31 = *(v6 + 96);
          v32 = *(v6 + 112);
          v33 = *(v6 + 144);
          v26[8] = *(v6 + 128);
          v26[9] = v33;
          v26[6] = v31;
          v26[7] = v32;
          v34 = *(v6 + 160);
          v35 = *(v6 + 176);
          v36 = *(v6 + 208);
          v26[12] = *(v6 + 192);
          v26[13] = v36;
          v26[10] = v34;
          v26[11] = v35;
          v8 = (224 * v23 + 224);
          v37 = (224 * v23 - v22);
          memcpy(v26 - v22, v21, v22);
          v38 = __src;
          __src = v37;
          v123 = v8;
          v124 = 0;
          if (v38)
          {
            operator delete(v38);
          }
        }

        else
        {
          v11 = *(v6 + 16);
          *v8 = *v6;
          *(v8 + 1) = v11;
          v12 = *(v6 + 32);
          v13 = *(v6 + 48);
          v14 = *(v6 + 80);
          *(v8 + 4) = *(v6 + 64);
          *(v8 + 5) = v14;
          *(v8 + 2) = v12;
          *(v8 + 3) = v13;
          v15 = *(v6 + 96);
          v16 = *(v6 + 112);
          v17 = *(v6 + 144);
          *(v8 + 8) = *(v6 + 128);
          *(v8 + 9) = v17;
          *(v8 + 6) = v15;
          *(v8 + 7) = v16;
          v18 = *(v6 + 160);
          v19 = *(v6 + 176);
          v20 = *(v6 + 208);
          *(v8 + 12) = *(v6 + 192);
          *(v8 + 13) = v20;
          *(v8 + 10) = v18;
          *(v8 + 11) = v19;
          v8 += 56;
        }

        v123 = v8;
      }

      v6 += 224;
    }

    while (v6 != v7);
    v39 = __src;
  }

  __p = 0;
  v120 = 0;
  v121 = 0;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v113 = 0;
  v114 = 0;
  v115 = 0;
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v104 = 0;
  v105 = 0;
  for (i = 0; v39 != v8; v39 += 56)
  {
    if (sub_1006EB564(v39, a1))
    {
      v40 = v39[36];
      v41 = v120;
      if (v120 >= v121)
      {
        v43 = __p;
        v44 = v120 - __p;
        v45 = (v120 - __p) >> 3;
        v46 = v45 + 1;
        if ((v45 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v47 = v121 - __p;
        if ((v121 - __p) >> 2 > v46)
        {
          v46 = v47 >> 2;
        }

        if (v47 >= 0x7FFFFFFFFFFFFFF8)
        {
          v48 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v48 = v46;
        }

        if (v48)
        {
          sub_1000B9708(&__p, v48);
        }

        *(8 * v45) = v40;
        v42 = 8 * v45 + 8;
        memcpy(0, v43, v44);
        v49 = __p;
        __p = 0;
        v120 = v42;
        v121 = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *v120 = v40;
        v42 = (v41 + 1);
      }

      v120 = v42;
      v50 = v39[37];
      v51 = v117;
      if (v117 >= v118)
      {
        v53 = v116;
        v54 = v117 - v116;
        v55 = (v117 - v116) >> 3;
        v56 = v55 + 1;
        if ((v55 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v57 = v118 - v116;
        if ((v118 - v116) >> 2 > v56)
        {
          v56 = v57 >> 2;
        }

        if (v57 >= 0x7FFFFFFFFFFFFFF8)
        {
          v58 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = v56;
        }

        if (v58)
        {
          sub_1000B9708(&v116, v58);
        }

        *(8 * v55) = v50;
        v52 = 8 * v55 + 8;
        memcpy(0, v53, v54);
        v59 = v116;
        v116 = 0;
        v117 = v52;
        v118 = 0;
        if (v59)
        {
          operator delete(v59);
        }
      }

      else
      {
        *v117 = v50;
        v52 = (v51 + 1);
      }

      v117 = v52;
      v60 = v39[38];
      v61 = v114;
      if (v114 >= v115)
      {
        v63 = v113;
        v64 = v114 - v113;
        v65 = (v114 - v113) >> 3;
        v66 = v65 + 1;
        if ((v65 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v67 = v115 - v113;
        if ((v115 - v113) >> 2 > v66)
        {
          v66 = v67 >> 2;
        }

        if (v67 >= 0x7FFFFFFFFFFFFFF8)
        {
          v68 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v68 = v66;
        }

        if (v68)
        {
          sub_1000B9708(&v113, v68);
        }

        *(8 * v65) = v60;
        v62 = 8 * v65 + 8;
        memcpy(0, v63, v64);
        v69 = v113;
        v113 = 0;
        v114 = v62;
        v115 = 0;
        if (v69)
        {
          operator delete(v69);
        }
      }

      else
      {
        *v114 = v60;
        v62 = (v61 + 1);
      }

      v114 = v62;
      v70 = v39[39];
      v71 = v111;
      if (v111 >= v112)
      {
        v73 = v110;
        v74 = v111 - v110;
        v75 = (v111 - v110) >> 3;
        v76 = v75 + 1;
        if ((v75 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v77 = v112 - v110;
        if ((v112 - v110) >> 2 > v76)
        {
          v76 = v77 >> 2;
        }

        if (v77 >= 0x7FFFFFFFFFFFFFF8)
        {
          v78 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v78 = v76;
        }

        if (v78)
        {
          sub_1000B9708(&v110, v78);
        }

        *(8 * v75) = v70;
        v72 = 8 * v75 + 8;
        memcpy(0, v73, v74);
        v79 = v110;
        v110 = 0;
        v111 = v72;
        v112 = 0;
        if (v79)
        {
          operator delete(v79);
        }
      }

      else
      {
        *v111 = v70;
        v72 = (v71 + 1);
      }

      v111 = v72;
      v80 = v39[40];
      v81 = v108;
      if (v108 >= v109)
      {
        v83 = v107;
        v84 = v108 - v107;
        v85 = (v108 - v107) >> 3;
        v86 = v85 + 1;
        if ((v85 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v87 = v109 - v107;
        if ((v109 - v107) >> 2 > v86)
        {
          v86 = v87 >> 2;
        }

        if (v87 >= 0x7FFFFFFFFFFFFFF8)
        {
          v88 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v88 = v86;
        }

        if (v88)
        {
          sub_1000B9708(&v107, v88);
        }

        *(8 * v85) = v80;
        v82 = 8 * v85 + 8;
        memcpy(0, v83, v84);
        v89 = v107;
        v107 = 0;
        v108 = v82;
        v109 = 0;
        if (v89)
        {
          operator delete(v89);
        }
      }

      else
      {
        *v108 = v80;
        v82 = (v81 + 1);
      }

      v108 = v82;
      v90 = v39[41];
      v91 = v105;
      if (v105 >= i)
      {
        v93 = v104;
        v94 = v105 - v104;
        v95 = (v105 - v104) >> 3;
        v96 = v95 + 1;
        if ((v95 + 1) >> 61)
        {
          sub_10028C64C();
        }

        v97 = i - v104;
        if ((i - v104) >> 2 > v96)
        {
          v96 = v97 >> 2;
        }

        if (v97 >= 0x7FFFFFFFFFFFFFF8)
        {
          v98 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v98 = v96;
        }

        if (v98)
        {
          sub_1000B9708(&v104, v98);
        }

        *(8 * v95) = v90;
        v92 = 8 * v95 + 8;
        memcpy(0, v93, v94);
        v99 = v104;
        v104 = 0;
        v105 = v92;
        i = 0;
        if (v99)
        {
          operator delete(v99);
        }
      }

      else
      {
        *v105 = v90;
        v92 = (v91 + 1);
      }

      v105 = v92;
    }
  }

  if (qword_1025D41B0 != -1)
  {
    sub_101912B68();
  }

  v100 = qword_1025D41B8;
  if (os_log_type_enabled(qword_1025D41B8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134350848;
    v142 = a3;
    v143 = 2050;
    v144 = 0x6DB6DB6DB6DB6DB7 * ((v123 - __src) >> 5);
    v145 = 2050;
    v146 = (v120 - __p) >> 3;
    v147 = 2050;
    v148 = (v117 - v116) >> 3;
    v149 = 2050;
    v150 = (v114 - v113) >> 3;
    v151 = 2050;
    v152 = (v111 - v110) >> 3;
    v153 = 2050;
    v154 = (v108 - v107) >> 3;
    v155 = 2050;
    v156 = (v105 - v104) >> 3;
    _os_log_impl(dword_100000000, v100, OS_LOG_TYPE_DEBUG, "SteadinessModelHarmonic::extractFeatures,classificationTime,%{public}.2f,numBouts,%{public}lu,numStepBoutsStepIndexOfHarmonicityAP,%{public}lu, numStepBoutsStepIndexOfHarmonicityML,%{public}lu, numStepBoutsStepIndexOfHarmonicityVT,%{public}lu, numStepBoutsSwingIndexOfHarmonicityAP,%{public}lu, numStepBoutsSwingIndexOfHarmonicityML,%{public}lu, numStepBoutsSwingIndexOfHarmonicityVT,%{public}lu", buf, 0x52u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101912DE4(buf);
    v125 = 134350848;
    v126 = a3;
    v127 = 2050;
    v128 = 0x6DB6DB6DB6DB6DB7 * ((v123 - __src) >> 5);
    v129 = 2050;
    v130 = (v120 - __p) >> 3;
    v131 = 2050;
    v132 = (v117 - v116) >> 3;
    v133 = 2050;
    v134 = (v114 - v113) >> 3;
    v135 = 2050;
    v136 = (v111 - v110) >> 3;
    v137 = 2050;
    v138 = (v108 - v107) >> 3;
    v139 = 2050;
    v140 = (v105 - v104) >> 3;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D41B8, 2, "SteadinessModelHarmonic::extractFeatures,classificationTime,%{public}.2f,numBouts,%{public}lu,numStepBoutsStepIndexOfHarmonicityAP,%{public}lu, numStepBoutsStepIndexOfHarmonicityML,%{public}lu, numStepBoutsStepIndexOfHarmonicityVT,%{public}lu, numStepBoutsSwingIndexOfHarmonicityAP,%{public}lu, numStepBoutsSwingIndexOfHarmonicityML,%{public}lu, numStepBoutsSwingIndexOfHarmonicityVT,%{public}lu", &v125, 82);
    v103 = v102;
    sub_100152C7C("Generic", 1, 0, 2, "Features CLMobility::SteadinessModelHarmonic::extractFeatures(CFAbsoluteTime, const std::vector<BoutMetrics> &) const", "%s\n", v102);
    if (v103 != buf)
    {
      free(v103);
    }
  }

  if (__p != v120)
  {
    *a2 = sub_100FB14B0(&__p);
    *(a2 + 8) = sub_100FB1478(&__p);
    *(a2 + 16) = sub_100FB15E4(&__p);
    *(a2 + 24) = sub_1010BD928(&__p, 5);
    *(a2 + 32) = sub_1010BD928(&__p, 95);
  }

  if (v116 != v117)
  {
    *(a2 + 40) = sub_100FB14B0(&v116);
    *(a2 + 48) = sub_100FB1478(&v116);
    *(a2 + 56) = sub_100FB15E4(&v116);
    *(a2 + 64) = sub_1010BD928(&v116, 5);
    *(a2 + 72) = sub_1010BD928(&v116, 95);
  }

  if (v113 != v114)
  {
    *(a2 + 80) = sub_100FB14B0(&v113);
    *(a2 + 88) = sub_100FB1478(&v113);
    *(a2 + 96) = sub_100FB15E4(&v113);
    *(a2 + 104) = sub_1010BD928(&v113, 5);
    *(a2 + 112) = sub_1010BD928(&v113, 95);
  }

  if (v110 != v111)
  {
    *(a2 + 120) = sub_100FB14B0(&v110);
    *(a2 + 128) = sub_100FB1478(&v110);
    *(a2 + 136) = sub_100FB15E4(&v110);
    *(a2 + 144) = sub_1010BD928(&v110, 5);
    *(a2 + 152) = sub_1010BD928(&v110, 95);
  }

  if (v107 != v108)
  {
    *(a2 + 160) = sub_100FB14B0(&v107);
    *(a2 + 168) = sub_100FB1478(&v107);
    *(a2 + 176) = sub_100FB15E4(&v107);
    *(a2 + 184) = sub_1010BD928(&v107, 5);
    *(a2 + 192) = sub_1010BD928(&v107, 95);
  }

  v101 = v104;
  if (v104 != v105)
  {
    *(a2 + 200) = sub_100FB14B0(&v104);
    *(a2 + 208) = sub_100FB1478(&v104);
    *(a2 + 216) = sub_100FB15E4(&v104);
    *(a2 + 224) = sub_1010BD928(&v104, 5);
    *(a2 + 232) = sub_1010BD928(&v104, 95);
    v101 = v104;
  }

  if (v101)
  {
    v105 = v101;
    operator delete(v101);
  }

  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }

  if (v110)
  {
    v111 = v110;
    operator delete(v110);
  }

  if (v113)
  {
    v114 = v113;
    operator delete(v113);
  }

  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  if (__p)
  {
    v120 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v123 = __src;
    operator delete(__src);
  }
}

void sub_1006EB49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  if (a30)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006EB564(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 52))
  {
    v2 = 42;
  }

  else
  {
    v2 = -1;
  }

  if ((v2 & *(a1 + 192)) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 152);
  if (v3 < 0.0 || v3 > 1.0)
  {
    return 0;
  }

  v5 = *(a1 + 164);
  return v5 >= 0.0 && v5 <= 1.0 && !sub_1006EB658(a1);
}

void sub_1006EB5FC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x124924924924925)
  {
    operator new();
  }

  sub_1001D0818();
}

double sub_1006EB6AC(uint64_t a1, double *a2)
{
  if ((*(a1 + 600) & 1) == 0)
  {
    if (*a1 == 1 && (sub_10002980C(a1, a2) & 1) == 0)
    {
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v4 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
      {
        v5 = *(a1 + 596);
        v6 = *a2;
        *buf = 67240448;
        v16 = v5;
        v17 = 2050;
        v18 = v6;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,mct,%{public}.3f,failed to predict on go to sleep call", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101912E28(buf);
        v8 = *(a1 + 596);
        v9 = *a2;
        v12[0] = 67240448;
        v12[1] = v8;
        v13 = 2050;
        v14 = v9;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,mct,%{public}.3f,failed to predict on go to sleep call", v12, 18);
        v11 = v10;
        sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionKalmanFilterCV::deviceEnteringSleepMode(const CFTimeInterval &)", "%s\n", v10);
        if (v11 != buf)
        {
          free(v11);
        }
      }
    }

    *(a1 + 600) = 1;
    result = *a2;
    *(a1 + 608) = *a2;
  }

  return result;
}

void sub_1006EB880(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

int *sub_1006EB88C(int *result, int *a2, _DWORD *a3)
{
  v3 = 0;
  v4 = *a2;
  if (*a2 <= 2009)
  {
    if (v4 > 8)
    {
      if (v4 <= 40)
      {
        if (v4 == 9)
        {
          goto LABEL_53;
        }

        if (v4 != 10)
        {
          if (v4 != 11)
          {
            goto LABEL_57;
          }

          goto LABEL_25;
        }

        goto LABEL_44;
      }

      if ((v4 - 61) < 2)
      {
        goto LABEL_56;
      }

      if (v4 == 41)
      {
        goto LABEL_52;
      }

      if (v4 != 100)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v4 <= 4)
      {
        if (v4 > 2)
        {
          if (v4 != 3)
          {
            goto LABEL_52;
          }

LABEL_53:
          v3 = 3;
          goto LABEL_57;
        }

        if (v4 != 1)
        {
          if (v4 != 2)
          {
            goto LABEL_57;
          }

LABEL_25:
          if ((*a3 - 1) < 2)
          {
            v3 = 1;
          }

          else
          {
            v3 = 2;
          }

          goto LABEL_57;
        }

LABEL_44:
        v3 = 1;
        goto LABEL_57;
      }

      if (v4 <= 6)
      {
        if (v4 != 5)
        {
          v3 = 6;
          goto LABEL_57;
        }

        goto LABEL_58;
      }

      if (v4 == 7)
      {
        goto LABEL_56;
      }
    }

LABEL_55:
    v3 = 5;
    goto LABEL_57;
  }

  if (v4 > 3014)
  {
    if (v4 <= 17149)
    {
      if (v4 > 12149)
      {
        if (v4 != 12150)
        {
          if (v4 == 15110 || v4 == 15670)
          {
            goto LABEL_56;
          }

          goto LABEL_57;
        }

        goto LABEL_53;
      }

      if (v4 == 3015)
      {
        goto LABEL_53;
      }

      v6 = 11805;
LABEL_49:
      if (v4 != v6)
      {
        goto LABEL_57;
      }

      goto LABEL_52;
    }

    if (v4 <= 18239)
    {
      if (v4 == 17150)
      {
        goto LABEL_53;
      }

      v6 = 18200;
      goto LABEL_49;
    }

    if (v4 == 18240)
    {
      goto LABEL_52;
    }

    if (v4 != 19150)
    {
      if (v4 != 90603)
      {
        goto LABEL_57;
      }

      goto LABEL_55;
    }

LABEL_58:
    v3 = 7;
    goto LABEL_57;
  }

  if (v4 <= 2100)
  {
    v5 = (v4 - 2010);
    if (v5 > 0x3D)
    {
      goto LABEL_57;
    }

    if (((1 << v5) & 0x2008004000005400) == 0)
    {
      if (v5)
      {
        if (v5 != 55)
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      }

      goto LABEL_25;
    }

LABEL_56:
    v3 = 2;
    goto LABEL_57;
  }

  if (v4 == 2101)
  {
LABEL_52:
    v3 = 4;
    goto LABEL_57;
  }

  if (v4 == 2105 || v4 == 2150)
  {
    goto LABEL_56;
  }

LABEL_57:
  *result = v3;
  return result;
}

void sub_1006EBA9C(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = hypot(v3, v2);
  if (v4 >= 0.001)
  {
    v5 = *(a1 + 392);
    v6 = 0.0;
    if (v5 > 5.0)
    {
      v7 = 1.0;
      v8 = 1.0 - (v5 + -5.0) * (v5 + -5.0) / ((v5 + 5.0) * (v5 + 5.0));
      if (v8 <= 1.0)
      {
        v9 = 1.0 - (v5 + -5.0) * (v5 + -5.0) / ((v5 + 5.0) * (v5 + 5.0));
      }

      else
      {
        v9 = 1.0;
      }

      if (v8 >= 0.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      v11 = *(a1 + 400);
      if (v11 > 0.0)
      {
        v12 = 1.0 - (v11 + -5.0) * (v11 + -5.0) / ((v11 + 5.0) * (v11 + 5.0));
        if (v12 <= 1.0)
        {
          v7 = 1.0 - (v11 + -5.0) * (v11 + -5.0) / ((v11 + 5.0) * (v11 + 5.0));
        }

        if (v12 < 0.0)
        {
          v7 = 0.0;
        }

        if (v7 != 0.0)
        {
          v10 = v10 / v7;
        }
      }

      v13 = v10 * v10;
      *(a1 + 400) = v5;
      *(a1 + 24) = v3 * v13;
      *(a1 + 32) = v2 * v13;
      v6 = *(a1 + 416) - v4 * v13;
    }

    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v14 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 596);
      v16 = hypot(*(a1 + 24), *(a1 + 32));
      v17 = *(a1 + 416);
      *buf = 67241472;
      v39 = v15;
      v40 = 2050;
      v41 = v4;
      v42 = 2050;
      v43 = v16;
      v44 = 2050;
      v45 = v17;
      v46 = 2050;
      v47 = v17 - v6;
      v48 = 2050;
      v49 = v6;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,speed before decay,%{public}.2f,speed after decay,%{public}.2f,last location speed,%{public}.2f,decayed last location speed,%{public}.2f,total speed decay,%{public}.2f", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v21 = qword_1025D4778;
      v22 = *(a1 + 596);
      v23 = hypot(*(a1 + 24), *(a1 + 32));
      v24 = *(a1 + 416);
      v27[0] = 67241472;
      v27[1] = v22;
      v28 = 2050;
      v29 = v4;
      v30 = 2050;
      v31 = v23;
      v32 = 2050;
      v33 = v24;
      v34 = 2050;
      v35 = v24 - v6;
      v36 = 2050;
      v37 = v6;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v21, 2, "KFCV:,ID,%{public}d,speed before decay,%{public}.2f,speed after decay,%{public}.2f,last location speed,%{public}.2f,decayed last location speed,%{public}.2f,total speed decay,%{public}.2f", v27, 58);
      v26 = v25;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionKalmanFilterCV::decaySpeed()", "%s\n", v25);
      if (v26 != buf)
      {
        free(v26);
      }
    }

    v18 = *(a1 + 360);
    v19 = 0.0;
    if (v18 <= 0xA)
    {
      v19 = dbl_101C89660[v18];
    }

    if (v4 * v4 > v19)
    {
      v20 = v6 * v6 * 0.125;
      *(a1 + 288) = v20 + *(a1 + 288);
      *(a1 + 248) = v20 + *(a1 + 248);
    }
  }
}

void sub_1006EBDC0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1006EBDCC(uint64_t a1, double *a2, double a3, double a4, int8x16_t a5)
{
  if ((*a1 & 1) == 0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v11 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 596);
      v13 = *a2;
      *buf = 67240448;
      v105 = v12;
      v106 = 2050;
      v107 = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,filter is not initialized", buf, 0x12u);
    }

    result = sub_10000A100(121, 2);
    if (result)
    {
      sub_101912E28(buf);
      v14 = *(a1 + 596);
      v15 = *a2;
      v96 = 67240448;
      v97 = v14;
      v98 = 2050;
      v99 = v15;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,filter is not initialized", &v96, 18);
      v17 = v16;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v16);
      goto LABEL_15;
    }

    return result;
  }

  *a5.i64 = *a2 - *(a1 + 368);
  if (*a5.i64 > 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v7 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 596);
      v9 = *a2;
      *buf = 67240448;
      v105 = v8;
      v106 = 2050;
      v107 = v9;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,for positive dt_prediction calling predictState", buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v76 = *(a1 + 596);
      v77 = *a2;
      v96 = 67240448;
      v97 = v76;
      v98 = 2050;
      v99 = v77;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,for positive dt_prediction calling predictState", &v96, 18);
      v79 = v78;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v78);
      if (v79 != buf)
      {
        free(v79);
      }
    }

    return sub_10002980C(a1, a2);
  }

  v18 = fabs(*a5.i64);
  v93 = a5;
  if (v18 + 0.000001 < 0.001)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v19 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v20 = *(a1 + 596);
      v21 = *a2;
      *buf = 67240960;
      v105 = v20;
      v106 = 2050;
      v107 = v21;
      v108 = 2050;
      v109 = v93.i64[0];
      v110 = 2050;
      v111 = 0xBF50624DD2F1A9FCLL;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,prediction skipped,small dt,%{public}.6f,limit,%{public}.6f", buf, 0x26u);
    }

    if (!sub_10000A100(121, 2))
    {
      return 1;
    }

    sub_101912E28(buf);
    v80 = *(a1 + 596);
    v81 = *a2;
    v96 = 67240960;
    v97 = v80;
    v98 = 2050;
    v99 = v81;
    v100 = 2050;
    v101 = v93.i64[0];
    v102 = 2050;
    v103 = 0xBF50624DD2F1A9FCLL;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,prediction skipped,small dt,%{public}.6f,limit,%{public}.6f", &v96, 38);
    v75 = v82;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v82);
LABEL_91:
    if (v75 != buf)
    {
      free(v75);
    }

    return 1;
  }

  if (v18 <= 2.56)
  {
    if (sub_10002838C(a1, v18))
    {
      if (*(a1 + 488) == 1 && (*(a1 + 504) & 1) != 0)
      {
        if (sub_100028700(a1, v18))
        {
          if (*(a1 + 456) == 1)
          {
            v29 = *(a1 + 472);
            if (v29)
            {
LABEL_39:
              v31.i64[1] = v93.i64[1];
              *(a1 + 384) = *v93.i64 + *(a1 + 384);
              v32 = *(a1 + 360);
              if ((v32 - 3) < 8 || !v32)
              {
                *(a1 + 392) = *v93.i64 + *(a1 + 392);
              }

              if (*(a1 + 488) != 1 || *(a1 + 504) != 1 || !v29)
              {
                sub_100173BA0();
              }

              v28.i64[0] = *(a1 + 480);
              v33.f64[0] = NAN;
              v33.f64[1] = NAN;
              v34 = *vbslq_s8(vnegq_f64(v33), v28, v93).i64;
              v35 = *(a1 + 496);
              v36 = *(a1 + 24);
              *v28.i64 = *(a1 + 8) + v34 * v36 / *(a1 + 464);
              v31.i64[0] = 0x400921FB54442D18;
              v91 = v31;
              if (fabs(*v28.i64) > 3.14159265)
              {
                v37.f64[0] = NAN;
                v37.f64[1] = NAN;
                v89 = *vbslq_s8(vnegq_f64(v37), v31, v28).i64;
                v90 = v34;
                *v28.i64 = fmod(*v28.i64 + v89, 6.28318531);
                v34 = v90;
                *v28.i64 = *v28.i64 - v89;
              }

              if (*v28.i64 >= 1.57079633)
              {
                v38 = v91;
                *v28.i64 = *v91.i64 - *v28.i64;
              }

              else
              {
                v38 = v91;
                if (*v28.i64 < -1.57079633)
                {
                  *v28.i64 = -3.14159265 - *v28.i64;
                }
              }

              *(a1 + 8) = v28.i64[0];
              v57 = *(a1 + 448);
              v58 = *(a1 + 16);
              v59 = *(a1 + 32);
              if (v57 <= 0.0)
              {
                *v28.i64 = v58 + v34 * v59;
              }

              else
              {
                *v28.i64 = v58 + v34 * v59 / v57;
              }

              if (fabs(*v28.i64) > *v38.i64)
              {
                v60.f64[0] = NAN;
                v60.f64[1] = NAN;
                v92 = *vbslq_s8(vnegq_f64(v60), v38, v28).i64;
                *v28.i64 = fmod(*v28.i64 + v92, 6.28318531) - v92;
              }

              *(a1 + 16) = v28.i64[0];
              *(a1 + 24) = v35 * v36;
              *(a1 + 32) = v35 * v59;
              v61 = *(a1 + 40);
              v62 = v61 * sub_100028A74((a1 + 360));
              v63 = *(a1 + 120);
              v64 = sub_100028A74((a1 + 360));
              sub_100028AA0(a1 + 296, *a2, v62, v63 * v64);
              v65 = *v93.i64 + *(a1 + 376);
              *(a1 + 368) = *a2;
              *(a1 + 376) = v65;
              v66 = *(a1 + 168) + *(a1 + 208);
              *(a1 + 584) = v66;
              result = 1;
              if (v66 > 2.25e10)
              {
                *(a1 + 592) = 1;
                if (qword_1025D4770 != -1)
                {
                  sub_101912E6C();
                }

                v67 = qword_1025D4778;
                if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
                {
                  v68 = *(a1 + 596);
                  v69 = *a2;
                  v70 = *(a1 + 584);
                  *buf = 67240960;
                  v105 = v68;
                  v106 = 2050;
                  v107 = v69;
                  v108 = 2050;
                  v109 = v70;
                  v110 = 2050;
                  v111 = 0x4214F46B04000000;
                  _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,maximum position uncertainty growth reached,%{public}.1f,max,%{public}.1f", buf, 0x26u);
                }

                if (!sub_10000A100(121, 2))
                {
                  return 1;
                }

                sub_101912E28(buf);
                v71 = *(a1 + 596);
                v72 = *a2;
                v73 = *(a1 + 584);
                v96 = 67240960;
                v97 = v71;
                v98 = 2050;
                v99 = v72;
                v100 = 2050;
                v101 = v73;
                v102 = 2050;
                v103 = 0x4214F46B04000000;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,maximum position uncertainty growth reached,%{public}.1f,max,%{public}.1f", &v96, 38);
                v75 = v74;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v74);
                goto LABEL_91;
              }

              return result;
            }
          }

          v94 = 0;
          v95 = 0;
          if (sub_100208760((a1 + 512), &v95, &v94, *(a1 + 8) * 57.2957795, *(a1 + 408)))
          {
            v30 = v95;
            *(a1 + 448) = v94;
            v29 = 1;
            *(a1 + 456) = 1;
            *(a1 + 464) = v30;
            *(a1 + 472) = 1;
            goto LABEL_39;
          }

          if (qword_1025D4770 != -1)
          {
            sub_101912E6C();
          }

          v54 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
          {
            v55 = *(a1 + 596);
            v56 = *a2;
            *buf = 67240448;
            v105 = v55;
            v106 = 2050;
            v107 = v56;
            _os_log_impl(dword_100000000, v54, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state calc_dNdE failed", buf, 0x12u);
          }

          if (!sub_10000A100(121, 0))
          {
            return 0;
          }

          sub_101912E28(buf);
          v86 = *(a1 + 596);
          v87 = *a2;
          v96 = 67240448;
          v97 = v86;
          v98 = 2050;
          v99 = v87;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state calc_dNdE failed", &v96, 18);
          v17 = v88;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v88);
        }

        else
        {
          if (qword_1025D4770 != -1)
          {
            sub_1001D30A0();
          }

          v48 = qword_1025D4778;
          if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
          {
            v49 = *(a1 + 596);
            v50 = *a2;
            *buf = 67240448;
            v105 = v49;
            v106 = 2050;
            v107 = v50;
            _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state failed on error cov propagation", buf, 0x12u);
          }

          result = sub_10000A100(121, 0);
          if (!result)
          {
            return result;
          }

          sub_101912E28(buf);
          v51 = *(a1 + 596);
          v52 = *a2;
          v96 = 67240448;
          v97 = v51;
          v98 = 2050;
          v99 = v52;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state failed on error cov propagation", &v96, 18);
          v17 = v53;
          sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v53);
        }
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v45 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
        {
          v46 = *(a1 + 596);
          v47 = *a2;
          *buf = 67240448;
          v105 = v46;
          v106 = 2050;
          v107 = v47;
          _os_log_impl(dword_100000000, v45, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state failed to set element of Phi", buf, 0x12u);
        }

        result = sub_10000A100(121, 0);
        if (!result)
        {
          return result;
        }

        sub_101912E28(buf);
        v83 = *(a1 + 596);
        v84 = *a2;
        v96 = 67240448;
        v97 = v83;
        v98 = 2050;
        v99 = v84;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state failed to set element of Phi", &v96, 18);
        v17 = v85;
        sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v85);
      }
    }

    else
    {
      if (qword_1025D4770 != -1)
      {
        sub_1001D30A0();
      }

      v39 = qword_1025D4778;
      if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
      {
        v40 = *(a1 + 596);
        v41 = *a2;
        *buf = 67240448;
        v105 = v40;
        v106 = 2050;
        v107 = v41;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state failed to set Q", buf, 0x12u);
      }

      result = sub_10000A100(121, 0);
      if (!result)
      {
        return result;
      }

      sub_101912E28(buf);
      v42 = *(a1 + 596);
      v43 = *a2;
      v96 = 67240448;
      v97 = v42;
      v98 = 2050;
      v99 = v43;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,#Error,predict state failed to set Q", &v96, 18);
      v17 = v44;
      sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v44);
    }

LABEL_15:
    if (v17 != buf)
    {
      free(v17);
    }

    return 0;
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v22 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
  {
    v23 = *(a1 + 596);
    v24 = *a2;
    *buf = 67240960;
    v105 = v23;
    v106 = 2050;
    v107 = v24;
    v108 = 2050;
    v109 = v93.i64[0];
    v110 = 2050;
    v111 = 0xC0047AE147AE147BLL;
    _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,exceeded maximum prediction duration,predictionDuration,%{public}.3f,limit,%{public}.3f", buf, 0x26u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101912E28(buf);
    v25 = *(a1 + 596);
    v26 = *a2;
    v96 = 67240960;
    v97 = v25;
    v98 = 2050;
    v99 = v26;
    v100 = 2050;
    v101 = v93.i64[0];
    v102 = 2050;
    v103 = 0xC0047AE147AE147BLL;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,predictStateBackward,mct,%{public}.3f,exceeded maximum prediction duration,predictionDuration,%{public}.3f,limit,%{public}.3f", &v96, 38);
    v17 = v27;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::predictStateBackward(const CFTimeInterval &)", "%s\n", v27);
    goto LABEL_15;
  }

  return result;
}

void sub_1006ECC88(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1006ECC94(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 596);
      *buf = 67240192;
      v12 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,failed to reinitialize filter position state variance, hunc <= 0", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v7 = *(a1 + 596);
      v10[0] = 67240192;
      v10[1] = v7;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,failed to reinitialize filter position state variance, hunc <= 0", v10, 8);
      v9 = v8;
      sub_100152C7C("Generic", 1, 0, 2, "void cllcf::LCFusionKalmanFilterCV::reinitializePositionStateVariance(const double)", "%s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  else
  {
    v3 = fmax(a2, 1.0);
    v4 = v3 * v3 * 0.5;
    *(a1 + 168) = v4;
    *(a1 + 208) = v4;
    *(a1 + 200) = 0;
    *(a1 + 176) = 0;
  }
}

void sub_1006ECE38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1006ECE44(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000B1F8(a1, a2);
  sub_10000AED4(v3, v17);
  v16 = -1.0;
  if (sub_100125300(v17, &v16))
  {
    if (vabdd_f64(*(a1 + 376) - *(a1 + 368), v16) < 1.0)
    {
      return 0;
    }

    if (qword_1025D4770 != -1)
    {
      sub_101912E6C();
    }

    v7 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 596);
      v9 = *(a1 + 368);
      v10 = *(a1 + 376) - v9;
      *buf = 67240960;
      v26 = v8;
      v27 = 2050;
      v28 = v9;
      v29 = 2050;
      v30 = v10;
      v31 = 2050;
      v32 = v16;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,CFAbsoluteTime updated,filter_mct,%{public}.3f,previous MCT-to-CFAT,%{public}.3f,current MCT-to-CFAT,%{public}.3f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4770 != -1)
      {
        sub_101912E6C();
      }

      v11 = *(a1 + 596);
      v12 = *(a1 + 368);
      v13 = *(a1 + 376) - v12;
      v18[0] = 67240960;
      v18[1] = v11;
      v19 = 2050;
      v20 = v12;
      v21 = 2050;
      v22 = v13;
      v23 = 2050;
      v24 = v16;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,CFAbsoluteTime updated,filter_mct,%{public}.3f,previous MCT-to-CFAT,%{public}.3f,current MCT-to-CFAT,%{public}.3f", v18, 38);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateFilterCFAbsoluteTimeIfChangeInOffsetToMCT()", "%s\n", v14);
      if (v15 != buf)
      {
        free(v15);
      }
    }

    *(a1 + 376) = *(a1 + 368) + v16;
    return 1;
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_101912E6C();
    }

    v5 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_FAULT))
    {
      v6 = *(a1 + 596);
      *buf = 67240192;
      v26 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "KFCV:,ID,%{public}d,could not get MCT-to-CFAT offset to update CFAbsoluteTime", buf, 8u);
    }

    result = sub_10000A100(121, 0);
    if (result)
    {
      sub_101912E94(a1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006ED108(uint64_t a1, __n128 a2)
{
  if (*a1)
  {
    v3 = *(a1 + 360);
    v4 = 0.0;
    if (v3 <= 0xA)
    {
      v4 = dbl_101C89800[v3];
    }

    v5 = v4 * a2.n128_f64[0];
    v6 = a1 + 296;

    return sub_1006ED2F4(v6, v5);
  }

  else
  {
    if (qword_1025D4770 != -1)
    {
      sub_1001D30A0();
    }

    v8 = qword_1025D4778;
    if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 596);
      *buf = 67240192;
      v15 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,filter is not initialized, cannot inflate altitude uncertainty", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101912E28(buf);
      v10 = *(a1 + 596);
      v13[0] = 67240192;
      v13[1] = v10;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,filter is not initialized, cannot inflate altitude uncertainty", v13, 8);
      v12 = v11;
      sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::inflateAltitudeUncertainty(const double)", "%s\n", v11);
      if (v12 != buf)
      {
        free(v12);
      }
    }

    return 0;
  }
}

void sub_1006ED2E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1006ED2F4(uint64_t a1, double a2)
{
  if (*(a1 + 56) != 1)
  {
    return 0;
  }

  if (a2 >= 0.0)
  {
    v4 = *(a1 + 8);
    if (v4 > 0.0)
    {
      *(a1 + 8) = v4 + a2;
      return 1;
    }
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v6 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v7 = *(a1 + 8);
    *buf = 134349312;
    v16 = v7;
    v17 = 2050;
    v18 = a2;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_ERROR, "KFCV:#Error,inflateAltitudeUncertainty,failed with invalid var,altVar,%{public}.2f,inputVar,%{public}.2f", buf, 0x16u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101912E28(buf);
    v8 = *(a1 + 8);
    v11 = 134349312;
    v12 = v8;
    v13 = 2050;
    v14 = a2;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:#Error,inflateAltitudeUncertainty,failed with invalid var,altVar,%{public}.2f,inputVar,%{public}.2f", &v11, 22);
    v10 = v9;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::LCFusionAltitudePropagator::inflateAltitudeUncertainty(const double)", "%s\n", v9);
    if (v10 != buf)
    {
      free(v10);
    }

    return 0;
  }

  return result;
}

void sub_1006ED4BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1006ED4C8(uint64_t a1, int8x16_t a2, double a3, int8x16_t a4, double a5, double a6, double a7, double a8, int8x16_t a9)
{
  v9 = *a4.i64;
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  if (fabs(v12) < 0.001 && fabs(v13) < 0.001)
  {
    return 0;
  }

  v15 = v12 * v12;
  v16 = v13 * v13;
  *a9.i64 = *a2.i64 - a5;
  v17 = vabdd_f64(*a2.i64, a5);
  a2.i64[0] = 0x400921FB54442D18;
  if (v17 > 3.14159265)
  {
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v74 = *vbslq_s8(vnegq_f64(v18), a2, a9).i64;
    *a9.i64 = fmod(*a9.i64 + v74, 6.28318531) - v74;
  }

  if (v15 >= 0.000001)
  {
    v19 = v12 * v12;
  }

  else
  {
    v19 = 0.000001;
  }

  v20 = v16 >= 0.000001 || v15 < 0.000001;
  if (v15 < 0.000001 && v16 < 0.000001)
  {
    v21 = 0.000001;
  }

  else
  {
    v21 = v13 * v13;
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.000001;
  }

  v23 = 1.0 / ((v19 + v22) * (v19 + v22));
  v24.f64[0] = *(a1 + 248);
  v25 = v23 * (v22 * v24.f64[0]);
  if (v25 > 0.0)
  {
    *a2.i64 = v23 * (v19 * *(a1 + 288));
    if (*a2.i64 > 0.0)
    {
      v26 = v25 + *a2.i64;
      if (v25 + *a2.i64 > 0.616850275)
      {
        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v27 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 596);
          *buf = 67240448;
          v94 = v28;
          v95 = 2050;
          v96 = sqrt(v26) * 57.2957795;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,linearization instability protection,large estimatedCourseUnc_deg,%{public}.3f,Course Meas update ignored", buf, 0x12u);
        }

        result = sub_10000A100(121, 2);
        if (result)
        {
          sub_101912E28(buf);
          v29 = *(a1 + 596);
          *v86 = 67240448;
          *&v86[4] = v29;
          *&v86[8] = 2050;
          *&v86[10] = sqrt(v26) * 57.2957795;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,linearization instability protection,large estimatedCourseUnc_deg,%{public}.3f,Course Meas update ignored", v86, 18);
          v31 = v30;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const double, const double, const double, const double)", "%s\n", v30);
          goto LABEL_33;
        }

        return result;
      }

      *a4.i64 = 1.0 / (v15 + v16);
      v36 = -(v13 * *a4.i64) * v9;
      v37 = (a1 + 168);
      v38 = *(a1 + 248);
      v89 = *(a1 + 232);
      v90 = v38;
      v39 = *(a1 + 280);
      v91 = *(a1 + 264);
      v92 = v39;
      v40 = *(a1 + 184);
      *v86 = *(a1 + 168);
      *&v86[16] = v40;
      v41 = *(a1 + 216);
      v87 = *(a1 + 200);
      v88 = v41;
      v42 = *(a1 + 24);
      v84 = *(a1 + 8);
      v85 = v42;
      v43 = 1.0 / (v9 * v9 * v25 + a3);
      v44.f64[0] = *(a1 + 184);
      v44.f64[1] = *(a1 + 216);
      v24.f64[1] = *(a1 + 280);
      v76 = vmulq_n_f64(vmulq_n_f64(v44, v36), v43);
      v77 = vmulq_n_f64(vmulq_n_f64(v24, v36), v43);
      v45 = *a9.i64 * *a9.i64;
      v46 = *a9.i64 * *a9.i64 * v43;
      if (v46 <= 100.0)
      {
        v73 = v36;
        v75 = v12 * *a4.i64 * v9;
        v52 = v9 * v9 * *a2.i64;
        a2.i64[0] = a9.i64[0];
        v72 = a9;
        sub_1000AF8CC(a1, v76.f64, a2, v75, a4);
        sub_1000AFBD0(a1, &v76, 2, v73);
        v53 = 1.0 / (v52 + a3);
        v54.f64[0] = *(a1 + 192);
        v54.f64[1] = *(a1 + 224);
        v55 = vmulq_n_f64(vmulq_n_f64(v54, v75), v53);
        v56.f64[0] = *(a1 + 256);
        v56.f64[1] = *(a1 + 288);
        v57 = vmulq_n_f64(vmulq_n_f64(v56, v75), v53);
        v76 = v55;
        v77 = v57;
        v58 = v45 * v53;
        if (v45 * v53 <= 100.0)
        {
          sub_1000AF8CC(a1, v76.f64, v72, v55.f64[0], v57);
          sub_1000AFBD0(a1, &v76, 3, v75);
          v66 = v90;
          *(a1 + 232) = v89;
          *(a1 + 248) = v66;
          v67 = v92;
          *(a1 + 264) = v91;
          *(a1 + 280) = v67;
          v68 = *&v86[16];
          *v37 = *v86;
          *(a1 + 184) = v68;
          v69 = v88;
          *(a1 + 200) = v87;
          *(a1 + 216) = v69;
          return 1;
        }

        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v59 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v60 = *(a1 + 596);
          *buf = 67240704;
          v94 = v60;
          v95 = 2050;
          v96 = v58;
          v97 = 2050;
          v98 = 0x4059000000000000;
          _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,Course Meas velE innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", buf, 0x1Cu);
        }

        if (!sub_10000A100(121, 2))
        {
LABEL_48:
          result = 0;
          v61 = v90;
          *(a1 + 232) = v89;
          *(a1 + 248) = v61;
          v62 = v92;
          *(a1 + 264) = v91;
          *(a1 + 280) = v62;
          v63 = *&v86[16];
          *v37 = *v86;
          *(a1 + 184) = v63;
          v64 = v88;
          *(a1 + 200) = v87;
          *(a1 + 216) = v64;
          v65 = v84;
          *(a1 + 24) = v85;
          *(a1 + 8) = v65;
          return result;
        }

        sub_101912E28(buf);
        v70 = *(a1 + 596);
        v78 = 67240704;
        v79 = v70;
        v80 = 2050;
        v81 = v58;
        v82 = 2050;
        v83 = 0x4059000000000000;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,Course Meas velE innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", &v78, 28, *&v72);
        v51 = v71;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const double, const double, const double, const double)", "%s\n", v71);
      }

      else
      {
        if (qword_1025D4770 != -1)
        {
          sub_1001D30A0();
        }

        v47 = qword_1025D4778;
        if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_DEBUG))
        {
          v48 = *(a1 + 596);
          *buf = 67240704;
          v94 = v48;
          v95 = 2050;
          v96 = v46;
          v97 = 2050;
          v98 = 0x4059000000000000;
          _os_log_impl(dword_100000000, v47, OS_LOG_TYPE_DEBUG, "KFCV:,ID,%{public}d,Course meas velN innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", buf, 0x1Cu);
        }

        if (!sub_10000A100(121, 2))
        {
          goto LABEL_48;
        }

        sub_101912E28(buf);
        v49 = *(a1 + 596);
        v78 = 67240704;
        v79 = v49;
        v80 = 2050;
        v81 = v46;
        v82 = 2050;
        v83 = 0x4059000000000000;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 2, "KFCV:,ID,%{public}d,Course meas velN innovation test failed,nis,%{public}.3f,threshold,%{public}.3f", &v78, 28);
        v51 = v50;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const double, const double, const double, const double)", "%s\n", v50);
      }

      if (v51 != buf)
      {
        free(v51);
      }

      goto LABEL_48;
    }
  }

  if (qword_1025D4770 != -1)
  {
    sub_1001D30A0();
  }

  v32 = qword_1025D4778;
  if (os_log_type_enabled(qword_1025D4778, OS_LOG_TYPE_ERROR))
  {
    v33 = *(a1 + 596);
    *buf = 67240192;
    v94 = v33;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_ERROR, "KFCV:,ID,%{public}d,#Error,CourseMeas innovation_var <= 0", buf, 8u);
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_101912E28(buf);
    v34 = *(a1 + 596);
    *v86 = 67240192;
    *&v86[4] = v34;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4778, 16, "KFCV:,ID,%{public}d,#Error,CourseMeas innovation_var <= 0", v86, 8);
    v31 = v35;
    sub_100152C7C("Generic", 1, 0, 0, "BOOL cllcf::LCFusionKalmanFilterCV::updateWithCourse(const double, const double, const double, const double)", "%s\n", v35);
LABEL_33:
    if (v31 != buf)
    {
      free(v31);
    }

    return 0;
  }

  return result;
}

void sub_1006EDCB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

uint64_t sub_1006EDE54(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1006EE2C0;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658FC8 != -1)
  {
    dispatch_once(&qword_102658FC8, block);
  }

  return qword_102637200;
}

uint64_t sub_1006EE150(uint64_t a1, char *a2)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1019131A0();
  }

  v4 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 134349312;
    Current = CFAbsoluteTimeGetCurrent();
    v8 = 1026;
    v9 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,RouteListener,navstate,%{public}d", &v6, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019132AC(a2);
  }

  return sub_1010804B8(a1 + 2664, a2);
}

void sub_1006EE284(id a1)
{
  v1 = objc_opt_class();
  if (v1)
  {
    v3 = sub_10001A3E8(v1, v2);
    if ((sub_10003A088(v3, v4) & 0x10) != 0)
    {
      byte_102658FB8 = 1;
    }
  }
}

void sub_1006EE330(uint64_t a1, void *a2)
{
  v31[7] = a2;
  v3 = sub_1006A597C(a1, "accessory", a2);
  *v3 = off_10246BCE8;
  *(v3 + 116) = 0xFFFF;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  v28 = _Q0;
  *(v3 + 152) = _Q0;
  *(v3 + 168) = _Q0;
  *(v3 + 184) = _Q0;
  *(v3 + 200) = 0;
  *(v3 + 204) = 0xBFF0000000000000;
  *(v3 + 220) = 0;
  *(v3 + 212) = 0;
  *(v3 + 228) = 0;
  *(v3 + 232) = 0xBFF0000000000000;
  *(v3 + 240) = 0x7FFFFFFF;
  *(v3 + 252) = 0;
  *(v3 + 268) = 0;
  *(v3 + 244) = 0;
  *(v3 + 260) = 0;
  sub_100021ED8(v3 + 272);
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 1000) = 85;
  *(a1 + 1008) = v28;
  *(a1 + 1024) = v28;
  *(a1 + 1040) = 0xBFF0000000000000;
  sub_1005DBBE4(a1 + 1048, *(a1 + 32), sub_1006EF944, a1);
  *(a1 + 1416) = 0u;
  *(a1 + 1296) = 0u;
  *(a1 + 1312) = 0u;
  *(a1 + 1328) = 0u;
  *(a1 + 1344) = 0u;
  v27 = (a1 + 1296);
  *(a1 + 1380) = 0;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = 0;
  *(a1 + 1399) = 0;
  *(a1 + 1384) = 0u;
  *(a1 + 1408) = a1 + 1416;
  *(a1 + 1432) = -1;
  sub_10018D404(a1 + 1440);
  *(a1 + 1480) = 0xFFFF;
  *(a1 + 1484) = 0u;
  *(a1 + 1500) = xmmword_101C75BF0;
  *(a1 + 1516) = v28;
  *(a1 + 1532) = v28;
  *(a1 + 1548) = v28;
  *(a1 + 1564) = 0;
  *(a1 + 1568) = 0xBFF0000000000000;
  *(a1 + 1592) = 0;
  *(a1 + 1576) = 0u;
  *(a1 + 1596) = 0xBFF0000000000000;
  *(a1 + 1604) = 0x7FFFFFFF;
  *(a1 + 1608) = 0;
  *(a1 + 1616) = 0u;
  *(a1 + 1632) = 0;
  *(a1 + 1648) = 0u;
  *(a1 + 1640) = a1 + 1648;
  *(a1 + 1664) = 0;
  *(a1 + 1668) = 257;
  *(a1 + 1672) = 0x5000001F4;
  *(a1 + 1680) = 4;
  *(a1 + 1684) = xmmword_101C89010;
  *(a1 + 1700) = 0x244480000;
  *(a1 + 1712) = 0;
  sub_10018D404(a1 + 1720);
  *(a1 + 1760) = 0xFFFF;
  *(a1 + 1764) = 0u;
  *(a1 + 1780) = xmmword_101C75BF0;
  *(a1 + 1796) = v28;
  *(a1 + 1812) = v28;
  *(a1 + 1828) = v28;
  *(a1 + 1844) = 0;
  *(a1 + 1848) = 0xBFF0000000000000;
  *(a1 + 1856) = 0u;
  *(a1 + 1872) = 0;
  *(a1 + 1876) = 0xBFF0000000000000;
  *(a1 + 1884) = 0x7FFFFFFF;
  *(a1 + 1888) = 0;
  *(a1 + 1912) = 0;
  *(a1 + 1896) = 0u;
  *(a1 + 1920) = 0u;
  *(a1 + 1936) = 0xBFF0000000000000;
  *(a1 + 1944) = 0u;
  *(a1 + 1960) = 0u;
  *(a1 + 1976) = 1065353216;
  *(a1 + 1984) = 0;
  *(a1 + 2008) = 0;
  *(a1 + 1992) = 0u;
  *(a1 + 2016) = -1;
  *(a1 + 2020) = 0;
  *(a1 + 2040) = 0;
  *(a1 + 2047) = 0;
  *(a1 + 2024) = 0u;
  v36[0] = off_10246BF40;
  v36[1] = a1;
  v36[3] = v36;
  sub_100711B18(a1 + 2056, v36);
  sub_1006F7E28(v36);
  sub_10018D404(a1 + 2544);
  *(a1 + 2584) = 0xBFF0000000000000;
  *(a1 + 2592) = 0xBFF0000000000000;
  *(a1 + 2600) = 0u;
  *(a1 + 2616) = 0xBFF0000000000000;
  *(a1 + 2624) = 0;
  *(a1 + 2640) = 0;
  *(a1 + 2632) = 0;
  *(a1 + 2648) = 257;
  *(a1 + 2652) = 0;
  *(a1 + 2656) = 0;
  sub_1006F74B0(a1 + 2664);
  *(a1 + 5920) = 0u;
  *(a1 + 5904) = 0u;
  *(a1 + 5888) = 0u;
  *(a1 + 5872) = 0u;
  *(a1 + 5856) = 0u;
  *(a1 + 5840) = 0u;
  *(a1 + 5824) = 0u;
  *(a1 + 5808) = 0u;
  *(a1 + 5792) = 0u;
  *(a1 + 5776) = 0u;
  *(a1 + 5929) = 0u;
  *(a1 + 5945) = 257;
  *(a1 + 5952) = 0xBFF0000000000000;
  *(a1 + 5960) = 0u;
  *(a1 + 5976) = 0u;
  *(a1 + 5992) = 0u;
  *(a1 + 6008) = 0u;
  *(a1 + 6024) = 0u;
  *(a1 + 6040) = 0u;
  *(a1 + 6056) = 0u;
  *(a1 + 6072) = 0u;
  *(a1 + 6088) = 0u;
  *(a1 + 6104) = 0u;
  *(a1 + 6113) = 0u;
  *(a1 + 6129) = 257;
  *(a1 + 6136) = 0xBFF0000000000000;
  *(a1 + 6144) = 0u;
  *(a1 + 6160) = 0u;
  *(a1 + 6176) = 0u;
  *(a1 + 6192) = 0u;
  *(a1 + 6208) = 0u;
  *(a1 + 6224) = 0u;
  *(a1 + 6240) = 0u;
  *(a1 + 6256) = 0u;
  *(a1 + 6272) = 0u;
  *(a1 + 6288) = 0u;
  *(a1 + 6297) = 0u;
  *(a1 + 6313) = 257;
  *(a1 + 6320) = 0;
  *(a1 + 6324) = 0;
  *(a1 + 6328) = 0xBFF0000000000000;
  *(a1 + 6336) = 0;
  *(a1 + 6352) = 0u;
  *(a1 + 6344) = a1 + 6352;
  *(a1 + 6368) = 0xBFF0000000000000;
  *(a1 + 6376) = 0;
  *(a1 + 6384) = xmmword_101C89880;
  *(a1 + 6400) = 0;
  *(a1 + 6408) = 0;
  *(a1 + 212) = 3;
  *(a1 + 244) = 0;
  v31[0] = a1;
  v31[1] = sub_1006EFB0C;
  v31[2] = sub_1006EFD70;
  v31[3] = sub_1006EFFC4;
  v31[4] = sub_1006F0188;
  v31[5] = sub_1006F035C;
  v31[6] = sub_1006F0530;
  v30 = 0;
  sub_10001CAF4(&v32);
  v9 = sub_10001CB4C(v32.__r_.__value_.__l.__data_, "iAPTimeSyncEnable", &v30, 0xFFFFFFFFLL);
  v10 = v30;
  if (v32.__r_.__value_.__l.__size_)
  {
    sub_100008080(v32.__r_.__value_.__l.__size_);
  }

  qword_102658FB0 = [[CLAccessoryObserver alloc] initWithListener:v31 silo:*(a1 + 40) timeSync:v9 & v10];
  v32.__r_.__value_.__r.__words[0] = 0;
  v32.__r_.__value_.__l.__size_ = &v32;
  v32.__r_.__value_.__r.__words[2] = 0x3052000000;
  v33 = sub_10004747C;
  v11 = qword_102658FD0;
  v34 = sub_10004842C;
  v35 = qword_102658FD0;
  if (!qword_102658FD0)
  {
    *&v37 = _NSConcreteStackBlock;
    *(&v37 + 1) = 3221225472;
    v38 = sub_1006F77FC;
    v39 = &unk_10245AE50;
    v40 = &v32;
    sub_1006F77FC(&v37);
    v11 = *(v32.__r_.__value_.__l.__size_ + 40);
  }

  _Block_object_dispose(&v32, 8);
  *(a1 + 1384) = objc_alloc_init(v11);
  v12 = [*(a1 + 40) newTimer];
  *(a1 + 992) = v12;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1006F070C;
  v29[3] = &unk_102449A78;
  v29[4] = a1;
  v13 = [v12 setHandler:v29];
  v15 = sub_1000206B4(v13, v14);
  sub_100021668(v15, &v32);
  v16 = std::string::append(&v32, "ephemeris/", 0xAuLL);
  v17 = v16->__r_.__value_.__r.__words[0];
  *&v37 = v16->__r_.__value_.__l.__size_;
  *(&v37 + 7) = *(&v16->__r_.__value_.__r.__words[1] + 7);
  v18 = HIBYTE(v16->__r_.__value_.__r.__words[2]);
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 1319) < 0)
  {
    operator delete(*v27);
  }

  *(a1 + 1296) = v17;
  *(a1 + 1304) = v37;
  *(a1 + 1311) = *(&v37 + 7);
  *(a1 + 1319) = v18;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
    v18 = *(a1 + 1319);
  }

  v19 = (a1 + 1296);
  if (v18 < 0)
  {
    v19 = *v27;
  }

  v20 = getuid();
  v21 = getgid();
  if (!sub_1004E667C(v19, v20, v21))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v22 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
    {
      v23 = (a1 + 1296);
      if (*(a1 + 1319) < 0)
      {
        v23 = *v27;
      }

      LODWORD(v32.__r_.__value_.__l.__data_) = 136446210;
      *(v32.__r_.__value_.__r.__words + 4) = v23;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "could not create path %{public}s", &v32, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(&v32, 0x65CuLL);
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v24 = (a1 + 1296);
      if (*(a1 + 1319) < 0)
      {
        v24 = *v27;
      }

      LODWORD(v37) = 136446210;
      *(&v37 + 4) = v24;
      _os_log_send_and_compose_impl(2, 0, &v32, 1628, dword_100000000, qword_1025D45E8, 16, "could not create path %{public}s", &v37, 12);
      v26 = v25;
      sub_100152C7C("Generic", 1, 0, 0, "CLAccessoryLocationProvider::CLAccessoryLocationProvider(id<CLIntersiloUniverse>)", "%s\n", v25);
      if (v26 != &v32)
      {
        free(v26);
      }
    }
  }

  sub_100678564();
}

void sub_1006EF604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19)
{
  v24 = *(v19 + 6408);
  *(v19 + 6408) = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24, a2, a3, a4, a5, a6, a7, a8);
  }

  sub_10001AF44(v19 + 6344, *a12);
  sub_10063A344(a13);
  sub_10063A344(v20);
  sub_10063A344(a15);
  sub_1006F7A7C(v19 + 2664);
  sub_1006F7C8C(v19 + 2056);
  if (*(v19 + 2047) < 0)
  {
    operator delete(*v22);
  }

  sub_1004906DC(a19);
  sub_100D8D8D0((v19 + 1712));
  sub_1006DF878(v19 + 1400);
  sub_1006F7EA8((v19 + 1392), 0);
  v25 = *(v19 + 1352);
  *(v19 + 1352) = 0;
  if (v25)
  {
    (*(*v25 + 8))(v25);
  }

  v26 = *(v19 + 1344);
  *(v19 + 1344) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  v27 = *(v19 + 1336);
  *(v19 + 1336) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(v19 + 1328);
  *(v19 + 1328) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  v29 = *(v19 + 1320);
  *(v19 + 1320) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  if (*(v19 + 1319) < 0)
  {
    operator delete(*a18);
  }

  sub_1005DBD10(v19 + 1048);
  if (*(v19 + 991) < 0)
  {
    operator delete(*(v19 + 968));
  }

  if (*(v19 + 967) < 0)
  {
    operator delete(*(v19 + 944));
  }

  if (*(v19 + 943) < 0)
  {
    operator delete(*v21);
  }

  v30 = *(v19 + 800);
  if (v30)
  {
    sub_100008080(v30);
  }

  sub_1006A5E8C(v19);
  _Unwind_Resume(a1);
}

void sub_1006EF944(uint64_t a1, int a2, uint64_t a3)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a3 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v5 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onEphemerisUpdated", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v6 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "activity";
      v15 = 2050;
      v16 = a3;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onEphemerisUpdated, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  if (a2 == 2)
  {
    sub_1006F5CD0(a3);
  }

  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006EFB0C(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v3 = a3;
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v22 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryConnected", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289538;
      v24 = 2082;
      v25 = "";
      v26 = 2082;
      v27 = "activity";
      v28 = 2050;
      v29 = a1;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryConnected, event:%{public, location:escape_only}s, this:%{public}p}", &buf, 0x26u);
    }
  }

  else
  {
    v22 = 0;
  }

  sub_10063A160(&__dst, a2);
  sub_1006F16A4(a1, &__dst, v3);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v22 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006EFD70(uint64_t a1, __int128 *a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v21 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryDisconnected", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289538;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "activity";
      v27 = 2050;
      v28 = a1;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryDisconnected, event:%{public, location:escape_only}s, this:%{public}p}", &buf, 0x26u);
    }
  }

  else
  {
    v21 = 0;
  }

  sub_10063A160(__dst, a2);
  sub_1006F2248(a1, __dst);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16);
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
    operator delete(__dst[0]);
  }

  if (v21 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006EFFC4(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v6 = 1;
    v3 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryNmeaReceived", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v8 = 0;
      v9 = 2082;
      v10 = "";
      v11 = 2082;
      v12 = "activity";
      v13 = 2050;
      v14 = a1;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryNmeaReceived, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1006F27F8(a1);
  if (v6 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F0188(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v5 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryReferenceTime", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "activity";
      v12 = 2050;
      v13 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryReferenceTime, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 1369) = 1;
  [*(*(a1 + 1328) + 16) register:*(*(a1 + 1328) + 8) forNotification:0 registrationInfo:0];
  *(a1 + 2049) = 0;
  sub_1006F5304(a1);
  if (v5 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F035C(uint64_t a1)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v5 = 1;
    v2 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryReferenceLocation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v2, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
    }

    v3 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      v10 = 2082;
      v11 = "activity";
      v12 = 2050;
      v13 = a1;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryReferenceLocation, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 1368) = 1;
  [*(*(a1 + 1320) + 16) register:*(*(a1 + 1320) + 8) forNotification:4 registrationInfo:0];
  *(a1 + 2050) = 0;
  sub_1006F5478(a1);
  if (v5 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F0530(uint64_t a1, const __CFURL *a2, double *a3, double *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a1 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onAccessoryEphemerisURL", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      v19 = a1;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onAccessoryEphemerisURL, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006F558C(a1, a2, a3, a4);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

id sub_1006F0714(id *a1)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1019131A0();
  }

  v2 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLNMEAScreener,screen,onLocationUnavailableTimer,accessory unavailable notification sent", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191346C();
  }

  v4 = 9;
  (*(*a1 + 18))(a1, &v4, 1, 0xFFFFFFFFLL);
  return [a1[124] setNextFireDelay:1.79769313e308];
}

void sub_1006F07F8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 1;
    v6 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onTimeNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v6, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      v17 = a4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onTimeNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  if (!*a2 && (*(a4 + 2049) & 1) == 0)
  {
    sub_1006F5304(a4);
  }

  if (v9 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F09C8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onClientManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onClientManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006F66A8(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F0C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10067940C(&a15);
  operator delete();
}

void sub_1006F0CA4(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_1006F79CC(&v1, 7uLL);
}

void sub_1006F0CD8(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onBatteryNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onBatteryNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006F6804(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1006F0EA4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101913430();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLAccessoryLocationProvider::onMobileAssetNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101913444();
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
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLAccessoryLocationProvider::onMobileAssetNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1006F6B0C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1006F1070(uint64_t a1)
{
  *a1 = off_10246BCE8;
  if (*(a1 + 1344))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v2 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "CLAccessory,unregistered for app client notifications", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019133EC(buf);
      v17[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 0, "CLAccessory,unregistered for app client notifications", v17, 2);
      v16 = v15;
      sub_100152C7C("Generic", 1, 0, 2, "virtual CLAccessoryLocationProvider::~CLAccessoryLocationProvider()", "%s\n", v15);
      if (v16 != buf)
      {
        free(v16);
      }
    }

    [*(*(a1 + 1344) + 16) unregister:*(*(a1 + 1344) + 8) forNotification:4];
    [*(*(a1 + 1344) + 16) unregister:*(*(a1 + 1344) + 8) forNotification:9];
    [*(*(a1 + 1344) + 16) unregister:*(*(a1 + 1344) + 8) forNotification:3];
    [*(*(a1 + 1344) + 16) unregister:*(*(a1 + 1344) + 8) forNotification:1];
  }

  v3 = *(a1 + 1352);
  if (v3)
  {
    [*(v3 + 16) unregister:*(v3 + 8) forNotification:7];
  }

  v4 = *(a1 + 1384);
  if (v4)
  {
  }

  v5 = *(a1 + 6408);
  if (v5)
  {
    [*(v5 + 16) unregister:*(v5 + 8) forNotification:2];
    v6 = *(a1 + 6408);
    *(a1 + 6408) = 0;
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }
  }

  sub_10001AF44(a1 + 6344, *(a1 + 6352));
  sub_10063A344(a1 + 6144);
  sub_10063A344(a1 + 5960);
  sub_10063A344(a1 + 5776);
  v7 = *(a1 + 5744);
  if (v7)
  {
    *(a1 + 5752) = v7;
    operator delete(v7);
  }

  sub_10063A344(a1 + 5512);
  sub_1006F7AC0(a1 + 2704);
  sub_100D8D8D0((a1 + 2504));
  sub_1006F7E28(a1 + 2448);
  if (*(a1 + 2087) < 0)
  {
    operator delete(*(a1 + 2064));
  }

  if (*(a1 + 2047) < 0)
  {
    operator delete(*(a1 + 2024));
  }

  sub_1004906DC(a1 + 1944);
  sub_100D8D8D0((a1 + 1712));
  sub_1003C93BC(a1 + 1640, *(a1 + 1648));
  sub_1003C93BC(a1 + 1408, *(a1 + 1416));
  sub_1006F7EA8((a1 + 1392), 0);
  v8 = *(a1 + 1352);
  *(a1 + 1352) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = *(a1 + 1344);
  *(a1 + 1344) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 1336);
  *(a1 + 1336) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 1328);
  *(a1 + 1328) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 1320);
  *(a1 + 1320) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
  }

  sub_1005DBD10(a1 + 1048);
  if (*(a1 + 991) < 0)
  {
    operator delete(*(a1 + 968));
  }

  if (*(a1 + 967) < 0)
  {
    operator delete(*(a1 + 944));
  }

  if (*(a1 + 943) < 0)
  {
    operator delete(*(a1 + 920));
  }

  v13 = *(a1 + 800);
  if (v13)
  {
    sub_100008080(v13);
  }

  sub_1006A5E8C(a1);
  return a1;
}

void sub_1006F14A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1006F14B0(uint64_t a1)
{
  sub_1006F1070(a1);

  operator delete();
}

void sub_1006F14E8(_BYTE *a1, uint64_t a2, double a3)
{
  v3 = a2;
  sub_100711B1C((a1 + 2056), a2);
  if (v3)
  {
    sub_10107C280((a1 + 2664), 0, a3);
    v7 = 9;
    (*(*a1 + 144))(a1, &v7, 1, 0xFFFFFFFFLL);
  }

  else if (a1[1370] == 1)
  {
    v6 = a1[2057];

    sub_10107C280((a1 + 2664), v6, a3);
  }
}

void sub_1006F15B8(uint64_t a1)
{
  sub_1006A5ED0(a1);
  sub_1005DD8B0(a1 + 1048);
  [*(a1 + 992) invalidate];

  *(a1 + 992) = 0;
  v2 = *(a1 + 1320);
  *(a1 + 1320) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 1336);
  *(a1 + 1336) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 1328);
  *(a1 + 1328) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(a1 + 1360) = 0;
  qword_102658FB0 = 0;
}

void sub_1006F16A4(uint64_t a1, std::string *a2, int a3)
{
  sub_10000EC00(__p, "CLAccessory,onAccessoryConnected");
  sub_10063861C(a2, __p);
  if ((v27 & 0x80000000) == 0)
  {
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  operator delete(__p[0]);
  if (a3)
  {
LABEL_3:
    sub_1006F0CA4(a1 + 2656);
    *(a1 + 2651) = 0;
    *(a1 + 6320) = 0;
  }

LABEL_4:
  if (a2[7].__r_.__value_.__s.__data_[0] == 1)
  {
    if (sub_1006F1BBC(a1 + 5776, a2))
    {
      sub_10107FD88(a1 + 2664, a2);
    }

    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v6 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLAccessory,onAccessoryConnected,accessory on deny list", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019140C4();
    }

    return;
  }

  v7 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v7 < 0)
  {
    if (a2->__r_.__value_.__l.__size_ != 5)
    {
      goto LABEL_24;
    }

    v8 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v8 = a2;
    if (v7 != 5)
    {
      goto LABEL_24;
    }
  }

  data = v8->__r_.__value_.__l.__data_;
  v10 = v8->__r_.__value_.__s.__data_[4];
  if (data == 1819308097 && v10 == 101)
  {
    v15 = a2 + 2;
    v16 = SHIBYTE(a2[2].__r_.__value_.__r.__words[2]);
    if (v16 < 0)
    {
      if (a2[2].__r_.__value_.__l.__size_ != 17)
      {
        goto LABEL_24;
      }

      v15 = v15->__r_.__value_.__r.__words[0];
    }

    else if (v16 != 17)
    {
      goto LABEL_24;
    }

    v17 = v15->__r_.__value_.__r.__words[0];
    size = v15->__r_.__value_.__l.__size_;
    v19 = v15->__r_.__value_.__s.__data_[16];
    v21 = v17 == 0x2079616C50726143 && size == 0x6F74616C756D6953 && v19 == 114;
    if (v21 && a2[7].__r_.__value_.__s.__data_[1] == 1 && (a2[7].__r_.__value_.__s.__data_[2] & 1) != 0)
    {
      *(a1 + 2652) = 1;
      if ((a3 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_59;
    }
  }

LABEL_24:
  *(a1 + 2652) = 0;
  if (a2[7].__r_.__value_.__s.__data_[1])
  {
    if ((a3 & 1) == 0)
    {
LABEL_26:
      if (*(a1 + 1370) == 1 && sub_1006F1C98(a2, (a1 + 6144)))
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v12 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "CLAccessory,onAccessoryConnected,alreadyConnected", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101913E18();
        }

        return;
      }
    }

LABEL_59:
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v22 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "CLAccessory,onAccessoryConnected,newAccessory connected", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913EFC();
    }

    std::string::operator=((a1 + 6144), a2);
    std::string::operator=((a1 + 6168), a2 + 1);
    std::string::operator=((a1 + 6192), a2 + 2);
    std::string::operator=((a1 + 6216), a2 + 3);
    std::string::operator=((a1 + 6240), a2 + 4);
    std::string::operator=((a1 + 6264), a2 + 5);
    std::string::operator=((a1 + 6288), a2 + 6);
    v23 = a2[7].__r_.__value_.__s.__data_[2];
    *(a1 + 6312) = a2[7].__r_.__value_.__l.__data_;
    *(a1 + 6314) = v23;
    sub_10107BBDC(a1 + 2664, (a1 + 6144), *(a1 + 2057));
    v24 = sub_1000081AC();
    sub_1006F1F18(a1, 0, v24);
    *(a1 + 1370) = 1;
    if (a3)
    {
      *buf = 0;
      if (sub_10000608C(a1, buf, 1))
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v25 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "CLAccessory,location already requested before device connection, starting location", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101913FE0();
        }

        sub_1001C678C(a1);
      }
    }

    sub_1006F2158(a1);
    return;
  }

  if (a2[7].__r_.__value_.__s.__data_[2] == 1 && sub_1006F1BBC(a1 + 5960, a2))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v13 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "CLAccessory,onAccessoryConnected,noLocation accessory", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101913D34();
    }

    v14 = *(a1 + 2656);
    *(a1 + 2656) = v14 | 0x20;
    sub_10108011C(a1 + 2664, a2, v14 | 0x20);
  }
}

void sub_1006F1BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F1BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000081AC();
  if (sub_1006F1C98(a1, a2))
  {
    v6 = *(a1 + 176);
    v5 = (a1 + 176);
    v7 = v6;
    if (v6 >= 0.0 && vabdd_f64(v4, v7) <= 28800.0)
    {
      return 0;
    }
  }

  else
  {
    std::string::operator=(a1, a2);
    std::string::operator=((a1 + 24), (a2 + 24));
    std::string::operator=((a1 + 48), (a2 + 48));
    std::string::operator=((a1 + 72), (a2 + 72));
    std::string::operator=((a1 + 96), (a2 + 96));
    std::string::operator=((a1 + 120), (a2 + 120));
    std::string::operator=((a1 + 144), (a2 + 144));
    v9 = *(a2 + 170);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 170) = v9;
    v5 = (a1 + 176);
  }

  *v5 = v4;
  return 1;
}

BOOL sub_1006F1C98(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v8 = *(v7 + 47);
  if (v8 >= 0)
  {
    v9 = *(v7 + 47);
  }

  else
  {
    v9 = v7[4];
  }

  v10 = *(v6 + 47);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = v6[4];
  }

  if (v9 != v10)
  {
    return 0;
  }

  v12 = v8 >= 0 ? v7 + 3 : v7[3];
  v13 = v11 >= 0 ? v6 + 3 : v6[3];
  if (memcmp(v12, v13, v9))
  {
    return 0;
  }

  v14 = *(v7 + 71);
  if (v14 >= 0)
  {
    v15 = *(v7 + 71);
  }

  else
  {
    v15 = v7[7];
  }

  v16 = *(v6 + 71);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = v6[7];
  }

  if (v15 != v16)
  {
    return 0;
  }

  v18 = v14 >= 0 ? v7 + 6 : v7[6];
  v19 = v17 >= 0 ? v6 + 6 : v6[6];
  if (memcmp(v18, v19, v15))
  {
    return 0;
  }

  v20 = *(v7 + 95);
  if (v20 >= 0)
  {
    v21 = *(v7 + 95);
  }

  else
  {
    v21 = v7[10];
  }

  v22 = *(v6 + 95);
  v23 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v22 = v6[10];
  }

  if (v21 != v22)
  {
    return 0;
  }

  v24 = v20 >= 0 ? v7 + 9 : v7[9];
  v25 = v23 >= 0 ? v6 + 9 : v6[9];
  if (memcmp(v24, v25, v21))
  {
    return 0;
  }

  v26 = *(v7 + 119);
  if (v26 >= 0)
  {
    v27 = *(v7 + 119);
  }

  else
  {
    v27 = v7[13];
  }

  v28 = *(v6 + 119);
  v29 = v28;
  if ((v28 & 0x80u) != 0)
  {
    v28 = v6[13];
  }

  if (v27 != v28)
  {
    return 0;
  }

  v30 = v26 >= 0 ? v7 + 12 : v7[12];
  v31 = v29 >= 0 ? v6 + 12 : v6[12];
  if (memcmp(v30, v31, v27))
  {
    return 0;
  }

  v32 = *(v7 + 143);
  if (v32 >= 0)
  {
    v33 = *(v7 + 143);
  }

  else
  {
    v33 = v7[16];
  }

  v34 = *(v6 + 143);
  v35 = v34;
  if ((v34 & 0x80u) != 0)
  {
    v34 = v6[16];
  }

  if (v33 != v34)
  {
    return 0;
  }

  v36 = v32 >= 0 ? v7 + 15 : v7[15];
  v37 = v35 >= 0 ? v6 + 15 : v6[15];
  if (memcmp(v36, v37, v33))
  {
    return 0;
  }

  result = sub_1006E0DE8(v7 + 18, v6 + 18);
  if (result)
  {
    if (*(v7 + 168) == *(v6 + 168) && *(v7 + 170) == *(v6 + 170))
    {
      return *(v7 + 169) == *(v6 + 169);
    }

    return 0;
  }

  return result;
}

void sub_1006F1F18(uint64_t a1, char *a2, double a3)
{
  v4 = *(a1 + 1384);
  if (v4)
  {
    if ((a2 & 1) != 0 || ![v4 currentSession])
    {
      sub_10107F34C(a1 + 2664, 0, a3);
      sub_10107F388(a1 + 2664, 0, a3);
      if (qword_1025D45E0 != -1)
      {
        sub_1019131A0();
      }

      v12 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        v13 = 134349312;
        Current = CFAbsoluteTimeGetCurrent();
        v15 = 1026;
        v16 = a2;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,updateCarSessionStatus,disable,force,%{public}d", &v13, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019142DC(a2);
      }
    }

    else
    {
      sub_10107F34C(a1 + 2664, 1, a3);
      if ([objc_msgSend(*(a1 + 1384) "currentSession")])
      {
        sub_10107F388(a1 + 2664, [objc_msgSend(objc_msgSend(*(a1 + 1384) "currentSession")] == 3, a3);
        v7 = [objc_msgSend(objc_msgSend(*(a1 + 1384) "currentSession")];
        *(a1 + 2651) = v7 == 3;
        if (v7 == 3)
        {
          *(a1 + 2656) |= 0x40uLL;
        }
      }

      if (qword_1025D45E0 != -1)
      {
        sub_1019131A0();
      }

      v8 = (a1 + 1384);
      v9 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        v10 = CFAbsoluteTimeGetCurrent();
        v11 = [objc_msgSend(objc_msgSend(*v8 "currentSession")];
        v13 = 134349312;
        Current = v10;
        v15 = 1026;
        v16 = v11;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,updateCarSessionStatus,enable,transportType,%{public}d", &v13, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019141A8(v8);
      }
    }
  }
}

void sub_1006F2158(uint64_t a1)
{
  v2 = sub_100CE3AE4();
  *(a1 + 1380) = v2;
  [qword_102658FB0 sendGPRMCDataStatusValues:v2];
  if (qword_1025D45E0 != -1)
  {
    sub_1019131A0();
  }

  v3 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 1380);
    v5[0] = 67174657;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CLAccessory,sendGPRMCDataStatusValues,fIsShifting,%{private}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019143E4((a1 + 1380));
  }
}

void sub_1006F2248(uint64_t a1, uint64_t *a2)
{
  sub_10000EC00(__p, "CLAccessory,onAccessoryDisconnected");
  sub_10063861C(a2, __p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 1370) == 1 && sub_1006F1C98(a2, (a1 + 6144)))
  {
    *(a1 + 1370) = 0;
    *(a1 + 2651) = 0;
    *buf = 9;
    (*(*a1 + 144))(a1, buf, 1, 0xFFFFFFFFLL);
    sub_1006F0CA4(a1 + 2656);
    *(a1 + 6320) = 0;
    sub_1005DD8B0(a1 + 1048);
    [*(a1 + 992) setNextFireDelay:1.79769313e308];
    v4 = sub_1000081AC();
    sub_1006F1F18(a1, 1, v4);
    sub_10107C280(a1 + 2664, 0, v4);
    sub_1010804E8(a1 + 2664, (a1 + 6344), v4);
    sub_100256EE8(a1 + 2664, v4);
    sub_10107F308((a1 + 2664), *(a1 + 6336), v4, *(a1 + 6328));
    sub_10107C2BC(a1 + 2664, v4);
    *(a1 + 6368) = 0xBFF0000000000000;
    sub_10001AF44(a1 + 6344, *(a1 + 6352));
    *(a1 + 6344) = a1 + 6352;
    *(a1 + 6352) = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = 0u;
    memset(buf, 0, sizeof(buf));
    *(&v60 + 9) = 257;
    sub_100639FE0(a1 + 6144, buf);
    if (SBYTE7(v60) < 0)
    {
      operator delete(v59);
    }

    if (SHIBYTE(v58) < 0)
    {
      operator delete(*(&v57 + 1));
    }

    if (SBYTE7(v57) < 0)
    {
      operator delete(v56);
    }

    if (SHIBYTE(v55) < 0)
    {
      operator delete(*(&v54 + 1));
    }

    if (SBYTE7(v54) < 0)
    {
      operator delete(*&buf[48]);
    }

    if (buf[47] < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    sub_100712994(a1 + 2544, 1, -1.0, 0.0, 0.0);
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v5 = (a1 + 4096);
    v6 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = (a1 + 6144);
      v8 = a1 + 6144;
      if (*(a1 + 6167) < 0)
      {
        v8 = *v7;
      }

      v9 = (a1 + 6192);
      if (*(a1 + 6215) < 0)
      {
        v9 = *v9;
      }

      v10 = (a1 + 6168);
      if (*(a1 + 6191) < 0)
      {
        v10 = *v10;
      }

      v11 = (a1 + 6216);
      if (*(a1 + 6239) < 0)
      {
        v11 = *v11;
      }

      v12 = (a1 + 6240);
      if (*(a1 + 6263) < 0)
      {
        v12 = *v12;
      }

      v13 = (a1 + 6264);
      v32 = v12;
      if (*(a1 + 6287) < 0)
      {
        v13 = *v13;
      }

      v14 = *(a1 + 6314);
      v15 = *(a1 + 1370);
      v16 = sub_1006F1C98(a2, v7);
      *buf = 136382723;
      *&buf[4] = v8;
      *&buf[12] = 2081;
      *&buf[14] = v9;
      *&buf[22] = 2081;
      *&buf[24] = v10;
      *&buf[32] = 2081;
      *&buf[34] = v11;
      *&buf[42] = 2081;
      *&buf[44] = v32;
      *&buf[52] = 2081;
      *&buf[54] = v13;
      *&buf[62] = 1025;
      LODWORD(v54) = v14;
      WORD2(v54) = 1026;
      *(&v54 + 6) = v15;
      v5 = (a1 + 4096);
      WORD5(v54) = 1026;
      HIDWORD(v54) = v16;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "CLAccessory,onAccessoryDisconnected,not doing anything,manufacturer,%{private}s,model,%{private}s,name,%{private}s,serial,%{private}s,fw,%{private}s,hw,%{private}s,supportsCarPlay,%{private}d,accessoryConnected,%{public}d,isSame,%{public}d", buf, 0x50u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v17 = (a1 + 6144);
      v18 = a1 + 6144;
      if (v5[2071] < 0)
      {
        v18 = *v17;
      }

      v19 = (a1 + 6192);
      if (v5[2119] < 0)
      {
        v19 = *v19;
      }

      v20 = (a1 + 6168);
      v21 = v5;
      if (v5[2095] < 0)
      {
        v20 = *v20;
      }

      v22 = (a1 + 6216);
      if (v21[2143] < 0)
      {
        v22 = *v22;
      }

      v23 = qword_1025D45E8;
      v24 = (a1 + 6240);
      if (v21[2167] < 0)
      {
        v24 = *v24;
      }

      v25 = (a1 + 6264);
      v26 = a2;
      if (v21[2191] < 0)
      {
        v25 = *v25;
      }

      v27 = v21[2218];
      v28 = *(a1 + 1370);
      v29 = sub_1006F1C98(v26, v17);
      v35 = 136382723;
      v36 = v18;
      v37 = 2081;
      v38 = v19;
      v39 = 2081;
      v40 = v20;
      v41 = 2081;
      v42 = v22;
      v43 = 2081;
      v44 = v24;
      v45 = 2081;
      v46 = v25;
      v47 = 1025;
      v48 = v27;
      v49 = 1026;
      v50 = v28;
      v51 = 1026;
      v52 = v29;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v23, 0, "CLAccessory,onAccessoryDisconnected,not doing anything,manufacturer,%{private}s,model,%{private}s,name,%{private}s,serial,%{private}s,fw,%{private}s,hw,%{private}s,supportsCarPlay,%{private}d,accessoryConnected,%{public}d,isSame,%{public}d", &v35, 80);
      v31 = v30;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryDisconnected(const CLAccessoryUtils::CLAccessoryInfo)", "%s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }
  }
}

void sub_1006F27D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F27F8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_1000081AC();
  sub_1006F1F18(v4, 0, v5);
  v6 = sub_1000137E0();
  sub_1000238CC(v2, &__p);
  v255 = 0;
  __src = 0;
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
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__r.__words[1];
  }

  v9 = sub_100635988(&__src, &v255, p_p, v8);
  if (!v9)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v11 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v307[0].__r_.__value_.__l.__data_) = 136380675;
      *(v307[0].__r_.__value_.__r.__words + 4) = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "CLAccessory,#Warning no NMEA sentence found in %{private}s", v307, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019133EC(v307);
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(__dst[0].__r_.__value_.__l.__data_) = 136380675;
      *(__dst[0].__r_.__value_.__r.__words + 4) = v13;
      _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 0, "CLAccessory,#Warning no NMEA sentence found in %{private}s", __dst, 12);
      v15 = v14;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v14);
      goto LABEL_64;
    }

    goto LABEL_133;
  }

  if (v9 < 0)
  {
    sub_100061080();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&v307[0].__r_.__value_.__s + 23) = v9;
  memmove(v307, __src, v9);
  v307[0].__r_.__value_.__s.__data_[v10] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v307[0];
  v16 = *(v4 + 943);
  if (v16 >= 0)
  {
    v17 = *(v4 + 943);
  }

  else
  {
    v17 = *(v4 + 928);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v17 == size)
  {
    v19 = v16 >= 0 ? (v4 + 920) : *(v4 + 920);
    v20 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    if (!memcmp(v19, v20, v17))
    {
      goto LABEL_133;
    }
  }

  std::string::operator=((v4 + 920), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = __p.__r_.__value_.__r.__words[1];
  }

  if (!sub_1006358E8(v21, v22))
  {
    bzero(__str, 5uLL);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v24 = __p.__r_.__value_.__r.__words[1];
    }

    v25 = sub_1006358B0(v23, v24);
    snprintf(__str, 5uLL, "%X%X", v25 >> 4, v25 & 0xF);
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v26 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v27 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v307[0].__r_.__value_.__l.__data_) = 136380931;
      *(v307[0].__r_.__value_.__r.__words + 4) = v27;
      WORD2(v307[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&v307[0].__r_.__value_.__r.__words[1] + 6) = __str;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEFAULT, "CLAccessory,#Warning bad checksum for NMEA sentence '%{private}s' - expected %{public}s", v307, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019133EC(v307);
      v28 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v28 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(__dst[0].__r_.__value_.__l.__data_) = 136380931;
      *(__dst[0].__r_.__value_.__r.__words + 4) = v28;
      WORD2(__dst[0].__r_.__value_.__r.__words[1]) = 2082;
      *(&__dst[0].__r_.__value_.__r.__words[1] + 6) = __str;
      LODWORD(v247) = 22;
      _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 0, "CLAccessory,#Warning bad checksum for NMEA sentence '%{private}s' - expected %{public}s", __dst, v247);
      v15 = v29;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v29);
      goto LABEL_64;
    }

    goto LABEL_133;
  }

  if (*(v4 + 2020) == 1 && *(v4 + 2016) >= 1)
  {
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100007244(__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst[0] = __p;
    }

    std::string::append(__dst, "\n", 1uLL);
    if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = __dst;
    }

    else
    {
      v30 = __dst[0].__r_.__value_.__r.__words[0];
    }

    if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = __dst[0].__r_.__value_.__l.__size_;
    }

    v32 = write(*(v4 + 2016), v30, v31);
    v33 = v32 & ~(v32 >> 63);
    v34 = SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v34 = __dst[0].__r_.__value_.__l.__size_;
      if (v33 >= __dst[0].__r_.__value_.__l.__size_)
      {
LABEL_90:
        operator delete(__dst[0].__r_.__value_.__l.__data_);
        goto LABEL_91;
      }

      v35 = __dst[0].__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v33 >= SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]))
      {
        goto LABEL_91;
      }

      v35 = __dst;
    }

    v36 = write(*(v4 + 2016), v35 + v33, v34 - v33) + v33;
    if (v36 < 0)
    {
      goto LABEL_82;
    }

    v37 = HIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
    if ((__dst[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v37 = __dst[0].__r_.__value_.__l.__size_;
    }

    if (v36 < v37)
    {
LABEL_82:
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v38 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
      {
        v39 = SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
        v40 = __dst[0].__r_.__value_.__r.__words[0];
        v41 = __error();
        v42 = __dst;
        v43 = *v41;
        if (v39 < 0)
        {
          v42 = v40;
        }

        LODWORD(v307[0].__r_.__value_.__l.__data_) = 136380931;
        *(v307[0].__r_.__value_.__r.__words + 4) = v42;
        WORD2(v307[0].__r_.__value_.__r.__words[1]) = 1026;
        *(&v307[0].__r_.__value_.__r.__words[1] + 6) = v43;
        _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_ERROR, "CLAccessory,Wrote partial,%{private}s,errno,%{public}d", v307, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019133EC(v307);
        v181 = qword_1025D45E8;
        v182 = SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]);
        v183 = __dst[0].__r_.__value_.__r.__words[0];
        v184 = __error();
        v185 = __dst;
        v186 = *v184;
        if (v182 < 0)
        {
          v185 = v183;
        }

        *__str = 136380931;
        *&__str[4] = v185;
        *&__str[12] = 1026;
        *&__str[14] = v186;
        _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, v181, 16, "CLAccessory,Wrote partial,%{private}s,errno,%{public}d", __str, 18);
        v188 = v187;
        sub_100152C7C("Generic", 1, 0, 0, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v187);
        if (v188 != v307)
        {
          free(v188);
        }
      }
    }

    if (SHIBYTE(__dst[0].__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_90;
    }
  }

LABEL_91:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &__p;
  }

  else
  {
    v44 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = LODWORD(__p.__r_.__value_.__r.__words[1]);
  }

  v46 = sub_100635F58(__dst, v44, v45);
  v47 = v46;
  if (*(v4 + 2021) == 1)
  {
    if (v46 <= 3)
    {
      if (!v46 || v46 == 3)
      {
        sub_100C2D510(&__p);
        goto LABEL_133;
      }

      goto LABEL_128;
    }

    goto LABEL_103;
  }

  if (v46 > 3)
  {
LABEL_103:
    switch(v46)
    {
      case 4:
        *(v4 + 2656) |= 1uLL;
        sub_100C2D518(&__p, HIDWORD(__dst[1].__r_.__value_.__r.__words[2]));
        v55 = sub_100A2A9E4(v4 + 1000, __dst, HIDWORD(__dst[1].__r_.__value_.__r.__words[1]));
        if (SHIDWORD(__dst[1].__r_.__value_.__r.__words[2]) >= 1)
        {
          v56 = [objc_msgSend(*(v4 + 32) vendor];
          memcpy(v307, __dst, 0x350uLL);
          [v56 setVehicleSpeedAssistance:v307 vehicleSpeed:v6];
        }

        if (vabdd_f64(*&__dst[0].__r_.__value_.__l.__data_, *(v4 + 2000)) > 0.5)
        {
          v57 = HIDWORD(__dst[1].__r_.__value_.__r.__words[2]) - 1;
          if ((HIDWORD(__dst[1].__r_.__value_.__r.__words[2]) - 1) <= 0x31)
          {
            sub_100021AFC(v307);
            v307[35].__r_.__value_.__l.__size_ = __dst[18].__r_.__value_.__r.__words[v57 + 2];
            *(&v307[35] + 16) = __dst[0];
            *__str = 20;
            (*(*v4 + 152))(v4, __str, v307, 0, 0xFFFFFFFFLL, 0);
            *(v4 + 2000) = __dst[0].__r_.__value_.__r.__words[0];
            sub_100311054(v307);
          }
        }

        sub_10107FA28(v4 + 2664, __dst);
        goto LABEL_129;
      case 5:
        sub_10107F3C4(v4 + 2664, &__p);
        *&v58 = sub_100C2D518(&__p, LODWORD(__dst[0].__r_.__value_.__r.__words[1])).n128_u64[0];
        if (SLODWORD(__dst[0].__r_.__value_.__r.__words[1]) >= 1)
        {
          v59 = [objc_msgSend(*(v4 + 32) vendor];
          memcpy(v307, __dst, 0x658uLL);
          [v59 setVehicleGyroAssistance:v307 vehicleGyro:v6];
        }

        goto LABEL_129;
      case 7:
        sub_10107F3C4(v4 + 2664, &__p);
        sub_100C2D518(&__p, 1);
        sub_1006F5200(v4, *&__dst[0].__r_.__value_.__l.__data_, *&__dst[0].__r_.__value_.__l.__size_);
        *(v4 + 1992) = __dst[0].__r_.__value_.__r.__words[0];
        goto LABEL_129;
    }

LABEL_128:
    sub_10107F3C4(v4 + 2664, &__p);
    sub_100C2D510(&__p);
LABEL_129:
    *(v4 + 2888) = *(v4 + 2656);
    if (sub_1000081AC() - *(v4 + 6368) > 30.0)
    {
      sub_10000EC00(v248, "");
      sub_10000DA44(v4, v248, 0);
      if (v249 < 0)
      {
        operator delete(v248[0]);
      }

      *(v4 + 6368) = sub_1000081AC();
    }

    goto LABEL_133;
  }

  v48 = (v4 + 6314);
  v49 = (v4 + 792);
  if (!v46)
  {
    *(v4 + 2656) |= 2uLL;
    if (sub_1006E0DE8((v4 + 944), &__p))
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v60 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
      {
        v61 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v61 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(v307[0].__r_.__value_.__l.__data_) = 136380675;
        *(v307[0].__r_.__value_.__r.__words + 4) = v61;
        _os_log_impl(dword_100000000, v60, OS_LOG_TYPE_ERROR, "CLAccessory,Repeated GPGGA string, %{private}s", v307, 0xCu);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_144;
      }

      sub_1019133EC(v307);
      v189 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v189 = __p.__r_.__value_.__r.__words[0];
      }

      *__str = 136380675;
      *&__str[4] = v189;
      LODWORD(v246) = 12;
      _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 16, "CLAccessory,Repeated GPGGA string, %{private}s", __str, v246);
      v54 = v190;
      sub_100152C7C("Generic", 1, 0, 0, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v190);
      goto LABEL_308;
    }

    sub_10107F5E0(v4 + 2664, __dst);
    std::string::operator=((v4 + 944), &__p);
    sub_100C2D510(&__p);
    if (*(v4 + 1376) == 1)
    {
      v62 = 0;
      *(v4 + 1372) = 0;
      goto LABEL_154;
    }

    *v251 = 0xFFFF;
    *&v251[12] = 0;
    *&v251[4] = 0;
    *&v251[20] = xmmword_101C75BF0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v251[36] = _Q0;
    *&v251[52] = _Q0;
    *&v251[68] = _Q0;
    *&v251[84] = 0;
    v252 = 0uLL;
    *&v251[88] = 0xBFF0000000000000;
    *(&v253 + 4) = 0xBFF0000000000000;
    LODWORD(v253) = 0;
    HIDWORD(v253) = 0x7FFFFFFF;
    memset(v254, 0, 25);
    sub_100021ED8(v297);
    *(v4 + 6320) = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v78 = &__p;
    }

    else
    {
      v78 = __p.__r_.__value_.__r.__words[0];
    }

    if (sub_100E2E708(v78, v251, v297, (v4 + 6320)))
    {
      if (sub_100298E74((v4 + 1400), (v4 + 120), (v4 + 128), 3, -1))
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v79 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v307[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(dword_100000000, v79, OS_LOG_TYPE_DEFAULT, "CLAccessory,GPGGA discarded al", v307, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019133EC(v307);
          *__str = 0;
          LODWORD(v246) = 2;
          _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 0, "CLAccessory,GPGGA discarded al", __str, v246);
          v238 = v237;
          sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v237);
          if (v238 != v307)
          {
            free(v238);
          }
        }

        v62 = 1;
        goto LABEL_294;
      }

      if (*(v4 + 6320) == 6)
      {
        *(v4 + 2656) |= 8uLL;
      }

      v150 = *(v4 + 1372);
      *(v4 + 1372) = v150 + 1;
      if (*v48 == 1 && *(v4 + 6400) != 1)
      {
        v62 = 0;
        if (v150 < 5 || (v150 + 1) % 0xAu)
        {
          goto LABEL_294;
        }

        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v176 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          v177 = *(v4 + 1372);
          LODWORD(v307[0].__r_.__value_.__l.__data_) = 67240192;
          HIDWORD(v307[0].__r_.__value_.__r.__words[0]) = v177;
          _os_log_impl(dword_100000000, v176, OS_LOG_TYPE_DEBUG, "CLAccessory,GPGGA only accessory data ignored,numGGAWithoutRMC,%{public}d", v307, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019133EC(v307);
          v243 = *(v4 + 1372);
          *__str = 67240192;
          *&__str[4] = v243;
          LODWORD(v246) = 8;
          _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 2, "CLAccessory,GPGGA only accessory data ignored,numGGAWithoutRMC,%{public}d", __str, v246);
          v245 = v244;
          sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v244);
          if (v245 != v307)
          {
            free(v245);
          }
        }
      }

      else if (v150 >= 5)
      {
        v151 = *(v4 + 2528);
        LODWORD(v252) = 3;
        *v254 = v151;
        *&v251[88] = 0x4024000000000000;
        sub_100021AFC(__str);
        v284 = v252;
        v285 = v253;
        v286[0] = *v254;
        *(v286 + 12) = *&v254[12];
        *&__str[32] = *&v251[32];
        v281 = *&v251[48];
        v282 = *&v251[64];
        v283 = *&v251[80];
        *__str = *v251;
        *&__str[16] = *&v251[16];
        memcpy(v287, v297, sizeof(v287));
        v152 = v298;
        v153 = v299;
        if (v299)
        {
          atomic_fetch_add_explicit(&v299->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v288 = v152;
        v154 = v289;
        v289 = v153;
        if (v154)
        {
          sub_100008080(v154);
        }

        v294 = v304;
        v295[0] = v305[0];
        *(v295 + 9) = *(v305 + 9);
        v290 = v300;
        v291 = v301;
        v292 = v302;
        v293 = v303;
        if (qword_1025D48C0 != -1)
        {
          sub_1019144D0();
        }

        v155 = qword_1025D48C8;
        if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
        {
          v156 = *(v4 + 2656);
          v157 = *v48;
          LODWORD(v307[0].__r_.__value_.__l.__data_) = 136317699;
          *(v307[0].__r_.__value_.__r.__words + 4) = "CL-Accessory";
          WORD2(v307[0].__r_.__value_.__r.__words[1]) = 1024;
          *(&v307[0].__r_.__value_.__r.__words[1] + 6) = 1;
          WORD1(v307[0].__r_.__value_.__r.__words[2]) = 2053;
          *(&v307[0].__r_.__value_.__r.__words[2] + 4) = *&v251[4];
          WORD2(v307[1].__r_.__value_.__r.__words[0]) = 2053;
          *(v307[1].__r_.__value_.__r.__words + 6) = *&v251[12];
          HIWORD(v307[1].__r_.__value_.__r.__words[1]) = 2048;
          v307[1].__r_.__value_.__r.__words[2] = *&v251[20];
          LOWORD(v307[2].__r_.__value_.__l.__data_) = 2050;
          *(v307[2].__r_.__value_.__r.__words + 2) = *&v251[44];
          WORD1(v307[2].__r_.__value_.__r.__words[1]) = 2050;
          *(&v307[2].__r_.__value_.__r.__words[1] + 4) = *&v251[60];
          WORD2(v307[2].__r_.__value_.__r.__words[2]) = 2050;
          *(&v307[2].__r_.__value_.__r.__words[2] + 6) = *&v297[24];
          HIWORD(v307[3].__r_.__value_.__r.__words[0]) = 1026;
          LODWORD(v307[3].__r_.__value_.__r.__words[1]) = *v254;
          WORD2(v307[3].__r_.__value_.__r.__words[1]) = 1026;
          *(&v307[3].__r_.__value_.__r.__words[1] + 6) = v156;
          WORD1(v307[3].__r_.__value_.__r.__words[2]) = 1026;
          HIDWORD(v307[3].__r_.__value_.__r.__words[2]) = v157;
          _os_log_impl(dword_100000000, v155, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Speed,%{public}.2f,Course,%{public}.2f,timestampGps,%{public}.2lf,GgaOnly,integrity,%{public}d,accessoryTypeBitSet,%{public}d,supportsCarPlay,%{public}d", v307, 0x60u);
        }

        if (sub_10000A100(123, 2))
        {
          sub_1019144F8(v307);
          v239 = *(v4 + 2656);
          v240 = *v48;
          v258 = 136317699;
          v259 = "CL-Accessory";
          v260 = 1024;
          v261 = 1;
          v262 = 2053;
          v263 = *&v251[4];
          v264 = 2053;
          v265 = *&v251[12];
          v266 = 2048;
          v267 = *&v251[20];
          v268 = 2050;
          v269 = *&v251[44];
          v270 = 2050;
          v271 = *&v251[60];
          v272 = 2050;
          v273 = *&v297[24];
          v274 = 1026;
          v275 = *v254;
          v276 = 1026;
          v277 = v239;
          v278 = 1026;
          v279 = v240;
          LODWORD(v246) = 96;
          _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Speed,%{public}.2f,Course,%{public}.2f,timestampGps,%{public}.2lf,GgaOnly,integrity,%{public}d,accessoryTypeBitSet,%{public}d,supportsCarPlay,%{public}d", &v258, v246);
          v242 = v241;
          sub_100152C7C("LOCATION", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v241);
          if (v242 != v307)
          {
            free(v242);
          }
        }

        LODWORD(v307[0].__r_.__value_.__l.__data_) = 0;
        (*(*v4 + 152))(v4, v307, __str, 0, 0xFFFFFFFFLL, 0);
        [*(v4 + 992) setNextFireDelay:5.0];
        sub_10107C534(v4 + 2664, __str, *(v4 + 6320) == 6);
        sub_100021ED8(v307);
        memcpy((v4 + 272), v307, 0x201uLL);
        v158 = *&v307[21].__r_.__value_.__r.__words[2];
        *&v307[21].__r_.__value_.__r.__words[2] = 0u;
        v159 = *(v4 + 800);
        *v49 = v158;
        if (v159)
        {
          sub_100008080(v159);
          data = v307[22].__r_.__value_.__l.__data_;
          v161 = *&v307[25].__r_.__value_.__r.__words[2];
          *(v4 + 872) = *&v307[25].__r_.__value_.__l.__data_;
          *(v4 + 888) = v161;
          *(v4 + 897) = *(&v307[26].__r_.__value_.__l.__data_ + 1);
          v162 = *&v307[23].__r_.__value_.__l.__data_;
          *(v4 + 808) = *&v307[22].__r_.__value_.__r.__words[1];
          *(v4 + 824) = v162;
          v163 = *&v307[24].__r_.__value_.__r.__words[1];
          *(v4 + 840) = *&v307[23].__r_.__value_.__r.__words[2];
          *(v4 + 856) = v163;
          if (data)
          {
            sub_100008080(data);
          }
        }

        else
        {
          v178 = *&v307[25].__r_.__value_.__r.__words[2];
          *(v4 + 872) = *&v307[25].__r_.__value_.__l.__data_;
          *(v4 + 888) = v178;
          *(v4 + 897) = *(&v307[26].__r_.__value_.__l.__data_ + 1);
          v179 = *&v307[23].__r_.__value_.__l.__data_;
          *(v4 + 808) = *&v307[22].__r_.__value_.__r.__words[1];
          *(v4 + 824) = v179;
          v180 = *&v307[24].__r_.__value_.__r.__words[1];
          *(v4 + 840) = *&v307[23].__r_.__value_.__r.__words[2];
          *(v4 + 856) = v180;
        }

        sub_100311054(__str);
        v62 = 20;
LABEL_294:
        if (v299)
        {
          sub_100008080(v299);
        }

        if (v62)
        {
          if (v62 != 20)
          {
            goto LABEL_133;
          }

          goto LABEL_129;
        }

        goto LABEL_154;
      }
    }

    v62 = 0;
    goto LABEL_294;
  }

  if (v46 != 3)
  {
    goto LABEL_128;
  }

  *(v4 + 2656) |= 4uLL;
  if (sub_1006E0DE8((v4 + 968), &__p))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v50 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
    {
      v51 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v51 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v307[0].__r_.__value_.__l.__data_) = 136380675;
      *(v307[0].__r_.__value_.__r.__words + 4) = v51;
      _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_ERROR, "CLAccessory,Repeated GPRMC string, %{private}s", v307, 0xCu);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_144;
    }

    sub_1019133EC(v307);
    v52 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v52 = __p.__r_.__value_.__r.__words[0];
    }

    *__str = 136380675;
    *&__str[4] = v52;
    LODWORD(v246) = 12;
    _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 16, "CLAccessory,Repeated GPRMC string, %{private}s", __str, v246);
    v54 = v53;
    sub_100152C7C("Generic", 1, 0, 0, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v53);
LABEL_308:
    if (v54 != v307)
    {
      free(v54);
    }

LABEL_144:
    sub_10107FC14(v4 + 2664, v47);
    goto LABEL_133;
  }

  if (*(v4 + 2649) == 1 && *v48 == 1 && (*(v4 + 2651) & 1) == 0)
  {
    v63 = *(v4 + 6324);
  }

  else
  {
    v63 = 0;
  }

  v64 = (*(v4 + 2650) | v63) & 1;
  if (*(v4 + 2512) != v64)
  {
    *(v4 + 2480) = 0;
    *(v4 + 2488) = 1;
  }

  *(v4 + 2512) = v64;
  std::string::operator=((v4 + 968), &__p);
  sub_100C2D510(&__p);
  v62 = 1;
  *(v4 + 1376) = 1;
LABEL_154:
  v258 = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = &__p;
  }

  else
  {
    v65 = __p.__r_.__value_.__r.__words[0];
  }

  if (!sub_100E2D808(v65, v4 + 116, v4 + 272, &v258, v4 + 2056))
  {
    if (v62)
    {
      ++*(v4 + 3720);
      if (qword_1025D4620 != -1)
      {
        sub_10191453C();
      }

      v68 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        v69 = *(v4 + 2656);
        LODWORD(v307[0].__r_.__value_.__l.__data_) = 67240192;
        HIDWORD(v307[0].__r_.__value_.__r.__words[0]) = v69;
        _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEFAULT, "@ClxAccessory, Fix, 0, ll, N/A,accessoryType,%{public}d", v307, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101914564(v307);
        v70 = *(v4 + 2656);
        *__str = 67240192;
        *&__str[4] = v70;
        LODWORD(v246) = 8;
        _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D4628, 0, "@ClxAccessory, Fix, 0, ll, N/A,accessoryType,%{public}d", __str, v246);
        v72 = v71;
        sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v71);
        if (v72 != v307)
        {
          free(v72);
        }
      }
    }

    goto LABEL_129;
  }

  if (sub_100298E74((v4 + 1400), (v4 + 120), (v4 + 128), 3, -1))
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v66 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v307[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v66, OS_LOG_TYPE_DEFAULT, "CLAccessory,GPRMC discarded al", v307, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019133EC(v307);
      *__str = 0;
      LODWORD(v246) = 2;
      _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 0, "CLAccessory,GPRMC discarded al", __str, v246);
      v15 = v67;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v67);
      goto LABEL_64;
    }

    goto LABEL_133;
  }

  if (v62)
  {
    sub_10107F834(v4 + 2664, __dst);
  }

  v80 = sub_100CE39BC(*(v4 + 120), *(v4 + 128));
  if (*(v4 + 1380) != v80)
  {
    [qword_102658FB0 sendGPRMCDataStatusValues:v80];
    *(v4 + 1380) = v80;
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v81 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      v82 = *(v4 + 1380);
      LODWORD(v307[0].__r_.__value_.__l.__data_) = 67174913;
      HIDWORD(v307[0].__r_.__value_.__r.__words[0]) = v80;
      LOWORD(v307[0].__r_.__value_.__r.__words[1]) = 1025;
      *(&v307[0].__r_.__value_.__r.__words[1] + 2) = v82;
      _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_DEBUG, "CLAccessory,onAccessoryNmeaReceived,sendGPRMCDataStatusValues,isShifting,%{private}d,fIsShifting,%{private}d", v307, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019133EC(v307);
      v223 = *(v4 + 1380);
      *__str = 67174913;
      *&__str[4] = v80;
      *&__str[8] = 1025;
      *&__str[10] = v223;
      LODWORD(v246) = 14;
      _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 2, "CLAccessory,onAccessoryNmeaReceived,sendGPRMCDataStatusValues,isShifting,%{private}d,fIsShifting,%{private}d", __str, v246);
      v225 = v224;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v224);
      if (v225 != v307)
      {
        free(v225);
      }
    }
  }

  if ((v80 & 1) != 0 || *(v4 + 248) != 2)
  {
    if (qword_1025D48C0 != -1)
    {
      sub_1019144D0();
    }

    v85 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v86 = *(v4 + 120);
      v87 = *(v4 + 128);
      v88 = *(v4 + 136);
      v89 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v89 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v307[0].__r_.__value_.__l.__data_) = 136316419;
      *(v307[0].__r_.__value_.__r.__words + 4) = "NMEA";
      WORD2(v307[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&v307[0].__r_.__value_.__r.__words[1] + 6) = 0;
      WORD1(v307[0].__r_.__value_.__r.__words[2]) = 2053;
      *(&v307[0].__r_.__value_.__r.__words[2] + 4) = v86;
      WORD2(v307[1].__r_.__value_.__r.__words[0]) = 2053;
      *(v307[1].__r_.__value_.__r.__words + 6) = v87;
      HIWORD(v307[1].__r_.__value_.__r.__words[1]) = 2048;
      v307[1].__r_.__value_.__r.__words[2] = v88;
      LOWORD(v307[2].__r_.__value_.__l.__data_) = 2080;
      *(v307[2].__r_.__value_.__r.__words + 2) = v89;
      _os_log_impl(dword_100000000, v85, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Sentence,%s,", v307, 0x3Au);
    }

    if (sub_10000A100(123, 2))
    {
      sub_1019144F8(v307);
      v191 = *(v4 + 120);
      v192 = *(v4 + 128);
      v193 = *(v4 + 136);
      v194 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v194 = __p.__r_.__value_.__r.__words[0];
      }

      *__str = 136316419;
      *&__str[4] = "NMEA";
      *&__str[12] = 1024;
      *&__str[14] = 0;
      *&__str[18] = 2053;
      *&__str[20] = v191;
      *&__str[28] = 2053;
      *&__str[30] = v192;
      *&__str[38] = 2048;
      *&__str[40] = v193;
      LOWORD(v281) = 2080;
      *(&v281 + 2) = v194;
      LODWORD(v246) = 58;
      _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Sentence,%s,", __str, v246);
      v196 = v195;
      sub_100152C7C("LOCATION", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v195);
      if (v196 != v307)
      {
        free(v196);
      }
    }

    if (*(v4 + 1368) == 1)
    {
      [*(*(v4 + 1320) + 16) unregister:*(*(v4 + 1320) + 8) forNotification:4];
      *(v4 + 1368) = 0;
    }

    if (*(v4 + 1369) == 1)
    {
      [*(*(v4 + 1328) + 16) unregister:*(*(v4 + 1328) + 8) forNotification:0];
      *(v4 + 1369) = 0;
    }

    sub_100021AFC(__str);
    *(v4 + 212) = 3;
    *(v4 + 244) = *(v4 + 2528);
    *(v4 + 204) = 0x4024000000000000;
    v296 = HIDWORD(__dst[3].__r_.__value_.__r.__words[2]);
    *(v4 + 904) = 1;
    if ((*v48 & 1) == 0)
    {
      goto LABEL_224;
    }

    v90 = *(v4 + 2651) ? 3 : 2;
    *(v4 + 904) = v90;
    if (*(v4 + 176) < 0.0)
    {
      goto LABEL_224;
    }

    v91 = *(v4 + 6384);
    if (*(v4 + 184) <= v91)
    {
      goto LABEL_224;
    }

    v92 = *(v4 + 160);
    if (v92 < 0.0 || v92 > *(v4 + 6392))
    {
      goto LABEL_224;
    }

    if (*(v4 + 6320) != 6)
    {
      if (!sub_100635F4C(__dst, 0x200u) || HIDWORD(__dst[3].__r_.__value_.__r.__words[2]) != 69)
      {
        goto LABEL_224;
      }

      v91 = *(v4 + 6384);
    }

    *(v4 + 184) = v91;
LABEL_224:
    if (*(v4 + 2648) == 1)
    {
      v93 = *(v4 + 176);
      v94 = *(v4 + 184);
      sub_1007129B4(v4 + 2544, (v4 + 176), (v4 + 184), *(v4 + 192), *(v4 + 120), *(v4 + 128), *(v4 + 160));
      if (v93 != *(v4 + 176) || v94 != *(v4 + 184))
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v95 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
        {
          v97 = *(v4 + 184);
          v96 = *(v4 + 192);
          v98 = *(v4 + 176);
          v99 = *(v4 + 120);
          v100 = *(v4 + 128);
          v101 = *(v4 + 160);
          LODWORD(v307[0].__r_.__value_.__l.__data_) = 134350849;
          *(v307[0].__r_.__value_.__r.__words + 4) = v96;
          WORD2(v307[0].__r_.__value_.__r.__words[1]) = 2050;
          *(&v307[0].__r_.__value_.__r.__words[1] + 6) = v93;
          HIWORD(v307[0].__r_.__value_.__r.__words[2]) = 2050;
          v307[1].__r_.__value_.__r.__words[0] = v98;
          LOWORD(v307[1].__r_.__value_.__r.__words[1]) = 2050;
          *(&v307[1].__r_.__value_.__r.__words[1] + 2) = v94;
          WORD1(v307[1].__r_.__value_.__r.__words[2]) = 2050;
          *(&v307[1].__r_.__value_.__r.__words[2] + 4) = v97;
          WORD2(v307[2].__r_.__value_.__r.__words[0]) = 2053;
          *(v307[2].__r_.__value_.__r.__words + 6) = v99;
          HIWORD(v307[2].__r_.__value_.__r.__words[1]) = 2053;
          v307[2].__r_.__value_.__r.__words[2] = v100;
          LOWORD(v307[3].__r_.__value_.__l.__data_) = 2050;
          *(v307[3].__r_.__value_.__r.__words + 2) = v101;
          _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_INFO, "CLAccessory,courseScreener,%{public}.2lf,prevCourse,%{public}.2lf,newCourse,%{public}.2lf,prevCourseUnc,%{public}.2lf,newCourseUnc,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf", v307, 0x52u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019133EC(v307);
          v230 = *(v4 + 184);
          v229 = *(v4 + 192);
          v231 = *(v4 + 176);
          v232 = *(v4 + 120);
          v233 = *(v4 + 128);
          v234 = *(v4 + 160);
          *v297 = 134350849;
          *&v297[4] = v229;
          *&v297[12] = 2050;
          *&v297[14] = v93;
          *&v297[22] = 2050;
          *&v297[24] = v231;
          *&v297[32] = 2050;
          *&v297[34] = v94;
          *&v297[42] = 2050;
          *&v297[44] = v230;
          *&v297[52] = 2053;
          *&v297[54] = v232;
          *&v297[62] = 2053;
          *&v297[64] = v233;
          *&v297[72] = 2050;
          *&v297[74] = v234;
          LODWORD(v246) = 82;
          _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 1, "CLAccessory,courseScreener,%{public}.2lf,prevCourse,%{public}.2lf,newCourse,%{public}.2lf,prevCourseUnc,%{public}.2lf,newCourseUnc,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf", v297, v246);
          v236 = v235;
          sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v235);
          if (v236 != v307)
          {
            free(v236);
          }
        }
      }
    }

    Current = CFAbsoluteTimeGetCurrent();
    *v251 = Current;
    if (Current - *(v4 + 1992) > 5.0)
    {
      sub_100A2AF0C(v4 + 1000, v251, *(v4 + 176), *(v4 + 160));
      sub_1006F5200(v4, Current, v105);
    }

    if (*(v4 + 1392))
    {
      v106 = sub_10001A3E8(v102, v103);
      v108 = sub_10001CF04(v106, v107);
      if (v108)
      {
        v307[3].__r_.__value_.__l.__size_ = 0;
        memset(v307, 0, 48);
        LODWORD(v307[3].__r_.__value_.__r.__words[2]) = 1;
        memset(&v307[5].__r_.__value_.__r.__words[1], 0, 17);
        v307[6].__r_.__value_.__r.__words[2] = 0xBFF0000000000000;
        v307[7].__r_.__value_.__s.__data_[0] = 0;
        v307[7].__r_.__value_.__r.__words[2] = 0xBFF0000000000000;
        v307[8].__r_.__value_.__s.__data_[0] = 0;
        __asm { FMOV            V1.2D, #-1.0 }

        *&v307[8].__r_.__value_.__r.__words[1] = _Q1;
        v307[9].__r_.__value_.__s.__data_[0] = 0;
        memset(&v307[9].__r_.__value_.__r.__words[1], 0, 56);
        LODWORD(v307[11].__r_.__value_.__r.__words[2]) = 1065353216;
        *&v307[12].__r_.__value_.__l.__data_ = 0x100000005uLL;
        *&v307[2].__r_.__value_.__r.__words[1] = *(v4 + 120);
        v110 = *(v4 + 136);
        v307[3].__r_.__value_.__r.__words[0] = *(v4 + 144);
        v307[2].__r_.__value_.__s.__data_[0] = 1;
        *&v307[4].__r_.__value_.__r.__words[2] = v110 * 1.73241161;
        *&v307[5].__r_.__value_.__l.__data_ = v110 * 1.73241161;
        *&_Q1 = *(v4 + 152);
        v111 = *(v4 + 160);
        *&v307[4].__r_.__value_.__l.__data_ = v110;
        v307[4].__r_.__value_.__l.__size_ = _Q1;
        v307[6].__r_.__value_.__l.__size_ = v111;
        v307[7].__r_.__value_.__l.__size_ = *(v4 + 176);
        v307[0].__r_.__value_.__r.__words[2] = *(v4 + 296);
        memset(v297, 0, 136);
        CLMotionActivity::getInit(v108);
        v112 = *(v4 + 1392);
        v250 = 0;
        sub_1002A3400(v112, v307, v297, &v250);
        if (v307[9].__r_.__value_.__s.__data_[0] == 1)
        {
          *(v4 + 272) = *&v307[9].__r_.__value_.__r.__words[1];
          *(v4 + 288) = v307[10].__r_.__value_.__l.__data_;
        }

        sub_100134860(&v307[10].__r_.__value_.__l.__size_);
      }
    }

    if (*(v4 + 248) == 2)
    {
      *(v4 + 2656) |= 0x10uLL;
      ++*(v4 + 2916);
    }

    v114 = *(v4 + 120);
    v113 = *(v4 + 128);
    v115 = sub_100DC68A4(v4 + 1712, v4 + 116);
    if (!((*(v4 + 248) != 2) | v115 & 1))
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v116 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        v117 = *(v4 + 296);
        LODWORD(v307[0].__r_.__value_.__l.__data_) = 134349056;
        *(v307[0].__r_.__value_.__r.__words + 4) = v117;
        _os_log_impl(dword_100000000, v116, OS_LOG_TYPE_INFO, "CLAccessory,%{public}.1lf,CLAccessory,handleShiftedAccessoryData failed, shifted data sent to client", v307, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019133EC(v307);
        v226 = *(v4 + 296);
        *v297 = 134349056;
        *&v297[4] = v226;
        LODWORD(v246) = 12;
        _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 1, "CLAccessory,%{public}.1lf,CLAccessory,handleShiftedAccessoryData failed, shifted data sent to client", v297, v246);
        v228 = v227;
        sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v227);
        if (v228 != v307)
        {
          free(v228);
        }
      }
    }

    if (*(v4 + 2652) == 1)
    {
      *(v4 + 784) = 1;
    }

    v118 = *(v4 + 228);
    v284 = *(v4 + 212);
    v285 = v118;
    v286[0] = *(v4 + 244);
    *(v286 + 12) = *(v4 + 256);
    v119 = *(v4 + 164);
    *&__str[32] = *(v4 + 148);
    v281 = v119;
    v120 = *(v4 + 196);
    v282 = *(v4 + 180);
    v283 = v120;
    v121 = *(v4 + 132);
    *__str = *(v4 + 116);
    *&__str[16] = v121;
    memcpy(v287, (v4 + 272), sizeof(v287));
    v122 = *(v4 + 792);
    v123 = *(v4 + 800);
    if (v123)
    {
      atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v288 = v122;
    v124 = v289;
    v289 = v123;
    if (v124)
    {
      sub_100008080(v124);
    }

    v125 = (v4 + 808);
    v126 = *(v4 + 888);
    v294 = *(v4 + 872);
    v295[0] = v126;
    *(v295 + 9) = *(v4 + 897);
    v127 = *(v4 + 824);
    v290 = *(v4 + 808);
    v291 = v127;
    v128 = *(v4 + 856);
    v292 = *(v4 + 840);
    v293 = v128;
    if (qword_1025D48C0 != -1)
    {
      sub_1019144D0();
    }

    v129 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v130 = *(v4 + 120);
      v131 = *(v4 + 128);
      v132 = *(v4 + 136);
      v133 = *(v4 + 160);
      v134 = *(v4 + 176);
      v135 = *(v4 + 272);
      v136 = *(v4 + 280);
      v138 = *(v4 + 288);
      v137 = *(v4 + 296);
      v139 = *(v4 + 2656);
      v140 = *(v4 + 1992);
      v141 = *(v4 + 244);
      v142 = *(v4 + 248);
      v143 = *(v4 + 784);
      LODWORD(v307[0].__r_.__value_.__l.__data_) = 136319747;
      *(v307[0].__r_.__value_.__r.__words + 4) = "CL-Accessory";
      WORD2(v307[0].__r_.__value_.__r.__words[1]) = 1024;
      *(&v307[0].__r_.__value_.__r.__words[1] + 6) = 1;
      WORD1(v307[0].__r_.__value_.__r.__words[2]) = 2053;
      *(&v307[0].__r_.__value_.__r.__words[2] + 4) = v130;
      WORD2(v307[1].__r_.__value_.__r.__words[0]) = 2053;
      *(v307[1].__r_.__value_.__r.__words + 6) = v131;
      HIWORD(v307[1].__r_.__value_.__r.__words[1]) = 2048;
      v307[1].__r_.__value_.__r.__words[2] = v132;
      LOWORD(v307[2].__r_.__value_.__l.__data_) = 2050;
      *(v307[2].__r_.__value_.__r.__words + 2) = v133;
      WORD1(v307[2].__r_.__value_.__r.__words[1]) = 2050;
      *(&v307[2].__r_.__value_.__r.__words[1] + 4) = v134;
      WORD2(v307[2].__r_.__value_.__r.__words[2]) = 2050;
      *(&v307[2].__r_.__value_.__r.__words[2] + 6) = v137;
      HIWORD(v307[3].__r_.__value_.__r.__words[0]) = 1026;
      LODWORD(v307[3].__r_.__value_.__r.__words[1]) = v141;
      WORD2(v307[3].__r_.__value_.__r.__words[1]) = 2050;
      *(&v307[3].__r_.__value_.__r.__words[1] + 6) = v135;
      HIWORD(v307[3].__r_.__value_.__r.__words[2]) = 2050;
      v307[4].__r_.__value_.__r.__words[0] = v136;
      LOWORD(v307[4].__r_.__value_.__r.__words[1]) = 2050;
      *(&v307[4].__r_.__value_.__r.__words[1] + 2) = v138;
      WORD1(v307[4].__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(v307[4].__r_.__value_.__r.__words[2]) = v115;
      LOWORD(v307[5].__r_.__value_.__l.__data_) = 2053;
      *(v307[5].__r_.__value_.__r.__words + 2) = v114;
      WORD1(v307[5].__r_.__value_.__r.__words[1]) = 2053;
      *(&v307[5].__r_.__value_.__r.__words[1] + 4) = v113;
      WORD2(v307[5].__r_.__value_.__r.__words[2]) = 1026;
      *(&v307[5].__r_.__value_.__r.__words[2] + 6) = v139;
      *&v307[6].__r_.__value_.__s.__data_[2] = 2050;
      *(v307[6].__r_.__value_.__r.__words + 4) = v140;
      WORD2(v307[6].__r_.__value_.__r.__words[1]) = 1026;
      *(&v307[6].__r_.__value_.__r.__words[1] + 6) = v142;
      WORD1(v307[6].__r_.__value_.__r.__words[2]) = 1026;
      HIDWORD(v307[6].__r_.__value_.__r.__words[2]) = v143;
      _os_log_impl(dword_100000000, v129, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Speed,%{public}.2f,Course,%{public}.2f,timestampGps,%{public}.2lf,integrity,%{public}d,odometer,%{public}.2f,deltaDist,%{public}.2f,deltaDistUnc,%{public}.2f,modified,%{public}d,origLL,%{sensitive}.7lf,%{sensitive}.7lf,accessoryType,%{public}d,lastHdtTime,%{public}.1lf,refFrame,%{public}d,isSimulatedOrSpoofed,%{public}d", v307, 0xA8u);
    }

    if (sub_10000A100(123, 2))
    {
      sub_1019144F8(v307);
      v197 = *(v4 + 120);
      v198 = *(v4 + 128);
      v199 = *(v4 + 136);
      v200 = *(v4 + 160);
      v201 = *(v4 + 176);
      v202 = *(v4 + 272);
      v203 = *(v4 + 280);
      v205 = *(v4 + 288);
      v204 = *(v4 + 296);
      v206 = *(v4 + 2656);
      v207 = *(v4 + 1992);
      v208 = *(v4 + 244);
      v209 = *(v4 + 248);
      v210 = *(v4 + 784);
      *v297 = 136319747;
      *&v297[4] = "CL-Accessory";
      *&v297[12] = 1024;
      *&v297[14] = 1;
      *&v297[18] = 2053;
      *&v297[20] = v197;
      *&v297[28] = 2053;
      *&v297[30] = v198;
      *&v297[38] = 2048;
      *&v297[40] = v199;
      *&v297[48] = 2050;
      *&v297[50] = v200;
      *&v297[58] = 2050;
      *&v297[60] = v201;
      *&v297[68] = 2050;
      *&v297[70] = v204;
      *&v297[78] = 1026;
      *&v297[80] = v208;
      *&v297[84] = 2050;
      *&v297[86] = v202;
      *&v297[94] = 2050;
      *&v297[96] = v203;
      *&v297[104] = 2050;
      *&v297[106] = v205;
      *&v297[114] = 1026;
      *&v297[116] = v115;
      *&v297[120] = 2053;
      *&v297[122] = v114;
      *&v297[130] = 2053;
      *&v297[132] = v113;
      *&v297[140] = 1026;
      *&v297[142] = v206;
      *&v297[146] = 2050;
      *&v297[148] = v207;
      *&v297[156] = 1026;
      *&v297[158] = v209;
      *&v297[162] = 1026;
      *&v297[164] = v210;
      LODWORD(v246) = 168;
      _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D48C8, 2, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Speed,%{public}.2f,Course,%{public}.2f,timestampGps,%{public}.2lf,integrity,%{public}d,odometer,%{public}.2f,deltaDist,%{public}.2f,deltaDistUnc,%{public}.2f,modified,%{public}d,origLL,%{sensitive}.7lf,%{sensitive}.7lf,accessoryType,%{public}d,lastHdtTime,%{public}.1lf,refFrame,%{public}d,isSimulatedOrSpoofed,%{public}d", v297, v246);
      v212 = v211;
      sub_100152C7C("LOCATION", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v211);
      if (v212 != v307)
      {
        free(v212);
      }
    }

    LODWORD(v307[0].__r_.__value_.__l.__data_) = 0;
    (*(*v4 + 152))(v4, v307, __str, 0, 0xFFFFFFFFLL, 0);
    [*(v4 + 992) setNextFireDelay:5.0];
    sub_10107C534(v4 + 2664, __str, *(v4 + 6320) == 6);
    sub_100021ED8(v307);
    memcpy((v4 + 272), v307, 0x201uLL);
    v144 = *&v307[21].__r_.__value_.__r.__words[2];
    *&v307[21].__r_.__value_.__r.__words[2] = 0u;
    v145 = *(v4 + 800);
    *v49 = v144;
    if (v145)
    {
      sub_100008080(v145);
      v146 = v307[22].__r_.__value_.__l.__data_;
      v147 = *&v307[25].__r_.__value_.__r.__words[2];
      *(v4 + 872) = *&v307[25].__r_.__value_.__l.__data_;
      *(v4 + 888) = v147;
      *(v4 + 897) = *(&v307[26].__r_.__value_.__l.__data_ + 1);
      v148 = *&v307[23].__r_.__value_.__l.__data_;
      *v125 = *&v307[22].__r_.__value_.__r.__words[1];
      *(v4 + 824) = v148;
      v149 = *&v307[24].__r_.__value_.__r.__words[1];
      *(v4 + 840) = *&v307[23].__r_.__value_.__r.__words[2];
      *(v4 + 856) = v149;
      if (v146)
      {
        sub_100008080(v146);
      }
    }

    else
    {
      v164 = *&v307[25].__r_.__value_.__r.__words[2];
      *(v4 + 872) = *&v307[25].__r_.__value_.__l.__data_;
      *(v4 + 888) = v164;
      *(v4 + 897) = *(&v307[26].__r_.__value_.__l.__data_ + 1);
      v165 = *&v307[23].__r_.__value_.__l.__data_;
      *v125 = *&v307[22].__r_.__value_.__r.__words[1];
      *(v4 + 824) = v165;
      v166 = *&v307[24].__r_.__value_.__r.__words[1];
      *(v4 + 840) = *&v307[23].__r_.__value_.__r.__words[2];
      *(v4 + 856) = v166;
    }

    if (qword_1025D4620 != -1)
    {
      sub_10191453C();
    }

    v167 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v168 = *(v4 + 120);
      v169 = *(v4 + 128);
      v170 = *(v4 + 136);
      v171 = *(v4 + 160);
      v172 = *(v4 + 176);
      v173 = *(v4 + 2656);
      v174 = *(v4 + 248);
      v175 = *(v4 + 192);
      LODWORD(v307[0].__r_.__value_.__l.__data_) = 134547457;
      *(v307[0].__r_.__value_.__r.__words + 4) = v168;
      WORD2(v307[0].__r_.__value_.__r.__words[1]) = 2053;
      *(&v307[0].__r_.__value_.__r.__words[1] + 6) = v169;
      HIWORD(v307[0].__r_.__value_.__r.__words[2]) = 2050;
      v307[1].__r_.__value_.__r.__words[0] = v170;
      LOWORD(v307[1].__r_.__value_.__r.__words[1]) = 2049;
      *(&v307[1].__r_.__value_.__r.__words[1] + 2) = v171;
      WORD1(v307[1].__r_.__value_.__r.__words[2]) = 2049;
      *(&v307[1].__r_.__value_.__r.__words[2] + 4) = v172;
      WORD2(v307[2].__r_.__value_.__r.__words[0]) = 1026;
      *(v307[2].__r_.__value_.__r.__words + 6) = v173;
      WORD1(v307[2].__r_.__value_.__r.__words[1]) = 1026;
      HIDWORD(v307[2].__r_.__value_.__r.__words[1]) = v174;
      LOWORD(v307[2].__r_.__value_.__r.__words[2]) = 2050;
      *(&v307[2].__r_.__value_.__r.__words[2] + 2) = v175;
      _os_log_impl(dword_100000000, v167, OS_LOG_TYPE_DEFAULT, "@ClxAccessory, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f,accessoryType,%{public}d,refFrame,%{public}d,timestamp,%{public}.2lf", v307, 0x4Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101914564(v307);
      v213 = *(v4 + 120);
      v214 = *(v4 + 128);
      v215 = *(v4 + 136);
      v216 = *(v4 + 160);
      v217 = *(v4 + 176);
      v218 = *(v4 + 2656);
      v219 = *(v4 + 248);
      v220 = *(v4 + 192);
      *v297 = 134547457;
      *&v297[4] = v213;
      *&v297[12] = 2053;
      *&v297[14] = v214;
      *&v297[22] = 2050;
      *&v297[24] = v215;
      *&v297[32] = 2049;
      *&v297[34] = v216;
      *&v297[42] = 2049;
      *&v297[44] = v217;
      *&v297[52] = 1026;
      *&v297[54] = v218;
      *&v297[58] = 1026;
      *&v297[60] = v219;
      *&v297[64] = 2050;
      *&v297[66] = v220;
      LODWORD(v246) = 74;
      _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D4628, 0, "@ClxAccessory, Fix, 1, ll, %{sensitive}.7f, %{sensitive}.7f, acc, %{public}.2f, speed, %{private}.1f, course, %{private}.1f,accessoryType,%{public}d,refFrame,%{public}d,timestamp,%{public}.2lf", v297, v246);
      v222 = v221;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v221);
      if (v222 != v307)
      {
        free(v222);
      }
    }

    sub_100311054(__str);
    goto LABEL_129;
  }

  if (qword_1025D45E0 != -1)
  {
    sub_1019133C4();
  }

  v83 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v307[0].__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEBUG, "isShiftingSupported,0,discarding", v307, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019133EC(v307);
    *__str = 0;
    LODWORD(v246) = 2;
    _os_log_send_and_compose_impl(2, 0, v307, 1628, dword_100000000, qword_1025D45E8, 2, "isShiftingSupported,0,discarding", __str, v246);
    v15 = v84;
    sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryNmeaReceived(const CFStringRef)", "%s\n", v84);
LABEL_64:
    if (v15 != v307)
    {
      free(v15);
    }
  }

LABEL_133:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1006F50C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (STACK[0x990])
  {
    sub_100008080(STACK[0x990]);
  }

  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006F5200(double *a1, double a2, double a3)
{
  if (vabdd_f64(a2, a1[251]) > 0.5)
  {
    sub_100021AFC(v7);
    v10 = a3;
    v11 = a2;
    v6 = 21;
    (*(*a1 + 152))(a1, &v6, v7, 0, 0xFFFFFFFFLL, 0);
    a1[251] = a2;

    if (v14)
    {
      sub_100008080(v14);
    }

    if (v13 < 0)
    {
      operator delete(v12);
    }

    if (v9)
    {
      sub_100008080(v9);
    }

    if (v8)
    {
      sub_100008080(v8);
    }
  }
}

void sub_1006F52F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100311054(va);
  _Unwind_Resume(a1);
}

void sub_1006F5304(uint64_t a1)
{
  v5 = 0.0;
  if ([*(a1 + 1360) syncgetReferenceTime:&v5])
  {
    v2 = [qword_102658FB0 sendReferenceTime:v5];
    *(a1 + 2049) = v2;
    if (v2)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v3 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v7 = v5;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "sent reference time %.3f to accessory", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101914684(&v5);
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v4 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#Warning no reference time available, not sending reference time", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019145A8();
    }
  }
}

void sub_1006F5478(uint64_t a1)
{
  if (sub_10003845C() == 1)
  {
    v2 = [objc_msgSend(*(a1 + 32) "vendor")];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1006F626C;
    v4[3] = &unk_10246BE20;
    v4[4] = a1;
    [v2 fetchLocationWithReply:v4];
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v3 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "#Warning location services is disabled, not sending reference location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191477C();
    }
  }
}

void sub_1006F558C(uint64_t a1, CFURLRef anURL, double *a3, double *a4)
{
  v7 = CFURLGetString(anURL);
  sub_1000238CC(v7, v38);
  sub_1006F5BAC(v38, &v48);
  v8 = *(a1 + 1319);
  if (v8 >= 0)
  {
    v9 = (a1 + 1296);
  }

  else
  {
    v9 = *(a1 + 1296);
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 1319);
  }

  else
  {
    v10 = *(a1 + 1304);
  }

  v11 = std::string::insert(&v48, 0, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v37 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (qword_1025D45E0 != -1)
  {
    sub_1019133C4();
  }

  v13 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v14 = v38;
    if (v39 < 0)
    {
      v14 = v38[0];
    }

    v15 = __p;
    if (v37 < 0)
    {
      v15 = __p[0];
    }

    v16 = *a3;
    v17 = *a4;
    LODWORD(v48.__r_.__value_.__l.__data_) = 136381443;
    *(v48.__r_.__value_.__r.__words + 4) = v14;
    WORD2(v48.__r_.__value_.__r.__words[1]) = 2081;
    *(&v48.__r_.__value_.__r.__words[1] + 6) = v15;
    HIWORD(v48.__r_.__value_.__r.__words[2]) = 2050;
    v49 = v16;
    v50 = 2050;
    v51 = v17;
    _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "CLAccessory,ephemeris download requested at %{private}s to %{private}s (refresh %{public}.3fs expire %{public}.3fs)", &v48, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019133EC(&v48);
    v23 = v38;
    if (v39 < 0)
    {
      v23 = v38[0];
    }

    v24 = __p;
    if (v37 < 0)
    {
      v24 = __p[0];
    }

    v25 = *a3;
    v26 = *a4;
    v40 = 136381443;
    v41 = v23;
    v42 = 2081;
    v43 = *&v24;
    v44 = 2050;
    v45 = v25;
    v46 = 2050;
    v47 = v26;
    _os_log_send_and_compose_impl(2, 0, &v48, 1628, dword_100000000, qword_1025D45E8, 2, "CLAccessory,ephemeris download requested at %{private}s to %{private}s (refresh %{public}.3fs expire %{public}.3fs)", &v40, 42);
    v28 = v27;
    sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryEphemerisURL(const CFURLRef, const CFTimeInterval &, const CFTimeInterval &)", "%s\n", v27);
    if (v28 != &v48)
    {
      free(v28);
    }
  }

  sub_1005DD8B0(a1 + 1048);
  if (v39 >= 0)
  {
    v18 = v38;
  }

  else
  {
    v18 = v38[0];
  }

  if (v37 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  v48.__r_.__value_.__r.__words[0] = 0x404E000000000000;
  if ((sub_1005DCFEC(a1 + 1048, v18, v19, &v48) & 1) == 0)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v20 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v48.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "CLAccessory,could not set up ephemeris updater", &v48, 2u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019133EC(&v48);
      LOWORD(v40) = 0;
      LODWORD(v34) = 2;
      _os_log_send_and_compose_impl(2, 0, &v48, 1628, dword_100000000, qword_1025D45E8, 17, "CLAccessory,could not set up ephemeris updater", &v40, v34);
      v33 = v32;
      sub_100152C7C("Generic", 1, 0, 0, "void CLAccessoryLocationProvider::onAccessoryEphemerisURL(const CFURLRef, const CFTimeInterval &, const CFTimeInterval &)", "%s\n", v32);
      if (v33 != &v48)
      {
        free(v33);
      }
    }
  }

  sub_100254C0C(a1 + 1048, a4, a3);
  v35 = 0.0;
  if (*a4 >= 1.79769313e308)
  {
    v48.__r_.__value_.__r.__words[0] = CFAbsoluteTimeGetCurrent();
    sub_1005DD610(a1 + 1048, &v48);
  }

  else if (sub_100256298(a1 + 1048, &v35) && CFAbsoluteTimeGetCurrent() - v35 < *a4)
  {
    sub_1006F5CD0(a1);
    goto LABEL_42;
  }

  sub_1005DDEF8(a1 + 1048, &v35);
  if (qword_1025D45E0 != -1)
  {
    sub_1019133C4();
  }

  v21 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v22 = v38;
    if (v39 < 0)
    {
      v22 = v38[0];
    }

    LODWORD(v48.__r_.__value_.__l.__data_) = 136380931;
    *(v48.__r_.__value_.__r.__words + 4) = v22;
    WORD2(v48.__r_.__value_.__r.__words[1]) = 2050;
    *(&v48.__r_.__value_.__r.__words[1] + 6) = v35;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "CLAccessory,waiting for %{private}s download at %{public}.3f", &v48, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019133EC(&v48);
    v29 = v38;
    if (v39 < 0)
    {
      v29 = v38[0];
    }

    v40 = 136380931;
    v41 = v29;
    v42 = 2050;
    v43 = v35;
    LODWORD(v34) = 22;
    _os_log_send_and_compose_impl(2, 0, &v48, 1628, dword_100000000, qword_1025D45E8, 2, "CLAccessory,waiting for %{private}s download at %{public}.3f", &v40, v34);
    v31 = v30;
    sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onAccessoryEphemerisURL(const CFURLRef, const CFTimeInterval &, const CFTimeInterval &)", "%s\n", v30);
    if (v31 != &v48)
    {
      free(v31);
    }
  }

LABEL_42:
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (v39 < 0)
  {
    operator delete(v38[0]);
  }
}

void sub_1006F5B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1006F5BAC@<X0>(char *result@<X0>, std::string *a2@<X8>)
{
  if (result[23] < 0)
  {
    result = sub_100007244(a2, *result, *(result + 1));
  }

  else
  {
    *a2 = *result;
  }

  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if (v3 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  if (size)
  {
    v5 = 0;
    if (v3 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a2->__r_.__value_.__r.__words[0];
    }

    while (2)
    {
      v7 = v6 + size;
      v8 = v6 + v5;
LABEL_11:
      v9 = 0;
      while (*v8 != asc_101E2AE3F[v9])
      {
        if (++v9 == 31)
        {
          if (++v8 != v7)
          {
            goto LABEL_11;
          }

          return result;
        }
      }

      if (v8 != v7)
      {
        v10 = v8 - v6;
        if (v8 - v6 != -1)
        {
          result = std::string::replace(a2, v8 - v6, 1uLL, 1uLL, 95);
          v5 = v10 + 1;
          size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          v6 = (size & 0x80u) == 0 ? a2 : a2->__r_.__value_.__r.__words[0];
          if ((size & 0x80u) != 0)
          {
            size = a2->__r_.__value_.__l.__size_;
          }

          if (size > v5)
          {
            continue;
          }
        }
      }

      break;
    }
  }

  return result;
}

void sub_1006F5CB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F5CD0(uint64_t a1)
{
  v30 = 0;
  if (sub_100256298(a1 + 1048, &v30))
  {
    sub_1005DDE24(a1 + 1048, __p);
    if (v40 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    v3 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v2, 0x8000100u, kCFAllocatorNull);
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v3, kCFURLPOSIXPathStyle, 0);
    v5 = [NSInputStream inputStreamWithURL:v4];
    v6 = v5;
    if (v5)
    {
      [(NSInputStream *)v5 open];
      v7 = +[NSMutableData data];
      if ([(NSInputStream *)v6 hasBytesAvailable])
      {
        do
        {
          v8 = [(NSInputStream *)v6 read:__p maxLength:1024];
          if (v8 >= 1)
          {
            [v7 appendBytes:__p length:v8];
          }

          v9 = [(NSInputStream *)v6 hasBytesAvailable];
          if (v8 >= 0)
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }
        }

        while ((v10 & 1) != 0);
      }

      [(NSInputStream *)v6 close];
    }

    else
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v13 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
      {
        sub_1000238CC(v3, __p);
        v14 = v40 >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v14;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "could not create input stream for ephemeris file, %{public}s", buf, 0xCu);
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_101914978();
      }

      v7 = 0;
    }

    CFRelease(v3);
    CFRelease(v4);
    if ([v7 length])
    {
      v15 = [qword_102658FB0 sendEphemeris:v7];
      *(a1 + 2048) = v15;
      if (v15)
      {
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v16 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
        {
          sub_1005DDD50(a1 + 1048, __p);
          v17 = v40;
          v18 = __p[0];
          v19 = [v7 length];
          v20 = __p;
          if (v17 < 0)
          {
            v20 = v18;
          }

          *buf = 136315394;
          *&buf[4] = v20;
          v32 = 2048;
          v33 = v19;
          _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "sent ephemeris data %s (%lu bytes) to accessory", buf, 0x16u);
          if (v40 < 0)
          {
            operator delete(__p[0]);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019133EC(__p);
          v21 = qword_1025D45E8;
          sub_1005DDD50(a1 + 1048, buf);
          v22 = v34;
          v23 = *buf;
          v24 = [v7 length];
          v25 = buf;
          if (v22 < 0)
          {
            v25 = v23;
          }

          v35 = 136315394;
          v36 = v25;
          v37 = 2048;
          v38 = v24;
          _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 2, "sent ephemeris data %s (%lu bytes) to accessory", &v35, 22);
          v27 = v26;
          if (v34 < 0)
          {
            operator delete(*buf);
          }

          sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::sendReferenceEphemeris()", "%s\n", v27);
          if (v27 != __p)
          {
            free(v27);
          }
        }
      }
    }

    else
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v28 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_FAULT))
      {
        sub_1005DDE24(a1 + 1048, __p);
        v29 = v40 >= 0 ? __p : __p[0];
        *buf = 136446210;
        *&buf[4] = v29;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "could not create data from file %{public}s", buf, 0xCu);
        if (v40 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (sub_10000A100(121, 0))
      {
        sub_101914AA0();
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v11 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1005DDD50(a1 + 1048, __p);
      v12 = v40 >= 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning ephemeris %s not available", buf, 0xCu);
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_101914858();
    }
  }
}

void sub_1006F6230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F626C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  (*(a3 + 16))(v10, a3);
  if (a2 && v13 >= 0.0)
  {
    v5 = [qword_102658FB0 sendReferenceTime:v14 locationLatitude:v11 longitude:v12 accuracy:v13];
    *(v4 + 2050) = v5;
    if (v5)
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v6 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134546177;
        v22 = v11;
        v23 = 2053;
        v24 = v12;
        v25 = 2048;
        v26 = v13;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "sent reference pos <%{sensitive}.8f,%{sensitive}.8f> accuracy %.2f to accessory", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D45E0 != -1)
        {
          sub_1019133C4();
        }

        v15 = 134546177;
        v16 = v11;
        v17 = 2053;
        v18 = v12;
        v19 = 2048;
        v20 = v13;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 2, "sent reference pos <%{sensitive}.8f,%{sensitive}.8f> accuracy %.2f to accessory", &v15, 32);
        v8 = v7;
        sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::sendReferenceLocation()_block_invoke", "%s\n", v7);
        if (v8 != buf)
        {
          free(v8);
        }
      }
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019133C4();
    }

    v9 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#Warning no reference location available, not sending reference location", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101914CD8();
    }
  }
}

id *sub_1006F64F0(id *result, uint64_t a2)
{
  if (*(a2 + 96) == 3 && *(a2 + 516) == 1)
  {
    v3 = result;
    if (qword_1025D48C0 != -1)
    {
      sub_101914EA0();
    }

    v4 = qword_1025D48C8;
    if (os_log_type_enabled(qword_1025D48C8, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a2 + 4);
      v6 = *(a2 + 12);
      v7 = *(a2 + 20);
      v8 = *(a2 + 44);
      v9 = *(a2 + 60);
      v10 = *(a2 + 184);
      v11 = *(a2 + 128);
      v12 = 136317187;
      v13 = "CL-AccessoryPropagated";
      v14 = 1024;
      v15 = 1;
      v16 = 2053;
      v17 = v5;
      v18 = 2053;
      v19 = v6;
      v20 = 2048;
      v21 = v7;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v9;
      v26 = 2048;
      v27 = v10;
      v28 = 1024;
      v29 = v11;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Type,%s,Pos,%d,%{sensitive}+.10f,%{sensitive}+.10f,Accuracy,%.3f,Speed,%.2f,Course,%.2f,timestampGps,%.2lf,GgaOnly,integrity,%d", &v12, 0x54u);
    }

    if (sub_10000A100(123, 2))
    {
      sub_101914EB4(a2);
    }

    v12 = 0;
    (*(*v3 + 19))(v3, &v12, a2, 0, 0xFFFFFFFFLL, 0);
    return [v3[124] setNextFireDelay:5.0];
  }

  return result;
}

void sub_1006F66A8(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 4 && *(a4 + 188) != 1)
  {
    sub_1006F6794(result + 2056);
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134349056;
      Current = CFAbsoluteTimeGetCurrent();
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,NmeaScreener reset", &v6, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101915024();
    }
  }
}

__n128 sub_1006F6794(uint64_t a1)
{
  *(a1 + 72) = 0u;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 88) = result;
  *(a1 + 104) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = result;
  *(a1 + 168) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = result;
  *(a1 + 232) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0xBFF0000000000000;
  *(a1 + 352) = 0xBFF0000000000000;
  *(a1 + 360) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 1;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0xBFF0000000000000;
  *(a1 + 472) = 50;
  return result;
}

void sub_1006F6804(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 7)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_1019131A0();
    }

    v6 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      Current = CFAbsoluteTimeGetCurrent();
      v8 = *(a4 + 9);
      v9 = *(a4 + 12);
      v15 = 134349568;
      v16 = Current;
      v17 = 1026;
      v18 = v8;
      v19 = 1026;
      v20 = v9;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLAccessoryAWD,%{public}.1lf,ReceivedBatteryNotification,connected,%{public}d,type,%{public}d", &v15, 0x18u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101915280(a4);
    }

    v10 = *(a4 + 9);
    v11 = *(a1 + 6328);
    if (v10 != 1 || v11 >= 0.0)
    {
      if (v11 <= 0.0 || *(a1 + 6324) != 1)
      {
        goto LABEL_16;
      }

      if (*(a1 + 6336) == *(a4 + 12))
      {
        if (v10)
        {
          goto LABEL_16;
        }

        v14 = sub_1000081AC();
        sub_10107F308((a1 + 2664), *(a1 + 6336), v14, *(a1 + 6328));
        v12 = -1.0;
LABEL_11:
        *(a1 + 6328) = v12;
LABEL_16:
        *(a1 + 6324) = *(a4 + 9);
        *(a1 + 6336) = *(a4 + 12);
        return;
      }

      v13 = sub_1000081AC();
      sub_10107F308((a1 + 2664), *(a1 + 6336), v13, *(a1 + 6328));
    }

    v12 = sub_1000081AC();
    goto LABEL_11;
  }
}

uint64_t *sub_1006F69A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (a3 == 1)
  {
    if (a2)
    {
      [*(a1 + 992) nextFireDelay];
      if (v6 > 0.02)
      {
        v7 = (a1 + 992);
        [*(a1 + 992) nextFireDelay];
        if (v8 <= 5.0)
        {
          if (qword_1025D45E0 != -1)
          {
            sub_1019131A0();
          }

          v9 = qword_1025D45E8;
          if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
          {
            [*v7 nextFireDelay];
            v12[0] = 67240448;
            v12[1] = 1;
            v13 = 2050;
            v14 = v10;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "CLNMEAScreener,screen,nmea log rejected, notify location is unavailable from accessory,sending unavailable notification,locTypeUsedForScreening,%{public}d,nextFireDelay,%{public}.2lf", v12, 0x12u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_10191539C((a1 + 992));
          }

          [*v7 setNextFireDelay:0.02];
        }
      }
    }
  }

  return sub_101080578(a1 + 2664, v4, v3);
}

void sub_1006F6B0C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  if (qword_1025D45E0 != -1)
  {
    sub_1019131A0();
  }

  v7 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
  {
    v8 = *a3;
    v9 = *(a1 + 6384);
    v10 = *(a1 + 6392);
    *buf = 67240704;
    *&buf[4] = v8;
    *&buf[8] = 2050;
    *&buf[10] = v9;
    *&buf[18] = 2050;
    *&buf[20] = v10;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_INFO, "CLAccessory,MA-OTA,notification,%{public}d,courseUnc,%{public}.1lf,speedThreshold,%{public}.1lf", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019154B0(a3, a1);
  }

  if (*a3 == 2)
  {
    sub_10004FD18();
    if (sub_100185ADC(a4, "GnssKnownACSettings", v48, 0xFFFFFFFFLL))
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v11 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_INFO, "CLAccessory,MA-OTA,GnssKnownAC config available", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019133EC(buf);
        LOWORD(v49) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 1, "CLAccessory,MA-OTA,GnssKnownAC config available", &v49, 2);
        v44 = v43;
        sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onMobileAssetNotification(int, const CLMobileAssetManager_Type::Notification &, const CLMobileAssetManager_Type::NotificationData &)", "%s\n", v43);
        if (v44 != buf)
        {
          free(v44);
        }
      }

      sub_10170C3FC(a1 + 1400, v48);
    }

    if (sub_100185ADC(a4, "AccessoryConfig", v48, 0xFFFFFFFFLL))
    {
      v12 = qword_102658FB0;
      sub_1004F9A2C(v47, v48);
      [v12 readMobileAssetConfiguration:v47];
      sub_100005DA4();
      *(a1 + 2649) = [qword_102658FB0 getEnableAggressiveLocationScreening];
      *(a1 + 2232) = [qword_102658FB0 getLocationDiffThresholdForAggressiveScreening];
      *(a1 + 2492) = [qword_102658FB0 getMinContinuousFailureCountForBlockingAccessory];
      *(a1 + 2496) = [qword_102658FB0 getMinContinuousSuccessCountForUnblockingAccessory];
      [qword_102658FB0 getMaxGPSUncertaintyForAggressiveBlockingAccessory];
      *(a1 + 2240) = v13;
      *(a1 + 2648) = [qword_102658FB0 getEnableCourseScreening];
      *(a1 + 6400) = [qword_102658FB0 getAllowGPGGAOnlyAccessory];
      [qword_102658FB0 getCourseUncertaintyForCarPlayDRModeAtLowSpeedsInDeg];
      *(a1 + 6384) = v14;
      [qword_102658FB0 getSpeedThresholdForCarPlayDRModeCourseUncSettingInMPS];
      *(a1 + 6392) = v15;
      sub_10001CAF4(buf);
      v16 = *(a1 + 2648);
      LOBYTE(v49) = 0;
      v17 = sub_10001CB4C(*buf, "EnableAccessoryCourseScreening", &v49, 0xFFFFFFFFLL);
      v18 = v49;
      if (!v17)
      {
        v18 = v16;
      }

      *(a1 + 2648) = v18;
      if (*&buf[8])
      {
        sub_100008080(*&buf[8]);
      }

      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v19 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 6384);
        v21 = *(a1 + 6392);
        v22 = *(a1 + 2648);
        v23 = *(a1 + 6400);
        HIDWORD(v46) = *(a1 + 2649);
        v24 = [qword_102658FB0 getLocationDiffThresholdForAggressiveScreening];
        v25 = [qword_102658FB0 getMinContinuousFailureCountForBlockingAccessory];
        v26 = [qword_102658FB0 getMinContinuousSuccessCountForUnblockingAccessory];
        [qword_102658FB0 getMaxGPSUncertaintyForAggressiveBlockingAccessory];
        *buf = 134351104;
        *&buf[4] = v20;
        *&buf[12] = 2050;
        *&buf[14] = v21;
        *&buf[22] = 1026;
        *&buf[24] = v22;
        v68 = 1026;
        v69 = v23;
        v70 = 1026;
        v71 = HIDWORD(v46);
        v72 = 1026;
        v73 = v24;
        v74 = 1026;
        v75 = v25;
        v76 = 1026;
        v77 = v26;
        v78 = 2050;
        v79 = v27;
        _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "CLAccessory,MA-OTA,Provider set courseUncertaintyAtLowSpeeds,courseUnc,%{public}.1lf,speedThreshold,%{public}.1lf,enableCourseScreening,%{public}d,allowGPGGAOnlyAccessory,%{public}d,enableAggressiveLocationScreening,%{public}d,aggressiveScreeningThreshold,%{public}d,minContFailCount,%{public}d,minContSuccessCount,%{public}d,maxGPSUncertaintyForBlockingAccessory,%{public}.1lf", buf, 0x44u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_38;
      }

      sub_1019133EC(buf);
      v28 = qword_1025D45E8;
      v29 = *(a1 + 6384);
      v30 = *(a1 + 6392);
      v31 = *(a1 + 2648);
      v32 = *(a1 + 6400);
      v33 = *(a1 + 2649);
      v34 = [qword_102658FB0 getLocationDiffThresholdForAggressiveScreening];
      v35 = [qword_102658FB0 getMinContinuousFailureCountForBlockingAccessory];
      v36 = [qword_102658FB0 getMinContinuousSuccessCountForUnblockingAccessory];
      [qword_102658FB0 getMaxGPSUncertaintyForAggressiveBlockingAccessory];
      v49 = 134351104;
      v50 = v29;
      v51 = 2050;
      v52 = v30;
      v53 = 1026;
      v54 = v31;
      v55 = 1026;
      v56 = v32;
      v57 = 1026;
      v58 = v33;
      v59 = 1026;
      v60 = v34;
      v61 = 1026;
      v62 = v35;
      v63 = 1026;
      v64 = v36;
      v65 = 2050;
      v66 = v37;
      LODWORD(v46) = 68;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v28, 0, "CLAccessory,MA-OTA,Provider set courseUncertaintyAtLowSpeeds,courseUnc,%{public}.1lf,speedThreshold,%{public}.1lf,enableCourseScreening,%{public}d,allowGPGGAOnlyAccessory,%{public}d,enableAggressiveLocationScreening,%{public}d,aggressiveScreeningThreshold,%{public}d,minContFailCount,%{public}d,minContSuccessCount,%{public}d,maxGPSUncertaintyForBlockingAccessory,%{public}.1lf", &v49, v46);
      v39 = v38;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onMobileAssetNotification(int, const CLMobileAssetManager_Type::Notification &, const CLMobileAssetManager_Type::NotificationData &)", "%s\n", v38);
      if (v39 == buf)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (qword_1025D45E0 != -1)
      {
        sub_1019133C4();
      }

      v42 = qword_1025D45E8;
      if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_INFO, "CLAccessory,MA-OTA,accessoryLocation config not available", buf, 2u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_38;
      }

      sub_1019133EC(buf);
      LOWORD(v49) = 0;
      LODWORD(v46) = 2;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D45E8, 1, "CLAccessory,MA-OTA,accessoryLocation config not available", &v49, v46);
      v39 = v45;
      sub_100152C7C("Generic", 1, 0, 2, "void CLAccessoryLocationProvider::onMobileAssetNotification(int, const CLMobileAssetManager_Type::Notification &, const CLMobileAssetManager_Type::NotificationData &)", "%s\n", v45);
      if (v39 == buf)
      {
        goto LABEL_38;
      }
    }

    free(v39);
LABEL_38:
    sub_100005DA4();
    return;
  }

  if (qword_1025D45E0 != -1)
  {
    sub_1019133C4();
  }

  v40 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_ERROR))
  {
    v41 = *a3;
    *buf = 67240192;
    *&buf[4] = v41;
    _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_ERROR, "CLAccessory,MA-OTA,invalid notification,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1019155D8(a3);
  }
}

void sub_1006F7308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_1006F7404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

id sub_1006F7434(uint64_t a1)
{
  v2 = [+[CLServiceVendor sharedInstance](CLServiceVendor proxyForService:"proxyForService:", @"CLAccessoryLocationProvider"];

  return [v2 syncgetDoSync:a1];
}

double sub_1006F74B0(uint64_t a1)
{
  sub_10018D404(a1);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xBFF0000000000000;
  result = 0.0;
  *(v1 + 264) = 0u;
  *(v1 + 280) = 0;
  *(v1 + 392) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0u;
  *(v1 + 200) = 0u;
  *(v1 + 213) = 0u;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 232) = 0u;
  *(v1 + 316) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 364) = 0u;
  *(v1 + 384) = v1 + 392;
  *(v1 + 416) = 0u;
  *(v1 + 408) = v1 + 416;
  *(v1 + 440) = 0u;
  *(v1 + 432) = v1 + 440;
  *(v1 + 456) = v1 + 464;
  *(v1 + 496) = 0;
  *(v1 + 464) = 0u;
  *(v1 + 480) = 0u;
  *(v1 + 552) = 0u;
  *(v1 + 568) = 0;
  *(v1 + 584) = 0u;
  *(v1 + 532) = 0u;
  *(v1 + 504) = 0u;
  *(v1 + 520) = 0u;
  *(v1 + 576) = v1 + 584;
  *(v1 + 608) = 0u;
  *(v1 + 600) = v1 + 608;
  *(v1 + 632) = 0u;
  *(v1 + 624) = v1 + 632;
  *(v1 + 648) = 0u;
  *(v1 + 664) = 0;
  *(v1 + 688) = 0;
  *(v1 + 672) = 0u;
  *(v1 + 704) = 0u;
  *(v1 + 696) = v1 + 704;
  *(v1 + 728) = 0u;
  *(v1 + 720) = v1 + 728;
  *(v1 + 744) = v1 + 752;
  *(v1 + 784) = 0;
  *(v1 + 752) = 0u;
  *(v1 + 768) = 0u;
  *(v1 + 808) = 0;
  *(v1 + 792) = 0u;
  *(v1 + 824) = 0u;
  *(v1 + 816) = v1 + 824;
  *(v1 + 848) = 0u;
  *(v1 + 840) = v1 + 848;
  *(v1 + 872) = 0u;
  *(v1 + 864) = v1 + 872;
  *(v1 + 904) = 0;
  *(v1 + 888) = 0u;
  *(v1 + 952) = 0u;
  *(v1 + 936) = 0;
  *(v1 + 928) = 0;
  *(v1 + 912) = 0u;
  *(v1 + 944) = v1 + 952;
  *(v1 + 968) = v1 + 976;
  *(v1 + 1008) = 0;
  *(v1 + 976) = 0u;
  *(v1 + 992) = 0u;
  *(v1 + 1072) = 0u;
  *(v1 + 1032) = 0u;
  *(v1 + 1048) = 0u;
  *(v1 + 1016) = 0u;
  *(v1 + 1064) = v1 + 1072;
  *(v1 + 1104) = 0;
  *(v1 + 1088) = 0u;
  *(v1 + 1200) = 0u;
  *(v1 + 1140) = 0u;
  *(v1 + 1112) = 0u;
  *(v1 + 1128) = 0u;
  *(v1 + 1160) = 0u;
  *(v1 + 1176) = 0u;
  *(v1 + 1192) = v1 + 1200;
  *(v1 + 1232) = 0;
  *(v1 + 1216) = 0u;
  *(v1 + 1328) = 0u;
  *(v1 + 1268) = 0u;
  *(v1 + 1240) = 0u;
  *(v1 + 1256) = 0u;
  *(v1 + 1288) = 0u;
  *(v1 + 1304) = 0u;
  *(v1 + 1320) = v1 + 1328;
  *(v1 + 1360) = 0;
  *(v1 + 1344) = 0u;
  *(v1 + 1456) = 0u;
  *(v1 + 1396) = 0u;
  *(v1 + 1368) = 0u;
  *(v1 + 1384) = 0u;
  *(v1 + 1440) = 0;
  *(v1 + 1432) = 0;
  *(v1 + 1416) = 0u;
  *(v1 + 1448) = v1 + 1456;
  *(v1 + 1480) = 0u;
  *(v1 + 1472) = v1 + 1480;
  *(v1 + 1504) = 0u;
  *(v1 + 1496) = v1 + 1504;
  *(v1 + 1520) = 0;
  *(v1 + 1528) = 0;
  *(v1 + 1544) = 0u;
  *(v1 + 1536) = v1 + 1544;
  *(v1 + 1560) = 0;
  *(v1 + 1568) = 0;
  *(v1 + 1584) = 0u;
  *(v1 + 1576) = v1 + 1584;
  *(v1 + 1608) = 0u;
  *(v1 + 1600) = v1 + 1608;
  *(v1 + 1632) = 0u;
  *(v1 + 1624) = v1 + 1632;
  *(v1 + 1680) = 0u;
  *(v1 + 1664) = 0;
  *(v1 + 1648) = 0u;
  *(v1 + 1672) = v1 + 1680;
  *(v1 + 1756) = 0u;
  *(v1 + 1744) = 0u;
  *(v1 + 1728) = 0u;
  *(v1 + 1712) = 0u;
  *(v1 + 1696) = 0u;
  *(v1 + 3001) = 0u;
  *(v1 + 2992) = 0u;
  *(v1 + 2976) = 0u;
  *(v1 + 2960) = 0u;
  *(v1 + 2944) = 0u;
  *(v1 + 2928) = 0u;
  *(v1 + 2912) = 0u;
  *(v1 + 2896) = 0u;
  *(v1 + 2880) = 0u;
  *(v1 + 2864) = 0u;
  *(v1 + 2848) = 0u;
  *(v1 + 1984) = 0u;
  *(v1 + 1968) = 0u;
  *(v1 + 1952) = 0u;
  *(v1 + 1936) = 0u;
  *(v1 + 1920) = 0u;
  *(v1 + 1904) = 0u;
  *(v1 + 1888) = 0u;
  *(v1 + 1872) = 0u;
  *(v1 + 1856) = 0u;
  *(v1 + 1840) = 0u;
  *(v1 + 1824) = 0u;
  *(v1 + 1808) = 0u;
  *(v1 + 1792) = 0u;
  *(v1 + 1776) = 0u;
  *(v1 + 3017) = 257;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v1 + 3024) = _Q1;
  *(v1 + 3040) = _Q1;
  *(v1 + 3056) = _Q1;
  *(v1 + 3072) = 0xBFF0000000000000;
  *(v1 + 3104) = 0;
  *(v1 + 3096) = 0;
  *(v1 + 3080) = 0u;
  return result;
}

Class sub_1006F77FC(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_102658FD8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_1006F7928;
    v3[4] = &unk_102449A78;
    v3[5] = v3;
    v4 = off_10246BEB8;
    v5 = 0;
    qword_102658FD8 = _sl_dlopen();
  }

  if (!qword_102658FD8)
  {
    sub_10191573C(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("CARSessionStatus");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    sub_1019156D4();
  }

  qword_102658FD0 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t sub_1006F7928(uint64_t a1)
{
  result = _sl_dlopen();
  qword_102658FD8 = result;
  return result;
}

void sub_1006F79CC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_1006F7A7C(uint64_t a1)
{
  v2 = *(a1 + 3080);
  if (v2)
  {
    *(a1 + 3088) = v2;
    operator delete(v2);
  }

  sub_10063A344(a1 + 2848);
  sub_1006F7AC0(a1 + 40);
  return a1;
}

uint64_t sub_1006F7AC0(uint64_t a1)
{
  sub_10001AF44(a1 + 1632, *(a1 + 1640));
  sub_1003C93BC(a1 + 1584, *(a1 + 1592));
  sub_1003C93BC(a1 + 1560, *(a1 + 1568));
  sub_1003C93BC(a1 + 1536, *(a1 + 1544));
  sub_1003C93BC(a1 + 1496, *(a1 + 1504));
  sub_10001AF44(a1 + 1456, *(a1 + 1464));
  sub_1003C93BC(a1 + 1432, *(a1 + 1440));
  sub_1003C93BC(a1 + 1408, *(a1 + 1416));
  sub_1003C93BC(a1 + 1280, *(a1 + 1288));
  sub_1003C93BC(a1 + 1152, *(a1 + 1160));
  sub_1003C93BC(a1 + 1024, *(a1 + 1032));
  sub_1003C93BC(a1 + 928, *(a1 + 936));
  sub_1003C93BC(a1 + 904, *(a1 + 912));
  sub_1003C93BC(a1 + 824, *(a1 + 832));
  sub_1003C93BC(a1 + 800, *(a1 + 808));
  sub_1003C93BC(a1 + 776, *(a1 + 784));
  sub_1003C93BC(a1 + 704, *(a1 + 712));
  sub_1003C93BC(a1 + 680, *(a1 + 688));
  sub_1003C93BC(a1 + 656, *(a1 + 664));
  sub_1003C93BC(a1 + 584, *(a1 + 592));
  sub_1003C93BC(a1 + 560, *(a1 + 568));
  sub_1003C93BC(a1 + 536, *(a1 + 544));
  sub_1003C93BC(a1 + 416, *(a1 + 424));
  sub_1003C93BC(a1 + 392, *(a1 + 400));
  sub_1003C93BC(a1 + 368, *(a1 + 376));
  sub_1003C93BC(a1 + 344, *(a1 + 352));
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1006F7C8C(uint64_t a1)
{
  sub_100D8D8D0((a1 + 448));
  sub_1006F7E28(a1 + 392);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1006F7DA0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_10246BF40;
  a2[1] = v2;
  return result;
}

uint64_t sub_1006F7DDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006F7E28(uint64_t a1)
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

uint64_t *sub_1006F7EA8(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10093118C(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1006F7F68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006F7FB4()
{
  sub_10000EC00(&xmmword_102658F88, "CLAccessoryLocationProvider");

  return __cxa_atexit(&std::string::~string, &xmmword_102658F88, dword_100000000);
}

uint64_t sub_1006F8014(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = *(a4 + 8);
  if (!*a2)
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101915810();
    }

    v8 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a1;
      *buf = 134349056;
      *&buf[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,road is nullptr", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101915BD4();
    }

    return 0;
  }

  if (!a1[18])
  {
    if (qword_1025D46B0 != -1)
    {
      sub_101915810();
    }

    v10 = qword_1025D46B8;
    if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
    {
      v11 = *a1;
      *buf = 134349056;
      *&buf[4] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,Flowline data not available", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101915AE8();
    }

    return 0;
  }

  if (*(a4 + 264) == 1 && *(a4 + 265) != 1)
  {
    v12 = a3;
    if (!sub_100020608(*(a4 + 56), *(a4 + 64)) || sub_10002807C(*(a4 + 56), *(a4 + 64)))
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101915810();
      }

      v14 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v15 = *a1;
        *buf = 134349056;
        *&buf[4] = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,raw coordinate is not valid", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101915910();
      }

      return 0;
    }

    if (!sub_100020608(*(a4 + 288), *(a4 + 296)) || sub_10002807C(*(a4 + 288), *(a4 + 296)))
    {
      if (qword_1025D46B0 != -1)
      {
        sub_101915810();
      }

      v16 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v17 = *a1;
        *buf = 134349056;
        *&buf[4] = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,snapped coordinate is not valid", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101915824();
      }

      return 0;
    }

    v143 = 0;
    v144 = 0;
    v145 = 0;
    v18 = sub_1006F9388(a1, a2, v12, a4, &v143);
    if (v18)
    {
      *a1 = *(a4 + 8);
      if (qword_1025D46B0 != -1)
      {
        sub_1019157A4();
      }

      v20 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v21 = *a1;
        v22 = *(a4 + 288);
        v23 = *(a4 + 296);
        *buf = 134349825;
        *&buf[4] = v21;
        *&buf[12] = 2053;
        *&buf[14] = v22;
        v153 = 2053;
        v154 = v23;
        LOWORD(v155) = 2050;
        *(&v155 + 2) = (v144 - v143) >> 4;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,attempting lane estimation,LL,%{sensitive}.7lf,%{sensitive}.7lf,numFlowlines,%{public}lu", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019157CC(buf);
        v122 = *a1;
        v123 = *(a4 + 288);
        v124 = *(a4 + 296);
        *__y = 134349825;
        *&__y[4] = v122;
        *&__y[12] = 2053;
        *&__y[14] = v123;
        v148 = 2053;
        v149 = v124;
        v150 = 2050;
        v151 = (v144 - v143) >> 4;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMMLE,%{public}.1lf,attempting lane estimation,LL,%{sensitive}.7lf,%{sensitive}.7lf,numFlowlines,%{public}lu", __y, 42);
        v126 = v125;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLaneEstimator::estimateLane(const CLMapRoadPtr &, const BOOL, const CLMapCrumb &)", "%s\n", v125);
        if (v126 != buf)
        {
          free(v126);
        }
      }

      v24 = v143;
      v25 = v144;
      if (v143 != v144)
      {
        v136 = 0;
        v137 = 0;
        v26 = *(a4 + 56);
        v27 = *(a4 + 64);
        v135 = -1.0;
        v28 = 1.0;
        v134 = -1.0;
        *&v29 = -1.0;
        while (1)
        {
          v30 = *v24;
          if (*v24)
          {
            break;
          }

LABEL_120:
          v24 += 16;
          if (v24 == v25)
          {
            if (v136)
            {
              if (v137)
              {
                atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              *(a1 + 6) = *(v136 + 4);
              v120 = *v136;
              a1[4] = 0x3FF0000000000000;
              a1[5] = v120;
              a1[6] = v133;
              a1[7] = v132;
              a1[8] = v135;
              a1[9] = v29;
              a1[10] = v134;
              if (v137)
              {
                sub_100008080(v137);
              }

              v121 = *a1;
              std::string::__init(&v140, "estimatedLane", 0xDuLL);
              sub_1006F9C98((a1 + 1), v121);
              if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v140.__r_.__value_.__l.__data_);
              }
            }

            if (v137)
            {
              sub_100008080(v137);
            }

            goto LABEL_173;
          }
        }

        v31 = v30[17];
        v32 = v30[18] - v31;
        v139 = *&v29;
        if ((v32 >> 4) > 1)
        {
          v33 = *v31;
          v34 = v31[1];
          *buf = 0;
          *&buf[8] = 0;
          *__y = 0;
          sub_1001063B0((a1 + 19), buf, &buf[8], __y, v26, v27, 0.0, v33, v34, 0.0);
          v35 = 0;
          v36 = ((v32 >> 4) & 0x7FFFFFFF) - 1;
          v37 = 0.0;
          v38 = -1.0;
          v39 = 0.0;
          while (1)
          {
            v40 = v30[17] + v35;
            v41 = *(v40 + 16);
            v42 = *(v40 + 24);
            *__y = 0;
            *&__y[8] = 0;
            v146 = 0;
            sub_1001063B0((a1 + 19), __y, &__y[8], &v146, v26, v27, 0.0, v41, v42, 0.0);
            v43 = (*buf - *__y) * (*buf - *__y) + (*&buf[8] - *&__y[8]) * (*&buf[8] - *&__y[8]);
            v44 = 0.0 - *buf;
            if (v43 >= 0.001)
            {
              v46 = ((0.0 - *&buf[8]) * (*&__y[8] - *&buf[8]) + v44 * (*__y - *buf)) / v43;
              if (v46 < 0.0)
              {
                v48 = v44 * v44 + (0.0 - *&buf[8]) * (0.0 - *&buf[8]);
                v46 = 0.0;
                goto LABEL_59;
              }

              if (v46 > v28)
              {
                v48 = (0.0 - *__y) * (0.0 - *__y) + (0.0 - *&__y[8]) * (0.0 - *&__y[8]);
                v46 = 1.0;
                goto LABEL_59;
              }

              v45 = (0.0 - (*buf + (*__y - *buf) * v46)) * (0.0 - (*buf + (*__y - *buf) * v46));
              v47 = 0.0 - (*&buf[8] + (*&__y[8] - *&buf[8]) * v46);
            }

            else
            {
              v45 = v44 * v44;
              v46 = 0.0;
              v47 = 0.0 - *&buf[8];
            }

            v48 = v45 + v47 * v47;
LABEL_59:
            v49 = sqrt(v43);
            v50 = sqrt(v48);
            v51 = v38 < 0.0;
            if (v50 < v38)
            {
              v51 = 1;
            }

            v52 = v37 + v49 * v46;
            if (v51)
            {
              v38 = v50;
              v39 = v52;
            }

            v37 = v37 + v49;
            *buf = *__y;
            *&buf[8] = *&__y[8];
            v35 += 16;
            if (!--v36)
            {
              if (v37 >= 0.001)
              {
                v54 = v39 / v37;
              }

              else
              {
                v54 = 0.0;
              }

              goto LABEL_75;
            }
          }
        }

        if (qword_1025D46B0 != -1)
        {
          sub_1019157A4();
        }

        v53 = qword_1025D46B8;
        if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v53, OS_LOG_TYPE_DEBUG, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", buf, 2u);
        }

        v38 = -1.0;
        if (sub_10000A100(121, 2))
        {
          sub_1019157CC(buf);
          *__y = 0;
          LODWORD(v127) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,findClosestPointOnRoad,CoordinateCount is <= 1", __y, v127);
          v109 = v108;
          sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::findClosestPointOnRoad(CLDistanceCalc &, const int, const std::vector<Coordinate> &, const Coordinate &, double &, double &) [Coordinate = CLClientLocationCoordinate]", "%s\n", v108);
          if (v109 != buf)
          {
            free(v109);
          }
        }

        v54 = -1.0;
LABEL_75:
        v56 = *v24;
        v55 = *(v24 + 1);
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v138 = v54;
        if (v56)
        {
          v57 = v56[17];
          v58 = (v56[18] - v57) >> 4;
          if (v58 <= 0)
          {
            if (qword_1025D46B0 != -1)
            {
              sub_1019157A4();
            }

            v71 = qword_1025D46B8;
            if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,CoordinateCount is 0", buf, 2u);
            }

            v59 = 0.0;
            if (sub_10000A100(121, 2))
            {
              sub_1019157CC(buf);
              *__y = 0;
              LODWORD(v127) = 2;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,interpolateProjections,CoordinateCount is 0", __y, v127);
              v70 = v72;
              sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = CLClientLocationCoordinate, RoadPtr = std::shared_ptr<CLMapFlowLine>]", "%s\n", v72);
              goto LABEL_155;
            }
          }

          else
          {
            v59 = 0.0;
            if (v58 == 1)
            {
              goto LABEL_104;
            }

            v61 = v56[20];
            v60 = v56[21];
            v62 = v60 - v61;
            if (v62 == v58 - 1)
            {
              if (v54 < 0.000001)
              {
                v59 = *v57;
                v63 = v57[1];
                v64 = v57[2];
                v65 = v57[3];
                *buf = 0;
                v146 = 0;
                *__y = 0;
                sub_1001063B0((a1 + 19), buf, __y, &v146, v59, v63, 0.0, v64, v65, 0.0);
LABEL_83:
                v66 = atan2(*__y, *buf);
                if (v66 < 0.0)
                {
                  v66 = v66 + 6.28318531;
                }

                v67 = v66 * 57.2957795;
                if (!v55)
                {
LABEL_106:
                  if (v139 < 0.0 || v38 < v139)
                  {
                    v74 = *(v24 + 1);
                    v136 = *v24;
                    if (v74)
                    {
                      atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    if (v137)
                    {
                      sub_100008080(v137);
                    }

                    v132 = *&v63;
                    v133 = *&v59;
                    v137 = v74;
                    v139 = v38;
                    v134 = *&v138;
                    v135 = *&v67;
                  }

                  v75 = *v24;
                  v76 = *(v24 + 1);
                  if (v76)
                  {
                    atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
                    *buf = 0;
                    *&buf[8] = 0;
                    *&buf[16] = -1;
                    v154 = 0xBFF0000000000000;
                    *&v155 = -1;
                    v157 = 0xBFF0000000000000;
                    v158 = 0.0;
                    v159 = 0.0;
                    atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
                    if (!v75)
                    {
LABEL_116:
                      if (v76)
                      {
                        sub_100008080(v76);
                        sub_100008080(v76);
                      }

                      v78 = *a1;
                      v142 = 13;
                      strcpy(__p, "candidateLane");
                      sub_1006F9C98(buf, v78);
                      v28 = 1.0;
                      *&v29 = v139;
                      if (*&buf[8])
                      {
                        sub_100008080(*&buf[8]);
                      }

                      goto LABEL_120;
                    }
                  }

                  else
                  {
                    *buf = 0;
                    *&buf[8] = 0;
                    *&buf[16] = -1;
                    v154 = 0xBFF0000000000000;
                    *&v155 = -1;
                    v157 = 0xBFF0000000000000;
                    v158 = 0.0;
                    v159 = 0.0;
                    if (!v75)
                    {
                      goto LABEL_116;
                    }
                  }

                  *&buf[16] = *(v75 + 4);
                  v77 = *v75;
                  v154 = 0x3FF0000000000000;
                  *&v155 = v77;
                  *(&v155 + 1) = v59;
                  v156 = v63;
                  v157 = *&v67;
                  v158 = v38;
                  v159 = v138;
                  goto LABEL_116;
                }

LABEL_105:
                sub_100008080(v55);
                goto LABEL_106;
              }

              if (v54 >= 0.999999)
              {
                v85 = &v57[2 * v62];
                v59 = *v85;
                v63 = v85[1];
                v86 = sub_1002926F4((a1 + 19), *(v85 - 2), *(v85 - 1), *v85, v63);
                goto LABEL_137;
              }

              if (v61 == v60)
              {
LABEL_130:
                if (qword_1025D46B0 != -1)
                {
                  sub_1019157A4();
                }

                v83 = qword_1025D46B8;
                if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v83, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,Could not interpolate to intended projection", buf, 2u);
                }

                if (sub_10000A100(121, 2))
                {
                  sub_1019157CC(buf);
                  *__y = 0;
                  LODWORD(v127) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,interpolateProjections,Could not interpolate to intended projection", __y, v127);
                  v70 = v84;
                  sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = CLClientLocationCoordinate, RoadPtr = std::shared_ptr<CLMapFlowLine>]", "%s\n", v84);
                  goto LABEL_155;
                }
              }

              else
              {
                v79 = 0.0;
                v80 = 2;
                v81 = 3;
                while (1)
                {
                  v82 = *v61 / *(v56 + 16);
                  if (vabdd_f64(v54, v79 + v82) < 0.000001)
                  {
                    break;
                  }

                  if (v79 + v82 > v54)
                  {
                    v96 = &v57[v81];
                    v97 = *(v96 - 2);
                    v128 = *(v96 - 1);
                    __xb = *(v96 - 3);
                    v98 = sub_1002AADB4(v97, *v96);
                    v99 = (v138 - v79) / v82;
                    sub_10002DB04(v97 + v98 * v99);
                    v63 = v100;
                    v101 = (v56[17] + v81 * 8);
                    v102 = *(v101 - 3);
                    v103 = *(v101 - 2);
                    v104 = *(v101 - 1);
                    v105 = *v101;
                    *buf = 0;
                    v146 = 0;
                    *__y = 0;
                    sub_1001063B0((a1 + 19), buf, __y, &v146, v102, v103, 0.0, v104, v105, 0.0);
                    v59 = __xb + (v128 - __xb) * v99;
                    goto LABEL_83;
                  }

                  ++v61;
                  v81 += 2;
                  ++v80;
                  v79 = v79 + v82;
                  if (v61 == v60)
                  {
                    goto LABEL_130;
                  }
                }

                if (v80 < v58)
                {
                  v87 = &v57[v81];
                  v59 = *(v87 - 1);
                  v63 = *v87;
                  v88 = *(v87 - 3);
                  v89 = *(v87 - 2);
                  *buf = 0;
                  v146 = 0;
                  *__y = 0;
                  sub_1001063B0((a1 + 19), buf, __y, &v146, v88, v89, 0.0, v59, v63, 0.0);
                  v90 = *__y;
                  __xa = *buf;
                  v91 = v56[17] + v81 * 8;
                  v92 = *(v91 + 8);
                  v93 = *(v91 + 16);
                  *buf = 0;
                  v146 = 0;
                  *__y = 0;
                  sub_1001063B0((a1 + 19), buf, __y, &v146, v59, v63, 0.0, v92, v93, 0.0);
                  v94 = atan2(v90, __xa);
                  if (v94 < 0.0)
                  {
                    v94 = v94 + 6.28318531;
                  }

                  __x = v94 * 57.2957795;
                  v95 = atan2(*__y, *buf);
                  if (v95 < 0.0)
                  {
                    v95 = v95 + 6.28318531;
                  }

                  sub_1004E60D8(__x, v95 * 57.2957795);
LABEL_137:
                  v67 = v86;
                  if (!v55)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_105;
                }

                if (qword_1025D46B0 != -1)
                {
                  sub_1019157A4();
                }

                v106 = qword_1025D46B8;
                if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(dword_100000000, v106, OS_LOG_TYPE_ERROR, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", buf, 2u);
                }

                v59 = 0.0;
                if (sub_10000A100(121, 0))
                {
                  sub_1019157CC(buf);
                  *__y = 0;
                  LODWORD(v127) = 2;
                  _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM,interpolateProjections,Could not interpolate, incorrect coordinateCount", __y, v127);
                  v70 = v107;
                  sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = CLClientLocationCoordinate, RoadPtr = std::shared_ptr<CLMapFlowLine>]", "%s\n", v107);
                  goto LABEL_155;
                }
              }
            }

            else
            {
              if (qword_1025D46B0 != -1)
              {
                sub_1019157A4();
              }

              v73 = qword_1025D46B8;
              if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEBUG, "CLMM,interpolateProjections,inconsistent array size", buf, 2u);
              }

              if (sub_10000A100(121, 2))
              {
                sub_1019157CC(buf);
                *__y = 0;
                LODWORD(v127) = 2;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMM,interpolateProjections,inconsistent array size", __y, v127);
                v70 = v110;
                sub_100152C7C("Generic", 1, 0, 2, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = CLClientLocationCoordinate, RoadPtr = std::shared_ptr<CLMapFlowLine>]", "%s\n", v110);
LABEL_155:
                if (v70 != buf)
                {
                  free(v70);
                }
              }
            }
          }
        }

        else
        {
          if (qword_1025D46B0 != -1)
          {
            sub_1019157A4();
          }

          v68 = qword_1025D46B8;
          if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_ERROR, "CLMM, NULL road", buf, 2u);
          }

          v59 = 0.0;
          if (sub_10000A100(121, 0))
          {
            sub_1019157CC(buf);
            *__y = 0;
            LODWORD(v127) = 2;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 16, "CLMM, NULL road", __y, v127);
            v70 = v69;
            sub_100152C7C("Generic", 1, 0, 0, "BOOL CLGeoAccessCommon::interpolateProjections(CLDistanceCalc &, const RoadPtr, double, Coordinate &, double &) [Coordinate = CLClientLocationCoordinate, RoadPtr = std::shared_ptr<CLMapFlowLine>]", "%s\n", v69);
            goto LABEL_155;
          }
        }

LABEL_104:
        v63 = 0.0;
        v67 = 0.0;
        if (!v55)
        {
          goto LABEL_106;
        }

        goto LABEL_105;
      }
    }

    else
    {
      if (qword_1025D46B0 != -1)
      {
        sub_1019157A4();
      }

      v111 = qword_1025D46B8;
      if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
      {
        v112 = *a1;
        v113 = *(a4 + 288);
        v114 = *(a4 + 296);
        *buf = 134349569;
        *&buf[4] = v112;
        *&buf[12] = 2053;
        *&buf[14] = v113;
        v153 = 2053;
        v154 = v114;
        _os_log_impl(dword_100000000, v111, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,could not find flowline data,LL,%{sensitive}.7lf,%{sensitive}.7lf", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019157CC(buf);
        v115 = *a1;
        v116 = *(a4 + 288);
        v117 = *(a4 + 296);
        *__y = 134349569;
        *&__y[4] = v115;
        *&__y[12] = 2053;
        *&__y[14] = v116;
        v148 = 2053;
        v149 = v117;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46B8, 2, "CLMMLE,%{public}.1lf,could not find flowline data,LL,%{sensitive}.7lf,%{sensitive}.7lf", __y, 32);
        v119 = v118;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLLaneEstimator::estimateLane(const CLMapRoadPtr &, const BOOL, const CLMapCrumb &)", "%s\n", v118);
        if (v119 != buf)
        {
          free(v119);
        }
      }
    }

LABEL_173:
    *buf = &v143;
    sub_1004CA974(buf);
    return v18;
  }

  if (qword_1025D46B0 != -1)
  {
    sub_101915810();
  }

  v6 = qword_1025D46B8;
  if (os_log_type_enabled(qword_1025D46B8, OS_LOG_TYPE_DEBUG))
  {
    v7 = *a1;
    *buf = 134349056;
    *&buf[4] = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLMMLE,%{public}.1lf,Solution is not matched", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019159FC();
  }

  return 0;
}